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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    type text NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: imoon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.imoon (
    imoon_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    is_tidal_locked boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.imoon OWNER TO freecodecamp;

--
-- Name: imoon_imoon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.imoon_imoon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imoon_imoon_id_seq OWNER TO freecodecamp;

--
-- Name: imoon_imoon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.imoon_imoon_id_seq OWNED BY public.imoon.imoon_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    is_tidal_locked boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    type text NOT NULL,
    is_habitable boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_planets boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: imoon imoon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imoon ALTER COLUMN imoon_id SET DEFAULT nextval('public.imoon_imoon_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromema', 15000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 12000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 42000, 'Irregular', false);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 12000, 'Irregular', false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 12000, 'Irregular', false);


--
-- Data for Name: imoon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.imoon VALUES (1, '11Triton', 55000, true, false, 8);
INSERT INTO public.imoon VALUES (2, '11Nered', 55000, true, false, 8);
INSERT INTO public.imoon VALUES (3, '1Moon', 55000, true, false, 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 50000, true, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 5000, true, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 15000, true, false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 25000, true, false, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 45000, true, false, 5);
INSERT INTO public.moon VALUES (6, 'Io', 47000, true, false, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 48000, true, false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 49000, true, false, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 65000, true, false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 85000, true, false, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 56000, true, false, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 87000, true, false, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 97000, true, false, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 27000, true, false, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 56000, true, false, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 76000, true, false, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 85000, true, false, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 55000, true, false, 8);
INSERT INTO public.moon VALUES (19, 'Triton', 55000, true, false, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 15000, true, false, 8);
INSERT INTO public.moon VALUES (21, 'Nered', 15000, true, false, 8);
INSERT INTO public.moon VALUES (22, '1Triton', 55000, true, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 40000, 'Planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 50000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 50000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 50000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 50000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 40000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 580000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 80000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler', 80000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 80000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (11, 'Eris', 50000, 'Planet', false, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 50000, 'Planet', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 12000, true, 50000, 1);
INSERT INTO public.star VALUES (2, 'Lacerta', 14000, true, 40000, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 17000, true, 80000, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 27000, true, 50000, 5);
INSERT INTO public.star VALUES (5, 'Acturus', 67000, true, 60000, 3);
INSERT INTO public.star VALUES (6, 'Procyon', 65000, true, 450000, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: imoon_imoon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.imoon_imoon_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: imoon imoon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imoon
    ADD CONSTRAINT imoon_name_key UNIQUE (name);


--
-- Name: imoon imoon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imoon
    ADD CONSTRAINT imoon_pkey PRIMARY KEY (imoon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet fk_imoon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_imoon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: imoon imoon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.imoon
    ADD CONSTRAINT imoon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

