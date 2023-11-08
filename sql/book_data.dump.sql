--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-07 11:36:52 JST

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
-- TOC entry 214 (class 1259 OID 16392)
-- Name: book_user; Type: TABLE; Schema: public; Owner: book_userR
--

CREATE TABLE public.book_user (
    user_id character varying(255) NOT NULL,
    passwd character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_shi character varying(255),
    user_mei character varying(255),
    del boolean
);


ALTER TABLE public.book_user OWNER TO "book_userR";

--
-- TOC entry 216 (class 1259 OID 24593)
-- Name: books; Type: TABLE; Schema: public; Owner: book_userR
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(255),
    volume character varying(255),
    author character varying(255),
    publisher character varying(255),
    memo text,
    create_date timestamp with time zone NOT NULL,
    del boolean
);


ALTER TABLE public.books OWNER TO "book_userR";

--
-- TOC entry 215 (class 1259 OID 24592)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: book_userR
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO "book_userR";

--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: book_userR
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 3465 (class 2604 OID 24596)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: book_userR
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 3612 (class 0 OID 16392)
-- Dependencies: 214
-- Data for Name: book_user; Type: TABLE DATA; Schema: public; Owner: book_userR
--

COPY public.book_user (user_id, passwd, email, user_shi, user_mei, del) FROM stdin;
001	11111	aaaaa	淡路帝国高田州3-1-4	髙田	f
					f
\.


--
-- TOC entry 3614 (class 0 OID 24593)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: book_userR
--

COPY public.books (id, name, volume, author, publisher, memo, create_date, del) FROM stdin;
39	しゅん	上巻	淳	SBクリエイティブ	じじ	2023-10-27 09:02:00.222509+09	f
40	ryunin	上巻	淳	SBクリエイティブ	ll	2023-10-27 09:15:10.236488+09	f
41	ryunin	上巻	柴田淳	SBクリエイティブ	j	2023-10-27 09:15:22.670273+09	f
42	ryunin	上巻	柴田淳	SBクリエイティブ	/	2023-10-27 09:17:53.119171+09	f
43	ryunin	上巻	柴田淳	SBクリエイティブ	efwf	2023-10-27 09:40:40.329618+09	f
1	ryunin	上巻	柴田淳	SBクリエイティブ	1	2023-10-26 23:50:54.58817+09	t
2	ryunin	上巻	柴田淳	SBクリエイティブ	1	2023-10-26 23:52:19.675679+09	t
3	ryunin	上巻	柴田淳	SBクリエイティブ	1	2023-10-26 23:54:10.230789+09	t
4	ryunin	上巻	柴田淳	SBクリエイティブ		2023-10-26 23:59:42.304259+09	t
5	ryunin	上巻	柴田淳	SBクリエイティブ	111	2023-10-27 08:50:03.706346+09	t
6	ryunin	上巻	柴田淳	SBクリエイティブ	111	2023-10-27 09:00:48.402649+09	t
44	ryunin	上巻	淳	SBクリエイティブ	q	2023-11-01 15:43:17.483003+09	f
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: book_userR
--

SELECT pg_catalog.setval('public.books_id_seq', 44, true);


--
-- TOC entry 3467 (class 2606 OID 16398)
-- Name: book_user book_user_pkey; Type: CONSTRAINT; Schema: public; Owner: book_userR
--

ALTER TABLE ONLY public.book_user
    ADD CONSTRAINT book_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3469 (class 2606 OID 24600)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: book_userR
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


-- Completed on 2023-11-07 11:36:52 JST

--
-- PostgreSQL database dump complete
--

