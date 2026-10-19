// Demo dataset for wely-events and wely-chat (MongoDB). Idempotent: removes everything the
// demo users organised, joined or wrote, then inserts the dataset again.
//
// Dates are computed from the day the script runs, in Europe/Paris, so the calendar always
// shows a busy current week whenever the reset ran last.

const U = {
  camille: '89a380b8-f66a-44d0-b9d9-616241080430', lea:    'a0cac685-c593-415d-bd73-6530e25a1f53',
  hugo:    '9de75282-095c-41a9-ab17-2d58b02445da', ines:   '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
  lucas:   '0fa728fe-fd0e-4997-b226-fd049c6b0659', sarah:  '15d05360-522a-4ff1-93a9-07d63346e4c1',
  nathan:  '4d6501b7-caed-4a98-b960-199db1bd4106', jules:  '66e332e6-8d98-49c6-ac22-27095c35cf9d',
  emma:    'f4be7974-0ed3-457e-80d3-8aa08e0c5197', chloe:  'cdc6f71d-065c-4af5-9775-692411fc9504',
};
const DEMO_IDS = Object.values(U);

const EVENT_CLASS = 'com.calendar.events.infrastructure.persistence.entities.EventEntity';
const CONVERSATION_CLASS = 'com.calendar.chat.infrastructure.persistence.models.entities.ConversationEntity';
const BUCKET_CLASS = 'com.calendar.chat.infrastructure.persistence.models.entities.MessageBucketEntity';

// --- Time helpers ---------------------------------------------------------------------------

const ZONE = 'Europe/Paris';

/** Offset of Europe/Paris from UTC at the given instant, in minutes (60 or 120). */
function parisOffsetMinutes(instant) {
  const parts = new Intl.DateTimeFormat('en-GB', { timeZone: ZONE, timeZoneName: 'shortOffset' })
    .formatToParts(instant).find(p => p.type === 'timeZoneName').value; // "GMT+2"
  const m = parts.match(/GMT([+-]\d+)(?::(\d+))?/);
  return m ? Number(m[1]) * 60 + Math.sign(Number(m[1])) * Number(m[2] || 0) : 0;
}

/** Today's date in Paris, as {y, m, d}. */
function parisToday() {
  const [y, m, d] = new Intl.DateTimeFormat('en-CA', { timeZone: ZONE }).format(new Date()).split('-').map(Number);
  return { y, m, d };
}

const TODAY = parisToday();

/** The instant at hh:mm Paris time, `days` days from today. */
function at(days, hh, mm = 0) {
  const guess = new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d + days, hh, mm));
  return new Date(guess.getTime() - parisOffsetMinutes(guess) * 60000);
}

/** Days from today to the next given weekday (0 = Sunday), at least `min` days ahead. */
function next(weekday, min = 1) {
  const dow = new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d)).getUTCDay();
  let delta = (weekday - dow + 7) % 7;
  while (delta < min) delta += 7;
  return delta;
}

/** A message time: wely-chat stores instants, which a JS Date is, so no zone to adjust for. */
function minutesAgo(minutes) {
  return new Date(Date.now() - minutes * 60000);
}

// --- Cleanup --------------------------------------------------------------------------------

// Conversations first: inserting the events below wakes wely-events' group relay, and a group
// it creates for a demo event must not then be wiped by this cleanup — it would not come back.
const chat = db.getSiblingDB('chat_db');

const touched = chat.conversations.find({ participantIds: { $in: DEMO_IDS } }, { _id: 1 })
  .toArray().map(c => c._id.toString());
