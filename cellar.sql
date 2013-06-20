--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wine; Type: TABLE; Schema: public; Owner: cellar; Tablespace: 
--

CREATE TABLE wine (
    id integer NOT NULL,
    name character varying(45) DEFAULT NULL::character varying,
    year character varying(45) DEFAULT NULL::character varying,
    grapes character varying(45) DEFAULT NULL::character varying,
    country character varying(45) DEFAULT NULL::character varying,
    region character varying(45) DEFAULT NULL::character varying,
    description text,
    picture character varying(256) DEFAULT NULL::character varying
);


ALTER TABLE public.wine OWNER TO cellar;

--
-- Name: wine_id_seq; Type: SEQUENCE; Schema: public; Owner: cellar
--

CREATE SEQUENCE wine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wine_id_seq OWNER TO cellar;

--
-- Name: wine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cellar
--

ALTER SEQUENCE wine_id_seq OWNED BY wine.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: cellar
--

ALTER TABLE ONLY wine ALTER COLUMN id SET DEFAULT nextval('wine_id_seq'::regclass);


--
-- Data for Name: wine; Type: TABLE DATA; Schema: public; Owner: cellar
--

INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (1, 'CHATEAU DE SAINT COSME', '2009', 'Grenache / Syrah', 'France', 'Southern Rhone / Gigondas', 'The aromas of fruit and spice give one a hint of the light drinkability of this lovely wine, which makes an excellent complement to fish dishes.', 'saint_cosme.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (2, 'LAN RIOJA CRIANZA', '2006', 'Tempranillo', 'Spain', 'Rioja', 'A resurgence of interest in boutique vineyards has opened the door for this excellent foray into the dessert wine market. Light and bouncy, with a hint of black truffle, this wine will not fail to tickle the taste buds.', 'lan_rioja.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (3, 'MARGERUM SYBARITE', '2010', 'Sauvignon Blanc', 'USA', 'California Central Cosat', 'The cache of a fine Cabernet in ones wine cellar can now be replaced with a childishly playful wine bubbling over with tempting tastes of\nblack cherry and licorice. This is a taste sure to transport you back in time.', 'margerum.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (5, 'REX HILL', '2009', 'Pinot Noir', 'USA', 'Oregon', 'One cannot doubt that this will be the wine served at the Hollywood award shows, because it has undeniable star power. Be the first to catch\nthe debut that everyone will be talking about tomorrow.', 'rex_hill.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (6, 'VITICCIO CLASSICO RISERVA', '2007', 'Sangiovese Merlot', 'Italy', 'Tuscany', 'Though soft and rounded in texture, the body of this wine is full and rich and oh-so-appealing. This delivery is even more impressive when one takes note of the tender tannins that leave the taste buds wholly satisfied.', 'viticcio.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (7, 'CHATEAU LE DOYENNE', '2005', 'Merlot', 'France', 'Bordeaux', 'Though dense and chewy, this wine does not overpower with its finely balanced depth and structure. It is a truly luxurious experience for the\nsenses.', 'le_doyenne.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (8, 'DOMAINE DU BOUSCAT', '2009', 'Merlot', 'France', 'Bordeaux', 'The light golden color of this wine belies the bright flavor it holds. A true summer wine, it begs for a picnic lunch in a sun-soaked vineyard.', 'bouscat.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (9, 'BLOCK NINE', '2009', 'Pinot Noir', 'USA', 'California', 'With hints of ginger and spice, this wine makes an excellent complement to light appetizer and dessert fare for a holiday gathering.', 'block_nine.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (10, 'DOMAINE SERENE', '2007', 'Pinot Noir', 'USA', 'Oregon', 'Though subtle in its complexities, this wine is sure to please a wide range of enthusiasts. Notes of pomegranate will delight as the nutty finish completes the picture of a fine sipping experience.', 'domaine_serene.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (12, 'LES MORIZOTTES', '2009', 'Chardonnay', 'France', 'Burgundy', 'Breaking the mold of the classics, this offering will surprise and undoubtedly get tongues wagging with the hints of coffee and tobacco in\nperfect alignment with more traditional notes. Breaking the mold of the classics, this offering will surprise and\nundoubtedly get tongues wagging with the hints of coffee and tobacco in\nperfect alignment with more traditional notes. Sure to please the late-night crowd with the slight jolt of adrenaline it brings.', 'morizottes.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (11, 'BODEGA LURTON', '2011', 'Pinot Gris', 'Slapout', 'Mendoza', 'Solid notes of black currant blended with a light citrus make this wine an easy pour for varied palates.', 'bodega_lurton.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (100, 'MAD DOG 20/20', '2013', 'RED', 'USA', 'SOUTH', 'Fruity and wet', NULL);
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (4, 'OWEN ROE "EX UMBRIS"', '2009', 'Syrah', 'USA', 'Washington', 'A one-two punch of black pepper and jalapeno will send your senses reeling, as the orange essence snaps you back to reality. Dont miss\nthis award-winning taste sensation.', 'ex_umbris.jpg');
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (101, 'DOUBLE BARREL', '1999', 'RED', 'USA', 'SOUTH', 'Will F you up!', NULL);
INSERT INTO wine (id, name, year, grapes, country, region, description, picture) VALUES (102, 'BOX O WINE', '2002', 'GREEN', 'USA', 'SOUTH', 'Party Box', NULL);


--
-- Name: wine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cellar
--

SELECT pg_catalog.setval('wine_id_seq', 102, true);


--
-- Name: wine_pkey; Type: CONSTRAINT; Schema: public; Owner: cellar; Tablespace: 
--

ALTER TABLE ONLY wine
    ADD CONSTRAINT wine_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: cellar
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM cellar;
GRANT ALL ON SCHEMA public TO cellar;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

