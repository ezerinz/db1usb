--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.1 (Ubuntu 15.1-1.pgdg22.04+1)

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
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.pelanggan (
    "nomorPelanggan" integer NOT NULL,
    "namaPelanggan" character varying,
    "nomorHp" character varying(12),
    kecamatan character varying,
    kota character varying,
    "kodePos" character varying(6)
);


ALTER TABLE public.pelanggan OWNER TO ezerinz;

--
-- Name: pelanggan_nomorPelanggan_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public."pelanggan_nomorPelanggan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."pelanggan_nomorPelanggan_seq" OWNER TO ezerinz;

--
-- Name: pelanggan_nomorPelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public."pelanggan_nomorPelanggan_seq" OWNED BY public.pelanggan."nomorPelanggan";


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.pesanan (
    "nomorPesanan" integer NOT NULL,
    "kodeProduk" integer,
    "jumlahPesanan" integer
);


ALTER TABLE public.pesanan OWNER TO ezerinz;

--
-- Name: pesanan_nomorPesanan_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public."pesanan_nomorPesanan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."pesanan_nomorPesanan_seq" OWNER TO ezerinz;

--
-- Name: pesanan_nomorPesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public."pesanan_nomorPesanan_seq" OWNED BY public.pesanan."nomorPesanan";


--
-- Name: produk; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.produk (
    "kodeProduk" integer NOT NULL,
    "namaProduk" character varying,
    "hargaJual" numeric,
    "jumlahStok" integer
);


ALTER TABLE public.produk OWNER TO ezerinz;

--
-- Name: produk_kodeProduk_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public."produk_kodeProduk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."produk_kodeProduk_seq" OWNER TO ezerinz;

--
-- Name: produk_kodeProduk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public."produk_kodeProduk_seq" OWNED BY public.produk."kodeProduk";


--
-- Name: pelanggan nomorPelanggan; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN "nomorPelanggan" SET DEFAULT nextval('public."pelanggan_nomorPelanggan_seq"'::regclass);


--
-- Name: pesanan nomorPesanan; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN "nomorPesanan" SET DEFAULT nextval('public."pesanan_nomorPesanan_seq"'::regclass);


--
-- Name: produk kodeProduk; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.produk ALTER COLUMN "kodeProduk" SET DEFAULT nextval('public."produk_kodeProduk_seq"'::regclass);


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.pelanggan ("nomorPelanggan", "namaPelanggan", "nomorHp", kecamatan, kota, "kodePos") FROM stdin;
1	Amelia	083212420619	Polewali	Polewali Mandar	818999
2	Haikal	088691921088	Tubo Sendana	Majene	913291
3	Efortuntrio	089121212940	Banggae	Majene	910234
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.pesanan ("nomorPesanan", "kodeProduk", "jumlahPesanan") FROM stdin;
1	2	4
2	1	1
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.produk ("kodeProduk", "namaProduk", "hargaJual", "jumlahStok") FROM stdin;
1	Kipas Karakter	75000	80
2	Rice Cooker	200000	210
\.


--
-- Name: pelanggan_nomorPelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."pelanggan_nomorPelanggan_seq"', 1, false);


--
-- Name: pesanan_nomorPesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."pesanan_nomorPesanan_seq"', 1, false);


--
-- Name: produk_kodeProduk_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."produk_kodeProduk_seq"', 1, false);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY ("nomorPelanggan");


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY ("nomorPesanan");


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY ("kodeProduk");


--
-- PostgreSQL database dump complete
--