chat.message_buckets.deleteMany({ conversationId: { $in: touched } });
// Their media tab too; the photo files themselves are purged from Garage by the job.
chat.conversation_photos.deleteMany({ conversationId: { $in: touched } });
chat.conversations.deleteMany({ participantIds: { $in: DEMO_IDS } });
// wely-chat's friendships projection: the demo friendships are written straight into Neo4j,
// so FRIENDSHIP_STATE never carries them. Version 0: any real change of a pair outranks it.
chat.friendships.deleteMany({ $or: [{ a: { $in: DEMO_IDS } }, { b: { $in: DEMO_IDS } }] });
chat.friendships.insertMany([
  // The accepted pairs of seed-social.cypher.
  ['camille', 'lea'], ['camille', 'hugo'], ['camille', 'ines'], ['camille', 'lucas'], ['camille', 'sarah'],
  ['nathan', 'camille'], ['lea', 'hugo'], ['sarah', 'nathan'], ['ines', 'lucas'], ['lea', 'emma'], ['hugo', 'emma'],
].map(pair => {
  const [a, b] = pair.map(name => U[name]).sort();
  return { _id: a + ':' + b, a, b, friends: true, version: NumberLong(0) };
}));

// --- Events ---------------------------------------------------------------------------------

const events = db.getSiblingDB('events_db').events;

events.deleteMany({ organizerId: { $in: DEMO_IDS } });
// Surprises a visitor's real friends may have organised for a demo user.
events.deleteMany({ honoreeId: { $in: DEMO_IDS } });
// Subscriptions a visitor added to events of real users.
events.updateMany({ participantIds: { $in: DEMO_IDS } }, { $pull: { participantIds: { $in: DEMO_IDS } } });

/** Days from today back to the last given weekday, at least one day ago. */
function last(weekday) {
  const dow = new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d)).getUTCDay();
  return -(((dow - weekday + 7) % 7) || 7);
}

// Fixed, because seed-social.cypher points the pending friend requests at it.
const QUIZ_ID = ObjectId('66f1a2b3c4d5e6f7a8b9c0d1');
// Fixed too: its group conversation below is keyed by it.
const GAMES_ID = ObjectId('66f1a2b3c4d5e6f7a8b9c0d2');

