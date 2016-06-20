--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dri_table; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE dri_table (
    index bigint,
    life_group bigint,
    group_desc text,
    energy bigint,
    carbs bigint,
    protein bigint,
    iron bigint,
    vit_a bigint,
    vit_c bigint
);


ALTER TABLE dri_table OWNER TO username;

--
-- Name: nutrients_table; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE nutrients_table (
    pos text,
    country text,
    location text,
    date text,
    description text,
    weight double precision,
    energy bigint,
    carbs double precision,
    protein double precision,
    iron double precision,
    vit_a bigint,
    vit_c double precision,
    serv_value double precision,
    serv_unit text,
    price_serv double precision
);


ALTER TABLE nutrients_table OWNER TO username;

--
-- Name: nutrients_table2; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE nutrients_table2 (
    index bigint,
    description text,
    weight double precision,
    energy bigint,
    carbs double precision,
    protein double precision,
    iron double precision,
    vit_a bigint,
    vit_c double precision,
    serv_value double precision,
    serv_unit text,
    price_serv double precision,
    seq bigint,
    pos text
);


ALTER TABLE nutrients_table2 OWNER TO username;

--
-- Name: prices_table; Type: TABLE; Schema: public; Owner: username
--

CREATE TABLE prices_table (
    index bigint,
    country text,
    location text,
    indicator text,
    measure text,
    unit text,
    date text,
    value double precision
);


ALTER TABLE prices_table OWNER TO username;

--
-- Data for Name: dri_table; Type: TABLE DATA; Schema: public; Owner: username
--

COPY dri_table (index, life_group, group_desc, energy, carbs, protein, iron, vit_a, vit_c) FROM stdin;
0	1	adult	200000	10000	3000	600	166667	7500
1	2	young	100000	5000	3000	600	166667	10000
\.


--
-- Data for Name: nutrients_table; Type: TABLE DATA; Schema: public; Owner: username
--

COPY nutrients_table (pos, country, location, date, description, weight, energy, carbs, protein, iron, vit_a, vit_c, serv_value, serv_unit, price_serv) FROM stdin;
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean and fat, raw	114	172	0.0100000000000000002	23.3999999999999986	2.52000000000000002	5	0	4	ounce	0.501600000000000046
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, Australian, imported, grass-fed, seam fat, raw	28.3500000000000014	159	0.299999999999999989	2.7200000000000002	0.25	34	0	1	ounce	0.124740000000000018
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, brisket, flat half, boneless, separable lean and fat, trimmed to 0" fat, choice, raw	85	144	0	17.129999999999999	1.67999999999999994	10	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, brisket, flat half, separable lean and fat, trimmed to 0" fat, select, cooked, braised	85	174	0	28.5500000000000007	2.35999999999999988	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, chuck eye roast, boneless, America's Beef Roast, separable lean and fat, trimmed to 0" fat, all grades, raw	85	153	0	16.3000000000000007	1.77000000000000002	11	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, chuck, short ribs, boneless, separable lean only, trimmed to 0" fat, choice, cooked, braised	85	212	0	24.5100000000000016	2.70999999999999996	4	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, chuck, top blade, separable lean only, trimmed to 0" fat, select, cooked, broiled	85	156	0	22.2399999999999984	2.37999999999999989	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, flank, steak, separable lean and fat, trimmed to 0" fat, all grades, raw	85	132	0	18.0399999999999991	1.32000000000000006	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, ground, 90% lean meat / 10% fat, patty, cooked, broiled	85	184	0	22.1900000000000013	2.29999999999999982	8	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, loin, bottom sirloin butt, tri-tip roast, separable lean only, trimmed to 0" fat, all grades, cooked, roasted	85	155	0	22.7399999999999984	1.43999999999999995	0	0	1	dimensionless	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, loin, top loin, separable lean and fat, trimmed to 1/8" fat, select, raw	85	190	0	17.5	1.25	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, loin, top sirloin petite roast, boneless, separable lean only, trimmed to 0" fat, select, cooked, roasted	85	140	0	24.9499999999999993	2.33999999999999986	6	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, rib, small end (ribs 10-12), separable lean and fat, trimmed to 1/8" fat, choice, cooked, roasted	85	305	0	18.9400000000000013	2.0299999999999998	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, ribeye  petite roast/filet, boneless, separable lean only, trimmed to 0" fat, select, raw	85	106	0	19.4600000000000009	1.84000000000000008	6	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, ribeye cap steak, boneless, separable lean only, trimmed to 0" fat, choice, raw	85	159	1.48999999999999999	16.5399999999999991	2.24000000000000021	6	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, round, top round steak, boneless, separable lean and fat, trimmed to 0" fat, all grades, cooked, grilled	85	142	0	25.4699999999999989	2.75	13	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, round, top round steak, boneless, separable lean and fat, trimmed to 0" fat, choice, cooked, grilled	85	144	0	25.6000000000000014	2.77000000000000002	13	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, round, top round, separable lean and fat, trimmed to 1/8" fat, select, cooked, braised	85	191	0	29.4100000000000001	2.70000000000000018	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, round, top round, steak, separable lean and fat, trimmed to 1/8" fat, choice, cooked, broiled	85	190	0	26.1000000000000014	2.16000000000000014	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, round, top round, steak, separable lean and fat, trimmed to 1/8" fat, prime, cooked, broiled	85	191	0	26.5799999999999983	2.41000000000000014	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, shank crosscuts, separable lean only, trimmed to 1/4" fat, choice, cooked, simmered	85	171	0	28.629999999999999	3.2799999999999998	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, short loin, porterhouse steak, separable lean and fat, trimmed to 1/8" fat, choice, raw	85	185	0	17.3099999999999987	1.62000000000000011	12	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, short loin, porterhouse steak, separable lean only, trimmed to 0" fat, choice, cooked, broiled	85	190	0	21.6799999999999997	2.75	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, tenderloin, steak, separable lean and fat, trimmed to 1/8" fat, all grades, cooked, broiled	85	227	0	22.4899999999999984	1.43999999999999995	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, tenderloin, steak, separable lean and fat, trimmed to 1/8" fat, select, raw	149	371	0	28.8599999999999994	2.12000000000000011	0	0	1	dimensionless	0.655600000000000072
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, top loin petite roast/filet, boneless, separable lean and fat, trimmed to 1/8" fat, all grades, raw	85	159	0.260000000000000009	17.9400000000000013	2.25999999999999979	12	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, top sirloin, steak, separable lean and fat, trimmed to 1/8" fat, choice, cooked, broiled	85	218	0	22.7800000000000011	1.54000000000000004	0	0	3	ounce	0.374000000000000055
beef	Somalia	All Locations	12/28/2015 12:00:00 AM	Beef, top sirloin, steak, separable lean only, trimmed to 0" fat, choice, cooked, broiled	85	160	0	25.75	1.76000000000000001	0	0	3	ounce	0.374000000000000055
bread	Somalia	All Locations	12/28/2015 12:00:00 AM	Breadfruit, raw	220	227	59.6599999999999966	2.35000000000000009	1.18999999999999995	0	63.7999999999999972	1	cup	0.195555555555555566
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken breast, oven-roasted, fat-free, sliced	42	33	0.910000000000000031	7.04999999999999982	0.130000000000000004	0	0	1	dimensionless	0.231000000000000011
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broiler, rotisserie, BBQ, back meat only	85	180	0.260000000000000009	18.5700000000000003	0.699999999999999956	43	0	3	ounce	0.467500000000000027
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, back, meat and skin, raw	59	188	0	8.28999999999999915	0.550000000000000044	148	0.900000000000000022	1	dimensionless	0.324500000000000011
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, back, meat only, raw	31	42	0	6.05999999999999961	0.320000000000000007	31	0	1	dimensionless	0.170500000000000013
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, dark meat, meat and skin, cooked, stewed	110	256	0	25.8500000000000014	1.43999999999999995	205	0	1	dimensionless	0.604999999999999982
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, dark meat, meat only, cooked, fried	140	335	3.62999999999999989	40.5900000000000034	2.08999999999999986	111	0	1	cup	0.770000000000000018
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, drumstick, meat and skin, cooked, stewed	140	286	0	35.4500000000000028	1.8600000000000001	127	0	1	cup	0.770000000000000018
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, drumstick, meat only, cooked, fried	25	49	0	7.16000000000000014	0.330000000000000016	15	0	1	dimensionless	0.137500000000000011
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, giblets, raw	23	29	0.409999999999999976	4.11000000000000032	1.35000000000000009	2035	3.70000000000000018	1	dimensionless	0.126500000000000001
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, leg, meat and skin, cooked, roasted	85	156	0	20.4299999999999997	0.930000000000000049	58	0	3	ounce	0.467500000000000027
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, leg, meat only, cooked, fried	56	116	0.359999999999999987	15.8900000000000006	0.780000000000000027	37	0	1	dimensionless	0.307999999999999996
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, light meat, meat only, raw	88	100	0	20.4200000000000017	0.640000000000000013	24	0	1	dimensionless	0.483999999999999986
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, meat and skin and giblets and neck, cooked, fried, batter	85	247	7.67999999999999972	19.4100000000000001	1.52000000000000002	513	0.299999999999999989	3	ounce	0.467500000000000027
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, meat and skin, cooked, fried, flour	85	229	2.68000000000000016	24.2800000000000011	1.16999999999999993	76	0	3	ounce	0.467500000000000027
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, separable fat, raw	12.8000000000000007	81	0	0.479999999999999982	0.0899999999999999967	65	0	1	tablespoon	0.0704000000000000042
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, broilers or fryers, wing, meat only, raw	17	21	0	3.72999999999999998	0.149999999999999994	10	0.200000000000000011	1	dimensionless	0.0934999999999999998
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, dark meat, thigh, meat only, with added solution, raw	85	94	0	16.2399999999999984	0.510000000000000009	16	0	3	ounce	0.467500000000000027
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, gizzard, all classes, cooked, simmered	145	223	0	44.0700000000000003	4.62999999999999989	0	0	1	cup	0.797499999999999987
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, skin (drumsticks and thighs), raw	28.3500000000000014	125	0.220000000000000001	2.7200000000000002	0.100000000000000006	56	0	1	ounce	0.155925000000000008
chicken	Somalia	All Locations	12/28/2015 12:00:00 AM	Chicken, stewing, meat and skin, and giblets and neck, cooked, stewed	85	182	0	21.1499999999999986	1.3899999999999999	518	0.800000000000000044	3	ounce	0.467500000000000027
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, canned, evaporated, nonfat, with added vitamin A and vitamin D	31.8999999999999986	25	3.62000000000000011	2.41000000000000014	0.0899999999999999967	126	0.400000000000000022	1	fluid ounce	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, canned, evaporated, with added vitamin D and without added vitamin A	31.5	42	3.16000000000000014	2.14999999999999991	0.0599999999999999978	73	0.599999999999999978	1	fluid ounce	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, chocolate, fluid, commercial, reduced fat, with added vitamin A and vitamin D	250	190	30.3200000000000003	7.48000000000000043	0.599999999999999978	568	0	1	cup	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, chocolate, fluid, commercial, whole, with added vitamin A and vitamin D	250	208	25.8500000000000014	7.91999999999999993	0.599999999999999978	245	2.20000000000000018	1	cup	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, dry, nonfat, regular, without added vitamin A and vitamin D	30	109	15.5899999999999999	10.8499999999999996	0.100000000000000006	7	2	0.25	cup	0.0524958003359731265
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, lowfat, fluid, 1% milkfat, protein fortified, with added vitamin A and vitamin D	246	118	13.5800000000000001	9.66999999999999993	0.149999999999999994	499	3	1	cup	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, nonfat, fluid, protein fortified, with added vitamin A and vitamin D (fat free and skim)	246	101	13.6799999999999997	9.74000000000000021	0.149999999999999994	499	2.70000000000000018	1	cup	0.209983201343892506
diesel	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk, reduced fat, fluid, 2% milkfat, protein fortified, with added vitamin A and vitamin D	246	138	13.5099999999999998	9.72000000000000064	0.149999999999999994	12	2.70000000000000018	1	cup	0.209983201343892506
milk	Somalia	All Locations	12/28/2015 12:00:00 AM	Milk shakes, thick chocolate	28.3999999999999986	34	6.00999999999999979	0.869999999999999996	0.0899999999999999967	19	0	1	fluid ounce	0.167986561075113977
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, dehydrated flakes	5	17	4.16000000000000014	0.450000000000000011	0.0800000000000000017	1	3.79999999999999982	1	tablespoon	0.00674999999999999992
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, frozen, chopped, cooked, boiled, drained, without salt	15	4	0.989999999999999991	0.119999999999999996	0.0400000000000000008	0	0.400000000000000022	1	tablespoon	0.0202500000000000006
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, frozen, chopped, unprepared	95	28	6.48000000000000043	0.75	0.309999999999999998	33	3.10000000000000009	0.330000000000000016	dimensionless	0.128250000000000003
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, frozen, whole, cooked, boiled, drained, without salt	210	59	14.0700000000000003	1.48999999999999999	0.709999999999999964	4	10.6999999999999993	1	cup	0.283499999999999974
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, frozen, whole, unprepared	95	33	8.02999999999999936	0.849999999999999978	0.440000000000000002	2	7.59999999999999964	0.330000000000000016	dimensionless	0.128250000000000003
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, raw	160	64	14.9399999999999995	1.76000000000000001	0.340000000000000024	3	11.8000000000000007	1	cup	0.215999999999999998
onion	Somalia	All Locations	12/28/2015 12:00:00 AM	Onions, sweet, raw	148	47	11.1699999999999999	1.17999999999999994	0.380000000000000004	1	7.09999999999999964	1	dimensionless	0.199800000000000005
rice	Somalia	All Locations	12/28/2015 12:00:00 AM	Rice flour, brown	158	574	120.840000000000003	11.4199999999999999	3.12999999999999989	0	0	1	cup	0.126400000000000012
rice	Somalia	All Locations	12/28/2015 12:00:00 AM	Rice noodles, cooked	176	190	42.259999999999998	3.14999999999999991	0.25	0	0	1	cup	0.140800000000000008
rice	Somalia	All Locations	12/28/2015 12:00:00 AM	Rice, white, long-grain, regular, cooked, unenriched, with salt	158	205	44.509999999999998	4.25	0.320000000000000007	0	0	1	cup	0.126400000000000012
rice	Somalia	All Locations	12/28/2015 12:00:00 AM	Rice, white, long-grain, regular, raw, unenriched	185	675	147.909999999999997	13.1899999999999995	1.47999999999999998	0	0	1	cup	0.147999999999999993
rice	Somalia	All Locations	12/28/2015 12:00:00 AM	Rice, white, medium-grain, cooked, unenriched	186	242	53.1799999999999997	4.42999999999999972	0.369999999999999996	0	0	1	cup	0.148800000000000016
tomato	Somalia	All Locations	12/28/2015 12:00:00 AM	Tomato juice, canned, with salt added	243	41	8.58000000000000007	2.06999999999999984	0.949999999999999956	1094	170.300000000000011	1	cup	0.218700000000000006
tomato	Somalia	All Locations	12/28/2015 12:00:00 AM	Tomato juice, canned, without salt added	243	41	8.58000000000000007	2.06999999999999984	0.949999999999999956	1094	170.300000000000011	1	cup	0.218700000000000006
\.


--
-- Data for Name: nutrients_table2; Type: TABLE DATA; Schema: public; Owner: username
--

