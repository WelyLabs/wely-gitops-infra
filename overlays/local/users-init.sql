--
-- PostgreSQL database dump
--

-- Dumped from database version 17.10 (Debian 17.10-1.pgdg13+1)
-- Dumped by pg_dump version 17.10 (Debian 17.10-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.app_user DROP CONSTRAINT IF EXISTS unique_user_identity;
ALTER TABLE IF EXISTS ONLY public.app_user DROP CONSTRAINT IF EXISTS app_user_pkey;
ALTER TABLE IF EXISTS ONLY public.app_user DROP CONSTRAINT IF EXISTS app_user_keycloak_id_key;
DROP TABLE IF EXISTS public.app_user;
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: users
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO users;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: users
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_user; Type: TABLE; Schema: public; Owner: users
--

CREATE TABLE public.app_user (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    keycloak_id text NOT NULL,
    user_name text NOT NULL,
    hashtag integer NOT NULL,
    first_name text,
    last_name text,
    profile_pic_url text,
    joined_date timestamp without time zone NOT NULL
);


ALTER TABLE public.app_user OWNER TO users;

--
-- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: users
--

COPY public.app_user (id, keycloak_id, user_name, hashtag, first_name, last_name, profile_pic_url, joined_date) FROM stdin;
a5f79638-abfc-4ffc-bffc-c9f1d8878e56	93b5339f-a3a3-45b8-b343-25ca1b6f9d7b	darth	2922	Théo	Banette	\N	2026-07-16 22:41:03.313187
9a28c34c-d6dd-406b-873b-e18ca6e35b64	2e7ebdbe-6a8a-488d-8495-1bee73197811	madie	2614	Madeline	Heyraud	\N	2026-07-16 22:42:44.504341
74a5ab16-b4bc-4257-8842-bb3c664a4df4	b17cc54a-817c-4cfc-b8d6-3aa4d6c32dc2	manon	4856	Manon	Banette	\N	2026-07-16 23:17:26.899858
\.


--
-- Name: app_user app_user_keycloak_id_key; Type: CONSTRAINT; Schema: public; Owner: users
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT app_user_keycloak_id_key UNIQUE (keycloak_id);


--
-- Name: app_user app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: users
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (id);


--
-- Name: app_user unique_user_identity; Type: CONSTRAINT; Schema: public; Owner: users
--

ALTER TABLE ONLY public.app_user
    ADD CONSTRAINT unique_user_identity UNIQUE (user_name, hashtag);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: users
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


