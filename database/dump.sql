--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.8 (Ubuntu 16.8-0ubuntu0.24.04.1)

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
-- Name: physics_nobel_laureates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.physics_nobel_laureates (
    id integer NOT NULL,
    full_name text,
    birth_date text,
    birth_city text,
    birth_country text,
    death_date text,
    death_city text,
    death_country text
);


--
-- Name: physics_nobel_laureates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.physics_nobel_laureates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: physics_nobel_laureates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.physics_nobel_laureates_id_seq OWNED BY public.physics_nobel_laureates.id;


--
-- Name: physics_nobel_laureates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.physics_nobel_laureates ALTER COLUMN id SET DEFAULT nextval('public.physics_nobel_laureates_id_seq'::regclass);


--
-- Data for Name: physics_nobel_laureates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.physics_nobel_laureates (id, full_name, birth_date, birth_city, birth_country, death_date, death_city, death_country) FROM stdin;
1	Aage Niels Bohr	1922-06-19	Copenhagen	Denmark	2009-09-08	Copenhagen	Denmark
2	Abdus Salam	1926-01-29	Jhang Maghiāna	India	1996-11-21	Oxford	United Kingdom
3	Adam G. Riess	1969-12-16	Washington, D.C.	USA	\N	\N	\N
4	Alain Aspect	1947-06-15	Agen	France	\N	\N	\N
5	Albert Abraham Michelson	1852-12-19	Strelno	Prussia	1931-05-09	Pasadena, CA	USA
6	Albert Einstein	1879-03-14	Ulm	Germany	1955-04-18	Princeton, NJ	USA
7	Albert Fert	1938-03-07	Carcassonne	France	\N	\N	\N
8	Aleksandr Mikhailovich Prokhorov	1916-07-11	Atherton	Australia	2002-01-08	Moscow	Russia
9	Alexei Alexeyevich Abrikosov	1928-06-25	Moscow	USSR	2017-03-29	\N	\N
10	Alfred Kastler	1902-05-03	Guebwiller	Germany	1984-01-07	Bandol	France
11	Andre Geim	1958-10-21	Sochi	Russia	\N	\N	\N
12	Andrea Ghez	1965-06-16	New York, NY	USA	\N	\N	\N
13	Anne L’Huillier	1958-08-16	Paris	France	\N	\N	\N
14	Anthony J. Leggett	1938-03-26	London	United Kingdom	\N	\N	\N
15	Anton Zeilinger	1945-05-20	Ried im Innkreis	Austria	\N	\N	\N
16	Antony Hewish	1924-05-11	Fowey	United Kingdom	2021-09-13	\N	\N
17	Arno Allan Penzias	1933-04-26	Munich	Germany	2024-01-22	San Francisco, CA	USA
18	Arthur Ashkin	1922-09-02	New York, NY	USA	2020-09-21	Rumson, NJ	USA
19	Arthur B. McDonald	1943-08-29	Sydney, Nova Scotia	Canada	\N	\N	\N
20	Arthur Holly Compton	1892-09-10	Wooster, OH	USA	1962-03-15	Berkeley, CA	USA
21	Arthur Leonard Schawlow	1921-05-05	Mount Vernon, NY	USA	1999-04-28	Palo Alto, CA	USA
22	Barry C. Barish	1936-01-27	Omaha, NE	USA	\N	\N	\N
23	Ben Roy Mottelson	1926-07-09	Chicago, IL	USA	2022-05-13	\N	\N
24	Bertram N. Brockhouse	1918-07-15	Lethbridge, Alberta	Canada	2003-10-13	Hamilton, Ontario	Canada
25	Brian David Josephson	1940-01-04	Cardiff	United Kingdom	\N	\N	\N
26	Brian P. Schmidt	1967-02-24	Missoula, MT	USA	\N	\N	\N
27	Burton Richter	1931-03-22	Brooklyn, NY	USA	2018-07-18	Stanford, CA	USA
28	Charles Thomson Rees Wilson	1869-02-14	Glencorse	Scotland	1959-11-15	Carlops	Scotland
29	Carl David Anderson	1905-09-03	New York, NY	USA	1991-01-11	San Marino, CA	USA
30	Carl E. Wieman	1951-03-26	Corvallis, OR	USA	\N	\N	\N
31	Carlo Rubbia	1934-03-31	Gorizia	Italy	\N	\N	\N
32	Cecil Frank Powell	1903-12-05	Tonbridge	United Kingdom	1969-08-09	\N	Italy
33	Charles Edouard Guillaume	1861-02-15	Fleurier	Switzerland	1938-06-13	Sèvres	France
34	Charles Glover Barkla	1877-06-07	Widnes	United Kingdom	1944-10-23	Edinburgh	Scotland
35	Charles Hard Townes	1915-07-28	Greenville, SC	USA	2015-01-27	Berkeley, CA	USA
36	Charles Kuen Kao	1933-11-04	Shanghai	China	2018-09-23	Hong Kong	\N
37	Chen Ning Yang	1922-09-22	Hofei, Anhwei	China	\N	\N	\N
38	Claude Cohen-Tannoudji	1933-04-01	Constantine	French Algeria	\N	\N	\N
39	Clifford G. Shull	1915-09-23	Pittsburgh, PA	USA	2001-03-31	Medford, MA	USA
40	Clinton Joseph Davisson	1881-10-22	Bloomington, IL	USA	1958-02-01	Charlottesville, VA	USA
41	Daniel C. Tsui	1939-02-28	Henan	China	\N	\N	\N
42	David J. Gross	1941-02-19	Washington, D.C.	USA	\N	\N	\N
43	David J. Thouless	1934-09-21	Bearsden	United Kingdom	2019-04-06	Cambridge	United Kingdom
44	David J. Wineland	1944-02-24	Milwaukee, WI	USA	\N	\N	\N
45	David M. Lee	1931-01-20	Rye, NY	USA	\N	\N	\N
46	Dennis Gabor	1900-06-05	Budapest	Hungary	1979-02-08	London	United Kingdom
47	Didier Queloz	1966-02-23	Geneva	Switzerland	\N	\N	\N
48	Donald Arthur Glaser	1926-09-21	Cleveland, OH	USA	2013-02-28	Berkeley, CA	USA
49	Donna Strickland	1959-05-27	Guelph	Canada	\N	\N	\N
50	Douglas D. Osheroff	1945-08-01	Aberdeen, WA	USA	\N	\N	\N
51	Edward Mills Purcell	1912-08-30	Taylorville, IL	USA	1997-03-07	Cambridge, MA	USA
52	Sir Edward Victor Appleton	1892-09-06	Bradford	United Kingdom	1965-04-21	Edinburgh	Scotland
53	Emilio Gino Segrè	1905-02-01	Tivoli	Italy	1989-04-22	Lafayette, CA	USA
54	Enrico Fermi	1901-09-29	Rome	Italy	1954-11-28	Chicago, IL	USA
55	Eric A. Cornell	1961-12-19	Palo Alto, CA	USA	\N	\N	\N
56	Ernest Orlando Lawrence	1901-08-08	Canton, SD	USA	1958-08-27	Palo Alto, CA	USA
57	Ernest Thomas Sinton Walton	1903-10-06	Dungarvan	Ireland	1995-06-25	Belfast	Northern Ireland
58	Ernst Ruska	1906-12-25	Heidelberg	Germany	1988-05-27	West Berlin	Germany
59	Erwin Schrödinger	1887-08-12	Vienna	Austria	1961-01-04	Vienna	Austria
60	Eugene Paul Wigner	1902-11-17	Budapest	Austria-Hungary	1995-01-01	Princeton, NJ	USA
61	F. Duncan M. Haldane	1951-09-14	London	United Kingdom	\N	\N	\N
62	Felix Bloch	1905-10-23	Zurich	Switzerland	1983-09-10	Zurich	Switzerland
63	Karl Ferdinand Braun	1850-06-06	Fulda	Hesse-Kassel	1918-04-20	Brooklyn, NY	USA
64	Ferenc Krausz	1962-05-17	Mór	Hungary	\N	\N	\N
65	François Englert	1932-11-06	Etterbeek	Belgium	\N	\N	\N
66	Frank Wilczek	1951-05-15	New York, NY	USA	\N	\N	\N
67	Frederick Reines	1918-03-16	Paterson, NJ	USA	1998-08-26	Orange, CA	USA
68	Frits Zernike	1888-07-16	Amsterdam	the Netherlands	1966-03-10	Groningen	the Netherlands
69	Gabriel Lippmann	1845-08-16	Hollerich	Luxembourg	1921-07-13	\N	\N
70	Geoffrey Hinton	1947-12-06	London	United Kingdom	\N	\N	\N
71	George E. Smith	1930-05-10	White Plains, NY	USA	\N	\N	\N
72	George F. Smoot	1945-02-20	Yukon, FL	USA	\N	\N	\N
73	George Paget Thomson	1892-05-03	Cambridge	United Kingdom	1975-09-10	Cambridge	United Kingdom
74	Georges Charpak	1924-08-01	Dabrovica	Poland	2010-09-29	Paris	France
75	Gérard Mourou	1944-06-22	Albertville	France	\N	\N	\N
76	Gerardus 't Hooft	1946-07-05	Den Helder	the Netherlands	\N	\N	\N
77	Gerd Binnig	1947-07-20	Frankfurt-on-the-Main	West Germany	\N	\N	\N
78	Giorgio Parisi	1948-08-04	Rome	Italy	\N	\N	\N
79	Guglielmo Marconi	1874-04-25	Bologna	Italy	1937-07-20	Rome	Italy
80	Nils Gustaf Dalén	1869-11-30	Stenstorp	Sweden	1937-12-09	Stockholm	Sweden
81	Gustav Ludwig Hertz	1887-07-22	Hamburg	Germany	1975-10-30	Berlin	East Germany
82	H. David Politzer	1949-08-31	New York, NY	USA	\N	\N	\N
83	Hannes Olof Gösta Alfvén	1908-05-30	Norrköping	Sweden	1995-04-02	Djursholm	Sweden
84	Hans Albrecht Bethe	1906-07-02	Strasbourg	Germany	2005-03-06	Ithaca, NY	USA
85	Hans G. Dehmelt	1922-09-09	Görlitz	Prussia	2017-03-07	Seattle, WA	USA
86	Heike Kamerlingh Onnes	1853-09-21	Groningen	the Netherlands	1926-02-21	Leiden	the Netherlands
87	Heinrich Rohrer	1933-06-06	Buchs	Switzerland	2013-05-16	Wollerau	Switzerland
88	Hendrik Antoon Lorentz	1853-07-18	Arnhem	the Netherlands	1928-02-04	\N	the Netherlands
89	Antoine Henri Becquerel	1852-12-15	Paris	France	1908-08-25	\N	France
90	Henry W. Kendall	1926-12-09	Boston, MA	USA	1999-02-15	Wakulla Springs State Park, FL	USA
91	Herbert Kroemer	1928-08-25	Weimar	Germany	2024-03-08	\N	\N
92	Hideki Yukawa	1907-01-23	Tokyo	Japan	1981-09-08	Kyoto	Japan
93	Hiroshi Amano	1960-09-11	Hamamatsu	Japan	\N	\N	\N
94	Horst L. Störmer	1949-04-06	Frankfurt-on-the-Main	West Germany	\N	\N	\N
95	Igor Yevgenyevich Tamm	1895-07-08	Vladivostok	Russia	1971-04-12	Moscow	USSR
96	Il´ja Mikhailovich Frank	1908-10-23	Leningrad	Russia	1990-06-22	Moscow	USSR
97	Isamu Akasaki	1929-01-30	Chiran	Japan	2021-04-01	Nagoya	Japan
98	Isidor Isaac Rabi	1898-07-29	Rymanow	Austria-Hungary	1988-01-11	New York, NY	USA
99	Ivar Giaever	1929-04-05	Bergen	Norway	\N	\N	\N
100	J. Georg Bednorz	1950-05-16	Neuenkirchen	West Germany	\N	\N	\N
101	J. Hans D. Jensen	1907-06-25	Hamburg	Germany	1973-02-11	Heidelberg	West Germany
102	J. Michael Kosterlitz	1943-06-22	Aberdeen	United Kingdom	\N	\N	\N
103	Joseph John Thomson	1856-12-18	Cheetham Hill	United Kingdom	1940-08-30	Cambridge	United Kingdom
104	Jack S. Kilby	1923-11-08	Jefferson City, MO	USA	2005-06-20	Dallas, TX	USA
105	Jack Steinberger	1921-05-25	Bad Kissingen	Germany	2020-12-12	Geneva	Switzerland
106	James Chadwick	1891-10-20	Manchester	United Kingdom	1974-07-24	Cambridge	United Kingdom
107	James Watson Cronin	1931-09-29	Chicago, IL	USA	2016-08-25	St. Paul, MN	USA
108	James Franck	1882-08-26	Hamburg	Germany	1964-05-21	Göttingen	West Germany
109	James Peebles	1935-04-25	Winnipeg	Canada	\N	\N	\N
110	Leo James Rainwater	1917-12-09	Council, ID	USA	1986-05-31	Yonkers, NY	USA
111	Jean Baptiste Perrin	1870-09-30	Lille	France	1942-04-17	New York, NY	USA
112	Jerome I. Friedman	1930-03-28	Chicago, IL	USA	\N	\N	\N
113	Johannes Diderik van der Waals	1837-11-23	Leiden	the Netherlands	1923-03-08	Amsterdam	the Netherlands
114	Johannes Stark	1874-04-15	Schickenhof	Germany	1957-06-21	Traunstein	West Germany
115	John Bardeen	1908-05-23	Madison, WI	USA	1991-01-30	Boston, MA	USA
116	John C. Mather	1946-08-07	Roanoke, VA	USA	\N	\N	\N
117	John F. Clauser	1942-12-01	Pasadena, CA	USA	\N	\N	\N
118	Sir John Douglas Cockcroft	1897-05-27	Todmorden	United Kingdom	1967-09-18	Cambridge	United Kingdom
119	John Hasbrouck Van Vleck	1899-03-13	Middletown, CT	USA	1980-10-27	Cambridge, MA	USA
120	John J. Hopfield	1933-07-15	Chicago, IL	USA	\N	\N	\N
121	John L. Hall	1934-08-21	Denver, CO	USA	\N	\N	\N
122	Joseph H. Taylor Jr.	1941-03-29	Philadelphia, PA	USA	\N	\N	\N
123	Julian Schwinger	1918-02-12	New York, NY	USA	1994-07-16	Los Angeles, CA	USA
124	K. Alexander Müller	1927-04-20	Basel	Switzerland	2023-01-09	Zurich	Switzerland
125	Kai M. Siegbahn	1918-04-20	Lund	Sweden	2007-07-20	Ängelholm	Sweden
126	Kenneth G. Wilson	1936-06-08	Waltham, MA	USA	2013-06-15	Saco, ME	USA
127	Kip S. Thorne	1940-06-01	Logan, UT	USA	\N	\N	\N
128	Klaus Hasselmann	1931-10-25	Hamburg	Germany	\N	\N	\N
129	Klaus von Klitzing	1943-06-28	Schroda	German-occupied Poland	\N	\N	\N
130	Konstantin Novoselov	1974-08-23	Nizhny Tagil	Russia	\N	\N	\N
131	William Lawrence Bragg	1890-03-31	Adelaide	Australia	1971-07-01	Ipswich	United Kingdom
132	Leo Esaki	1925-03-12	Osaka	Japan	\N	\N	\N
133	Leon M. Lederman	1922-07-15	New York, NY	USA	2018-10-03	Rexburg, ID	USA
134	Leon Neil Cooper	1930-02-28	New York, NY	USA	2024-10-23	Providence, RI	USA
135	Lev Davidovich Landau	1908-01-22	Baku	Russian Empire	1968-04-01	Moscow	USSR
136	Lord Rayleigh (John William Strutt)	1842-11-12	Langford Grove, Maldon, Essex	United Kingdom	1919-06-30	\N	United Kingdom
137	Prince Louis-Victor Pierre Raymond de Broglie	1892-08-15	Dieppe	France	1987-03-19	Paris	France
138	Louis Eugène Félix Néel	1904-11-22	Lyon	France	2000-11-17	Brive-Corrèze	France
139	Luis Walter Alvarez	1911-06-13	San Francisco, CA	USA	1988-09-01	Berkeley, CA	USA
140	Makoto Kobayashi	1944-04-07	Nagoya	Japan	\N	\N	\N
141	Karl Manne Georg Siegbahn	1886-12-03	Örebro	Sweden	1978-09-26	Stockholm	Sweden
142	Maria Goeppert Mayer	1906-06-28	Kattowitz	Germany	1972-02-20	San Diego, CA	USA
143	Marie Curie, née Skłodowska	1867-11-07	Warsaw	Russian Empire	1934-07-04	Sallanches	France
144	Martin L. Perl	1927-06-24	New York, NY	USA	2014-09-30	Palo Alto, CA	USA
145	Sir Martin Ryle	1918-09-27	Brighton	United Kingdom	1984-10-14	Cambridge	United Kingdom
146	Martinus J.G. Veltman	1931-06-27	Waalwijk	the Netherlands	2021-01-04	Bilthoven	the Netherlands
147	Masatoshi Koshiba	1926-09-19	Toyohashi	Japan	2020-11-12	Tokyo	Japan
148	Max Born	1882-12-11	Breslau	Germany	1970-01-05	Göttingen	West Germany
149	Max Karl Ernst Ludwig Planck	1858-04-23	Kiel	Schleswig	1947-10-04	Göttingen	West Germany
150	Max von Laue	1879-10-09	Pfaffendorf	Germany	1960-04-23	Berlin	West Germany
151	Melvin Schwartz	1932-11-02	New York, NY	USA	2006-08-28	Twin Falls, ID	USA
152	Michel Mayor	1942-01-12	Lausanne	Switzerland	\N	\N	\N
153	Murray Gell-Mann	1929-09-15	New York, NY	USA	2019-05-24	Santa Fe, NM	USA
154	Nicolaas Bloembergen	1920-03-11	Dordrecht	the Netherlands	2017-09-05	Tucson, AZ	USA
155	Nicolay Gennadiyevich Basov	1922-12-14	Usman	USSR	2001-07-01	Moscow	Russia
156	Niels Henrik David Bohr	1885-10-07	Copenhagen	Denmark	1962-11-18	Copenhagen	Denmark
157	Norman F. Ramsey	1915-08-27	Washington, D.C.	USA	2011-11-04	Wayland, MA	USA
158	Otto Stern	1888-02-17	Sorau	Germany	1969-08-17	Berkeley, CA	USA
159	Owen Chamberlain	1920-07-10	San Francisco, CA	USA	2006-02-28	Berkeley, CA	USA
160	Owen Willans Richardson	1879-04-26	Dewsbury	United Kingdom	1959-02-15	Alton	United Kingdom
161	Patrick Maynard Stuart Blackett	1897-11-18	London	United Kingdom	1974-07-13	London	United Kingdom
162	Paul Adrien Maurice Dirac	1902-08-08	Bristol	United Kingdom	1984-10-20	Tallahassee, FL	USA
163	Pavel Alekseyevich Cherenkov	1904-07-28	Novaya Chigla	Russia	1990-01-06	\N	USSR
164	Percy Williams Bridgman	1882-04-21	Cambridge, MA	USA	1961-08-20	Randolph, NH	USA
165	Peter Grünberg	1939-05-18	Plzen	Czechoslovakia	2018-04-09	Jülich	Germany
166	Peter W. Higgs	1929-05-29	Newcastle upon Tyne	United Kingdom	2024-04-08	Edinburgh	Scotland
167	Philip Warren Anderson	1923-12-13	Indianapolis, IN	USA	2020-03-29	Princeton, NJ	USA
168	Philipp Eduard Anton von Lenard	1862-06-07	Pressburg	Hungary	1947-05-20	Messelhausen	Germany
169	Pierre Agostini	1941-07-23	Tunis	French protectorate of Tunisia	\N	\N	\N
170	Pierre Curie	1859-05-15	Paris	France	1906-04-19	Paris	France
171	Pierre-Gilles de Gennes	1932-10-24	Paris	France	2007-05-18	Orsay	France
172	Pieter Zeeman	1865-05-25	Zonnemaire	the Netherlands	1943-10-09	Amsterdam	the Netherlands
173	Polykarp Kusch	1911-01-26	Blankenburg	Germany	1993-03-20	Dallas, TX	USA
174	Pyotr Leonidovich Kapitsa	1894-07-09	Kronshtadt	Russian Empire	1984-04-08	Moscow	USSR
175	Rainer Weiss	1932-09-29	Berlin	Germany	\N	\N	\N
176	Raymond Davis Jr.	1914-10-14	Washington, D.C.	USA	2006-05-31	Blue Point, NY	USA
177	Reinhard Genzel	1952-03-24	Bad Homburg vor der Höhe	Germany	\N	\N	\N
178	Riccardo Giacconi	1931-10-06	Genoa	Italy	2018-12-16	La Jolla, CA	USA
179	Richard E. Taylor	1929-11-02	Medicine Hat, Alberta	Canada	2018-02-22	Stanford, CA	USA
180	Richard P. Feynman	1918-05-11	New York, NY	USA	1988-02-15	Los Angeles, CA	USA
181	Robert Andrews Millikan	1868-03-22	Morrison, IL	USA	1953-12-19	San Marino, CA	USA
182	Robert B. Laughlin	1950-11-01	Visalia, CA	USA	\N	\N	\N
183	Robert C. Richardson	1937-06-26	Washington, D.C.	USA	2013-02-19	Ithaca, NY	USA
184	Robert Hofstadter	1915-02-05	New York, NY	USA	1990-11-17	Stanford, CA	USA
185	John Robert Schrieffer	1931-05-31	Oak Park, IL	USA	2019-07-27	Tallahassee, FL	USA
186	Robert Woodrow Wilson	1936-01-10	Houston, TX	USA	\N	\N	\N
187	Roger Penrose	1931-08-08	Colchester	United Kingdom	\N	\N	\N
188	Roy J. Glauber	1925-09-01	New York, NY	USA	2018-12-26	Newton, MA	USA
189	Rudolf Ludwig Mössbauer	1929-01-31	Munich	Germany	2011-09-14	\N	\N
190	Russell A. Hulse	1950-11-28	New York, NY	USA	\N	\N	\N
191	Samuel Chao Chung Ting	1936-01-27	Ann Arbor, MI	USA	\N	\N	\N
192	Saul Perlmutter	1959-01-01	Champaign-Urbana, IL	USA	\N	\N	\N
193	Serge Haroche	1944-09-11	Casablanca	Morocco	\N	\N	\N
194	Sheldon Lee Glashow	1932-12-05	New York, NY	USA	\N	\N	\N
195	Shuji Nakamura	1954-05-22	Ikata	Japan	\N	\N	\N
196	Simon van der Meer	1925-11-24	the Hague	the Netherlands	2011-03-04	Geneva	Switzerland
197	Sin-Itiro Tomonaga	1906-03-31	Kyoto	Japan	1979-07-08	Tokyo	Japan
198	Sir Chandrasekhara Venkata Raman	1888-11-07	Tiruchirappalli	India	1970-11-21	Bangalore	India
199	Sir Nevill Francis Mott	1905-09-30	Leeds	United Kingdom	1996-08-08	Milton Keynes	United Kingdom
200	Steven Chu	1948-02-28	St. Louis, MO	USA	\N	\N	\N
201	Steven Weinberg	1933-05-03	New York, NY	USA	2021-07-23	Austin, TX	USA
202	Subrahmanyan Chandrasekhar	1910-10-19	Lahore	India	1995-08-21	Chicago, IL	USA
203	Syukuro Manabe	1931-09-21	Shingu, Ehime	Japan	\N	\N	\N
204	Takaaki Kajita	1959-03-09	Higashimatsuyama	Japan	\N	\N	\N
205	Theodor W. Hänsch	1941-10-30	Heidelberg	Germany	\N	\N	\N
206	Toshihide Maskawa	1940-02-07	Nagoya	Japan	2021-07-23	Kyoto	Japan
207	Tsung-Dao (T.D.) Lee	1926-11-24	Shanghai	China	2024-08-04	San Francisco, CA	USA
208	Val Logsdon Fitch	1923-03-10	Merriman, NE	USA	2015-02-05	Princeton, NJ	USA
209	Victor Franz Hess	1883-06-24	Peggau	Austria	1964-12-17	Mount Vernon, NY	USA
210	Vitaly Lazarevich Ginzburg	1916-10-04	Moscow	Russia	2009-11-08	\N	\N
211	Walter Houser Brattain	1902-02-10	Amoy	China	1987-10-13	Seattle, WA	USA
212	Walther Bothe	1891-01-08	Oranienburg	Germany	1957-02-08	Heidelberg	West Germany
213	Werner Karl Heisenberg	1901-12-05	Würzburg	Germany	1976-02-01	Munich	West Germany
214	Wilhelm Conrad Röntgen	1845-03-27	Lennep	Prussia	1923-02-10	Munich	Germany
215	Wilhelm Wien	1864-01-13	Gaffken	Prussia	1928-08-30	Munich	Germany
216	Willard S. Boyle	1924-08-19	Amherst, NS	Canada	2011-05-07	Truro, NS	Canada
217	William Alfred Fowler	1911-08-09	Pittsburgh, PA	USA	1995-03-14	Pasadena, CA	USA
218	William Bradford Shockley	1910-02-13	London	United Kingdom	1989-08-12	Palo Alto, CA	USA
219	Sir William Henry Bragg	1862-07-02	Wigton	United Kingdom	1942-03-12	London	United Kingdom
220	William D. Phillips	1948-11-05	Wilkes-Barre, PA	USA	\N	\N	\N
221	Willis Eugene Lamb	1913-07-12	Los Angeles, CA	USA	2008-05-15	Tucson, AZ	USA
222	Wolfgang Ketterle	1957-10-21	Heidelberg	West Germany	\N	\N	\N
223	Wolfgang Paul	1913-08-10	Lorenzkirch	Germany	1993-12-07	Bonn	Germany
224	Wolfgang Pauli	1900-04-25	Vienna	Austria	1958-12-15	Zurich	Switzerland
225	Yoichiro Nambu	1921-01-18	Tokyo	Japan	2015-07-05	Osaka	Japan
226	Zhores I. Alferov	1930-03-15	Vitebsk, Belorussia	USSR	2019-03-01	St. Petersburg	Russia
\.


--
-- Name: physics_nobel_laureates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.physics_nobel_laureates_id_seq', 226, true);


--
-- Name: physics_nobel_laureates physics_nobel_laureates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.physics_nobel_laureates
    ADD CONSTRAINT physics_nobel_laureates_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

