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

/**
 * Message timestamps are a LocalDateTime taken by wely-chat with LocalDateTime.now(). Its
 * container runs in UTC, so the stored wall-clock time is UTC: match it, not Paris time.
 */
function localDateTime(minutesAgo) {
  return new Date(Date.now() - minutesAgo * 60000);
}

// --- Events ---------------------------------------------------------------------------------

const events = db.getSiblingDB('events_db').events;

events.deleteMany({ organizerId: { $in: DEMO_IDS } });
// Subscriptions a visitor added to events of real users.
events.updateMany({ participantIds: { $in: DEMO_IDS } }, { $pull: { participantIds: { $in: DEMO_IDS } } });

/** Days from today back to the last given weekday, at least one day ago. */
function last(weekday) {
  const dow = new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d)).getUTCDay();
  return -(((dow - weekday + 7) % 7) || 7);
}

const sat = next(6, 2);
const fri = next(5, 2);
const demoEvents = [
  // Past, so the calendar has some history.
  { title: 'Brunch du dimanche', organizer: 'camille', start: at(last(0), 11), end: at(last(0), 14),
    location: 'Café Mokxa, Lyon 1er', image: 'brunch.jpg',
    description: 'Pancakes, café filtre et le récap de la semaine.',
    participants: ['camille', 'lea', 'ines', 'sarah'] },

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
    participants: ['jules'] },
  { title: 'Balade à vélo le long de la Saône', organizer: 'emma', start: at(sat + 1, 10), end: at(sat + 1, 13),
    location: 'Départ quai Saint-Vincent, Lyon', image: 'velo.jpg',
    description: '25 km tranquilles jusqu\'à l\'Île Barbe et retour. Vélos en libre-service possibles.',
    participants: ['emma', 'lea'] },
  { title: 'Vendanges dans le Beaujolais', organizer: 'lea', start: at(sat + 7, 8), end: at(sat + 7, 18),
    location: 'Domaine des Côtes, Villié-Morgon', image: 'vendanges.jpg',
    description: 'Une journée à cueillir avec le domaine d\'un ami, repas des vendangeurs le midi.',
    participants: ['lea', 'hugo'] },
  { title: 'Week-end à Biarritz', organizer: 'sarah', start: at(next(5, 14), 17), end: at(next(5, 14) + 2, 20),
    location: 'Biarritz', image: 'plage.jpg',
    description: 'Surf le samedi, Côte des Basques le dimanche. Covoiturage depuis Lyon, 3 places.',
    participants: ['sarah', 'nathan'] },
];

events.insertMany(demoEvents.map(e => ({
  title: e.title,
  organizerId: U[e.organizer],
  startDate: e.start,
  endDate: e.end,
  location: e.location,
  image: '/demo/events/' + e.image,
  description: e.description,
  participantIds: e.participants.map(p => U[p]),
  _class: EVENT_CLASS,
})));

// --- Conversations --------------------------------------------------------------------------

const chat = db.getSiblingDB('chat_db');

const touched = chat.conversations.find({ participantIds: { $in: DEMO_IDS } }, { _id: 1 })
  .toArray().map(c => c._id.toString());
chat.message_buckets.deleteMany({ conversationId: { $in: touched } });
chat.conversations.deleteMany({ participantIds: { $in: DEMO_IDS } });

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
  const messages = c.messages.map(([from, text, minutesAgo]) => ({
    m_id: null, // what the application writes too: see ConversationMapper in wely-chat
    s_id: U[from],
    s_un: from,
    txt: text,
    ts: localDateTime(minutesAgo),
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

print(`events: ${events.countDocuments({ organizerId: { $in: DEMO_IDS } })}, ` +
      `conversations: ${chat.conversations.countDocuments({ participantIds: { $in: DEMO_IDS } })}`);
