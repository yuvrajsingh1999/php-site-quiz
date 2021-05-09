--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16
-- Dumped by pg_dump version 10.16

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
-- Name: answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answer (
    id integer NOT NULL,
    ansid integer NOT NULL
);


ALTER TABLE public.answer OWNER TO postgres;

--
-- Name: answer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answer_id_seq OWNER TO postgres;

--
-- Name: answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answer_id_seq OWNED BY public.answer.id;


--
-- Name: attempted; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.attempted (
    id integer NOT NULL,
    quiz_id integer NOT NULL,
    user_id integer NOT NULL,
    ques_id integer NOT NULL,
    answer character varying(255) NOT NULL
);


ALTER TABLE public.attempted OWNER TO postgres;

--
-- Name: attempted_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.attempted_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attempted_id_seq OWNER TO postgres;

--
-- Name: attempted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.attempted_id_seq OWNED BY public.attempted.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    cat_name character varying(255) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    user_id integer NOT NULL,
    email character varying(255) NOT NULL,
    message character varying(255) NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.options (
    id integer NOT NULL,
    options text NOT NULL,
    ques_id integer
);


ALTER TABLE public.options OWNER TO postgres;

--
-- Name: options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.options_id_seq OWNER TO postgres;

--
-- Name: options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.options_id_seq OWNED BY public.options.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    id integer NOT NULL,
    ques character varying(255) NOT NULL,
    quiz_id integer NOT NULL,
    choice integer
);


ALTER TABLE public.question OWNER TO postgres;

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_id_seq OWNER TO postgres;

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;


--
-- Name: quiz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quiz (
    id integer NOT NULL,
    name text NOT NULL,
    total_ques integer NOT NULL,
    right_marks integer NOT NULL,
    wrong_marks integer NOT NULL,
    created_at timestamp without time zone,
    quiz_type text,
    timer character varying(50),
    status integer,
    cat_id integer
);


ALTER TABLE public.quiz OWNER TO postgres;

--
-- Name: quiz_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quiz_id_seq OWNER TO postgres;

--
-- Name: quiz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quiz_id_seq OWNED BY public.quiz.id;


--
-- Name: userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userprofile (
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    phone bigint NOT NULL,
    dob date NOT NULL,
    address character varying(255) NOT NULL,
    profile_pic character varying(255),
    user_id integer NOT NULL
);


ALTER TABLE public.userprofile OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    email character varying(255) NOT NULL,
    role text NOT NULL,
    password character varying(255) NOT NULL,
    status integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone,
    college text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
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
-- Name: verified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.verified (
    id integer NOT NULL,
    user_id integer NOT NULL,
    quiz_id integer NOT NULL,
    num_of_correct_ques integer,
    num_of_wrong_ques integer
);


ALTER TABLE public.verified OWNER TO postgres;

--
-- Name: verified_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.verified_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.verified_id_seq OWNER TO postgres;

--
-- Name: verified_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.verified_id_seq OWNED BY public.verified.id;


--
-- Name: answer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer ALTER COLUMN id SET DEFAULT nextval('public.answer_id_seq'::regclass);


--
-- Name: attempted id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempted ALTER COLUMN id SET DEFAULT nextval('public.attempted_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options ALTER COLUMN id SET DEFAULT nextval('public.options_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);


--
-- Name: quiz id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz ALTER COLUMN id SET DEFAULT nextval('public.quiz_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: verified id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verified ALTER COLUMN id SET DEFAULT nextval('public.verified_id_seq'::regclass);


--
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answer (id, ansid) FROM stdin;
1	1
2	6
3	11
4	16
\.


--
-- Data for Name: attempted; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.attempted (id, quiz_id, user_id, ques_id, answer) FROM stdin;
98304	8	3	14	44
98305	8	3	14	
98306	8	3	14	
98307	8	3	14	
98308	8	3	15	
98309	8	3	15	
98310	8	3	15	55
98311	8	3	15	
98312	8	3	16	
98313	8	3	16	66
98314	8	3	16	
98315	8	3	16	
98316	8	3	17	
98317	8	3	17	
98318	8	3	17	
98319	8	3	17	88
98320	3	5	1	4
98321	3	5	1	
98322	3	5	1	
98323	3	5	1	
98324	3	5	2	
98325	3	5	2	4
98326	3	5	2	
98327	3	5	2	
98328	3	5	3	
98329	3	5	3	
98330	3	5	3	4
98331	3	5	3	
98332	3	5	4	
98333	3	5	4	
98334	3	5	4	
98335	3	5	4	4
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, cat_name) FROM stdin;
1	maths
2	science
3	programming
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, user_id, email, message, created_at) FROM stdin;
1	3	ujjawal@gmail.com	                                    Welcome to our site	2021-05-05 08:34:26
2	4	surya@gmail.com	                                    Hello Welcome.	2021-05-05 08:55:01
3	5	shreyash@gmail.com	                                    Welcome shreyash	2021-05-05 08:55:11
4	1	yuvisingh11999@gmail.com	                                    Hello admin thank you for the quiz.	2021-05-05 09:06:43
\.


