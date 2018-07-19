--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2.pgdg90+1)
-- Dumped by pg_dump version 10.4 (Debian 10.4-2.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id bigint NOT NULL,
    data date,
    categoria character varying,
    colaborador character varying,
    pergunta character varying,
    resposta character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: calls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calls (
    id bigint NOT NULL,
    titulo character varying,
    pergunta character varying,
    data_criacao date,
    data_fechamento date,
    status character varying,
    versao character varying,
    perfil_acesso character varying,
    detalhe_funcionalidade character varying,
    severidade integer,
    municipio character varying,
    uf character varying,
    categoria_id character varying,
    requerente character varying,
    sei character varying,
    answer_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.calls OWNER TO postgres;

--
-- Name: calls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calls_id_seq OWNER TO postgres;

--
-- Name: calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calls_id_seq OWNED BY public.calls.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying,
    role integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: calls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calls ALTER COLUMN id SET DEFAULT nextval('public.calls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (id, data, categoria, colaborador, pergunta, resposta, created_at, updated_at) FROM stdin;
1	2018-07-14	Software	2	default	Aguardando atendimento.	2018-07-14 18:27:08.060953	2018-07-15 05:40:11.594897
21	2018-07-15	Software	2	Prezados, estamos sem acesso ao manual de instalação do sistema. 	Acesse o link https://www.piubs.com.br/manual para obter o manual.	2018-07-15 05:48:04.043442	2018-07-15 05:48:04.043442
22	2018-07-16	Hardware	2	Qual o procedimento para a troca do Cartucho de toner da impressora HP-5501-a?	Solicite visita técnica do responsável da empresa	2018-07-16 12:05:07.021931	2018-07-16 12:05:07.021931
23	2018-07-16	Hardware	2	Meu teclado não está funcionando. A quem eu deveria buscar para resolver o problema?	Você deve ligar para a empresa responsável pela sua UBS para resolver problemas relacionados com periféricos.	2018-07-16 14:11:16.976573	2018-07-16 14:11:16.976573
24	2018-07-16	Hardware	2	A caixinha que abre pra por o DVD dentro não sai pra fora do computador	Pegue um clips de metal, abra-o, e insira com cuidado em um buraco ao lado do botão de "Ejetar". Caso o problema persistir, contate a empresa responsável pela sua UBS	2018-07-16 15:14:22.038091	2018-07-16 15:14:22.038091
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2018-07-16 11:36:18.509018	2018-07-16 11:36:18.509018
\.


--
-- Data for Name: calls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calls (id, titulo, pergunta, data_criacao, data_fechamento, status, versao, perfil_acesso, detalhe_funcionalidade, severidade, municipio, uf, categoria_id, requerente, sei, answer_id, created_at, updated_at) FROM stdin;
102322515072018	Instalação do Sistema	Prezados, estamos sem acesso ao manual de instalação do sistema. 	2018-07-15	2018-07-15	Resolvido	1.20.15			5	Curitiba	PR	Software	1	00235689	21	2018-07-15 05:32:25.640113	2018-07-15 05:48:04.10746
102301715072018	Cadastro de pacientes	Olá, estou tendo problemas para realizar o cadastro do paciente no sistema. Onde posso encontrar o link para cadastro?	2018-07-15	2018-07-15	Resolvido	1.20.2	Enfermeiro		3	Porto Alegre	RS	Software	1	00235689	21	2018-07-15 05:30:17.334562	2018-07-15 05:55:22.643825
102382015072018	Impressora	Qual o procedimento para a troca do Cartucho de toner da impressora HP-5501-a?	2018-07-15	2018-07-16	Resolvido		Todos		6	Porto Alegre	RS	Hardware	1	00235689	22	2018-07-15 05:38:20.521709	2018-07-16 12:05:07.048596
102362515072018	Configurações de rede.	Qual o procedimento padrão para resetar as configurações de rede do sistema?	2018-07-15	2018-07-16	Resolvido	1.20.15			10	Porto Alegre	RS	Software	1	00235689	21	2018-07-15 05:36:25.214437	2018-07-16 12:17:13.095275
102341615072018	Impressão	Como devemos proceder para realizar a impressão do prontuário do paciente?	2018-07-15	2018-07-16	Resolvido	1.20.2	Médico		3	Curitiba	RS	Software	1	00235689	21	2018-07-15 05:34:16.140727	2018-07-16 14:07:39.190593
111093216072018	Problemas com o teclado	Meu teclado não está funcionando. A quem eu deveria buscar para resolver o problema?	2018-07-16	2018-07-16	Resolvido	x	Secretário da Educação		2	Carlos Barbosa	RS	Hardware	1	00235689	23	2018-07-16 14:09:32.949402	2018-07-16 14:11:17.0353
312133416072018	Caixinha do DVD não abre	A caixinha que abre pra por o DVD dentro não sai pra fora do computador	2018-07-16	2018-07-16	Resolvido	x	Estagiário		10	Viamão	RS	Hardware	3	00287695	24	2018-07-16 15:13:34.078644	2018-07-16 15:14:22.096015
316014716072018			2018-07-16	\N	Aberto				\N				3		1	2018-07-16 19:01:47.72192	2018-07-16 19:01:47.72192
111183416072018	Relatório geral aaaaaaaaaaaa	Como faço para imprimir um relatório geral dos pacientes?	2018-07-16	\N	Aberto	1.0.5	Enfermeira-chefe		4	São Paulo	SP	Software	1	00287695	1	2018-07-16 14:18:34.889449	2018-07-16 14:18:34.889449
113143917072018			2018-07-17	\N	Aberto				\N				1		1	2018-07-17 13:14:39.876742	2018-07-17 13:14:39.876742
113523917072018			2018-07-17	\N	Aberto				\N				1		1	2018-07-17 13:52:39.84472	2018-07-17 13:52:39.84472
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20180713205856
20180713205857
20180713205901
20180713210152
20180713210529
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, role) FROM stdin;
3	rbaudibert@inf.ufrgs.br	$2a$11$mwxE9AvKcGOMhz860pS1K.9e3eu8XpSi6z7f2BpjnQr3zuqNCQGSa	\N	\N	\N	3	2018-07-16 19:01:36.59346	2018-07-16 16:42:00.53825	127.0.0.1	127.0.0.1	2018-07-16 15:12:34.961269	2018-07-16 19:01:36.594498	\N	0
1	ana@piubs.com	$2a$11$pCHXjjm39tMJlj6IyXC/K.mT588bxnGI0peFH4AVBCZrGSLlcrlFa	02cf11d2b7fa07dce08e620c2e86f8311478019ca6a001c155c55c94647ed797	2018-07-16 12:00:43.781714	\N	37	2018-07-17 13:14:34.468162	2018-07-16 15:14:37.744865	172.17.0.1	127.0.0.1	2018-07-14 17:21:52.682806	2018-07-17 13:14:34.469087	\N	0
2	joao@piubs.com	$2a$11$MFBeM1mDtWJRDcN0rKVgmuH3DjQEHihyseXlrH292UlpSTL/r0pSm	\N	\N	\N	28	2018-07-17 14:11:49.135353	2018-07-17 13:14:28.406621	172.17.0.1	172.17.0.1	2018-07-14 22:08:32.966742	2018-07-17 14:11:49.136403	\N	2
\.


--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_id_seq', 24, true);


--
-- Name: calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calls_id_seq', 12, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: calls calls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calls
    ADD CONSTRAINT calls_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_calls_on_answer_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_calls_on_answer_id ON public.calls USING btree (answer_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: calls fk_rails_1c11e02971; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calls
    ADD CONSTRAINT fk_rails_1c11e02971 FOREIGN KEY (answer_id) REFERENCES public.answers(id);


--
-- PostgreSQL database dump complete
--