const sat = next(6, 2);
const fri = next(5, 2);
const demoEvents = [
  // Past, so the calendar has some history.
  { title: 'Brunch du dimanche', organizer: 'camille', start: at(last(0), 11), end: at(last(0), 14),
    location: 'Café Mokxa, Lyon 1er', image: 'brunch.jpg',
    description: 'Pancakes, café filtre et le récap de la semaine.',
    participants: ['camille', 'lea', 'ines', 'sarah'] },

  // Two days ago, with people camille does not know yet: the event page invites her to add
  // them, and the pending requests from jules and to emma say they were sent from here.
  { id: QUIZ_ID, title: 'Quiz musical au Ninkasi', organizer: 'lucas', start: at(-2, 20), end: at(-2, 23),
    location: 'Le Ninkasi Gerland', image: 'concert.jpg',
    description: 'Blind test par équipes de quatre. On a fini troisièmes, revanche le mois prochain !',
    participants: ['lucas', 'camille', 'ines', 'chloe', 'jules', 'emma'] },

  // Tonight: the event page shows its « jour J » header all day, whenever the reset ran.
  { id: GAMES_ID, title: 'Soirée jeux de société', organizer: 'ines', start: at(0, 19, 30), end: at(0, 23, 30),
    location: 'Bar à jeux Le Dé, Lyon 1er', image: 'soiree-jeux.jpg',
    description: 'Ramenez vos jeux ! On a réservé la grande table du fond, au nom d\'Inès.',
    participants: ['ines', 'camille', 'hugo', 'chloe', 'jules'] },

  // This week and next, joined by camille: they fill her calendar.
  { title: 'Session coworking', organizer: 'ines', start: at(0, 9, 30), end: at(0, 12),
    location: 'La Cordée Guillotière, Lyon', image: 'cafe.jpg',
    description: 'Matinée au calme, chacun sur son projet. Pause café à 10h30.',
    participants: ['ines', 'camille'] },
  { title: 'Afterwork en terrasse', organizer: 'camille', start: at(1, 18, 30), end: at(1, 21),
    location: 'Les Berges du Rhône, Lyon', image: 'afterwork.jpg',
    description: 'On profite des derniers beaux jours. Premier verre offert au premier arrivé.',
    participants: ['camille', 'lucas', 'sarah', 'ines'] },
  { title: 'Concert au Transbordeur', organizer: 'hugo', start: at(fri, 20, 30), end: at(fri, 23, 30),
    location: 'Le Transbordeur, Villeurbanne', image: 'concert.jpg',
    description: 'J\'ai pris quatre places, il en reste une. Rendez-vous devant à 20h.',
    participants: ['hugo', 'camille', 'lea', 'nathan'] },
  { title: 'Atelier Angular : les signals', organizer: 'camille', start: at(5, 19), end: at(5, 21),
    location: 'La Cordée Liberté, Lyon', image: 'atelier-code.jpg',
    description: 'Une heure de live coding pour migrer un composant vers les signals, puis questions.',
    participants: ['camille', 'hugo'] },
  { title: 'Randonnée dans les Monts d\'Or', organizer: 'lucas', start: at(sat, 9), end: at(sat, 16),
    location: 'Mont Thou, Saint-Cyr-au-Mont-d\'Or', image: 'randonnee.jpg',
    description: '14 km, 500 m de dénivelé. Pique-nique au sommet, prévoir de bonnes chaussures.',
    participants: ['lucas', 'lea', 'camille'] },

  // Not joined by camille: these make up her feed.
  { title: 'Soirée jeux vidéo', organizer: 'nathan', start: at(2, 20), end: at(3, 1),
    location: 'Chez Nathan, Croix-Rousse', image: 'soiree-jeux.jpg',
    description: 'Mario Kart, Overcooked et pizzas. Ramenez vos manettes.',
    participants: ['nathan', 'lucas'] },
  { title: 'Écoute de vinyles', organizer: 'jules', start: at(4, 19), end: at(4, 22),
    location: 'Disquaire Sofa, Lyon 4e', image: 'vinyles.jpg',
    description: 'Chacun apporte un disque qui l\'a marqué et raconte pourquoi.',
    participants: ['jules'], visibility: 'PUBLIC' },
  { title: 'Balade à vélo le long de la Saône', organizer: 'emma', start: at(sat + 1, 10), end: at(sat + 1, 13),
    location: 'Départ quai Saint-Vincent, Lyon', image: 'velo.jpg',
    description: '25 km tranquilles jusqu\'à l\'Île Barbe et retour. Vélos en libre-service possibles.',
    // Public: emma is not camille's friend, and this one belongs in her feed.
    participants: ['emma', 'lea'], visibility: 'PUBLIC' },
  { title: 'Vendanges dans le Beaujolais', organizer: 'lea', start: at(sat + 7, 8), end: at(sat + 7, 18),
    location: 'Domaine des Côtes, Villié-Morgon', image: 'vendanges.jpg',
    description: 'Une journée à cueillir avec le domaine d\'un ami, repas des vendangeurs le midi.',
    participants: ['lea', 'hugo'] },
  { title: 'Week-end à Biarritz', organizer: 'sarah', start: at(next(5, 14), 17), end: at(next(5, 14) + 2, 20),
    location: 'Biarritz', image: 'plage.jpg',
    description: 'Surf le samedi, Côte des Basques le dimanche. Covoiturage depuis Lyon, 3 places.',
    participants: ['sarah', 'nathan'] },
];

