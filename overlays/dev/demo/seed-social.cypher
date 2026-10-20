// Demo dataset for wely-social (Neo4j). Idempotent: DETACH DELETE also removes every
// relationship a visitor created from the demo account, including requests sent to real users.
MATCH (u:User)
WHERE u.userId IN [
  '89a380b8-f66a-44d0-b9d9-616241080430', 'a0cac685-c593-415d-bd73-6530e25a1f53',
  '9de75282-095c-41a9-ab17-2d58b02445da', '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
  '0fa728fe-fd0e-4997-b226-fd049c6b0659', '15d05360-522a-4ff1-93a9-07d63346e4c1',
  '4d6501b7-caed-4a98-b960-199db1bd4106', '66e332e6-8d98-49c6-ac22-27095c35cf9d',
  'f4be7974-0ed3-457e-80d3-8aa08e0c5197', 'cdc6f71d-065c-4af5-9775-692411fc9504']
DETACH DELETE u;

UNWIND [
  {id: '89a380b8-f66a-44d0-b9d9-616241080430', name: 'camille', tag: 2680},
  {id: 'a0cac685-c593-415d-bd73-6530e25a1f53', name: 'lea',     tag: 6000},
  {id: '9de75282-095c-41a9-ab17-2d58b02445da', name: 'hugo',    tag: 9074},
  {id: '50c7b996-ebf8-40e1-a0a5-5dc634f9b793', name: 'ines',    tag: 3474},
  {id: '0fa728fe-fd0e-4997-b226-fd049c6b0659', name: 'lucas',   tag: 8335},
  {id: '15d05360-522a-4ff1-93a9-07d63346e4c1', name: 'sarah',   tag: 3173},
  {id: '4d6501b7-caed-4a98-b960-199db1bd4106', name: 'nathan',  tag: 5013},
  {id: '66e332e6-8d98-49c6-ac22-27095c35cf9d', name: 'jules',   tag: 8739},
  {id: 'f4be7974-0ed3-457e-80d3-8aa08e0c5197', name: 'emma',    tag: 1665},
  {id: 'cdc6f71d-065c-4af5-9775-692411fc9504', name: 'chloe',   tag: 5546}
] AS u
CREATE (:User {userId: u.id, userName: u.name, hashtag: u.tag, profilePicUrl: '/demo/avatars/' + u.name + '.svg'});

// Accepted friendships: camille's six friends, plus a few between them so that
// friends-of-friends has something to show. Matched by id, never by name: a real user
// may well register as "lea".
WITH {
  camille: '89a380b8-f66a-44d0-b9d9-616241080430', lea:    'a0cac685-c593-415d-bd73-6530e25a1f53',
  hugo:    '9de75282-095c-41a9-ab17-2d58b02445da', ines:   '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
  lucas:   '0fa728fe-fd0e-4997-b226-fd049c6b0659', sarah:  '15d05360-522a-4ff1-93a9-07d63346e4c1',
  nathan:  '4d6501b7-caed-4a98-b960-199db1bd4106', jules:  '66e332e6-8d98-49c6-ac22-27095c35cf9d',
  emma:    'f4be7974-0ed3-457e-80d3-8aa08e0c5197'
} AS id
UNWIND [
  // [from, to, status, days ago, closeness, proposed closeness, proposed by]
  // camille shows each level: lea is intimate, hugo close, the others plain friends, and
  // sarah has proposed to become close, waiting for camille's answer.
  ['camille', 'lea', 'ACCEPTED', 80, 'INTIMATE', null, null], ['camille', 'hugo', 'ACCEPTED', 70, 'CLOSE', null, null],
  ['camille', 'ines', 'ACCEPTED', 60, null, null, null], ['camille', 'lucas', 'ACCEPTED', 50, null, null, null],
  ['camille', 'sarah', 'ACCEPTED', 40, null, 'CLOSE', 'sarah'], ['nathan', 'camille', 'ACCEPTED', 25, null, null, null],
  ['lea', 'hugo', 'ACCEPTED', 85, null, null, null], ['sarah', 'nathan', 'ACCEPTED', 30, null, null, null],
  ['ines', 'lucas', 'ACCEPTED', 55, null, null, null], ['lea', 'emma', 'ACCEPTED', 8, null, null, null],
  ['hugo', 'emma', 'ACCEPTED', 6, null, null, null],
  // Pending, one in each direction so both sides of the flow are visible:
  // jules waits for camille's answer, camille waits for emma's.
  ['jules', 'camille', 'PENDING', 1, null, null, null], ['camille', 'emma', 'PENDING', 2, null, null, null]
] AS r
MATCH (a:User {userId: id[r[0]]}), (b:User {userId: id[r[1]]})
CREATE (a)-[rel:RELATIONSHIP {status: r[2], createdAt: datetime() - duration({days: r[3], hours: 3})}]->(b)
SET rel.acceptedAt = CASE r[2] WHEN 'ACCEPTED' THEN datetime() - duration({days: r[3]}) END,
    rel.closeness = r[4],
    rel.proposedCloseness = r[5],
    rel.proposedBy = CASE WHEN r[6] IS NULL THEN null ELSE id[r[6]] END;

