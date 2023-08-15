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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: deathstars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.deathstars (
    blown_up boolean NOT NULL,
    dumb_numb integer,
    galaxy_id integer,
    name character varying,
    deathstars_id integer NOT NULL
);


ALTER TABLE public.deathstars OWNER TO freecodecamp;

--
-- Name: deathstars_deathstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.deathstars_deathstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deathstars_deathstar_id_seq OWNER TO freecodecamp;

--
-- Name: deathstars_deathstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.deathstars_deathstar_id_seq OWNED BY public.deathstars.deathstars_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer NOT NULL,
    radius integer,
    lightyears_from_earth numeric,
    sustain_life boolean,
    has_aliens boolean,
    description text,
    dumb_numb integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer NOT NULL,
    radius integer,
    lightyears_from_earth numeric,
    sustain_life boolean,
    has_aliens boolean,
    description text,
    planet_id integer,
    dumb_numb integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer NOT NULL,
    radius integer,
    lightyears_from_earth numeric,
    sustain_life boolean,
    has_aliens boolean,
    description text,
    star_id integer,
    dumb_numb integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    mass integer NOT NULL,
    radius integer,
    lightyears_from_earth numeric,
    sustain_life boolean,
    has_aliens boolean,
    description text,
    galaxy_id integer,
    dumb_numb integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: deathstars deathstars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstars ALTER COLUMN deathstars_id SET DEFAULT nextval('public.deathstars_deathstar_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: deathstars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.deathstars VALUES (true, 69, 3, NULL, 3);
INSERT INTO public.deathstars VALUES (true, 60000, 3, NULL, 4);
INSERT INTO public.deathstars VALUES (true, 45, 3, 'Starkiller Base', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 10000, 1000, 2.537, false, false, 'barred spiral galaxy and the closest to the milky way', NULL);
INSERT INTO public.galaxy VALUES (2, 'milky way', 10000, 1000, 0, true, true, 'all my least favorite people live here', NULL);
INSERT INTO public.galaxy VALUES (3, 'a galaxy far far away', 10000, 1000, 10000000, true, true, 'May the Force be with us all', NULL);
INSERT INTO public.galaxy VALUES (4, 'RandLand', 10000, 1000, 1, true, true, 'the wheel weaves', NULL);
INSERT INTO public.galaxy VALUES (5, 'Final Empire', 10000, 1000, 10, true, true, 'Vin be doin her shiii here', NULL);
INSERT INTO public.galaxy VALUES (6, 'Animal Kingdom', 10000, 1000, 100, true, true, 'RAWRRRRRR', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 1);
INSERT INTO public.moon VALUES (2, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 2);
INSERT INTO public.moon VALUES (3, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 3);
INSERT INTO public.moon VALUES (4, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 4);
INSERT INTO public.moon VALUES (5, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 5);
INSERT INTO public.moon VALUES (6, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 6);
INSERT INTO public.moon VALUES (7, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 7);
INSERT INTO public.moon VALUES (8, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 8);
INSERT INTO public.moon VALUES (9, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 9);
INSERT INTO public.moon VALUES (10, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 10);
INSERT INTO public.moon VALUES (11, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 11);
INSERT INTO public.moon VALUES (12, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 12);
INSERT INTO public.moon VALUES (13, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 13);
INSERT INTO public.moon VALUES (14, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 14);
INSERT INTO public.moon VALUES (15, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 15);
INSERT INTO public.moon VALUES (16, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 16);
INSERT INTO public.moon VALUES (17, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 17);
INSERT INTO public.moon VALUES (18, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 18);
INSERT INTO public.moon VALUES (19, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 19);
INSERT INTO public.moon VALUES (20, '101', 50, 52, 53, false, false, 'insert_description_here', 6, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, '501', 2, 1, 2.537, false, false, 'A planet', 2, NULL);
INSERT INTO public.planet VALUES (3, '502', 2, 1, 2.537, false, false, 'A planet', 2, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', 2, 1, 0, false, false, 'A planet', 3, NULL);
INSERT INTO public.planet VALUES (5, 'Uranus', 2, 1, 1, false, false, 'A planet', 3, NULL);
INSERT INTO public.planet VALUES (6, 'Naboo', 2, 1, 50, false, false, 'A planet', 4, NULL);
INSERT INTO public.planet VALUES (7, 'Coruscant', 2, 1, 50, false, false, 'A planet', 4, NULL);
INSERT INTO public.planet VALUES (8, 'Middle Earth', 2, 1, 50, false, false, 'A planet', 5, NULL);
INSERT INTO public.planet VALUES (9, 'Rand Earth', 2, 1, 50, false, false, 'A planet', 5, NULL);
INSERT INTO public.planet VALUES (10, 'Ruin', 2, 1, 50, false, false, 'A planet', 6, NULL);
INSERT INTO public.planet VALUES (11, 'Preservation', 2, 1, 50, false, false, 'A planet', 6, NULL);
INSERT INTO public.planet VALUES (12, 'Simba', 2, 1, 50, false, false, 'A planet', 7, NULL);
INSERT INTO public.planet VALUES (13, 'Nala', 2, 1, 50, false, false, 'A planet', 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'andromeda', 10000, 1000, 2.537, false, false, 'barred spiral galaxy and the closest to the milky way', 1, NULL);
INSERT INTO public.star VALUES (3, 'The Sun', 5, 1, 2.537, false, false, 'bright orange ball', 2, NULL);
INSERT INTO public.star VALUES (4, 'CoruSUN', 5, 1, 2.537, false, false, 'big ole star', 3, NULL);
INSERT INTO public.star VALUES (5, 'Sun the II', 5, 1, 2.537, false, false, 'also big orange ball', 4, NULL);
INSERT INTO public.star VALUES (6, 'Red Sun', 5, 1, 2.537, false, false, 'also big orange', 5, NULL);
INSERT INTO public.star VALUES (7, 'Savannah Sun', 5, 1, 2.537, false, false, 'African Sun', 6, NULL);


--
-- Name: deathstars_deathstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.deathstars_deathstar_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: deathstars deathstars_dumb_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstars
    ADD CONSTRAINT deathstars_dumb_numb_key UNIQUE (dumb_numb);


--
-- Name: galaxy galaxy_dumb_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_dumb_numb_key UNIQUE (dumb_numb);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_dumb_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dumb_numb_key UNIQUE (dumb_numb);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: deathstars pk_deathstar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstars
    ADD CONSTRAINT pk_deathstar PRIMARY KEY (deathstars_id);


--
-- Name: planet planet_dumb_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dumb_numb_key UNIQUE (dumb_numb);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_dumb_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dumb_numb_key UNIQUE (dumb_numb);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: deathstars deathstars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deathstars
    ADD CONSTRAINT deathstars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