// Next week's routine of camille's friends, so that "find a slot" has real gaps to find.
// Most evenings are blocked by someone: with lea, hugo and lucas, the evenings left are
// Wednesday after 20:00, Thursday before 19:00, Saturday and Sunday after 18:00 (camille's
// own events, placed relative to today, may take some of them).
const mon = next(1, 1);
const routine = [
  { title: 'Cours de yoga', organizer: 'lea', start: at(mon, 18, 30), end: at(mon, 20),
    location: 'Studio Ahimsa, Lyon 7e', image: 'cafe.jpg',
    description: 'Vinyasa niveau intermédiaire. Tapis fournis.', participants: ['lea'] },
  { title: 'Répétition du groupe', organizer: 'hugo', start: at(mon, 19, 30), end: at(mon, 22, 30),
    location: 'Studio Mix, Villeurbanne', image: 'concert.jpg',
    description: 'On cale la setlist du concert de décembre.', participants: ['hugo', 'nathan'] },
  { title: 'Entraînement de foot', organizer: 'lucas', start: at(mon + 1, 19), end: at(mon + 1, 21),
    location: 'Stade de Gerland, Lyon 7e', image: 'randonnee.jpg',
    description: 'Foot à 7, on cherche toujours un gardien.', participants: ['lucas', 'hugo'] },
  { title: 'Dîner chez mes parents', organizer: 'ines', start: at(mon + 1, 19, 30), end: at(mon + 1, 22, 30),
    location: 'Caluire-et-Cuire', image: 'brunch.jpg',
    description: 'Anniversaire de ma mère, gâteau maison.', participants: ['ines'] },
  { title: 'Cours de poterie', organizer: 'sarah', start: at(mon + 2, 18), end: at(mon + 2, 20),
    location: 'Atelier Terre & Feu, Lyon 1er', image: 'atelier-code.jpg',
    description: 'Troisième séance : on attaque le tour.', participants: ['sarah', 'lea'] },
  // No end: lasts the default hour, 18:00 to 19:00.
  { title: 'Visite d\'appartement', organizer: 'hugo', start: at(mon + 2, 18),
    location: 'Rue Paul Bert, Lyon 3e', image: 'cafe.jpg',
    description: 'T3 lumineux, croisons les doigts.', participants: ['hugo'] },
  { title: 'Raid en ligne', organizer: 'nathan', start: at(mon + 2, 21), end: at(mon + 2, 23, 30),
    location: 'Discord', image: 'soiree-jeux.jpg',
    description: 'Raid hebdo, micro obligatoire.', participants: ['nathan'] },
  { title: 'Théâtre : Cyrano', organizer: 'lea', start: at(mon + 3, 20), end: at(mon + 3, 23),
    location: 'Théâtre des Célestins, Lyon 2e', image: 'concert.jpg',
    description: 'Deux places achetées, Hugo vient avec moi.', participants: ['lea', 'hugo'] },
  { title: 'Entraînement de foot', organizer: 'lucas', start: at(mon + 3, 19), end: at(mon + 3, 21),
    location: 'Stade de Gerland, Lyon 7e', image: 'randonnee.jpg',
    description: 'Match amical contre l\'équipe du jeudi.', participants: ['lucas'] },
  { title: 'Pot de départ de Julien', organizer: 'lucas', start: at(mon + 4, 18), end: at(mon + 4, 20, 30),
    location: 'Le Ninkasi Gerland', image: 'afterwork.jpg',
    description: 'Julien part à Montréal, on lui fait ses adieux.', participants: ['lucas', 'ines'] },
  { title: 'Marché de la Croix-Rousse', organizer: 'ines', start: at(mon + 5, 9, 30), end: at(mon + 5, 11, 30),
    location: 'Boulevard de la Croix-Rousse', image: 'brunch.jpg',
    description: 'Courses de la semaine puis café au Rond-Point.', participants: ['ines', 'lea'] },
  // Crosses midnight: sarah is busy until 2 am Sunday.
  { title: 'Anniversaire de Mathilde', organizer: 'sarah', start: at(mon + 5, 20), end: at(mon + 6, 2),
    location: 'Péniche Loupika, quai Augagneur', image: 'afterwork.jpg',
    description: 'Thème années 80, déguisement fortement conseillé.', participants: ['sarah', 'nathan', 'lucas'] },
  { title: 'Repas de famille', organizer: 'lea', start: at(mon + 6, 12), end: at(mon + 6, 16),
    location: 'Villefranche-sur-Saône', image: 'brunch.jpg',
    description: 'Gratin dauphinois de mamie, présence obligatoire.', participants: ['lea'] },
  { title: 'Tournoi de badminton', organizer: 'nathan', start: at(mon + 6, 14), end: at(mon + 6, 18),
    location: 'Gymnase Jean Zay, Lyon 8e', image: 'velo.jpg',
    description: 'Double mixte, il me manque un partenaire.', participants: ['nathan', 'hugo'] },
];
demoEvents.push(...routine);

