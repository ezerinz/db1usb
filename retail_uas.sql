--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6
-- Dumped by pg_dump version 14.6

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
-- Name: detailPesanan; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public."detailPesanan" (
    "nomorPesanan" integer NOT NULL,
    id_produk integer NOT NULL,
    "jumlahPesanan" integer,
    "hargaJualPerUnit" numeric
);


ALTER TABLE public."detailPesanan" OWNER TO ezerinz;

--
-- Name: detailPesanan_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public."detailPesanan_id_produk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."detailPesanan_id_produk_seq" OWNER TO ezerinz;

--
-- Name: detailPesanan_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public."detailPesanan_id_produk_seq" OWNED BY public."detailPesanan".id_produk;


--
-- Name: detailPesanan_nomorPesanan_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public."detailPesanan_nomorPesanan_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."detailPesanan_nomorPesanan_seq" OWNER TO ezerinz;

--
-- Name: detailPesanan_nomorPesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public."detailPesanan_nomorPesanan_seq" OWNED BY public."detailPesanan"."nomorPesanan";


--
-- Name: pembeli; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama character varying(255),
    "nomorHP" character varying(13),
    "kodePos" character varying(10)
);


ALTER TABLE public.pembeli OWNER TO ezerinz;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pembeli_id_pembeli_seq OWNER TO ezerinz;

--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: ezerinz
--

CREATE TABLE public.pesanan (
    "nomorPesanan" integer NOT NULL,
    id_pembeli integer NOT NULL,
    "tanggalPesanan" date
);


ALTER TABLE public.pesanan OWNER TO ezerinz;

--
-- Name: pesanan_id_pembeli_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public.pesanan_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_id_pembeli_seq OWNER TO ezerinz;

--
-- Name: pesanan_id_pembeli_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public.pesanan_id_pembeli_seq OWNED BY public.pesanan.id_pembeli;


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
    id_produk integer NOT NULL,
    nama character varying(255),
    harga_beli numeric
);


ALTER TABLE public.produk OWNER TO ezerinz;

--
-- Name: produk_id_produk_seq; Type: SEQUENCE; Schema: public; Owner: ezerinz
--

CREATE SEQUENCE public.produk_id_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_id_produk_seq OWNER TO ezerinz;

--
-- Name: produk_id_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ezerinz
--

ALTER SEQUENCE public.produk_id_produk_seq OWNED BY public.produk.id_produk;


--
-- Name: detailPesanan nomorPesanan; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public."detailPesanan" ALTER COLUMN "nomorPesanan" SET DEFAULT nextval('public."detailPesanan_nomorPesanan_seq"'::regclass);


--
-- Name: detailPesanan id_produk; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public."detailPesanan" ALTER COLUMN id_produk SET DEFAULT nextval('public."detailPesanan_id_produk_seq"'::regclass);


--
-- Name: pembeli id_pembeli; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);


--
-- Name: pesanan nomorPesanan; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN "nomorPesanan" SET DEFAULT nextval('public."pesanan_nomorPesanan_seq"'::regclass);


--
-- Name: pesanan id_pembeli; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pesanan_id_pembeli_seq'::regclass);


--
-- Name: produk id_produk; Type: DEFAULT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.produk ALTER COLUMN id_produk SET DEFAULT nextval('public.produk_id_produk_seq'::regclass);


--
-- Data for Name: detailPesanan; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public."detailPesanan" ("nomorPesanan", id_produk, "jumlahPesanan", "hargaJualPerUnit") FROM stdin;
2	2	1	2900000
15	7	2	5800000
3	1	1	3700000
7	15	4	2200000
5	13	1	3300000
6	12	8	1300000
4	3	1	6400000
10	4	3	1300000
8	8	1	3900000
9	5	2	1900000
11	9	1	2600000
14	12	1	1300000
16	14	1	3000000
12	15	2	2200000
13	11	1	2900000
\.


--
-- Data for Name: pembeli; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.pembeli (id_pembeli, nama, "nomorHP", "kodePos") FROM stdin;
1	Amelia	087729890645	91311
2	Edwin	085298474844	91453
3	Fadhil Dwi Arkam	082345786991	91511
4	Muh Ryan Nurwangsah	085433785422	91514
5	Muh Muayyat Sabir	082322890112	91411
6	Nina	089112675289	91412
7	Haikal	081357289945	91455
8	Efortuntrio	087245679823	91467
9	Muh Ansar	082190999234	91413
10	Noprianty	085340987554	91514
11	Mulham	085290778992	91411
12	Franchescus Malindo Hersa	089223887654	91466
13	Andi Ahmad Alif	085290221995	91414
14	Syahrul Gunawan	082789778432	91415
15	Imbar	081350502688	91453
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.pesanan ("nomorPesanan", id_pembeli, "tanggalPesanan") FROM stdin;
2	14	2022-01-29
3	10	2022-01-29
4	1	2022-05-28
5	5	2022-02-14
6	15	2022-09-02
7	13	2022-04-21
8	2	2022-07-16
9	8	2022-11-01
10	3	2022-02-19
11	9	2022-10-25
12	7	2022-06-19
13	6	2022-08-10
14	11	2022-03-11
15	4	2022-01-19
16	12	2022-10-07
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: ezerinz
--

COPY public.produk (id_produk, nama, harga_beli) FROM stdin;
1	Poco X3 Pro	3499999
2	Vivo Y21s	2699999
3	Xiaomi 12T 5G	6299000
4	Redmi A1	1149000
5	Poco C40	1699000
6	Xiaomi 12 Lite	5449000
7	Poco F4	5699000
8	Infinix Zero 20	3599000
9	Infinix Hot 20	2449000
10	Infinix Hot 12	2079000
11	Infinix Note 12	2599000
12	Infinix Smart 6	1149000
13	Poco X3 NFC	3099000
14	OPPO A76 4G	2799000
15	OPPO A55	1999000
\.


--
-- Name: detailPesanan_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."detailPesanan_id_produk_seq"', 1, false);


--
-- Name: detailPesanan_nomorPesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."detailPesanan_nomorPesanan_seq"', 1, false);


--
-- Name: pembeli_id_pembeli_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 15, true);


--
-- Name: pesanan_id_pembeli_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public.pesanan_id_pembeli_seq', 1, false);


--
-- Name: pesanan_nomorPesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public."pesanan_nomorPesanan_seq"', 16, true);


--
-- Name: produk_id_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: ezerinz
--

SELECT pg_catalog.setval('public.produk_id_produk_seq', 26, true);


--
-- Name: pembeli pembeli_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY ("nomorPesanan");


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id_produk);


--
-- Name: pesanan fk_pembeli; Type: FK CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT fk_pembeli FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: detailPesanan fk_pesanan; Type: FK CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public."detailPesanan"
    ADD CONSTRAINT fk_pesanan FOREIGN KEY ("nomorPesanan") REFERENCES public.pesanan("nomorPesanan") ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: detailPesanan fk_produk; Type: FK CONSTRAINT; Schema: public; Owner: ezerinz
--

ALTER TABLE ONLY public."detailPesanan"
    ADD CONSTRAINT fk_produk FOREIGN KEY (id_produk) REFERENCES public.produk(id_produk) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

