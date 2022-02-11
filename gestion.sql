--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    codeart integer NOT NULL,
    "libellé" character varying(50)
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_codeart_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_codeart_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_codeart_seq OWNER TO postgres;

--
-- Name: articles_codeart_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_codeart_seq OWNED BY public.articles.codeart;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    codeclient integer NOT NULL,
    nomclient character varying(50)
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_codeclient_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_codeclient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_codeclient_seq OWNER TO postgres;

--
-- Name: clients_codeclient_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_codeclient_seq OWNED BY public.clients.codeclient;


--
-- Name: clients_factures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients_factures (
    id integer NOT NULL,
    codeclient integer NOT NULL,
    codefact integer NOT NULL,
    montant double precision,
    date date
);


ALTER TABLE public.clients_factures OWNER TO postgres;

--
-- Name: clients_factures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_factures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_factures_id_seq OWNER TO postgres;

--
-- Name: clients_factures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_factures_id_seq OWNED BY public.clients_factures.id;


--
-- Name: factures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factures (
    codefact integer NOT NULL,
    date date
);


ALTER TABLE public.factures OWNER TO postgres;

--
-- Name: factures_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factures_articles (
    id integer NOT NULL,
    codefact integer NOT NULL,
    codeart integer NOT NULL,
    quantite integer
);


ALTER TABLE public.factures_articles OWNER TO postgres;

--
-- Name: factures_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factures_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.factures_articles_id_seq OWNER TO postgres;

--
-- Name: factures_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factures_articles_id_seq OWNED BY public.factures_articles.id;


--
-- Name: factures_codefact_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factures_codefact_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.factures_codefact_seq OWNER TO postgres;

--
-- Name: factures_codefact_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factures_codefact_seq OWNED BY public.factures.codefact;


--
-- Name: articles codeart; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN codeart SET DEFAULT nextval('public.articles_codeart_seq'::regclass);


--
-- Name: clients codeclient; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN codeclient SET DEFAULT nextval('public.clients_codeclient_seq'::regclass);


--
-- Name: clients_factures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_factures ALTER COLUMN id SET DEFAULT nextval('public.clients_factures_id_seq'::regclass);


--
-- Name: factures codefact; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factures ALTER COLUMN codefact SET DEFAULT nextval('public.factures_codefact_seq'::regclass);