// What camille sees of her friends' calendars depends on how close they are. Events organised
// by people she does not know (emma, chloe) show as busy with lucas (friend), by title with
// hugo (close) and in full with lea (intimate); a private event stays busy even for lea.
const disclosure = [
  { title: 'Atelier céramique', organizer: 'emma', start: at(mon + 1, 18), end: at(mon + 1, 20),
    location: 'Atelier Terre & Feu, Lyon 1er', image: 'atelier-code.jpg',
    description: 'Initiation au tournage, deux places.', participants: ['emma', 'hugo'] },
  { title: 'Dîner chez Chloé', organizer: 'chloe', start: at(mon + 4, 20), end: at(mon + 4, 23),
    location: 'Lyon 6e', image: 'brunch.jpg',
    description: 'Raclette, on apporte le vin.', participants: ['chloe', 'lucas'] },
  { title: 'Rendez-vous médical', organizer: 'lea', start: at(mon + 3, 12), end: at(mon + 3, 13),
    location: 'Lyon 3e', image: 'cafe.jpg', description: 'Contrôle annuel.',
    participants: ['lea'], visibility: 'PRIVATE' },
];
demoEvents.push(...disclosure);

// Where the demo events take place, [latitude, longitude], for the map. Fictional venues sit in
// their neighbourhood; an online event has no place.
const PLACES = {
  'Café Mokxa, Lyon 1er': [45.7690, 4.8337],
  'La Cordée Guillotière, Lyon': [45.7556, 4.8434],
  'Les Berges du Rhône, Lyon': [45.7575, 4.8395],
  'Le Transbordeur, Villeurbanne': [45.7840, 4.8608],
  'La Cordée Liberté, Lyon': [45.7573, 4.8429],
  'Mont Thou, Saint-Cyr-au-Mont-d\'Or': [45.8416, 4.7973],
  'Chez Nathan, Croix-Rousse': [45.7765, 4.8290],
  'Disquaire Sofa, Lyon 4e': [45.7775, 4.8305],
  'Départ quai Saint-Vincent, Lyon': [45.7680, 4.8235],
  'Domaine des Côtes, Villié-Morgon': [46.1567, 4.6842],
  'Biarritz': [43.4833, -1.5593],
  'Studio Ahimsa, Lyon 7e': [45.7480, 4.8420],
  'Studio Mix, Villeurbanne': [45.7660, 4.8800],
  'Stade de Gerland, Lyon 7e': [45.7267, 4.8310],
  'Caluire-et-Cuire': [45.7970, 4.8423],
  'Atelier Terre & Feu, Lyon 1er': [45.7690, 4.8295],
  'Rue Paul Bert, Lyon 3e': [45.7568, 4.8490],
  'Théâtre des Célestins, Lyon 2e': [45.7600, 4.8313],
  'Le Ninkasi Gerland': [45.7322, 4.8326],
  'Boulevard de la Croix-Rousse': [45.7744, 4.8326],
  'Péniche Loupika, quai Augagneur': [45.7600, 4.8410],
  'Villefranche-sur-Saône': [45.9865, 4.7266],
  'Gymnase Jean Zay, Lyon 8e': [45.7340, 4.8700],
  'Lyon 6e': [45.7681, 4.8528],
  'Lyon 3e': [45.7555, 4.8623],
  'Bar à jeux Le Dé, Lyon 1er': [45.7675, 4.8320],
};

events.insertMany(demoEvents.map(e => ({
  ...(e.id ? { _id: e.id } : {}),
  title: e.title,
  organizerId: U[e.organizer],
  startDate: e.start,
  ...(e.end ? { endDate: e.end } : {}),
  location: e.location,
  // GeoJSON, longitude first, as wely-events stores it.
  ...(PLACES[e.location] ? { coordinates: { type: 'Point', coordinates: [PLACES[e.location][1], PLACES[e.location][0]] } } : {}),
  image: '/demo/events/' + e.image,
  description: e.description,
  participantIds: e.participants.map(p => U[p]),
  // Shared with the organizer's friends unless said otherwise, as the application defaults.
  visibility: e.visibility || 'FRIENDS',
  _class: EVENT_CLASS,
})));

// --- Birthdays ------------------------------------------------------------------------------

