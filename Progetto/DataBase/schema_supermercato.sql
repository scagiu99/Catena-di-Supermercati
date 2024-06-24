--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.16
-- Dumped by pg_dump version 9.6.16

-- Started on 2020-07-27 10:00:51 CEST

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
-- TOC entry 1 (class 3079 OID 12655)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 21494)
-- Name: anzianità; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."anzianità" (
    livello character(1) NOT NULL,
    ruolo character varying(50) NOT NULL,
    stipendio numeric(4,0) NOT NULL,
    CONSTRAINT "anzianità_stipendio_check" CHECK (((stipendio >= (700)::numeric) AND (stipendio <= (1500)::numeric)))
);


ALTER TABLE public."anzianità" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 21583)
-- Name: assemblato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assemblato (
    ida character(5) NOT NULL
);


ALTER TABLE public.assemblato OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 21683)
-- Name: catalogo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalogo (
    premio character varying(50) NOT NULL,
    numpunti numeric(6,0) NOT NULL,
    CONSTRAINT catalogo_numpunti_check CHECK ((numpunti > (0)::numeric))
);


ALTER TABLE public.catalogo OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 21541)
-- Name: clientefidelizzato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientefidelizzato (
    idtessera character(5) NOT NULL,
    cf character(16),
    nome character varying(50) NOT NULL,
    cognome character varying(50) NOT NULL,
    telc character varying(10) NOT NULL,
    residenza character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    datanascita date NOT NULL,
    numpuntitot numeric(6,0) NOT NULL,
    CONSTRAINT clientefidelizzato_numpuntitot_check CHECK (((numpuntitot >= (0)::numeric) AND (numpuntitot <= (10000)::numeric)))
);


ALTER TABLE public.clientefidelizzato OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 21619)
-- Name: composizione; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.composizione (
    idac character(5) NOT NULL,
    idmpac character(5) NOT NULL,
    qtampac numeric(2,0) NOT NULL,
    CONSTRAINT composizione_qtampac_check CHECK ((qtampac >= (0)::numeric))
);


ALTER TABLE public.composizione OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 21731)
-- Name: contiene; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contiene (
    idprodc character varying(5) NOT NULL,
    idfattura character varying(10) NOT NULL,
    codprodfornitore character(6) NOT NULL,
    qtac numeric(3,0) NOT NULL,
    costo numeric(4,2) NOT NULL,
    CONSTRAINT contiene_costo_check CHECK ((costo >= (0)::numeric)),
    CONSTRAINT contiene_qtac_check CHECK ((qtac > (0)::numeric))
);


ALTER TABLE public.contiene OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 21716)
-- Name: fattura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fattura (
    id character(10) NOT NULL,
    data date NOT NULL,
    tempoconsegna character varying(2) NOT NULL,
    p_ivaf character(11),
    indirizzof character varying(50)
);


ALTER TABLE public.fattura OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 21709)
-- Name: fornitore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornitore (
    p_iva character(11) NOT NULL,
    email character varying(50) NOT NULL,
    tel character varying(10) NOT NULL,
    indirizzo character varying(50) NOT NULL,
    ragionesociale character varying(50) NOT NULL,
    pagamento character varying(50) NOT NULL
);


ALTER TABLE public.fornitore OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 21603)
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingrediente (
    idai character(5) NOT NULL,
    idmpi character(5) NOT NULL,
    qtampi numeric(2,0) NOT NULL,
    CONSTRAINT ingrediente_qtampi_check CHECK ((qtampi >= (0)::numeric))
);


ALTER TABLE public.ingrediente OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 21666)
-- Name: magazzino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.magazzino (
    idprodm character(5) NOT NULL,
    indirizzom character varying(50) NOT NULL,
    qtatotale numeric(3,0),
    sogliaminima numeric(2,0),
    CONSTRAINT magazzino_qtatotale_check CHECK ((qtatotale > (0)::numeric)),
    CONSTRAINT materiaprima_sogliaminima_check CHECK ((sogliaminima > (0)::numeric))
);


ALTER TABLE public.magazzino OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 21573)
-- Name: materiaprima; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materiaprima (
    idmp character(5) NOT NULL
);


ALTER TABLE public.materiaprima OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 21593)
-- Name: mpassemblata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mpassemblata (
    idmpa character(5) NOT NULL
);


ALTER TABLE public.mpassemblata OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 21484)
-- Name: orariapertura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orariapertura (
    indirizzoa character varying(50) NOT NULL,
    giornoa character varying(50) NOT NULL,
    orarioa character varying(50) NOT NULL,
    descrizione character varying(50) NOT NULL
);