// Both pending requests come from the quiz camille went to two days ago, the event with the
// fixed id in seed-mongo.js: the friends page says where they met.
MATCH (:User {userId: '66e332e6-8d98-49c6-ac22-27095c35cf9d'})-[r:RELATIONSHIP {status: 'PENDING'}]->(:User {userId: '89a380b8-f66a-44d0-b9d9-616241080430'})
SET r.viaEventId = '66f1a2b3c4d5e6f7a8b9c0d1';
MATCH (:User {userId: '89a380b8-f66a-44d0-b9d9-616241080430'})-[r:RELATIONSHIP {status: 'PENDING'}]->(:User {userId: 'f4be7974-0ed3-457e-80d3-8aa08e0c5197'})
SET r.viaEventId = '66f1a2b3c4d5e6f7a8b9c0d1';

// chloe has no relationship at all: she is the user to find through search, and the one to
// add from the quiz.

// Communities created by a demo account, including any a visitor made during the day. Deleted by
// createdBy, never by membership: a real user's community that a visitor joined as camille is
// theirs, and the DETACH DELETE above has already taken the membership with the User node.
MATCH (c:Community)
WHERE c.createdBy IN [
  '89a380b8-f66a-44d0-b9d9-616241080430', 'a0cac685-c593-415d-bd73-6530e25a1f53',
  '9de75282-095c-41a9-ab17-2d58b02445da', '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
  '0fa728fe-fd0e-4997-b226-fd049c6b0659', '15d05360-522a-4ff1-93a9-07d63346e4c1',
  '4d6501b7-caed-4a98-b960-199db1bd4106', '66e332e6-8d98-49c6-ac22-27095c35cf9d',
  'f4be7974-0ed3-457e-80d3-8aa08e0c5197', 'cdc6f71d-065c-4af5-9775-692411fc9504']
DETACH DELETE c;

// Six communities, with fixed ids so a re-run replaces them instead of piling up. No picture:
// pictureKey stays null, as a seeded avatar does, and only what a visitor uploads lands in
// Garage — which is exactly what demo-reset.yaml purges from communities/.
// Interests are lower-cased and at most five, as CommunityDraft normalizes them.
UNWIND [
  {id: 'ef773bba-f02b-4999-a7e7-b4df37a29d39', by: '89a380b8-f66a-44d0-b9d9-616241080430',
   name: 'Rando Île-de-France', visibility: 'PUBLIC', days: 95,
   description: 'Une sortie par mois, de la vallée de Chevreuse au Vexin. Niveau tranquille, on attend tout le monde.',
   interests: ['randonnée', 'nature', 'week-end']},
  {id: '10459804-5b03-4c28-a5f3-6dc4426d83c1', by: 'a0cac685-c593-415d-bd73-6530e25a1f53',
   name: 'Club lecture du mardi', visibility: 'PUBLIC', days: 60,
   description: 'Un livre par mois, on en parle le dernier mardi autour d\'un verre.',
   interests: ['lecture', 'culture']},
  {id: '5abe40c9-6da9-498e-ab74-4afdf4ff024b', by: '9de75282-095c-41a9-ab17-2d58b02445da',
   name: 'Coloc Bastille', visibility: 'PRIVATE', days: 200,
   description: 'Les courses, le ménage et les anniversaires. Sur invitation seulement.',
   interests: ['coloc']},
  {id: '7696cf5a-1540-4d56-931c-48a2ad826b6e', by: '66e332e6-8d98-49c6-ac22-27095c35cf9d',
   name: 'Escalade & bloc', visibility: 'PUBLIC', days: 45,
   description: 'Bloc en salle le mardi et le jeudi, falaise dès qu\'il fait beau.',
   interests: ['escalade', 'sport']},
  {id: 'a52ee47b-499f-4583-a085-742554f14d7e', by: 'cdc6f71d-065c-4af5-9775-692411fc9504',
   name: 'Photo argentique', visibility: 'PUBLIC', days: 20,
   description: 'Développement, tirage et sorties photo. Débutants bienvenus.',
   interests: ['photo', 'argentique']},
  {id: '3c1f8d26-7b40-4e55-9a1e-2f6d80b4c7a9', by: 'cdc6f71d-065c-4af5-9775-692411fc9504',
   name: 'Chorale du quartier', visibility: 'PRIVATE', days: 30,
   description: 'Répétition le jeudi soir. On recrute surtout des voix graves.',
   interests: ['musique', 'chant']}
] AS c
CREATE (:Community {communityId: c.id, name: c.name, description: c.description,
                    interests: c.interests, visibility: c.visibility,
                    createdAt: datetime() - duration({days: c.days}), createdBy: c.by});