// Days from the reset day to each birthday, as birth_date in seed-users.sql: camille's friends
// show every closeness (sarah today, ines in 3 days, lea, intimate, in 9), and lea is already
// planning hugo's surprise, which camille can join but hugo never sees.
const BIRTHDAYS = { camille: 25, lea: 9, hugo: 16, ines: 3, lucas: 40, sarah: 0, nathan: 60, jules: 120, emma: 200, chloe: 300 };
const NAMES = { camille: 'Camille', lea: 'Léa', hugo: 'Hugo', ines: 'Inès', lucas: 'Lucas', sarah: 'Sarah',
                nathan: 'Nathan', jules: 'Jules', emma: 'Emma', chloe: 'Chloé' };

/** The calendar date `days` from today, as {y, m, d}. */
function dateIn(days) {
  const t = new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d + days));
  return { y: t.getUTCFullYear(), m: t.getUTCMonth() + 1, d: t.getUTCDate() };
}

// One yearly BIRTHDAY per user, as wely-events upserts it from USER_BIRTHDAY: the year 2000 is a
// placeholder, only the month and day count.
events.insertMany(Object.entries(BIRTHDAYS).map(([name, days]) => {
  const { m, d } = dateIn(days);
  return {
    _id: 'birthday-' + U[name],
    kind: 'BIRTHDAY',
    title: 'Anniversaire de ' + NAMES[name],
    organizerId: U[name],
    honoreeId: U[name],
    honoreeName: NAMES[name],
    birthMonth: m,
    birthDay: d,
    allDay: true,
    startDate: new Date(Date.UTC(2000, m - 1, d)),
    endDate: new Date(Date.UTC(2000, m - 1, d + 1)),
    visibility: 'FRIENDS',
    participantIds: [],
    hiddenFrom: [],
    _class: EVENT_CLASS,
  };
}));

const hugoBirthday = dateIn(BIRTHDAYS.hugo);
events.insertOne({
  kind: 'SURPRISE',
  title: 'Anniversaire surprise de Hugo 🎉',
  organizerId: U.lea,
  organizerName: 'lea',
  honoreeId: U.hugo,
  honoreeName: 'Hugo',
  hiddenFrom: [U.hugo],
  occurrenceKey: U.hugo + ':' + hugoBirthday.y,
  allDay: false,
  startDate: at(BIRTHDAYS.hugo, 19),
  endDate: at(BIRTHDAYS.hugo, 23),
  location: 'Péniche Loupika, quai Augagneur',
  coordinates: { type: 'Point', coordinates: [4.8410, 45.7600] },
  description: '🤫 Hugo ne voit pas cet événement. On réserve la péniche, chacun ramène un petit truc !',
  participantIds: [U.lea, U.emma],
  visibility: 'FRIENDS',
  _class: EVENT_CLASS,
});

// wely-events' copy of the friendship graph, which wely-social keeps up to date through
// FRIENDSHIP_CHANGED. seed-social.cypher writes Neo4j directly, without publishing, so the copy is
// seeded here with the same accepted pairs ([a, b, closeness, days ago]). Version 0: any real
// change a visitor makes afterwards wins.
const friendships = db.getSiblingDB('events_db').friendships;
friendships.deleteMany({ $or: [{ a: { $in: DEMO_IDS } }, { b: { $in: DEMO_IDS } }] });
friendships.insertMany([
  ['camille', 'lea', 'INTIMATE', 80], ['camille', 'hugo', 'CLOSE', 70], ['camille', 'ines', 'FRIEND', 60],
  ['camille', 'lucas', 'FRIEND', 50], ['camille', 'sarah', 'FRIEND', 40], ['nathan', 'camille', 'FRIEND', 25],
  ['lea', 'hugo', 'FRIEND', 85], ['sarah', 'nathan', 'FRIEND', 30], ['ines', 'lucas', 'FRIEND', 55],
  ['lea', 'emma', 'FRIEND', 8], ['hugo', 'emma', 'FRIEND', 6],
].map(([x, y, closeness, days]) => {
  const [a, b] = [U[x], U[y]].sort();
  return { _id: a + ':' + b, a, b, friends: true, closeness, since: new Date(Date.now() - days * 86400000), version: 0,
           _class: 'com.calendar.events.infrastructure.persistence.entities.FriendshipEntity' };
}));
// The friend lists the birthday feature cached before this projection existed.
db.getSiblingDB('events_db').friend_lists.drop();

