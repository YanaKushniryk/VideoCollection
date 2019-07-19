--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-07-18 16:53:55

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

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16543)
-- Name: city; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.city OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16583)
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16578)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16570)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    person_id integer NOT NULL,
    hire_date date NOT NULL,
    director_id integer,
    notes text
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16564)
-- Name: kind; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kind (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.kind OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16591)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    orders_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity double precision NOT NULL,
    price money NOT NULL
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16551)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    ship_date date NOT NULL,
    receive_date date NOT NULL,
    customer_id integer NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16535)
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    date_birth date NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16556)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying NOT NULL,
    price money NOT NULL,
    kind_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 2869 (class 0 OID 16543)
-- Dependencies: 197
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.city (id, name, country_id) VALUES (1, 'Madrid', 1);
INSERT INTO public.city (id, name, country_id) VALUES (2, 'Paris', 2);
INSERT INTO public.city (id, name, country_id) VALUES (3, 'London', 3);
INSERT INTO public.city (id, name, country_id) VALUES (4, 'Kyiv', 4);
INSERT INTO public.city (id, name, country_id) VALUES (5, 'Berlin', 5);
INSERT INTO public.city (id, name, country_id) VALUES (6, 'Moscow', 6);
INSERT INTO public.city (id, name, country_id) VALUES (7, 'Rome', 7);
INSERT INTO public.city (id, name, country_id) VALUES (8, 'Tokio', 8);
INSERT INTO public.city (id, name, country_id) VALUES (9, 'Beijing ', 9);
INSERT INTO public.city (id, name, country_id) VALUES (10, 'New Delhi ', 10);
INSERT INTO public.city (id, name, country_id) VALUES (11, 'Brazil
', 11);
INSERT INTO public.city (id, name, country_id) VALUES (12, 'Buenos Aires ', 12);
INSERT INTO public.city (id, name, country_id) VALUES (13, 'Washington', 13);
INSERT INTO public.city (id, name, country_id) VALUES (14, 'Oslo ', 14);
INSERT INTO public.city (id, name, country_id) VALUES (15, 'Stockholm ', 15);
INSERT INTO public.city (id, name, country_id) VALUES (16, 'Mexico ', 16);
INSERT INTO public.city (id, name, country_id) VALUES (17, 'Ottawa ', 17);
INSERT INTO public.city (id, name, country_id) VALUES (18, 'Kampala ', 18);
INSERT INTO public.city (id, name, country_id) VALUES (19, 'Australia', 19);
INSERT INTO public.city (id, name, country_id) VALUES (20, 'Wellington ', 20);
INSERT INTO public.city (id, name, country_id) VALUES (21, 'Koror', 21);
INSERT INTO public.city (id, name, country_id) VALUES (22, 'Copenhagen ', 22);
INSERT INTO public.city (id, name, country_id) VALUES (23, 'Ankara ', 23);
INSERT INTO public.city (id, name, country_id) VALUES (24, 'Cairo ', 24);
INSERT INTO public.city (id, name, country_id) VALUES (25, 'Belgrade ', 25);
INSERT INTO public.city (id, name, country_id) VALUES (26, 'Tehran ', 26);
INSERT INTO public.city (id, name, country_id) VALUES (27, 'Baghdad ', 27);
INSERT INTO public.city (id, name, country_id) VALUES (28, 'Jerusalem', 28);
INSERT INTO public.city (id, name, country_id) VALUES (29, 'Lima ', 29);
INSERT INTO public.city (id, name, country_id) VALUES (30, 'Chili', 30);
INSERT INTO public.city (id, name, country_id) VALUES (31, 'Amsterdam', 31);
INSERT INTO public.city (id, name, country_id) VALUES (32, 'Andorra la Vella ', 32);
INSERT INTO public.city (id, name, country_id) VALUES (33, 'T''bilisi ', 33);
INSERT INTO public.city (id, name, country_id) VALUES (34, 'Warsaw ', 34);
INSERT INTO public.city (id, name, country_id) VALUES (35, 'Bangkok ', 35);
INSERT INTO public.city (id, name, country_id) VALUES (36, 'Brussels ', 36);
INSERT INTO public.city (id, name, country_id) VALUES (37, 'Helsinki ', 37);
INSERT INTO public.city (id, name, country_id) VALUES (38, 'Budapest ', 38);
INSERT INTO public.city (id, name, country_id) VALUES (39, 'Vienna ', 39);
INSERT INTO public.city (id, name, country_id) VALUES (40, 'Dublin ', 40);
INSERT INTO public.city (id, name, country_id) VALUES (41, 'Kabul ', 41);
INSERT INTO public.city (id, name, country_id) VALUES (42, 'Tirana ', 42);
INSERT INTO public.city (id, name, country_id) VALUES (43, 'Algiers ', 43);
INSERT INTO public.city (id, name, country_id) VALUES (44, 'Pago Pago ', 44);
INSERT INTO public.city (id, name, country_id) VALUES (45, 'Andorra la Vella ', 45);
INSERT INTO public.city (id, name, country_id) VALUES (46, 'Luanda ', 46);
INSERT INTO public.city (id, name, country_id) VALUES (47, 'The Valley ', 47);
INSERT INTO public.city (id, name, country_id) VALUES (48, 'Saint John''s ', 48);
INSERT INTO public.city (id, name, country_id) VALUES (49, 'Yerevan ', 49);
INSERT INTO public.city (id, name, country_id) VALUES (50, 'Oranjestad ', 50);
INSERT INTO public.city (id, name, country_id) VALUES (51, 'Manama ', 51);
INSERT INTO public.city (id, name, country_id) VALUES (52, 'Dhaka ', 52);
INSERT INTO public.city (id, name, country_id) VALUES (53, 'Bridgetown ', 53);
INSERT INTO public.city (id, name, country_id) VALUES (54, 'Minsk ', 54);
INSERT INTO public.city (id, name, country_id) VALUES (55, 'Brussels ', 55);
INSERT INTO public.city (id, name, country_id) VALUES (56, 'Belmopan ', 56);
INSERT INTO public.city (id, name, country_id) VALUES (57, 'Porto-Novo', 57);
INSERT INTO public.city (id, name, country_id) VALUES (58, 'Hamilton ', 58);
INSERT INTO public.city (id, name, country_id) VALUES (59, 'Thimphu ', 59);
INSERT INTO public.city (id, name, country_id) VALUES (60, 'La Paz', 60);
INSERT INTO public.city (id, name, country_id) VALUES (61, 'Sarajevo ', 61);
INSERT INTO public.city (id, name, country_id) VALUES (62, 'Gaborone ', 62);
INSERT INTO public.city (id, name, country_id) VALUES (63, 'Road Town ', 63);
INSERT INTO public.city (id, name, country_id) VALUES (64, 'Bandar Seri Begawan ', 64);
INSERT INTO public.city (id, name, country_id) VALUES (65, 'Sofia ', 65);
INSERT INTO public.city (id, name, country_id) VALUES (66, 'Ouagadougou ', 66);
INSERT INTO public.city (id, name, country_id) VALUES (67, 'Rangoon', 67);
INSERT INTO public.city (id, name, country_id) VALUES (68, 'Bujumbura ', 68);
INSERT INTO public.city (id, name, country_id) VALUES (69, 'Phnom Penh ', 69);
INSERT INTO public.city (id, name, country_id) VALUES (70, 'Yaounde ', 70);
INSERT INTO public.city (id, name, country_id) VALUES (71, 'Bangui ', 71);
INSERT INTO public.city (id, name, country_id) VALUES (72, 'N''Djamena ', 72);
INSERT INTO public.city (id, name, country_id) VALUES (73, 'Santiago ', 73);
INSERT INTO public.city (id, name, country_id) VALUES (74, 'The Settlement ', 74);
INSERT INTO public.city (id, name, country_id) VALUES (75, 'West Island ', 75);
INSERT INTO public.city (id, name, country_id) VALUES (76, 'Bogota ', 76);
INSERT INTO public.city (id, name, country_id) VALUES (77, 'Moroni ', 77);
INSERT INTO public.city (id, name, country_id) VALUES (78, 'San Jose ', 78);
INSERT INTO public.city (id, name, country_id) VALUES (79, 'Havana ', 79);
INSERT INTO public.city (id, name, country_id) VALUES (80, 'Nicosia ', 80);


--
-- TOC entry 2875 (class 0 OID 16583)
-- Dependencies: 203
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country (id, name) VALUES (1, 'Spain');
INSERT INTO public.country (id, name) VALUES (2, 'France');
INSERT INTO public.country (id, name) VALUES (3, 'England');
INSERT INTO public.country (id, name) VALUES (4, 'Ukraine');
INSERT INTO public.country (id, name) VALUES (5, 'Germany');
INSERT INTO public.country (id, name) VALUES (6, 'Russia');
INSERT INTO public.country (id, name) VALUES (7, 'Italy');
INSERT INTO public.country (id, name) VALUES (8, 'Japan');
INSERT INTO public.country (id, name) VALUES (9, 'China');
INSERT INTO public.country (id, name) VALUES (10, 'India');
INSERT INTO public.country (id, name) VALUES (11, 'Brazil');
INSERT INTO public.country (id, name) VALUES (12, 'Argentina');
INSERT INTO public.country (id, name) VALUES (13, 'USA');
INSERT INTO public.country (id, name) VALUES (14, 'Norway');
INSERT INTO public.country (id, name) VALUES (15, 'Sweden');
INSERT INTO public.country (id, name) VALUES (16, 'Mexico');
INSERT INTO public.country (id, name) VALUES (17, 'Canada');
INSERT INTO public.country (id, name) VALUES (18, 'Uganda');
INSERT INTO public.country (id, name) VALUES (19, 'Australia');
INSERT INTO public.country (id, name) VALUES (20, 'New Zealand');
INSERT INTO public.country (id, name) VALUES (22, 'Denmark ');
INSERT INTO public.country (id, name) VALUES (23, 'Turkey');
INSERT INTO public.country (id, name) VALUES (24, 'Egypt');
INSERT INTO public.country (id, name) VALUES (25, 'Montenegro');
INSERT INTO public.country (id, name) VALUES (26, 'Iran');
INSERT INTO public.country (id, name) VALUES (27, 'Iraq');
INSERT INTO public.country (id, name) VALUES (28, 'Israel');
INSERT INTO public.country (id, name) VALUES (29, 'Peru');
INSERT INTO public.country (id, name) VALUES (30, 'Chili');
INSERT INTO public.country (id, name) VALUES (31, 'Netherlands');
INSERT INTO public.country (id, name) VALUES (37, 'Finland');
INSERT INTO public.country (id, name) VALUES (38, 'Hungary');
INSERT INTO public.country (id, name) VALUES (39, 'Austria');
INSERT INTO public.country (id, name) VALUES (40, 'Ireland');
INSERT INTO public.country (id, name) VALUES (41, 'Afghanistan ');
INSERT INTO public.country (id, name) VALUES (42, 'Albania ');
INSERT INTO public.country (id, name) VALUES (43, 'Algeria ');
INSERT INTO public.country (id, name) VALUES (44, 'American Samoa ');
INSERT INTO public.country (id, name) VALUES (45, 'Andorra ');
INSERT INTO public.country (id, name) VALUES (46, 'Angola ');
INSERT INTO public.country (id, name) VALUES (47, 'Anguilla ');
INSERT INTO public.country (id, name) VALUES (48, 'Antigua and Barbuda ');
INSERT INTO public.country (id, name) VALUES (49, 'Armenia ');
INSERT INTO public.country (id, name) VALUES (50, 'Aruba ');
INSERT INTO public.country (id, name) VALUES (51, 'Bahrain ');
INSERT INTO public.country (id, name) VALUES (52, 'Bangladesh ');
INSERT INTO public.country (id, name) VALUES (53, 'Barbados');
INSERT INTO public.country (id, name) VALUES (54, 'Belarus');
INSERT INTO public.country (id, name) VALUES (55, 'Belgium ');
INSERT INTO public.country (id, name) VALUES (56, 'Belize');
INSERT INTO public.country (id, name) VALUES (57, 'Benin ');
INSERT INTO public.country (id, name) VALUES (58, 'Bermuda ');
INSERT INTO public.country (id, name) VALUES (59, 'Bhutan ');
INSERT INTO public.country (id, name) VALUES (60, 'Bolivia ');
INSERT INTO public.country (id, name) VALUES (61, 'Bosnia and Herzegovina ');
INSERT INTO public.country (id, name) VALUES (62, 'Botswana ');
INSERT INTO public.country (id, name) VALUES (63, 'Brunei ');
INSERT INTO public.country (id, name) VALUES (64, 'Burkina Faso ');
INSERT INTO public.country (id, name) VALUES (65, 'Burma ');
INSERT INTO public.country (id, name) VALUES (66, 'Burundi ');
INSERT INTO public.country (id, name) VALUES (67, 'Cambodia ');
INSERT INTO public.country (id, name) VALUES (68, 'Cameroon ');
INSERT INTO public.country (id, name) VALUES (69, 'Cape Verde ');
INSERT INTO public.country (id, name) VALUES (70, 'Cayman Islands ');
INSERT INTO public.country (id, name) VALUES (71, 'Central African Republic ');
INSERT INTO public.country (id, name) VALUES (72, 'Chad ');
INSERT INTO public.country (id, name) VALUES (73, 'Chile');
INSERT INTO public.country (id, name) VALUES (74, 'Christmas Island ');
INSERT INTO public.country (id, name) VALUES (75, 'Colombia ');
INSERT INTO public.country (id, name) VALUES (76, 'Comoros ');
INSERT INTO public.country (id, name) VALUES (77, 'Congo');
INSERT INTO public.country (id, name) VALUES (78, 'Costa Rica ');
INSERT INTO public.country (id, name) VALUES (79, 'Cuba ');
INSERT INTO public.country (id, name) VALUES (80, 'Cyprus ');
INSERT INTO public.country (id, name) VALUES (21, 'Palau');
INSERT INTO public.country (id, name) VALUES (32, 'Andorra ');
INSERT INTO public.country (id, name) VALUES (33, 'Georgia ');
INSERT INTO public.country (id, name) VALUES (34, 'Poland ');
INSERT INTO public.country (id, name) VALUES (35, 'Thailand ');
INSERT INTO public.country (id, name) VALUES (36, 'Belgium ');


--
-- TOC entry 2874 (class 0 OID 16578)
-- Dependencies: 202
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customer (id, person_id) VALUES (1, 1);
INSERT INTO public.customer (id, person_id) VALUES (2, 1);
INSERT INTO public.customer (id, person_id) VALUES (3, 3);
INSERT INTO public.customer (id, person_id) VALUES (4, 3);
INSERT INTO public.customer (id, person_id) VALUES (5, 3);
INSERT INTO public.customer (id, person_id) VALUES (6, 3);
INSERT INTO public.customer (id, person_id) VALUES (7, 3);
INSERT INTO public.customer (id, person_id) VALUES (8, 2);
INSERT INTO public.customer (id, person_id) VALUES (9, 2);
INSERT INTO public.customer (id, person_id) VALUES (10, 2);
INSERT INTO public.customer (id, person_id) VALUES (11, 2);
INSERT INTO public.customer (id, person_id) VALUES (12, 5);
INSERT INTO public.customer (id, person_id) VALUES (13, 4);
INSERT INTO public.customer (id, person_id) VALUES (14, 4);
INSERT INTO public.customer (id, person_id) VALUES (15, 5);
INSERT INTO public.customer (id, person_id) VALUES (16, 4);
INSERT INTO public.customer (id, person_id) VALUES (17, 6);
INSERT INTO public.customer (id, person_id) VALUES (18, 6);
INSERT INTO public.customer (id, person_id) VALUES (19, 6);
INSERT INTO public.customer (id, person_id) VALUES (20, 8);
INSERT INTO public.customer (id, person_id) VALUES (21, 7);
INSERT INTO public.customer (id, person_id) VALUES (22, 6);
INSERT INTO public.customer (id, person_id) VALUES (23, 5);
INSERT INTO public.customer (id, person_id) VALUES (24, 76);
INSERT INTO public.customer (id, person_id) VALUES (25, 23);
INSERT INTO public.customer (id, person_id) VALUES (26, 34);
INSERT INTO public.customer (id, person_id) VALUES (27, 45);
INSERT INTO public.customer (id, person_id) VALUES (28, 56);
INSERT INTO public.customer (id, person_id) VALUES (29, 63);
INSERT INTO public.customer (id, person_id) VALUES (30, 52);
INSERT INTO public.customer (id, person_id) VALUES (31, 14);
INSERT INTO public.customer (id, person_id) VALUES (32, 76);
INSERT INTO public.customer (id, person_id) VALUES (33, 15);
INSERT INTO public.customer (id, person_id) VALUES (34, 25);
INSERT INTO public.customer (id, person_id) VALUES (35, 75);
INSERT INTO public.customer (id, person_id) VALUES (36, 23);
INSERT INTO public.customer (id, person_id) VALUES (37, 14);
INSERT INTO public.customer (id, person_id) VALUES (38, 51);
INSERT INTO public.customer (id, person_id) VALUES (39, 12);
INSERT INTO public.customer (id, person_id) VALUES (40, 45);
INSERT INTO public.customer (id, person_id) VALUES (41, 48);
INSERT INTO public.customer (id, person_id) VALUES (42, 10);
INSERT INTO public.customer (id, person_id) VALUES (43, 12);
INSERT INTO public.customer (id, person_id) VALUES (44, 1);
INSERT INTO public.customer (id, person_id) VALUES (45, 1);
INSERT INTO public.customer (id, person_id) VALUES (46, 65);
INSERT INTO public.customer (id, person_id) VALUES (47, 43);
INSERT INTO public.customer (id, person_id) VALUES (48, 43);
INSERT INTO public.customer (id, person_id) VALUES (49, 23);
INSERT INTO public.customer (id, person_id) VALUES (50, 1);
INSERT INTO public.customer (id, person_id) VALUES (51, 32);
INSERT INTO public.customer (id, person_id) VALUES (52, 25);
INSERT INTO public.customer (id, person_id) VALUES (53, 52);
INSERT INTO public.customer (id, person_id) VALUES (54, 53);
INSERT INTO public.customer (id, person_id) VALUES (55, 54);
INSERT INTO public.customer (id, person_id) VALUES (56, 73);
INSERT INTO public.customer (id, person_id) VALUES (57, 77);
INSERT INTO public.customer (id, person_id) VALUES (58, 61);
INSERT INTO public.customer (id, person_id) VALUES (59, 66);
INSERT INTO public.customer (id, person_id) VALUES (60, 43);
INSERT INTO public.customer (id, person_id) VALUES (61, 64);
INSERT INTO public.customer (id, person_id) VALUES (62, 23);
INSERT INTO public.customer (id, person_id) VALUES (63, 34);
INSERT INTO public.customer (id, person_id) VALUES (64, 52);
INSERT INTO public.customer (id, person_id) VALUES (65, 36);
INSERT INTO public.customer (id, person_id) VALUES (66, 14);
INSERT INTO public.customer (id, person_id) VALUES (67, 9);
INSERT INTO public.customer (id, person_id) VALUES (68, 6);
INSERT INTO public.customer (id, person_id) VALUES (69, 10);
INSERT INTO public.customer (id, person_id) VALUES (70, 7);
INSERT INTO public.customer (id, person_id) VALUES (71, 5);
INSERT INTO public.customer (id, person_id) VALUES (72, 1);
INSERT INTO public.customer (id, person_id) VALUES (73, 8);
INSERT INTO public.customer (id, person_id) VALUES (74, 23);
INSERT INTO public.customer (id, person_id) VALUES (75, 52);
INSERT INTO public.customer (id, person_id) VALUES (76, 3);
INSERT INTO public.customer (id, person_id) VALUES (77, 11);
INSERT INTO public.customer (id, person_id) VALUES (78, 4);
INSERT INTO public.customer (id, person_id) VALUES (79, 80);
INSERT INTO public.customer (id, person_id) VALUES (80, 73);


--
-- TOC entry 2873 (class 0 OID 16570)
-- Dependencies: 201
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (1, 1, '1993-07-11', NULL, 'admin');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (2, 2, '1993-07-22', 1, 'director1');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (3, 3, '1993-07-22', 1, 'director2');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (4, 4, '1993-07-22', 2, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (5, 5, '1993-07-22', 2, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (6, 6, '1993-07-22', 2, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (7, 7, '1993-07-22', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (8, 8, '1993-07-22', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (9, 9, '1993-07-22', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (10, 10, '1993-07-22', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (11, 11, '1993-08-15', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (12, 12, '1993-08-15', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (13, 13, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (14, 14, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (15, 15, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (16, 16, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (17, 17, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (18, 18, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (19, 19, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (20, 20, '1993-08-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (21, 21, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (22, 22, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (23, 23, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (24, 24, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (25, 25, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (26, 26, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (27, 27, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (28, 28, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (29, 29, '2001-07-15', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (30, 30, '2001-08-23', 2, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (31, 31, '2001-08-23', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (32, 32, '2001-08-23', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (33, 33, '2001-08-23', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (34, 34, '2001-08-23', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (35, 35, '2001-08-23', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (36, 36, '2001-08-23', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (37, 37, '2001-08-23', 7, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (38, 38, '2001-08-23', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (39, 39, '2001-08-23', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (40, 40, '2003-06-06', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (41, 41, '2003-06-06', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (42, 42, '2003-06-06', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (43, 43, '2003-06-06', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (44, 44, '2003-06-06', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (45, 45, '2003-06-06', 8, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (46, 46, '2003-06-06', 7, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (47, 47, '2003-06-06', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (48, 48, '2003-06-06', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (49, 49, '2003-06-06', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (50, 50, '2003-08-06', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (51, 51, '2003-08-06', 7, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (52, 52, '2003-08-06', 8, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (53, 53, '2003-08-06', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (54, 54, '2003-08-06', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (55, 55, '2003-08-06', 9, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (56, 56, '2003-08-06', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (57, 57, '2003-08-06', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (58, 58, '2003-08-06', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (59, 59, '2003-08-06', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (60, 60, '2005-06-20', 11, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (61, 61, '2005-06-20', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (62, 62, '2005-06-20', 12, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (63, 63, '2005-06-20', 14, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (64, 64, '2005-06-20', 13, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (65, 65, '2005-06-20', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (66, 66, '2005-06-20', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (67, 67, '2005-06-20', 7, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (68, 68, '2005-06-20', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (69, 69, '2005-06-20', 3, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (70, 70, '2009-05-29', 9, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (71, 71, '2009-05-29', 8, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (72, 72, '2009-05-29', 7, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (73, 73, '2009-05-29', 4, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (74, 74, '2009-05-29', 6, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (75, 75, '2009-05-29', 5, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (76, 76, '2009-05-29', 8, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (77, 77, '2009-05-29', 9, NULL);
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (78, 78, '2009-05-29', 10, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (79, 79, '2009-05-29', 13, 'recruit');
INSERT INTO public.employee (id, person_id, hire_date, director_id, notes) VALUES (80, 80, '2009-05-29', 12, 'recruit');


--
-- TOC entry 2872 (class 0 OID 16564)
-- Dependencies: 200
-- Data for Name: kind; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kind (id, name) VALUES (1, 'Domestic ');
INSERT INTO public.kind (id, name) VALUES (2, 'Non-domestic ');
INSERT INTO public.kind (id, name) VALUES (6, 'book');


--
-- TOC entry 2876 (class 0 OID 16591)
-- Dependencies: 204
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 1, 4, '10,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (2, 2, 3, '15,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (3, 3, 4, '10,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 4, 5, '9,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (5, 5, 13, '20,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 6, 11, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (7, 7, 13, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (8, 8, 11, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 9, 11, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 3, 2, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 5, 3, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (3, 2, 2, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (3, 3, 3, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (3, 5, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 5, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 10, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 12, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 15, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 30, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 42, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 45, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 47, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 80, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 75, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 32, 6, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 22, 1, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 24, 10, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 14, 21, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 63, 2, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 34, 20, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 3, 10, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 5, 10, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 6, 10, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 8, 11, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 17, 4, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 23, 1, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 5, 67, '23,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (54, 31, 5, '13,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (54, 4, 50, '14,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (54, 4, 67, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (80, 5, 23, '31,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (10, 13, 13, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (4, 11, 52, '51,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (5, 2, 4, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (15, 12, 14, '13,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (22, 22, 2, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 13, 23, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (15, 23, 5, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (15, 2, 45, '7,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (16, 2, 15, '7,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (23, 21, 5, '7,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (23, 21, 5, '17,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (14, 2, 11, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (15, 21, 4, '6,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 42, 5, '8,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (11, 2, 15, '58,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (17, 21, 2, '5,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (17, 10, 5, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (51, 2, 2, '26,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (32, 1, 6, '47,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (11, 12, 61, '47,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (31, 22, 51, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (13, 15, 6, '7,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (19, 3, 5, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (29, 30, 51, '2,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (25, 30, 53, '21,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (25, 2, 5, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (11, 4, 23, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (71, 24, 54, '1,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (42, 32, 5, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (23, 32, 4, '3,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (64, 12, 14, '23,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (42, 13, 2, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (9, 23, 24, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 2, 1, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 1, 10, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (1, 3, 10, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (5, 40, 10, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (7, 5, 23, '4,00 ?');
INSERT INTO public.order_details (orders_id, product_id, quantity, price) VALUES (6, 66, 66, '66,00 ?');


--
-- TOC entry 2870 (class 0 OID 16551)
-- Dependencies: 198
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (1, '2019-08-01', '2019-08-11', 1, 1);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (2, '2019-08-02', '2019-08-12', 2, 2);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (3, '2019-08-03', '2019-08-13', 3, 3);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (4, '2019-08-04', '2019-08-14', 4, 4);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (5, '2019-08-05', '2019-08-15', 5, 5);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (6, '2019-08-06', '2019-08-16', 6, 6);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (7, '2019-08-07', '2019-08-17', 7, 7);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (8, '2019-08-09', '2019-08-19', 8, 8);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (9, '2019-08-08', '2019-08-18', 9, 9);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (10, '2019-08-10', '2019-08-20', 10, 10);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (11, '2019-06-11', '2019-06-21', 11, 11);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (12, '2019-06-12', '2019-06-22', 12, 12);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (13, '2019-06-13', '2019-06-23', 13, 13);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (14, '2019-06-14', '2019-06-24', 14, 14);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (15, '2019-06-15', '2019-06-25', 15, 15);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (16, '2019-06-16', '2019-06-26', 16, 16);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (17, '2019-06-17', '2019-06-27', 17, 17);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (18, '2019-06-18', '2019-06-28', 18, 18);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (19, '2019-06-19', '2019-06-29', 19, 19);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (20, '2019-06-20', '2019-06-30', 20, 20);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (21, '2019-01-01', '2019-02-01', 21, 21);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (22, '2019-02-01', '2019-03-01', 22, 22);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (23, '2019-03-01', '2019-04-01', 23, 23);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (24, '2019-04-01', '2019-05-01', 24, 24);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (25, '2019-05-01', '2019-06-01', 25, 25);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (26, '2019-06-01', '2019-07-01', 26, 26);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (27, '2019-07-01', '2019-07-01', 27, 27);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (28, '2019-08-01', '2019-08-01', 28, 28);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (29, '2019-09-01', '2019-10-01', 29, 29);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (30, '2019-10-01', '2019-11-01', 30, 30);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (31, '2011-11-11', '2011-11-21', 31, 31);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (32, '2012-12-22', '2013-01-02', 32, 32);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (33, '2013-03-13', '2013-04-23', 33, 33);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (34, '2014-04-14', '2014-04-24', 34, 34);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (35, '2015-05-25', '2015-06-04', 35, 35);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (36, '2016-06-06', '2016-06-16', 36, 36);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (37, '2007-06-06', '2016-07-06', 37, 37);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (38, '2009-01-21', '2009-02-23', 38, 38);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (39, '2000-04-21', '2001-01-01', 39, 39);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (40, '2014-05-24', '2014-05-30', 40, 40);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (41, '2011-05-14', '2011-05-24', 41, 41);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (42, '2011-05-14', '2011-05-24', 42, 42);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (43, '2011-05-14', '2011-05-24', 43, 43);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (44, '2011-03-10', '2011-03-20', 44, 44);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (45, '2011-03-10', '2011-03-20', 45, 45);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (46, '2011-03-10', '2011-03-20', 46, 46);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (47, '2011-10-03', '2011-10-13', 47, 47);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (48, '2011-10-03', '2011-10-13', 48, 48);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (49, '2011-10-03', '2011-10-13', 49, 49);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (50, '2011-10-03', '2011-10-13', 50, 50);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (51, '2001-01-01', '2001-02-01', 51, 51);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (52, '2002-01-01', '2002-02-01', 52, 52);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (53, '2003-01-01', '2003-03-01', 53, 53);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (54, '2004-01-01', '2004-04-01', 54, 54);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (55, '2005-01-01', '2005-05-01', 55, 55);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (56, '2006-01-01', '2007-02-01', 56, 56);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (57, '2007-01-01', '2007-02-02', 57, 57);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (58, '2008-01-01', '2008-03-01', 58, 58);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (59, '2009-01-01', '2009-01-20', 59, 59);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (60, '2010-01-01', '2009-01-25', 60, 60);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (61, '2014-03-04', '2014-04-04', 61, 61);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (62, '2014-03-05', '2014-04-04', 62, 62);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (63, '2014-03-07', '2014-04-07', 63, 63);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (64, '2014-03-08', '2014-04-08', 64, 64);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (65, '2014-03-14', '2014-03-24', 65, 65);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (66, '2014-03-24', '2014-03-30', 66, 66);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (67, '2014-03-13', '2014-05-13', 67, 67);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (68, '2014-03-01', '2014-03-21', 68, 68);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (69, '2014-07-17', '2014-08-13', 69, 69);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (70, '2017-06-26', '2017-07-26', 70, 70);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (71, '2017-06-16', '2017-06-26', 71, 71);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (72, '2017-03-01', '2017-03-30', 72, 72);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (73, '2018-05-13', '2018-05-27', 73, 73);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (74, '2018-05-17', '2018-06-17', 74, 74);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (75, '2018-05-19', '2018-06-19', 75, 75);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (76, '2018-05-21', '2018-07-02', 76, 76);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (77, '2018-05-04', '2018-05-31', 77, 77);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (78, '2018-05-01', '2018-06-04', 78, 78);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (79, '2018-05-19', '2018-07-10', 79, 79);
INSERT INTO public.orders (id, ship_date, receive_date, customer_id, employee_id) VALUES (80, '2018-08-13', '2018-08-30', 80, 80);


--
-- TOC entry 2868 (class 0 OID 16535)
-- Dependencies: 196
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (1, 'Iryna
', 'Lutska', '1999-06-30', 1);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (2, 'Vlad', 'Skakun', '2001-05-29', 2);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (3, 'Dima', 'Stefurak', '1999-03-11', 3);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (4, 'Yana', 'Kushniryk', '1999-04-23', 4);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (5, 'Yulia', 'Apetroy', '2000-11-10', 5);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (12, 'Pavlo', 'Rachukov', '1998-07-07', 12);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (41, 'Sasha', 'Lysko', '1998-06-20', 41);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (42, 'Oksana', 'Hrytsyak', '1969-02-10', 42);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (43, 'Ariana', 'Grande', '1990-12-14', 43);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (44, 'Mykhailo', 'Kruchkov', '1997-06-22', 44);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (45, 'Olena', 'Kuz', '1996-11-29', 45);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (46, 'Sandra', 'Barabanova', '2000-12-13', 46);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (47, 'Jessy', 'Pinkman', '1989-03-03', 47);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (48, 'Elina', 'Lisko', '1960-09-16', 48);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (49, 'Maryna', 'Lisova', '1950-04-01', 49);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (50, 'Dmytro', 'Scherbakov', '1999-05-12', 50);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (51, 'Alisa', 'Abdurohmanovma', '1970-01-01', 51);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (52, 'Vitalii', 'Hrublyak', '1997-01-01', 52);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (53, 'Anton', 'Harasymchuk', '1995-05-09', 53);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (54, 'Oleksandra', 'Horetska', '1997-11-02', 54);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (55, 'Nikol', 'Rozumna', '2001-01-09', 55);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (56, 'Ivan', 'Ivanov', '1975-12-31', 56);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (57, 'Petro', 'Petrovchuk', '1960-07-01', 57);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (58, 'Vasyl', 'Vasylenko', '1979-09-12', 58);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (59, 'Pavlo', 'Pavlenko', '1986-09-14', 59);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (60, 'Taras', 'Tarasenko', '1990-08-19', 60);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (61, 'Anastasiia', 'Homeniuk', '1999-07-01', 61);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (62, 'Yana', 'Spynul', '1998-10-10', 62);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (63, 'Valeriia', 'Straton', '1999-03-04', 63);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (64, 'Yulia', 'Havryliuk', '1999-04-12', 64);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (65, 'Ksenia', 'Branashko', '1999-09-12', 65);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (66, 'Yulia', 'Kosovan', '1999-03-09', 66);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (67, 'Pavlo', 'Dranchuk', '1998-09-07', 67);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (68, 'Artur', 'Tomniuk', '1999-04-10', 68);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (69, 'Petro', 'Koleschuk', '1999-12-20', 69);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (70, 'Denys', 'Pidlubnii', '1999-08-12', 70);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (71, 'Denys', 'Petrov', '1980-12-02', 71);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (72, 'Lena', 'Holovach', '1981-09-13', 72);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (73, 'Valerii', 'Zhmyshenko', '1965-02-14', 73);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (74, 'Gabe', 'Newell', '1960-02-14', 74);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (75, 'Hideo', 'Kojima', '1963-08-24', 75);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (76, 'Sun', 'Chan', '1983-06-12', 76);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (77, 'Jessica', 'Barter', '1987-07-07', 77);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (78, 'Jung', 'Lee', '1993-11-11', 78);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (79, 'Pellek', 'Leen', '1990-12-16', 79);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (80, 'Mariia', 'Way', '1992-08-25', 80);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (6, 'Vasyl', 'Hulei', '1998-07-09', 6);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (7, 'Andrii', 'Kyrstuk', '1998-01-07', 7);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (8, 'Anna', 'Melnuchyk', '1988-07-07', 8);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (9, 'Vita', 'Stelmax', '19988-07-15', 9);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (10, 'Nadia', 'Annych', '1998-07-31', 10);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (11, 'Yana', 'Kosol', '1995-02-11', 11);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (13, 'Vlad', 'Mahalevych', '1978-03-01', 13);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (14, 'Natalia', 'Romanenko', '1979-12-10', 14);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (15, 'Yura', 'Lucuk', '1989-04-23', 15);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (16, 'Vasil', 'Zaporonyk', '1994-05-13', 16);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (17, 'Nelia', 'Sakalosh', '1990-02-09', 17);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (18, 'Alina', 'Hurak', '1998-07-09', 18);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (19, 'Anna', 'Rotary', '1998-07-10', 19);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (20, 'Natalia', 'Doblryanska
', '1998-07-11', 20);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (21, 'Nastya', 'Har', '1998-07-12', 21);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (22, 'Tania', 'Diachuk', '1998-07-13', 22);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (23, 'Vadim', 'Striha', '1998-07-14', 23);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (24, 'Rostik', 'Boiko', '1998-07-15', 24);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (25, 'Iryna', 'Lialchuk', '1998-07-16', 25);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (26, 'Sashka', 'Hrublak', '1998-07-17', 26);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (27, 'Christyna', 'Tsyganovich', '1998-07-18', 27);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (28, 'Daryna', 'Rai', '1998-07-19', 28);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (29, 'Andrii', 'Ryabui', '1998-07-20', 29);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (30, 'Julia', 'Danilova', '1998-07-21', 30);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (31, 'Olia', 'Havrulyk', '1998-07-22', 31);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (32, 'Marta', 'Husa', '1998-07-23', 32);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (33, 'Max', 'Voronin', '1998-07-24', 33);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (34, 'Stas', 'Yazlovetskii', '1998-07-25', 34);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (35, 'Toni', 'Stark', '1998-07-26', 35);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (36, 'Tanya', 'Boiko', '1998-07-27', 36);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (37, 'Dima', 'Stratiichuk', '1998-08-07', 37);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (38, 'Oleg', 'Danulenko', '1998-08-01', 38);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (39, 'Halyna', 'Hus', '1998-08-03', 39);
INSERT INTO public.person (id, first_name, last_name, date_birth, city_id) VALUES (40, 'Ira', 'Dokal', '1998-08-02', 40);


--
-- TOC entry 2871 (class 0 OID 16556)
-- Dependencies: 199
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (2, 'Apricot ', '10,00 ?', 1, 2);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (3, 'Pineapple ', '15,00 ?', 1, 4);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (4, 'Orange ', '22,00 ?', 1, 3);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (5, 'Watermelon ', '35,00 ?', 1, 5);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (6, 'Banana ', '32,00 ?', 2, 6);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (7, 'Mutton ', '56,00 ?', 2, 7);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (8, 'Pancake ', '23,00 ?', 2, 8);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (9, 'Wafer ', '52,00 ?', 2, 3);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (10, 'Vermicelli ', '11,00 ?', 2, 9);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (11, 'Ham ', '8,00 ?', 1, 10);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (12, 'Grape ', '6,00 ?', 1, 23);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (13, 'Cherry ', '4,00 ?', 1, 21);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (14, 'Water ', '3,00 ?', 1, 25);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (15, 'Beef ', '2,00 ?', 1, 75);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (16, 'Pea ', '32,00 ?', 2, 11);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (17, 'Pomegranate ', '60,00 ?', 2, 23);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (18, 'Grapefruit ', '32,00 ?', 2, 43);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (19, 'Mushroom ', '123,00 ?', 2, 76);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (20, 'Pear ', '55,00 ?', 2, 76);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (21, 'Yeast ', '32,00 ?', 1, 23);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (22, 'Melon ', '5,00 ?', 1, 10);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (23, 'Gelatin', '2,00 ?', 1, 65);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (24, 'Grease ', '12,00 ?', 1, 5);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (25, 'Yoghurt ', '50,00 ?', 1, 6);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (26, 'Cocoa ', '4,00 ?', 2, 7);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (27, 'Squid ', '21,00 ?', 2, 8);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (28, 'Cabbage ', '41,00 ?', 2, 9);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (29, 'Potato ', '45,00 ?', 2, 11);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (30, 'Porridge ', '23,00 ?', 1, 15);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (31, 'Kvass ', '26,00 ?', 1, 73);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (32, 'Kefir ', '234,00 ?', 1, 17);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (33, 'Strawberry ', '43,00 ?', 1, 27);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (34, 'Cranberry ', '21,00 ?', 1, 67);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (35, 'Sausage ', '47,00 ?', 2, 47);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (36, 'Sweet ', '25,00 ?', 2, 57);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (37, 'Coffee ', '27,00 ?', 2, 54);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (38, 'Crab ', '12,00 ?', 2, 69);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (39, 'Starch ', '1,00 ?', 2, 52);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (40, 'Shrimp ', '14,00 ?', 1, 63);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (41, 'Cereals ', '11,00 ?', 1, 42);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (42, 'Yoghurt ', '25,00 ?', 1, 42);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (43, 'Cocoa ', '86,00 ?', 1, 13);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (44, 'Grape ', '32,00 ?', 1, 41);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (45, 'Orange ', '13,00 ?', 1, 31);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (46, 'Vermicelli ', '26,00 ?', 1, 63);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (47, 'Grape ', '73,00 ?', 1, 23);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (48, 'Orange ', '15,00 ?', 1, 52);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (49, 'Vermicelli ', '65,00 ?', 1, 22);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (50, 'Pancake ', '58,00 ?', 2, 23);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (51, 'Grape ', '24,00 ?', 2, 78);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (52, 'Orange ', '42,00 ?', 2, 74);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (53, 'Pancake ', '42,00 ?', 2, 54);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (54, 'Pancake ', '26,00 ?', 2, 55);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (55, 'Orange ', '32,00 ?', 2, 55);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (56, 'Tofu', '15,00 ?', 2, 33);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (57, 'Cocoa ', '25,00 ?', 2, 22);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (58, 'Macaroni ', '14,00 ?', 2, 11);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (59, 'Tofu', '14,00 ?', 2, 63);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (60, 'Soda ', '43,00 ?', 1, 2);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (61, 'Mayonnaise ', '33,00 ?', 2, 4);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (62, 'Tofu', '32,00 ?', 1, 3);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (63, 'Coffee ', '32,00 ?', 2, 76);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (64, 'Tofu', '16,00 ?', 1, 6);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (65, 'Watermelon ', '18,00 ?', 2, 4);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (66, 'Coffee ', '23,00 ?', 1, 7);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (67, 'Tofu', '16,00 ?', 2, 8);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (68, 'Watermelon ', '18,00 ?', 1, 9);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (69, 'Pea ', '50,00 ?', 2, 10);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (70, 'Watermelon ', '12,00 ?', 1, 53);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (71, 'Tofu', '235,00 ?', 2, 11);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (72, 'Pomegranate ', '23,00 ?', 2, 20);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (73, 'Tofu', '24,00 ?', 2, 31);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (74, 'Pomegranate ', '12,00 ?', 1, 30);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (75, 'Tofu', '10,00 ?', 1, 40);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (76, 'Pea ', '32,00 ?', 1, 50);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (77, 'Grapefruit', '13,00 ?', 1, 60);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (78, 'Tofu', '25,00 ?', 2, 68);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (79, 'Grapefruit', '74,00 ?', 2, 25);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (80, 'Pea ', '23,00 ?', 1, 66);
INSERT INTO public.product (id, name, price, kind_id, country_id) VALUES (1, 'Tofu', '20,00 ?', 1, 1);
INSERT INTO public.product(	id, name, price, kind_id, country_id) VALUES (81, 'milk', 23, 1, 20);


--
-- TOC entry 2724 (class 2606 OID 16550)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 2736 (class 2606 OID 16590)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 2734 (class 2606 OID 16582)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- TOC entry 2732 (class 2606 OID 16577)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 16595)
-- Name: kind kind_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kind
    ADD CONSTRAINT kind_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 16555)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 16542)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 16563)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2738 (class 2606 OID 16603)
-- Name: city city_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- TOC entry 2744 (class 2606 OID 16643)
-- Name: customer customer_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- TOC entry 2743 (class 2606 OID 16648)
-- Name: employee employee_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id);


--
-- TOC entry 2745 (class 2606 OID 16623)
-- Name: order_details order_details_orders_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_orders_id_fkey FOREIGN KEY (orders_id) REFERENCES public.orders(id);


--
-- TOC entry 2746 (class 2606 OID 16628)
-- Name: order_details order_details_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 2739 (class 2606 OID 16633)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- TOC entry 2740 (class 2606 OID 16638)
-- Name: orders orders_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(id);


--
-- TOC entry 2737 (class 2606 OID 16608)
-- Name: person person_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(id);


--
-- TOC entry 2741 (class 2606 OID 16613)
-- Name: product product_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- TOC entry 2742 (class 2606 OID 16618)
-- Name: product product_kind_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_kind_id_fkey FOREIGN KEY (kind_id) REFERENCES public.kind(id);


-- Completed on 2019-07-18 16:53:55

--
-- PostgreSQL database dump complete
--