ALTER TABLE public.orariapertura OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 21505)
-- Name: personale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personale (
    cf character(16) NOT NULL,
    nome character varying(50) NOT NULL,
    cognome character varying(50) NOT NULL,
    tel character varying(10) NOT NULL,
    email character varying(50) NOT NULL,
    mansione character varying(80) NOT NULL,
    datanascita date NOT NULL,
    residenza character varying(50) NOT NULL,
    dataassunzione date NOT NULL,
    datacambiolivello date NOT NULL,
    livellop character(1) NOT NULL,
    repartop character varying(50) NOT NULL
);


ALTER TABLE public.personale OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 21564)
-- Name: prodotto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodotto (
    idp character(5) NOT NULL,
    nomep character varying(50) NOT NULL,
    prezzop numeric(3,2) NOT NULL,
    scadenzap date NOT NULL,
    puntip numeric(3,0),
    categoriap character varying(50) NOT NULL,
    CONSTRAINT prodotto_prezzop_check CHECK ((prezzop > (0)::numeric)),
    CONSTRAINT prodotto_puntip_check CHECK ((puntip >= (0)::numeric))
);


ALTER TABLE public.prodotto OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 21500)
-- Name: reparto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reparto (
    nome character varying(50) NOT NULL
);


ALTER TABLE public.reparto OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 21689)
-- Name: ricevuta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ricevuta (
    datar date NOT NULL,
    idtesserar character(5) NOT NULL,
    nomepremio character varying(50) NOT NULL,
    indirizzor character varying(50)
);


ALTER TABLE public.ricevuta OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 21549)
-- Name: scontrino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scontrino (
    cod character varying(10) NOT NULL,
    data date NOT NULL,
    idtesseras character(5),
    indirizzos character varying(50)
);


ALTER TABLE public.scontrino OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 21635)
-- Name: situato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.situato (
    nomerep character varying(50) NOT NULL,
    idprods character varying(50) NOT NULL
);


ALTER TABLE public.situato OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 21479)
-- Name: supermercato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supermercato (
    indirizzo character varying(50) NOT NULL
);


ALTER TABLE public.supermercato OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 21526)
-- Name: turnolavoro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turnolavoro (
    cft character(16) NOT NULL,
    giornot character varying(50) NOT NULL,
    orariot character varying(50) NOT NULL,
    indirizzot character varying(50) NOT NULL
);


ALTER TABLE public.turnolavoro OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 21650)
-- Name: venduto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venduto (
    idpv character(5) NOT NULL,
    codps character varying(10) NOT NULL,
    qtav numeric(2,0) NOT NULL,
    CONSTRAINT venduto_qtav_check CHECK ((qtav > (0)::numeric))
);


ALTER TABLE public.venduto OWNER TO postgres;

--
-- TOC entry 2366 (class 2606 OID 21499)
-- Name: anzianità anzianità_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."anzianità"
    ADD CONSTRAINT "anzianità_pkey" PRIMARY KEY (livello);


--
-- TOC entry 2392 (class 2606 OID 21587)
-- Name: assemblato assemblato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assemblato
    ADD CONSTRAINT assemblato_pkey PRIMARY KEY (ida);


--
-- TOC entry 2406 (class 2606 OID 21688)
-- Name: catalogo catalogo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.catalogo
    ADD CONSTRAINT catalogo_pkey PRIMARY KEY (premio);


--
-- TOC entry 2380 (class 2606 OID 21548)
-- Name: clientefidelizzato clientefidelizzato_cf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientefidelizzato
    ADD CONSTRAINT clientefidelizzato_cf_key UNIQUE (cf);


--
-- TOC entry 2382 (class 2606 OID 21546)
-- Name: clientefidelizzato clientefidelizzato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientefidelizzato
    ADD CONSTRAINT clientefidelizzato_pkey PRIMARY KEY (idtessera);


--
-- TOC entry 2398 (class 2606 OID 21624)
-- Name: composizione composizione_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composizione
    ADD CONSTRAINT composizione_pkey PRIMARY KEY (idac, idmpac);


--
-- TOC entry 2416 (class 2606 OID 21737)
-- Name: contiene contiene_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contiene
    ADD CONSTRAINT contiene_pkey PRIMARY KEY (idprodc, idfattura);


--
-- TOC entry 2414 (class 2606 OID 21720)
-- Name: fattura fattura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_pkey PRIMARY KEY (id);


--
-- TOC entry 2410 (class 2606 OID 21715)
-- Name: fornitore fornitore_email_tel_indirizzo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornitore
    ADD CONSTRAINT fornitore_email_tel_indirizzo_key UNIQUE (email, tel, indirizzo);


--
-- TOC entry 2412 (class 2606 OID 21713)
-- Name: fornitore fornitore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornitore
    ADD CONSTRAINT fornitore_pkey PRIMARY KEY (p_iva);


--
-- TOC entry 2396 (class 2606 OID 21608)
-- Name: ingrediente ingrediente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pkey PRIMARY KEY (idai, idmpi);