// --- Conversations --------------------------------------------------------------------------

const conversations = [
  { with: 'lea', messages: [
    ['lea', 'Tu viens toujours à la rando samedi ?', 1450],
    ['camille', 'Oui ! Lucas m\'a dit 14 km, ça va piquer un peu 😅', 1440],
    ['lea', 'Il dit toujours ça, en vrai c\'est tranquille', 1436],
    ['lea', 'Je prends le pique-nique, tu t\'occupes du café ?', 1435],
    ['camille', 'Deal. Thermos plein, promis', 1420],
    ['lea', 'Et merci pour le brunch dimanche, c\'était top', 95],
  ] },
  { with: 'hugo', messages: [
    ['hugo', 'J\'ai les places pour le Transbordeur 🎶', 2900],
    ['camille', 'Génial ! Je te dois combien ?', 2880],
    ['hugo', '28€, tu me fais un virement quand tu veux', 2875],
    ['camille', 'C\'est fait. On se retrouve devant à 20h ?', 2860],
    ['hugo', 'Parfait. Et ton atelier signals, je viens aussi', 300],
    ['camille', 'Super, tu feras le cobaye pour la démo 😄', 290],
  ] },
  { with: 'sarah', messages: [
    ['sarah', 'Tu as vu mon week-end à Biarritz ? Il reste une place dans la voiture', 600],
    ['camille', 'Trop tentant… je regarde mon planning et je te dis', 540],
    ['sarah', 'Pas de pression, on part vendredi 17h 🌊', 535],
  ] },
];

for (const c of conversations) {
  const conversationId = new ObjectId();
  const messages = c.messages.map(([from, text, age]) => ({
    m_id: null, // what the application writes too: see ConversationMapper in wely-chat
    s_id: U[from],
    s_un: from,
    txt: text,
    ts: minutesAgo(age),
  }));
  const last = messages[messages.length - 1];
  chat.conversations.insertOne({
    _id: conversationId,
    participantIds: [U.camille, U[c.with]],
    lastMessage: last,
    updatedAt: last.ts,
    _class: CONVERSATION_CLASS,
  });
  chat.message_buckets.insertOne({
    conversationId: conversationId.toString(),
    bucketIndex: 0,
    messages,
    _class: BUCKET_CLASS,
  });
}

// The group of tonight's board games. wely-events' relay sends its members too, possibly before
// this line runs, so it is upserted on the event id rather than inserted. Camille has not written
// yet: the first message from the demo account is hers to send.
const gamesMessages = [
  ['ines', 'J\'ai réservé la grande table du fond pour 19h30 🎲', 300],
  ['hugo', 'Je ramène Codenames et Skull', 240],
  ['chloe', 'Moi Dixit ! Jules, tu as toujours Azul ?', 180],
  ['jules', 'Oui, je le prends. On mange sur place ?', 175],
  ['ines', 'Ils font des planches, on commande en arrivant', 120],
].map(([from, text, age]) => ({
  m_id: null, s_id: U[from], s_un: from, txt: text, ts: minutesAgo(age),
}));
const gamesLast = gamesMessages[gamesMessages.length - 1];
chat.conversations.updateOne(
  { eventId: GAMES_ID.toString() },
  {
    $set: { lastMessage: gamesLast, updatedAt: gamesLast.ts },
    $setOnInsert: {
      participantIds: ['ines', 'camille', 'hugo', 'chloe', 'jules'].map(p => U[p]),
      type: 'EVENT', title: 'Soirée jeux de société', _class: CONVERSATION_CLASS,
    },
  },
  { upsert: true });
const gamesConversationId = chat.conversations.findOne({ eventId: GAMES_ID.toString() })._id.toString();
chat.message_buckets.updateOne(
  { conversationId: gamesConversationId, bucketIndex: 0 },
  { $set: { messages: gamesMessages, _class: BUCKET_CLASS } },
  { upsert: true });

print(`events: ${events.countDocuments({ organizerId: { $in: DEMO_IDS } })}, ` +
      `conversations: ${chat.conversations.countDocuments({ participantIds: { $in: DEMO_IDS } })}`);
