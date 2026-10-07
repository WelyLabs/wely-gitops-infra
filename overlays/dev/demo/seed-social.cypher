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
  // [from, to, status, days ago]
  ['camille', 'lea', 'ACCEPTED', 80], ['camille', 'hugo', 'ACCEPTED', 70],
  ['camille', 'ines', 'ACCEPTED', 60], ['camille', 'lucas', 'ACCEPTED', 50],
  ['camille', 'sarah', 'ACCEPTED', 40], ['nathan', 'camille', 'ACCEPTED', 25],
  ['lea', 'hugo', 'ACCEPTED', 85], ['sarah', 'nathan', 'ACCEPTED', 30],
  ['ines', 'lucas', 'ACCEPTED', 55], ['lea', 'emma', 'ACCEPTED', 8],
  // Pending, one in each direction so both sides of the flow are visible:
  // jules waits for camille's answer, camille waits for emma's.
  ['jules', 'camille', 'PENDING', 1], ['camille', 'emma', 'PENDING', 2]
] AS r
MATCH (a:User {userId: id[r[0]]}), (b:User {userId: id[r[1]]})
CREATE (a)-[rel:RELATIONSHIP {status: r[2], createdAt: datetime() - duration({days: r[3], hours: 3})}]->(b)
SET rel.acceptedAt = CASE r[2] WHEN 'ACCEPTED' THEN datetime() - duration({days: r[3]}) END;

// chloe has no relationship at all: she is the user to find through search.
