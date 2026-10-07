-- Demo dataset for wely-users (PostgreSQL). Idempotent: removes the demo rows, then inserts them.
--
-- Only camille can log in. Her keycloak_id is the id of the Keycloak user created for the demo,
-- passed in as :demo_keycloak_id; the mapper resolves it to the fixed business id below. The
-- other users have no Keycloak account, so their keycloak_id is a placeholder that matches none.
\set ON_ERROR_STOP on

BEGIN;

DELETE FROM app_user
WHERE id IN (
        '89a380b8-f66a-44d0-b9d9-616241080430', 'a0cac685-c593-415d-bd73-6530e25a1f53',
        '9de75282-095c-41a9-ab17-2d58b02445da', '50c7b996-ebf8-40e1-a0a5-5dc634f9b793',
        '0fa728fe-fd0e-4997-b226-fd049c6b0659', '15d05360-522a-4ff1-93a9-07d63346e4c1',
        '4d6501b7-caed-4a98-b960-199db1bd4106', '66e332e6-8d98-49c6-ac22-27095c35cf9d',
        'f4be7974-0ed3-457e-80d3-8aa08e0c5197', 'cdc6f71d-065c-4af5-9775-692411fc9504')
   -- A visitor cannot change the Keycloak id, but a row provisioned for it under another
   -- business id would make the insert below fail on the unique keycloak_id.
   OR keycloak_id = :'demo_keycloak_id'
   OR keycloak_id LIKE 'demo-fixture-%';

INSERT INTO app_user (id, keycloak_id, user_name, hashtag, first_name, last_name, profile_pic_url, joined_date) VALUES
  ('89a380b8-f66a-44d0-b9d9-616241080430', :'demo_keycloak_id',     'camille', 2680, 'Camille', 'Martin',  '/demo/avatars/camille.svg', now() - interval '94 days'),
  ('a0cac685-c593-415d-bd73-6530e25a1f53', 'demo-fixture-lea',      'lea',     6000, 'Léa',     'Moreau',  '/demo/avatars/lea.svg',     now() - interval '120 days'),
  ('9de75282-095c-41a9-ab17-2d58b02445da', 'demo-fixture-hugo',     'hugo',    9074, 'Hugo',    'Bernard', '/demo/avatars/hugo.svg',    now() - interval '88 days'),
  ('50c7b996-ebf8-40e1-a0a5-5dc634f9b793', 'demo-fixture-ines',     'ines',    3474, 'Inès',    'Petit',   '/demo/avatars/ines.svg',    now() - interval '75 days'),
  ('0fa728fe-fd0e-4997-b226-fd049c6b0659', 'demo-fixture-lucas',    'lucas',   8335, 'Lucas',   'Robert',  '/demo/avatars/lucas.svg',   now() - interval '61 days'),
  ('15d05360-522a-4ff1-93a9-07d63346e4c1', 'demo-fixture-sarah',    'sarah',   3173, 'Sarah',   'Dubois',  '/demo/avatars/sarah.svg',   now() - interval '47 days'),
  ('4d6501b7-caed-4a98-b960-199db1bd4106', 'demo-fixture-nathan',   'nathan',  5013, 'Nathan',  'Lefèvre', '/demo/avatars/nathan.svg',  now() - interval '33 days'),
  ('66e332e6-8d98-49c6-ac22-27095c35cf9d', 'demo-fixture-jules',    'jules',   8739, 'Jules',   'Fontaine','/demo/avatars/jules.svg',   now() - interval '12 days'),
  ('f4be7974-0ed3-457e-80d3-8aa08e0c5197', 'demo-fixture-emma',     'emma',    1665, 'Emma',    'Girard',  '/demo/avatars/emma.svg',    now() - interval '9 days'),
  ('cdc6f71d-065c-4af5-9775-692411fc9504', 'demo-fixture-chloe',    'chloe',   5546, 'Chloé',   'Garnier', '/demo/avatars/chloe.svg',   now() - interval '4 days');

COMMIT;
