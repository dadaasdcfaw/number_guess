--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (142, 64, 484);
INSERT INTO public.games VALUES (143, 64, 567);
INSERT INTO public.games VALUES (144, 65, 804);
INSERT INTO public.games VALUES (145, 65, 723);
INSERT INTO public.games VALUES (146, 64, 774);
INSERT INTO public.games VALUES (147, 64, 464);
INSERT INTO public.games VALUES (148, 64, 999);
INSERT INTO public.games VALUES (149, 66, 823);
INSERT INTO public.games VALUES (150, 66, 694);
INSERT INTO public.games VALUES (151, 67, 727);
INSERT INTO public.games VALUES (152, 67, 131);
INSERT INTO public.games VALUES (153, 66, 20);
INSERT INTO public.games VALUES (154, 66, 24);
INSERT INTO public.games VALUES (155, 66, 442);
INSERT INTO public.games VALUES (156, 68, 368);
INSERT INTO public.games VALUES (157, 68, 559);
INSERT INTO public.games VALUES (158, 69, 492);
INSERT INTO public.games VALUES (159, 69, 591);
INSERT INTO public.games VALUES (160, 68, 139);
INSERT INTO public.games VALUES (161, 68, 608);
INSERT INTO public.games VALUES (162, 68, 13);
INSERT INTO public.games VALUES (163, 70, 1);
INSERT INTO public.games VALUES (164, 71, 449);
INSERT INTO public.games VALUES (165, 71, 496);
INSERT INTO public.games VALUES (166, 72, 768);
INSERT INTO public.games VALUES (167, 72, 791);
INSERT INTO public.games VALUES (168, 71, 725);
INSERT INTO public.games VALUES (169, 71, 23);
INSERT INTO public.games VALUES (170, 71, 15);
INSERT INTO public.games VALUES (171, 73, 904);
INSERT INTO public.games VALUES (172, 73, 247);
INSERT INTO public.games VALUES (173, 74, 27);
INSERT INTO public.games VALUES (174, 74, 551);
INSERT INTO public.games VALUES (175, 73, 592);
INSERT INTO public.games VALUES (176, 75, 885);
INSERT INTO public.games VALUES (177, 73, 615);
INSERT INTO public.games VALUES (178, 75, 611);
INSERT INTO public.games VALUES (179, 73, 499);
INSERT INTO public.games VALUES (180, 76, 451);
INSERT INTO public.games VALUES (181, 76, 267);
INSERT INTO public.games VALUES (182, 75, 317);
INSERT INTO public.games VALUES (183, 75, 483);
INSERT INTO public.games VALUES (184, 75, 396);
INSERT INTO public.games VALUES (185, 77, 310);
INSERT INTO public.games VALUES (186, 77, 115);
INSERT INTO public.games VALUES (187, 78, 82);
INSERT INTO public.games VALUES (188, 78, 371);
INSERT INTO public.games VALUES (189, 77, 456);
INSERT INTO public.games VALUES (190, 77, 688);
INSERT INTO public.games VALUES (191, 77, 931);
INSERT INTO public.games VALUES (192, 79, 455);
INSERT INTO public.games VALUES (193, 79, 137);
INSERT INTO public.games VALUES (194, 80, 857);
INSERT INTO public.games VALUES (195, 80, 892);
INSERT INTO public.games VALUES (196, 79, 982);
INSERT INTO public.games VALUES (197, 79, 692);
INSERT INTO public.games VALUES (198, 79, 622);
INSERT INTO public.games VALUES (199, 81, 578);
INSERT INTO public.games VALUES (200, 81, 156);
INSERT INTO public.games VALUES (201, 82, 483);
INSERT INTO public.games VALUES (202, 82, 443);
INSERT INTO public.games VALUES (203, 81, 891);
INSERT INTO public.games VALUES (204, 81, 818);
INSERT INTO public.games VALUES (205, 81, 689);
INSERT INTO public.games VALUES (206, 83, 586);
INSERT INTO public.games VALUES (207, 83, 563);
INSERT INTO public.games VALUES (208, 83, 268);
INSERT INTO public.games VALUES (209, 83, 919);
INSERT INTO public.games VALUES (210, 83, 724);
INSERT INTO public.games VALUES (211, 83, 535);
INSERT INTO public.games VALUES (212, 83, 480);
INSERT INTO public.games VALUES (213, 90, 5);
INSERT INTO public.games VALUES (214, 90, 1);
INSERT INTO public.games VALUES (215, 91, 968);
INSERT INTO public.games VALUES (216, 91, 348);
INSERT INTO public.games VALUES (217, 92, 690);
INSERT INTO public.games VALUES (218, 92, 816);
INSERT INTO public.games VALUES (219, 91, 7);
INSERT INTO public.games VALUES (220, 91, 50);
INSERT INTO public.games VALUES (221, 91, 473);
INSERT INTO public.games VALUES (222, 93, 35);
INSERT INTO public.games VALUES (223, 93, 340);
INSERT INTO public.games VALUES (224, 94, 375);
INSERT INTO public.games VALUES (225, 94, 25);
INSERT INTO public.games VALUES (226, 93, 845);
INSERT INTO public.games VALUES (227, 93, 713);
INSERT INTO public.games VALUES (228, 93, 124);
INSERT INTO public.games VALUES (229, 95, 83);
INSERT INTO public.games VALUES (230, 95, 240);
INSERT INTO public.games VALUES (231, 96, 48);
INSERT INTO public.games VALUES (232, 96, 462);
INSERT INTO public.games VALUES (233, 95, 767);
INSERT INTO public.games VALUES (234, 95, 847);
INSERT INTO public.games VALUES (235, 95, 140);
INSERT INTO public.games VALUES (236, 97, 232);
INSERT INTO public.games VALUES (237, 97, 240);
INSERT INTO public.games VALUES (238, 98, 602);
INSERT INTO public.games VALUES (239, 98, 40);
INSERT INTO public.games VALUES (240, 97, 53);
INSERT INTO public.games VALUES (241, 97, 678);
INSERT INTO public.games VALUES (242, 97, 707);
INSERT INTO public.games VALUES (243, 99, 253);
INSERT INTO public.games VALUES (244, 99, 943);
INSERT INTO public.games VALUES (245, 100, 57);
INSERT INTO public.games VALUES (246, 100, 969);
INSERT INTO public.games VALUES (247, 99, 256);
INSERT INTO public.games VALUES (248, 99, 214);
INSERT INTO public.games VALUES (249, 99, 469);
INSERT INTO public.games VALUES (250, 101, 269);
INSERT INTO public.games VALUES (251, 101, 651);
INSERT INTO public.games VALUES (252, 102, 649);
INSERT INTO public.games VALUES (253, 102, 305);
INSERT INTO public.games VALUES (254, 101, 812);
INSERT INTO public.games VALUES (255, 101, 495);
INSERT INTO public.games VALUES (256, 101, 764);
INSERT INTO public.games VALUES (257, 103, 85);
INSERT INTO public.games VALUES (258, 103, 926);
INSERT INTO public.games VALUES (259, 104, 844);
INSERT INTO public.games VALUES (260, 104, 844);
INSERT INTO public.games VALUES (261, 103, 646);
INSERT INTO public.games VALUES (262, 103, 398);
INSERT INTO public.games VALUES (263, 103, 497);
INSERT INTO public.games VALUES (264, 105, 838);
INSERT INTO public.games VALUES (265, 105, 502);
INSERT INTO public.games VALUES (266, 106, 8);
INSERT INTO public.games VALUES (267, 106, 927);
INSERT INTO public.games VALUES (268, 105, 44);
INSERT INTO public.games VALUES (269, 105, 832);
INSERT INTO public.games VALUES (270, 105, 547);
INSERT INTO public.games VALUES (271, 107, 893);
INSERT INTO public.games VALUES (272, 107, 13);
INSERT INTO public.games VALUES (273, 108, 981);
INSERT INTO public.games VALUES (274, 108, 601);
INSERT INTO public.games VALUES (275, 107, 271);
INSERT INTO public.games VALUES (276, 107, 375);
INSERT INTO public.games VALUES (277, 107, 972);
INSERT INTO public.games VALUES (278, 109, 993);
INSERT INTO public.games VALUES (279, 109, 776);
INSERT INTO public.games VALUES (280, 110, 883);
INSERT INTO public.games VALUES (281, 110, 235);
INSERT INTO public.games VALUES (282, 109, 475);
INSERT INTO public.games VALUES (283, 109, 68);
INSERT INTO public.games VALUES (284, 109, 42);
INSERT INTO public.games VALUES (285, 111, 896);
INSERT INTO public.games VALUES (286, 111, 171);
INSERT INTO public.games VALUES (287, 112, 311);
INSERT INTO public.games VALUES (288, 112, 173);
INSERT INTO public.games VALUES (289, 111, 695);
INSERT INTO public.games VALUES (290, 111, 262);
INSERT INTO public.games VALUES (291, 111, 514);
INSERT INTO public.games VALUES (292, 113, 767);
INSERT INTO public.games VALUES (293, 113, 176);
INSERT INTO public.games VALUES (294, 114, 203);
INSERT INTO public.games VALUES (295, 114, 383);
INSERT INTO public.games VALUES (296, 113, 412);
INSERT INTO public.games VALUES (297, 113, 871);
INSERT INTO public.games VALUES (298, 113, 614);
INSERT INTO public.games VALUES (299, 115, 396);
INSERT INTO public.games VALUES (300, 115, 424);
INSERT INTO public.games VALUES (301, 116, 50);
INSERT INTO public.games VALUES (302, 116, 381);
INSERT INTO public.games VALUES (303, 115, 217);
INSERT INTO public.games VALUES (304, 115, 217);
INSERT INTO public.games VALUES (305, 115, 445);
INSERT INTO public.games VALUES (306, 117, 738);
INSERT INTO public.games VALUES (307, 117, 176);
INSERT INTO public.games VALUES (308, 118, 481);
INSERT INTO public.games VALUES (309, 118, 712);
INSERT INTO public.games VALUES (310, 117, 814);
INSERT INTO public.games VALUES (311, 117, 802);
INSERT INTO public.games VALUES (312, 117, 460);
INSERT INTO public.games VALUES (313, 119, 492);
INSERT INTO public.games VALUES (314, 119, 591);
INSERT INTO public.games VALUES (315, 120, 301);
INSERT INTO public.games VALUES (316, 120, 528);
INSERT INTO public.games VALUES (317, 119, 969);
INSERT INTO public.games VALUES (318, 119, 418);
INSERT INTO public.games VALUES (319, 119, 321);
INSERT INTO public.games VALUES (320, 121, 15);
INSERT INTO public.games VALUES (321, 121, 434);
INSERT INTO public.games VALUES (322, 122, 576);
INSERT INTO public.games VALUES (323, 122, 249);
INSERT INTO public.games VALUES (324, 121, 844);
INSERT INTO public.games VALUES (325, 121, 293);
INSERT INTO public.games VALUES (326, 121, 515);
INSERT INTO public.games VALUES (327, 123, 470);
INSERT INTO public.games VALUES (328, 123, 559);
INSERT INTO public.games VALUES (329, 124, 724);
INSERT INTO public.games VALUES (330, 124, 47);
INSERT INTO public.games VALUES (331, 123, 50);
INSERT INTO public.games VALUES (332, 123, 259);
INSERT INTO public.games VALUES (333, 123, 859);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (64, 'user_1665747386861');
INSERT INTO public.users VALUES (65, 'user_1665747386860');
INSERT INTO public.users VALUES (66, 'user_1665747460088');
INSERT INTO public.users VALUES (67, 'user_1665747460087');
INSERT INTO public.users VALUES (68, 'user_1665747463560');
INSERT INTO public.users VALUES (69, 'user_1665747463559');
INSERT INTO public.users VALUES (70, 'Me');
INSERT INTO public.users VALUES (71, 'user_1665747888636');
INSERT INTO public.users VALUES (72, 'user_1665747888635');
INSERT INTO public.users VALUES (73, 'user_1665748130849');
INSERT INTO public.users VALUES (74, 'user_1665748130848');
INSERT INTO public.users VALUES (75, 'user_1665748131784');
INSERT INTO public.users VALUES (76, 'user_1665748131783');
INSERT INTO public.users VALUES (77, 'user_1665748241766');
INSERT INTO public.users VALUES (78, 'user_1665748241765');
INSERT INTO public.users VALUES (79, 'user_1665748271240');
INSERT INTO public.users VALUES (80, 'user_1665748271239');
INSERT INTO public.users VALUES (81, 'user_1665748321896');
INSERT INTO public.users VALUES (82, 'user_1665748321895');
INSERT INTO public.users VALUES (83, '');
INSERT INTO public.users VALUES (90, 'me');
INSERT INTO public.users VALUES (91, 'user_1665748458718');
INSERT INTO public.users VALUES (92, 'user_1665748458717');
INSERT INTO public.users VALUES (93, 'user_1665748484071');
INSERT INTO public.users VALUES (94, 'user_1665748484070');
INSERT INTO public.users VALUES (95, 'user_1665748488398');
INSERT INTO public.users VALUES (96, 'user_1665748488397');
INSERT INTO public.users VALUES (97, 'user_1665748491514');
INSERT INTO public.users VALUES (98, 'user_1665748491513');
INSERT INTO public.users VALUES (99, 'user_1665748495720');
INSERT INTO public.users VALUES (100, 'user_1665748495719');
INSERT INTO public.users VALUES (101, 'user_1665748563102');
INSERT INTO public.users VALUES (102, 'user_1665748563101');
INSERT INTO public.users VALUES (103, 'user_1665748566243');
INSERT INTO public.users VALUES (104, 'user_1665748566242');
INSERT INTO public.users VALUES (105, 'user_1665748570656');
INSERT INTO public.users VALUES (106, 'user_1665748570655');
INSERT INTO public.users VALUES (107, 'user_1665748576618');
INSERT INTO public.users VALUES (108, 'user_1665748576617');
INSERT INTO public.users VALUES (109, 'user_1665748754481');
INSERT INTO public.users VALUES (110, 'user_1665748754480');
INSERT INTO public.users VALUES (111, 'user_1665748879717');
INSERT INTO public.users VALUES (112, 'user_1665748879716');
INSERT INTO public.users VALUES (113, 'user_1665748970360');
INSERT INTO public.users VALUES (114, 'user_1665748970359');
INSERT INTO public.users VALUES (115, 'user_1665748982488');
INSERT INTO public.users VALUES (116, 'user_1665748982487');
INSERT INTO public.users VALUES (117, 'user_1665748988038');
INSERT INTO public.users VALUES (118, 'user_1665748988037');
INSERT INTO public.users VALUES (119, 'user_1665748995606');
INSERT INTO public.users VALUES (120, 'user_1665748995605');
INSERT INTO public.users VALUES (121, 'user_1665748998917');
INSERT INTO public.users VALUES (122, 'user_1665748998916');
INSERT INTO public.users VALUES (123, 'user_1665749001739');
INSERT INTO public.users VALUES (124, 'user_1665749001738');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 333, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 124, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

