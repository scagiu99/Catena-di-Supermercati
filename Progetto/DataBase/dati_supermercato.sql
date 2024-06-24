--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.16
-- Dumped by pg_dump version 9.6.16

-- Started on 2020-07-27 10:03:33 CEST

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

--
-- TOC entry 2563 (class 0 OID 21494)
-- Dependencies: 187
-- Data for Name: anzianità; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."anzianità" VALUES ('1', 'Stagista', 700);
INSERT INTO public."anzianità" VALUES ('2', 'Impiegato I', 1100);
INSERT INTO public."anzianità" VALUES ('3', 'Impiegato II', 1300);
INSERT INTO public."anzianità" VALUES ('4', 'Responsabile', 1500);


--
-- TOC entry 2571 (class 0 OID 21583)
-- Dependencies: 195
-- Data for Name: assemblato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.assemblato VALUES ('P0006');
INSERT INTO public.assemblato VALUES ('P0007');
INSERT INTO public.assemblato VALUES ('P0035');
INSERT INTO public.assemblato VALUES ('P0036');
INSERT INTO public.assemblato VALUES ('P0037');
INSERT INTO public.assemblato VALUES ('P0038');
INSERT INTO public.assemblato VALUES ('P0039');
INSERT INTO public.assemblato VALUES ('P0041');


--
-- TOC entry 2578 (class 0 OID 21683)
-- Dependencies: 202
-- Data for Name: catalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.catalogo VALUES ('Cuffie per smartphone', 6000);
INSERT INTO public.catalogo VALUES ('Giradischi', 8000);
INSERT INTO public.catalogo VALUES ('Set regalo penne', 1500);
INSERT INTO public.catalogo VALUES ('Sei bicchieri', 1200);
INSERT INTO public.catalogo VALUES ('Macinapepe', 1000);
INSERT INTO public.catalogo VALUES ('Macchina caffè espresso', 9600);
INSERT INTO public.catalogo VALUES ('Borsa trasportino gatto', 6400);
INSERT INTO public.catalogo VALUES ('Asciugacapelli', 4100);
INSERT INTO public.catalogo VALUES ('Misuratore di pressione da polso', 9700);
INSERT INTO public.catalogo VALUES ('Asciugamani', 2200);


--
-- TOC entry 2567 (class 0 OID 21541)
-- Dependencies: 191
-- Data for Name: clientefidelizzato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clientefidelizzato VALUES ('44135', 'BVGLGU97E03A242K', 'Luigi', 'Bevegni', '3384365821', 'Via Del Segaticcio, 87 Milano', 'bvglgu97e03a242k@mailstop.it', '1997-05-03', 860);
INSERT INTO public.clientefidelizzato VALUES ('99057', 'NNIMRL68A29B778S', 'Maurilio', 'Ninu', '3843258714', 'Via Giovanni Pascoli, 9 Milano', 'nnimrl68a29b778s@mailstop.it', '1968-01-29', 1405);
INSERT INTO public.clientefidelizzato VALUES ('37910', 'RSNTNI92E69G473Z', 'Tina', 'Orsanto', '3777167821', 'Via Carlo Alberto Dalla Chiesa, 4 Milano', 'rsntni92e69g473z@mailstop.it', '1992-05-29', 9875);
INSERT INTO public.clientefidelizzato VALUES ('28424', 'FJLLVR78S57D053J', 'Elvira', 'Fejles', '3667253758', 'Via Kinzica Dei Sismondi, 34 Milano', 'fjllvr78s57d053j@mailstop.it', '1978-11-17', 7675);
INSERT INTO public.clientefidelizzato VALUES ('93591', 'MRSCLL68C31I109U', 'Camillo', 'Moras', '3731436082', 'Via Gerardo Amato, 36 Milano', 'mrscll68c31i109u@mailstop.it', '1968-03-31', 8325);


--
-- TOC entry 2574 (class 0 OID 21619)
-- Dependencies: 198
-- Data for Name: composizione; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.composizione VALUES ('P0041', 'P0038', 1);
INSERT INTO public.composizione VALUES ('P0041', 'P0039', 3);
INSERT INTO public.composizione VALUES ('P0007', 'P0039', 2);


--
-- TOC entry 2582 (class 0 OID 21731)
-- Dependencies: 206
-- Data for Name: contiene; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contiene VALUES ('P0002', 'F001122334', 'FP0002', 100, 0.10);
INSERT INTO public.contiene VALUES ('P0005', 'F001122334', 'FP0005', 40, 1.20);
INSERT INTO public.contiene VALUES ('P0008', 'F001122334', 'FP0008', 50, 3.00);
INSERT INTO public.contiene VALUES ('P0009', 'F001122334', 'FP0009', 40, 3.50);
INSERT INTO public.contiene VALUES ('P0015', 'F001122334', 'FP0015', 50, 1.50);
INSERT INTO public.contiene VALUES ('P0011', 'F110022335', 'FP0011', 50, 3.20);
INSERT INTO public.contiene VALUES ('P0013', 'F110022335', 'FP0013', 30, 2.00);
INSERT INTO public.contiene VALUES ('P0012', 'F110022335', 'FP0012', 30, 1.90);
INSERT INTO public.contiene VALUES ('P0034', 'F221100336', 'FP0034', 50, 1.50);
INSERT INTO public.contiene VALUES ('P0029', 'F221100336', 'FP0029', 30, 2.50);
INSERT INTO public.contiene VALUES ('P0019', 'F221100336', 'FP0019', 60, 1.00);
INSERT INTO public.contiene VALUES ('P0020', 'F221100336', 'FP0020', 40, 1.60);
INSERT INTO public.contiene VALUES ('P0027', 'F332211007', 'FP0027', 30, 1.00);
INSERT INTO public.contiene VALUES ('P0024', 'F332211007', 'FP0028', 40, 1.50);
INSERT INTO public.contiene VALUES ('P0030', 'F332211007', 'FP0030', 50, 2.10);


