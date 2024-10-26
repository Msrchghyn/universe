--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age integer NOT NULL,
    distance numeric(5,2),
    description text,
    still_exist boolean,
    order_number integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    description text,
    still_exist boolean,
    order_number integer,
    planet_id integer
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
    age integer NOT NULL,
    distance numeric(5,2),
    description text,
    still_exist boolean,
    order_number integer,
    star_id integer
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
-- Name: rock; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rock (
    rock_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    description text,
    still_exist boolean,
    order_number integer
);


ALTER TABLE public.rock OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rock_rock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rock_rock_id_seq OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rock_rock_id_seq OWNED BY public.rock.rock_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    description text,
    still_exist boolean,
    order_number integer,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rock rock_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock ALTER COLUMN rock_id SET DEFAULT nextval('public.rock_rock_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Black Eye', 12238, 88.00, 'Black Galaxy', false, 1);
INSERT INTO public.galaxy VALUES (3, 'Corena', 7286, 74.00, 'sapien cum sociis natoque penatibus et magnis dis parturi', false, 2);
INSERT INTO public.galaxy VALUES (4, 'Tibold', 1546, 78.00, 'enim lorem ipsum sit amet', false, 3);
INSERT INTO public.galaxy VALUES (5, 'Elia', 8004, 68.00, 'rhoncus dui vel', true, 4);
INSERT INTO public.galaxy VALUES (6, 'Clemmy', 6402, 67.00, 'id sapien in sapien', true, 5);
INSERT INTO public.galaxy VALUES (7, 'Portie', 43, 21.00, 'interdum in ante vestibulum', false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Tilda Aikett', 66, 'Maroon', true, 1, 1);
INSERT INTO public.moon VALUES (2, 'Emanuel Lowres', 30, 'Indigo', false, 2, 2);
INSERT INTO public.moon VALUES (3, 'Octavius Januszewicz', 4, 'Indigo', true, 3, 3);
INSERT INTO public.moon VALUES (4, 'Heywood Knight', 69, 'Puce', true, 4, 4);
INSERT INTO public.moon VALUES (5, 'Edgar Wickersham', 54, 'Red', true, 5, 5);
INSERT INTO public.moon VALUES (6, 'Noby Clean', 4, 'Puce', false, 6, 6);
INSERT INTO public.moon VALUES (7, 'Martha Bartrap', 68, 'Mauv', false, 7, 7);
INSERT INTO public.moon VALUES (8, 'Cissiee Charley', 62, 'Green', false, 8, 8);
INSERT INTO public.moon VALUES (9, 'Tarrance Kliche', 98, 'Pink', true, 9, 9);
INSERT INTO public.moon VALUES (10, 'Adamo Hankinson', 46, 'Goldenrod', true, 10, 10);
INSERT INTO public.moon VALUES (11, 'Golda Posselwhite', 99, 'Indigo', false, 11, 11);
INSERT INTO public.moon VALUES (12, 'Sacha Russo', 12, 'Purple', false, 12, 12);
INSERT INTO public.moon VALUES (13, 'Erinna Tevelov', 44, 'Green', true, 13, 1);
INSERT INTO public.moon VALUES (14, 'Ula McHale', 93, 'Crimson', true, 14, 2);
INSERT INTO public.moon VALUES (15, 'Warde Barta', 91, 'Indigo', false, 15, 3);
INSERT INTO public.moon VALUES (16, 'Felipa Daal', 75, 'Mauv', true, 16, 4);
INSERT INTO public.moon VALUES (17, 'Drud Toman', 62, 'Puce', true, 17, 5);
INSERT INTO public.moon VALUES (18, 'Rosenna Ludman', 41, 'Green', false, 18, 6);
INSERT INTO public.moon VALUES (19, 'Elise Danes', 7, 'Red', true, 19, 7);
INSERT INTO public.moon VALUES (20, 'Valenka Sheldrake', 81, 'Puce', true, 20, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Delphinia', 4160, 88.00, 'Delphinia Husher', false, 1, 1);
INSERT INTO public.planet VALUES (2, 'Lainey', 1366, 81.00, 'Lainey Wynch', false, 2, 2);
INSERT INTO public.planet VALUES (3, 'Chiquita', 2126, 79.00, 'Chiquita Thomton', false, 3, 3);
INSERT INTO public.planet VALUES (4, 'Lindsay', 3745, 74.00, 'Lindsay Yorkston', false, 4, 4);
INSERT INTO public.planet VALUES (5, 'Ranice', 8455, 67.00, 'Ranice Mapother', false, 5, 5);
INSERT INTO public.planet VALUES (6, 'Dorie', 5715, 955.00, 'Dorie OFarris', true, 6, 6);
INSERT INTO public.planet VALUES (7, 'Netti', 9726, 19.00, 'Netti Trigwell', false, 7, 1);
INSERT INTO public.planet VALUES (8, 'Edouard', 7662, 101.00, 'Edouard Loynton', false, 8, 2);
INSERT INTO public.planet VALUES (9, 'Adelheid', 4997, 315.00, 'Adelheid Dikle', false, 9, 3);
INSERT INTO public.planet VALUES (10, 'Marice', 4793, 796.00, 'Marice Peschke', false, 10, 4);
INSERT INTO public.planet VALUES (11, 'Woody', 8059, 796.00, 'Woody Camacke', false, 11, 5);
INSERT INTO public.planet VALUES (12, 'Jodie', 692, 748.00, 'Jodie Mardoll', false, 12, 6);


--
-- Data for Name: rock; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rock VALUES (1, 'slate', 4135, 'Teal', true, 1);
INSERT INTO public.rock VALUES (2, 'Pegmatite', 4950, 'Goldenrod', false, 2);
INSERT INTO public.rock VALUES (3, 'Agate', 4075, 'Khaki', true, 3);
INSERT INTO public.rock VALUES (4, 'Limestone', 4161, 'Pink', true, 4);
INSERT INTO public.rock VALUES (5, 'Moonstone', 516, 'Yellow', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Emmit Shavel', 579, 'pallensque at ulla', false, 1, 1);
INSERT INTO public.star VALUES (2, 'Ariana MacFaul', 203, 'in quam fringilla', false, 2, 3);
INSERT INTO public.star VALUES (3, 'Aggie', 328, 'Eriogonum jamesii Benth. var. simplex Gandog.', false, 3, 4);
INSERT INTO public.star VALUES (4, 'Llewellyn', 973, 'Omphalodes linifolia', true, 4, 5);
INSERT INTO public.star VALUES (5, 'Demeter', 399, 'Splachnum pennsylvanicum', false, 5, 6);
INSERT INTO public.star VALUES (6, 'Clarabelle', 254, 'Turbina Raf', false, 6, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rock_rock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rock_rock_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_order_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_order_number_key UNIQUE (order_number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_order_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_order_number_key UNIQUE (order_number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_order_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_order_number_key UNIQUE (order_number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rock rock_order_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_order_number_key UNIQUE (order_number);


--
-- Name: rock rock_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_pkey PRIMARY KEY (rock_id);


--
-- Name: star star_order_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_order_number_key UNIQUE (order_number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