--
-- TOC entry 2404 (class 2606 OID 21672)
-- Name: magazzino magazzino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magazzino
    ADD CONSTRAINT magazzino_pkey PRIMARY KEY (idprodm, indirizzom);


--
-- TOC entry 2390 (class 2606 OID 21577)
-- Name: materiaprima materiaprima_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materiaprima
    ADD CONSTRAINT materiaprima_pkey PRIMARY KEY (idmp);


--
-- TOC entry 2394 (class 2606 OID 21597)
-- Name: mpassemblata mpassemblata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpassemblata
    ADD CONSTRAINT mpassemblata_pkey PRIMARY KEY (idmpa);


--
-- TOC entry 2364 (class 2606 OID 21488)
-- Name: orariapertura orariapertura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orariapertura
    ADD CONSTRAINT orariapertura_pkey PRIMARY KEY (indirizzoa, giornoa, orarioa);


--
-- TOC entry 2370 (class 2606 OID 21513)
-- Name: personale personale_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_email_key UNIQUE (email);


--
-- TOC entry 2372 (class 2606 OID 21515)
-- Name: personale personale_nome_cognome_datanascita_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_nome_cognome_datanascita_key UNIQUE (nome, cognome, datanascita);


--
-- TOC entry 2374 (class 2606 OID 21509)
-- Name: personale personale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_pkey PRIMARY KEY (cf);


--
-- TOC entry 2376 (class 2606 OID 21511)
-- Name: personale personale_tel_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_tel_key UNIQUE (tel);


--
-- TOC entry 2386 (class 2606 OID 21572)
-- Name: prodotto prodotto_nomep_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_nomep_key UNIQUE (nomep);


--
-- TOC entry 2388 (class 2606 OID 21570)
-- Name: prodotto prodotto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (idp);


--
-- TOC entry 2368 (class 2606 OID 21504)
-- Name: reparto reparto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (nome);


--
-- TOC entry 2408 (class 2606 OID 21693)
-- Name: ricevuta ricevuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ricevuta
    ADD CONSTRAINT ricevuta_pkey PRIMARY KEY (datar, idtesserar, nomepremio);


--
-- TOC entry 2384 (class 2606 OID 21553)
-- Name: scontrino scontrino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scontrino
    ADD CONSTRAINT scontrino_pkey PRIMARY KEY (cod);


--
-- TOC entry 2400 (class 2606 OID 21639)
-- Name: situato situato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situato
    ADD CONSTRAINT situato_pkey PRIMARY KEY (nomerep, idprods);


--
-- TOC entry 2362 (class 2606 OID 21483)
-- Name: supermercato supermercato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supermercato
    ADD CONSTRAINT supermercato_pkey PRIMARY KEY (indirizzo);


--
-- TOC entry 2378 (class 2606 OID 21530)
-- Name: turnolavoro turnolavoro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnolavoro
    ADD CONSTRAINT turnolavoro_pkey PRIMARY KEY (cft, giornot, orariot, indirizzot);


--
-- TOC entry 2402 (class 2606 OID 21655)
-- Name: venduto venduto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venduto
    ADD CONSTRAINT venduto_pkey PRIMARY KEY (idpv, codps);


--
-- TOC entry 2425 (class 2606 OID 21588)
-- Name: assemblato assemblato_ida_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assemblato
    ADD CONSTRAINT assemblato_ida_fkey FOREIGN KEY (ida) REFERENCES public.prodotto(idp);


--
-- TOC entry 2429 (class 2606 OID 21625)
-- Name: composizione composizione_idac_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composizione
    ADD CONSTRAINT composizione_idac_fkey FOREIGN KEY (idac) REFERENCES public.assemblato(ida);


--
-- TOC entry 2430 (class 2606 OID 21630)
-- Name: composizione composizione_idmpac_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composizione
    ADD CONSTRAINT composizione_idmpac_fkey FOREIGN KEY (idmpac) REFERENCES public.mpassemblata(idmpa);