COPY nutrients_table2 (index, description, weight, energy, carbs, protein, iron, vit_a, vit_c, serv_value, serv_unit, price_serv, seq, pos) FROM stdin;
0	Cheese, American, nonfat or fat free	19	24	2	4	0	36	0	1	19.0 g serving	0.064466925159000002	100	America
1	Apples, frozen, unsweetened, unheated	173	83	21.3000000000000007	0.479999999999999982	0.309999999999999998	59	0.200000000000000011	1	cup	0.739916047902079321	101	Apples
2	Apples, raw, without skin	110	53	14.0399999999999991	0.299999999999999989	0.0800000000000000017	42	4.40000000000000036	1	cup	0.4704668512672181	102	Apples
3	Applesauce, canned, sweetened, without salt (includes USDA commodity)	246	167	43.0300000000000011	0.390000000000000013	0.299999999999999989	15	4.20000000000000018	1	cup	0.628082260179428586	103	Applesauce
4	Apricots, canned, heavy syrup pack, with skin, solids and liquids	258	214	55.3900000000000006	1.37000000000000011	0.770000000000000018	3173	8	1	cup	0.962602514225999961	104	Apricots
5	Apricots, canned, heavy syrup, drained	219	182	46.6700000000000017	1.39999999999999991	0.660000000000000031	6404	6.79999999999999982	1	cup	0.817092831842999967	105	Apricots
6	Apricots, dehydrated (low-moisture), sulfured, uncooked	119	381	98.6400000000000006	5.83000000000000007	7.50999999999999979	15076	11.3000000000000007	1	cup	0.443991082142999982	106	Apricots
7	Apricots, dried, sulfured, stewed, without added sugar	250	212	55.3800000000000026	3	2.35000000000000009	3188	0.800000000000000044	1	cup	0.932754374249999962	107	Apricots
8	Arugula, raw	2	0	0.0700000000000000067	0.0500000000000000028	0.0299999999999999989	47	0.299999999999999989	1	2.0 g serving	0.00977940707399999921	108	Arugula lettuce
9	Asparagus, canned, drained solids	242	46	5.95000000000000018	5.17999999999999972	4.42999999999999972	1989	44.5	1	cup	1.73356894793866645	109	Asparagus
10	Asparagus, cooked, boiled, drained	90	20	3.70000000000000018	2.16000000000000014	0.819999999999999951	905	6.90000000000000036	0.5	cup	0.644715724439999915	110	Asparagus
11	Asparagus, frozen, cooked, boiled, drained, without salt	180	32	3.45999999999999996	5.30999999999999961	1.01000000000000001	1451	43.8999999999999986	1	cup	1.28943144887999983	111	Asparagus
12	Hyacinth-beans, immature seeds, cooked, boiled, drained, without salt	87	44	8	2.56999999999999984	0.660000000000000031	124	4.40000000000000036	1	cup	0.267937267036714277	112	Bean
13	Yardlong bean, cooked, boiled, drained, without salt	104	49	9.55000000000000071	2.62999999999999989	1.02000000000000002	468	16.8000000000000007	1	cup	0.320292824963428591	113	Bean
14	Beans, adzuki, mature seeds, raw	197	648	123.909999999999997	39.1400000000000006	9.8100000000000005	33	0	1	cup	0.550606072799842194	114	Beans
15	Beans, baked, canned, with pork	253	268	50.5700000000000003	13.1300000000000008	4.29999999999999982	0	5.09999999999999964	1	cup	0.707123535118579172	115	Beans
16	Beans, black turtle, mature seeds, canned	240	218	39.7199999999999989	14.4700000000000006	4.55999999999999961	10	6.5	1	cup	0.670789124223157951	116	Beans
17	Beans, black turtle, mature seeds, cooked, boiled, without salt	185	240	45.0499999999999972	15.1300000000000008	5.26999999999999957	11	0	1	cup	0.517066616588684358	117	Beans
18	Beans, black, mature seeds, raw	194	662	120.980000000000004	41.8999999999999986	9.74000000000000021	33	0	1	cup	0.542221208747052708	118	Beans
19	Beans, kidney, mature seeds, sprouted, raw	184	53	7.54000000000000004	7.73000000000000043	1.48999999999999999	4	71.2000000000000028	1	cup	0.514271661904421196	119	Beans
20	Beans, pink, mature seeds, raw	210	720	134.800000000000011	44.0200000000000031	14.2200000000000006	0	0	1	cup	0.586940483695263304	120	Beans
21	Beans, pinto, immature seeds, frozen, unprepared	94	160	30.5500000000000007	9.21000000000000085	2.81999999999999984	0	0.900000000000000022	0.333000000000000018	94.0 g serving	0.262725740320736867	121	Beans
22	Beans, snap, green, frozen, cooked, boiled, drained without salt	135	38	8.71000000000000085	2.00999999999999979	0.890000000000000013	566	5.5	1	cup	0.37731888237552641	122	Beans
23	Beef, Australian, imported, grass-fed, loin, tenderloin steak/roast, boneless, separable lean and fat, raw	114	172	0.0100000000000000002	23.3999999999999986	2.52000000000000002	5	0	4	ounce	0.649354733650937432	123	Beef
24	Beef, Australian, imported, grass-fed, seam fat, raw	28.3500000000000014	159	0.299999999999999989	2.7200000000000002	0.25	34	0	1	ounce	0.161484269289509458	124	Beef
25	Beef, chuck eye roast, boneless, America's Beef Roast, separable lean and fat, trimmed to 0" fat, all grades, raw	85	153	0	16.3000000000000007	1.77000000000000002	11	0	3	ounce	0.484168003160786731	125	Beef
26	Beef, chuck, short ribs, boneless, separable lean only, trimmed to 0" fat, choice, cooked, braised	85	212	0	24.5100000000000016	2.70999999999999996	4	0	3	ounce	0.484168003160786731	126	Beef
27	Beef, chuck, top blade, separable lean only, trimmed to 0" fat, select, cooked, broiled	85	156	0	22.2399999999999984	2.37999999999999989	0	0	3	ounce	0.484168003160786731	127	Beef
28	Beef, flank, steak, separable lean and fat, trimmed to 0" fat, all grades, raw	85	132	0	18.0399999999999991	1.32000000000000006	0	0	3	ounce	0.484168003160786731	128	Beef
29	Beef, ground, 90% lean meat / 10% fat, patty, cooked, broiled	85	184	0	22.1900000000000013	2.29999999999999982	8	0	3	ounce	0.484168003160786731	129	Beef
30	Beef, loin, bottom sirloin butt, tri-tip roast, separable lean only, trimmed to 0" fat, all grades, cooked, roasted	85	155	0	22.7399999999999984	1.43999999999999995	0	0	1	85.0 g serving	0.484168003160786731	130	Beef
31	Beef, loin, top loin, separable lean and fat, trimmed to 1/8" fat, select, raw	85	190	0	17.5	1.25	0	0	3	ounce	0.484168003160786731	131	Beef
32	Beef, loin, top sirloin petite roast, boneless, separable lean only, trimmed to 0" fat, select, cooked, roasted	85	140	0	24.9499999999999993	2.33999999999999986	6	0	3	ounce	0.484168003160786731	132	Beef
33	Beef, rib, small end (ribs 10-12), separable lean and fat, trimmed to 1/8" fat, choice, cooked, roasted	85	305	0	18.9400000000000013	2.0299999999999998	0	0	3	ounce	0.484168003160786731	133	Beef
34	Beef, ribeye  petite roast/filet, boneless, separable lean only, trimmed to 0" fat, select, raw	85	106	0	19.4600000000000009	1.84000000000000008	6	0	3	ounce	0.484168003160786731	134	Beef
35	Beef, ribeye cap steak, boneless, separable lean only, trimmed to 0" fat, choice, raw	85	159	1.48999999999999999	16.5399999999999991	2.24000000000000021	6	0	3	ounce	0.484168003160786731	135	Beef
36	Beef, shank crosscuts, separable lean only, trimmed to 1/4" fat, choice, cooked, simmered	85	171	0	28.629999999999999	3.2799999999999998	0	0	3	ounce	0.484168003160786731	136	Beef
37	Beef, short loin, porterhouse steak, separable lean and fat, trimmed to 1/8" fat, choice, raw	85	185	0	17.3099999999999987	1.62000000000000011	12	0	3	ounce	0.484168003160786731	137	Beef
38	Beef, short loin, porterhouse steak, separable lean only, trimmed to 0" fat, choice, cooked, broiled	85	190	0	21.6799999999999997	2.75	0	0	3	ounce	0.484168003160786731	138	Beef
39	Beef, tenderloin, steak, separable lean and fat, trimmed to 1/8" fat, all grades, cooked, broiled	85	227	0	22.4899999999999984	1.43999999999999995	0	0	3	ounce	0.484168003160786731	139	Beef
40	Beef, tenderloin, steak, separable lean and fat, trimmed to 1/8" fat, select, raw	149	371	0	28.8599999999999994	2.12000000000000011	0	0	1	149.0 g serving	0.848718029070084867	140	Beef
41	Beef, top loin petite roast/filet, boneless, separable lean and fat, trimmed to 1/8" fat, all grades, raw	85	159	0.260000000000000009	17.9400000000000013	2.25999999999999979	12	0	3	ounce	0.484168003160786731	141	Beef
42	Beef, top sirloin, steak, separable lean and fat, trimmed to 1/8" fat, choice, cooked, broiled	85	218	0	22.7800000000000011	1.54000000000000004	0	0	3	ounce	0.484168003160786731	142	Beef
43	Beef, top sirloin, steak, separable lean only, trimmed to 0" fat, choice, cooked, broiled	85	160	0	25.75	1.76000000000000001	0	0	3	ounce	0.484168003160786731	143	Beef
44	Beef, brisket, flat half, boneless, separable lean and fat, trimmed to 0" fat, choice, raw	85	144	0	17.129999999999999	1.67999999999999994	10	0	3	ounce	0.527502691785000088	144	Beef brisket
45	Beef, brisket, flat half, separable lean and fat, trimmed to 0" fat, select, cooked, braised	85	174	0	28.5500000000000007	2.35999999999999988	0	0	3	ounce	0.527502691785000088	145	Beef brisket
46	Beet greens, raw	38	8	1.64999999999999991	0.839999999999999969	0.979999999999999982	2404	11.4000000000000004	1	cup	0.196820348434461528	146	Beets
47	Beets, canned, regular pack, solids and liquids	246	74	17.5599999999999987	1.80000000000000004	1.80000000000000004	57	6.90000000000000036	1	cup	1.27415278197046167	147	Beets
48	Beets, raw	136	58	13	2.18999999999999995	1.09000000000000008	45	6.70000000000000018	1	cup	0.704409668081230844	148	Beets
49	Gooseberries, raw	150	66	15.2699999999999996	1.32000000000000006	0.46000000000000002	435	41.6000000000000014	1	cup	0.767959517999999952	149	Berries
50	Loganberries, frozen	147	81	19.1400000000000006	2.22999999999999998	0.939999999999999947	51	22.5	1	cup	0.752600327640000066	150	Berries
51	Blackberries, frozen, unsweetened	151	97	23.6600000000000001	1.78000000000000003	1.20999999999999996	172	4.70000000000000018	1	cup	1.3637472067805001	151	Blackberries
52	Blackberry juice, canned	250	95	19.5	0.75	1.19999999999999996	308	28.1999999999999993	1	cup	0.480533482250000032	152	Blackberry juice
53	Cheese, blue	28.3500000000000014	100	0.660000000000000031	6.07000000000000028	0.0899999999999999967	204	0	1	ounce	0.119322875819699997	153	Blue
54	Blueberries, frozen, sweetened	230	196	50.4799999999999969	0.92000000000000004	0.900000000000000022	113	2.29999999999999982	1	cup	1.28857186147750014	154	Blueberries
55	Blueberries, wild, canned, heavy syrup, drained	319	341	90.3400000000000034	1.79000000000000004	7.01999999999999957	0	1	1	cup	1.78719314700575005	155	Blueberries
56	Boysenberries, canned, heavy syrup	256	225	57.1099999999999994	2.5299999999999998	1.10000000000000009	102	15.9000000000000004	1	cup	1.49091668556800006	156	Boysenberries
57	Boysenberries, frozen, unsweetened	132	66	16.0899999999999999	1.44999999999999996	1.12000000000000011	88	4.09999999999999964	1	cup	0.76875391599600007	157	Boysenberries
58	Broccoli raab, raw	40	9	1.1399999999999999	1.27000000000000002	0.859999999999999987	1049	8.09999999999999964	1	cup	0.156324016276000011	158	Broccoli
59	Broccoli, frozen, chopped, cooked, boiled, drained, without salt	184	52	9.83999999999999986	5.70000000000000018	1.12000000000000011	1860	73.7999999999999972	1	cup	0.719090474869600094	159	Broccoli
60	Broccoli, frozen, chopped, unprepared	156	41	7.45999999999999996	4.37999999999999989	1.26000000000000001	1613	88	1	cup	0.609663663476399997	160	Broccoli
61	Brussels sprouts, raw	88	38	7.87999999999999989	2.9700000000000002	1.22999999999999998	664	74.7999999999999972	1	cup	0.285390003897777855	161	Brussels
62	Butter, salted	5	36	0	0.0400000000000000008	0	125	0	1	5.0 g serving	0.0364374120299999979	162	Butter
63	Cabbage, chinese (pak-choi), cooked, boiled, drained, with salt	170	20	3.0299999999999998	2.64999999999999991	1.77000000000000002	7223	44.2000000000000028	1	cup	0.326769019393125026	163	Cabbage
64	Cabbage, chinese (pak-choi), cooked, boiled, drained, without salt	170	20	3.0299999999999998	2.64999999999999991	1.77000000000000002	7223	44.2000000000000028	1	cup	0.326769019393125026	164	Cabbage
65	Cabbage, chinese (pe-tsai), raw	76	12	2.45000000000000018	0.910000000000000031	0.239999999999999991	242	20.5	1	cup	0.146084973375749994	165	Cabbage
66	Swamp cabbage (skunk cabbage), cooked, boiled, drained, with salt	98	20	3.62999999999999989	2.04000000000000004	1.29000000000000004	5096	15.6999999999999993	1	cup	0.188372728826625008	166	Cabbage
67	Carambola, (starfruit), raw	132	41	8.88000000000000078	1.37000000000000011	0.110000000000000001	81	45.3999999999999986	1	cup	0.570942962171999913	167	Carambola
68	Carrots, canned, no salt added, solids and liquids	123	28	6.58999999999999986	0.729999999999999982	0.640000000000000013	13739	2.5	0.5	cup	0.276146640240724162	168	Carrots
69	Carrots, canned, regular pack, drained solids	146	36	8.08999999999999986	0.930000000000000049	0.930000000000000049	16308	3.89999999999999991	1	cup	0.327783816871103473	169	Carrots
70	Carrots, frozen, unprepared	64	23	5.05999999999999961	0.5	0.280000000000000027	9094	1.60000000000000009	0.5	cup	0.14368605671062068	170	Carrots
71	Carrots, raw	128	52	12.2599999999999998	1.18999999999999995	0.380000000000000004	21384	7.59999999999999964	1	cup	0.28737211342124136	171	Carrots
72	Cauliflower, green, raw	64	20	3.89999999999999991	1.8899999999999999	0.469999999999999973	99	56.3999999999999986	1	cup	0.312070916010666666	172	Cauliflower
73	Celery, cooked, boiled, drained, without salt	150	27	6	1.23999999999999999	0.630000000000000004	782	9.19999999999999929	1	cup	0.420601015409999945	173	Celery
74	Cheese food, pasteurized process, American, vitamin D fortified	113	373	9.66999999999999993	19.0500000000000007	0.28999999999999998	860	0	1	cup	0.960362980320230597	174	Cheese
75	Cheese substitute, mozzarella	113	280	26.75	12.9600000000000009	0.450000000000000011	1646	0.100000000000000006	1	cup	0.960362980320230597	175	Cheese
76	Cheese, camembert	28.3500000000000014	85	0.130000000000000004	5.61000000000000032	0.0899999999999999967	232	0	1	ounce	0.240940623823703876	176	Cheese
77	Cheese, cheddar	132	533	4.08000000000000007	30.1900000000000013	0.179999999999999993	1639	0	1	cup	1.1218399416130127	177	Cheese
78	Cheese, cottage, creamed, large or small curd	113	111	3.81999999999999984	12.5700000000000003	0.0800000000000000017	158	0	4	ounce	0.960362980320230597	178	Cheese
79	Cheese, cottage, creamed, with fruit	113	110	5.20999999999999996	12.0800000000000001	0.179999999999999993	165	1.60000000000000009	4	ounce	0.960362980320230597	179	Cheese
80	Cheese, cottage, lowfat, 1% milkfat	113	81	3.06999999999999984	14	0.160000000000000003	46	0	4	ounce	0.960362980320230597	180	Cheese
81	Cheese, cottage, lowfat, 2% milkfat	113	92	5.37999999999999989	11.8100000000000005	0.149999999999999994	254	0	4	ounce	0.960362980320230597	181	Cheese
82	Cheese, cottage, nonfat, uncreamed, dry, large or small curd	145	104	9.66000000000000014	14.9900000000000002	0.220000000000000001	12	0	1	cup	1.23232417828702157	182	Cheese
83	Cheese, feta	150	396	6.13999999999999968	21.3200000000000003	0.979999999999999982	633	0	1	cup	1.27481811546933255	183	Cheese
84	Cheese, mozzarella, low moisture, part-skim	132	389	7.37000000000000011	31.3500000000000014	0.28999999999999998	1094	0	1	cup	1.1218399416130127	184	Cheese
85	Cheese, mozzarella, whole milk	112	336	2.45000000000000018	24.8299999999999983	0.489999999999999991	757	0	1	cup	0.951864192883768445	185	Cheese
86	Cheese, muenster	132	486	1.47999999999999998	30.8999999999999986	0.540000000000000036	1336	0	1	cup	1.1218399416130127	186	Cheese
87	Cheese, neufchatel	28.3500000000000014	72	1.02000000000000002	2.58999999999999986	0.0400000000000000008	238	0	1	ounce	0.240940623823703876	187	Cheese
88	Cheese, parmesan, grated	100	420	13.9100000000000001	28.4200000000000017	0.489999999999999991	974	0	1	cup	0.849878743646221735	188	Cheese
89	Cheese, provolone	132	463	2.81999999999999984	33.7700000000000031	0.689999999999999947	1162	0	1	cup	1.1218399416130127	189	Cheese
90	Cheese, ricotta, whole milk	124	216	3.77000000000000002	13.9600000000000009	0.469999999999999973	552	0	0.5	cup	1.05384964212131482	190	Cheese
91	Cheese spread, pasteurized process, American	140	406	12.2200000000000006	22.9699999999999989	0.46000000000000002	914	0	1	cup	1.09377590185499973	191	Cheese spread
92	Cherries, sour, red, canned, light syrup pack, solids and liquids	252	189	48.6400000000000006	1.8600000000000001	3.33000000000000007	1830	5	1	cup	1.63673400199679997	192	Cherries
93	Cherries, sour, red, frozen, unsweetened	155	71	17.0799999999999983	1.42999999999999994	0.819999999999999951	1348	2.60000000000000009	1	cup	1.00672131075199989	193	Cherries
94	Cherries, sweet, canned, water pack, solids and liquids	248	114	29.1600000000000001	1.90999999999999992	0.890000000000000013	397	5.5	1	cup	1.61075409720320017	194	Cherries
95	Cherries, sweet, raw	138	87	22.0899999999999999	1.45999999999999996	0.5	88	9.69999999999999929	1	cup	0.896306715379199925	195	Cherries
96	Groundcherries, (cape-gooseberries or poha), raw	140	74	15.6799999999999997	2.66000000000000014	1.39999999999999991	1008	15.4000000000000004	1	cup	0.909296667776000045	196	Cherries
97	Chicken, broiler, rotisserie, BBQ, back meat only	85	180	0.260000000000000009	18.5700000000000003	0.699999999999999956	43	0	3	ounce	0.391860092439966667	197	Chicken
98	Chicken, broilers or fryers, back, meat and skin, raw	59	188	0	8.28999999999999915	0.550000000000000044	148	0.900000000000000022	1	59.0 g serving	0.271997005340682718	198	Chicken
99	Chicken, broilers or fryers, back, meat only, raw	31	42	0	6.05999999999999961	0.320000000000000007	31	0	1	31.0 g serving	0.142913680772223134	199	Chicken
100	Chicken, broilers or fryers, dark meat, meat and skin, cooked, stewed	110	256	0	25.8500000000000014	1.43999999999999995	205	0	1	110.0 g serving	0.507113060804662674	200	Chicken
101	Chicken, broilers or fryers, dark meat, meat only, cooked, fried	140	335	3.62999999999999989	40.5900000000000034	2.08999999999999986	111	0	1	cup	0.64541662284229806	201	Chicken
102	Chicken, broilers or fryers, drumstick, meat and skin, cooked, stewed	140	286	0	35.4500000000000028	1.8600000000000001	127	0	1	cup	0.64541662284229806	202	Chicken
103	Chicken, broilers or fryers, drumstick, meat only, cooked, fried	25	49	0	7.16000000000000014	0.330000000000000016	15	0	1	25.0 g serving	0.115252968364696076	203	Chicken
104	Chicken, broilers or fryers, giblets, raw	23	29	0.409999999999999976	4.11000000000000032	1.35000000000000009	2035	3.70000000000000018	1	23.0 g serving	0.106032730895520386	204	Chicken
105	Chicken, broilers or fryers, leg, meat and skin, cooked, roasted	85	156	0	20.4299999999999997	0.930000000000000049	58	0	3	ounce	0.391860092439966667	205	Chicken
106	Chicken, broilers or fryers, leg, meat only, cooked, fried	56	116	0.359999999999999987	15.8900000000000006	0.780000000000000027	37	0	1	56.0 g serving	0.258166649136919224	206	Chicken
107	Chicken, broilers or fryers, light meat, meat only, raw	88	100	0	20.4200000000000017	0.640000000000000013	24	0	1	88.0 g serving	0.405690448643730217	207	Chicken
108	Chicken, broilers or fryers, meat and skin and giblets and neck, cooked, fried, batter	85	247	7.67999999999999972	19.4100000000000001	1.52000000000000002	513	0.299999999999999989	3	ounce	0.391860092439966667	208	Chicken
109	Chicken, broilers or fryers, meat and skin, cooked, fried, flour	85	229	2.68000000000000016	24.2800000000000011	1.16999999999999993	76	0	3	ounce	0.391860092439966667	209	Chicken
110	Chicken, broilers or fryers, separable fat, raw	12.8000000000000007	81	0	0.479999999999999982	0.0899999999999999967	65	0	1	tablespoon	0.0590095198027243903	210	Chicken
111	Chicken, broilers or fryers, wing, meat only, raw	17	21	0	3.72999999999999998	0.149999999999999994	10	0.200000000000000011	1	17.0 g serving	0.0783720184879933279	211	Chicken
112	Chicken, dark meat, thigh, meat only, with added solution, raw	85	94	0	16.2399999999999984	0.510000000000000009	16	0	3	ounce	0.391860092439966667	212	Chicken
113	Chicken, skin (drumsticks and thighs), raw	28.3500000000000014	125	0.220000000000000001	2.7200000000000002	0.100000000000000006	56	0	1	ounce	0.130696866125565359	213	Chicken
114	Chicken, stewing, meat and skin, and giblets and neck, cooked, stewed	85	182	0	21.1499999999999986	1.3899999999999999	518	0.800000000000000044	3	ounce	0.391860092439966667	214	Chicken
115	Fish, cod, Atlantic, canned, solids and liquid	85	89	0	19.3500000000000014	0.419999999999999984	40	0.800000000000000044	3	ounce	0.936682630193333199	215	Cod
116	Fish, cod, Pacific, raw (may have been previously frozen)	116	80	0	17.7100000000000009	0.190000000000000002	7	0	1	116.0 g serving	1.27829629532266664	216	Cod
117	Fish, lingcod, cooked, dry heat	85	93	0	19.2399999999999984	0.349999999999999978	49	0	3	ounce	0.936682630193333199	217	Cod
118	Collards, frozen, chopped, unprepared	95	31	6.13999999999999968	2.56000000000000005	1.02000000000000002	8724	38	0.330000000000000016	95.0 g serving	0.581272384107727302	218	Collards
119	Corn flour, yellow, masa, enriched	114	414	87.3100000000000023	9.64000000000000057	9.6899999999999995	244	0	1	cup	0.546482685495000009	219	Corn
120	Corn grain, white	166	606	123.269999999999996	15.6400000000000006	4.5	0	0	1	cup	0.79575548940499985	220	Corn
121	Corn, sweet, yellow, canned, brine pack, regular pack, solids and liquids	256	156	35.4799999999999969	4.99000000000000021	0.92000000000000004	87	6.70000000000000018	1	cup	1.22718918847999992	221	Corn
122	Corn, sweet, yellow, canned, drained solids, rinsed with tap water	150	111	19.5300000000000011	3.27000000000000002	0.330000000000000016	0	2.60000000000000009	1	cup	0.719056165124999924	222	Corn
123	Corn, sweet, yellow, canned, vacuum pack, regular pack	210	166	40.8200000000000003	5.05999999999999961	0.880000000000000004	170	17	1	cup	1.006678631175	223	Corn
124	Corn, sweet, yellow, frozen, kernels cut off cob, boiled, drained, without salt	165	134	31.8399999999999999	4.20999999999999996	0.780000000000000027	328	5.79999999999999982	1	cup	0.790961781637499972	224	Corn
125	Corn, sweet, yellow, frozen, kernels cut off cob, unprepared	136	120	28.1700000000000017	4.11000000000000032	0.569999999999999951	265	8.69999999999999929	1	cup	0.651944256379999976	225	Corn
126	Cowpeas (blackeyes), immature seeds, cooked, boiled, drained, without salt	165	160	33.5300000000000011	5.23000000000000043	1.85000000000000009	1305	3.60000000000000009	1	cup	0.280070965460000043	226	Cowpeas
173	Kiwifruit, green, raw	180	110	26.3900000000000006	2.04999999999999982	0.560000000000000053	157	166.900000000000006	1	cup	0.890704288224000051	273	Fruit
127	Cowpeas (blackeyes), immature seeds, frozen, cooked, boiled, drained, without salt	170	224	40.3900000000000006	14.4299999999999997	3.60000000000000009	128	4.40000000000000036	1	cup	0.288557964413333368	227	Cowpeas
128	Cowpeas (blackeyes), immature seeds, raw	145	130	27.3000000000000007	4.28000000000000025	1.60000000000000009	1185	3.60000000000000009	1	cup	0.246122969646666689	228	Cowpeas
129	Cowpeas, leafy tips, raw	36	10	1.73999999999999999	1.47999999999999998	0.689999999999999947	256	13	1	cup	0.0611063924640000075	229	Cowpeas
130	Cheese, cream	14.5	51	0.800000000000000044	0.890000000000000013	0.0200000000000000004	161	0	1	tablespoon	0.138847169530899983	230	Cream
131	Cream, fluid, half and half	30.1999999999999993	37	1.42999999999999994	0.949999999999999956	0.0200000000000000004	107	0.299999999999999989	1	fluid ounce	0.289185139298839988	231	Cream
132	Cream, fluid, heavy whipping	120	408	3.29000000000000004	3.41000000000000014	0.119999999999999996	1764	0.699999999999999956	1	cup	1.14908002370399975	232	Cream
133	Cream, fluid, light (coffee cream or table cream)	30	57	0.849999999999999978	0.890000000000000013	0.0200000000000000004	197	0.200000000000000011	1	fluid ounce	0.287270005925999938	233	Cream
134	Cream, fluid, light whipping	120	350	3.54999999999999982	2.60000000000000009	0.0400000000000000008	1216	0.699999999999999956	1	cup	1.14908002370399975	234	Cream
135	Cream, sour, cultured	12	24	0.560000000000000053	0.28999999999999998	0.0100000000000000002	54	0.100000000000000006	1	tablespoon	0.114908002370399984	235	Cream
136	Cream, sour, reduced fat, cultured	15	20	0.640000000000000013	0.440000000000000002	0.0100000000000000002	56	0.100000000000000006	1	tablespoon	0.143635002962999969	236	Cream
137	Cream, whipped, cream topping, pressurized	60	154	7.49000000000000021	1.91999999999999993	0.0299999999999999989	411	0	1	cup	0.574540011851999877	237	Cream
138	Sour dressing, non-butterfat, cultured, filled cream-type	12	21	0.560000000000000053	0.390000000000000013	0	1	0.100000000000000006	1	tablespoon	0.114908002370399984	238	Cream
139	Cream substitute, liquid, with lauric acid oil and sodium caseinate	15	20	1.70999999999999996	0.149999999999999994	0	13	0	1	15.0 g serving	0.0455571547224999929	239	Cream substitute
140	Drumstick pods, raw	100	37	8.52999999999999936	2.10000000000000009	0.359999999999999987	74	141	1	cup	0.499947548976470535	240	Drumstick chicken
141	Dessert topping, pressurized	70	185	11.25	0.689999999999999947	0.0100000000000000002	55	0	1	cup	0.330622098939999998	241	Dutch apple dessert
142	Egg, white, raw, fresh	33	17	0.239999999999999991	3.60000000000000009	0.0299999999999999989	0	0	1	33.0 g serving	0.105546542470499993	242	Egg
143	Egg, whole, cooked, fried	46	90	0.380000000000000004	6.25999999999999979	0.869999999999999996	362	0	1	46.0 g serving	0.147125483443727251	243	Egg
144	Egg, whole, cooked, omelet	15	23	0.100000000000000006	1.59000000000000008	0.220000000000000001	93	0	1	tablespoon	0.0479757011229545449	244	Egg
145	Egg, whole, cooked, poached	50	72	0.359999999999999987	6.25999999999999979	0.880000000000000004	269	0	1	50.0 g serving	0.159919003743181798	245	Egg
146	Egg, whole, raw, fresh	50	72	0.359999999999999987	6.28000000000000025	0.880000000000000004	270	0	1	50.0 g serving	0.159919003743181798	246	Egg
147	Egg, yolk, raw, frozen, sugared, pasteurized	28.3500000000000014	87	3.10000000000000009	3.93000000000000016	1.05000000000000004	313	0	1	ounce	0.0906740751223840957	247	Egg
148	Egg substitute, powder	9.90000000000000036	44	2.16000000000000014	5.49000000000000021	0.309999999999999998	122	0.100000000000000006	0.349999999999999978	ounce	0.051502995125999991	248	Egg substitute
149	Eggnog	254	224	20.4499999999999993	11.5600000000000005	0.510000000000000009	523	3.79999999999999982	1	cup	0.387174887700999948	249	Eggnog
150	Chicory roots, raw	60	43	10.5099999999999998	0.839999999999999969	0.479999999999999982	4	3	1	60.0 g serving	0.266187145799999969	250	Escarole chicory
151	Fish, bluefish, cooked, dry heat	117	186	0	30.0599999999999987	0.729999999999999982	537	0	1	117.0 g serving	1.08768047305870597	251	Fish
152	Fish, bluefish, raw	150	186	0	30.0599999999999987	0.719999999999999973	597	0	1	150.0 g serving	1.39446214494705889	252	Fish
153	Fish, burbot, cooked, dry heat	90	104	0	22.2800000000000011	1.04000000000000004	15	0	1	90.0 g serving	0.83667728696823529	253	Fish
154	Fish, cisco, raw	79	77	0	15	0.320000000000000007	79	0	1	79.0 g serving	0.734416729672117574	254	Fish
155	Fish, cisco, smoked	28.3500000000000014	50	0	4.63999999999999968	0.140000000000000013	267	0	1	ounce	0.263553345394994143	255	Fish
156	Fish, flatfish (flounder and sole species), cooked, dry heat	127	109	0	19.3500000000000014	0.28999999999999998	47	0	1	127.0 g serving	1.18064461605517645	256	Fish
157	Fish, flatfish (flounder and sole species), raw	28.3500000000000014	20	0	3.52000000000000002	0.0500000000000000028	9	0	1	ounce	0.263553345394994143	257	Fish
158	Fish, grouper, mixed species, cooked, dry heat	85	100	0	21.1099999999999994	0.969999999999999973	140	0	3	ounce	0.790195215469999934	258	Fish
159	Fish, grouper, mixed species, raw	85	78	0	16.4699999999999989	0.760000000000000009	122	0	3	ounce	0.790195215469999934	259	Fish
160	Fish, haddock, raw	85	63	0	13.8699999999999992	0.140000000000000013	48	0	3	ounce	0.790195215469999934	260	Fish
161	Fish, mahimahi, cooked, dry heat	85	93	0	20.1600000000000001	1.22999999999999998	177	0	3	ounce	0.790195215469999934	261	Fish
162	Fish, pike, northern, cooked, dry heat	85	96	0	20.9899999999999984	0.599999999999999978	69	3.20000000000000018	3	ounce	0.790195215469999934	262	Fish
163	Fish, pollock, Alaska, cooked (not previously frozen)	85	68	0	16.5100000000000016	0.25	0	0	3	ounce	0.790195215469999934	263	Fish
164	Fish, swordfish, cooked, dry heat	85	146	0	19.9299999999999997	0.380000000000000004	110	0	3	ounce	0.790195215469999934	264	Fish
165	Fish, tilapia, raw	116	111	0	23.2899999999999991	0.650000000000000022	0	0	1	116.0 g serving	1.07838405875905874	265	Fish
166	Fish, trout, mixed species, cooked, dry heat	62	118	0	16.5100000000000016	1.18999999999999995	39	0.299999999999999989	1	62.0 g serving	0.57637768657811761	266	Fish
167	Fish, wolffish, Atlantic, raw	85	82	0	14.8800000000000008	0.0800000000000000017	319	0	3	ounce	0.790195215469999934	267	Fish
168	Fish, yellowtail, mixed species, cooked, dry heat	146	273	0	43.3200000000000003	0.92000000000000004	152	4.20000000000000018	0.5	146.0 g serving	1.35727648774847065	268	Fish
169	Fish, scup, cooked, dry heat	50	68	0	12.0999999999999996	0.340000000000000024	52	0	1	50.0 g serving	0.221110978299999983	269	Fish soup
170	Barley flour or meal	148	511	110.290000000000006	15.5399999999999991	3.9700000000000002	0	0	1	cup	0.0745395990706666789	270	Flour
171	Oat flour, partially debranned	104	420	68.3299999999999983	15.25	4.16000000000000014	0	0	1	cup	0.052379177725333334	271	Flour
172	Breadfruit, raw	220	227	59.6599999999999966	2.35000000000000009	1.18999999999999995	0	63.7999999999999972	1	cup	1.0886385744960001	272	Fruit
174	Passion-fruit, (granadilla), purple, raw	236	229	55.1799999999999997	5.19000000000000039	3.7799999999999998	3002	70.7999999999999972	1	cup	1.16781228900479994	274	Fruit
175	Yogurt, fruit, low fat, 11 grams protein per 8 ounce	170	178	31.620000000000001	8.25999999999999979	0.119999999999999996	102	1.19999999999999996	1	170.0 g serving	0.841220716656000067	275	Fruit
176	Yogurt, fruit, low fat, 9 grams protein per 8 ounce	170	168	31.6900000000000013	6.76999999999999957	0.100000000000000006	68	1	1	170.0 g serving	0.841220716656000067	276	Fruit
177	Fruit cocktail, (peach and pineapple and pear and grape and cherry), canned, extra light syrup, solids and liquids	123	55	14.3000000000000007	0.489999999999999991	0.369999999999999996	287	3.70000000000000018	0.5	cup	0.299942929615125031	277	Fruit cocktail
178	Fruit cocktail, (peach and pineapple and pear and grape and cherry), canned, heavy syrup, solids and liquids	248	181	46.8999999999999986	0.969999999999999973	0.719999999999999973	508	4.70000000000000018	1	cup	0.604762980037000131	278	Fruit cocktail
179	Fruit salad, (peach and pear and apricot and pineapple and cherry), canned, heavy syrup, solids and liquids	255	186	48.7299999999999969	0.869999999999999996	0.709999999999999964	1285	6.09999999999999964	1	cup	1.2108194133750001	279	Fruit salad
180	Fruit salad, (peach and pear and apricot and pineapple and cherry), canned, water pack, solids and liquids	245	74	19.2800000000000011	0.859999999999999987	0.739999999999999991	1078	4.70000000000000018	1	cup	1.16333629912500003	280	Fruit salad
181	Garlic, raw	136	203	44.9600000000000009	8.65000000000000036	2.31000000000000005	12	42.3999999999999986	1	cup	0.965226125255999823	281	Garlic
182	Grapefruit, raw, white, Florida	230	74	18.8399999999999999	1.44999999999999996	0.119999999999999996	23	85.0999999999999943	1	cup	0.61670103255599984	282	Grapefruit
183	Grapefruit, sections, canned, juice pack, solids and liquids	249	92	22.9299999999999997	1.73999999999999999	0.520000000000000018	0	84.4000000000000057	1	cup	0.667645900462799813	283	Grapefruit
184	Grapefruit, sections, canned, water pack, solids and liquids	244	88	22.3299999999999983	1.41999999999999993	1	0	53.2000000000000028	1	cup	0.654239356276799855	284	Grapefruit
185	Grapefruit juice, white, canned, sweetened	250	115	27.8200000000000003	1.44999999999999996	0.900000000000000022	18	67.2000000000000028	1	cup	0.201010880812499987	285	Grapefruit juice
186	Grapefruit juice, white, frozen concentrate, unsweetened, undiluted	207	302	71.5400000000000063	4.08000000000000007	1.01000000000000001	64	248	1	207.0 g serving	0.166437009312749989	286	Grapefruit juice
187	Grapes, american type (slip skin), raw	92	62	15.7799999999999994	0.57999999999999996	0.270000000000000018	92	3.70000000000000018	1	cup	0.292961839716000039	287	Grapes
188	Grapes, canned, thompson seedless, water pack, solids and liquids	245	98	25.2399999999999984	1.21999999999999997	2.39999999999999991	110	2.39999999999999991	1	cup	0.780170116635000022	288	Grapes
189	Grapes, muscadine, raw	6	3	0.839999999999999969	0.0500000000000000028	0.0200000000000000004	4	0.400000000000000022	1	6.0 g serving	0.0191062069379999977	289	Grapes
190	Beef, round, top round steak, boneless, separable lean and fat, trimmed to 0" fat, all grades, cooked, grilled	85	142	0	25.4699999999999989	2.75	13	0	3	ounce	0.493345271715454503	290	Ground beef
191	Beef, round, top round steak, boneless, separable lean and fat, trimmed to 0" fat, choice, cooked, grilled	85	144	0	25.6000000000000014	2.77000000000000002	13	0	3	ounce	0.493345271715454503	291	Ground beef
192	Beef, round, top round, separable lean and fat, trimmed to 1/8" fat, select, cooked, braised	85	191	0	29.4100000000000001	2.70000000000000018	0	0	3	ounce	0.493345271715454503	292	Ground beef
193	Beef, round, top round, steak, separable lean and fat, trimmed to 1/8" fat, choice, cooked, broiled	85	190	0	26.1000000000000014	2.16000000000000014	0	0	3	ounce	0.493345271715454503	293	Ground beef
194	Beef, round, top round, steak, separable lean and fat, trimmed to 1/8" fat, prime, cooked, broiled	85	191	0	26.5799999999999983	2.41000000000000014	0	0	3	ounce	0.493345271715454503	294	Ground beef
195	Ground turkey, 93% lean, 7% fat, pan-broiled crumbles	85	181	0	23.0399999999999991	1.33000000000000007	86	0	3	ounce	0.416010512029999946	295	Ground turkey
196	Ground turkey, fat free, patties, broiled	85	117	0	24.6400000000000006	0.660000000000000031	21	0	1	85.0 g serving	0.416010512029999946	296	Ground turkey
197	Fish, herring, Atlantic, raw	28.3500000000000014	45	0	5.08999999999999986	0.309999999999999998	26	0.200000000000000011	1	ounce	0.190153535682599989	297	Herring
198	Fish, herring, Pacific, raw	85	166	0	13.9299999999999997	0.949999999999999956	90	0	3	ounce	0.570125239260000027	298	Herring
199	Kale, frozen, unprepared	94	26	4.61000000000000032	2.5	0.869999999999999996	5878	36.8999999999999986	0.333000000000000018	94.0 g serving	0.344991541695999993	299	Kale
200	Kale, raw	16	8	1.39999999999999991	0.680000000000000049	0.239999999999999991	1598	19.1999999999999993	1	cup	0.0587219645439999993	300	Kale
201	Asparagus, canned, regular pack, solids and liquids	122	18	3.0299999999999998	2.20000000000000018	0.729999999999999982	642	20.1000000000000014	0.5	cup	0.828180340168000018	301	La
202	Chicken, gizzard, all classes, cooked, simmered	145	223	0	44.0700000000000003	4.62999999999999989	0	0	1	cup	0.984312699379999989	302	La
203	Gourd, white-flowered (calabash), raw	58	8	1.96999999999999997	0.359999999999999987	0.119999999999999996	9	5.90000000000000036	0.5	cup	0.39372507975199994	303	La
204	Lamb, New Zealand, imported, frozen, foreshank, separable lean and fat, trimmed to 1/8" fat, cooked, braised	85	219	0	22.9200000000000017	1.76000000000000001	0	0	3	ounce	0.577010892739999948	304	La
205	Lamb, New Zealand, imported, frozen, foreshank, separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	63	0	5.11000000000000032	0.419999999999999984	0	0	1	ounce	0.192450103637400005	305	La
206	Lamb, New Zealand, imported, frozen, leg, whole (shank and sirloin), separable lean and fat, trimmed to 1/8" fat, cooked, roasted	85	199	0	21.5399999999999991	1.81000000000000005	0	0	3	ounce	0.577010892739999948	306	La
207	Lamb, New Zealand, imported, frozen, leg, whole (shank and sirloin), separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	57	0	5.32000000000000028	0.450000000000000011	0	0	1	ounce	0.192450103637400005	307	La
208	Lamb, New Zealand, imported, frozen, loin, separable lean and fat, trimmed to 1/8" fat, cooked, broiled	85	252	0	20.75	1.78000000000000003	0	0	3	ounce	0.577010892739999948	308	La
209	Lamb, New Zealand, imported, frozen, shoulder, whole (arm and blade), separable lean and fat, trimmed to 1/8" fat, cooked, braised	85	291	0	25.0199999999999996	1.84000000000000008	0	0	3	ounce	0.577010892739999948	309	La
210	Lamb, New Zealand, imported, frozen, shoulder, whole (arm and blade), separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	71	0	4.87000000000000011	0.390000000000000013	0	0	1	ounce	0.192450103637400005	310	La
211	Plantains, cooked	200	232	62.2999999999999972	1.58000000000000007	1.15999999999999992	1818	21.8000000000000007	1	cup	1.35767268879999992	311	La
212	Plantains, raw	148	181	47.2000000000000028	1.91999999999999993	0.890000000000000013	1668	27.1999999999999993	1	cup	1.00467778971199984	312	La
213	Purslane, cooked, boiled, drained, without salt	115	21	4.08000000000000007	1.70999999999999996	0.890000000000000013	2130	12.0999999999999996	1	cup	0.780661796059999968	313	La
214	Purslane, raw	43	9	1.45999999999999996	0.869999999999999996	0.859999999999999987	568	9	1	cup	0.291899628091999985	314	La
215	Turkey, all classes, back, meat and skin, cooked, roasted	140	342	0.220000000000000001	37.2299999999999969	3.06999999999999984	0	0	1	cup	0.950370882159999986	315	La
216	Turkey, all classes, leg, meat and skin, cooked, roasted	71	148	0	19.7899999999999991	1.62999999999999989	0	0	1	71.0 g serving	0.48197380452399996	316	La
217	Lamb, Australian, imported, fresh, composite of trimmed retail cuts, separable lean only, trimmed to 1/8" fat, cooked	85	171	0	22.6999999999999993	1.73999999999999999	0	0	3	ounce	0.713787249626428588	317	Lamb
218	Lamb, Australian, imported, fresh, composite of trimmed retail cuts, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	40	0	5.74000000000000021	0.450000000000000011	0	0	1	ounce	0.238069041493050026	318	Lamb
219	Lamb, Australian, imported, fresh, foreshank, separable lean and fat, trimmed to 1/8" fat, cooked, braised	85	201	0	21.0599999999999987	1.52000000000000002	0	0	3	ounce	0.713787249626428588	319	Lamb
220	Lamb, Australian, imported, fresh, foreshank, separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	55	0	5.33999999999999986	0.390000000000000013	0	0	1	ounce	0.238069041493050026	320	Lamb
221	Lamb, Australian, imported, fresh, foreshank, separable lean only, trimmed to 1/8" fat, cooked, braised	85	140	0	23.379999999999999	1.62000000000000011	0	0	3	ounce	0.713787249626428588	321	Lamb
222	Lamb, Australian, imported, fresh, foreshank, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	35	0	5.91000000000000014	0.429999999999999993	0	0	1	ounce	0.238069041493050026	322	Lamb
223	Lamb, Australian, imported, fresh, leg, center slice, bone-in, separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	55	0	5.42999999999999972	0.510000000000000009	0	0	1	ounce	0.238069041493050026	323	Lamb
224	Lamb, Australian, imported, fresh, leg, center slice, bone-in, separable lean only, trimmed to 1/8" fat, cooked, broiled	85	156	0	22.7399999999999984	2.10999999999999988	0	0	3	ounce	0.713787249626428588	324	Lamb
225	Lamb, Australian, imported, fresh, leg, center slice, bone-in, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	41	0	5.84999999999999964	0.550000000000000044	0	0	1	ounce	0.238069041493050026	325	Lamb
226	Lamb, Australian, imported, fresh, leg, shank half, separable lean only, trimmed to 1/8" fat, cooked, roasted	85	155	0	23.1000000000000014	1.81000000000000005	0	0	3	ounce	0.713787249626428588	326	Lamb
227	Lamb, Australian, imported, fresh, leg, shank half, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	38	0	5.79999999999999982	0.46000000000000002	0	0	1	ounce	0.238069041493050026	327	Lamb
228	Lamb, Australian, imported, fresh, leg, sirloin chops, boneless, separable lean and fat, trimmed to 1/8" fat, cooked, broiled	85	200	0	21.8900000000000006	1.98999999999999999	0	0	3	ounce	0.713787249626428588	328	Lamb
229	Lamb, Australian, imported, fresh, leg, sirloin half, boneless, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	39	0	5.80999999999999961	0.5	0	0	1	ounce	0.238069041493050026	329	Lamb
230	Lamb, Australian, imported, fresh, leg, whole (shank and sirloin), separable lean only, trimmed to 1/8" fat, cooked, roasted	85	162	0	23.2100000000000009	1.83000000000000007	0	0	3	ounce	0.713787249626428588	330	Lamb
231	Lamb, Australian, imported, fresh, leg, whole (shank and sirloin), separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	38	0	5.79999999999999982	0.46000000000000002	0	0	1	ounce	0.238069041493050026	331	Lamb
232	Lamb, Australian, imported, fresh, loin, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	41	0	5.95000000000000018	0.510000000000000009	0	0	1	ounce	0.238069041493050026	332	Lamb
233	Lamb, Australian, imported, fresh, rib chop, frenched, bone-in, separable lean and fat, trimmed to 1/8" fat, cooked, grilled	85	259	0	24.2100000000000009	1.89999999999999991	9	0	3	ounce	0.713787249626428588	333	Lamb
234	Lamb, Australian, imported, fresh, rib chop/rack roast, frenched, bone-in, separable lean only, trimmed to 1/8" fat, raw	114	168	0	27.4400000000000013	2	19	0	4	ounce	0.957314664204857113	334	Lamb
235	Lamb, Australian, imported, fresh, separable fat, raw	28.3500000000000014	184	0	1.78000000000000003	0.179999999999999993	0	0	1	ounce	0.238069041493050026	335	Lamb
236	Lamb, Australian, imported, fresh, shoulder ,blade, separable lean only, trimmed to 1/8" fat, cooked, broiled	85	196	0	20.2600000000000016	1.41999999999999993	0	0	3	ounce	0.713787249626428588	336	Lamb
237	Lamb, Australian, imported, fresh, shoulder, arm, separable lean and fat, trimmed to 1/8" fat, cooked, braised	85	264	0	25.2399999999999984	2.06000000000000005	0	0	3	ounce	0.713787249626428588	337	Lamb
238	Lamb, Australian, imported, fresh, shoulder, blade, separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	74	0	4.66999999999999993	0.340000000000000024	0	0	1	ounce	0.238069041493050026	338	Lamb
239	Lamb, Australian, imported, fresh, shoulder, blade, separable lean only, trimmed to 1/8" fat, raw	28.3500000000000014	46	0	5.41000000000000014	0.390000000000000013	0	0	1	ounce	0.238069041493050026	339	Lamb
240	Lamb, Australian, imported, fresh, shoulder, whole (arm and blade), separable lean and fat, trimmed to 1/8" fat, raw	28.3500000000000014	73	0	4.73000000000000043	0.359999999999999987	0	0	1	ounce	0.238069041493050026	340	Lamb
241	Lemon juice, raw	244	54	16.8399999999999999	0.849999999999999978	0.200000000000000011	15	94.4000000000000057	1	cup	0.501764877774000029	341	Lemon juice
242	Lima beans, immature seeds, cooked, boiled, drained, without salt	170	209	40.1899999999999977	11.5800000000000001	4.16999999999999993	515	17.1999999999999993	1	cup	0.532095665283333297	342	Lima beans
243	Lima beans, immature seeds, frozen, baby, cooked, boiled, drained, without salt	180	189	35.009999999999998	11.9700000000000006	3.5299999999999998	301	10.4000000000000004	1	cup	0.563395410299999955	343	Lima beans
244	Lima beans, immature seeds, frozen, baby, unprepared	164	216	41.2299999999999969	12.4499999999999993	3.62000000000000011	310	13.5999999999999996	1	cup	0.51331581827333328	344	Lima beans
245	Lima beans, immature seeds, frozen, fordhook, unprepared	160	170	31.7300000000000004	10.2400000000000002	2.41999999999999993	357	30.8999999999999986	1	cup	0.500795920266666639	345	Lima beans
246	Lime juice, raw	242	60	20.379999999999999	1.02000000000000002	0.220000000000000001	121	72.5999999999999943	1	cup	1.40825310388400005	346	Lime juice
247	Macaroni, vegetable, enriched, cooked	134	172	35.6599999999999966	6.07000000000000028	0.660000000000000031	123	0	1	cup	0.325754284995028565	347	Macaroni
248	Macaroni, vegetable, enriched, dry	84	308	62.8999999999999986	11.0399999999999991	3.60000000000000009	134	0	1	cup	0.204204178653599966	348	Macaroni
249	Fish, mackerel, jack, canned, drained solids	28.3500000000000014	44	0	6.57000000000000028	0.57999999999999996	123	0.299999999999999989	1	ounce	0.360381701872237503	349	Mackerel
250	Fish, mackerel, spanish, raw	85	118	0	16.3999999999999986	0.369999999999999996	110	1.39999999999999991	3	ounce	1.08050951178624999	350	Mackerel
251	Mangos, raw	165	99	24.7199999999999989	1.35000000000000009	0.260000000000000009	1785	60.1000000000000014	1	cup	0.783124854269999893	351	Mango
252	Game meat , bison, top sirloin, separable lean only, 1" steak, cooked, broiled	85	145	0	23.8399999999999999	2.95000000000000018	0	0	1	85.0 g serving	0.486155696349583277	352	Meat
253	Game meat, bison, chuck, shoulder clod, separable lean only, cooked, braised	85	164	0	28.7100000000000009	4.12999999999999989	0	0	1	85.0 g serving	0.486155696349583277	353	Meat
254	Game meat, bison, ground, cooked, pan-broiled	87	207	0	20.6799999999999997	2.68000000000000016	0	0	1	87.0 g serving	0.497594653910749918	354	Meat
255	Game meat, bison, ribeye, separable lean only, 1" steak, cooked, broiled	85	150	0	25.0300000000000011	2.45000000000000018	0	0	1	85.0 g serving	0.486155696349583277	355	Meat
256	Game meat, bison, top round, separable lean only, 1" steak, cooked, broiled	85	148	0	25.6499999999999986	2.99000000000000021	0	0	1	85.0 g serving	0.486155696349583277	356	Meat
257	Game meat, bison, top sirloin, separable lean only, trimmed to 0" fat, raw	28.3500000000000014	32	0	6.07000000000000028	0.849999999999999978	0	0	1	ounce	0.162147223429537496	357	Meat
258	Game meat, deer, loin, separable lean only, 1" steak, cooked, broiled	54	81	0	16.3099999999999987	2.20999999999999996	0	0	1	54.0 g serving	0.30885185415149996	358	Meat
259	Game meat, deer, top round, separable lean only, 1" steak, cooked, broiled	102	155	0	32.1000000000000014	4.30999999999999961	0	0	1	102.0 g serving	0.583386835619499888	359	Meat
260	Game meat, elk, ground, cooked, pan-broiled	95	183	0	25.3099999999999987	3.16999999999999993	0	0	1	95.0 g serving	0.543350484155416535	360	Meat
261	Game meat, elk, round, separable lean only, cooked, broiled	85	133	0	26.3000000000000007	3.4700000000000002	0	0	1	85.0 g serving	0.486155696349583277	361	Meat
262	Milk shakes, thick chocolate	28.3999999999999986	34	6.00999999999999979	0.869999999999999996	0.0899999999999999967	19	0	1	fluid ounce	0.0660933378660867321	362	Milk
263	Milk substitutes, fluid, with lauric acid oil	244	149	15.0299999999999994	4.26999999999999957	0.949999999999999956	0	0	1	cup	0.56784417039877344	363	Milk
264	Milk, buttermilk, dried	30	116	14.6999999999999993	10.2899999999999991	0.0899999999999999967	52	1.69999999999999996	0.25	cup	0.0698169061965705079	364	Milk
265	Milk, canned, condensed, sweetened	38.2000000000000028	123	20.7800000000000011	3.02000000000000002	0.0700000000000000067	102	1	1	fluid ounce	0.0889001938902997807	365	Milk
266	Milk, canned, evaporated, nonfat, with added vitamin A and vitamin D	31.8999999999999986	25	3.62000000000000011	2.41000000000000014	0.0899999999999999967	126	0.400000000000000022	1	fluid ounce	0.0742386435890199647	366	Milk
267	Milk, canned, evaporated, with added vitamin D and without added vitamin A	31.5	42	3.16000000000000014	2.14999999999999991	0.0599999999999999978	73	0.599999999999999978	1	fluid ounce	0.0733077515063990243	367	Milk
268	Milk, dry, nonfat, calcium reduced	28.3500000000000014	100	14.6899999999999995	10.0600000000000005	0.0899999999999999967	2	1.89999999999999991	1	ounce	0.0659769763557591232	368	Milk
269	Milk, dry, nonfat, regular, without added vitamin A and vitamin D	30	109	15.5899999999999999	10.8499999999999996	0.100000000000000006	7	2	0.25	cup	0.0698169061965705079	369	Milk
270	Milk, lowfat, fluid, 1% milkfat, protein fortified, with added vitamin A and vitamin D	246	118	13.5800000000000001	9.66999999999999993	0.149999999999999994	499	3	1	cup	0.572498630811878129	370	Milk
271	Milk, nonfat, fluid, protein fortified, with added vitamin A and vitamin D (fat free and skim)	246	101	13.6799999999999997	9.74000000000000021	0.149999999999999994	499	2.70000000000000018	1	cup	0.572498630811878129	371	Milk
272	Milk, producer, fluid, 3.7% milkfat	244	156	11.3499999999999996	8	0.119999999999999996	337	3.70000000000000018	1	cup	0.56784417039877344	372	Milk
273	Milk, reduced fat, fluid, 2% milkfat, protein fortified, with added vitamin A and vitamin D	246	138	13.5099999999999998	9.72000000000000064	0.149999999999999994	12	2.70000000000000018	1	cup	0.572498630811878129	373	Milk
274	Milk, sheep, fluid	245	265	13.1300000000000008	14.6500000000000004	0.239999999999999991	360	10.3000000000000007	1	cup	0.570171400605325784	374	Milk
275	Milk, chocolate, fluid, commercial, reduced fat, with added vitamin A and vitamin D	250	190	30.3200000000000003	7.48000000000000043	0.599999999999999978	568	0	1	cup	2.37424222812500041	375	Milk chocolate
276	Milk, chocolate, fluid, commercial, whole, with added vitamin A and vitamin D	250	208	25.8500000000000014	7.91999999999999993	0.599999999999999978	245	2.20000000000000018	1	cup	2.37424222812500041	376	Milk chocolate
277	Seeds, lotus seeds, dried	32	106	20.629999999999999	4.92999999999999972	1.12999999999999989	16	0	1	cup	0.200813362495999986	377	Mixed seeds
278	Seeds, pumpkin and squash seed kernels, roasted, with salt added	118	677	17.3599999999999994	35.2100000000000009	9.51999999999999957	9	2.10000000000000009	1	cup	0.740499274203999969	378	Mixed seeds
279	Seeds, safflower seed meal, partially defatted	28.3500000000000014	97	13.8100000000000005	10.0999999999999996	1.37999999999999989	14	0	1	ounce	0.17790808833629998	379	Mixed seeds
280	Seeds, sesame flour, low-fat	28.3500000000000014	94	10.0700000000000003	14.2100000000000009	4.03000000000000025	18	0	1	ounce	0.17790808833629998	380	Mixed seeds
281	Seeds, sunflower seed kernels, oil roasted, without salt	135	799	30.8999999999999986	27.0799999999999983	5.78000000000000025	12	1.5	1	cup	0.847181373029999962	381	Mixed seeds
282	Seeds, sunflower seed kernels, toasted, without salt	134	829	27.5899999999999999	23.0599999999999987	9.13000000000000078	0	1.89999999999999991	1	cup	0.840905955451999976	382	Mixed seeds
283	Mung beans, mature seeds, sprouted, cooked, boiled, drained, without salt	124	26	5.20000000000000018	2.52000000000000002	0.810000000000000053	16	14.0999999999999996	1	cup	0.176523930043999966	383	Mung
284	Mushrooms, Chanterelle, raw	54	21	3.70000000000000018	0.800000000000000044	1.87000000000000011	0	0	1	cup	0.398493121820624963	384	Mushrooms
285	Mushrooms, portabella, grilled	121	35	5.37000000000000011	3.9700000000000002	0.479999999999999982	0	0	1	cup	0.892919772968437386	385	Mushrooms
286	Noodles, egg, dry, unenriched	38	146	27.0799999999999983	5.37999999999999989	0.719999999999999973	24	0	1	cup	0.0945110370443999898	386	Noodles
287	Noodles, egg, spinach, enriched, cooked	160	211	38.7999999999999972	8.0600000000000005	1.73999999999999999	165	0	1	cup	0.397941208607999974	387	Noodles
288	Noodles, egg, unenriched, cooked, without added salt	160	221	40.259999999999998	7.25999999999999979	0.959999999999999964	34	0	1	cup	0.397941208607999974	388	Noodles
289	Noodles, japanese, somen, cooked	176	231	48.4699999999999989	7.04000000000000004	0.92000000000000004	0	0	1	cup	0.43773532946879995	389	Noodles
290	Noodles, japanese, somen, dry	57	203	42.240000000000002	6.46999999999999975	0.75	0	0	2	ounce	0.141766555566600005	390	Noodles
291	Nuts, almond butter, plain, with salt added	16	98	3.00999999999999979	3.35000000000000009	0.560000000000000053	0	0	1	tablespoon	0.125259085616000021	391	Nuts
292	Nuts, almonds, dry roasted, without salt added	138	825	28.9899999999999984	28.9200000000000017	5.15000000000000036	1	0	1	cup	1.08035961343800002	392	Nuts
293	Nuts, butternuts, dried	120	734	14.4600000000000009	29.879999999999999	4.82000000000000028	149	3.79999999999999982	1	cup	0.93944314212000013	393	Nuts
294	Nuts, chestnuts, chinese, boiled and steamed	28.3500000000000014	43	9.53999999999999915	0.819999999999999951	0.270000000000000018	39	7	1	ounce	0.221943442325850032	394	Nuts
295	Nuts, chestnuts, european, raw, unpeeled	145	309	66.0300000000000011	3.50999999999999979	1.45999999999999996	41	62.3999999999999986	1	cup	1.1351604633950001	395	Nuts
296	Nuts, coconut cream, canned, sweetened	19	68	10.1099999999999994	0.220000000000000001	0.0200000000000000004	0	0	1	tablespoon	0.148745164169000021	396	Nuts
297	Nuts, coconut cream, raw (liquid expressed from grated meat)	15	50	1	0.540000000000000036	0.340000000000000024	0	0.400000000000000022	1	tablespoon	0.117430392765000016	397	Nuts
298	Nuts, coconut meat, dried (desiccated), not sweetened	28.3500000000000014	187	6.70000000000000018	1.94999999999999996	0.939999999999999947	0	0.400000000000000022	1	ounce	0.221943442325850032	398	Nuts
299	Nuts, coconut meat, dried (desiccated), sweetened, flaked, packaged	85	388	44.0700000000000003	2.66000000000000014	1.28000000000000003	0	0	1	cup	0.665438892335000087	399	Nuts
300	Nuts, coconut meat, dried (desiccated), toasted	28.3500000000000014	168	12.5899999999999999	1.5	0.959999999999999964	0	0.400000000000000022	1	ounce	0.221943442325850032	400	Nuts
301	Nuts, hazelnuts or filberts	115	722	19.1999999999999993	17.1900000000000013	5.40000000000000036	23	7.20000000000000018	1	cup	0.900299677865000092	401	Nuts
302	Nuts, mixed nuts, oil roasted, with peanuts, lightly salted	28.3500000000000014	172	5.96999999999999975	5.67999999999999972	0.739999999999999991	1	0.100000000000000006	1	ounce	0.221943442325850032	402	Nuts
303	Okra, frozen, cooked, boiled, drained, without salt	92	27	5.90000000000000036	1.5	0.479999999999999982	281	8.80000000000000071	0.5	cup	0.349076367739999949	403	Okra
304	Okra, frozen, unprepared	95	28	6.29999999999999982	1.6100000000000001	0.540000000000000036	332	11.8000000000000007	0.330000000000000016	95.0 g serving	0.360459292774999995	404	Okra
305	Olives, pickled, canned or bottled, green	2.70000000000000018	4	0.100000000000000006	0.0299999999999999989	0.0100000000000000002	11	0	1	2.7 g serving	0.0345461814661500027	405	Olives
306	Olives, ripe, canned (small-extra large)	8.40000000000000036	10	0.530000000000000027	0.0700000000000000067	0.280000000000000027	34	0.100000000000000006	1	tablespoon	0.107477009005800012	406	Olives
307	Onions, dehydrated flakes	5	17	4.16000000000000014	0.450000000000000011	0.0800000000000000017	1	3.79999999999999982	1	tablespoon	0.00897896884285714382	407	Onions
308	Onions, frozen, chopped, cooked, boiled, drained, without salt	15	4	0.989999999999999991	0.119999999999999996	0.0400000000000000008	0	0.400000000000000022	1	tablespoon	0.0269369065285714367	408	Onions
309	Onions, frozen, chopped, unprepared	95	28	6.48000000000000043	0.75	0.309999999999999998	33	3.10000000000000009	0.330000000000000016	95.0 g serving	0.170600408014285748	409	Onions
310	Onions, frozen, whole, cooked, boiled, drained, without salt	210	59	14.0700000000000003	1.48999999999999999	0.709999999999999964	4	10.6999999999999993	1	cup	0.377116691400000037	410	Onions
311	Onions, frozen, whole, unprepared	95	33	8.02999999999999936	0.849999999999999978	0.440000000000000002	2	7.59999999999999964	0.330000000000000016	95.0 g serving	0.170600408014285748	411	Onions
312	Onions, raw	160	64	14.9399999999999995	1.76000000000000001	0.340000000000000024	3	11.8000000000000007	1	cup	0.287327002971428602	412	Onions
313	Onions, sweet, raw	148	47	11.1699999999999999	1.17999999999999994	0.380000000000000004	1	7.09999999999999964	1	148.0 g serving	0.265777477748571467	413	Onions
314	Orange peel, raw	6	6	1.5	0.0899999999999999967	0.0500000000000000028	25	8.19999999999999929	1	tablespoon	0.0235944096000000013	414	Orange
315	Orange juice, chilled, includes from concentrate, with added calcium	249	117	28.0599999999999987	1.68999999999999995	0.320000000000000007	105	83.7000000000000028	1	cup	0.32876011783537501	415	Orange juice
316	Orange juice, chilled, includes from concentrate, with added calcium and vitamin D	249	117	28.0599999999999987	1.68999999999999995	0.320000000000000007	105	83.7000000000000028	1	cup	0.32876011783537501	416	Orange juice
317	Orange juice, frozen concentrate, unsweetened, undiluted	262	388	92.2000000000000028	6.29000000000000004	0.859999999999999987	692	379.399999999999977	1	cup	0.345924300694250009	417	Orange juice
318	Oranges, raw, California, valencias	180	88	21.3999999999999986	1.87000000000000011	0.160000000000000003	414	87.2999999999999972	1	cup	0.730171607964867242	418	Oranges
319	Oranges, raw, with peel	170	107	26.3500000000000014	2.20999999999999996	1.3600000000000001	425	120.700000000000003	1	cup	0.689606518633485766	419	Oranges
320	Papaya, canned, heavy syrup, drained	39	80	21.7699999999999996	0.0500000000000000028	0.110000000000000001	2	1.39999999999999991	1	39.0 g serving	0.430629435912000036	420	Papaya
321	Papayas, raw	145	62	15.6899999999999995	0.680000000000000049	0.359999999999999987	1378	88.2999999999999972	1	cup	1.60105815916000016	421	Papaya
322	Pasta, dry, enriched	91	338	67.9500000000000028	11.8699999999999992	3	0	0	1	cup	0.23749647356662501	422	Pasta
323	Pasta, dry, unenriched	91	338	67.9500000000000028	11.8699999999999992	1.17999999999999994	0	0	1	cup	0.23749647356662501	423	Pasta
324	Pasta, fresh-refrigerated, plain, as purchased	128	369	70.0499999999999972	14.4800000000000004	4.29000000000000004	60	0	4.5	ounce	0.334060973807999984	424	Pasta
325	Pasta, whole-wheat, dry	91	320	66.769999999999996	12.6199999999999992	3.29000000000000004	0	0	1	cup	0.23749647356662501	425	Pasta
326	Peaches, canned, extra heavy syrup pack, solids and liquids	262	252	68.2800000000000011	1.22999999999999998	0.760000000000000009	343	3.10000000000000009	1	cup	1.29347589990466649	426	Peaches
327	Peaches, canned, light syrup pack, solids and liquids	251	136	36.5200000000000031	1.12999999999999989	0.900000000000000022	889	6	1	cup	1.23916965983233318	427	Peaches
328	Peaches, canned, water pack, solids and liquids	244	59	14.9100000000000001	1.07000000000000006	0.780000000000000027	1298	7.09999999999999964	1	cup	1.20461114342266651	428	Peaches
329	Peaches, dehydrated (low-moisture), sulfured, stewed	242	322	82.6200000000000045	4.86000000000000032	5.46999999999999975	958	16.5	1	cup	1.1947372815913333	429	Peaches
330	Peanuts, all types, dry-roasted, without salt	146	857	31.0399999999999991	35.5499999999999972	2.31000000000000005	0	0	1	cup	0.769165432631777723	430	Peanuts
331	Peanuts, valencia, oil-roasted, without salt	144	848	23.4699999999999989	38.9399999999999977	2.37999999999999989	0	0	1	cup	0.758628919856000006	431	Peanuts
332	Pears, canned, light syrup pack, solids and liquids	251	143	38.0799999999999983	0.479999999999999982	0.699999999999999956	0	1.80000000000000004	1	cup	1.12260858457833335	432	Pears
333	Pears, dried, sulfured, stewed, without added sugar	255	324	86.2199999999999989	2.31999999999999984	2.60000000000000009	107	10.1999999999999993	1	cup	1.14049876122499994	433	Pears
334	Pears, raw	140	80	21.3200000000000003	0.5	0.25	35	6	1	cup	0.62615618263333328	434	Pears
335	Peas and carrots, frozen, cooked, boiled, drained, without salt	278	133	28.129999999999999	8.58999999999999986	2.60999999999999988	26449	22.5	1	278.0 g serving	1.38140002184229171	435	Peas
336	Peas, edible-podded, frozen, unprepared	144	60	10.3699999999999992	4.03000000000000025	2.87999999999999989	202	31.6999999999999993	1	cup	0.715545335055000065	436	Peas
337	Peas, edible-podded, raw	98	41	7.40000000000000036	2.74000000000000021	2.04000000000000004	1065	58.7999999999999972	1	cup	0.486968353023541689	437	Peas
338	Peas, green, raw	145	117	20.9499999999999993	7.86000000000000032	2.12999999999999989	1109	58	1	cup	0.720514399881770795	438	Peas
339	Peas, mature seeds, sprouted, raw	120	149	32.5300000000000011	10.5600000000000005	2.70999999999999996	199	12.5	1	cup	0.59628777921249998	439	Peas
340	Peppers, pasilla, dried	7	24	3.58000000000000007	0.859999999999999987	0.689999999999999947	2503	0.400000000000000022	1	7.0 g serving	0.0288822642582352886	440	Peppers
341	Peppers, sweet, green, freeze-dried	0.400000000000000022	1	0.270000000000000018	0.0700000000000000067	0.0400000000000000008	23	7.59999999999999964	1	tablespoon	0.00165041510047058814	441	Peppers
342	Persimmons, japanese, raw	168	118	31.2300000000000004	0.969999999999999973	0.25	2733	12.5999999999999996	1	168.0 g serving	2.20017636686399998	442	Persimmon
343	Grapefruit, raw, pink and red, all areas	230	97	24.5199999999999996	1.77000000000000002	0.179999999999999993	2645	71.7999999999999972	1	cup	0.445751364759999991	443	Pink
344	Yogurt, plain, whole milk, 8 grams protein per 8 ounce	170	104	7.91999999999999993	5.90000000000000036	0.0800000000000000017	168	0.800000000000000044	1	170.0 g serving	0.215354765800000014	444	Plain
345	Pomegranate juice, bottled	249	134	32.6899999999999977	0.369999999999999996	0.25	0	0	1	cup	3.89378076051300015	445	Pomegranate
346	Pork, cured, ham and water product, slice, boneless, separable lean and fat, heated, pan-broil	136	169	6.37999999999999989	20.5100000000000016	1.01000000000000001	60	0	1	136.0 g serving	0.867509347508615192	446	Pork
347	Pork, cured, ham with natural juices, spiral slice, boneless, separable lean and fat, heated, roasted	145	202	1.54000000000000004	32.1599999999999966	1.19999999999999996	62	0	1	145.0 g serving	0.924918054329038175	447	Pork
348	Pork, cured, ham, rump, bone-in, separable lean and fat, unheated	85	150	0.440000000000000002	18.9299999999999997	0.859999999999999987	5	0	3	ounce	0.542193342192884509	448	Pork
349	Pork, cured, ham, rump, bone-in, separable lean only, unheated	28.3500000000000014	35	0.0899999999999999967	6.92999999999999972	0.309999999999999998	0	0	1	ounce	0.180837426484332653	449	Pork
350	Pork, cured, ham, shank, bone-in, separable lean and fat, unheated	28.3500000000000014	50	0.119999999999999996	6.12999999999999989	0.260000000000000009	2	0	1	ounce	0.180837426484332653	450	Pork
351	Pork, cured, ham, shank, bone-in, separable lean only, unheated	28.3500000000000014	35	0.0500000000000000028	6.74000000000000021	0.280000000000000027	0	0	1	ounce	0.180837426484332653	451	Pork
352	Pork, fresh, enhanced, loin, tenderloin, separable lean only, raw	85	90	0	17.3299999999999983	0.780000000000000027	0	0	3	ounce	0.542193342192884509	452	Pork
353	Pork, fresh, leg (ham), whole, separable lean and fat, raw	28.3500000000000014	69	0	4.94000000000000039	0.239999999999999991	2	0.200000000000000011	1	ounce	0.180837426484332653	453	Pork
354	Pork, fresh, leg (ham), whole, separable lean only, cooked, roasted	135	285	0	39.7000000000000028	1.51000000000000001	12	0.5	1	cup	0.861130602306345971	454	Pork
355	Pork, fresh, loin, blade (chops or roasts), boneless, separable lean and fat only, raw	85	133	0.650000000000000022	17.4600000000000009	0.630000000000000004	12	0	3	ounce	0.542193342192884509	455	Pork
356	Pork, fresh, loin, blade (chops or roasts), boneless, separable lean only, raw	85	105	0.699999999999999956	18.1499999999999986	0.650000000000000022	8	0	3	ounce	0.542193342192884509	456	Pork
357	Pork, fresh, loin, blade (chops), boneless, separable lean only, boneless, cooked, broiled	85	144	0.760000000000000009	22.2199999999999989	0.780000000000000027	7	0	3	ounce	0.542193342192884509	457	Pork
358	Pork, fresh, loin, blade (roasts), boneless, separable lean and fat, cooked, roasted	85	169	0	22.5100000000000016	0.760000000000000009	7	0	3	ounce	0.542193342192884509	458	Pork
359	Pork, fresh, loin, center rib (roasts), bone-in, separable lean only, cooked, roasted	85	175	0	24.5	0.869999999999999996	8	0	3	ounce	0.542193342192884509	459	Pork
360	Pork, fresh, loin, country-style ribs, separable lean and fat, bone-in, cooked, broiled	122	317	0	31.2100000000000009	1.16999999999999993	21	0	1	122.0 g serving	0.778206914676845996	460	Pork
361	Pork, fresh, loin, country-style ribs, separable lean only, bone-in, cooked, broiled	122	264	0	33.9500000000000028	1.23999999999999999	11	0	1	122.0 g serving	0.778206914676845996	461	Pork
362	Pork, fresh, loin, sirloin (roasts), bone-in, separable lean and fat, cooked, roasted	85	196	0	22.6400000000000006	0.800000000000000044	5	0	3	ounce	0.542193342192884509	462	Pork
363	Pork, fresh, loin, tenderloin, separable lean and fat, with added solution, raw	85	97	0	17.1400000000000006	0.770000000000000018	0	0	3	ounce	0.542193342192884509	463	Pork
364	Pork, fresh, loin, top loin (roasts), boneless, separable lean only, cooked, roasted	85	147	0	23.1499999999999986	0.540000000000000036	0	0	3	ounce	0.542193342192884509	464	Pork
365	Pork, fresh, loin, whole, separable lean and fat, cooked, broiled	85	206	0	23.2199999999999989	0.739999999999999991	6	0.5	3	ounce	0.542193342192884509	465	Pork
366	Pork, fresh, shoulder, (Boston butt), blade (steaks), separable lean and fat, with added solution, cooked, braised	85	224	0.0299999999999999989	21.9600000000000009	1.45999999999999996	0	0	3	ounce	0.542193342192884509	466	Pork
367	Pork, fresh, shoulder, (Boston butt), blade (steaks), separable lean and fat,with added solution, raw	85	144	0.140000000000000013	14.6099999999999994	0.819999999999999951	0	0	3	ounce	0.542193342192884509	467	Pork
368	Pork, fresh, shoulder, blade, boston (roasts), separable lean and fat, cooked, roasted	85	229	0	19.6400000000000006	1.22999999999999998	6	0.599999999999999978	3	ounce	0.542193342192884509	468	Pork
369	Pork, fresh, shoulder, blade, boston (steaks), separable lean only, cooked, broiled	85	193	0	22.7300000000000004	1.33000000000000007	7	0.299999999999999989	3	ounce	0.542193342192884509	469	Pork
370	Pork, fresh, shoulder, whole, separable lean and fat, cooked, roasted	135	394	0	31.4299999999999997	1.78000000000000003	11	0.699999999999999956	1	cup	0.861130602306345971	470	Pork
371	Pork, fresh, variety meats and by-products, brain, cooked, braised	85	117	0	10.3200000000000003	1.55000000000000004	0	11.9000000000000004	3	ounce	0.542193342192884509	471	Pork
372	Pork, fresh, variety meats and by-products, feet, raw	28.3500000000000014	60	0	6.57000000000000028	0.160000000000000003	0	0	1	ounce	0.180837426484332653	472	Pork
373	Pork, fresh, variety meats and by-products, pancreas, raw	28.3500000000000014	56	0	5.25999999999999979	0.599999999999999978	0	4.29999999999999982	1	ounce	0.180837426484332653	473	Pork
374	Pork, ground, 96% lean / 4% fat, cooked, crumbles	85	159	0	25.9699999999999989	0.890000000000000013	0	0	3	ounce	0.542193342192884509	474	Pork
375	Pork, ground, 96% lean / 4% fat, raw	113	137	0.239999999999999991	23.8399999999999999	0.969999999999999973	0	0	4	ounce	0.72079820785642279	475	Pork
376	Pork, Leg sirloin tip roast, boneless, separable lean and fat, raw	85	96	0	19.4499999999999993	0.680000000000000049	0	0	3	ounce	0.542193342192884509	476	Pork
377	Sweet potato, canned, syrup pack, drained solids	196	212	49.7100000000000009	2.50999999999999979	1.8600000000000001	17971	21.1999999999999993	1	cup	0.348357730796181264	477	Potato
378	Sweet potato, cooked, baked in skin, flesh, with salt	114	105	23.6099999999999994	2.29000000000000004	0.790000000000000036	0	22.3000000000000007	1	114.0 g serving	0.202616231177370765	478	Potato
379	Potatoes, baked, skin, without salt	58	115	26.7100000000000009	2.49000000000000021	4.08000000000000007	6	7.79999999999999982	1	58.0 g serving	0.165946846024666667	479	Potatoes
380	Potatoes, boiled, cooked without skin, flesh, with salt	78	67	15.6099999999999994	1.33000000000000007	0.239999999999999991	2	5.79999999999999982	0.5	cup	0.223169896378000027	480	Potatoes
381	Potatoes, boiled, cooked without skin, flesh, without salt	78	67	15.6099999999999994	1.33000000000000007	0.239999999999999991	2	5.79999999999999982	0.5	cup	0.223169896378000027	481	Potatoes
382	Potatoes, flesh and skin, raw	75	58	13.1199999999999992	1.54000000000000004	0.609999999999999987	2	14.8000000000000007	0.5	cup	0.214586438825000031	482	Potatoes
383	Potatoes, french fried, cottage-cut, salt not added in processing, frozen, as purchased	65	99	15.5899999999999999	1.57000000000000006	0.680000000000000049	0	5.5	10	65.0 g serving	0.185974913648333351	483	Potatoes
384	Potatoes, mashed, dehydrated, flakes without milk, dry form	60	212	48.7000000000000028	5	0.729999999999999982	7	48.6000000000000014	1	cup	0.171669151060000025	484	Potatoes
385	Potatoes, mashed, dehydrated, prepared from flakes without milk, whole milk and butter added	210	204	22.8299999999999983	3.7200000000000002	0.340000000000000024	361	20.3999999999999986	1	cup	0.600842028710000031	485	Potatoes
386	Potatoes, mashed, dehydrated, prepared from granules with milk, water and margarine added	210	244	33.8699999999999974	4.46999999999999975	0.419999999999999984	449	13.5999999999999996	1	cup	0.600842028710000031	486	Potatoes
387	Potatoes, mashed, dehydrated, prepared from granules without milk, whole milk and butter added	210	227	30.1600000000000001	4.29999999999999982	0.400000000000000022	384	12.5999999999999996	1	cup	0.600842028710000031	487	Potatoes
388	Potatoes, roasted, salt added in processing, frozen, unprepared	85	110	22.2300000000000004	1.8899999999999999	0.419999999999999984	0	1.39999999999999991	3	ounce	0.243197964001666711	488	Potatoes
389	Potatoes, Russet, flesh and skin, baked	299	290	64.1099999999999994	7.86000000000000032	3.20000000000000018	30	24.8000000000000007	1	299.0 g serving	0.855484602782333403	489	Potatoes
390	Potatoes, scalloped, home-prepared with butter	245	216	26.4100000000000001	7.03000000000000025	1.39999999999999991	331	26	1	cup	0.700982366828333481	490	Potatoes
391	Rice flour, brown	158	574	120.840000000000003	11.4199999999999999	3.12999999999999989	0	0	1	cup	0.312902296595020779	491	Rice
392	Rice noodles, cooked	176	190	42.259999999999998	3.14999999999999991	0.25	0	0	1	cup	0.348549393675466224	492	Rice
393	Rice, white, long-grain, regular, cooked, unenriched, with salt	158	205	44.509999999999998	4.25	0.320000000000000007	0	0	1	cup	0.312902296595020779	493	Rice
394	Rice, white, long-grain, regular, raw, unenriched	185	675	147.909999999999997	13.1899999999999995	1.47999999999999998	0	0	1	cup	0.36637294221568889	494	Rice
395	Rice, white, medium-grain, cooked, unenriched	186	242	53.1799999999999997	4.42999999999999972	0.369999999999999996	0	0	1	cup	0.368353336497935835	495	Rice
396	Fish, roe, mixed species, cooked, dry heat	28.3500000000000014	58	0.540000000000000036	8.10999999999999943	0.220000000000000001	86	4.59999999999999964	1	ounce	0.182259408668400014	496	Roe
397	Fish, salmon, chum, cooked, dry heat	85	131	0	21.9499999999999993	0.599999999999999978	97	0	3	ounce	0.853890778549285745	497	Salmon
398	Fish, salmon, coho, wild, cooked, moist heat	85	156	0	23.2600000000000016	0.599999999999999978	92	0.800000000000000044	3	ounce	0.853890778549285745	498	Salmon
399	Fish, salmon, pink, canned, drained solids	85	117	0	19.6400000000000006	0.650000000000000022	55	0	3	ounce	0.853890778549285745	499	Salmon
400	Fish, salmon, pink, canned, without salt, solids with bone and liquid	85	118	0	16.8099999999999987	0.709999999999999964	47	0	3	ounce	0.853890778549285745	500	Salmon
401	Soybeans, green, cooked, boiled, drained, without salt	180	254	19.8900000000000006	22.2300000000000004	4.5	281	30.6000000000000014	1	cup	0.720056843820000125	501	Soybeans
402	Soybeans, green, raw	256	376	28.2899999999999991	33.1499999999999986	9.08999999999999986	461	74.2000000000000028	1	cup	1.02408084454400017	502	Soybeans
403	Soybeans, mature seeds, sprouted, cooked, steamed	94	76	6.13999999999999968	7.95999999999999996	1.22999999999999998	38	7.79999999999999982	1	cup	0.3760296851060001	503	Soybeans
404	Pasta, fresh-refrigerated, spinach, as purchased	128	370	71.3199999999999932	14.4100000000000001	4.21999999999999975	308	0	4.5	ounce	0.554280162257454689	504	Spinach
405	Spinach, canned, regular pack, solids and liquids	234	44	6.83000000000000007	4.94000000000000039	3.70000000000000018	18917	31.6000000000000014	1	cup	1.01329342162690939	505	Spinach
406	Spinach, raw	30	7	1.09000000000000008	0.859999999999999987	0.810000000000000053	2813	8.40000000000000036	1	cup	0.129909413029090953	506	Spinach
407	Squash, summer, crookneck and straightneck, frozen, cooked, boiled, drained, without salt	192	48	10.6400000000000006	2.45999999999999996	1	386	13.0999999999999996	1	cup	0.393643858560000004	507	Squash
408	Squash, summer, zucchini, includes skin, cooked, boiled, drained, without salt	180	27	4.83999999999999986	2.04999999999999982	0.67000000000000004	2011	23.1999999999999993	1	cup	0.369041117400000063	508	Squash
409	Squash, summer, zucchini, italian style, canned	227	66	15.5500000000000007	2.33999999999999986	1.54000000000000004	1224	5.20000000000000018	1	cup	0.465401853609999971	509	Squash
410	Squash, winter, acorn, cooked, boiled, mashed, with salt	245	83	21.5399999999999991	1.6399999999999999	1.37000000000000011	632	15.9000000000000004	1	cup	0.50230596535000005	510	Squash
411	Squash, winter, acorn, cooked, boiled, mashed, without salt	245	83	21.5399999999999991	1.6399999999999999	1.37000000000000011	2002	15.9000000000000004	1	cup	0.50230596535000005	511	Squash
412	Squash, winter, butternut, cooked, baked, without salt	205	82	21.5	1.84000000000000008	1.22999999999999998	22868	31	1	cup	0.420296828150000024	512	Squash
413	Squash, winter, butternut, frozen, cooked, boiled, without salt	240	94	24.120000000000001	2.95000000000000018	1.3899999999999999	8014	8.40000000000000036	1	cup	0.492054823199999991	513	Squash
414	Squash, winter, hubbard, baked, with salt	205	102	22.1600000000000001	5.08000000000000007	0.959999999999999964	13745	19.5	1	cup	0.420296828150000024	514	Squash
415	Squash, winter, hubbard, cooked, boiled, mashed, with salt	236	71	15.25	3.49000000000000021	0.660000000000000031	9452	15.3000000000000007	1	cup	0.483853909480000011	515	Squash
416	Squash, winter, hubbard, cooked, boiled, mashed, without salt	236	71	15.25	3.49000000000000021	0.660000000000000031	9452	15.3000000000000007	1	cup	0.483853909480000011	516	Squash
417	Tangerines, (mandarin oranges), raw	195	103	26.0100000000000016	1.58000000000000007	0.28999999999999998	1328	52.1000000000000014	1	cup	0.607425176279999923	517	Tangerine
418	Taro, tahitian, cooked, without salt	137	60	9.38000000000000078	5.70000000000000018	2.14000000000000012	2417	52.1000000000000014	1	cup	2.41094676687100007	518	Taro
419	MORI-NU, Tofu, silken, firm	84	52	2.02000000000000002	5.79999999999999982	0.869999999999999996	0	0	1	84.0 g serving	0.833700374387999932	519	Tofu
420	Tofu, raw, firm, prepared with calcium sulfate	126	181	3.5	21.7600000000000016	3.35000000000000009	209	0.299999999999999989	0.5	cup	1.25055056158199984	520	Tofu
421	Tomato products, canned, puree, with salt added	250	95	22.4499999999999993	4.12000000000000011	4.45000000000000018	1275	26.5	1	cup	0.703947051123862577	521	Tomato
422	Tomato products, canned, puree, without salt added	250	95	22.4499999999999993	4.12000000000000011	4.45000000000000018	1275	26.5	1	cup	0.703947051123862577	522	Tomato
423	Tomato products, canned, sauce, with onions	245	103	24.3500000000000014	3.81999999999999984	2.2799999999999998	2082	31.1000000000000014	1	cup	0.689868110101385379	523	Tomato
424	Tomato products, canned, sauce, with onions, green peppers, and celery	250	102	21.9200000000000017	2.35000000000000009	1.89999999999999991	2025	33	1	cup	0.703947051123862577	524	Tomato
425	Tomato products, canned, sauce, with tomato tidbits	244	78	17.3000000000000007	3.2200000000000002	1.65999999999999992	1954	52.5	1	cup	0.687052321896890028	525	Tomato
426	Tomato juice, canned, with salt added	243	41	8.58000000000000007	2.06999999999999984	0.949999999999999956	1094	170.300000000000011	1	cup	0.234852057396000014	526	Tomato juice
427	Tomato juice, canned, without salt added	243	41	8.58000000000000007	2.06999999999999984	0.949999999999999956	1094	170.300000000000011	1	cup	0.234852057396000014	527	Tomato juice
428	Tomatoes, red, ripe, canned, packed in tomato juice	240	38	8.33000000000000007	1.89999999999999991	1.37000000000000011	979	30.1999999999999993	1	cup	0.743434778787692263	528	Tomatoes
429	Tomatoes, red, ripe, canned, stewed	255	66	15.7799999999999994	2.31999999999999984	3.39000000000000012	439	20.1000000000000014	1	cup	0.789899452461922946	529	Tomatoes
430	Dessert topping, powdered	43	248	22.5899999999999999	2.10999999999999988	0.0100000000000000002	0	0	1.5	ounce	0.37747881413900003	530	Topping
431	Dessert topping, powdered, 1.5 ounce prepared with 1/2 cup milk	80	155	13.6999999999999993	2.89000000000000012	0.0299999999999999989	96	0.599999999999999978	1	cup	0.702286165840000032	531	Topping
432	Fish, seatrout, mixed species, cooked, dry heat	85	113	0	18.2399999999999984	0.299999999999999989	98	0	3	ounce	0.874977335272000167	532	Trout
433	Fish, trout, rainbow, farmed, cooked, dry heat	71	119	0	16.8999999999999986	0.260000000000000009	214	2.10000000000000009	1	71.0 g serving	0.730863421227200161	533	Trout
434	Fish, tuna, skipjack, fresh, cooked, dry heat	85	112	0	23.9800000000000004	1.3600000000000001	51	0.800000000000000044	3	ounce	1.12692616895437481	534	Tuna
435	Fish, tuna, white, canned in oil, drained solids	85	158	0	22.5500000000000007	0.550000000000000044	14	0	3	ounce	1.12692616895437481	535	Tuna
436	Turkey from whole, light meat, meat only, with added solution, cooked, roasted	85	108	0	22.9200000000000017	0.469999999999999973	9	0	3	ounce	0.475362634599523881	536	Turkey
437	Turkey, breast, from whole bird, meat only, roasted	85	125	0	25.6099999999999994	0.599999999999999978	9	0	3	ounce	0.475362634599523881	537	Turkey
438	Turkey, dark meat from whole, meat and skin, cooked, roasted	85	175	0.0599999999999999978	23.1799999999999997	1.22999999999999998	40	0	1	85.0 g serving	0.475362634599523881	538	Turkey
439	Turkey, drumstick, from whole bird, meat only, raw	85	93	0.119999999999999996	20.1099999999999994	0.619999999999999996	17	0	3	ounce	0.475362634599523881	539	Turkey
440	Turkey, retail parts, thigh, meat and skin, cooked, roasted	85	156	0.349999999999999978	20.3599999999999994	1.28000000000000003	39	0	3	ounce	0.475362634599523881	540	Turkey
441	Turnip greens and turnips, frozen, cooked, boiled, drained, with salt	163	55	7.73000000000000043	4.87000000000000011	2.85000000000000009	14038	29.6999999999999993	1	cup	0.523941959424615522	541	Turnip
442	Turnip greens, cooked, boiled, drained, without salt	144	29	6.28000000000000025	1.6399999999999999	1.14999999999999991	10980	39.5	1	cup	0.462868970289230852	542	Turnip
443	Turnip greens, frozen, cooked, boiled, drained, with salt	82	24	4.08000000000000007	2.75	1.59000000000000008	8827	17.8999999999999986	0.5	cup	0.263578163636923102	543	Turnip
444	Turnip greens, frozen, cooked, boiled, drained, without salt	164	48	8.16999999999999993	5.49000000000000021	3.18000000000000016	17655	35.7999999999999972	1	cup	0.527156327273846204	544	Turnip
445	Turnip greens, frozen, unprepared	82	18	3.00999999999999979	2.0299999999999998	1.23999999999999999	5071	22	0.5	cup	0.263578163636923102	545	Turnip
446	Turnips, frozen, cooked, boiled, drained, without salt	156	36	6.79000000000000004	2.39000000000000012	1.53000000000000003	0	6.09999999999999964	1	cup	0.266813665091999941	546	Turnips
447	Veal, Australian, shank, hind, bone-in, separable lean only, raw	85	104	0	17.3099999999999987	2.62000000000000011	0	0	3	ounce	1.21027805538749966	547	Veal
448	Veal, breast, separable fat, cooked	28.3500000000000014	148	0	2.66000000000000014	0.130000000000000004	0	0	1	ounce	0.403663327885124934	548	Veal
449	Veal, breast, whole, boneless, separable lean and fat, cooked, braised	85	226	0	22.9200000000000017	0.650000000000000022	0	0	3	ounce	1.21027805538749966	549	Veal
450	Veal, breast, whole, boneless, separable lean and fat, raw	28.3500000000000014	59	0	4.95000000000000018	0.149999999999999994	0	0	1	ounce	0.403663327885124934	550	Veal
451	Veal, breast, whole, boneless, separable lean only, cooked, braised	85	185	0	25.7699999999999996	0.709999999999999964	0	0	3	ounce	1.21027805538749966	551	Veal
452	Veal, shank (fore and hind), separable lean and fat, cooked, braised	85	162	0	26.8099999999999987	1.06000000000000005	0	0	3	ounce	1.21027805538749966	552	Veal
453	Veal, shank (fore and hind), separable lean and fat, raw	28.3500000000000014	32	0	5.42999999999999972	0.220000000000000001	0	0	1	ounce	0.403663327885124934	553	Veal
454	Veal, shank (fore and hind), separable lean only, raw	28.3500000000000014	31	0	5.46999999999999975	0.220000000000000001	0	0	1	ounce	0.403663327885124934	554	Veal
455	Vegetable juice cocktail, canned	253	56	9.78999999999999915	2.35000000000000009	0.709999999999999964	1786	137.400000000000006	1	cup	1.59231912342800008	555	Vegetable juice
456	Wheat flour, white, all-purpose, enriched, calcium-fortified	125	455	95.3900000000000006	12.9100000000000001	5.79999999999999982	0	0	1	cup	0.445821780999999917	556	Wheat
457	Wheat flour, white, all-purpose, unenriched	125	455	95.3900000000000006	12.9100000000000001	1.45999999999999996	0	0	1	cup	0.445821780999999917	557	Wheat
458	Wheat flour, white, bread, enriched	137	495	99.3700000000000045	16.4100000000000001	6.04000000000000004	3	0	1	cup	0.488620671975999898	558	Wheat
\.


