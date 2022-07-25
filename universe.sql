--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
    name character varying(30) NOT NULL,
    type character varying(15)
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
-- Name: house; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.house (
    house_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_dharma boolean
);


ALTER TABLE public.house OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.house_house_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.house_house_id_seq OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.house_house_id_seq OWNED BY public.house.house_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL,
    number_of_moons integer NOT NULL,
    order_from_sun integer NOT NULL,
    diameter_mi numeric NOT NULL,
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    is_dwarf boolean
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
-- Name: house house_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house ALTER COLUMN house_id SET DEFAULT nextval('public.house_house_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'irregular');
INSERT INTO public.galaxy VALUES (3, 'Virgo Stellar Stream', 'spherical');
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Spheroidal', 'spherical');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'spiral');


--
-- Data for Name: house; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.house VALUES (1, 'Tanu Bhava', 'factors like looks, attractive features, physical features, and strengths are determined by this house', true);
INSERT INTO public.house VALUES (2, 'Dhana Bhava', 'predicts wealth along with family, education, and speech', false);
INSERT INTO public.house VALUES (3, 'Buddhi Bhava', 'governs the mental attitude of a person and their ability to memorize', false);
INSERT INTO public.house VALUES (4, 'Bandhu Bhava', 'related to the domestic happiness of a person', false);
INSERT INTO public.house VALUES (5, 'Putra Bhava', 'this house represents pleasure and romance', true);
INSERT INTO public.house VALUES (6, 'Ari Bhava', 'relates to enemies and difficulties that one might have in their lives', false);
INSERT INTO public.house VALUES (7, 'Yuvati Bhava', 'the house of your spouse/partner', false);
INSERT INTO public.house VALUES (8, 'Ayu Bhava', 'deals with death, longevity, and sudden events like the Lottery', false);
INSERT INTO public.house VALUES (9, 'Dharma Bhava', 'determines one’s religious aptitude, ethics, higher learning & values, and spiritual tendency', true);
INSERT INTO public.house VALUES (10, 'Karma Bhava', 'the house of career and deals with the kind of work or action we perform', false);
INSERT INTO public.house VALUES (11, 'Labha Bhava', 'helps to predict if our aspirations and desires will get fulfilled or not', false);
INSERT INTO public.house VALUES (12, 'Vairagya Bhava', 'stands for the completion of the lifecycle', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2);
INSERT INTO public.moon VALUES (2, 'Adrastea', 5);
INSERT INTO public.moon VALUES (3, 'Aitne', 5);
INSERT INTO public.moon VALUES (4, 'Amalthea', 5);
INSERT INTO public.moon VALUES (5, 'Ananke', 5);
INSERT INTO public.moon VALUES (6, 'Aoede', 5);
INSERT INTO public.moon VALUES (7, 'Arche', 5);
INSERT INTO public.moon VALUES (8, 'Autonoe', 5);
INSERT INTO public.moon VALUES (9, 'Callirrhoe', 5);
INSERT INTO public.moon VALUES (10, 'Callisto', 5);
INSERT INTO public.moon VALUES (11, 'Carme', 5);
INSERT INTO public.moon VALUES (12, 'Carpo', 5);
INSERT INTO public.moon VALUES (13, 'Chaldene', 5);
INSERT INTO public.moon VALUES (14, 'Cyllene', 5);
INSERT INTO public.moon VALUES (15, 'Dia', 5);
INSERT INTO public.moon VALUES (16, 'Eirene', 5);
INSERT INTO public.moon VALUES (17, 'Elara', 5);
INSERT INTO public.moon VALUES (18, 'Erinome', 5);
INSERT INTO public.moon VALUES (19, 'Ersa', 5);
INSERT INTO public.moon VALUES (20, 'Euanthe', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 1, 3033, 1);
INSERT INTO public.planet VALUES (2, 'Earth', 1, 3, 7917.5, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 2, 4, 4212.3, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 0, 2, 7520.8, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 5, 86881, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 53, 6, 72367, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 7, 31518, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 8, 30599, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 9, 1476.7, 1);
INSERT INTO public.planet VALUES (11, 'Eris', 1, 10, 10.464, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 1, 11, 888.56, 1);
INSERT INTO public.planet VALUES (13, 'Haumea', 2, 12, 1014.1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, false);
INSERT INTO public.star VALUES (2, 'Sirius', 1, false);
INSERT INTO public.star VALUES (3, 'Canopus', 1, false);
INSERT INTO public.star VALUES (4, 'Arcturus', 1, false);
INSERT INTO public.star VALUES (5, 'Vega', 1, false);
INSERT INTO public.star VALUES (6, 'Capella', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: house_house_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.house_house_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: house house_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_name_key UNIQUE (name);


--
-- Name: house house_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_pkey PRIMARY KEY (house_id);


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
-- Name: house unique_house_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT unique_house_name UNIQUE (name);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

