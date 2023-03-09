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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    type_number integer,
    weight_kg integer,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: lasttable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lasttable (
    name character varying(30),
    lasttable_id integer NOT NULL,
    colour character varying(30) NOT NULL
);


ALTER TABLE public.lasttable OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    type_number integer,
    weight_kg integer,
    seniority numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    type_number integer,
    weight_kg integer,
    colour text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    type_number integer,
    weight_kg integer,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Galaxy 1', 1, 10, 100, true);
INSERT INTO public.galaxy VALUES ('Galaxy 2', 2, 10, 103, false);
INSERT INTO public.galaxy VALUES ('Galaxy 3', 3, 10, 209, true);
INSERT INTO public.galaxy VALUES ('Galaxy 4', 4, 20, 591, true);
INSERT INTO public.galaxy VALUES ('Galaxy 5', 5, 20, 336, false);
INSERT INTO public.galaxy VALUES ('Galaxy 6', 6, 20, 108, true);


--
-- Data for Name: lasttable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lasttable VALUES ('Last 1', 1, 'red');
INSERT INTO public.lasttable VALUES ('Last 2', 2, 'yellow');
INSERT INTO public.lasttable VALUES ('Last 3', 3, 'green');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon 1', 1, 30, 12, 24, NULL);
INSERT INTO public.moon VALUES ('Moon 2', 2, 20, 28, 36, NULL);
INSERT INTO public.moon VALUES ('Moon 3', 3, 10, 27, 13, NULL);
INSERT INTO public.moon VALUES ('Moon 4', 4, 20, 29, 16, NULL);
INSERT INTO public.moon VALUES ('Moon 5', 5, 10, 39, 15, NULL);
INSERT INTO public.moon VALUES ('Moon 6', 6, 10, 35, 27, NULL);
INSERT INTO public.moon VALUES ('Moon 7', 7, 10, 38, 49, NULL);
INSERT INTO public.moon VALUES ('Moon 8', 8, 20, 43, 48, NULL);
INSERT INTO public.moon VALUES ('Moon 9', 9, 30, 19, 37, NULL);
INSERT INTO public.moon VALUES ('Moon 10', 10, 20, 45, 41, NULL);
INSERT INTO public.moon VALUES ('Moon 11', 11, 30, 19, 33, NULL);
INSERT INTO public.moon VALUES ('Moon 12', 12, 30, 28, 56, NULL);
INSERT INTO public.moon VALUES ('Moon 13', 13, 10, 31, 32, NULL);
INSERT INTO public.moon VALUES ('Moon 14', 14, 10, 35, 32, NULL);
INSERT INTO public.moon VALUES ('Moon 15', 15, 10, 76, 72, NULL);
INSERT INTO public.moon VALUES ('Moon 16', 16, 10, 43, 47, NULL);
INSERT INTO public.moon VALUES ('Moon 17', 17, 20, 34, 37, NULL);
INSERT INTO public.moon VALUES ('Moon 18', 18, 10, 33, 39, NULL);
INSERT INTO public.moon VALUES ('Moon 19', 19, 20, 13, 16, NULL);
INSERT INTO public.moon VALUES ('Moon 20', 20, 30, 45, 41, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet 1', 1, 30, 49, 'red', NULL);
INSERT INTO public.planet VALUES ('Planet 2', 2, 20, 83, 'yellow', NULL);
INSERT INTO public.planet VALUES ('Planet 3', 3, 20, 93, 'green', NULL);
INSERT INTO public.planet VALUES ('Planet 4', 4, 10, 35, 'blue', NULL);
INSERT INTO public.planet VALUES ('Planet 5', 5, 20, 95, 'orange', NULL);
INSERT INTO public.planet VALUES ('Planet 6', 6, 10, 104, 'purple', NULL);
INSERT INTO public.planet VALUES ('Planet 7', 7, 10, 86, 'gray', NULL);
INSERT INTO public.planet VALUES ('Planet 8', 8, 10, 91, 'teal', NULL);
INSERT INTO public.planet VALUES ('Planet 9', 9, 30, 48, 'pink', NULL);
INSERT INTO public.planet VALUES ('Planet 10', 10, 30, 87, 'magenta', NULL);
INSERT INTO public.planet VALUES ('Planet 11', 11, 20, 90, 'indigo', NULL);
INSERT INTO public.planet VALUES ('Planet 12', 12, 10, 72, 'brown', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star 1', 1, 20, 512, false, NULL);
INSERT INTO public.star VALUES ('Star 2', 2, 20, 347, false, NULL);
INSERT INTO public.star VALUES ('Star 3', 3, 10, 294, false, NULL);
INSERT INTO public.star VALUES ('Star 4', 4, 10, 200, false, NULL);
INSERT INTO public.star VALUES ('Star 5', 5, 20, 103, true, NULL);
INSERT INTO public.star VALUES ('Star 6', 6, 10, 205, true, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lasttable lasttable_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lasttable
    ADD CONSTRAINT lasttable_id_key UNIQUE (lasttable_id);


--
-- Name: lasttable lasttable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lasttable
    ADD CONSTRAINT lasttable_pkey PRIMARY KEY (lasttable_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

