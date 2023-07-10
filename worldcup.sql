--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 2, 2, 1, 1, 2018, 'Final');
INSERT INTO public.games VALUES (2, 0, 4, 3, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (2, 1, 4, 2, 3, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (1, 0, 3, 1, 4, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (3, 2, 5, 2, 5, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 0, 6, 4, 6, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 1, 7, 3, 7, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 0, 8, 1, 8, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 1, 9, 4, 9, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (1, 0, 10, 6, 10, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (3, 2, 11, 3, 11, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 0, 12, 7, 12, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 13, 2, 13, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 14, 5, 14, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 15, 8, 15, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (4, 3, 16, 1, 16, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (1, 0, 16, 17, 17, 2014, 'Final');
INSERT INTO public.games VALUES (3, 0, 7, 18, 18, 2014, 'Third Place');
INSERT INTO public.games VALUES (1, 0, 18, 16, 19, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (7, 1, 7, 17, 20, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (1, 0, 19, 18, 21, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (1, 0, 3, 16, 22, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 1, 9, 7, 23, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (1, 0, 1, 17, 24, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (2, 1, 20, 7, 25, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 0, 8, 9, 26, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 0, 21, 1, 27, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 22, 17, 28, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 12, 18, 29, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 23, 19, 30, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (1, 0, 10, 16, 31, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (2, 1, 24, 3, 32, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Russia');
INSERT INTO public.teams VALUES (6, 'Sweden');
INSERT INTO public.teams VALUES (7, 'Brazil');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Colombia');
INSERT INTO public.teams VALUES (10, 'Switzerland');
INSERT INTO public.teams VALUES (11, 'Japan');
INSERT INTO public.teams VALUES (12, 'Mexico');
INSERT INTO public.teams VALUES (13, 'Denmark');
INSERT INTO public.teams VALUES (14, 'Spain');
INSERT INTO public.teams VALUES (15, 'Portugal');
INSERT INTO public.teams VALUES (16, 'Argentina');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Costa Rica');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

