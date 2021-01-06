--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO yevhenii;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO yevhenii;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO yevhenii;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO yevhenii;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO yevhenii;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO yevhenii;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO yevhenii;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.authors (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    gender character varying,
    birthday timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying,
    password_digest character varying,
    admin boolean,
    avatar character varying
);


ALTER TABLE public.authors OWNER TO yevhenii;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO yevhenii;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    body text,
    status integer DEFAULT 0,
    author_id integer,
    post_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO yevhenii;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO yevhenii;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    name character varying,
    title character varying,
    content text,
    image character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    author_id integer,
    views_count integer,
    comments_count integer
);


ALTER TABLE public.posts OWNER TO yevhenii;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: yevhenii
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO yevhenii;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yevhenii
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: yevhenii
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO yevhenii;

--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	avatar	Author	1	1	2021-01-04 08:52:19.975901
2	image	ActiveStorage::VariantRecord	1	2	2021-01-04 08:53:53.161823
3	image	Post	1	3	2021-01-04 09:08:22.672024
4	image	ActiveStorage::VariantRecord	2	4	2021-01-04 09:08:23.265532
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	rpqfy7uibuadswe94cyyga0nuzij	Novyj_god_Ded_Moroz_25179.jpg	image/jpeg	{"identified":true,"width":847,"height":567,"analyzed":true}	local	129129	rKBqSpVoLexhjqO1JSYrww==	2021-01-04 08:52:19.972445
2	get0nnqekcy7x66m4e7v2qmqnadd	Novyj_god_Ded_Moroz_25179.jpg	image/jpeg	{"identified":true,"width":200,"height":134,"analyzed":true}	local	12653	wttYlG+vV6tmYRylfvYhAQ==	2021-01-04 08:53:53.156478
3	ox5i8tsl9aucfhu5qqpdes7jkq17	hero-image-emea-offices-barcelona-small-750x480.jpg	image/jpeg	{"identified":true,"width":750,"height":480,"analyzed":true}	local	103440	Eiyp/nza7pkdElwTVd1Siw==	2021-01-04 09:08:22.668906
4	u3x0u9ywj7sya682we2igiksyyrm	hero-image-emea-offices-barcelona-small-750x480.jpg	image/jpeg	{"identified":true,"width":469,"height":300,"analyzed":true}	local	30244	iz4xxVQIgO7IDwLQKOwiMA==	2021-01-04 09:08:23.260505
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	1	c5V21n0MoEQcdiP7sX4iBoKR00M=
2	3	uhUh6Kwq4nrP9ia3fpoBUG/sFbA=
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-01-04 08:18:18.505413	2021-01-04 08:18:18.505413
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.authors (id, first_name, last_name, gender, birthday, created_at, updated_at, email, password_digest, admin, avatar) FROM stdin;
1	Evhenii	Kononenko	Male	2009-06-14 00:00:00	2021-01-04 08:52:19.937707	2021-01-04 08:52:19.979112	evgenijkononenko0@gmail.com	$2a$12$0PxClKvIK4aLl/fWIA6a7eys6pNNUgiwM9hqvm96GW5FkJ3kJrOIu	\N	\N
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.comments (id, body, status, author_id, post_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.posts (id, name, title, content, image, created_at, updated_at, author_id, views_count, comments_count) FROM stdin;
1	Notes about travel to Barcelona	Barcelona	Barcelona	\N	2021-01-04 09:08:22.659619	2021-01-04 09:08:22.675232	1	1	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: yevhenii
--

COPY public.schema_migrations (version) FROM stdin;
20201214090930
20201214141854
20201214144347
20201219165845
20201220080540
20201223140949
20201223152548
20201227201543
20201229112337
20201229142716
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 4, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 4, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 2, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yevhenii
--

SELECT pg_catalog.setval('public.posts_id_seq', 1, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: yevhenii
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: yevhenii
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: yevhenii
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: yevhenii
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: yevhenii
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

