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
    type character varying(30),
    distance_light_years double precision,
    number_of_stars bigint
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    is_jovian boolean,
    star_id integer,
    gravity numeric(5,2),
    has_moon boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    diameter bigint,
    type character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: table_five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_five (
    table_five_id integer NOT NULL,
    name character varying(30),
    last_column integer NOT NULL
);


ALTER TABLE public.table_five OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 0, 100000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 1000000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Spiral', 2730000, 40000000000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Unbarred Spiral', 29350000, 800000000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Spiral', 23160000, 100000000000);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Lenticular/Elliptical', 10700000, 200000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Alpheratz b I', 15000, 'Large icy moon with a thin atmosphere, features frozen lakes.', 2);
INSERT INTO public.moon VALUES (2, 'Alpheratz b II', 12000, 'Rocky moon with volcanic activity, has a thin, volcanic atmosphere.', 2);
INSERT INTO public.moon VALUES (3, 'Alpheratz b III', 18000, 'Gaseous moon with dense clouds, high gravity effects.', 2);
INSERT INTO public.moon VALUES (4, 'Alpheratz b IV', 20000, 'Large rocky moon, notable for its rugged terrain and extensive craters.', 2);
INSERT INTO public.moon VALUES (5, 'Triangulum I I', 8000, 'Small, icy moon with a highly reflective surface.', 3);
INSERT INTO public.moon VALUES (6, 'Triangulum I II', 7000, 'Rocky moon with moderate surface erosion, thin atmosphere.', 3);
INSERT INTO public.moon VALUES (7, 'Triangulum I III', 9000, 'Gaseous moon with stormy weather patterns and extensive cloud cover.', 3);
INSERT INTO public.moon VALUES (8, 'M104-34a I', 22000, 'Massive moon with complex surface features, including mountains and valleys.', 4);
INSERT INTO public.moon VALUES (9, 'M104-34a II', 20000, 'Icy moon with reflective surface and thin atmosphere.', 4);
INSERT INTO public.moon VALUES (10, 'M104-34a III', 25000, 'Rocky moon with significant geological activity and large impact craters.', 4);
INSERT INTO public.moon VALUES (11, 'M104-34a IV', 18000, 'Large, cratered moon with volcanic activity and thin atmosphere.', 4);
INSERT INTO public.moon VALUES (12, 'M51-12 II I', 13000, 'Rocky moon with craters and a thin, dusty atmosphere.', 5);
INSERT INTO public.moon VALUES (13, 'M51-12 II II', 11000, 'Icy moon with a surface covered in frozen gases and a thin atmosphere.', 5);
INSERT INTO public.moon VALUES (14, 'M51-12 II III', 14000, 'Large moon with a rugged surface and a strong magnetic field.', 5);
INSERT INTO public.moon VALUES (15, 'Alpha Centauri Bb I', 16000, 'Gaseous moon with dense atmosphere and extensive cloud cover.', 6);
INSERT INTO public.moon VALUES (16, 'Alpha Centauri Bb II', 14000, 'Rocky moon with a highly cratered surface and thin atmosphere.', 6);
INSERT INTO public.moon VALUES (17, 'Alpha Centauri Bb III', 15000, 'Icy moon with large ice formations and a thin atmosphere.', 6);
INSERT INTO public.moon VALUES (18, 'Alpha Centauri Bb IV', 13000, 'Volcanic moon with significant surface activity and dense atmosphere.', 6);
INSERT INTO public.moon VALUES (19, 'Alpheratz c I', 14000, 'Large icy moon with a reflective surface and extensive ice formations.', 8);
INSERT INTO public.moon VALUES (20, 'Alpheratz c II', 13000, 'Rocky moon with volcanic surface features and thin atmosphere.', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, false, 1, 3.70, false);
INSERT INTO public.planet VALUES (2, 'Alpheratz b', 60000, true, 2, 22.10, true);
INSERT INTO public.planet VALUES (3, 'Triangulum I', 13000, false, 3, 9.80, true);
INSERT INTO public.planet VALUES (4, 'M104-34a', 50000, true, 4, 20.50, true);
INSERT INTO public.planet VALUES (5, 'M51-12 I', 45000, true, 5, 15.00, false);
INSERT INTO public.planet VALUES (6, 'Proxima Centauri b', 11400, false, 6, 10.93, false);
INSERT INTO public.planet VALUES (7, 'Venus', 12104, false, 1, 8.87, false);
INSERT INTO public.planet VALUES (8, 'Alpheratz c', 75000, true, 2, 23.50, true);
INSERT INTO public.planet VALUES (9, 'Triangulum II', 14200, false, 3, 11.20, true);
INSERT INTO public.planet VALUES (10, 'M104-34b', 60000, true, 4, 25.00, true);
INSERT INTO public.planet VALUES (11, 'M51-12 II', 52000, true, 5, 18.30, true);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri Bb', 13800, false, 6, 11.18, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1392700, 'G-Type Main-Sequence');
INSERT INTO public.star VALUES (2, 'Alpheratz', 2, 3300000, 'B-Type Subgiant');
INSERT INTO public.star VALUES (3, 'Triangulum Star', 3, 1000000, 'F-Type Main-Sequence Star');
INSERT INTO public.star VALUES (4, 'M104-34', 4, 4500000, 'K-Type Giant');
INSERT INTO public.star VALUES (5, 'NGC 5195-12', 5, 2800000, 'A-Type Main-Sequence Star');
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 6, 1227000, 'G-Type Main-Sequence');


--
-- Data for Name: table_five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_five VALUES (1, 'NAME1', 1);
INSERT INTO public.table_five VALUES (2, 'NAME2', 2);
INSERT INTO public.table_five VALUES (3, 'NAME3', 3);


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
-- Name: table_five table_five_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_name_key UNIQUE (name);


--
-- Name: table_five table_five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_five
    ADD CONSTRAINT table_five_pkey PRIMARY KEY (table_five_id);


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