--
-- TOC entry 2581 (class 0 OID 21716)
-- Dependencies: 205
-- Data for Name: fattura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fattura VALUES ('F001122334', '2020-01-18', '2', '01497720084', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.fattura VALUES ('F110022335', '2020-03-12', '7', '01497720084', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.fattura VALUES ('F221100336', '2020-05-18', '10', '01331180081', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.fattura VALUES ('F332211007', '2020-04-01', '15', '01450700081', 'Via Lorenteggio, 19 Milano');


--
-- TOC entry 2580 (class 0 OID 21709)
-- Dependencies: 204
-- Data for Name: fornitore; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fornitore VALUES ('01219260088', 'stpdaga@gmail.com', '3778254760', 'Piazza Ruffini, 7 Milano', 'Stp Daga Sas', 'Cambiale 90 giorni');
INSERT INTO public.fornitore VALUES ('01497720084', 'braida@gmail.com', '3736476032', 'Via Tommaso Schiva, 35 Milano', 'Braida snc', 'Assegno circolare');
INSERT INTO public.fornitore VALUES ('01098150087', 'parlemiti@gmail.com', '3667603258', 'Via Bresca, 1 Milano', 'Parlemiti srl', 'Bonifico a 60 giorni');
INSERT INTO public.fornitore VALUES ('01090430081', 'daziano@gmail.com', '3736586142', 'Via Amendola, 84 Milano', 'Daziano Sas', 'Cambiale 30 giorni');
INSERT INTO public.fornitore VALUES ('01275900080', 'montanari@gmail.com', '3498725860', 'Piazza Colombo, 29 Milano', 'Montanari spa', 'Assegno bancario');
INSERT INTO public.fornitore VALUES ('01656850086', 'climb@gmail.com', '3667603254', 'C.So Orazio Raimondo, 53 Milano', 'Climb snc', 'Cambiale 60 giorni');
INSERT INTO public.fornitore VALUES ('90079020088', 'endurosanremo@gmail.com', '3776582143', 'Piazza Cesare Battisti, 34 Milano', 'Enduro Sanremo srl', 'Cambiale 90 giorni');
INSERT INTO public.fornitore VALUES ('01118170081', 'garnero@gmail.com', '3736472032', 'Via Roma, 26 Milano', 'Garnero Snc', 'Assegno circolare');
INSERT INTO public.fornitore VALUES ('01103020085', 'brunengobianchi@gmail.com', '3701861426', 'Via Unine, 7 Milano', 'Brunengo&Bianchi snc', 'Assegno bancario');
INSERT INTO public.fornitore VALUES ('90092820084', 'larivalsa@gmail.com', '3843658214', 'Via Romana, 57 Milano', 'La Rivalsa Sas', 'Assegno bancario');
INSERT INTO public.fornitore VALUES ('01721340188', 'robertachiesa@gmail.com', '3311264760', 'Via Canessa, 4 Milano', ' Roberta Chiesa Srl', 'Bonfico a 60 giorni');
INSERT INTO public.fornitore VALUES ('01331180081', 'pennapierluigi@gmail.com', '3775375831', 'Piazza Borea Dolmo, 30 Milano', 'Penna Pierluigi snc', 'Cambiale 90 giorni');
INSERT INTO public.fornitore VALUES ('00959420084', 'imperia@gmail.com', '3778254710', 'Via Argine, 89  Milano', 'Imperia Sas', 'Cambiale 30 giorni');
INSERT INTO public.fornitore VALUES ('01217720083', 'denegriangela@gmail.com', '3311203758', 'Piazza Bianchi, 2 Milano', 'Denegri Angela snc', 'Assegno circolare');
INSERT INTO public.fornitore VALUES ('01450700081', 'danielabocaccini@gmail.com', '3734710325', 'Via Tremola, 4 Milano', 'Daniela Boccaccini sas', 'Assegno bancario');
INSERT INTO public.fornitore VALUES ('01375650080', 'paolinofrancesca@gmail.com', '3736482047', 'Via Garibaldi, 4 Milano', 'Paolino Francesca Sas', 'Cambiale 90 giorni');


--
-- TOC entry 2573 (class 0 OID 21603)
-- Dependencies: 197
-- Data for Name: ingrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ingrediente VALUES ('P0006', 'P0014', 2);
INSERT INTO public.ingrediente VALUES ('P0006', 'P0016', 1);
INSERT INTO public.ingrediente VALUES ('P0006', 'P0040', 2);
INSERT INTO public.ingrediente VALUES ('P0007', 'P0014', 2);
INSERT INTO public.ingrediente VALUES ('P0007', 'P0040', 2);
INSERT INTO public.ingrediente VALUES ('P0007', 'P0016', 1);
INSERT INTO public.ingrediente VALUES ('P0007', 'P0033', 1);
INSERT INTO public.ingrediente VALUES ('P0035', 'P0003', 4);
INSERT INTO public.ingrediente VALUES ('P0035', 'P0004', 6);
INSERT INTO public.ingrediente VALUES ('P0036', 'P0010', 1);
INSERT INTO public.ingrediente VALUES ('P0036', 'P0002', 4);
INSERT INTO public.ingrediente VALUES ('P0036', 'P0001', 4);
INSERT INTO public.ingrediente VALUES ('P0036', 'P0017', 1);
INSERT INTO public.ingrediente VALUES ('P0037', 'P0009', 3);
INSERT INTO public.ingrediente VALUES ('P0037', 'P0011', 4);
INSERT INTO public.ingrediente VALUES ('P0037', 'P0012', 1);
INSERT INTO public.ingrediente VALUES ('P0037', 'P0013', 2);
INSERT INTO public.ingrediente VALUES ('P0038', 'P0008', 10);
INSERT INTO public.ingrediente VALUES ('P0038', 'P0032', 1);
INSERT INTO public.ingrediente VALUES ('P0038', 'P0033', 1);
INSERT INTO public.ingrediente VALUES ('P0039', 'P0005', 15);
INSERT INTO public.ingrediente VALUES ('P0039', 'P0032', 1);
INSERT INTO public.ingrediente VALUES ('P0039', 'P0033', 1);


--
-- TOC entry 2577 (class 0 OID 21666)
-- Dependencies: 201
-- Data for Name: magazzino; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.magazzino VALUES ('P0001', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0002', 'Via Lorenteggio, 19 Milano', 200, 30);
INSERT INTO public.magazzino VALUES ('P0003', 'Via Lorenteggio, 19 Milano', 120, 20);
INSERT INTO public.magazzino VALUES ('P0004', 'Via Lorenteggio, 19 Milano', 200, 30);
INSERT INTO public.magazzino VALUES ('P0005', 'Via Lorenteggio, 19 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0008', 'Via Lorenteggio, 19 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0009', 'Via Lorenteggio, 19 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0010', 'Via Lorenteggio, 19 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0011', 'Via Lorenteggio, 19 Milano', 200, 30);
INSERT INTO public.magazzino VALUES ('P0012', 'Via Lorenteggio, 19 Milano', 190, 30);
INSERT INTO public.magazzino VALUES ('P0013', 'Via Lorenteggio, 19 Milano', 150, 25);
INSERT INTO public.magazzino VALUES ('P0014', 'Via Lorenteggio, 19 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0015', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0016', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0017', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0018', 'Via Lorenteggio, 19 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0019', 'Via Lorenteggio, 19 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0020', 'Via Lorenteggio, 19 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0021', 'Via Lorenteggio, 19 Milano', 130, 20);
INSERT INTO public.magazzino VALUES ('P0022', 'Via Lorenteggio, 19 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0023', 'Via Lorenteggio, 19 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0024', 'Via Lorenteggio, 19 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0025', 'Via Lorenteggio, 19 Milano', 200, 30);
INSERT INTO public.magazzino VALUES ('P0026', 'Via Lorenteggio, 19 Milano', 210, 40);
INSERT INTO public.magazzino VALUES ('P0027', 'Via Lorenteggio, 19 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0028', 'Via Lorenteggio, 19 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0029', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0030', 'Via Lorenteggio, 19 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0031', 'Via Lorenteggio, 19 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0032', 'Via Lorenteggio, 19 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0033', 'Via Lorenteggio, 19 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0034', 'Via Lorenteggio, 19 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0040', 'Via Lorenteggio, 19 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0001', 'Via Vittorio Emanuele, 50 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0002', 'Via Vittorio Emanuele, 50 Milano', 200, 35);
INSERT INTO public.magazzino VALUES ('P0003', 'Via Vittorio Emanuele, 50 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0004', 'Via Vittorio Emanuele, 50 Milano', 200, 35);
INSERT INTO public.magazzino VALUES ('P0005', 'Via Vittorio Emanuele, 50 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0008', 'Via Vittorio Emanuele, 50 Milano', 170, 40);
INSERT INTO public.magazzino VALUES ('P0009', 'Via Vittorio Emanuele, 50 Milano', 170, 40);
INSERT INTO public.magazzino VALUES ('P0010', 'Via Vittorio Emanuele, 50 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0011', 'Via Vittorio Emanuele, 50 Milano', 200, 35);
INSERT INTO public.magazzino VALUES ('P0012', 'Via Vittorio Emanuele, 50 Milano', 190, 30);
INSERT INTO public.magazzino VALUES ('P0013', 'Via Vittorio Emanuele, 50 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0014', 'Via Vittorio Emanuele, 50 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0015', 'Via Vittorio Emanuele, 50 Milano', 150, 35);
INSERT INTO public.magazzino VALUES ('P0016', 'Via Vittorio Emanuele, 50 Milano', 150, 35);
INSERT INTO public.magazzino VALUES ('P0017', 'Via Vittorio Emanuele, 50 Milano', 150, 35);
INSERT INTO public.magazzino VALUES ('P0018', 'Via Vittorio Emanuele, 50 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0019', 'Via Vittorio Emanuele, 50 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0020', 'Via Vittorio Emanuele, 50 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0021', 'Via Vittorio Emanuele, 50 Milano', 230, 40);
INSERT INTO public.magazzino VALUES ('P0022', 'Via Vittorio Emanuele, 50 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0023', 'Via Vittorio Emanuele, 50 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0024', 'Via Vittorio Emanuele, 50 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0025', 'Via Vittorio Emanuele, 50 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0026', 'Via Vittorio Emanuele, 50 Milano', 210, 40);
INSERT INTO public.magazzino VALUES ('P0027', 'Via Vittorio Emanuele, 50 Milano', 170, 30);
INSERT INTO public.magazzino VALUES ('P0028', 'Via Vittorio Emanuele, 50 Milano', 170, 30);
INSERT INTO public.magazzino VALUES ('P0029', 'Via Vittorio Emanuele, 50 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0030', 'Via Vittorio Emanuele, 50 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0031', 'Via Vittorio Emanuele, 50 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0032', 'Via Vittorio Emanuele, 50 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0033', 'Via Vittorio Emanuele, 50 Milano', 170, 30);
INSERT INTO public.magazzino VALUES ('P0034', 'Via Vittorio Emanuele, 50 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0040', 'Via Vittorio Emanuele, 50 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0001', 'Via Alessandro Manzoni, 45 Milano', 150, 30);
INSERT INTO public.magazzino VALUES ('P0002', 'Via Alessandro Manzoni, 45 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0003', 'Via Alessandro Manzoni, 45 Milano', 120, 20);
INSERT INTO public.magazzino VALUES ('P0004', 'Via Alessandro Manzoni, 45 Milano', 200, 30);
INSERT INTO public.magazzino VALUES ('P0005', 'Via Alessandro Manzoni, 45 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0008', 'Via Alessandro Manzoni, 45 Milano', 170, 25);
INSERT INTO public.magazzino VALUES ('P0009', 'Via Alessandro Manzoni, 45 Milano', 170, 25);
INSERT INTO public.magazzino VALUES ('P0010', 'Via Alessandro Manzoni, 45 Milano', 120, 20);
INSERT INTO public.magazzino VALUES ('P0011', 'Via Alessandro Manzoni, 45 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0012', 'Via Alessandro Manzoni, 45 Milano', 190, 40);
INSERT INTO public.magazzino VALUES ('P0013', 'Via Alessandro Manzoni, 45 Milano', 150, 20);
INSERT INTO public.magazzino VALUES ('P0014', 'Via Alessandro Manzoni, 45 Milano', 180, 30);
INSERT INTO public.magazzino VALUES ('P0015', 'Via Alessandro Manzoni, 45 Milano', 150, 25);
INSERT INTO public.magazzino VALUES ('P0016', 'Via Alessandro Manzoni, 45 Milano', 150, 25);
INSERT INTO public.magazzino VALUES ('P0017', 'Via Alessandro Manzoni, 45 Milano', 150, 25);
INSERT INTO public.magazzino VALUES ('P0018', 'Via Alessandro Manzoni, 45 Milano', 220, 40);
INSERT INTO public.magazzino VALUES ('P0019', 'Via Alessandro Manzoni, 45 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0020', 'Via Alessandro Manzoni, 45 Milano', 120, 20);
INSERT INTO public.magazzino VALUES ('P0021', 'Via Alessandro Manzoni, 45 Milano', 130, 20);
INSERT INTO public.magazzino VALUES ('P0022', 'Via Alessandro Manzoni, 45 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0023', 'Via Alessandro Manzoni, 45 Milano', 180, 35);
INSERT INTO public.magazzino VALUES ('P0024', 'Via Alessandro Manzoni, 45 Milano', 120, 20);
INSERT INTO public.magazzino VALUES ('P0025', 'Via Alessandro Manzoni, 45 Milano', 200, 40);
INSERT INTO public.magazzino VALUES ('P0026', 'Via Alessandro Manzoni, 45 Milano', 110, 15);
INSERT INTO public.magazzino VALUES ('P0027', 'Via Alessandro Manzoni, 45 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0028', 'Via Alessandro Manzoni, 45 Milano', 170, 35);
INSERT INTO public.magazzino VALUES ('P0029', 'Via Alessandro Manzoni, 45 Milano', 50, 5);
INSERT INTO public.magazzino VALUES ('P0030', 'Via Alessandro Manzoni, 45 Milano', 160, 30);
INSERT INTO public.magazzino VALUES ('P0031', 'Via Alessandro Manzoni, 45 Milano', 100, 15);
INSERT INTO public.magazzino VALUES ('P0032', 'Via Alessandro Manzoni, 45 Milano', 100, 15);
INSERT INTO public.magazzino VALUES ('P0033', 'Via Alessandro Manzoni, 45 Milano', 70, 15);
INSERT INTO public.magazzino VALUES ('P0034', 'Via Alessandro Manzoni, 45 Milano', 50, 10);
INSERT INTO public.magazzino VALUES ('P0040', 'Via Alessandro Manzoni, 45 Milano', 100, 20);


--
-- TOC entry 2570 (class 0 OID 21573)
-- Dependencies: 194
-- Data for Name: materiaprima; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materiaprima VALUES ('P0014');
INSERT INTO public.materiaprima VALUES ('P0016');
INSERT INTO public.materiaprima VALUES ('P0040');
INSERT INTO public.materiaprima VALUES ('P0033');
INSERT INTO public.materiaprima VALUES ('P0032');
INSERT INTO public.materiaprima VALUES ('P0005');
INSERT INTO public.materiaprima VALUES ('P0010');
INSERT INTO public.materiaprima VALUES ('P0002');
INSERT INTO public.materiaprima VALUES ('P0001');
INSERT INTO public.materiaprima VALUES ('P0003');
INSERT INTO public.materiaprima VALUES ('P0004');
INSERT INTO public.materiaprima VALUES ('P0008');
INSERT INTO public.materiaprima VALUES ('P0017');
INSERT INTO public.materiaprima VALUES ('P0009');
INSERT INTO public.materiaprima VALUES ('P0012');
INSERT INTO public.materiaprima VALUES ('P0011');
INSERT INTO public.materiaprima VALUES ('P0013');


--
-- TOC entry 2572 (class 0 OID 21593)
-- Dependencies: 196
-- Data for Name: mpassemblata; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.mpassemblata VALUES ('P0038');
INSERT INTO public.mpassemblata VALUES ('P0039');


--
-- TOC entry 2562 (class 0 OID 21484)
-- Dependencies: 186
-- Data for Name: orariapertura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Lunedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Lunedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Lunedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Martedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Martedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Martedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Mercoledì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Mercoledì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Mercoledì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Giovedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Giovedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Giovedì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Venerdì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Venerdì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Venerdì', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Sabato', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Sabato', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', 'Sabato', '9:00 - 20:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', 'Domenica', '9:00 - 13:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Vittorio Emanuele, 50 Milano', 'Domenica', '9:00 - 13:00', 'Ordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', '25 Dicembre', '9:00 - 13:00', 'Straordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', '25 Dicembre', '9:00 - 13:00', 'Straordinario');
INSERT INTO public.orariapertura VALUES ('Via Lorenteggio, 19 Milano', '1 Gennaio', '9:00 - 13:00', 'Straordinario');
INSERT INTO public.orariapertura VALUES ('Via Alessandro Manzoni, 45 Milano', '25 Aprile', '9:00 - 13:00', 'Straordinario');


--
-- TOC entry 2565 (class 0 OID 21505)
-- Dependencies: 189
-- Data for Name: personale; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.personale VALUES ('PLRFNN69B22F205Z', 'Fernando', 'Palermo', '3305128366', 'FernandoPalermo@armyspy.com', 'Capo Reparto', '1969-02-22', 'Via del Piave, 87 Milano', '2013-05-18', '2019-05-18', '4', 'Frutta e verdura');
INSERT INTO public.personale VALUES ('ZTIDRN78H01F205U', 'Adriano', 'Zito', '3628951339', 'AdrianoZito@teleworm.com', 'Capo Reparto', '1978-06-01', 'Largo Febo, 28 Milano', '2013-04-08', '2019-04-08', '4', 'Salumi e formaggi');
INSERT INTO public.personale VALUES ('GLLMDL66L67F205B', 'Maddalena', 'Gallo', '3991923335', 'MaddalenaGallo@rhyta.com', 'Attività di supporto alla vendita e assistenza alla clientela', '1966-07-27', 'Via Nuova del Campo, 27 Milano', '2013-04-06', '2019-04-06', '4', 'Gastronomia e pasta fresca');
INSERT INTO public.personale VALUES ('FLLPQL87T42F205C', 'Pasqualina', 'Folliero', '3754508083', 'PasqualinaFolliero@rhyta.com', 'Capo Reparto', '1987-12-02', 'Via Goffedro Mameli, 12 Milano', '2013-06-12', '2019-06-12', '4', 'Latte, burro, uova e yogurt');
INSERT INTO public.personale VALUES ('SCLGRI81B08F205Y', 'Igor', 'Siciliani', '3234977267', 'IgorSiciliani@dayrep.com', 'Capo Reparto', '1981-02-08', 'Via Silvio Spaventa, 19 Milano', '2013-09-28', '2019-09-28', '4', 'Macelleria');
INSERT INTO public.personale VALUES ('CSTDLU83B22F205M', 'Duilio', 'Castiglione', '3859423581', 'DuilioCastiglione@jourrapide.com', 'Attività di supporto alla vendita e assistenza alla clientela', '1983-02-22', 'Via Melisurgo, 15 Milano', '2013-02-19', '2019-02-19', '4', 'Pescheria');
INSERT INTO public.personale VALUES ('NPLCLP78M52F205G', 'Calliope', 'Napolitano', '3225688091', 'CalliopeNapolitano@teleworm.com', 'Capo Reparto', '1978-08-12', 'Via Giulio Camuzzoni, 25 Milano', '2014-03-18', '2020-03-18', '4', 'Colazione, merenda e dolci');
INSERT INTO public.personale VALUES ('FRRBLN70A01F205T', 'Bellino', 'Ferri', '3207668809', 'BellinoFerri@dayrep.com', 'Capo Reparto', '1970-10-01', 'Via Giulio Camuzzoni, 87 Milano', '2014-10-17', '2020-10-17', '4', 'Inventario alimentari');
INSERT INTO public.personale VALUES ('TSCMNA63C55F205H', 'Amina', 'Toscano', '3961938863', 'AminaToscano@armyspy.com', 'Attività di supporto alla vendita e assistenza alla clientela', '1963-03-15', 'Via Santa Melania, 81 Milano', '2013-01-15', '2019-01-15', '4', 'Panificio');
INSERT INTO public.personale VALUES ('MRCTMS70B09F205A', 'Tommaso', 'Marchesi', '3571917117', 'TommasoMarchesi@dayrep.com', 'Capo Reparto', '1978-02-09', 'Via Licola Patria, 12 Milano', '2013-10-09', '2019-10-09', '4', 'Gelati e surgelati');
INSERT INTO public.personale VALUES ('MZZNLC68H58F205O', 'Angelica', 'Mazzi', '3211635024', 'AngelicaMazzi@dayrep.com', 'Capo Reparto', '1968-06-18', 'Via Nizza, 53 Milano', '2013-09-26', '2019-09-26', '4', 'Acqua, bevande, vino e alcolici');
INSERT INTO public.personale VALUES ('LFNMRT62P01F205H', 'Umberto', 'Li Fonti', '3835855843', 'UbertoLiFonti@dayrep.com', 'Capo Reparto', '1962-09-01', 'Via Stadera, 44 Milano', '2013-09-30', '2019-09-30', '4', 'Cancelleria');
INSERT INTO public.personale VALUES ('FRNMRT67D01F205L', 'Umberto ', 'Fiorentino', '3448684875', 'UbertoFiorentino@armyspy.com', 'Capo Reparto', '1967-04-01', 'Via A.G. Alaimo, 69 Milano', '2014-03-01', '2014-03-01', '4', 'Amici animali');
INSERT INTO public.personale VALUES ('RCCLLD67D01F205H', 'Lealdo', 'Ricci', '3198732590', 'LealdoRicci@dayrep.com', 'Capo Reparto', '1987-12-03', 'Via Antonio Beccadelli, 16 Milano', '2014-04-07', '2019-04-07', '4', 'Cura della persona');
INSERT INTO public.personale VALUES ('DNSGLL68E20F205H', 'Galileo', 'Udinese', '3463071760', 'GalileoUdinese@jourrapide.com', 'Capo Reparto', '1968-05-20', 'Via Nolana, 55 Milano', '2014-09-23', '2020-09-23', '4', 'Tutto per la casa');
INSERT INTO public.personale VALUES ('RCRCSM83B21F205N', 'Cosimo', 'Arcuri', '3606678231', 'CosimoArcuri@jourrapide.com', 'Attività di supporto alla vendita e assistenza alla clientela', '1983-02-22', 'Via Nazionale, 34 Milano', '2013-04-18', '2019-04-18', '4', 'Casse');
INSERT INTO public.personale VALUES ('RZZPRD76S27F205D', 'Paride', 'Rizzo', '3850470084', 'ParideRizzo@armyspy.com', 'Allestimento e rifornimento degli scaffali', '1976-11-27', 'Via Guantai Nuovi, 89 Milano', '2015-06-18', '2019-06-18', '3', 'Frutta e verdura');
INSERT INTO public.personale VALUES ('ZTTLVR92D08F205K', 'Alvaro', 'Zettici', '3164228548', 'AlvaroZetticci@jourrapide.com', 'Verifica delle scadenze', '1992-04-08', 'Via Ugo Foscolo, 11 Milano', '2020-05-18', '2020-05-18', '1', 'Macelleria');
INSERT INTO public.personale VALUES ('RMNCRS83B21F205L', 'Christian', 'Romani', '3673625824', 'ChristianRomani@armyspy.com', 'Allestimento e rifornimento degli scaffali', '1983-02-22', 'Via Miguel Cervantes, 97 Milano', '2020-01-18', '2020-01-18', '1', 'Cancelleria');
INSERT INTO public.personale VALUES ('TRNFRC93H62F205L', 'Federica', 'Trentini', '3690989434', 'FedericaTrentini@dayrep.com', 'Allestimento e rifornimento degli scaffali', '1993-06-22', 'Via Sedile di Porto, 59 Milano', '2018-09-19', '2020-09-19', '2', 'Tutto per la casa');
INSERT INTO public.personale VALUES ('MNNPTR93L23F205B', 'Pietro', 'Manna', '3788656848', 'PietroManna@armyspy.com', 'Attività di inventario', '1993-07-23', 'Via Alfredo Fusco, 87 Milano', '2017-02-19', '2019-02-19', '2', 'Amici animali');
INSERT INTO public.personale VALUES ('FRRGLR91D61F205T', 'Gloria', 'Ferri', '3840274378', 'GloriaFerri@armyspy.com', 'Verifica delle scadenze', '1991-04-22', 'Via Piccini, 32 Milano', '2015-09-09', '2019-09-19', '3', 'Salumi e formaggi');


--
-- TOC entry 2569 (class 0 OID 21564)
-- Dependencies: 193
-- Data for Name: prodotto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.prodotto VALUES ('P0001', 'pomodoro', 0.20, '2020-07-18', 40, 'Verdura');
INSERT INTO public.prodotto VALUES ('P0002', 'mozzarella', 0.95, '2020-07-26', 80, 'Latticini');
INSERT INTO public.prodotto VALUES ('P0003', 'pasta', 1.00, '2022-07-16', 50, 'Pasta e riso');
INSERT INTO public.prodotto VALUES ('P0004', 'pesto', 1.25, '2021-07-18', 120, 'Pelati, passate e sughi');
INSERT INTO public.prodotto VALUES ('P0005', 'patate', 1.40, '2020-12-14', 50, 'Verdura');
INSERT INTO public.prodotto VALUES ('P0008', 'pollo', 3.80, '2020-07-18', 130, 'Pollo tacchino e coniglio');
INSERT INTO public.prodotto VALUES ('P0009', 'vitello', 4.20, '2020-07-18', 150, 'Carne bovina');
INSERT INTO public.prodotto VALUES ('P0010', 'riso', 1.20, '2023-10-15', 40, 'Pasta e riso');
INSERT INTO public.prodotto VALUES ('P0011', 'tonno in scatola', 3.60, '2022-04-10', 80, 'Tonno pesce e carne in scatola');
INSERT INTO public.prodotto VALUES ('P0012', 'maionese', 2.30, '2020-11-08', 70, 'Salse');
INSERT INTO public.prodotto VALUES ('P0013', 'capperi', 2.50, '2021-01-14', 60, 'Sottoli e sottaceti');
INSERT INTO public.prodotto VALUES ('P0014', 'farina', 0.90, '2021-04-05', 50, 'Farine e polenta');
INSERT INTO public.prodotto VALUES ('P0015', 'uova', 1.90, '2020-07-29', 60, 'Uova');
INSERT INTO public.prodotto VALUES ('P0016', 'acqua', 0.40, '2022-07-18', 20, 'Acqua');
INSERT INTO public.prodotto VALUES ('P0017', 'prosciutto cotto', 1.60, '2020-07-29', 70, 'Affettati');
INSERT INTO public.prodotto VALUES ('P0018', 'salmone', 5.60, '2020-07-18', 150, 'Pesce fresco');
INSERT INTO public.prodotto VALUES ('P0019', 'patatine', 1.30, '2020-11-04', 40, 'Snack salati');
INSERT INTO public.prodotto VALUES ('P0020', 'biscotti', 2.00, '2021-11-13', 50, 'Biscotti merendine e snack dolci');
INSERT INTO public.prodotto VALUES ('P0021', 'cornetti', 2.60, '2021-08-17', 50, 'Gelati');
INSERT INTO public.prodotto VALUES ('P0022', 'sofficini', 2.30, '2021-10-09', 60, 'Fritti');
INSERT INTO public.prodotto VALUES ('P0023', 'birra', 2.10, '2021-09-12', 110, 'Birre');
INSERT INTO public.prodotto VALUES ('P0024', 'penne bic', 1.40, '2022-07-18', 80, 'Cancelleria');
INSERT INTO public.prodotto VALUES ('P0025', 'bianchetto', 2.00, '2022-07-18', 80, 'Cancelleria');
INSERT INTO public.prodotto VALUES ('P0026', 'croccantini per gatti', 3.00, '2022-08-10', 120, 'Alimenti per gatti');
INSERT INTO public.prodotto VALUES ('P0027', 'bagno schiuma', 1.50, '2022-07-19', 60, 'Cura del corpo');
INSERT INTO public.prodotto VALUES ('P0028', 'shampoo', 2.00, '2022-04-18', 70, 'Cura dei capelli');
INSERT INTO public.prodotto VALUES ('P0029', 'mentos', 3.00, '2021-08-15', 50, 'Snack dolci');
INSERT INTO public.prodotto VALUES ('P0030', 'ammoniaca', 2.70, '2022-05-14', 40, 'Detersivi per la casa');
INSERT INTO public.prodotto VALUES ('P0031', 'mele', 0.40, '2020-07-26', 30, 'Frutta');
INSERT INTO public.prodotto VALUES ('P0032', 'olio extra vergine oliva', 4.30, '2022-04-19', 120, 'Oli');
INSERT INTO public.prodotto VALUES ('P0033', 'rosmarino', 1.20, '2021-09-20', 40, 'Spezie');
INSERT INTO public.prodotto VALUES ('P0034', 'kinder bueno', 1.90, '2021-03-22', 50, 'Snack dolci');
INSERT INTO public.prodotto VALUES ('P0040', 'lievito', 1.50, '2020-12-19', 60, 'Farina e polenta');
INSERT INTO public.prodotto VALUES ('P0006', 'pane', 1.30, '2020-07-27', 60, 'Panificio');
INSERT INTO public.prodotto VALUES ('P0007', 'focaccia', 1.80, '2020-07-26', 70, 'Panificio');
INSERT INTO public.prodotto VALUES ('P0035', 'pasta al pesto', 2.90, '2020-07-20', 70, 'Gastronomia e pasta fresca');
INSERT INTO public.prodotto VALUES ('P0036', 'insalata di riso', 2.40, '2020-07-21', 60, 'Gastronomia e pasta fresca');
INSERT INTO public.prodotto VALUES ('P0037', 'vitello tonnato', 3.50, '2020-07-19', 120, 'Gastronomia e pasta fresca');
INSERT INTO public.prodotto VALUES ('P0038', 'pollo arrosto', 5.10, '2020-07-19', 140, 'Gastronomia e pasta fresca');
INSERT INTO public.prodotto VALUES ('P0039', 'patate arrosto', 2.50, '2020-07-19', 90, 'Gastronomia e pasta fresca');
INSERT INTO public.prodotto VALUES ('P0041', 'pollo e patate arrosto', 5.50, '2020-07-19', 90, 'Gastronomia e pasta fresca');


--
-- TOC entry 2564 (class 0 OID 21500)
-- Dependencies: 188
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reparto VALUES ('Frutta e verdura');
INSERT INTO public.reparto VALUES ('Salumi e formaggi');
INSERT INTO public.reparto VALUES ('Gastronomia e pasta fresca');
INSERT INTO public.reparto VALUES ('Latte, burro, uova e yogurt');
INSERT INTO public.reparto VALUES ('Macelleria');
INSERT INTO public.reparto VALUES ('Pescheria');
INSERT INTO public.reparto VALUES ('Colazione, merenda e dolci');
INSERT INTO public.reparto VALUES ('Inventario alimentari');
INSERT INTO public.reparto VALUES ('Panificio');
INSERT INTO public.reparto VALUES ('Gelati e surgelati');
INSERT INTO public.reparto VALUES ('Acqua, bevande, vino e alcolici');
INSERT INTO public.reparto VALUES ('Cancelleria');
INSERT INTO public.reparto VALUES ('Amici animali');
INSERT INTO public.reparto VALUES ('Cura della persona');
INSERT INTO public.reparto VALUES ('Tutto per la casa');
INSERT INTO public.reparto VALUES ('Casse');


--
-- TOC entry 2579 (class 0 OID 21689)
-- Dependencies: 203
-- Data for Name: ricevuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ricevuta VALUES ('2020-02-27', '44135', 'Cuffie per smartphone', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.ricevuta VALUES ('2020-04-05', '99057', 'Sei bicchieri', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.ricevuta VALUES ('2020-06-30', '37910', 'Giradischi', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.ricevuta VALUES ('2020-03-13', '37910', 'Macinapepe', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.ricevuta VALUES ('2020-05-01', '93591', 'Borsa trasportino gatto', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.ricevuta VALUES ('2020-04-19', '28424', 'Asciugamani', 'Via Lorenteggio, 19 Milano');


--
-- TOC entry 2568 (class 0 OID 21549)
-- Dependencies: 192
-- Data for Name: scontrino; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.scontrino VALUES ('1100223344', '2020-07-10', '44135', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.scontrino VALUES ('1100334455', '2020-07-06', '28424', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.scontrino VALUES ('1100445566', '2020-05-12', '99057', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.scontrino VALUES ('1100556677', '2020-05-12', NULL, 'Via Alessandro Manzoni, 45 Milano');


--
-- TOC entry 2575 (class 0 OID 21635)
-- Dependencies: 199
-- Data for Name: situato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.situato VALUES ('Frutta e verdura', 'P0001');
INSERT INTO public.situato VALUES ('Frutta e verdura', 'P0005');
INSERT INTO public.situato VALUES ('Frutta e verdura', 'P0031');
INSERT INTO public.situato VALUES ('Salumi e formaggi', 'P0002');
INSERT INTO public.situato VALUES ('Salumi e formaggi', 'P0017');
INSERT INTO public.situato VALUES ('Latte, burro, uova e yogurt', 'P0015');
INSERT INTO public.situato VALUES ('Macelleria', 'P0008');
INSERT INTO public.situato VALUES ('Macelleria', 'P0009');
INSERT INTO public.situato VALUES ('Pescheria', 'P0018');
INSERT INTO public.situato VALUES ('Colazione, merenda e dolci', 'P0020');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0003');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0004');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0010');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0011');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0012');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0013');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0014');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0019');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0032');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0033');
INSERT INTO public.situato VALUES ('Inventario alimentari', 'P0040');
INSERT INTO public.situato VALUES ('Gelati e surgelati', 'P0021');
INSERT INTO public.situato VALUES ('Gelati e surgelati', 'P0022');
INSERT INTO public.situato VALUES ('Acqua, bevande, vino e alcolici', 'P0016');
INSERT INTO public.situato VALUES ('Acqua, bevande, vino e alcolici', 'P0023');
INSERT INTO public.situato VALUES ('Cancelleria', 'P0024');
INSERT INTO public.situato VALUES ('Cancelleria', 'P0025');
INSERT INTO public.situato VALUES ('Amici animali', 'P0026');
INSERT INTO public.situato VALUES ('Cura della persona', 'P0027');
INSERT INTO public.situato VALUES ('Cura della persona', 'P0028');
INSERT INTO public.situato VALUES ('Tutto per la casa', 'P0030');
INSERT INTO public.situato VALUES ('Casse', 'P0029');
INSERT INTO public.situato VALUES ('Casse', 'P0034');


--
-- TOC entry 2561 (class 0 OID 21479)
-- Dependencies: 185
-- Data for Name: supermercato; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.supermercato VALUES ('Via Lorenteggio, 19 Milano');
INSERT INTO public.supermercato VALUES ('Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.supermercato VALUES ('Via Alessandro Manzoni, 45 Milano');


--
-- TOC entry 2566 (class 0 OID 21526)
-- Dependencies: 190
-- Data for Name: turnolavoro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Lunedì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Lunedì', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Martedì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Martedì', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Mercoledì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Mercoledì', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Giovedì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Giovedì', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Venerdì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Venerdì', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('RZZPRD76S27F205D', 'Sabato', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Sabato', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('PLRFNN69B22F205Z', 'Domenica', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('ZTTLVR92D08F205K', 'Domenica', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('ZTTLVR92D08F205K', 'Sabato', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Lunedì', '9:00 - 13:00', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Martedì', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Mercoledì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Giovedì', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Venerdì', '9:00 - 13:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('TRNFRC93H62F205L', 'Sabato', '9:00 - 13:00', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.turnolavoro VALUES ('LFNMRT62P01F205H', 'Domenica', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('SCLGRI81B08F205Y', '1 Maggio', '9:00 - 13:00', 'Via Vittorio Emanuele, 50 Milano');
INSERT INTO public.turnolavoro VALUES ('FRNMRT67D01F205L', '25 Dicembre', '9:00 - 13:00', 'Via Lorenteggio, 19 Milano');
INSERT INTO public.turnolavoro VALUES ('DNSGLL68E20F205H', '1 Gennaio', '13:00 - 20:00', 'Via Alessandro Manzoni, 45 Milano');
INSERT INTO public.turnolavoro VALUES ('FRRGLR91D61F205T', '25 Dicembre', '9:00 - 13:00', 'Via Lorenteggio, 19 Milano');


--
-- TOC entry 2576 (class 0 OID 21650)
-- Dependencies: 200
-- Data for Name: venduto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venduto VALUES ('P0001', '1100223344', 5);
INSERT INTO public.venduto VALUES ('P0002', '1100223344', 1);
INSERT INTO public.venduto VALUES ('P0016', '1100223344', 6);
INSERT INTO public.venduto VALUES ('P0032', '1100223344', 1);
INSERT INTO public.venduto VALUES ('P0010', '1100334455', 1);
INSERT INTO public.venduto VALUES ('P0011', '1100334455', 3);
INSERT INTO public.venduto VALUES ('P0015', '1100334455', 2);
INSERT INTO public.venduto VALUES ('P0021', '1100334455', 2);
INSERT INTO public.venduto VALUES ('P0033', '1100334455', 1);
INSERT INTO public.venduto VALUES ('P0040', '1100334455', 1);
INSERT INTO public.venduto VALUES ('P0026', '1100445566', 1);
INSERT INTO public.venduto VALUES ('P0008', '1100445566', 3);
INSERT INTO public.venduto VALUES ('P0014', '1100556677', 2);
INSERT INTO public.venduto VALUES ('P0015', '1100556677', 3);
INSERT INTO public.venduto VALUES ('P0016', '1100556677', 2);
INSERT INTO public.venduto VALUES ('P0040', '1100556677', 2);
INSERT INTO public.venduto VALUES ('P0024', '1100556677', 3);
INSERT INTO public.venduto VALUES ('P0018', '1100556677', 2);
INSERT INTO public.venduto VALUES ('P0007', '1100223344', 2);
INSERT INTO public.venduto VALUES ('P0038', '1100334455', 1);
INSERT INTO public.venduto VALUES ('P0036', '1100445566', 2);
INSERT INTO public.venduto VALUES ('P0006', '1100556677', 5);
INSERT INTO public.venduto VALUES ('P0009', '1100556677', 2);


-- Completed on 2020-07-27 10:03:34 CEST

--
-- PostgreSQL database dump complete
--

