--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Homebrew)
-- Dumped by pg_dump version 16.4 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: unipäiväkirja; Type: TABLE; Schema: public; Owner: s2400325
--

CREATE TABLE public."unipäiväkirja" (
    "päivämäärä" date NOT NULL,
    nukkumaanmeno_aika time without time zone,
    "heräämis_aika" time without time zone,
    "unen_määrä" character varying(25),
    "unen_riittävyys" boolean
);


ALTER TABLE public."unipäiväkirja" OWNER TO s2400325;

--
-- Data for Name: unipäiväkirja; Type: TABLE DATA; Schema: public; Owner: s2400325
--

COPY public."unipäiväkirja" ("päivämäärä", nukkumaanmeno_aika, "heräämis_aika", "unen_määrä", "unen_riittävyys") FROM stdin;
2024-10-01	23:25:00	08:17:00	8 tuntia	t
2024-10-02	22:59:00	07:47:00	8,5 tuntia	t
2024-10-03	00:59:00	08:07:00	6,5 tuntia	f
2024-10-04	00:00:00	08:12:00	7,5 tuntia	f
2024-10-05	23:41:00	08:04:00	8 tuntia	t
2024-10-06	22:56:00	07:33:00	8 tuntia	t
2024-10-07	23:53:00	08:00:00	8 tuntia	t
\.


--
-- Name: unipäiväkirja id; Type: CONSTRAINT; Schema: public; Owner: s2400325
--

ALTER TABLE ONLY public."unipäiväkirja"
    ADD CONSTRAINT id PRIMARY KEY ("päivämäärä");


--
-- PostgreSQL database dump complete
--