--
-- Data for Name: options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.options (id, options, ques_id) FROM stdin;
1	4	1
2	3	1
3	21	1
4	1	1
5	3	2
6	4	2
7	2	2
8	1	2
9	1	3
10	2	3
11	4	3
12	3	3
13	1	4
14	2	4
15	3	4
16	4	4
44	44	14
45	3	14
46	22	14
47	11	14
48	44	15
49	66	15
50	55	15
51	22	15
52	11	16
53	66	16
54	33	16
55	77	16
56	11	17
57	55	17
58	45	17
59	88	17
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question (id, ques, quiz_id, choice) FROM stdin;
1	2+2=	3	4
2	3+1	3	4
3	4+0	3	4
4	1*4=	3	4
14	4*11=	8	4
15	5*11=	8	4
16	6*11=	8	4
17	8*11=	8	4
\.


--
-- Data for Name: quiz; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quiz (id, name, total_ques, right_marks, wrong_marks, created_at, quiz_type, timer, status, cat_id) FROM stdin;
3	mathematics	4	2	1	2021-05-06 13:42:54	\N	\N	1	1
5	Maths	3	2	1	2021-05-07 07:45:33	multiple	3:0	1	1
4	Maths	3	2	1	2021-05-07 04:40:22	single	\N	1	1
8	arithmetic	4	2	1	2021-05-07 13:36:23	multiple	03:00	1	1
6	Science	3	2	1	2021-05-07 08:16:22	single	03:00	1	2
7	Science	3	2	1	2021-05-07 08:16:58	multiple	03:00	1	2
9	Program	3	2	1	2021-05-09 13:13:33	single	2:0	1	3
\.


--
-- Data for Name: userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userprofile (firstname, lastname, gender, phone, dob, address, profile_pic, user_id) FROM stdin;
Ujjawal	Sharma	male	43243453453	2021-04-19	192-g, new delhi -  392020	monitor_1620484438.jpg	3
Shreyash	Singh	male	7887656544	2021-03-17	192-f, skajjasuqw, sdsjwskws	waterfall_1620535487.jpg	5
Surya	Prakash	male	568997544	2021-03-18	192-f, skajjasuqw, sdsjwskws	paris_1620536705.jpg	4
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, email, role, password, status, created_at, updated_at, college) FROM stdin;
1	yuvrajsingh	yuvisingh11999@gmail.com	admin	7007229694	1	2021-05-04 13:24:47.870071	2021-05-04 13:24:47.870071	\N
3	ujjawalsharma	ujjawal@gmail.com	user	ujjawal	1	2021-05-04 08:19:32	2021-05-04 08:19:32	Krishna college
5	shreyash	shreyash@gmail.com	user	shreyash	1	2021-05-04 09:33:33	2021-05-04 09:33:33	Krishna college
6	abcd	abcd@gmail.com	user	abcd	1	2021-05-04 09:40:36	2021-05-04 09:40:36	Krishna college
8	kjsd	kjsd@gmail.com	user	kjsd	1	2021-05-05 10:37:22	2021-05-05 10:37:22	Krishna college
4	surya	surya@gmail.com	admin	surya	1	2021-05-04 08:26:19	2021-05-04 08:26:19	Krishna college
\.


--
-- Data for Name: verified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.verified (id, user_id, quiz_id, num_of_correct_ques, num_of_wrong_ques) FROM stdin;
1	3	8	4	0
\.


--
-- Name: answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answer_id_seq', 6, true);


--
-- Name: attempted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.attempted_id_seq', 98335, true);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 3, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 4, true);


--
-- Name: options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.options_id_seq', 59, true);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_id_seq', 17, true);


--
-- Name: quiz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quiz_id_seq', 9, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: verified_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.verified_id_seq', 1, true);


--
-- Name: answer answer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (id);


--
-- Name: attempted attempted_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempted
    ADD CONSTRAINT attempted_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: options options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: quiz quiz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: verified verified_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verified
    ADD CONSTRAINT verified_pkey PRIMARY KEY (id);


--
-- Name: answer answer_ansid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_ansid_fkey FOREIGN KEY (ansid) REFERENCES public.options(id) ON DELETE CASCADE;


--
-- Name: attempted attempted_ques_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempted
    ADD CONSTRAINT attempted_ques_id_fkey FOREIGN KEY (ques_id) REFERENCES public.question(id);


--
-- Name: attempted attempted_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempted
    ADD CONSTRAINT attempted_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(id);


--
-- Name: attempted attempted_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.attempted
    ADD CONSTRAINT attempted_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: messages messages_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: options options_ques_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_ques_id_fkey FOREIGN KEY (ques_id) REFERENCES public.question(id) ON DELETE CASCADE;


--
-- Name: question question_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(id) ON DELETE CASCADE;


--
-- Name: quiz quiz_cat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_cat_id_fkey FOREIGN KEY (cat_id) REFERENCES public.category(id);


--
-- Name: userprofile userprofile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userprofile
    ADD CONSTRAINT userprofile_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: verified verified_quiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verified
    ADD CONSTRAINT verified_quiz_id_fkey FOREIGN KEY (quiz_id) REFERENCES public.quiz(id);


--
-- Name: verified verified_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.verified
    ADD CONSTRAINT verified_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