--
-- Name: factures_articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factures_articles ALTER COLUMN id SET DEFAULT nextval('public.factures_articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (codeart, "libellé") FROM stdin;
1	Cheese - Mozzarella, Buffalo
2	Beets
3	Evaporated Milk - Skim
4	Skirt - 29 Foot
5	Wine - Magnotta - Pinot Gris Sr
6	Muffin Puck Ww Carrot
7	Brandy - Orange, Mc Guiness
8	Cheese - La Sauvagine
9	Oil - Olive Bertolli
10	Soup - French Onion, Dry
11	Liners - Baking Cups
12	Chocolate Bar - Reese Pieces
13	Mix - Cocktail Strawberry Daiquiri
14	Eggroll
15	Pumpkin - Seed
16	Soup - Campbells
17	Wine - Clavet Saint Emilion
18	Tart - Pecan Butter Squares
19	Yukon Jack
20	Hipnotiq Liquor
21	Salmon - Smoked, Sliced
22	Temperature Recording Station
23	Latex Rubber Gloves Size 9
24	Creamers - 10%
25	Trout - Rainbow, Fresh
26	Lettuce - Radicchio
27	Salmon - Fillets
28	Radish - Black, Winter, Organic
29	Rabbit - Frozen
30	Wine - Valpolicella Masi
31	Kumquat
32	Ecolab - Balanced Fusion
33	Appetizer - Veg Assortment
34	Wine - Tio Pepe Sherry Fino
35	Gelatine Leaves - Bulk
36	Tia Maria
37	Napkin White - Starched
38	Longos - Lasagna Veg
39	Nantucket Orange Juice
40	Potatoes - Idaho 100 Count
41	Noodles - Steamed Chow Mein
42	Grapefruit - White
43	Sea Bass - Fillets
44	Capers - Pickled
45	Teriyaki Sauce
46	Lentils - Green Le Puy
47	Oyster - In Shell
48	Ham - Cooked Bayonne Tinned
49	Momiji Oroshi Chili Sauce
50	Pumpkin
51	Veal - Inside, Choice
52	Mushroom - Oyster, Fresh
53	Cassis
54	Pasta - Gnocchi, Potato
55	Beef - Ground Lean Fresh
56	Wood Chips - Regular
57	Wine - Magnotta - Cab Franc
58	Beef - Top Sirloin - Aaa
59	Gloves - Goldtouch Disposable
60	Coconut - Creamed, Pure
61	Tomatoes - Vine Ripe, Yellow
62	Dish Towel
63	Beef - Rib Roast, Capless
64	Mace
65	Tomato - Tricolor Cherry
66	Wine - Saint - Bris 2002, Sauv
67	Pie Filling - Apple
68	Cheese - Brie,danish
69	Table Cloth 54x72 White
70	Flour - Bran, Red
71	Bread - Corn Muffaleta Onion
72	Pastry - French Mini Assorted
73	Clam Nectar
74	Ice Cream Bar - Hageen Daz To
75	Wine - Magnotta - Cab Franc
76	Ecolab - Hobart Upr Prewash Arm
77	Flavouring - Rum
78	Danishes - Mini Raspberry
79	Juice - Cranberry, 341 Ml
80	Pasta - Elbows, Macaroni, Dry
81	Pepper - White, Ground
82	Wine - Dubouef Macon - Villages
83	Catfish - Fillets
84	Shrimp - Baby, Warm Water
85	Apple - Macintosh
86	Cheese - Roquefort Pappillon
87	Veal - Knuckle
88	Pork - Shoulder
89	Nestea - Iced Tea
90	Beans - Kidney, Red Dry
91	Bag - Regular Kraft 20 Lb
92	Veal - Slab Bacon
93	Turkey - Breast, Bone - In
94	Mountain Dew
95	Glove - Cutting
96	Salt - Sea
97	Chicken - Diced, Cooked
98	Jam - Raspberry,jar
99	Petit Baguette
100	Duck - Fat
101	Soup Campbells - Tomato Bisque
102	Extract - Raspberry
103	Corn - On The Cob
104	Anchovy Fillets
105	Syrup - Golden, Lyles
106	Nut - Pumpkin Seeds
107	Egg Patty Fried
108	Mangostein
109	Bread - English Muffin
110	Table Cloth 144x90 White
111	Sobe - Liz Blizz
112	Wine - Domaine Boyar Royal
113	Soap - Mr.clean Floor Soap
114	Salt And Pepper Mix - White
115	Aspic - Light
116	Cheese - Boursin, Garlic / Herbs
117	Spice - Greek 1 Step
118	Truffle Cups - Brown
119	Carbonated Water - White Grape
120	Ice Cream - Turtles Stick Bar
121	Sauce - Hoisin
122	Mushroom - Shitake, Fresh
123	Irish Cream - Butterscotch
124	Veal - Leg, Provimi - 50 Lb Max
125	Soda Water - Club Soda, 355 Ml
126	Port - 74 Brights
127	Clams - Bay
128	Wine - Spumante Bambino White
129	Magnotta Bel Paese Red
130	Asparagus - White, Canned
131	Bread - Corn Muffaletta
132	Soup - French Can Pea
133	Sugar - Sweet N Low, Individual
134	Rice - Brown
135	Sour Puss - Tangerine
136	Bok Choy - Baby
137	Fiddlehead - Frozen
138	Curry Powder Madras
139	Arizona - Green Tea
140	Turnip - White
141	Mountain Dew
142	Cup - 8oz Coffee Perforated
143	Cream - 18%
144	Chocolate - Liqueur Cups With Foil
145	Beef - Tenderlion, Center Cut
146	Wine - Red, Concha Y Toro
147	Halibut - Fletches
148	Cake Sheet Combo Party Pack
149	Juice - Mango
150	Broccoli - Fresh
151	Soup - Clam Chowder, Dry Mix
152	Pasta - Fusili Tri - Coloured
153	Bar Nature Valley
154	Juice - Orange, Concentrate
155	Lobster - Live
156	Wine - Masi Valpolocell
157	Frangelico
158	Salt And Pepper Mix - White
159	Bread - Petit Baguette
160	Butter - Salted
161	Garam Masala Powder
162	Cookie Dough - Oatmeal Rasin
163	Bread - Rosemary Focaccia
164	Beans - Kidney, Red Dry
165	Pasta - Rotini, Dry
166	Wine - Pinot Noir Stoneleigh
167	Soup Campbells - Italian Wedding
168	Coffee - Almond Amaretto
169	Buffalo - Striploin
170	Vodka - Hot, Lnferno
171	Turnip - Mini
172	Steel Wool
173	Wine - White, Concha Y Toro
174	Chocolate - Semi Sweet, Calets
175	Wine - Piper Heidsieck Brut
176	Bagel - Everything
177	Dill Weed - Fresh
178	Squid - U - 10 Thailand
179	Veal - Striploin
180	Wine - Red, Lurton Merlot De
181	Chocolate - Milk, Callets
182	Corn - Cream, Canned
183	Wine - Beringer Founders Estate
184	Appetizer - Mini Egg Roll, Shrimp
185	Bread - Rolls, Rye
186	Squash - Sunburst
187	Guava
188	V8 - Tropical Blend
189	Wine - Clavet Saint Emilion
190	Wine - Balbach Riverside
191	Creme De Cacao Mcguines
192	Wine - Muscadet Sur Lie
193	Mayonnaise - Individual Pkg
194	Bread - Granary Small Pull
195	Bread Base - Italian
196	Plasticforkblack
197	Soho Lychee Liqueur
198	Foil - Round Foil
199	Wine - Balbach Riverside
200	Beer - Maudite
201	Avocado
202	Lemonade - Pineapple Passion
203	Rum - Coconut, Malibu
204	Wine - Piper Heidsieck Brut
205	Green Scrubbie Pad H.duty
206	Peas Snow
207	Water - Aquafina Vitamin
208	Oil - Sunflower
209	Sugar - Cubes
210	Wine - Red, Cooking
211	Shrimp - Black Tiger 8 - 12
212	Squid - U 5
213	Pepper - White, Whole
214	Potatoes - Instant, Mashed
215	Lamb Rack - Ontario
216	Wine - Muscadet Sur Lie
217	Orange Roughy 4/6 Oz
218	Beer - Sleeman Fine Porter
219	Napkin - Dinner, White
220	Carbonated Water - Raspberry
221	Flour - Bread
222	Watercress
223	Yogurt - Strawberry, 175 Gr
224	Pork - Bones
225	Pork - Bacon, Double Smoked
226	Ginger - Crystalized
227	Sobe - Tropical Energy
228	Artichokes - Knobless, White
229	Table Cloth 144x90 White
230	Kippers - Smoked
231	Toothpick Frilled
232	Mushroom - Chanterelle Frozen
233	Towel Multifold
234	Bread - White Mini Epi
235	Bread - Kimel Stick Poly
236	Sorrel - Fresh
237	Wooden Mop Handle
238	Rum - Cream, Amarula
239	Momiji Oroshi Chili Sauce
240	Cherries - Frozen
241	Bread - Italian Sesame Poly
242	Tart Shells - Barquettes, Savory
243	Beef - Eye Of Round
244	Lamb - Sausage Casings
245	Sorrel - Fresh
246	Miso - Soy Bean Paste
247	Mushroom - Chantrelle, Fresh
248	Sugar - Brown
249	Pork - Tenderloin, Frozen
250	Toothpick Frilled
251	Truffle Cups - White Paper
252	Cookie Dough - Chunky
253	Longos - Lasagna Veg
254	Dip - Tapenade
255	Pasta - Angel Hair
256	Quail - Jumbo
257	Butter - Salted, Micro
258	Nantucket - Kiwi Berry Cktl.
259	Bread Crumbs - Panko
260	Napkin White - Starched
261	Pasta - Fusili, Dry
262	Zucchini - Mini, Green
263	Spaghetti Squash
264	Beef - Ground, Extra Lean, Fresh
265	Shrimp, Dried, Small / Lb
266	Doilies - 7, Paper
267	Raspberries - Frozen
268	Mussels - Cultivated
269	Mousse - Banana Chocolate
270	Wine - White, Pelee Island
271	Nut - Pistachio, Shelled
272	Compound - Mocha
273	Mortadella
274	Cake - Box Window 10x10x2.5
275	Shiro Miso
276	Brandy - Bar
277	Corn Kernels - Frozen
278	Gingerale - Schweppes, 355 Ml
279	Appetizer - Asian Shrimp Roll
280	Plasticspoonblack
281	Ice Cream - Fudge Bars
282	Eggwhite Frozen
283	Steampan - Lid For Half Size
284	Pizza Pizza Dough
285	Tamarind Paste
286	Steam Pan Full Lid
287	Nantucket - Kiwi Berry Cktl.
288	Cafe Royale
289	Breadfruit
290	Quail - Jumbo Boneless
291	Bacon Strip Precooked
292	Beets - Mini Golden
293	Gelatine Leaves - Envelopes
294	Mace
295	Red Cod Fillets - 225g
296	Water - Mineral, Carbonated
297	Sauce - Bernaise, Mix
298	Sauce - Hollandaise
299	Pork - Butt, Boneless
300	Strawberries
301	Cheese - Oka
302	Beer - Labatt Blue
303	Soup - French Can Pea
304	Chicken - Whole Fryers
305	Tobasco Sauce
306	Stock - Beef, White
307	Muffin Mix - Banana Nut
308	Wine - Chenin Blanc K.w.v.
309	Chicken - Base, Ultimate
310	Tuna - Fresh
311	The Pop Shoppe - Cream Soda
312	Pie Shells 10
313	Tomato - Plum With Basil
314	Tea - Herbal Sweet Dreams
315	Wine - Rosso Del Veronese Igt
316	Beans - Black Bean, Preserved
317	Lettuce - Curly Endive
318	Bread Bowl Plain
319	Bok Choy - Baby
320	Cookie - Dough Variety
321	Ecolab - Lime - A - Way 4/4 L
322	Zucchini - Green
323	Mushrooms - Honey
324	Aromat Spice / Seasoning
325	Garbage Bags - Clear
326	Vodka - Smirnoff
327	Salmon - Canned
328	Calypso - Pineapple Passion
329	Melon - Watermelon, Seedless
330	Nantuket Peach Orange
331	Spice - Chili Powder Mexican
332	Eggplant Italian
333	Mayonnaise
334	Cup - Paper 10oz 92959
335	Mushroom - Oyster, Fresh
336	Potatoes - Idaho 80 Count
337	Sambuca - Ramazzotti
338	Bowl 12 Oz - Showcase 92012
339	V8 Splash Strawberry Kiwi
340	Napkin White - Starched
341	Chilli Paste, Sambal Oelek
342	Wine - Vineland Estate Semi - Dry
343	Oil - Truffle, White
344	Sugar - Crumb
345	Soup Bowl Clear 8oz92008
346	Flour - Masa De Harina Mexican
347	Soho Lychee Liqueur
348	Sweet Pea Sprouts
349	Chips - Potato Jalapeno
350	Juice Peach Nectar
351	Apple - Custard
352	Nut - Almond, Blanched, Whole
353	Chevere Logs
354	Sugar - Icing
355	Veal - Shank, Pieces
356	Beans - Black Bean, Preserved
357	Nut - Pecan, Halves
358	Soup Campbells
359	Cabbage Roll
360	Seedlings - Mix, Organic
361	Eggroll
362	Wine - Fino Tio Pepe Gonzalez
363	Sauce - Rosee
364	Juice - Pineapple, 48 Oz
365	Soup - Boston Clam Chowder
366	Vinegar - Tarragon
367	Aspic - Amber
368	Juice - Pineapple, 341 Ml
369	Muffin Mix - Oatmeal
370	Sugar - Cubes
371	Lid Coffee Cup 8oz Blk
372	Thermometer Digital
373	Kohlrabi
374	Puree - Kiwi
375	Beef - Ox Tail, Frozen
376	Soup - Knorr, Country Bean
377	Compound - Pear
378	Lime Cordial - Roses
379	Pepper - Orange
380	Propel Sport Drink
381	Tomatoes - Vine Ripe, Yellow
382	Sugar - Sweet N Low, Individual
383	Juice - Ocean Spray Cranberry
384	Soup Knorr Chili With Beans
385	Yokaline
386	Lettuce - Belgian Endive
387	Table Cloth 62x114 White
388	Bread - Frozen Basket Variety
389	Pants Custom Dry Clean
390	Wine - Champagne Brut Veuve
391	Petit Baguette
392	Bacardi Mojito
393	Veal - Eye Of Round
394	Wine - Blue Nun Qualitatswein
395	Wine - Acient Coast Caberne
396	Extract - Raspberry
397	Soup - Cream Of Broccoli, Dry
398	Oven Mitts 17 Inch
399	Lamb Shoulder Boneless Nz
400	Wine - Lou Black Shiraz
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (codeclient, nomclient) FROM stdin;
1	Tito Chasney
2	Fern Eyrl
3	Maribelle Mattusov
4	Edita Bastian
5	Carmine Leynton
6	Garth Giffkins
7	Harley Broker
8	Jeniece Revett
9	Glen Couzens
10	Bobbe Schukert
11	Cherice Scripps
12	Vittorio Cholonin
13	Lazar Mogey
14	Sadie Lowing
15	Augusta Trevorrow
16	Kassey Doornbos
17	Carlyn Peascod
18	Mela Romanin
19	Tarrance Bernakiewicz
20	Ethelyn Malins
21	Eleen Wardhaw
22	Rowena Grassi
23	Ailsun Langhorne
24	Winny Freeborne
25	Anestassia Berwick
26	Rudy Fairy
27	Quentin Djorvic
28	Sauveur Buchett
29	Minna McAreavey
30	Guilbert Frood
31	Ediva Johannesson
32	Nate Reaper
33	Kinny Blackstock
34	Kally Chastan
35	Laurena Gernier
36	Jonathon Persse
37	Byram Gauler
38	Orelie Scouler
39	Waverley Fowles
40	Janeta Gilardone
41	Lucio Brittin
42	Ailene Pieper
43	Timmy Lattimer
44	Garvin Melan
45	Andy Rosier
46	Veronika Ribchester
47	Cassandra Synan
48	Michel Linggard
49	Giana Leith
50	Elie Obell
51	Benton de Clerq
52	Rivy Pendrill
53	Geoffry Jaulme
54	Leandra Zanuciolii
55	Bria Gollop
56	Brandy Seiter
57	Penni Simmers
58	Opal Zanutti
59	Reinald MacCaull
60	Korie Preshous
61	Munroe Gatlin
62	Silvester Cosgrave
63	Mary Jacketts
64	Ashley Cheltnam
65	Juliette Dumbreck
66	Isa Veel
67	Brenden Rainbow
68	Blayne Conkey
69	Fenelia Wiggington
70	Angelo Maunsell
71	Annemarie Olivella
72	Harlen Mair
73	Celinda Hardwidge
74	Arvin Blanchflower
75	Erwin Redhole
76	Nevsa Aldgate
77	Laurent Beebis
78	Mirelle Darker
79	Barrie Foot
80	Tamas Minogue
81	Odetta Habbes
82	Reube Gostick
83	Luis Speechly
84	Ermin Setterington
85	Leonanie Gilbart
86	Ernie Dignam
87	Leanora Gough
88	Portia Attarge
89	Bette Creyke
90	Octavia Janaway
91	Ian Geeson
92	Ericka Spofforth
93	Jodi Dymick
94	Launce McLagan
95	Padgett Cheson
96	Eleni Swadon
97	Burgess Witherop
98	Dru Verrechia
99	Ronnie Rexworthy
100	Mathian Oliver
101	Alfy Habeshaw
102	Elana Charlton
103	Lula Waterhous
104	Thacher Gosden
105	Ludwig Staples
106	Ellyn Burrows
107	Dianemarie Gunther
108	Roxane Ethersey
109	Hall Mainz
110	Whitney Gobell
111	Jillana Clive
112	Sybilla Dulton
113	Garvey Strahan
114	Isaac Crenage
115	Codi Phizakarley
116	Harmon Culpan
117	Audy Abrahm
118	Alfi Toffalo
119	Aile Suffield
120	Pauly Whoolehan
121	Kimmy Rozzell
122	Bron Studd
123	Elbertina Delgua
124	Cybill Middlemass
125	Jehu Garland
126	Ardath Trengrouse
127	Brew Kern
128	Dal Kilmurray
129	Ernest Coddrington
130	Benedick Dederich
131	Latia Bisatt
132	Vivi Andreichik
133	Harman Chadbourne
134	Charlena Tavinor
135	Nataniel Edwinson
136	Verney Adanet
137	Kali Empleton
138	Kerstin Farlamb
139	Fabio Hickinbottom
140	Carroll Radenhurst
141	Erma Menis
142	Shana Dudgeon
143	Glori Nannizzi
144	Desiree Castiglio
145	Engracia Geraldini
146	Orazio Huckerby
147	Fredek Gault
148	Colene Pfaffe
149	Felix Iglesias
150	Roosevelt Tomblings
151	Geoffry Manass
152	Rhoda Tumbridge
153	Debee Osgood
154	Dene Pettegre
155	Alison Welldrake
156	Tully Boat
157	Yanaton McDoual
158	Eilis Rowlatt
159	Dewie Rief
160	Jaynell Lilburne
161	Chariot Foxhall
162	Antone Dorrins
163	Jorge McRuvie
164	Artus Heartfield
165	Geraldine Fredi
166	Linnea Gosnold
167	Lyon Posner
168	Lotta Dunseith
169	Magnum Novichenko
170	Maris Netherwood
171	Zara Ivoshin
172	Skye Orviss
173	Cris Durnall
174	Robb Goomes
175	Ingrid Pordal
176	Trenton Gino
177	Olivette Wernher
178	Tiffany McDonnell
179	Micky Lubomirski
180	Cheston Illem
181	Alfonso McCue
182	Kliment Cawston
183	Flem Flattman
184	Lillian Smeath
185	Noemi Brameld
186	Sebastiano Harrowing
187	Flossie Brewse
188	Crichton Cressor
189	Jaclyn Collacombe
190	Janice Dumblton
191	Wildon Cruce
192	Ketti Bigby
193	Jennee Muirden
194	Orlando D'Alesio
195	Druci Tomblett
196	Minta O'Breen
197	Darci Spiniello
198	Sax Ivanishin
199	Salvatore Pantridge
200	Mary Mechi
201	Jake Halfacree
202	Marcela Bartolomeazzi
203	Valida Wiltshaw
204	Vere Shelp
205	Wolf Whitear
206	Sharla Wapple
207	Hettie Collinge
208	Eduard Pattinson
209	Waverley Pavolini
210	Liliane Pohlak
211	Martin Graber
212	Gabbie Rafter
213	Kory Delue
214	Urban Randerson
215	Dex Rosas
216	Walker Milkins
217	Heidie Beiderbecke
218	Ivette Yelden
219	Terra Mashro
220	Gifford Brelsford
221	Jolene Spivie
222	Aguistin Riolfi
223	Barnabe Jonczyk
224	Mathilda Chitham
225	Terrence MacGiany
226	Marti Calles
227	Winn Stonuary
228	Selma Hirjak
229	Marlo Swannack
230	Gustaf Waterhouse
231	Norrie Napper
232	Dilly Fretter
233	Adan Hawkins
234	Gene Fernez
235	Wendeline Pavyer
236	Lemuel Jain
237	Jessalin Lucken
238	Hardy McElwee
239	Rayna Millbank
240	Peirce Trusler
241	Caron Abramovicz
242	Coralie Broxholme
243	Omero O'Moylane
244	Ody Ockwell
245	Jasper Eathorne
246	Dorise O'Feeney
247	Casey Piwell
248	Gerardo Cherrie
249	Jewelle Askham
250	Selma Paulley
251	Eadith Da Costa
252	Ricki Pays
253	Ilene Wilcinskis
254	Vanya Rosenwald
255	Neile Matias
256	Stesha Lay
257	Keelia Fessier
258	Krystalle Corwin
259	Jorgan Jossel
260	Benedikta Champneys
261	Jeramie Jirieck
262	Cindra Tabb
263	Babette Brindle
264	Ellyn Pluthero
265	Brantley Renshaw
266	Lois Deards
267	Hobart Stubbings
268	Doro Summerlad
269	Ellette Carrel
270	Olenka Eam
271	Johanna Hartwell
272	Bard Rewan
273	Dar Scramage
274	Boris Cannan
275	Mellisa Challiss
276	Arturo Sample
277	Aymer Primo
278	Nils De Maine
279	Maurine Josephs
280	Quinn Baynon
281	Danila Andrat
282	Cedric Lelievre
283	Gwenni Mossop
284	Aldin Baynes
285	Ginelle Laven
286	Blondelle Dines
287	Reade Sarge
288	Alexandrina Cumbes
289	Rodrick Querree
290	Giavani Whalley
291	Jillene Stenhouse
292	Randy Shuttlewood
293	Gale Pettipher
294	Mil Lodovichi
295	Gillie Daventry
296	Daisie Roseby
297	Duffie Quirke
298	Engracia Krystek
299	Cole Macewan
300	Adey Shoobridge
301	Brandon Thomtson
302	Ardys Owenson
303	Alyda McCard
304	Eleanore Heal
305	Joey Rizzotto
306	Henryetta Sausman
307	Blair Posvner
308	Donna Harcourt
309	Rex Hammerson
310	Micki Oganian
311	Vincents Strangeway
312	Arch Hyams
313	Leroy Noel
314	Jase Artus
315	Michal Wiersma
316	Delphinia Paynes
317	Basia O'Scollee
318	Cody Gersam
319	Lorne Creber
320	Calvin Dassindale
321	Georgianne Paternoster
322	Jacqueline Fetherston
323	Nolie Elijah
324	Hymie Melan
325	Calv Dickon
326	Gabi Millins
327	Eunice Keohane
328	Marlee Witty
329	Katina Fee
330	James Slyne
331	Myrna Ginn
332	Emmy Phinn
333	Edward Cupper
334	Johannah Balentyne
335	Dyna Girodias
336	Adan Guswell
337	Faina Waith
338	Carrol Rizzolo
339	Rafaelita Rieflin
340	Hedy Moyse
341	Jacquenetta MacLleese
342	Hazel Pringuer
343	Sean Dohms
344	Fanny Gostling
345	Sayres Dellenbach
346	Adrianne Perfili
347	Baird Darlaston
348	Iver Yakovliv
349	Titus Andriessen
350	Dacey Fryers
351	Gretel Yabsley
352	Gene Aubury
353	Les Pavia
354	Kelcy Vallender
355	Johnathon Kitley
356	Olly Boyn
357	Lesly Jacobbe
358	Tibold Deeson
359	Alfie Bourtoumieux
360	Washington Screeton
361	Berkeley Soule
362	Alvan Gurry
363	Howey Regler
364	Saunders Scanlon
365	Sidonia Learmount
366	Gallagher Burchall
367	Anne-marie Humber
368	Christoph Dougill
369	Jim Malter
370	Early Ellaman
371	Myer Francesc
372	Frederik McCawley
373	Shawnee Dupoy
374	Elsinore Gallifont
375	Farah Truscott
376	Markus Garley
377	Gale Hugett
378	Pen Bestwall
379	Franny Haigh
380	Wat McElrea
381	Lucille Ludye
382	Merna Carnell
383	Gawen Pear
384	Leese Romao
385	Willyt O'Bradain
386	Wyatt Perone
387	Keary Gadsden
388	Patrick Lidell
389	Austen Wannes
390	Rosette Huttley
391	Monah Berlin
392	Trisha Axston
393	Pepillo McWard
394	Antonino Currin
395	Vyky Hodges
396	Noble Bellinger
397	Chantalle Breakspear
398	Mignonne Picard
399	Itch Bullivent
400	Regan Bowman
401	Kassie Roseblade
402	Drusi Phippin
403	Blair Hugueville
404	Celestina Primak
405	Joanna Hopfer
406	Chryste Galer
407	Mirna Sangra
408	Min Cromly
409	Vivyan Swithenby
410	Erin Spawell
411	Billy Peiser
412	Lucias Rosenstengel
413	Alix Laffling
414	Vanya Lambotin
415	Ginger Moen
416	Fey Dohrmann
417	Fidelity Galiero
418	Kyle Buxcey
419	Janetta Shaves
420	Fanchette Caig
421	Norean Killich
422	Aldrich Iiannoni
423	Virgie Klugman
424	Stacia Bagnall
425	Finlay La Vigne
426	Stearn Kybird
427	Ferdy Lacelett
428	Mark Lanchberry
429	Izzy Condell
430	Whitney Erangey
431	Jeffie Gillhespy
432	June Boyn
433	Joy Rousel
434	Everett O'Sherin
435	Hagan Cosby
436	Milty Lemery
437	Alisander Bracer
438	Kermit Polly
439	Humphrey Jancey
440	Duff Barttrum
441	Roderigo Floyde
442	Barbaraanne Sokill
443	Eilis Dik
444	Ryon Berrycloth
445	Shell Franceschelli
446	Marc Tregona
447	Lynnette Denham
448	Jorgan Pearch
449	Hi Whiteway
450	Steffane Trump
451	Micki MacConnell
452	Jeanna Bradburne
453	Harry Parcell
454	Adelaida Bethel
455	Harris Bowland
456	Jaime Shimwall
457	Ali Thebeaud
458	Meghann Rodders
459	Jesse Sare
460	Salli Benoi
461	Tony Inett
462	Susann Fain
463	Patience Fairbridge
464	Cherilynn Weems
465	Celestina Bothie
466	Kelcie Wells
467	Jerrie Levi
468	Winny MacTrusty
469	Victor Sturr
470	Fitzgerald Wilford
471	Fremont Warrior
472	Freida Rojas
473	Ethel Nortunen
474	Emmerich Sincock
475	Carlita Winspur
476	Harbert Benning
477	Korrie Oldford
478	Dori Murphy
479	Aloysius Lanktree
480	Halimeda Degli Abbati
481	Deidre Martinek
482	Tab Gadman
483	Stafford Lygoe
484	Vinnie Schoffler
485	Othello Rockwell
486	Karoly Conyers
487	Golda Labat
488	Alidia Ashtonhurst
489	Trevar Fleote
490	Harmony Trusler
491	Clareta Crosson
492	Mattie Dolphin
493	Dwain Pirolini
494	Mickie Keyse
495	Clotilda Junkin
496	Anstice Molesworth
497	Dani Arend
498	Christoffer Dummer
499	Armstrong Whatman
500	Faina Orchard
501	Ketti Keer
502	Selig Soitoux
503	Marcelline Adam
504	Helyn Napoleone
505	Ernesta Laurisch
506	Chandal McCaig
507	Emmi Hayter
508	Melonie Attwater
509	Clareta Jacqueme
510	Sigismond Paulisch
511	Baldwin Rickson
512	Ula Larciere
513	Julee Titcumb
514	Maryann Hildrew
515	Sal Scouse
516	Sigismundo Cleave
517	Teresita Rigby
518	Stewart Pfeffer
519	Avrit Mundell
520	Deirdre Carus
521	Dylan Houlahan
522	Gaelan Mudie
523	Lorena Ludy
524	Zonda Clementson
525	Fionnula Pietrowicz
526	Gerhard Antushev
527	Martie Aloshechkin
528	Mariana Andreichik
529	Ed Copyn
530	Martita Osment
531	Ronni Patel
532	Aile Densham
533	Inigo Massimo
534	Carlene Gutsell
535	Pat Dewdney
536	Dyanne Fishwick
537	Shani Munns
538	Timothea De'Vere - Hunt
539	Shamus Broadbury
540	Krissy Petts
541	Eadie Cogdon
542	Elwood Messent
543	Aurore Cruise
544	Goddard Heddan
545	Ferdinanda Martinovic
546	Rodrique Jovovic
547	Ruddy Ballin
548	Chaddy Lambal
549	Skipton Ewdale
550	Dean Alyutin
551	Hyacinth Gutherson
552	Melesa Chapple
553	Bruce Abbatucci
554	Catrina Sivell
555	Sadie Scopham
556	Manuel Ramirez
557	Benn Kinzett
558	Gayle Wicklin
559	Edmon Giacoppo
560	Geri Timmes
561	Reid Sigars
562	Tris Stuck
563	Clem Cridlin
564	Feliks Freiberg
565	Dorolice Greenslade
566	Audrye Gillett
567	Gretal Rowatt
568	Fiann Siggin
569	Meriel Cubuzzi
570	Francine Crusham
571	Westbrook Roffe
572	Amara Masden
573	Luciano Carabine
574	Gare Alecock
575	Julius Finlayson
576	Myranda Croisier
577	Hadrian Heeney
578	Clarke Tantum
579	Belia Van Oort
580	Alden Dye
581	Ericka Niess
582	Corny Gurys
583	Vlad Gier
584	Luigi Cregg
585	Cyb Sholem
586	Hedi Pasquale
587	Kerry Cowle
588	Asia Arrighi
589	Devlen Keeri
590	Elroy Sandcraft
591	Renato Letessier
592	Tibold Offen
593	Shawn Hawarden
594	Eugine Lorentzen
595	Ty Robun
596	Alika Filtness
597	Cybil Bottleson
598	Devlin Brogan
599	Cassey Cayle
600	Ginelle Androli
\.


--
-- Data for Name: clients_factures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients_factures (id, codeclient, codefact, montant, date) FROM stdin;
1	405	371	816	2021-02-26
2	105	385	915	2021-12-28
3	561	244	773	2021-03-13
4	536	21	892	2021-02-25
5	423	159	898	2021-08-07
6	160	360	803	2021-04-28
7	132	203	840	2022-01-08
8	501	32	508	2021-12-04
9	253	56	993	2021-11-13
10	560	17	798	2021-09-13
11	263	220	954	2021-12-28
12	120	381	720	2021-12-30
13	394	122	500	2021-12-18
14	223	152	697	2022-01-12
15	56	149	895	2021-12-04
16	60	273	654	2022-01-19
17	224	12	789	2021-12-22
18	9	80	918	2021-06-17
19	418	32	579	2021-07-25
20	592	119	827	2021-05-13
21	167	317	727	2021-09-22
22	333	179	593	2021-11-24
23	592	339	757	2021-10-07
24	150	347	795	2021-05-27
25	517	226	503	2021-11-16
26	112	83	671	2021-06-17
27	63	218	848	2021-10-06
28	18	75	600	2021-12-20
29	63	27	517	2021-04-12
30	406	356	602	2021-12-26
31	334	288	912	2022-01-27
32	50	219	507	2021-08-01
33	392	142	906	2021-05-24
34	401	23	787	2022-02-01
35	63	54	663	2021-12-28
36	201	354	963	2021-09-23
37	57	349	655	2021-04-23
38	488	305	819	2021-06-27
39	124	376	678	2021-05-24
40	142	39	722	2021-11-18
41	181	193	778	2021-02-22
42	540	391	953	2021-12-20
43	36	288	775	2021-03-09
44	241	22	967	2021-04-03
45	464	320	870	2021-06-05
46	211	312	903	2021-10-27
47	179	142	776	2022-01-21
48	219	208	989	2021-11-29
49	577	250	641	2021-04-15
50	563	375	565	2021-07-30
51	95	246	892	2021-07-12
52	103	338	828	2021-07-02
53	102	16	661	2021-05-05
54	313	47	719	2022-01-24
55	308	275	577	2021-10-07
56	576	291	837	2022-01-22
57	375	22	522	2021-06-09
58	241	261	997	2021-03-01
59	315	357	543	2021-10-23
60	22	382	960	2021-05-11
61	234	320	880	2021-05-06
62	597	366	693	2021-12-15
63	488	86	855	2021-06-02
64	366	362	655	2021-07-01
65	513	39	679	2021-09-21
66	122	29	726	2021-05-08
67	326	350	955	2021-06-19
68	226	83	505	2021-07-07
69	186	189	645	2021-03-15
70	344	375	873	2022-01-21
71	124	255	897	2021-03-23
72	529	203	890	2021-09-10
73	370	25	983	2021-09-27
74	327	312	641	2021-06-02
75	132	25	671	2021-04-29
76	342	186	997	2021-05-11
77	2	326	743	2022-02-05
78	241	136	553	2021-02-26
79	256	371	834	2021-07-08
80	113	385	985	2021-08-28
81	344	318	800	2021-04-05
82	468	130	743	2021-11-12
83	261	200	926	2021-10-25
84	484	249	731	2021-07-06
85	587	7	567	2021-05-27
86	313	67	983	2021-11-01
87	9	101	833	2022-01-06
88	419	227	695	2021-09-07
89	538	319	529	2021-12-15
90	348	268	852	2021-12-02
91	314	312	678	2021-11-20
92	535	3	730	2021-09-18
93	336	232	718	2021-06-06
94	152	241	728	2021-10-19
95	490	28	569	2021-08-28
96	522	337	858	2021-12-15
97	31	94	591	2022-01-15
98	358	227	863	2021-09-05
99	332	146	703	2021-10-07
100	325	175	620	2021-03-15
101	573	276	574	2022-01-21
102	321	256	928	2021-09-09
103	280	217	686	2021-07-04
104	367	250	886	2021-07-22
105	437	163	640	2021-07-29
106	566	203	867	2021-03-27
107	133	211	674	2021-11-22
108	136	390	607	2021-05-27
109	360	275	842	2021-10-16
110	328	224	714	2021-09-05
111	439	263	817	2021-11-12
112	243	400	662	2021-12-15
113	94	174	864	2021-03-18
114	572	42	707	2021-12-12
115	532	204	762	2021-05-11
116	392	67	578	2022-01-07
117	212	296	539	2021-02-15
118	529	321	608	2021-08-03
119	434	171	640	2021-09-12
120	289	215	995	2021-03-04
121	208	294	807	2021-07-19
122	375	155	658	2021-11-21
123	74	108	744	2021-07-04
124	146	265	666	2021-09-17
125	250	180	632	2021-12-13
126	259	110	970	2021-07-12
127	353	168	767	2021-12-01
128	332	27	807	2021-04-19
129	97	279	764	2021-10-19
130	326	138	718	2021-08-08
131	135	119	821	2021-03-20
132	213	341	901	2021-12-21
133	276	138	813	2021-05-04
134	484	41	587	2021-08-31
135	551	344	785	2021-11-23
136	446	346	742	2022-01-08
137	420	167	623	2021-04-06
138	148	113	591	2021-05-27
139	258	299	900	2021-10-21
140	129	387	527	2021-12-05
141	511	179	972	2021-06-24
142	195	96	745	2021-11-14
143	29	46	509	2021-04-08
144	122	206	619	2021-05-19
145	540	354	770	2021-05-15
146	311	377	852	2021-09-02
147	407	138	615	2021-06-09
148	440	342	857	2021-08-25
149	389	145	601	2021-10-01
150	531	335	899	2021-09-15
151	11	380	980	2021-09-04
152	52	139	854	2021-06-16
153	542	278	773	2021-09-09
154	129	165	746	2021-03-27
155	433	303	858	2021-10-27
156	186	266	986	2021-02-09
157	287	262	995	2021-11-04
158	596	292	629	2021-05-21
159	170	155	755	2021-08-05
160	393	248	581	2021-08-18
161	104	247	794	2021-11-24
162	213	266	655	2021-04-30
163	203	41	634	2021-12-30
164	145	259	596	2021-08-21
165	592	301	929	2021-10-28
166	500	49	634	2022-01-16
167	356	92	948	2021-05-09
168	46	379	895	2021-04-21
169	10	51	518	2021-05-15
170	84	306	695	2021-07-15
171	457	393	969	2022-01-16
172	375	43	575	2021-12-03
173	292	190	506	2021-09-06
174	300	192	572	2021-12-25
175	429	270	502	2021-12-19
176	190	93	850	2022-01-25
177	259	397	513	2021-09-06
178	573	172	792	2021-12-24
179	471	100	975	2021-12-14
180	94	135	808	2021-04-16
181	410	110	866	2021-07-09
182	240	69	678	2021-10-12
183	524	139	910	2021-02-18
184	291	350	952	2021-02-10
185	497	133	851	2021-06-06
186	462	49	768	2021-09-09
187	186	113	769	2022-01-31
188	131	172	943	2021-08-12
189	5	77	516	2021-11-27
190	266	181	802	2021-03-12
191	349	249	617	2021-07-26
192	123	377	748	2022-02-07
193	92	302	955	2021-09-03
194	240	365	595	2021-04-07
195	127	25	878	2021-02-10
196	158	104	927	2021-10-07
197	69	245	769	2021-05-14
198	65	239	927	2021-05-07
199	548	365	970	2022-01-22
200	320	82	710	2021-03-12
201	418	269	726	2021-05-21
202	33	260	754	2021-12-05
203	293	394	845	2021-10-02
204	311	235	613	2021-07-21
205	433	166	640	2021-11-26
206	585	237	550	2021-12-12
207	169	103	896	2021-08-16
208	62	281	832	2021-10-04
209	398	278	764	2021-07-27
210	40	353	643	2021-04-12
211	47	68	637	2021-12-05
212	112	112	545	2021-04-12
213	86	358	948	2021-03-27
214	587	32	602	2021-08-31
215	63	220	537	2021-09-07
216	1	187	587	2021-11-23
217	183	138	768	2021-06-04
218	580	144	903	2021-10-25
219	572	173	773	2021-10-25
220	209	200	970	2021-05-11
221	586	76	806	2021-03-05
222	333	79	699	2021-02-23
223	272	332	748	2021-05-24
224	501	79	512	2021-03-04
225	251	224	619	2022-01-15
226	505	148	930	2021-09-04
227	202	323	531	2021-12-05
228	503	131	966	2021-04-08
229	267	23	859	2021-04-30
230	530	45	748	2021-05-04
231	462	72	592	2021-10-20
232	350	35	567	2022-01-11
233	322	40	631	2021-05-08
234	520	119	769	2021-05-09
235	577	317	523	2021-11-16
236	327	222	514	2022-01-12
237	45	168	931	2021-06-23
238	325	375	637	2021-10-24
239	76	362	503	2021-05-10
240	542	188	940	2021-03-06
241	37	6	672	2021-12-28
242	335	144	709	2021-04-26
243	286	371	809	2021-02-23
244	153	227	673	2022-01-03
245	466	340	524	2022-01-24
246	22	29	995	2022-01-18
247	574	110	690	2022-01-31
248	161	284	595	2021-08-27
249	128	287	744	2021-04-16
250	83	157	516	2021-11-17
251	512	362	701	2021-07-24
252	67	90	787	2021-09-22
253	477	202	647	2021-05-10
254	484	232	783	2021-12-16
255	302	119	693	2021-11-02
256	41	65	782	2021-12-26
257	230	50	827	2021-06-02
258	331	272	645	2021-10-31
259	264	162	503	2021-04-23
260	164	380	739	2021-11-24
261	143	214	637	2021-04-08
262	211	228	741	2021-09-26
263	124	269	896	2021-09-20
264	380	169	948	2021-03-20
265	284	377	781	2021-04-16
266	269	154	544	2021-08-05
267	575	387	977	2021-09-20
268	260	369	898	2022-01-03
269	322	142	623	2021-11-01
270	547	280	926	2021-10-23
271	467	164	895	2021-07-09
272	28	203	552	2021-06-24
273	124	59	532	2021-09-03
274	264	391	878	2021-06-12
275	268	266	539	2021-07-18
276	383	26	896	2021-05-28
277	355	395	842	2021-08-03
278	411	228	579	2021-05-15
279	317	195	821	2021-12-26
280	70	147	567	2021-04-06
281	558	82	515	2021-10-04
282	106	247	982	2022-01-18
283	564	397	903	2021-04-08
284	87	124	521	2021-08-09
285	144	241	662	2021-12-16
286	472	48	742	2021-06-26
287	240	380	904	2021-02-13
288	561	267	839	2021-10-23
289	423	25	833	2022-01-18
290	57	172	913	2021-12-19
291	388	195	663	2021-10-25
292	538	355	662	2022-01-28
293	166	117	540	2021-08-29
294	297	243	980	2021-07-13
295	314	129	834	2021-08-23
296	298	291	521	2021-03-29
297	39	19	924	2021-09-09
298	513	396	610	2021-07-19
299	170	62	593	2021-04-15
300	181	256	860	2021-04-21
301	116	157	583	2021-11-02
302	26	257	789	2021-05-17
303	200	131	869	2022-01-30
304	149	301	886	2021-03-27
305	459	178	747	2022-01-24
306	521	24	849	2021-08-09
307	520	166	698	2021-11-16
308	488	139	956	2021-06-19
309	409	70	689	2021-10-02
310	500	357	837	2021-04-06
311	124	185	659	2021-04-26
312	112	381	996	2022-02-01
313	85	387	749	2021-12-24
314	390	62	539	2021-04-07
315	581	220	665	2021-03-26
316	161	139	896	2021-06-23
317	530	351	809	2021-07-31
318	386	319	748	2022-01-14
319	314	380	687	2022-02-02
320	555	132	812	2022-01-08
321	142	105	520	2021-05-17
322	563	272	696	2021-07-02
323	450	211	898	2021-09-22
324	268	337	660	2021-10-01
325	440	181	776	2021-10-02
326	2	150	704	2021-11-16
327	167	226	625	2021-04-17
328	421	382	545	2022-01-04
329	126	176	760	2021-06-29
330	460	210	702	2021-09-22
331	356	303	781	2021-04-10
332	531	298	888	2021-08-02
333	265	277	621	2021-08-12
334	229	147	505	2021-04-20
335	12	331	803	2021-08-12
336	557	27	538	2021-12-11
337	208	384	799	2021-05-08
338	38	190	929	2022-01-06
339	42	59	999	2021-04-21
340	12	376	621	2021-05-05
341	104	16	511	2021-06-01
342	76	85	637	2021-07-09
343	216	7	986	2021-04-18
344	21	103	951	2021-03-27
345	182	327	745	2021-08-03
346	102	24	867	2021-08-30
347	557	62	589	2021-03-13
348	586	116	1000	2021-03-12
349	178	145	558	2021-04-09
350	389	241	526	2021-04-26
351	547	3	540	2021-12-12
352	550	118	785	2022-01-13
353	32	223	541	2021-10-26
354	2	6	916	2021-05-29
355	300	299	530	2021-07-23
356	437	352	816	2021-12-06
357	468	240	654	2021-12-15
358	6	6	835	2021-12-12
359	288	115	831	2021-06-23
360	242	178	560	2021-08-13
361	204	287	946	2021-02-18
362	323	41	912	2021-03-17
363	596	98	736	2022-01-25
364	37	12	871	2021-07-09
365	73	121	716	2021-03-27
366	467	88	701	2021-06-15
367	99	395	575	2021-03-29
368	80	152	530	2021-05-20
369	226	85	769	2021-10-07
370	346	374	758	2021-03-27
371	223	206	698	2021-11-12
372	522	131	713	2021-03-31
373	198	45	789	2021-03-18
374	70	127	725	2021-09-21
375	204	172	893	2021-03-15
376	283	47	527	2021-10-07
377	570	67	682	2021-09-15
378	312	376	856	2021-03-11
379	98	17	734	2021-06-18
380	19	383	786	2021-09-08
381	411	294	854	2021-08-08
382	412	167	893	2022-01-04
383	536	200	788	2021-12-04
384	41	251	885	2022-01-13
385	80	265	912	2021-08-29
386	590	272	849	2021-07-25
387	516	333	860	2021-07-04
388	543	114	658	2022-01-16
389	20	142	809	2021-06-28
390	22	278	542	2021-07-26
391	110	299	719	2021-09-15
392	469	289	892	2021-04-22
393	544	234	801	2021-11-06
394	534	172	736	2021-11-16
395	570	214	748	2021-07-24
396	187	243	782	2021-05-28
397	24	53	753	2021-12-25
398	133	156	760	2021-08-13
399	364	245	516	2021-02-13
400	457	391	862	2021-02-19
401	230	328	938	2021-10-23
402	308	342	519	2021-06-07
403	232	268	508	2021-12-20
404	392	171	555	2021-04-28
405	134	395	643	2021-10-28
406	237	138	998	2021-08-06
407	447	263	641	2022-01-14
408	268	242	592	2021-07-22
409	44	320	710	2021-07-06
410	291	185	530	2021-09-29
411	87	339	679	2021-06-24
412	296	400	887	2021-03-09
413	94	357	775	2021-03-08
414	575	287	610	2021-07-17
415	106	149	706	2021-11-23
416	438	186	645	2021-11-30
417	508	397	735	2021-09-11
418	462	323	501	2021-03-13
419	488	80	543	2021-12-17
420	152	249	507	2021-07-07
421	257	248	987	2021-04-27
422	449	19	628	2021-03-17
423	374	97	781	2021-02-26
424	345	261	871	2021-11-25
425	369	207	686	2021-02-16
426	334	387	883	2022-01-07
427	140	160	964	2021-05-23
428	540	343	892	2021-10-29
429	380	265	639	2022-01-05
430	395	257	719	2021-03-09
431	420	176	729	2021-05-26
432	564	325	829	2021-07-14
433	573	196	533	2021-07-02
434	477	393	835	2021-11-29
435	407	205	755	2021-03-31
436	66	213	778	2022-01-01
437	485	164	955	2021-11-02
438	404	274	942	2021-12-10
439	377	286	551	2021-04-08
440	338	50	891	2021-09-28
441	333	329	567	2021-08-26
442	191	81	821	2021-03-29
443	220	274	745	2021-11-14
444	451	282	839	2021-09-22
445	597	217	994	2021-12-09
446	493	254	865	2021-05-15
447	445	139	563	2021-12-26
448	584	225	816	2021-09-15
449	133	100	629	2021-06-27
450	156	33	971	2021-12-02
451	475	149	635	2021-08-17
452	567	385	617	2022-01-27
453	578	152	811	2021-12-17
454	130	383	668	2021-07-14
455	169	367	970	2021-08-28
456	268	85	539	2021-09-03
457	265	161	729	2021-03-28
458	366	66	522	2021-02-23
459	266	333	809	2021-11-03
460	278	138	852	2021-08-01
461	148	60	594	2021-06-28
462	131	249	882	2021-03-05
463	165	138	606	2021-10-19
464	322	88	801	2021-10-14
465	462	267	737	2021-05-10
466	184	362	754	2021-05-03
467	186	148	522	2021-09-06
468	37	382	695	2021-03-21
469	12	256	669	2021-06-10
470	366	338	847	2021-03-10
471	175	170	952	2021-03-27
472	437	236	797	2021-07-06
473	386	99	670	2021-08-31
474	208	281	967	2021-05-16
475	277	125	686	2021-10-12
476	98	265	636	2021-08-06
477	99	31	603	2021-08-22
478	129	149	503	2021-08-30
479	403	71	819	2021-10-27
480	288	46	861	2021-08-18
481	538	105	817	2021-11-09
482	310	381	958	2022-01-03
483	253	398	979	2021-11-08
484	475	276	730	2021-07-25
485	363	67	977	2021-06-25
486	16	36	718	2021-07-15
487	179	262	699	2021-03-04
488	66	49	706	2021-04-11
489	292	102	561	2021-08-13
490	228	39	949	2022-01-24
491	20	20	919	2021-04-05
492	184	382	520	2021-04-13
493	103	285	566	2021-12-10
494	276	73	696	2021-12-30
495	79	240	711	2021-07-15
496	289	2	566	2021-05-13
497	423	6	638	2021-10-26
498	70	67	679	2021-06-29
499	57	128	999	2021-08-19
500	560	382	713	2021-02-08
501	208	375	523	2021-07-10
502	176	182	520	2021-11-24
503	140	90	628	2021-10-23
504	350	121	923	2022-01-22
505	234	165	606	2022-01-24
506	61	100	860	2021-10-06
507	483	68	683	2021-10-07
508	386	259	842	2021-05-31
509	379	225	930	2022-01-21
510	85	201	817	2022-01-19
511	255	192	990	2021-12-30
512	62	322	942	2021-07-06
513	295	56	537	2021-11-19
514	333	315	775	2021-10-29
515	149	236	709	2022-01-04
516	166	59	536	2021-12-06
517	299	72	512	2021-12-01
518	303	239	569	2021-12-12
519	540	178	709	2021-05-12
520	42	14	731	2021-08-27
521	98	239	616	2021-12-03
522	557	91	913	2021-07-26
523	82	215	521	2021-10-12
524	113	327	745	2021-09-09
525	510	152	586	2021-07-13
526	164	81	884	2021-08-08
527	169	94	582	2021-05-17
528	113	108	917	2022-01-07
529	20	4	562	2021-12-13
530	88	318	930	2021-02-15
531	94	124	850	2021-05-06
532	413	207	618	2022-01-16
533	437	300	585	2021-03-13
534	462	44	739	2021-04-20
535	118	309	1000	2021-02-26
536	31	284	895	2021-03-17
537	407	397	630	2021-12-02
538	398	118	622	2021-09-22
539	493	108	577	2021-06-12
540	120	128	913	2021-10-26
541	68	250	574	2021-10-08
542	326	326	626	2021-02-17
543	397	59	726	2021-12-27
544	40	338	679	2021-10-18
545	179	206	619	2021-03-01
546	245	399	790	2022-01-05
547	448	102	621	2021-09-30
548	548	243	612	2021-07-15
549	171	157	796	2021-07-21
550	323	381	501	2021-05-31
551	319	194	952	2022-01-16
552	69	13	864	2021-12-11
553	518	105	885	2022-01-12
554	231	61	930	2021-02-19
555	508	114	957	2021-03-14
556	271	187	879	2021-09-16
557	95	267	607	2021-02-23
558	220	36	879	2021-03-04
559	270	279	563	2022-01-18
560	372	60	855	2021-05-09
561	412	368	564	2021-10-12
562	382	203	703	2021-05-07
563	577	265	726	2021-09-13
564	179	220	844	2021-02-22
565	207	48	699	2021-06-21
566	110	363	848	2021-04-20
567	79	272	943	2021-08-03
568	581	208	700	2021-07-11
569	259	315	998	2021-05-26
570	264	228	888	2021-12-29
571	28	23	875	2021-10-26
572	265	72	607	2021-05-28
573	262	307	733	2021-05-09
574	520	42	873	2021-03-13
575	471	12	534	2021-10-07
576	483	373	865	2021-09-23
577	525	386	552	2021-12-10
578	543	262	616	2021-03-09
579	232	186	572	2021-09-17
580	477	385	701	2021-12-12
581	118	32	913	2021-11-15
582	470	258	845	2021-04-04
583	148	283	685	2021-07-10
584	57	182	723	2021-05-13
585	332	376	888	2021-07-31
586	414	333	946	2021-10-14
587	381	212	815	2021-08-04
588	106	144	705	2021-05-21
589	504	279	904	2021-05-24
590	88	259	770	2021-06-02
591	64	30	639	2021-11-28
592	232	4	619	2021-04-06
593	158	158	578	2021-05-25
594	481	85	678	2021-08-17
595	234	377	984	2021-04-17
596	440	6	703	2021-06-20
597	202	113	507	2021-04-13
598	226	57	677	2021-10-16
599	395	299	593	2021-07-26
600	313	335	536	2021-02-26
\.


--
-- Data for Name: factures; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factures (codefact, date) FROM stdin;
1	2021-11-27
2	2021-11-24
3	2021-12-31
4	2021-10-07
5	2022-01-16
6	2021-07-12
7	2021-02-16
8	2021-02-28
9	2021-03-09
10	2021-12-07
11	2021-07-13
12	2022-01-22
13	2021-10-14
14	2021-09-26
15	2021-09-02
16	2021-05-03
17	2021-02-22
18	2022-01-12
19	2021-02-27
20	2021-03-20
21	2021-06-27
22	2021-07-24
23	2021-09-06
24	2022-01-24
25	2022-01-18
26	2021-06-19
27	2021-09-03
28	2021-05-28
29	2022-01-24
30	2022-01-16
31	2021-05-09
32	2022-01-12
33	2021-08-05
34	2022-01-20
35	2021-08-14
36	2022-01-31
37	2022-02-06
38	2021-12-10
39	2022-01-06
40	2021-03-25
41	2022-01-31
42	2021-10-31
43	2021-07-20
44	2021-06-11
45	2021-12-05
46	2021-10-10
47	2022-01-14
48	2021-11-14
49	2021-10-29
50	2021-06-19
51	2021-05-19
52	2021-10-02
53	2021-08-03
54	2021-04-21
55	2021-11-09
56	2021-05-05
57	2021-11-16
58	2021-12-07
59	2021-10-17
60	2021-03-21
61	2021-03-04
62	2021-10-23
63	2021-08-21
64	2021-05-11
65	2022-02-06
66	2021-10-11
67	2021-05-21
68	2021-09-26
69	2021-05-02
70	2021-06-26
71	2022-01-02
72	2021-08-01
73	2021-02-11
74	2022-01-26
75	2021-05-09
76	2021-06-24
77	2021-03-17
78	2021-05-12
79	2022-01-12
80	2021-10-18
81	2021-10-16
82	2021-05-03
83	2021-10-07
84	2021-06-24
85	2021-12-04
86	2021-12-03
87	2021-05-08
88	2021-10-13
89	2021-03-08
90	2021-11-03
91	2021-03-11
92	2021-11-17
93	2021-04-22
94	2021-03-21
95	2021-07-22
96	2021-12-04
97	2021-08-05
98	2021-04-15
99	2021-03-28
100	2021-06-30
101	2021-07-28
102	2021-10-14
103	2021-07-25
104	2021-06-30
105	2021-12-11
106	2021-03-30
107	2021-06-05
108	2021-03-11
109	2021-11-26
110	2021-09-14
111	2021-08-10
112	2021-09-27
113	2021-12-15
114	2021-11-01
115	2021-03-03
116	2021-05-02
117	2021-08-28
118	2021-09-19
119	2021-03-29
120	2021-02-17
121	2021-11-02
122	2021-12-14
123	2021-09-17
124	2021-02-21
125	2022-01-24
126	2021-08-17
127	2021-03-25
128	2022-02-04
129	2021-08-28
130	2021-11-19
131	2021-07-02
132	2021-06-29
133	2021-05-13
134	2021-07-09
135	2021-11-25
136	2021-07-06
137	2021-06-11
138	2021-02-15
139	2021-06-16
140	2021-03-10
141	2021-09-18
142	2021-05-16
143	2021-11-11
144	2021-10-18
145	2021-05-06
146	2021-07-19
147	2021-06-14
148	2021-05-07
149	2021-06-17
150	2022-01-03
151	2021-04-05
152	2021-08-23
153	2021-07-12
154	2021-10-06
155	2021-02-19
156	2021-03-02
157	2021-11-03
158	2022-01-06
159	2021-04-02
160	2021-09-24
161	2021-05-01
162	2021-08-05
163	2021-11-20
164	2022-01-11
165	2021-07-30
166	2021-04-09
167	2021-10-29
168	2021-10-24
169	2021-09-12
170	2021-05-21
171	2021-03-11
172	2022-02-01
173	2022-01-22
174	2021-04-23
175	2021-06-30
176	2021-06-03
177	2021-04-27
178	2021-11-10
179	2021-05-25
180	2021-07-12
181	2021-12-07
182	2021-10-30
183	2021-09-09
184	2021-02-13
185	2021-09-10
186	2022-01-15
187	2021-09-26
188	2021-04-13
189	2021-06-01
190	2021-05-11
191	2021-05-07
192	2021-07-19
193	2021-11-21
194	2021-10-06
195	2021-05-26
196	2021-03-26
197	2021-12-18
198	2021-06-14
199	2021-05-10
200	2022-01-12
201	2021-08-10
202	2021-09-05
203	2021-06-21
204	2021-04-10
205	2021-09-07
206	2021-03-18
207	2022-01-31
208	2021-08-17
209	2021-04-14
210	2021-03-16
211	2021-03-14
212	2021-12-16
213	2021-09-14
214	2021-04-30
215	2021-07-27
216	2021-12-30
217	2022-01-26
218	2021-08-03
219	2022-01-13
220	2021-08-15
221	2021-04-21
222	2021-07-21
223	2021-06-29
224	2021-09-19
225	2022-01-16
226	2021-03-11
227	2022-01-24
228	2021-07-06
229	2021-05-02
230	2022-01-13
231	2021-06-11
232	2021-02-27
233	2021-09-05
234	2021-04-10
235	2021-09-22
236	2021-10-04
237	2021-04-01
238	2021-08-25
239	2021-03-01
240	2021-04-14
241	2022-01-10
242	2021-10-30
243	2021-07-08
244	2021-04-19
245	2021-04-10
246	2021-12-03
247	2021-05-15
248	2021-07-31
249	2021-10-14
250	2021-11-04
251	2021-05-01
252	2021-11-17
253	2022-01-27
254	2021-12-12
255	2021-06-28
256	2022-01-08
257	2021-07-09
258	2022-01-11
259	2021-12-15
260	2021-04-09
261	2021-12-13
262	2021-05-01
263	2021-06-11
264	2022-01-03
265	2021-06-17
266	2021-03-05
267	2021-06-16
268	2021-10-07
269	2022-01-29
270	2021-03-03
271	2021-05-08
272	2021-02-21
273	2021-11-12
274	2021-03-26
275	2021-09-20
276	2021-03-28
277	2021-11-23
278	2021-11-27
279	2021-03-17
280	2021-10-23
281	2021-05-18
282	2021-05-10
283	2022-01-11
284	2021-10-12
285	2021-11-14
286	2021-02-20
287	2022-01-05
288	2021-09-06
289	2021-12-16
290	2021-02-09
291	2021-06-13
292	2021-10-07
293	2021-02-13
294	2021-05-01
295	2021-04-23
296	2021-03-07
297	2021-08-10
298	2021-07-04
299	2021-10-25
300	2021-08-16
301	2021-10-17
302	2021-12-22
303	2021-12-18
304	2021-03-23
305	2021-11-20
306	2021-04-09
307	2021-12-09
308	2021-05-28
309	2021-10-28
310	2021-10-25
311	2021-06-05
312	2021-10-27
313	2021-12-26
314	2021-03-24
315	2021-09-04
316	2021-02-14
317	2021-06-08
318	2021-11-22
319	2022-01-10
320	2021-02-19
321	2021-03-13
322	2021-09-16
323	2021-07-14
324	2021-03-03
325	2021-08-01
326	2021-03-03
327	2021-02-28
328	2021-05-02
329	2022-01-20
330	2021-07-10
331	2021-08-02
332	2021-10-03
333	2021-03-30
334	2021-11-16
335	2021-03-27
336	2022-02-05
337	2021-07-16
338	2021-03-03
339	2021-10-10
340	2021-11-05
341	2021-08-18
342	2021-11-15
343	2021-02-10
344	2021-05-30
345	2021-12-06
346	2021-06-09
347	2021-06-07
348	2021-07-28
349	2021-06-26
350	2021-12-27
351	2021-12-19
352	2021-09-02
353	2021-06-12
354	2021-08-11
355	2021-10-08
356	2021-04-04
357	2021-10-06
358	2021-07-02
359	2021-05-20
360	2021-02-14
361	2021-07-26
362	2021-11-22
363	2021-03-20
364	2021-11-01
365	2021-11-28
366	2022-01-12
367	2021-07-12
368	2021-08-27
369	2021-11-13
370	2021-07-23
371	2021-10-08
372	2021-04-05
373	2021-04-14
374	2021-05-01
375	2021-07-01
376	2021-02-16
377	2021-11-19
378	2021-12-25
379	2022-01-01
380	2022-01-04
381	2021-03-06
382	2021-07-15
383	2022-02-02
384	2021-08-03
385	2021-12-12
386	2021-06-21
387	2021-05-15
388	2021-09-01
389	2021-12-30
390	2021-03-25
391	2021-04-25
392	2021-02-14
393	2021-08-25
394	2021-09-06
395	2021-05-31
396	2021-04-24
397	2021-05-07
398	2021-10-25
399	2021-06-28
400	2021-09-08
\.


--
-- Data for Name: factures_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factures_articles (id, codefact, codeart, quantite) FROM stdin;
1	289	246	20
2	155	329	63
3	74	133	55
4	221	171	80
5	61	351	60
6	386	111	20
7	120	207	83
8	38	260	6
9	73	304	37
10	294	340	26
11	398	307	34
12	333	223	27
13	83	91	48
14	281	73	38
15	181	288	80
16	12	9	75
17	189	322	40
18	147	304	65
19	227	66	27
20	317	215	63
21	176	130	73
22	193	400	80
23	273	175	17
24	371	55	65
25	385	254	61
26	110	358	65
27	30	323	19
28	278	7	8
29	349	370	48
30	275	236	46
31	335	7	46
32	168	11	12
33	191	305	55
34	366	186	51
35	30	257	62
36	244	37	70
37	112	323	55
38	67	235	33
39	328	190	90
40	353	41	31
41	373	252	37
42	298	266	76
43	121	302	12
44	229	380	54
45	163	152	99
46	137	374	98
47	153	88	62
48	54	132	5
49	355	336	99
50	260	374	13
51	311	93	30
52	232	206	22
53	133	229	58
54	12	206	62
55	230	77	89
56	371	170	53
57	10	102	26
58	336	130	10
59	248	371	73
60	254	174	45
61	11	213	15
62	255	39	19
63	148	8	35
64	183	237	93
65	127	43	28
66	233	93	90
67	394	109	54
68	231	258	34
69	282	384	67
70	63	30	47
71	19	352	37
72	237	25	75
73	379	181	45
74	67	216	42
75	364	1	65
76	57	118	26
77	214	344	21
78	107	288	35
79	138	189	48
80	292	321	44
81	373	204	75
82	236	22	79
83	86	119	37
84	269	291	59
85	190	357	60
86	391	214	8
87	216	334	28
88	35	252	82
89	393	18	53
90	223	172	79
91	234	151	94
92	163	334	20
93	373	297	14
94	230	247	46
95	236	311	71
96	227	69	93
97	88	336	13
98	190	196	17
99	43	235	15
100	341	347	12
101	72	331	16
102	39	173	41
103	121	343	17
104	220	43	100
105	178	169	50
106	280	45	60
107	287	171	77
108	265	198	26
109	142	85	38
110	178	310	48
111	257	400	68
112	117	153	97
113	153	317	46
114	118	363	44
115	78	255	5
116	379	345	53
117	375	96	28
118	158	381	80
119	23	240	28
120	135	248	42
121	285	305	47
122	211	183	27
123	330	241	70
124	47	250	57
125	275	118	51
126	244	67	36
127	252	33	50
128	107	392	54
129	52	227	75
130	137	94	60
131	346	200	61
132	65	172	57
133	23	79	41
134	391	63	13
135	48	381	85
136	328	102	31
137	330	262	74
138	70	386	77
139	119	297	96
140	259	149	57
141	244	168	25
142	33	262	29
143	113	50	88
144	36	400	33
145	68	237	52
146	261	31	86
147	359	183	52
148	367	187	19
149	255	365	11
150	73	282	30
151	309	394	97
152	184	51	26
153	100	10	55
154	345	233	25
155	18	28	86
156	149	148	74
157	277	203	13
158	8	183	27
159	181	210	96
160	74	379	71
161	353	383	83
162	266	153	95
163	300	250	18
164	127	301	20
165	322	72	70
166	131	332	46
167	179	235	68
168	26	299	19
169	349	74	93
170	225	65	38
171	305	269	34
172	50	20	81
173	51	54	54
174	316	196	9
175	338	246	40
176	164	53	58
177	286	158	40
178	48	197	59
179	58	361	38
180	97	262	25
181	136	253	47
182	297	116	66
183	144	278	13
184	282	110	41
185	352	108	42
186	240	330	95
187	47	246	9
188	381	323	5
189	102	53	14
190	50	335	17
191	263	308	15
192	292	7	18
193	106	96	59
194	172	378	89
195	340	374	85
196	20	296	52
197	39	27	82
198	331	26	61
199	140	329	75
200	149	218	26
201	33	41	83
202	331	148	45
203	152	205	76
204	313	89	5
205	273	61	30
206	75	113	38
207	176	178	35
208	377	29	42
209	34	212	43
210	78	247	22
211	382	38	44
212	112	237	53
213	374	120	73
214	156	262	58
215	376	356	98
216	271	15	80
217	169	209	48
218	106	335	17
219	67	265	22
220	173	267	38
221	122	40	76
222	268	276	33
223	15	15	26
224	336	259	23
225	204	121	54
226	170	363	1
227	160	239	62
228	38	22	91
229	298	92	91
230	86	120	62
231	345	252	44
232	266	251	73
233	293	252	84
234	68	189	57
235	126	384	62
236	245	307	33
237	207	195	99
238	163	41	12
239	351	70	92
240	20	50	26
241	122	211	30
242	193	86	91
243	225	81	52
244	90	70	9
245	199	334	85
246	140	310	17
247	48	75	69
248	348	125	92
249	377	19	39
250	2	212	72
251	192	231	15
252	260	89	54
253	166	398	64
254	101	5	89
255	43	375	97
256	378	397	53
257	355	297	93
258	58	123	57
259	351	37	20
260	27	245	71
261	116	209	58
262	143	338	4
263	399	144	86
264	14	223	59
265	312	246	15
266	281	300	80
267	29	320	81
268	60	178	99
269	392	247	29
270	259	114	82
271	286	162	50
272	5	342	76
273	175	133	96
274	258	388	67
275	10	41	31
276	278	183	39
277	157	319	64
278	244	375	69
279	148	183	53
280	236	60	65
281	380	90	21
282	80	390	2
283	305	249	31
284	134	137	34
285	29	289	61
286	173	40	62
287	228	290	41
288	78	251	29
289	186	361	54
290	46	232	62
291	47	29	17
292	303	296	11
293	270	316	67
294	390	20	84
295	350	75	27
296	131	256	83
297	347	162	29
298	181	51	15
299	45	70	56
300	310	56	2
301	110	206	38
302	18	13	16
303	384	15	16
304	81	258	11
305	137	180	1
306	336	370	6
307	12	179	94
308	327	280	63
309	263	15	50
310	47	166	95
311	381	336	58
312	351	97	46
313	109	95	82
314	174	26	65
315	366	133	6
316	208	271	40
317	70	282	62
318	165	287	15
319	108	46	74
320	208	317	49
321	278	381	17
322	75	304	46
323	307	338	70
324	357	102	62
325	386	137	35
326	107	383	45
327	289	400	58
328	86	315	30
329	18	314	96
330	136	193	1
331	321	22	42
332	318	288	52
333	125	149	37
334	348	358	75
335	318	298	12
336	239	173	10
337	83	338	61
338	29	336	31
339	316	97	49
340	313	111	55
341	243	90	42
342	161	2	15
343	84	335	81
344	107	170	71
345	216	336	4
346	51	390	86
347	165	144	63
348	49	314	55
349	175	226	28
350	316	244	84
351	105	20	20
352	244	10	22
353	56	323	93
354	179	330	19
355	85	298	12
356	290	224	58
357	68	390	45
358	250	59	39
359	294	400	38
360	152	362	55
361	126	159	38
362	192	186	77
363	186	280	86
364	85	176	32
365	129	79	35
366	113	253	53
367	350	23	78
368	284	6	59
369	265	342	11
370	109	85	77
371	344	193	65
372	173	220	68
373	110	42	82
374	138	25	96
375	208	153	3
376	99	345	9
377	59	97	68
378	94	15	92
379	269	200	13
380	299	218	34
381	373	168	56
382	242	280	27
383	220	98	80
384	56	27	5
385	43	137	82
386	393	47	86
387	103	330	28
388	12	31	71
389	358	89	18
390	29	304	77
391	360	124	18
392	295	105	70
393	26	210	97
394	30	391	69
395	140	19	5
396	66	62	80
397	153	28	25
398	339	64	98
399	53	122	88
400	349	257	86
\.


--
-- Name: articles_codeart_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_codeart_seq', 1, false);


--
-- Name: clients_codeclient_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_codeclient_seq', 1, false);


--
-- Name: clients_factures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_factures_id_seq', 1, false);


--
-- Name: factures_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factures_articles_id_seq', 1, false);


--
-- Name: factures_codefact_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factures_codefact_seq', 1, false);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (codeart);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (codeclient);


--
-- Name: factures factures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factures
    ADD CONSTRAINT factures_pkey PRIMARY KEY (codefact);


--
-- Name: factures_articles codeart_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factures_articles
    ADD CONSTRAINT codeart_fk FOREIGN KEY (codeart) REFERENCES public.articles(codeart);


--
-- Name: clients_factures codeclient_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_factures
    ADD CONSTRAINT codeclient_fk FOREIGN KEY (codeclient) REFERENCES public.clients(codeclient);


--
-- Name: factures_articles codefact_fc_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factures_articles
    ADD CONSTRAINT codefact_fc_fk FOREIGN KEY (codefact) REFERENCES public.factures(codefact);


--
-- Name: clients_factures codefact_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_factures
    ADD CONSTRAINT codefact_fk FOREIGN KEY (codefact) REFERENCES public.factures(codefact);


--
-- PostgreSQL database dump complete
--