// Memberships. camille is admin of one, member of two, and not in the last two: the discovery
// tab then has something to show, with friends already inside.
WITH {
  camille: '89a380b8-f66a-44d0-b9d9-616241080430', lea:    'a0cac685-c593-415d-bd73-6530e25a1f53',
  hugo:    '9de75282-095c-41a9-ab17-2d58b02445da', ines:   '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
  lucas:   '0fa728fe-fd0e-4997-b226-fd049c6b0659', sarah:  '15d05360-522a-4ff1-93a9-07d63346e4c1',
  nathan:  '4d6501b7-caed-4a98-b960-199db1bd4106', jules:  '66e332e6-8d98-49c6-ac22-27095c35cf9d',
  emma:    'f4be7974-0ed3-457e-80d3-8aa08e0c5197', chloe:  'cdc6f71d-065c-4af5-9775-692411fc9504'
} AS id
UNWIND [
  // [community, member, role, days ago]
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'camille', 'ADMIN',  95], // rando: camille's own
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'lea',     'MEMBER', 90],
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'hugo',    'ADMIN',  88], // a second admin, as the model allows
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'ines',    'MEMBER', 70],
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'nathan',  'MEMBER', 25],
  ['ef773bba-f02b-4999-a7e7-b4df37a29d39', 'chloe',   'MEMBER', 10], // a member who is nobody's friend
  ['10459804-5b03-4c28-a5f3-6dc4426d83c1', 'lea',     'ADMIN',  60], // lecture: camille is a plain member
  ['10459804-5b03-4c28-a5f3-6dc4426d83c1', 'camille', 'MEMBER', 55],
  ['10459804-5b03-4c28-a5f3-6dc4426d83c1', 'emma',    'MEMBER', 30],
  ['10459804-5b03-4c28-a5f3-6dc4426d83c1', 'sarah',   'MEMBER', 12],
  ['5abe40c9-6da9-498e-ab74-4afdf4ff024b', 'hugo',    'ADMIN',  200], // coloc: private, camille inside
  ['5abe40c9-6da9-498e-ab74-4afdf4ff024b', 'camille', 'MEMBER', 200],
  ['5abe40c9-6da9-498e-ab74-4afdf4ff024b', 'lucas',   'MEMBER', 150],
  ['7696cf5a-1540-4d56-931c-48a2ad826b6e', 'jules',   'ADMIN',  45], // escalade: camille outside, three friends in
  ['7696cf5a-1540-4d56-931c-48a2ad826b6e', 'sarah',   'MEMBER', 40],
  ['7696cf5a-1540-4d56-931c-48a2ad826b6e', 'nathan',  'MEMBER', 35],
  ['7696cf5a-1540-4d56-931c-48a2ad826b6e', 'emma',    'MEMBER', 15],
  ['a52ee47b-499f-4583-a085-742554f14d7e', 'chloe',   'ADMIN',  20], // photo: camille outside, no friend in
  ['3c1f8d26-7b40-4e55-9a1e-2f6d80b4c7a9', 'chloe',   'ADMIN',  30], // chorale: private, camille only invited
  ['3c1f8d26-7b40-4e55-9a1e-2f6d80b4c7a9', 'emma',    'MEMBER', 28]
] AS m
MATCH (c:Community {communityId: m[0]}), (u:User {userId: id[m[1]]})
CREATE (u)-[:MEMBER_OF {role: m[2], joinedAt: datetime() - duration({days: m[3]})}]->(c);

// One invitation waiting for camille, to the private community she is not in. Sent a day ago,
// so it still has two of its three days left whatever time the reset runs.
MATCH (c:Community {communityId: '3c1f8d26-7b40-4e55-9a1e-2f6d80b4c7a9'}),
      (invitee:User {userId: '89a380b8-f66a-44d0-b9d9-616241080430'})
CREATE (c)-[:INVITED {token: 'demo-invitation-chorale-du-quartier',
                      inviterId: 'cdc6f71d-065c-4af5-9775-692411fc9504',
                      createdAt: datetime() - duration({days: 1}),
                      expiresAt: datetime() + duration({days: 2})}]->(invitee);