--
-- TOC entry 2443 (class 2606 OID 21743)
-- Name: contiene contiene_idfattura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contiene
    ADD CONSTRAINT contiene_idfattura_fkey FOREIGN KEY (idfattura) REFERENCES public.fattura(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2442 (class 2606 OID 21738)
-- Name: contiene contiene_idprodc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contiene
    ADD CONSTRAINT contiene_idprodc_fkey FOREIGN KEY (idprodc) REFERENCES public.prodotto(idp) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2441 (class 2606 OID 21726)
-- Name: fattura fattura_indirizzof_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_indirizzof_fkey FOREIGN KEY (indirizzof) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2440 (class 2606 OID 21721)
-- Name: fattura fattura_p_ivaf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_p_ivaf_fkey FOREIGN KEY (p_ivaf) REFERENCES public.fornitore(p_iva) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2427 (class 2606 OID 21609)
-- Name: ingrediente ingrediente_idai_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_idai_fkey FOREIGN KEY (idai) REFERENCES public.assemblato(ida);


--
-- TOC entry 2428 (class 2606 OID 21614)
-- Name: ingrediente ingrediente_idmpi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_idmpi_fkey FOREIGN KEY (idmpi) REFERENCES public.materiaprima(idmp);


--
-- TOC entry 2435 (class 2606 OID 21673)
-- Name: magazzino magazzino_idprodm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magazzino
    ADD CONSTRAINT magazzino_idprodm_fkey FOREIGN KEY (idprodm) REFERENCES public.prodotto(idp) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2436 (class 2606 OID 21678)
-- Name: magazzino magazzino_indirizzom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.magazzino
    ADD CONSTRAINT magazzino_indirizzom_fkey FOREIGN KEY (indirizzom) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2424 (class 2606 OID 21578)
-- Name: materiaprima materiaprima_idmp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materiaprima
    ADD CONSTRAINT materiaprima_idmp_fkey FOREIGN KEY (idmp) REFERENCES public.prodotto(idp);


--
-- TOC entry 2426 (class 2606 OID 21598)
-- Name: mpassemblata mpassemblata_idmpa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpassemblata
    ADD CONSTRAINT mpassemblata_idmpa_fkey FOREIGN KEY (idmpa) REFERENCES public.prodotto(idp);


--
-- TOC entry 2417 (class 2606 OID 21489)
-- Name: orariapertura orariapertura_indirizzoa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orariapertura
    ADD CONSTRAINT orariapertura_indirizzoa_fkey FOREIGN KEY (indirizzoa) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2418 (class 2606 OID 21516)
-- Name: personale personale_livellop_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_livellop_fkey FOREIGN KEY (livellop) REFERENCES public."anzianità"(livello) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2419 (class 2606 OID 21521)
-- Name: personale personale_repartop_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personale
    ADD CONSTRAINT personale_repartop_fkey FOREIGN KEY (repartop) REFERENCES public.reparto(nome) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2437 (class 2606 OID 21694)
-- Name: ricevuta ricevuta_idtesserar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ricevuta
    ADD CONSTRAINT ricevuta_idtesserar_fkey FOREIGN KEY (idtesserar) REFERENCES public.clientefidelizzato(idtessera) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2439 (class 2606 OID 21704)
-- Name: ricevuta ricevuta_indirizzor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ricevuta
    ADD CONSTRAINT ricevuta_indirizzor_fkey FOREIGN KEY (indirizzor) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2438 (class 2606 OID 21699)
-- Name: ricevuta ricevuta_nomepremio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ricevuta
    ADD CONSTRAINT ricevuta_nomepremio_fkey FOREIGN KEY (nomepremio) REFERENCES public.catalogo(premio) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2422 (class 2606 OID 21554)
-- Name: scontrino scontrino_idtesseras_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scontrino
    ADD CONSTRAINT scontrino_idtesseras_fkey FOREIGN KEY (idtesseras) REFERENCES public.clientefidelizzato(idtessera) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2423 (class 2606 OID 21559)
-- Name: scontrino scontrino_indirizzos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scontrino
    ADD CONSTRAINT scontrino_indirizzos_fkey FOREIGN KEY (indirizzos) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2432 (class 2606 OID 21645)
-- Name: situato situato_idprods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situato
    ADD CONSTRAINT situato_idprods_fkey FOREIGN KEY (idprods) REFERENCES public.prodotto(idp) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2431 (class 2606 OID 21640)
-- Name: situato situato_nomerep_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situato
    ADD CONSTRAINT situato_nomerep_fkey FOREIGN KEY (nomerep) REFERENCES public.reparto(nome) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2420 (class 2606 OID 21531)
-- Name: turnolavoro turnolavoro_cft_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnolavoro
    ADD CONSTRAINT turnolavoro_cft_fkey FOREIGN KEY (cft) REFERENCES public.personale(cf) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2421 (class 2606 OID 21536)
-- Name: turnolavoro turnolavoro_indirizzot_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turnolavoro
    ADD CONSTRAINT turnolavoro_indirizzot_fkey FOREIGN KEY (indirizzot) REFERENCES public.supermercato(indirizzo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2434 (class 2606 OID 21661)
-- Name: venduto venduto_codps_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venduto
    ADD CONSTRAINT venduto_codps_fkey FOREIGN KEY (codps) REFERENCES public.scontrino(cod) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2433 (class 2606 OID 21656)
-- Name: venduto venduto_idpv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venduto
    ADD CONSTRAINT venduto_idpv_fkey FOREIGN KEY (idpv) REFERENCES public.prodotto(idp) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2020-07-27 10:00:51 CEST

--
-- PostgreSQL database dump complete
--