--
-- Data for Name: prices_table; Type: TABLE DATA; Schema: public; Owner: username
--

COPY prices_table (index, country, location, indicator, measure, unit, date, value) FROM stdin;
0	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/2/2014 12:00:00 AM	0.160000000000000003
1	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/23/2014 12:00:00 AM	0.165000000000000008
2	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/30/2014 12:00:00 AM	0.165000000000000008
3	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/2/2014 12:00:00 AM	0.160000000000000003
4	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/23/2014 12:00:00 AM	0.165000000000000008
5	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	6/30/2014 12:00:00 AM	0.165000000000000008
6	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/7/2014 12:00:00 AM	0.165000000000000008
7	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/21/2014 12:00:00 AM	0.165000000000000008
8	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/28/2014 12:00:00 AM	0.165000000000000008
9	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/7/2014 12:00:00 AM	0.165000000000000008
10	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/21/2014 12:00:00 AM	0.165000000000000008
11	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	7/28/2014 12:00:00 AM	0.165000000000000008
12	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/4/2014 12:00:00 AM	0.170000000000000012
13	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/25/2014 12:00:00 AM	0.179999999999999993
14	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/4/2014 12:00:00 AM	0.170000000000000012
15	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/25/2014 12:00:00 AM	0.179999999999999993
16	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/17/2015 12:00:00 AM	0.190000000000000002
17	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/24/2015 12:00:00 AM	0.190000000000000002
18	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	8/31/2015 12:00:00 AM	0.195000000000000007
19	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	9/7/2015 12:00:00 AM	0.195000000000000007
20	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	9/14/2015 12:00:00 AM	0.195000000000000007
21	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	9/21/2015 12:00:00 AM	0.200000000000000011
22	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	9/28/2015 12:00:00 AM	0.200000000000000011
23	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	10/5/2015 12:00:00 AM	0.25
24	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	10/12/2015 12:00:00 AM	0.299999999999999989
25	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	10/19/2015 12:00:00 AM	0.299999999999999989
26	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	10/26/2015 12:00:00 AM	0.299999999999999989
27	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	11/2/2015 12:00:00 AM	0.325000000000000011
28	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	11/9/2015 12:00:00 AM	0.349999999999999978
29	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	11/16/2015 12:00:00 AM	0.349999999999999978
30	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	11/23/2015 12:00:00 AM	0.325000000000000011
31	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	11/30/2015 12:00:00 AM	0.349999999999999978
32	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	12/7/2015 12:00:00 AM	0.349999999999999978
33	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	12/14/2015 12:00:00 AM	0.424999999999999989
34	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	12/21/2015 12:00:00 AM	0.349999999999999978
35	Somalia	All Locations	Loaf of white bread	USD	USD/450 g	12/28/2015 12:00:00 AM	0.400000000000000022
36	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.849999999999999978
37	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.859999999999999987
38	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.859999999999999987
39	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.849999999999999978
40	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.859999999999999987
41	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.859999999999999987
42	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.859999999999999987
43	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.859999999999999987
44	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.864999999999999991
45	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.859999999999999987
46	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.859999999999999987
47	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.864999999999999991
48	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.864999999999999991
49	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.864999999999999991
50	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.864999999999999991
51	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.864999999999999991
52	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.819999999999999951
53	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.949999999999999956
54	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.900000000000000022
55	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.834999999999999964
56	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.800000000000000044
57	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.949999999999999956
58	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.974999999999999978
59	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	10/5/2015 12:00:00 AM	1
60	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	10/12/2015 12:00:00 AM	1.05000000000000004
61	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	10/19/2015 12:00:00 AM	1.05000000000000004
62	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	10/26/2015 12:00:00 AM	1.05000000000000004
63	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	11/2/2015 12:00:00 AM	1.05000000000000004
64	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	11/9/2015 12:00:00 AM	1.05000000000000004
65	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	11/16/2015 12:00:00 AM	1
66	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	11/23/2015 12:00:00 AM	1.05000000000000004
67	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.900000000000000022
68	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.849999999999999978
69	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.824999999999999956
70	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.900000000000000022
71	Somalia	All Locations	White rice, 25% broken	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.800000000000000044
72	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
73	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.455000000000000016
74	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.455000000000000016
75	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
76	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.455000000000000016
77	Somalia	All Locations	Wheat flour	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.455000000000000016
78	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.455000000000000016
79	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.455000000000000016
80	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.455000000000000016
81	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.455000000000000016
82	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.455000000000000016
83	Somalia	All Locations	Wheat flour	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.455000000000000016
84	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.46000000000000002
85	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.46000000000000002
86	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.46000000000000002
87	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.46000000000000002
88	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.474999999999999978
89	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.574999999999999956
90	Somalia	All Locations	Wheat flour	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.550000000000000044
91	Somalia	All Locations	Wheat flour	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.574999999999999956
92	Somalia	All Locations	Wheat flour	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.550000000000000044
93	Somalia	All Locations	Wheat flour	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.574999999999999956
94	Somalia	All Locations	Wheat flour	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.574999999999999956
95	Somalia	All Locations	Wheat flour	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.599999999999999978
96	Somalia	All Locations	Wheat flour	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.599999999999999978
97	Somalia	All Locations	Wheat flour	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.599999999999999978
98	Somalia	All Locations	Wheat flour	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.650000000000000022
99	Somalia	All Locations	Wheat flour	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.699999999999999956
100	Somalia	All Locations	Wheat flour	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.724999999999999978
101	Somalia	All Locations	Wheat flour	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.775000000000000022
102	Somalia	All Locations	Wheat flour	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.800000000000000044
103	Somalia	All Locations	Wheat flour	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.699999999999999956
104	Somalia	All Locations	Wheat flour	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.724999999999999978
105	Somalia	All Locations	Wheat flour	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.75
106	Somalia	All Locations	Wheat flour	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.785000000000000031
107	Somalia	All Locations	Wheat flour	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.849999999999999978
108	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.3600000000000001
109	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.33000000000000007
110	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
111	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.3600000000000001
112	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.33000000000000007
113	Somalia	All Locations	White maize flour	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
114	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
115	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.33000000000000007
116	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.30000000000000004
117	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
118	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.33000000000000007
119	Somalia	All Locations	White maize flour	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.30000000000000004
120	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.3600000000000001
121	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.30000000000000004
122	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.3600000000000001
123	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.30000000000000004
124	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/17/2015 12:00:00 AM	1.125
125	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/24/2015 12:00:00 AM	1
126	Somalia	All Locations	White maize flour	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.849999999999999978
127	Somalia	All Locations	White maize flour	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.800000000000000044
128	Somalia	All Locations	White maize flour	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.724999999999999978
129	Somalia	All Locations	White maize flour	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.75
130	Somalia	All Locations	White maize flour	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.699999999999999956
131	Somalia	All Locations	White maize flour	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.775000000000000022
132	Somalia	All Locations	White maize flour	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.800000000000000044
133	Somalia	All Locations	White maize flour	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.650000000000000022
134	Somalia	All Locations	White maize flour	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.550000000000000044
135	Somalia	All Locations	White maize flour	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.625
136	Somalia	All Locations	White maize flour	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.650000000000000022
137	Somalia	All Locations	White maize flour	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.724999999999999978
138	Somalia	All Locations	White maize flour	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.724999999999999978
139	Somalia	All Locations	White maize flour	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.675000000000000044
140	Somalia	All Locations	White maize flour	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.699999999999999956
141	Somalia	All Locations	White maize flour	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.75
142	Somalia	All Locations	White maize flour	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.75
143	Somalia	All Locations	White maize flour	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.724999999999999978
144	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.54000000000000004
145	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.44999999999999996
146	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.3600000000000001
147	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.54000000000000004
148	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.44999999999999996
149	Somalia	All Locations	Maize grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.3600000000000001
150	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.3600000000000001
151	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.44999999999999996
152	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.3600000000000001
153	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.3600000000000001
154	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.44999999999999996
155	Somalia	All Locations	Maize grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.3600000000000001
156	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.44999999999999996
157	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.3600000000000001
158	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.44999999999999996
159	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.3600000000000001
160	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/17/2015 12:00:00 AM	1.10499999999999998
161	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.650000000000000022
162	Somalia	All Locations	Maize grain	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.675000000000000044
163	Somalia	All Locations	Maize grain	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.550000000000000044
164	Somalia	All Locations	Maize grain	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.550000000000000044
165	Somalia	All Locations	Maize grain	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.650000000000000022
166	Somalia	All Locations	Maize grain	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.675000000000000044
167	Somalia	All Locations	Maize grain	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.650000000000000022
168	Somalia	All Locations	Maize grain	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.550000000000000044
169	Somalia	All Locations	Maize grain	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.5
170	Somalia	All Locations	Maize grain	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.574999999999999956
171	Somalia	All Locations	Maize grain	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.550000000000000044
172	Somalia	All Locations	Maize grain	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.574999999999999956
173	Somalia	All Locations	Maize grain	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.599999999999999978
174	Somalia	All Locations	Maize grain	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.675000000000000044
175	Somalia	All Locations	Maize grain	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.574999999999999956
176	Somalia	All Locations	Maize grain	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.675000000000000044
177	Somalia	All Locations	Maize grain	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.675000000000000044
178	Somalia	All Locations	Maize grain	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.675000000000000044
179	Somalia	All Locations	Maize grain	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.675000000000000044
180	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.630000000000000004
181	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.614999999999999991
182	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.599999999999999978
183	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.630000000000000004
184	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.614999999999999991
185	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.599999999999999978
186	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.599999999999999978
187	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.614999999999999991
188	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.614999999999999991
189	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.599999999999999978
190	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.614999999999999991
191	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.614999999999999991
192	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.614999999999999991
193	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.625
194	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.614999999999999991
195	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.625
196	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.550000000000000044
197	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.599999999999999978
198	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.599999999999999978
199	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.5
200	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.5
201	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.599999999999999978
202	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.675000000000000044
203	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.599999999999999978
204	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.550000000000000044
205	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.5
206	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.574999999999999956
207	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.599999999999999978
208	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.625
209	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.574999999999999956
210	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.675000000000000044
211	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.574999999999999956
212	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.550000000000000044
213	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.650000000000000022
214	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.614999999999999991
215	Somalia	All Locations	Millet whole grain	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.599999999999999978
216	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.34000000000000008
217	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.32000000000000006
218	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
219	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.34000000000000008
220	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.32000000000000006
221	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
222	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
223	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.32000000000000006
224	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.32000000000000006
225	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
226	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.32000000000000006
227	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.32000000000000006
228	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.32000000000000006
229	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.32000000000000006
230	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.32000000000000006
231	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.32000000000000006
232	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/17/2015 12:00:00 AM	1.125
233	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.599999999999999978
234	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.599999999999999978
235	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.5
236	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.469999999999999973
237	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.599999999999999978
238	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.650000000000000022
239	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.599999999999999978
240	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.550000000000000044
241	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.625
242	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.574999999999999956
243	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.574999999999999956
244	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.625
245	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.574999999999999956
246	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.650000000000000022
247	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.599999999999999978
248	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.550000000000000044
249	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.599999999999999978
250	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.650000000000000022
251	Somalia	All Locations	Sorghum white whole grain	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.599999999999999978
252	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/2/2014 12:00:00 AM	6.29999999999999982
253	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/23/2014 12:00:00 AM	5.65000000000000036
254	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/30/2014 12:00:00 AM	5.65000000000000036
255	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/2/2014 12:00:00 AM	6.29999999999999982
256	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/23/2014 12:00:00 AM	5.65000000000000036
257	Somalia	All Locations	Beef with bones	USD	USD/1 kg	6/30/2014 12:00:00 AM	5.65000000000000036
258	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/7/2014 12:00:00 AM	5.65000000000000036
259	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/21/2014 12:00:00 AM	5.65000000000000036
260	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/28/2014 12:00:00 AM	5.67499999999999982
261	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/7/2014 12:00:00 AM	5.65000000000000036
262	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/21/2014 12:00:00 AM	5.65000000000000036
263	Somalia	All Locations	Beef with bones	USD	USD/1 kg	7/28/2014 12:00:00 AM	5.67499999999999982
264	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/4/2014 12:00:00 AM	5.65000000000000036
265	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/25/2014 12:00:00 AM	5.67499999999999982
266	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/4/2014 12:00:00 AM	5.65000000000000036
267	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/25/2014 12:00:00 AM	5.67499999999999982
268	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/17/2015 12:00:00 AM	4.63499999999999979
269	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/24/2015 12:00:00 AM	4.25
270	Somalia	All Locations	Beef with bones	USD	USD/1 kg	8/31/2015 12:00:00 AM	4.25
271	Somalia	All Locations	Beef with bones	USD	USD/1 kg	9/7/2015 12:00:00 AM	4.25
272	Somalia	All Locations	Beef with bones	USD	USD/1 kg	9/14/2015 12:00:00 AM	4.25
273	Somalia	All Locations	Beef with bones	USD	USD/1 kg	9/21/2015 12:00:00 AM	4.5
274	Somalia	All Locations	Beef with bones	USD	USD/1 kg	9/28/2015 12:00:00 AM	4.5
275	Somalia	All Locations	Beef with bones	USD	USD/1 kg	10/5/2015 12:00:00 AM	4.5
276	Somalia	All Locations	Beef with bones	USD	USD/1 kg	10/12/2015 12:00:00 AM	4.5
277	Somalia	All Locations	Beef with bones	USD	USD/1 kg	10/19/2015 12:00:00 AM	4.75
278	Somalia	All Locations	Beef with bones	USD	USD/1 kg	10/26/2015 12:00:00 AM	5.25
279	Somalia	All Locations	Beef with bones	USD	USD/1 kg	11/2/2015 12:00:00 AM	4.75
280	Somalia	All Locations	Beef with bones	USD	USD/1 kg	11/9/2015 12:00:00 AM	5.25
281	Somalia	All Locations	Beef with bones	USD	USD/1 kg	11/16/2015 12:00:00 AM	4.5
282	Somalia	All Locations	Beef with bones	USD	USD/1 kg	11/23/2015 12:00:00 AM	4.375
283	Somalia	All Locations	Beef with bones	USD	USD/1 kg	11/30/2015 12:00:00 AM	4.625
284	Somalia	All Locations	Beef with bones	USD	USD/1 kg	12/7/2015 12:00:00 AM	4.5
285	Somalia	All Locations	Beef with bones	USD	USD/1 kg	12/14/2015 12:00:00 AM	4.75
286	Somalia	All Locations	Beef with bones	USD	USD/1 kg	12/21/2015 12:00:00 AM	4.67499999999999982
287	Somalia	All Locations	Beef with bones	USD	USD/1 kg	12/28/2015 12:00:00 AM	4.40000000000000036
288	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/2/2014 12:00:00 AM	10.5
289	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/23/2014 12:00:00 AM	9.5
290	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/30/2014 12:00:00 AM	9.5
291	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/2/2014 12:00:00 AM	10.5
292	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/23/2014 12:00:00 AM	9.5
293	Somalia	All Locations	Goat meat	USD	USD/1 kg	6/30/2014 12:00:00 AM	9.5
294	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/7/2014 12:00:00 AM	9.5
295	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/21/2014 12:00:00 AM	8.5
296	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/28/2014 12:00:00 AM	9.5
297	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/7/2014 12:00:00 AM	9.5
298	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/21/2014 12:00:00 AM	8.5
299	Somalia	All Locations	Goat meat	USD	USD/1 kg	7/28/2014 12:00:00 AM	9.5
300	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/4/2014 12:00:00 AM	8.5
301	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/25/2014 12:00:00 AM	9.5
302	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/4/2014 12:00:00 AM	8.5
303	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/25/2014 12:00:00 AM	9.5
304	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/17/2015 12:00:00 AM	5.09999999999999964
305	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/24/2015 12:00:00 AM	5.25
306	Somalia	All Locations	Goat meat	USD	USD/1 kg	8/31/2015 12:00:00 AM	5.25
307	Somalia	All Locations	Goat meat	USD	USD/1 kg	9/7/2015 12:00:00 AM	5.75
308	Somalia	All Locations	Goat meat	USD	USD/1 kg	9/14/2015 12:00:00 AM	5.75
309	Somalia	All Locations	Goat meat	USD	USD/1 kg	9/21/2015 12:00:00 AM	5.5
310	Somalia	All Locations	Goat meat	USD	USD/1 kg	9/28/2015 12:00:00 AM	5.5
311	Somalia	All Locations	Goat meat	USD	USD/1 kg	10/5/2015 12:00:00 AM	5.5
312	Somalia	All Locations	Goat meat	USD	USD/1 kg	10/12/2015 12:00:00 AM	5.25
313	Somalia	All Locations	Goat meat	USD	USD/1 kg	10/19/2015 12:00:00 AM	6
314	Somalia	All Locations	Goat meat	USD	USD/1 kg	10/26/2015 12:00:00 AM	7
315	Somalia	All Locations	Goat meat	USD	USD/1 kg	11/2/2015 12:00:00 AM	6.75
316	Somalia	All Locations	Goat meat	USD	USD/1 kg	11/9/2015 12:00:00 AM	6.25
317	Somalia	All Locations	Goat meat	USD	USD/1 kg	11/16/2015 12:00:00 AM	6
318	Somalia	All Locations	Goat meat	USD	USD/1 kg	11/23/2015 12:00:00 AM	5.75
319	Somalia	All Locations	Goat meat	USD	USD/1 kg	11/30/2015 12:00:00 AM	6.5
320	Somalia	All Locations	Goat meat	USD	USD/1 kg	12/7/2015 12:00:00 AM	6.25
321	Somalia	All Locations	Goat meat	USD	USD/1 kg	12/14/2015 12:00:00 AM	6.84999999999999964
322	Somalia	All Locations	Goat meat	USD	USD/1 kg	12/21/2015 12:00:00 AM	5.875
323	Somalia	All Locations	Goat meat	USD	USD/1 kg	12/28/2015 12:00:00 AM	5.59999999999999964
324	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/2/2014 12:00:00 AM	4.5
325	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/23/2014 12:00:00 AM	4.25
326	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/30/2014 12:00:00 AM	4.25
327	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/2/2014 12:00:00 AM	4.5
328	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/23/2014 12:00:00 AM	4.25
329	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	6/30/2014 12:00:00 AM	4.25
330	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/7/2014 12:00:00 AM	4.25
331	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/21/2014 12:00:00 AM	4.25
332	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/28/2014 12:00:00 AM	4.25
333	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/7/2014 12:00:00 AM	4.25
334	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/21/2014 12:00:00 AM	4.25
335	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	7/28/2014 12:00:00 AM	4.25
336	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/4/2014 12:00:00 AM	4
337	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/25/2014 12:00:00 AM	4.25
338	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/4/2014 12:00:00 AM	4
339	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/25/2014 12:00:00 AM	4.25
340	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/17/2015 12:00:00 AM	4
341	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/24/2015 12:00:00 AM	4
342	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	8/31/2015 12:00:00 AM	3.79999999999999982
343	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	9/7/2015 12:00:00 AM	3.29999999999999982
344	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	9/14/2015 12:00:00 AM	4.5
345	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	9/28/2015 12:00:00 AM	5
346	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	10/5/2015 12:00:00 AM	6
347	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	10/12/2015 12:00:00 AM	6
348	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	10/19/2015 12:00:00 AM	6
349	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	10/26/2015 12:00:00 AM	5.25
350	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	11/2/2015 12:00:00 AM	5.5
351	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	11/9/2015 12:00:00 AM	5.5
352	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	11/16/2015 12:00:00 AM	6
353	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	11/23/2015 12:00:00 AM	5.75
354	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	11/30/2015 12:00:00 AM	5.75
355	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	12/7/2015 12:00:00 AM	6
356	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	12/14/2015 12:00:00 AM	5.75
357	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	12/21/2015 12:00:00 AM	5.65000000000000036
358	Somalia	All Locations	Whole chicken frozen	USD	USD/1 kg	12/28/2015 12:00:00 AM	5.5
359	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/2/2014 12:00:00 AM	3
360	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/23/2014 12:00:00 AM	2.75
361	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/30/2014 12:00:00 AM	3
362	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/2/2014 12:00:00 AM	3
363	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/23/2014 12:00:00 AM	2.75
364	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	6/30/2014 12:00:00 AM	3
365	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/7/2014 12:00:00 AM	3
366	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/21/2014 12:00:00 AM	2.75
367	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/28/2014 12:00:00 AM	2.75
368	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/7/2014 12:00:00 AM	3
369	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/21/2014 12:00:00 AM	2.75
370	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	7/28/2014 12:00:00 AM	2.75
371	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/4/2014 12:00:00 AM	3
372	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/25/2014 12:00:00 AM	3
373	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/4/2014 12:00:00 AM	3
374	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/25/2014 12:00:00 AM	3
375	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/17/2015 12:00:00 AM	3.25
376	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/24/2015 12:00:00 AM	3.25
377	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	8/31/2015 12:00:00 AM	3.25
378	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	9/7/2015 12:00:00 AM	3.25
379	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	9/14/2015 12:00:00 AM	3.5
380	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	9/21/2015 12:00:00 AM	3.25
381	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	9/28/2015 12:00:00 AM	3.75
382	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	10/5/2015 12:00:00 AM	3.25
383	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	10/12/2015 12:00:00 AM	3.5
384	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	10/19/2015 12:00:00 AM	3.5
385	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	10/26/2015 12:00:00 AM	3.5
386	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	11/2/2015 12:00:00 AM	3.25
387	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	11/9/2015 12:00:00 AM	3.125
388	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	11/16/2015 12:00:00 AM	3
389	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	11/23/2015 12:00:00 AM	3
390	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	11/30/2015 12:00:00 AM	3
391	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	12/7/2015 12:00:00 AM	3.10000000000000009
392	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	12/14/2015 12:00:00 AM	3.10000000000000009
393	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	12/21/2015 12:00:00 AM	3.10000000000000009
394	Somalia	All Locations	Large size chicken eggs	USD	USD/Dozen	12/28/2015 12:00:00 AM	3
395	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/2/2014 12:00:00 AM	0.5
396	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/23/2014 12:00:00 AM	0.474999999999999978
397	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/30/2014 12:00:00 AM	0.5
398	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/2/2014 12:00:00 AM	0.5
399	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/23/2014 12:00:00 AM	0.474999999999999978
400	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	6/30/2014 12:00:00 AM	0.5
401	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/7/2014 12:00:00 AM	0.5
402	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/21/2014 12:00:00 AM	0.474999999999999978
403	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/28/2014 12:00:00 AM	0.474999999999999978
404	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/7/2014 12:00:00 AM	0.5
405	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/21/2014 12:00:00 AM	0.474999999999999978
406	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	7/28/2014 12:00:00 AM	0.474999999999999978
407	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/4/2014 12:00:00 AM	0.474999999999999978
408	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/25/2014 12:00:00 AM	0.474999999999999978
409	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/4/2014 12:00:00 AM	0.474999999999999978
410	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/25/2014 12:00:00 AM	0.474999999999999978
411	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/17/2015 12:00:00 AM	0.450000000000000011
412	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/24/2015 12:00:00 AM	0.450000000000000011
413	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	8/31/2015 12:00:00 AM	0.424999999999999989
414	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	9/7/2015 12:00:00 AM	0.525000000000000022
415	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	9/14/2015 12:00:00 AM	0.550000000000000044
416	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	9/21/2015 12:00:00 AM	0.525000000000000022
417	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	9/28/2015 12:00:00 AM	0.574999999999999956
418	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	10/5/2015 12:00:00 AM	0.525000000000000022
419	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	10/12/2015 12:00:00 AM	0.550000000000000044
420	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	10/19/2015 12:00:00 AM	0.5
421	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	10/26/2015 12:00:00 AM	0.5
422	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	11/2/2015 12:00:00 AM	0.5
423	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	11/9/2015 12:00:00 AM	0.550000000000000044
424	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	11/16/2015 12:00:00 AM	0.550000000000000044
425	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	11/23/2015 12:00:00 AM	0.650000000000000022
426	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	11/30/2015 12:00:00 AM	0.675000000000000044
427	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	12/7/2015 12:00:00 AM	0.75
428	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	12/14/2015 12:00:00 AM	0.724999999999999978
429	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	12/21/2015 12:00:00 AM	0.699999999999999956
430	Somalia	All Locations	Pasteurized unskimmed milk	USD	USD/1 litre	12/28/2015 12:00:00 AM	0.699999999999999956
431	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/2/2014 12:00:00 AM	6.67999999999999972
432	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/23/2014 12:00:00 AM	7.12000000000000011
433	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/30/2014 12:00:00 AM	7.12000000000000011
434	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/2/2014 12:00:00 AM	6.67999999999999972
435	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/23/2014 12:00:00 AM	7.12000000000000011
436	Somalia	All Locations	Bream fish	USD	USD/1 kg	6/30/2014 12:00:00 AM	7.12000000000000011
437	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/7/2014 12:00:00 AM	7.12000000000000011
438	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/21/2014 12:00:00 AM	7.12000000000000011
439	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/28/2014 12:00:00 AM	6.46499999999999986
440	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/7/2014 12:00:00 AM	7.12000000000000011
441	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/21/2014 12:00:00 AM	7.12000000000000011
442	Somalia	All Locations	Bream fish	USD	USD/1 kg	7/28/2014 12:00:00 AM	6.46499999999999986
443	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/4/2014 12:00:00 AM	7.11500000000000021
444	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/25/2014 12:00:00 AM	6.90500000000000025
445	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/4/2014 12:00:00 AM	7.11500000000000021
446	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/25/2014 12:00:00 AM	6.90500000000000025
447	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/17/2015 12:00:00 AM	7
448	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/24/2015 12:00:00 AM	6
449	Somalia	All Locations	Bream fish	USD	USD/1 kg	8/31/2015 12:00:00 AM	6
450	Somalia	All Locations	Bream fish	USD	USD/1 kg	9/7/2015 12:00:00 AM	5.5
451	Somalia	All Locations	Bream fish	USD	USD/1 kg	9/14/2015 12:00:00 AM	5
452	Somalia	All Locations	Bream fish	USD	USD/1 kg	9/21/2015 12:00:00 AM	6.5
453	Somalia	All Locations	Bream fish	USD	USD/1 kg	9/28/2015 12:00:00 AM	6.5
454	Somalia	All Locations	Bream fish	USD	USD/1 kg	10/5/2015 12:00:00 AM	6
455	Somalia	All Locations	Bream fish	USD	USD/1 kg	10/12/2015 12:00:00 AM	5
456	Somalia	All Locations	Bream fish	USD	USD/1 kg	10/19/2015 12:00:00 AM	6
457	Somalia	All Locations	Bream fish	USD	USD/1 kg	10/26/2015 12:00:00 AM	6
458	Somalia	All Locations	Bream fish	USD	USD/1 kg	11/2/2015 12:00:00 AM	6
459	Somalia	All Locations	Bream fish	USD	USD/1 kg	11/9/2015 12:00:00 AM	5.75
460	Somalia	All Locations	Bream fish	USD	USD/1 kg	11/16/2015 12:00:00 AM	6
461	Somalia	All Locations	Bream fish	USD	USD/1 kg	11/23/2015 12:00:00 AM	6
462	Somalia	All Locations	Bream fish	USD	USD/1 kg	11/30/2015 12:00:00 AM	6
463	Somalia	All Locations	Bream fish	USD	USD/1 kg	12/7/2015 12:00:00 AM	6
464	Somalia	All Locations	Bream fish	USD	USD/1 kg	12/14/2015 12:00:00 AM	5.5
465	Somalia	All Locations	Bream fish	USD	USD/1 kg	12/21/2015 12:00:00 AM	6
466	Somalia	All Locations	Bream fish	USD	USD/1 kg	12/28/2015 12:00:00 AM	5.75
467	Somalia	All Locations	Nile perch	USD	USD/1 kg	8/17/2015 12:00:00 AM	5
468	Somalia	All Locations	Nile perch	USD	USD/1 kg	8/24/2015 12:00:00 AM	6
469	Somalia	All Locations	Nile perch	USD	USD/1 kg	8/31/2015 12:00:00 AM	6
470	Somalia	All Locations	Nile perch	USD	USD/1 kg	9/7/2015 12:00:00 AM	5
471	Somalia	All Locations	Nile perch	USD	USD/1 kg	9/14/2015 12:00:00 AM	5
472	Somalia	All Locations	Nile perch	USD	USD/1 kg	9/21/2015 12:00:00 AM	6
473	Somalia	All Locations	Nile perch	USD	USD/1 kg	9/28/2015 12:00:00 AM	6
474	Somalia	All Locations	Nile perch	USD	USD/1 kg	10/5/2015 12:00:00 AM	5
475	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/2/2014 12:00:00 AM	2.52000000000000002
476	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/23/2014 12:00:00 AM	2.68000000000000016
477	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/30/2014 12:00:00 AM	2.68000000000000016
478	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/2/2014 12:00:00 AM	2.52000000000000002
479	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/23/2014 12:00:00 AM	2.68000000000000016
480	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	6/30/2014 12:00:00 AM	2.68000000000000016
481	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/7/2014 12:00:00 AM	2.68000000000000016
482	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/21/2014 12:00:00 AM	2.68000000000000016
483	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/28/2014 12:00:00 AM	2.68000000000000016
484	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/7/2014 12:00:00 AM	2.68000000000000016
485	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/21/2014 12:00:00 AM	2.68000000000000016
486	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	7/28/2014 12:00:00 AM	2.68000000000000016
487	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/4/2014 12:00:00 AM	2.68000000000000016
488	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/25/2014 12:00:00 AM	2.52000000000000002
489	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/4/2014 12:00:00 AM	2.68000000000000016
490	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/25/2014 12:00:00 AM	2.52000000000000002
491	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/17/2015 12:00:00 AM	2.54999999999999982
492	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/24/2015 12:00:00 AM	1.25
493	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	8/31/2015 12:00:00 AM	1.19999999999999996
494	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	9/7/2015 12:00:00 AM	1
495	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	9/14/2015 12:00:00 AM	1
496	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	9/21/2015 12:00:00 AM	1.10000000000000009
497	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	9/28/2015 12:00:00 AM	1.10000000000000009
498	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	10/5/2015 12:00:00 AM	1.14999999999999991
499	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	10/12/2015 12:00:00 AM	1.10000000000000009
500	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	10/19/2015 12:00:00 AM	1.14999999999999991
501	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	10/26/2015 12:00:00 AM	1.19999999999999996
502	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	11/2/2015 12:00:00 AM	1.10000000000000009
503	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	11/9/2015 12:00:00 AM	1.19999999999999996
504	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	11/16/2015 12:00:00 AM	1.05000000000000004
505	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	11/23/2015 12:00:00 AM	1.14999999999999991
506	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	11/30/2015 12:00:00 AM	1.125
507	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	12/7/2015 12:00:00 AM	1.125
508	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	12/14/2015 12:00:00 AM	1.10000000000000009
509	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	12/21/2015 12:00:00 AM	1.125
510	Somalia	All Locations	Vegetable oil	USD	USD/1 litre	12/28/2015 12:00:00 AM	1.125
511	Somalia	All Locations	Onion	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
512	Somalia	All Locations	Onion	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.424999999999999989
513	Somalia	All Locations	Onion	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.424999999999999989
514	Somalia	All Locations	Onion	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
515	Somalia	All Locations	Onion	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.424999999999999989
516	Somalia	All Locations	Onion	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.424999999999999989
517	Somalia	All Locations	Onion	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.424999999999999989
518	Somalia	All Locations	Onion	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.424999999999999989
519	Somalia	All Locations	Onion	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.424999999999999989
520	Somalia	All Locations	Onion	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.424999999999999989
521	Somalia	All Locations	Onion	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.424999999999999989
522	Somalia	All Locations	Onion	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.424999999999999989
523	Somalia	All Locations	Onion	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.424999999999999989
524	Somalia	All Locations	Onion	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.434999999999999998
525	Somalia	All Locations	Onion	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.424999999999999989
526	Somalia	All Locations	Onion	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.434999999999999998
527	Somalia	All Locations	Onion	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.405000000000000027
528	Somalia	All Locations	Onion	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.450000000000000011
529	Somalia	All Locations	Onion	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.450000000000000011
530	Somalia	All Locations	Onion	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.450000000000000011
531	Somalia	All Locations	Onion	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.450000000000000011
532	Somalia	All Locations	Onion	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.650000000000000022
533	Somalia	All Locations	Onion	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.699999999999999956
534	Somalia	All Locations	Onion	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.800000000000000044
535	Somalia	All Locations	Onion	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.949999999999999956
536	Somalia	All Locations	Onion	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.949999999999999956
537	Somalia	All Locations	Onion	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.900000000000000022
538	Somalia	All Locations	Onion	USD	USD/1 kg	11/2/2015 12:00:00 AM	1.05000000000000004
539	Somalia	All Locations	Onion	USD	USD/1 kg	11/9/2015 12:00:00 AM	1
540	Somalia	All Locations	Onion	USD	USD/1 kg	11/16/2015 12:00:00 AM	1.39999999999999991
541	Somalia	All Locations	Onion	USD	USD/1 kg	11/23/2015 12:00:00 AM	1.19999999999999996
542	Somalia	All Locations	Onion	USD	USD/1 kg	11/30/2015 12:00:00 AM	1
543	Somalia	All Locations	Onion	USD	USD/1 kg	12/7/2015 12:00:00 AM	1.5
544	Somalia	All Locations	Onion	USD	USD/1 kg	12/14/2015 12:00:00 AM	1.55000000000000004
545	Somalia	All Locations	Onion	USD	USD/1 kg	12/21/2015 12:00:00 AM	1.27499999999999991
546	Somalia	All Locations	Onion	USD	USD/1 kg	12/28/2015 12:00:00 AM	1.35000000000000009
547	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.699999999999999956
548	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.599999999999999978
549	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.599999999999999978
550	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.699999999999999956
551	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.599999999999999978
552	Somalia	All Locations	Round tomato	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.599999999999999978
553	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.599999999999999978
554	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.599999999999999978
555	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.599999999999999978
556	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.599999999999999978
557	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.599999999999999978
558	Somalia	All Locations	Round tomato	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.599999999999999978
559	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.599999999999999978
560	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.599999999999999978
561	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.599999999999999978
562	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.599999999999999978
563	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.5
564	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.599999999999999978
565	Somalia	All Locations	Round tomato	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.599999999999999978
566	Somalia	All Locations	Round tomato	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.550000000000000044
567	Somalia	All Locations	Round tomato	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.550000000000000044
568	Somalia	All Locations	Round tomato	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.550000000000000044
569	Somalia	All Locations	Round tomato	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.5
570	Somalia	All Locations	Round tomato	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.474999999999999978
571	Somalia	All Locations	Round tomato	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.550000000000000044
572	Somalia	All Locations	Round tomato	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.550000000000000044
573	Somalia	All Locations	Round tomato	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.650000000000000022
574	Somalia	All Locations	Round tomato	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.699999999999999956
575	Somalia	All Locations	Round tomato	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.699999999999999956
576	Somalia	All Locations	Round tomato	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.849999999999999978
577	Somalia	All Locations	Round tomato	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.849999999999999978
578	Somalia	All Locations	Round tomato	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.800000000000000044
579	Somalia	All Locations	Round tomato	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.824999999999999956
580	Somalia	All Locations	Round tomato	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.949999999999999956
581	Somalia	All Locations	Round tomato	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.949999999999999956
582	Somalia	All Locations	Round tomato	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.900000000000000022
583	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.810000000000000053
584	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.785000000000000031
585	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.785000000000000031
586	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.810000000000000053
587	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.785000000000000031
588	Somalia	All Locations	Green cabbage	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.785000000000000031
589	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.785000000000000031
590	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.760000000000000009
591	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.765000000000000013
592	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.785000000000000031
593	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.760000000000000009
594	Somalia	All Locations	Green cabbage	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.765000000000000013
595	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.765000000000000013
596	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.785000000000000031
597	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.765000000000000013
598	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.785000000000000031
599	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.599999999999999978
600	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.699999999999999956
601	Somalia	All Locations	Green cabbage	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.699999999999999956
602	Somalia	All Locations	Green cabbage	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.729999999999999982
603	Somalia	All Locations	Green cabbage	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.729999999999999982
604	Somalia	All Locations	Green cabbage	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.699999999999999956
605	Somalia	All Locations	Green cabbage	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.675000000000000044
606	Somalia	All Locations	Green cabbage	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.75
607	Somalia	All Locations	Green cabbage	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.800000000000000044
608	Somalia	All Locations	Green cabbage	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.75
609	Somalia	All Locations	Green cabbage	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.699999999999999956
610	Somalia	All Locations	Green cabbage	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.650000000000000022
611	Somalia	All Locations	Green cabbage	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.75
612	Somalia	All Locations	Green cabbage	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.75
613	Somalia	All Locations	Green cabbage	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.75
614	Somalia	All Locations	Green cabbage	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.699999999999999956
615	Somalia	All Locations	Green cabbage	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.75
616	Somalia	All Locations	Green cabbage	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.849999999999999978
617	Somalia	All Locations	Green cabbage	USD	USD/1 kg	12/21/2015 12:00:00 AM	1
618	Somalia	All Locations	Green cabbage	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.800000000000000044
619	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
620	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.424999999999999989
621	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.424999999999999989
622	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.450000000000000011
623	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.424999999999999989
624	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.424999999999999989
625	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.424999999999999989
626	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.424999999999999989
627	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.424999999999999989
628	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.424999999999999989
629	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.424999999999999989
630	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.424999999999999989
631	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.424999999999999989
632	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.424999999999999989
633	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.424999999999999989
634	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.424999999999999989
635	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.405000000000000027
636	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.5
637	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.5
638	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.5
639	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.5
640	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.5
641	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.550000000000000044
642	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.599999999999999978
643	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.699999999999999956
644	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.699999999999999956
645	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.650000000000000022
646	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.699999999999999956
647	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.800000000000000044
648	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.650000000000000022
649	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.824999999999999956
650	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.849999999999999978
651	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	12/7/2015 12:00:00 AM	1.02499999999999991
652	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	12/14/2015 12:00:00 AM	1.27499999999999991
653	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	12/21/2015 12:00:00 AM	1.14999999999999991
654	Somalia	All Locations	Sweet potatoes	USD	USD/1 kg	12/28/2015 12:00:00 AM	1.19999999999999996
655	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.60000000000000009
656	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.60000000000000009
657	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.60000000000000009
658	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.60000000000000009
659	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.60000000000000009
660	Somalia	All Locations	Spotted beans	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.60000000000000009
661	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.60000000000000009
662	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.60000000000000009
663	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.625
664	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.60000000000000009
665	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.60000000000000009
666	Somalia	All Locations	Spotted beans	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.625
667	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.625
668	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.625
669	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.625
670	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.625
671	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/17/2015 12:00:00 AM	1.36499999999999999
672	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/24/2015 12:00:00 AM	1.18999999999999995
673	Somalia	All Locations	Spotted beans	USD	USD/1 kg	8/31/2015 12:00:00 AM	1.05000000000000004
674	Somalia	All Locations	Spotted beans	USD	USD/1 kg	9/7/2015 12:00:00 AM	1.07499999999999996
675	Somalia	All Locations	Spotted beans	USD	USD/1 kg	9/14/2015 12:00:00 AM	1.10000000000000009
676	Somalia	All Locations	Spotted beans	USD	USD/1 kg	9/21/2015 12:00:00 AM	1.14999999999999991
677	Somalia	All Locations	Spotted beans	USD	USD/1 kg	9/28/2015 12:00:00 AM	1.22500000000000009
678	Somalia	All Locations	Spotted beans	USD	USD/1 kg	10/5/2015 12:00:00 AM	1.10000000000000009
679	Somalia	All Locations	Spotted beans	USD	USD/1 kg	10/12/2015 12:00:00 AM	1.19999999999999996
680	Somalia	All Locations	Spotted beans	USD	USD/1 kg	10/19/2015 12:00:00 AM	1.25
681	Somalia	All Locations	Spotted beans	USD	USD/1 kg	10/26/2015 12:00:00 AM	1.25
682	Somalia	All Locations	Spotted beans	USD	USD/1 kg	11/2/2015 12:00:00 AM	1.25
683	Somalia	All Locations	Spotted beans	USD	USD/1 kg	11/9/2015 12:00:00 AM	1.39999999999999991
684	Somalia	All Locations	Spotted beans	USD	USD/1 kg	11/16/2015 12:00:00 AM	1.19999999999999996
685	Somalia	All Locations	Spotted beans	USD	USD/1 kg	11/23/2015 12:00:00 AM	1.14999999999999991
686	Somalia	All Locations	Spotted beans	USD	USD/1 kg	11/30/2015 12:00:00 AM	1
687	Somalia	All Locations	Spotted beans	USD	USD/1 kg	12/7/2015 12:00:00 AM	1.10000000000000009
688	Somalia	All Locations	Spotted beans	USD	USD/1 kg	12/14/2015 12:00:00 AM	1.22500000000000009
689	Somalia	All Locations	Spotted beans	USD	USD/1 kg	12/21/2015 12:00:00 AM	1.14999999999999991
690	Somalia	All Locations	Spotted beans	USD	USD/1 kg	12/28/2015 12:00:00 AM	1.10000000000000009
691	Somalia	All Locations	White sugar	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.10000000000000009
692	Somalia	All Locations	White sugar	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.30000000000000004
693	Somalia	All Locations	White sugar	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
694	Somalia	All Locations	White sugar	USD	USD/1 kg	6/2/2014 12:00:00 AM	1.10000000000000009
695	Somalia	All Locations	White sugar	USD	USD/1 kg	6/23/2014 12:00:00 AM	1.30000000000000004
696	Somalia	All Locations	White sugar	USD	USD/1 kg	6/30/2014 12:00:00 AM	1.30000000000000004
697	Somalia	All Locations	White sugar	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
698	Somalia	All Locations	White sugar	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.30000000000000004
699	Somalia	All Locations	White sugar	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.30000000000000004
700	Somalia	All Locations	White sugar	USD	USD/1 kg	7/7/2014 12:00:00 AM	1.30000000000000004
701	Somalia	All Locations	White sugar	USD	USD/1 kg	7/21/2014 12:00:00 AM	1.30000000000000004
702	Somalia	All Locations	White sugar	USD	USD/1 kg	7/28/2014 12:00:00 AM	1.30000000000000004
703	Somalia	All Locations	White sugar	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.30000000000000004
704	Somalia	All Locations	White sugar	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.30000000000000004
705	Somalia	All Locations	White sugar	USD	USD/1 kg	8/4/2014 12:00:00 AM	1.30000000000000004
706	Somalia	All Locations	White sugar	USD	USD/1 kg	8/25/2014 12:00:00 AM	1.30000000000000004
707	Somalia	All Locations	White sugar	USD	USD/1 kg	8/17/2015 12:00:00 AM	1.30000000000000004
708	Somalia	All Locations	White sugar	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.800000000000000044
709	Somalia	All Locations	White sugar	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.775000000000000022
710	Somalia	All Locations	White sugar	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.724999999999999978
711	Somalia	All Locations	White sugar	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.734999999999999987
712	Somalia	All Locations	White sugar	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.849999999999999978
713	Somalia	All Locations	White sugar	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.900000000000000022
714	Somalia	All Locations	White sugar	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.824999999999999956
715	Somalia	All Locations	White sugar	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.775000000000000022
716	Somalia	All Locations	White sugar	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.800000000000000044
717	Somalia	All Locations	White sugar	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.775000000000000022
718	Somalia	All Locations	White sugar	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.724999999999999978
719	Somalia	All Locations	White sugar	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.775000000000000022
720	Somalia	All Locations	White sugar	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.849999999999999978
721	Somalia	All Locations	White sugar	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.849999999999999978
722	Somalia	All Locations	White sugar	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.800000000000000044
723	Somalia	All Locations	White sugar	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.75
724	Somalia	All Locations	White sugar	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.775000000000000022
725	Somalia	All Locations	White sugar	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.800000000000000044
726	Somalia	All Locations	White sugar	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.800000000000000044
727	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.160000000000000003
728	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.165000000000000008
729	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.165000000000000008
730	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/2/2014 12:00:00 AM	0.160000000000000003
731	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/23/2014 12:00:00 AM	0.165000000000000008
732	Somalia	All Locations	Cooking salt	USD	USD/1 kg	6/30/2014 12:00:00 AM	0.165000000000000008
733	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.165000000000000008
734	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.165000000000000008
735	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.165000000000000008
736	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/7/2014 12:00:00 AM	0.165000000000000008
737	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/21/2014 12:00:00 AM	0.165000000000000008
738	Somalia	All Locations	Cooking salt	USD	USD/1 kg	7/28/2014 12:00:00 AM	0.165000000000000008
739	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.165000000000000008
740	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.170000000000000012
741	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/4/2014 12:00:00 AM	0.165000000000000008
742	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/25/2014 12:00:00 AM	0.170000000000000012
743	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/17/2015 12:00:00 AM	0.184999999999999998
744	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/24/2015 12:00:00 AM	0.200000000000000011
745	Somalia	All Locations	Cooking salt	USD	USD/1 kg	8/31/2015 12:00:00 AM	0.195000000000000007
746	Somalia	All Locations	Cooking salt	USD	USD/1 kg	9/7/2015 12:00:00 AM	0.244999999999999996
747	Somalia	All Locations	Cooking salt	USD	USD/1 kg	9/14/2015 12:00:00 AM	0.299999999999999989
748	Somalia	All Locations	Cooking salt	USD	USD/1 kg	9/21/2015 12:00:00 AM	0.349999999999999978
749	Somalia	All Locations	Cooking salt	USD	USD/1 kg	9/28/2015 12:00:00 AM	0.375
750	Somalia	All Locations	Cooking salt	USD	USD/1 kg	10/5/2015 12:00:00 AM	0.424999999999999989
751	Somalia	All Locations	Cooking salt	USD	USD/1 kg	10/12/2015 12:00:00 AM	0.400000000000000022
752	Somalia	All Locations	Cooking salt	USD	USD/1 kg	10/19/2015 12:00:00 AM	0.299999999999999989
753	Somalia	All Locations	Cooking salt	USD	USD/1 kg	10/26/2015 12:00:00 AM	0.299999999999999989
754	Somalia	All Locations	Cooking salt	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.325000000000000011
755	Somalia	All Locations	Cooking salt	USD	USD/1 kg	11/9/2015 12:00:00 AM	0.375
756	Somalia	All Locations	Cooking salt	USD	USD/1 kg	11/16/2015 12:00:00 AM	0.400000000000000022
757	Somalia	All Locations	Cooking salt	USD	USD/1 kg	11/23/2015 12:00:00 AM	0.400000000000000022
758	Somalia	All Locations	Cooking salt	USD	USD/1 kg	11/30/2015 12:00:00 AM	0.400000000000000022
759	Somalia	All Locations	Cooking salt	USD	USD/1 kg	12/7/2015 12:00:00 AM	0.400000000000000022
760	Somalia	All Locations	Cooking salt	USD	USD/1 kg	12/14/2015 12:00:00 AM	0.400000000000000022
761	Somalia	All Locations	Cooking salt	USD	USD/1 kg	12/21/2015 12:00:00 AM	0.400000000000000022
762	Somalia	All Locations	Cooking salt	USD	USD/1 kg	12/28/2015 12:00:00 AM	0.400000000000000022
763	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/2/2014 12:00:00 AM	1.39999999999999991
764	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/23/2014 12:00:00 AM	1.67500000000000004
765	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/30/2014 12:00:00 AM	1.67500000000000004
766	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/2/2014 12:00:00 AM	1.39999999999999991
767	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/23/2014 12:00:00 AM	1.67500000000000004
768	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	6/30/2014 12:00:00 AM	1.67500000000000004
769	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/7/2014 12:00:00 AM	1.67500000000000004
770	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/21/2014 12:00:00 AM	1.625
771	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/28/2014 12:00:00 AM	1.67500000000000004
772	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/7/2014 12:00:00 AM	1.67500000000000004
773	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/21/2014 12:00:00 AM	1.625
774	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	7/28/2014 12:00:00 AM	1.67500000000000004
775	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/4/2014 12:00:00 AM	1.625
776	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/25/2014 12:00:00 AM	1.625
777	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/4/2014 12:00:00 AM	1.625
778	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/25/2014 12:00:00 AM	1.625
779	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/17/2015 12:00:00 AM	1.27499999999999991
780	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/24/2015 12:00:00 AM	1.25
781	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	8/31/2015 12:00:00 AM	1.25
782	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	9/7/2015 12:00:00 AM	1.25
783	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	9/14/2015 12:00:00 AM	1.25
784	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	9/21/2015 12:00:00 AM	1.22500000000000009
785	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	9/28/2015 12:00:00 AM	1.19999999999999996
786	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	10/5/2015 12:00:00 AM	1
787	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	10/12/2015 12:00:00 AM	1
788	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	10/19/2015 12:00:00 AM	1
789	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	10/26/2015 12:00:00 AM	1
790	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	11/2/2015 12:00:00 AM	1
791	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	11/9/2015 12:00:00 AM	1
792	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	11/16/2015 12:00:00 AM	1
793	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	11/23/2015 12:00:00 AM	1.19999999999999996
794	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	11/30/2015 12:00:00 AM	1.22500000000000009
795	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	12/7/2015 12:00:00 AM	1
796	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	12/14/2015 12:00:00 AM	1
797	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	12/21/2015 12:00:00 AM	1
798	Somalia	All Locations	Gas (regular, unleaded)	USD	USD/1 litre	12/28/2015 12:00:00 AM	1
799	Somalia	All Locations	Diesel	USD	USD/1 litre	6/2/2014 12:00:00 AM	1
800	Somalia	All Locations	Diesel	USD	USD/1 litre	6/23/2014 12:00:00 AM	1.22500000000000009
801	Somalia	All Locations	Diesel	USD	USD/1 litre	6/30/2014 12:00:00 AM	1.22500000000000009
802	Somalia	All Locations	Diesel	USD	USD/1 litre	6/2/2014 12:00:00 AM	1
803	Somalia	All Locations	Diesel	USD	USD/1 litre	6/23/2014 12:00:00 AM	1.22500000000000009
804	Somalia	All Locations	Diesel	USD	USD/1 litre	6/30/2014 12:00:00 AM	1.22500000000000009
805	Somalia	All Locations	Diesel	USD	USD/1 litre	7/7/2014 12:00:00 AM	1.22500000000000009
806	Somalia	All Locations	Diesel	USD	USD/1 litre	7/21/2014 12:00:00 AM	1.17500000000000004
807	Somalia	All Locations	Diesel	USD	USD/1 litre	7/28/2014 12:00:00 AM	1.22500000000000009
808	Somalia	All Locations	Diesel	USD	USD/1 litre	7/7/2014 12:00:00 AM	1.22500000000000009
809	Somalia	All Locations	Diesel	USD	USD/1 litre	7/21/2014 12:00:00 AM	1.17500000000000004
810	Somalia	All Locations	Diesel	USD	USD/1 litre	7/28/2014 12:00:00 AM	1.22500000000000009
811	Somalia	All Locations	Diesel	USD	USD/1 litre	8/4/2014 12:00:00 AM	1.17500000000000004
812	Somalia	All Locations	Diesel	USD	USD/1 litre	8/25/2014 12:00:00 AM	1.22500000000000009
813	Somalia	All Locations	Diesel	USD	USD/1 litre	8/4/2014 12:00:00 AM	1.17500000000000004
814	Somalia	All Locations	Diesel	USD	USD/1 litre	8/25/2014 12:00:00 AM	1.22500000000000009
815	Somalia	All Locations	Diesel	USD	USD/1 litre	8/17/2015 12:00:00 AM	1
816	Somalia	All Locations	Diesel	USD	USD/1 litre	8/24/2015 12:00:00 AM	1
817	Somalia	All Locations	Diesel	USD	USD/1 litre	8/31/2015 12:00:00 AM	1
818	Somalia	All Locations	Diesel	USD	USD/1 litre	9/7/2015 12:00:00 AM	1
819	Somalia	All Locations	Diesel	USD	USD/1 litre	9/14/2015 12:00:00 AM	1
820	Somalia	All Locations	Diesel	USD	USD/1 litre	9/21/2015 12:00:00 AM	1
821	Somalia	All Locations	Diesel	USD	USD/1 litre	9/28/2015 12:00:00 AM	1
822	Somalia	All Locations	Diesel	USD	USD/1 litre	10/5/2015 12:00:00 AM	1
823	Somalia	All Locations	Diesel	USD	USD/1 litre	10/12/2015 12:00:00 AM	1
824	Somalia	All Locations	Diesel	USD	USD/1 litre	10/19/2015 12:00:00 AM	1
825	Somalia	All Locations	Diesel	USD	USD/1 litre	10/26/2015 12:00:00 AM	1
826	Somalia	All Locations	Diesel	USD	USD/1 litre	11/2/2015 12:00:00 AM	1
827	Somalia	All Locations	Diesel	USD	USD/1 litre	11/9/2015 12:00:00 AM	1
828	Somalia	All Locations	Diesel	USD	USD/1 litre	11/16/2015 12:00:00 AM	1
829	Somalia	All Locations	Diesel	USD	USD/1 litre	11/23/2015 12:00:00 AM	1.19999999999999996
830	Somalia	All Locations	Diesel	USD	USD/1 litre	11/30/2015 12:00:00 AM	1.19999999999999996
831	Somalia	All Locations	Diesel	USD	USD/1 litre	12/7/2015 12:00:00 AM	1
832	Somalia	All Locations	Diesel	USD	USD/1 litre	12/14/2015 12:00:00 AM	1.10000000000000009
833	Somalia	All Locations	Diesel	USD	USD/1 litre	12/21/2015 12:00:00 AM	1
834	Somalia	All Locations	Diesel	USD	USD/1 litre	12/28/2015 12:00:00 AM	0.875
835	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/2/2014 12:00:00 AM	5.5
836	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/23/2014 12:00:00 AM	5.75
837	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/30/2014 12:00:00 AM	5.75
838	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/2/2014 12:00:00 AM	5.5
839	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/23/2014 12:00:00 AM	5.75
840	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	6/30/2014 12:00:00 AM	5.75
841	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/7/2014 12:00:00 AM	5.75
842	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/21/2014 12:00:00 AM	5.75
843	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/28/2014 12:00:00 AM	5.75
844	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/7/2014 12:00:00 AM	5.75
845	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/21/2014 12:00:00 AM	5.75
846	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	7/28/2014 12:00:00 AM	5.75
847	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/4/2014 12:00:00 AM	5.75
848	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/25/2014 12:00:00 AM	5.75
849	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/4/2014 12:00:00 AM	5.75
850	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/25/2014 12:00:00 AM	5.75
851	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/17/2015 12:00:00 AM	5.25
852	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/24/2015 12:00:00 AM	5.15000000000000036
853	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	8/31/2015 12:00:00 AM	5.09999999999999964
854	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	9/7/2015 12:00:00 AM	5.09999999999999964
855	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	9/14/2015 12:00:00 AM	5.09999999999999964
856	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	9/21/2015 12:00:00 AM	5.09999999999999964
857	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	9/28/2015 12:00:00 AM	5.15000000000000036
858	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	10/5/2015 12:00:00 AM	5
859	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	10/12/2015 12:00:00 AM	5
860	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	10/19/2015 12:00:00 AM	5
861	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	10/26/2015 12:00:00 AM	5.25
862	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	11/2/2015 12:00:00 AM	0.839999999999999969
863	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	11/9/2015 12:00:00 AM	1.5
864	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	11/16/2015 12:00:00 AM	1.75
865	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	11/23/2015 12:00:00 AM	2.10000000000000009
866	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	11/30/2015 12:00:00 AM	2.10000000000000009
867	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	12/7/2015 12:00:00 AM	2.20000000000000018
868	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	12/14/2015 12:00:00 AM	2.20000000000000018
869	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	12/21/2015 12:00:00 AM	2.14999999999999991
870	Somalia	All Locations	Cooking Gas (LPG Cylinder)	USD	USD/1 kg	12/28/2015 12:00:00 AM	2.14999999999999991
\.


--
-- Name: ix_dri_table_index; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX ix_dri_table_index ON dri_table USING btree (index);


--
-- Name: ix_nutrients_table2_index; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX ix_nutrients_table2_index ON nutrients_table2 USING btree (index);


--
-- Name: ix_nutrients_table_pos; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX ix_nutrients_table_pos ON nutrients_table USING btree (pos);


--
-- Name: ix_prices_table_index; Type: INDEX; Schema: public; Owner: username
--

CREATE INDEX ix_prices_table_index ON prices_table USING btree (index);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

