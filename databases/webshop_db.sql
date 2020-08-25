-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Gegenereerd op: 25 aug 2020 om 18:46
-- Serverversie: 8.0.18
-- PHP-versie: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'I. Dark Angels'),
(2, '**Redacted**'),
(3, 'III. Emperors Children'),
(4, 'IV. Iron Warriors'),
(5, 'V. White Scars'),
(6, 'VI. Space Wolves'),
(7, 'VII. Imperial Fists'),
(8, 'VIII. Night Lords'),
(9, 'IX. Blood Angels'),
(10, 'X. Iron Hands'),
(11, '**Redacted**'),
(12, 'XII. World Eaters'),
(13, 'XIII. Ultramarines'),
(14, 'XIV. Death Guard'),
(15, 'XV. Thousand Sons'),
(16, 'XVI. Sons of Horus'),
(17, 'XVII. Word Bearers'),
(18, 'XVIII. Salamanders'),
(19, 'XIX. Raven Guard'),
(20, 'XX. Alpha Legion');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(1, 236, 'USA', '35365', 'Completed'),
(2, 236, 'USD', '35365', 'Completed'),
(55, 236, 'USD', '35365', 'Completed'),
(56, 236, 'USD', '35365', 'Completed'),
(57, 236, '35365', 'Completed', 'USA'),
(60, 236, '35365', 'Completed', 'USA'),
(61, 236, '35365', 'Completed', 'USD'),
(63, 236, '35365', 'Completed', 'USD'),
(64, 236, '35365', 'Completed', 'USD'),
(65, 24.99, '7A680830BA273284B', 'Completed', 'USD');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_author` text NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` decimal(5,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_author`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'Horus Rising', 'Dan Abnett', 16, '25.99', 50, 'Horus Rising, the series opener, starts in the early years of the 31st millennium, during the 203rd year of the Great Crusade. It describes the rise to power of Horus Lupercal, Primarch of the \"Luna Wolves\" Legion of Space Marines, and the most versatile and favoured \"son\" of the Emperor. The Emperor has recently appointed him Warmaster, overall commander of Imperial military forces, while also leaving him in charge of the rest of the Crusade; the Emperor meanwhile returns to Terra, where in relative isolation he undertakes a secret project to which not even Horus is privy. The focus and perspective of the novel centres on a Space Marine Captain, Garviel Loken, leader of the Luna Wolves\' 10th Company. He becomes a member of the Mournival, an informal advisory body to Horus, and participates in Crusade campaigns against anti-Imperial human populations and aliens, referred to in the series as \"xenos\". The story also hints at tensions in the nascent Imperium, exacerbated by the Emperor\'s absence and contentious actions and inactions – these are common themes in following books', 'LOREM', 'boek1.jpg'),
(3, 'Galaxy in Flames', 'Ben Counter', 16, '20.99', 50, 'Galaxy in Flames starts shortly after the end of False Gods. It outlines the corrupted Warmaster\'s descent into madness, which leads to the fomentation of his plot to betray the Imperium. Horus pursues his secret planning of the rebellion in earnest, seeking and finding allies among his disgruntled fellow Primarchs, their Legions, and the Imperium\'s other organisations and key personalities. The novel details the first open move of the Heresy, the \"Betrayal of Istvaan III\", wherein factions of four Astartes Legions who were deemed unconvertible by their traitor brethren are ambushed during a planetary invasion of the fictional Isstvan star system. The novel marks the first distinguishment of the \"Loyalists\" and \"Traitor\" factions within the Legions and other rebel forces, including the unmodified soldiers of the Imperial Army.', '', 'boek3.jpg'),
(4, 'The Flight of the Eisenstein', 'James Swallow', 14, '19.99', 30, 'The Flight of the Eisenstein follows the eponymous Eisenstein, a space frigate of the \"Death Guard\" 14th Legion of Space Marines. The story follows the ship\'s escape from the Betrayal of Istvaan III, crewed by surviving loyalists of the four Legions present at the battle and commanded by Battle‑Captain Nathaniel Garro of the Death Guard 7th Company and one of the few Commanders in the Traitor Legions that remain loyal to the Emperor  – followed by the perilous voyage the vessel must take across the galaxy in an effort to reach Terra and raise the alarm over the developing rebellion. Garro and the others on board the vessel face suspicion and incredulity from Imperial authorities; apart from the inconceivable news of Horus\' betrayal, the situation is complicated by the fact that many of the travellers on the Eisenstein now openly proclaim their belief in the Emperor\'s divinity, itself a heresy', '', 'boek4.jpg'),
(5, 'Fulgrim', 'Graham McNeill', 3, '29.99', 40, 'Fulgrim centers on the eponymous Primarch of the 3rd Legion, the \"Emperor\'s Children\". Characterised as flamboyant perfectionists, the novel tracks the descent of Fulgrim and his Legion into the service of Chaos roughly simultaneously with that of time Horus in (Book 2). Fulgrim is delivered a warning about Horus\' imminent betrayal and the disaster that may follow by the alien Eldar race, but he and his staff dismiss it. The Emperor\'s Children eventually become the \"Chosen\" of Slaanesh, one of the four Gods of Chaos, with which Fulgrim is slowly and unwittingly drawn into grotesque communion. Primarch Ferrus Manus and his \"Iron Hands\" Space Marines (the 10th Legion) also play a prominent role in the novel as Fulgrim attempts to lure them into betrayal, and several other Primarchs and Legions make appearances. Described in passing is the pivotal Battle of Isstvaan V, also known as the Dropsite Massacre, where several entirely Loyalist Legions are slaughtered in another Traitor ambush in the Isstvan star system. The battle fully reveals the scale and ferocity of the rebellion.', '', 'boek5.jpg'),
(6, 'Descent of Angels', 'Mitchel Scanlon', 1, '21.95', 40, 'Descent of Angels is a pre-Heresy story that concludes about 50 years before the start of that conflict. It introduces the \"Dark Angels\", first of the Space Marine Legions, and their Primarch Lion El\'Jonson. The story is mainly told from the viewpoint of Zahariel El\'Zurias, a native of the fictional planet Caliban. Caliban is an isolated, low-technology world that resembles a feudal medieval fantasy setting. Zahariel is introduced in the story as an Aspirant of the Order, an organisation of techno-barbarian knights. The first half of the novel is set on Caliban and covers the final battles of the Order under the leadership of Jonson, the future Primarch. The book\'s second half describes Caliban\'s unification with the Imperium of Man as well as the actions of the Dark Angels during the early years of the Great Crusade. In this part of the story, Zahariel, selected as a candidate Space Marine, is accepted as a Dark Angel Neophyte. A future schism within the Legion is intimated towards the end of the book.', '', 'boek6.jpg'),
(7, 'Legion', 'Dan Abnett', 20, '16.99', 50, 'Legion focuses on the \"Alpha Legion\", the 20th and last of the Space Marine Legions. Characterised in earlier publications as clandestine and inscrutable, the book constitutes a major development of the entire canon of the setting with the revelation that the Legion\'s Primarch is actually a pair of twins, Alpharius and Omegon. The book also features the Imperial Army, the regular unmodified human fighting force of the Imperium, covering several officers and their units. Lastly, the novel introduces a new organisation to the setting, the enigmatic and ancient Cabal  – an interspecies organisation opposed to Chaos. The human John Grammaticus is introduced as a prominent Cabal member. The story takes place over roughly a 6‑month period, about two years before the Heresy starts; it describes the events that eventually lead Alpharius and Omegon (publicly a single figure named Alpharius Omegon) to support Horus.', '', 'boek7.jpg'),
(8, 'Battle for the Abyss', 'Ben Counter', 17, '24.99', 30, 'Battle for the Abyss concerns the lead‑up to a Traitor invasion of Ultramar, a remote star system and the home base of the unshakeably-Loyalist 13th Legion, the \"Ultramarines\" (Book 19 and 24). Early in the Heresy, the Traitor Word Bearers Legion is tasked with organising and leading the invasion; they plan to use an immense, secretly commissioned warship, the Furious Abyss, to spearhead the surprise attack. The vessel, commanded by Fleet Captain Zadkiel, launches from shipyards near Jupiter around the time of the events on Isstvan III (Book 3), and sets course for Macragge, Ultramar\'s capital world. Leading the cast of Loyalist protagonists is Cestus, Fleet Commander and Captain of the 7th Company of the Ultramarines. They become aware of the powerful capital ship\'s true purpose, and engage in long pursuit; they will seek to prevent the Furious Abyss from participating in the invasion and from reaching Macragge.', '', 'boek8.jpg'),
(9, 'Mechanicum', 'Graham McNeill', 0, '23.99', 30, 'Mechanicum is the first book in the series not to focus on either the Primarchs or their Space Marines Legions. The novel centres on the eponymous \"Mechanicum\", a cult of machine-worshipping technologists based on the real-life planet Mars and which serves as the chief engineering authority in the nascent Imperium. The machinations of Horus and the Chaos-worshipping Traitors affects the Martian cult as much as every other Imperial organisation, leading to a civil war on Mars itself. Kelbor-Hal, Fabricator General of Mars and the technocracy\'s supreme leader, declares for Horus, and together they carry out a coup d\'état to eliminate Techpriest and Magos adherents of the Cult who are loyal to Terra and the Emperor. As the Mechanicum is the sole power responsible for all civil and military technology in the Imperium, the conflict has vast implications for whichever side of the broader intergalactic civil war receives Mars\' crucial support.', '', 'boek9.jpg'),
(10, 'Tales of Heresy', 'Nick Kyme and Lindsey Priestley', 0, '18.99', 40, 'Tales of Heresy is a collection of short stories introducing and expanding upon numerous threads within the greater happenings of the Heresy. Various stories centre on the Custodian Guard, the elite Praetorian Guard-esque retinue of the Emperor, and the Sisters of Silence, a classified Imperial organisation of anti-psychic warrior‑nuns originally introduced in Book 4. Most stories are concurrent with the Heresy, with some occurring in the years prior. It includes two stories that take place on Terra, one of which occurs long before the Heresy and adds to the background regarding the Imperial Truth; another entry in the compilation is a Primarch origin story, covering the contentious circumstances under which the gladiatorial Primarch Angron takes command of the 12th Space Marine Legion, which he renames from the \\\"Warhounds\\\" to the \\\"World Eaters\\\". The book contains seven stories by various authors;[18] several stories relate to full-length novels in the series.', '', 'boek10.jpg'),
(11, 'Fallen Angels', 'Mike Lee', 1, '15.99', 50, 'Fallen Angels continues the Dark Angels tale begun in Book 6, Descent of Angels. The novel starts around the time of Book 6\'s conclusion, about 50 years before the Heresy, but forwards to just about the time of the Heresy\'s beginning in the opening chapters. It tells two stories: one concerns the effort of Primarch Lion El\'Jonson and a small group of Dark Angels to deny a forge world (a planet devoted to manufacturing, especially of weapons) to Horus\' forces; the other is the story of Luther (Lion El\'Jonson\'s second), Zahariel El\'Zurias (by now a full Space Marine), and a Dark Angels contingent sent back to Caliban, the Dark Angels Legion home world. They get involved in the fight against a growing insurgency that seeks to free the planet from under the Imperium\'s thumb.', '', 'boek11.jpg'),
(12, 'A Thousand Sons', 'Graham McNeill', 15, '22.50', 40, 'A Thousand Sons is the story of Primarch Magnus and the \"Thousand Sons\" Space Marines, the 15th Legion; it mainly takes place before the Heresy begins. Following a reprimand by the Emperor for dabbling in sorcery, Magnus and his Legion secretly continue to study the forbidden subjects. Then, around the time of Horus\' corruption (Book 2), Magnus learns through sorcery of his brother\'s impending betrayal. He tries – again through sorcery – to warn the Emperor, believing that the gravity of the news justifies his disobedience. However, he overreaches with his powers and damages the vital and secret project the Emperor is undertaking (Book 1), endangering the safety of Terra itself in the process. The Emperor is enraged and orders Leman Russ, Primarch of the 6th Legion (the \"Space Wolves\"), to Prospero, the Thousand Sons Legion\'s in‑series home world. The Space Wolves, accompanied by other Imperial forces, are to bring Magnus and his Legion to Terra to account for themselves.', '', 'boek12.jpg'),
(13, 'Nemesis', 'James Swallow', 0, '24.99', 30, 'Nemesis is set about two years after the events on Isstvan V described in Book 5, Fulgrim. It is a look at the war behind the war, the covert operations undertaken by the opposing sides in order to influence the visible conflict. Specifically, it deals with a plan by a secret Imperial organisation, the Officio Assassinorum, to eliminate Horus; an \"Execution Force\" consisting of operatives from all of the Officio\'s disciplines, and led by top-rated sniper Eristede Kell, is tasked with the mission. There have been several previous unsuccessful attempts against Horus\' life, and this gives a high-ranking officer of the Traitor Word Bearers Legion the idea to field a nemesis weapon of his own: a highly specialised assassin, who is to be used in an audacious scheme to kill the Emperor.', '', 'boek13.jpg'),
(14, 'The First Heretic', 'Aaron Dembski-Bowden', 17, '17.50', 30, 'The First Heretic details the fall to Chaos of Primarch Lorgar and the 17th Space Marine Legion, the \"Word Bearers\". Decades before the start of the rebellion they become heretics relative to the Imperial Truth by introducing religious worship. This results in public and humiliating censure of Lorgar and the entire assembled Legion, by the Emperor himself. The despairing Lorgar is subsequently swayed by two of his most trusted lieutenants, who are in secret allegiance with Chaos; eventually both Primarch and Legion covertly embrace (and promote) the Primordial Truth, many years before Horus\' corruption. The story is largely told from the point of view of Argel Tal, a Captain of the Word Bearers, who becomes commander of a Chaos-possessed elite Legion unit. It spans several decades, starting 43 years before the events on Isstvan V (Book 5) and concluding around the time the Word Bearers are on their way to assault Calth (Book 19).', '', 'boek14.jpg'),
(15, 'Prospero Burns', 'Dan Abnett', 15, '15.99', 30, 'Prospero Burns is part of the story arc of Book 12, however it follows a different but related timeline. The story begins more than a century before the Space Wolves-led mission to Prospero, and the concurrent start of the Heresy. It is presented from the point of view of Kasper Hawser, formerly a noted Terran academic who becomes a Crusade Remembrancer, and then the Oral Historian or skjald of the 3rd Company of the Space Wolves Legion. On the surface it is his story; the important understory concerns the long-term machinations of Chaos, whose aim is the destruction of both Space Wolves and Thousand Sons. Chaos attempts to exploit the weaknesses of the Primarchs and their Legions in order to pit them against each other – the ultimate result is the confrontation on Prospero. While this confrontation is taking place, Horus\' previously covert rebellion becomes visible (Book 3). The novel also adds background to Horus\' fall and to the planning of the Heresy campaign by Chaos and its forces.', '', 'boek15.jpg'),
(16, 'Age of Darkness', 'Christian Dunn', 0, '17.50', 30, 'Age of Darkness is a compilation of nine short stories by various authors.[23] They take place during the seven‑year period between the Dropsite Massacre on Isstvan V (Book 5), and the conclusion of Horus\' campaign. The stories present various facets of the unfolding conflict, as suspicion, insecurity, and paranoia spread through the galaxy on the wake of the Warmaster\'s betrayal. Subjects include: a Primarch prepares for the end of the Imperium; a Traitor PSYOP topples an Imperial planet; an unusual diplomatic contest will decide which side will be chosen by a world on the fence; a non-combatant may be a rebel agent or a herald of unpalatable truths for the Imperium; a Loyalist Space Marine in a Traitor Legion holds his own against his erstwhile brothers. Several of the included stories are linked through continuity; some are also prequels or sequels to stories in other series books.', '', 'boek16.jpg'),
(17, 'The Outcast Dead', 'Graham McNeill', 0, '19.99', 40, 'The Outcast Dead is the first novel-length story in the series to take place almost entirely on Terra. It covers a relatively short period, starting several months before Magnus\' catastrophic psychic visit at the Imperial Palace (Book 12), and concluding several months after this event. The unauthorised visit is central to the story: apart from damaging the Emperor\'s top secret project (Book 1) and the planet\'s defense, it massively disrupts Terra\'s long-range communications infrastructure. The ensuing isolation and confusion cause indecision and delays for the Loyalist side. The story\'s main character is Kai Zulane, previously a gifted Imperial astropath attached to the Ultramarines Legion. He unwittingly becomes the keeper of a secret that could decide the victor in the developing galactic civil war. The secret has additional implications regarding the Heresy\'s conclusion and the future course of the Imperium of Man. \"The Outcast Dead\" are other protagonists: a small, disparate group of Space Marines suspected as traitors, with whom Zulane falls in during the second half of the book', '', 'boek17.jpg'),
(18, 'Deliverance Lost', 'Gav Thorpe', 0, '17.99', 0, 'Deliverance Lost is mainly concerned with the actions of Primarch Corvus Corax and his Space Marine Command, the 19th Legion or \"Raven Guard\", during the year following the Dropsite Massacre (Book 5). However, operatives and the Primarch of the Alpha Legion play a prominent role. The story starts about 3 months after the Dropsite Massacre, with the unexpected rescue of Corax and the remnants of his Legion (at less than 5% strength due to casualties in that battle). Arriving at Terra a few months after the events described in The Outcast Dead take place, Corax convinces the Emperor to impart to him the knowledge and material that may accelerate the rebuilding of his Legion. The second part of the novel describes the effort to reconstitute the Raven Guard, undertaken on Deliverance (its home world in Warhammer 40,000 fiction), and the pursuit of opposite objectives by the Alpha Legion. The novel features the reappearance of The Cabal (Book 7), and of other well-known characters; it also adds information about the developing strategies and subterfuge applied by the opposing sides, including reasons for Horus\' timetable and for the Emperor\'s actions during the initial stages of the Heresy.', '', 'boek18.jpg'),
(19, 'Know No Fear', 'Dan Abnett', 13, '20.50', 40, 'Know No Fear documents the rebels\' surprise assault on Calth, an ascendant Ultramar system world. It is planned and led by the Traitor Word Bearers Legion, now fully and openly committed to the spread of the Primordial Truth. The narrative starts close to where the timelines of Book 8 and Book 14 converge (in their respective conclusions), with the invasion force en route to, or near the planet. The rebel mission has aims beyond just delivering a crippling blow to the Ultramarines Legion and their home system; its objectives may affect the entire Heresy campaign. The story tracks the Calth assault from its opening covert phases, and the actions of several characters. Unaware of the developing rebellion and the Word Bearers\' true role and allegiance, Primarch Roboute Guilliman and his Ultramarines are unprepared for the underhand invasion: it is total, bloody war, with ritualistic undertones, scorched earth tactics, decisive use of technology, and the considerable involvement of Chaos; the inconceivable treachery and its implications forever change the Loyalists\' view of reality.[', '', 'boek19.jpg'),
(20, 'The Primarchs', 'Christian Dunn', 0, '19.99', 30, 'The Primarchs is a compilation of four novellas by different authors, each story starring one of the \"sons\" of the Emperor.[29] The novellas further develop these characters, who make multiple appearances in the series: following the Dropsite Massacre (Book 5), Fulgrim, perversely empowered by his own corruption, reveals his true nature and future plans to top officers of his compromised Legion; during a Great Crusade campaign against the enigmatic Eldar, Ferrus Manus, already beset by unsettling dreams, is subjected by alien sorcerers to stark, portentous visions and warnings about his future and role in the soon to be revealed Heresy; with Horus\' rebellion in full swing after the events of Isstvan V, a suspicious and isolated Lion El\'Jonson accepts the newly revealed realities of the Warp and decides on an independent course of action for the Dark Angels in the unfolding conflict; around the same time, and plotting a typically indecipherable course in the expanding war, the twinned Primarch of the Alpha Legion is involved in a unique counterintelligence operation that extends the Legion\'s customary deceptions inwards.', '', 'boek20.jpg'),
(21, 'Fear to Tread', 'James Swallow', 9, '0.00', 20, 'Fear to Tread describes an operation by the forces of Chaos that is supposed to turn Primarch Sanguinius and the 9th Space Marine Legion, the \\\\\\\"Blood Angels\\\\\\\", to their cause. To succeed, Chaos plans to take advantage of a genetic flaw in Sanguinius\\\\\\\' and the Legion\\\\\\\'s DNA. As the Heresy is getting under way, the outwardly still loyal Warmaster orders the entire 9th Legion and their unsuspecting Primarch to a remote star system. There they find themselves isolated and ambushed, fighting a new kind of war – against Chaos entities and daemons – designed to trigger the Legion\\\\\\\'s flaw. The plan almost succeeds; yet conflicting agendas among anti-Imperial protagonists, as well as the fortitude and unorthodox tactics of quick-to-adapt Blood Angels, narrowly result in Loyalist victory. In the meantime Horus\\\\\\\' rebellion erupts openly and the Loyalists suffer catastrophic losses in the Dropsite Massacre (Book 5). Sanguinius and his Legion, now fully aware of the great betrayal and the reality of Chaos, race to the defense of Terra and the Emperor while buffeted by unprecedented navigational difficulties; it is hinted that these are related to the action in the Ultramar system of Calth (Books 19 and 24).', '', 'boek21.jpg'),
(22, 'Shadows of Treachery', 'Christian Dunn and Nick Kyme', 8, '19.99', 30, 'Shadows of Treachery is a compilation that collects five short stories previously published in limited editions, art books, or other formats, and also contains two new novellas.[32] Most of the stories involve the 7th or 8th Space Marine Legions, respectively the Loyalist \"Imperial Fists\" and Traitor \"Night Lords\", and their Primarchs Rogal Dorn and Konrad Curze. Other Legions and Primarchs are also featured, while one short story takes place on Mars and illuminates an aspect of the Traitor Mechanicum\'s conspiracy. One of the novellas is mainly about an all-out close-quarters space battle, between a Loyalist Retribution Fleet sent to punish Horus following the events of Isstvan III (Book 3) and the Traitor fleet that ambushes it; the other new novella deals with the aftermath of another naval engagement in space that cripples the Night Lords Legion. The narratives of all stories fill gaps in the series or add further details about the Heresy and its actors; they cover periods that range from several decades before the conflict to around the time frame of Book 18 (one short story is a prequel to that novel).', 'This anthology contains the following stories: The Crimson Fist by John French, The Dark King by Graham McNeill, The Lightning Tower by Dan Abnett, The Kaban Project by Graham McNeill, Raven\'s Flight by Gav Thorpe, Death of a Silversmith by Graham McNeill and Prince of Crows by Aaron Dembski-Bowden.', 'boek22,jpg.jpg'),
(23, 'Angel Exterminatus', 'Graham McNeill', 10, '22.50', 30, 'Angel Exterminatus covers a Traitor operation in uncharted and dangerous galactic space, that may purportedly decide the war in favour of the rebels. The story provides further glimpses of disparate motivations and conflicting objectives among traitor factions as the Heresy campaign continues. It is taking place some time after the Dropsite Massacre (Book 5), shortly following the events described by two novellas (Books 20 and 22).[34] Featured are the 4th Legion of Space Marines, the \"Iron Warriors\", renowned siege masters of the Great Crusade, and their Primarch Perturabo. However the core plot is set in motion by Fulgrim and the Emperor\'s Children, who share the spotlight. The embittered Iron Warriors have aligned with Horus out of frustration with the ignominious and unheralded role assigned them by the Imperium; before the story begins, they lash out in unforgivable genocide. In the story, they are invited to the freelance operation (which is unknown to the Warmaster) by Fulgrim and his Legion, who have their own agenda. The operation\'s true goal is kept secret from Perturabo and his Space Marines, who come to realise that not all fellow rebels can be trusted. A side thread involves Fabius Bile, the chief medical officer of the Emperor\'s Children, and the Traitors\' top geneticist; he is on a no-holds-barred quest to exceed the Emperor\'s genetic achievements', '', 'boek23.jpg'),
(24, 'Betrayer', 'Aaron Dembski-Bowden', 12, '19.50', 42, 'Betrayer returns the series to the action in the Ultramar theatre; it starts around the time the events of Book 19 begin to unfold. Unlike that story, Betrayer is presented from the perspective of the rebels, in this case the World Eaters and Word Bearers Legions, and often through the particular viewpoint of Khârn, Captain of the 8th Company of the World Eaters and Equerry to Primarch Angron. In tenuous and fragile cooperation, the two very different Traitor Legions lay waste to worlds across Ultramar; it is a \"Shadow Crusade\" meticulously planned by Primarch Lorgar of the Word Bearers, who deploys Abyss-class spaceships. The campaign\'s strategic goal is the destruction or isolation of the powerful Ultramarines Legion, its home star system, and the system\'s considerable resources; removing Ultramar as a factor in the war is one of Horus\' primary objectives. The scheming Primarch of the Word Bearers orchestrates genocide in unprecedented scale, as a way to summon the powers of Chaos. With their help, he hopes to generate the so-called Ruinstorm, an immense interdimensional disturbance that will create an impenetrable veil around Ultramar. As the final piece of his plan, Lorgar engineers the \"ascension\" into daemonhood of the increasingly unstable Angron: the event is to act as the conduit for the unnatural storm', '', 'boek24.jpg'),
(25, 'Mark of Calth', 'Laurie Goulding', 13, '17.50', 25, 'Mark of Calth is the fifth compilation to appear in the series; it contains seven short stories and one novella, each by a different author.[38] The stories further describe aspects of the rebels\' Ultramar campaign, as close prequels or sequels of Books 19 and 24. ', 'his anthology contains the following stories: The Shards of Erebus by Guy Haley, Calth That Was by Graham McNeill, Dark Heart by Anthony Reynolds, The Traveller by David Annandale, A Deeper Darkness by Rob Sanders, The Underworld War by Aaron Dembski-Bowden and Unmarked by Dan Abnett.', 'boek25.jpg'),
(26, 'Vulkan Lives', 'Nick Kyme', 18, '19.99', 31, 'Vulkan Lives is the first book where the story of Vulkan is shown with a significant background. His memories coming back to him after his capture by his brother Konrad Curze aboard his ship modified by Perturabo himself. He learns more about his immortality, which seems to be a gift and a curse, one he preferred not to bear at all. The book adds more background concerning the battle at Istvaan V, at the same time showing the drama of a squad of his surviving sons and the shattered legions while they fight to retrieve an unknown artifact that will change the course of history in the coming days of the rebellion.', '', 'boek26.jpg'),
(27, 'The Unremembered Empire', 'Dan Abnett', 13, '16.00', 27, 'Unremembered Empire happens after the events of the Battle of Phall, the Lion\\\'s capture of Konrad Curze, the return of Guilliman to Maccragge after the battle for Armatura and the Blood Angels trial at the battle for Signus Prime. An ancient device has been found on Sotha, one which could guide the mighty warships out of the impenetrable veil that cut off Ultramar from the rest of the Imperium. Strange events start to happen after the arrival of members of the Cabal organization; a Word Bearer Legionnaire seeking redemption for his Legion and the Night Lords\\\' Primarch begin their search for an unknown \\\"object\\\" that fell from orbit straight to the hands of Guilliman. Secrecy between him and the Lion might bring undesired conflict between the brothers in this time of treachery, while Sanguinius manage to come back from his trial on Signus Cluster to learn from Guilliman\\\'s plan for a new Empire', '', 'boek27.jpg'),
(28, 'Scars', 'Chris Wraight', 5, '18.50', 35, 'Of all the Legiones Astartes, the White Scars of Jaghatai Khan remain the most enigmatic and elusive. Born of a civilisation that prizes honour, speed and fearsome loyalty, their allegiance has yet remained unclear even as the galaxy is torn apart by Horus’s treachery, and both sides have apparently counted them among their potential allies in the war to come. But when the Alpha Legion launch an unexplained and simultaneous attack against the White Scars and Space Wolves, the Khan must decide once and for all whether he will stand with the Emperor or the Warmaster... or neither.', '', 'boek28.jpg'),
(29, 'Vengeful Spirit', 'Graham McNeill', 16, '21.99', 45, 'Once the brightest star in the Imperium and always first among his primarch brothers, Horus has dragged the Space Marine Legions into the bloodiest conflict that the galaxy has ever seen. While their allies wage war on a thousand different fronts, the XVIth Legion descend upon the Knight world of Molech – home to the ruling House Devine, and a principal stronghold of the Imperial Army. The forces loyal to the Emperor stand ready to defy the Warmaster, but just what could have drawn Horus to attack such a well defended planet, and what might he be willing to sacrifice to fulfill his own dark destiny?', '', 'boek29.jpg'),
(30, 'The Damnation of Pythos', 'David Annandale', 10, '23.99', 25, 'In the aftermath of the Dropsite Massacre at Isstvan V, a battered and bloodied force of Iron Hands, Raven Guard and Salamanders regroups on a seemingly insignificant Death world. Fending off attacks from all manner of monstrous creatures, the fractious allies find hope in the form of human refugees fleeing from the growing war, and cast adrift upon the tides of the Warp. But even as the Space Marines carve out a sanctuary for them in the jungles of Pythos, a darkness gathers that threatens to consume them all...', '', 'boek30.jpg'),
(31, 'Legacies of Betrayal', 'Christian Dunn and Nick Kyme', 17, '22.50', 23, 'Only from out of great conflict can true heroes arise. With the galaxy aflame and war on an unimaginable scale tearing the Imperium apart, champions of light and darkness venture onto countless fields of battle in service to their masters. They ask not for remembrance or reward - simply to meet their destiny head-on, and only by embracing that destiny will they come to learn what the unseen future may yet hold for them...', '', 'boek31.jpg'),
(32, 'Deathfire', 'Nick Kyme', 18, '24.99', 31, 'Vulkan lies in state beneath the Fortress of Hera, and yet many of his sons still refuse to believe that he is truly dead. After a seemingly miraculous rescue by the Ultramarines, Artellus Numeon, once captain of the Pyre Guard, urges the other Salamanders on Macragge to leave Imperium Secundus and return their primarch\'s body to the home world of Nocturne — there to be reborn in the flames of Mount Deathfire. But Numeon grapples endlessly with his doubts and fears for the future of the Legion, while their foes seek to carve out new destinies of their own...', '', 'boek32.jpg'),
(33, 'War Without End', 'Christian Dunn and Nick Kyme', 8, '23.99', 40, 'The Emperor\'s vision of mankind ascendant lies in tatters. The Great Crusade is naught but a fading memory. The dream of Unity is no more. But with Horus\'s rebellion spreading to every corner of the Imperium and war engulfing new worlds and systems almost daily, there are some who now ask: were the signs there to be seen all along? In these dark times, only one thing is certain – the galaxy will never know peace again, not in this lifetime or a thousand others...', 'War Without End is the thirty-third book in the Horus Heresy Series and collects 21 short stories. It is was published in January 2016 as a hard cover novel, an ebook, and in audio format. The audiobook edition has a run time of 16 hours and 11 minutes, and the stories are narrated by Gareth Armstrong, John Banks, Ian Brooker, Steve Conlin, Jonathan Keeble, Toby Longworth, and Stephen Perring.', 'boek33.jpg'),
(34, 'Pharos', 'Guy Haley', 13, '24.99', 24, 'With the noble Emperor Sanguinius ruling from Macragge, Imperium Secundus stands as a lone beacon of hope even as the Warmaster’s forces continue to ravage the rest of the galaxy. Roboute Guilliman, still Master of Ultramar, has convinced his brother that Terra has fallen and that the mysterious Mount Pharos on Sotha now holds the key to mankind’s future. But the Night Lords, those cruel and pitiless sons of Konrad Curze, have been watching from the shadows, and make ready to launch their long-planned attack on the Pharos itself...', '', 'boek34.jpg'),
(35, 'Eye of Terra', 'Laurie Goulding', 10, '23.50', 20, 'The Emperor\'s vision of mankind ascendant lies in tatters. The Great Crusade is naught but a fading memory. The dream of Unity is no more. But with Horus\'s rebellion spreading to every corner of the Imperium and war engulfing new worlds and systems almost daily, there are some who now ask: were the signs there to be seen all along? In these dark times, only one thing is certain – the galaxy will never know peace again, not in this lifetime or a thousand others...', 'Eye of Terra is the thirty-fifth book in the Horus Heresy Series. It was published in March 2016 as a hard cover novel, an ebook, and in audio format. The audio has a run time of 12 hours and 18 minutes, and it is narrated by John Banks and Toby Longworth', 'boek35.jpg'),
(36, 'The Path of Heaven', 'Chris Wraight', 5, '23.99', 24, 'For too long had the Vth Legion ranged out beyond the sight of the wider Imperium, remaining ignorant of the Warmaster’s rebellion and the war that inevitably followed. Only once their primarch, Jaghatai Khan, had satisfied himself that the path before them was just and true did the White Scars choose a side, taking the fight to the traitors on every front. But, four years later, the Legion’s unfettered spirit has been broken by relentless attritional warfare against the Death Guard and the Emperor’s Children – the Khan’s Stormseers must find a clear route to Terra if they are to take part in the final, apocalyptic battle.', '', 'boek36.jpg'),
(37, 'The Silent War', 'Laurie Goulding', 8, '24.99', 20, 'Anthology of tales about the secret missions that underpin the entire Horus Heresy series.\r\nWhile loyalist and traitor forces clash on a thousand battlefields across the galaxy, a very different kind of war is being fought in the shadows. Rogal Dorn and his Legion prepare to defend the Solar System against the armies of Warmaster Horus, even as Malcador the Sigillite charges his many agents and spies with missions of the utmost secrecy. The future of the Imperium is being shaped by unseen hands... ', 'This Horus Heresy anthology contains fourteen stories by some of Black Library\'s top authors, including James Swallow, Chris Wraight, John French, Anthony Reynolds and many more.The Silent War is an anthology novel in the Horus Heresy series, which was released as a digital-exclusive in May 2016.', 'boek37.jpg'),
(38, 'Angels of Caliban', 'Gav Thorpe', 1, '23.50', 30, 'Two infamous Space Marine Primarch rivals clash for the final time.\r\nWith the Dark Angels spread across a hundred systems, primarch Lion El’Jonson stands as Lord Protector of Ultramar – though his true motives are known to few indeed, and old rivalries on the home world threaten to tear the Legion in half. But when word comes of the Night Lords’ attack on Sotha, the Lion’s brutal actions bring Imperium Secundus once again to the brink of civil war. Not even the most fearsome warriors of the Dreadwing, nor any arcane secret of the Order, can guarantee victory if he sets himself against his loyal brothers.', '', 'boek38.jpg'),
(39, 'Praetorian of Dorn', 'John French', 7, '23.99', 20, 'Recalled from the Great Crusade after Ullanor, Rogal Dorn and the VIIth Legion were appointed as the Emperor\'s praetorians but only after the Warmaster\'s treachery was revealed did the full extent of that sacred duty become apparent. Now, the Solar System comes under attack for the first time since the war began, and many of the seemingly impregnable defences wrought by the Imperial Fists prove inadequate. With all eyes fixed firmly upon this new threat beyond the gates of Terra, who will protect Dorn from the enemy within?', '', 'boek39.jpg'),
(40, 'Corax', 'Gav Thorpe', 19, '22.99', 33, 'As the Horus Heresy gathers pace, the Raven Guard primarch Corax and the remnants of his once mighty Legion now wage an entirely different kind of war – liberating worlds oppressed by the traitor forces.\r\nAfter Isstvan, after Deliverance, the Raven Guard still endure. Their primarch Corvus Corax has rallied countless warriors to his banner, striking back at the forces of the Warmaster on every front – from the degenerate hereteks of the Mechanicum to the cruel legionaries of the Sons of Horus, none shall escape his wrath. But although Corax has managed to stall the physical corruption of his own Space Marines, what of their spirit? And what sinister end must await those who dwell forever in the darkness?', '', 'boek40.jpg'),
(41, 'The Master of Mankind', 'Aaron Dembski-Bowden', 7, '24.99', 30, 'While Horus’ rebellion burns across the galaxy, a very different kind of war rages beneath the Imperial Palace. The ‘Ten Thousand’ Custodian Guard, along with the Sisters of Silence and the Mechanicum forces of Fabricator General Kane, fight to control the nexus points of the ancient eldar webway that lie closest to Terra, infested by daemonic entities after Magnus the Red’s intrusion. But with traitor legionaries and corrupted Battle Titans now counted among the forces of Chaos, the noose around the Throneworld is tightening, and none but the Emperor Himself can hope to prevail.', '', 'boek41.jpg'),
(42, 'Garro', 'James Swallow', 14, '24.99', 32, 'From out of the shadows of the Silent War, a hero emerges. Clad all in grey, an errant warrior of the Legiones Astartes kneels before the Regent of Terra, and accepts a solemn new duty – Battle-Captain Garro, once commander of the Eisenstein, now Agentia Primus of Malcador the Sigillite. From the desolation of Isstvan to the halls of the Imperial Palace itself, he stands as a paragon of loyalty and protector of the innocent, ever ready to strike back at the traitorous allies of the Warmaster. But Garro is walking a path of his own, one that may lead him to question his own place in the Imperium... and what if he, too, should falter?', '', 'boek42.jpg'),
(43, 'Shattered Legions', 'Laurie Goulding', 10, '24.50', 29, 'After the massacre at Isstvan V, the broken remnants of three Legions formed a guerrilla force dedicated to slowing Horus\'s advance on Terra. The ten tales in this volume relate exceptional stories of heroism by these Shattered Legions.\r\nDriven almost to the brink of self-destruction at Isstvan V, the Iron Hands now seek vengeance for the murder of their primarch Ferrus Manus. Gathering survivors from the Raven Guard and the Salamanders aboard any vessels capable of warp travel, these Shattered Legions wage a new campaign of annihilation against the traitor forces across the galaxy – a campaign masterminded by legendary warleader Shadrak Meduson. This Horus Heresy anthology contains ten short stories by authors including Dan Abnett, Chris Wraight, John French and many more. Also, in the novella The Seventh Serpent, Graham McNeill revisits the ragtag crew of the starship Sisypheum as they are drawn into a war of subterfuge against the Alpha Legion.', '', 'boek43.jpg'),
(44, 'The Crimson King', 'Graham McNeill', 15, '25.50', 40, 'After the razing of Prospero, Magnus the Red spirited the Thousand Sons away to the aptly un-named Planet of the Sorcerers, deep within the Eye of Terror. Removed from the concerns of the galaxy at large and regarding the Warmaster\'s unfolding Heresy with cold detachment, he has dedicated his hollow existence to the preservation of all the knowledge once held in the great libraries of Tizca, should mankind ever seek such enlightenment again. But his sons can see the change in their primarch — he is a broken soul, whose mind and memories are slipping away into the tumult of the warp. Only by returning to the scenes of his greatest triumphs and tragedies can they hope to restore him, and allow the Crimson King to be crowned anew by the Ruinous Powers', '', 'boek44.jpg'),
(45, 'Tallarn', 'John French', 4, '23.99', 50, 'As the Warmaster\'s campaign of galactic domination continues, his generals seek out fresh battlefields to conquer. After leaving the Crone World of Iydris behind, Perturabo strikes for Tallarn. A bitter, vengeful primarch, the lord of the Iron Warriors unleashes a deadly bombardment against the world, killing millions but entrenching the survivors. A brutal, all-consuming armoured conflict ensues, the greatest of the war, and one that grinds down all combatants over more than a year of relentless battles. But Perturabo\'s reasons for the attack are about more than unleashing punitive destruction against the Imperium - he has an entirely darker purpose in mind.', '', 'boek45.jpg'),
(46, 'Ruinstorm', 'David Annandale', 13, '24.99', 50, 'As Imperium Secundus fails, three primarchs journey into the Ruinstorm in the hope of making it back to Terra.\r\nImperium Secundus lies revealed as a heretical folly. Terra has not fallen, though it remains inaccessible. Sanguinius, Guilliman and the Lion El’Jonson, the primarchs of the Triumvirate, must reach Terra at all costs. They seek to defend the Emperor, and to atone for their sins. But the Ruinstorm, a galaxy-wide maelstrom of chaos, hides the Throneworld from the primarchs. Now the fleets of three Legions depart Macragge, and the primarchs will stop at nothing to overcome the Ruinstorm. Yet an insidious enemy watches their every move, and plots against the weaknesses of the errant sons of the Emperor. Each has his own inner storm, and each marches towards his own ruin.', '', 'boek46.jpg'),
(47, 'Old Earth', 'Nick Kyme', 18, '21.99', 41, 'Reborn in body and spirit beneath Mount Deathfire, the primarch Vulkan gathers his most trusted sons and prepares for the final part of his journey. The Legions shattered at Isstvan V have stalled the Warmaster’s advance across the galaxy, but fresh cracks are spreading through the alliance between the Iron Hands, Salamanders and Raven Guard, along with mysterious rumours of the return of Ferrus Manus. Haunted by a sense of destiny unfulfilled, Vulkan must choose between joining their war of vengeance against the traitors, or following his own barely understood path all the way to the Throneworld itself.', '', 'boek47.jpg'),
(48, 'The Burden of Loyalty', 'Laurie Goulding', 6, '23.50', 49, 'As the darkness of mankind\'s internecine war slowly consumes the galaxy, those who still serve the Throne are forced to fight for both their own survival and the continued existence of everything they hold dear. With the threat of the Warmaster Horus\' fleet looming ever closer to Terra, if will fall to such heroes to halt the tide, but the enemies arrayed against them are powerful and the burden of loyalty is great...', 'A brand-new anthology of Horus Heresy short fiction featuring stories by Dan Abnett, Chris Wraight, Aaron Dembski-Bowden, John French and more.', 'boek48.jpg'),
(49, 'Wolfsbane', 'Guy Haley', 6, '21.99', 32, 'The time has come for Leman Russ, primarch of the Space Wolves, to fulfill his vow and attempt to stop Warmaster Horus before he breaks through to the Segmentum Solar.\r\nIn the face of opposition from three of his brother primarchs, Russ withdraws the Space Wolves legion from Terra and makes all haste for Horus’s position.\r\nReports from Malcador the Sigillite’s agents suggest that Horus is utterly changed, and infused with a diabolical power so great that no man can stand against him. A warrior of Fenris would never willingly abandon his oaths, but with Horus beyond the touch of mortal blades, the Lord of Winter and War may have doomed himself for the sake of honour...', '', 'boek49.jpg'),
(50, 'Born of Flame', 'Nick Kyme', 18, '24.99', 25, 'Born of the fiery world of Nocturne, the Salamanders believe in self sacrifice and the sanctity of human life. Their father Vulkan was raised on this world, a blacksmith\'s son from humble origins who became a primarch of the Emperor of Mankind and forged his sons into a Legion. Their saga is one of heroism, betrayal, tragedy and rebirth. They have returned from the edge of extinction more than once, forever embattled, never bowed, the Legion and their primarch the epitome of defiance in the face of adversity. Unto the anvil, born of flame.', '', 'boek50.jpg'),
(51, 'Slaves to Darkness', 'John French', 16, '23.99', 25, 'After a long and grueling conflict, the traitors at last close upon Terra. But time is dwindling for an attack. Both Guilliman and the Lion are returning with all haste, and their armies could turn the tide. The hosts of the Warmaster must unite, for only then can they attack the Throneworld itself. While Mortarion is sent on ahead as the fleet’s vanguard, it falls to Lorgar and Perturabo to marshal Fulgrim and Angron, both now elevated to daemonhood and perhaps beyond even the will of the Warmaster to command. But Horus lies wounded and as the greatest battle the galaxy has ever know looms, it is up to Maloghurst to hold his fractious Legion together and to wrench Horus himself from the edge of oblivion.', '', 'boek51.jpg'),
(52, 'Heralds of the Siege', 'Nick Kyme and Laurie Goulding', 16, '23.49', 34, 'Horus has triumphed. His fleet nears Terra and the Throne of his hated father. Many have fallen to bring this moment about, their names a legacy of glory – these are their tales.\r\nA galaxy burns and brother turns on brother as the conflict brought about by a beloved son’s betrayal reaches its fateful end. The Warmaster Horus has triumphed. His massive fleet at last nears Terra and the patriarchal Throne of his hated father. Many have fallen to bring this moment about, their tales are the ashes upon which the Heresy was born and prospered. Others have played their own small parts, drops in an ocean of war and blood. None of it matters. Terra looks to the skies as it raises its defences. Armies muster, heroes raise their swords, citizens cower. The war is coming. And nothing can stop it.', '', 'boek52.jpg'),
(53, 'Titandeath', 'Guy Haley', 16, '22.49', 35, 'Horus’s armada gathers, and he has defeated all enemies sent against him, even the Emperor’s own executioner. One barrier remains before he can strike for Terra and lay waste to the Emperor’s dream.\r\nThe Beta-Garmon system occupies the most direct and only viable route to the Solar System and Terra. To break it, Horus assembles a war host of incredible proportions and Titans in untold numbers. To lose here is to lose the war and Horus has no intention of turning back. But the Imperium understands the importance of Beta-Garmon too. A massive army is arrayed, comprised of near numberless Army cohorts and a mustering of Titans to challenge even the martial might of the Warmaster.\r\nTitans fight against Titans as the God-Machines of Loyalists and Traitors alike go to war. This conflict will be like no other before it, a world-ending battle that will determine the next phase of the war.', '', 'boek53.jpg'),
(54, 'The Buried Dagger', 'James Swallow', 14, '22.99', 25, 'The skies darken over Terra as the final battle for the Throne looms ever closer... As the Traitor primarchs muster to the Warmaster’s banner, it is Mortarion who is sent ahead as the vanguard of the Traitor forces. But as he and his warriors make way, they become lost in the warp and stricken by a terrible plague. Once thought of as the unbreakable, the legendary Death Guard are brought to their knees. To save his Legion, Mortarion must strike a most terrible bargain that will damn his sons for eternity. Meanwhile, in the cloisters of Holy Terra, a plot is afoot to create sedition and carnage in advance of the Horus’s armies. Taking matters into his own hands, Malcador the Sigillite seeks to put a stop to any insurrection but discovers a plot that he will need all of his cunning and battle-craft to overcome.', '', 'boek54.jpg'),
(55, 'The Solar War', 'John French', 7, '23.50', 30, 'After seven years of bitter war, the end has come at last for the conflict known infamously as the Horus Heresy. Terra now lies within the Warmaster’s sights, the Throneworld and the seat of his father’s rule. Horus’ desire is nothing less than the death of the Emperor of Mankind and the utter subjugation of the Imperium. He has become the ascendant vessel of Chaos, and amassed a terrible army with which to enact his will and vengeance. But the way to the Throne will be hard as the primarch Rogal Dorn, the Praetorian and protector of Terra, marshals the defences. First and foremost, Horus must challenge the might of the Sol System itself and the many fleets and bulwarks arrayed there. To gain even a foothold on Terran soil, he must first contend the Solar War. Thus the first stage of the greatest conflict in the history of all mankind begins.', '', 'boek55.jpg');
INSERT INTO `products` (`product_id`, `product_title`, `product_author`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(56, 'The Lost and the Damned', 'Guy Haley', 4, '24.99', 36, 'On the thirteenth day of Secundus, the bombardment of Terra began... With the solar defences overcome through the devastating strength of the Traitor armada and the power of the warp, Horus launches his assault on the Throneworld in earnest. After withstanding a ferocious barrage of ordnance, an immense ground war commences outside the Palace with every inch gained paid for in the lives of billions. The front lines are beyond horrific and the very air is reduced to poison and blood. Bodies are thrown into the meatgrinder but the outer redoubts cannot possibly hold for long, even with the loyal primarchs to reinforce them. For Horus has his own generals to call upon... Between the plague weapons of Mortarion and the fury of Angron, the defenders face a losing battle.', '', 'boek56.jpg'),
(57, 'The First Wall', 'Gav Thorpe', 7, '25.00', 27, 'The war for the fate of mankind blazes on. Though the outer defences have fallen, the walls of the Palace itself remain inviolate as Rogal Dorn, the Praetorian of Terra himself, uses every known stratagem and ploy to keep Horus\'s vast armies at bay. In Perturabo, the Traitor siegebreaker, Dorn faces an adversary worthy of his skill. A terrible, grinding attrition ensues. The crucial battle for the Lion\'s Gate spaceport is at the heart of this conflict. With it in their possession, the Traitors can land their most devastating weapons on Terran soil. Dorn knows it must not fall. But with enemies attacking from within as well as without and the stirrings of the neverborn drawn to the slaughter, can the Imperial defenders possibly prevail?', '', 'boek58.jpg'),
(58, 'Dan Abnett', 'Saturnine', 4, '24.50', 20, 'The Traitor Host of Horus Lupercal tightens its iron grip on the Palace of Terra, and one by one the walls and bastions begin to crumple and collapse. Rogal Dorn, Praetorian of Terra, redoubles his efforts to keep the relentless enemy at bay, but his forces are vastly outnumbered and hopelessly outgunned. Dorn simply cannot defend everything. Any chance of survival now requires sacrifice, but what battles dare he lose so that others can be won? Is there one tactical stroke, one crucial combat, that could turn the tide forever and win the war outright?', '', 'boek59.jpg'),
(61, 'False Gods', 'Graham McNeill', 16, '16.99', 20, 'False Gods picks up a few weeks after the conclusion of Horus Rising in the series timeline, and tells the story of Horus\' fall. In a complicated conspiracy implemented by followers of Chaos, Horus is mortally wounded during a Crusade mission by a Chaos-tainted xenos weapon. In a desperate action by his lieutenants to ensure his survival  – one taken in strict contradiction to Imperial doctrine  – Horus is brought to a local temple with a reputation for healing. The temple is the seat of a powerful Chaos cult, and both Horus\' wound and its supposed healing makes him susceptible to Chaos\' influence. He ultimately turns against his \"father\", the Emperor, and sets in motion the entire Heresy. This novel further highlights the institutional and personal tensions that accompany the Imperium\'s maturity into the preeminent power of the galaxy; they include rifts among the Primarchs, as well as both between and within their Space Marine Legions. Conflicts and characters flaws are repeatedly and effectively manipulated by Chaos in pursuit of their agenda throughout the series. A parallel storyline, also present in several other books, involves the growing influence – both within the Crusade Expeditionary forces and across the wider Imperium – of a forbidden religious cult, whose members, while loyal to the Emperor and Imperium, defy the Imperial Truth by worshipping the Emperor as a god.', '', 'boek2.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(1, 1, 0, 69, '', 3),
(2, 2, 0, 55, '', 2),
(3, 1, 0, 69, '', 3),
(4, 2, 0, 55, '', 2),
(5, 1, 0, 69, '', 3),
(7, 1, 0, 69, '', 3),
(8, 2, 0, 55, '', 2),
(9, 1, 0, 69, '', 3),
(10, 2, 0, 55, '', 2),
(11, 1, 0, 69, '', 3),
(12, 2, 0, 55, '', 2),
(13, 1, 0, 69, '', 3),
(14, 2, 0, 55, '', 2),
(15, 1, 0, 69, '', 3),
(16, 1, 29, 69, '', 1),
(17, 1, 30, 69, '', 1),
(18, 1, 31, 69, '', 1),
(19, 1, 32, 69, '', 1),
(20, 2, 32, 55, '', 1),
(21, 1, 33, 69, '', 1),
(22, 2, 33, 55, '', 1),
(23, 1, 34, 69, 'product 1', 1),
(24, 2, 34, 55, 'product 2', 1),
(26, 2, 35, 55, 'product 2', 1),
(27, 1, 36, 69, 'product 1', 1),
(28, 2, 36, 55, 'product 2', 1),
(29, 1, 37, 69, 'product 1', 1),
(30, 2, 37, 55, 'product 2', 1),
(31, 1, 38, 69, 'product 1', 1),
(32, 2, 38, 55, 'product 2', 1),
(33, 1, 39, 69, 'product 1', 1),
(34, 2, 39, 55, 'product 2', 1),
(35, 1, 40, 69, 'product 1', 1),
(36, 2, 40, 55, 'product 2', 1),
(37, 1, 41, 69, 'product 1', 1),
(38, 2, 41, 55, 'product 2', 1),
(39, 1, 42, 69, 'product 1', 1),
(40, 2, 42, 55, 'product 2', 1),
(41, 1, 43, 69, 'product 1', 1),
(42, 2, 43, 55, 'product 2', 1),
(43, 1, 44, 69, 'product 1', 1),
(44, 2, 44, 55, 'product 2', 1),
(45, 1, 45, 69, 'product 1', 1),
(46, 2, 45, 55, 'product 2', 1),
(47, 1, 46, 69, 'product 1', 1),
(48, 2, 46, 55, 'product 2', 1),
(49, 1, 47, 69, 'product 1', 1),
(50, 2, 47, 55, 'product 2', 1),
(51, 1, 48, 69, 'product 1', 1),
(52, 2, 48, 55, 'product 2', 1),
(53, 1, 49, 69, 'product 1', 1),
(54, 2, 49, 55, 'product 2', 1),
(55, 1, 50, 69, 'product 1', 1),
(56, 2, 50, 55, 'product 2', 2),
(57, 1, 51, 69, 'product 1', 1),
(58, 2, 51, 55, 'product 2', 2),
(59, 1, 52, 69, 'product 1', 1),
(60, 2, 53, 55, 'product 2', 2),
(61, 2, 54, 55, 'product 2', 1),
(62, 1, 55, 69, 'product 1', 1),
(63, 1, 56, 69, 'product 1', 1),
(67, 1, 60, 25.99, 'Horus Rising', 1),
(68, 1, 61, 25.99, 'Horus Rising', 2),
(69, 2, 62, 20.99, 'False Gods', 1),
(70, 5, 63, 29.99, 'Fulgrim', 2),
(71, 7, 64, 16.99, 'Legion', 1),
(72, 8, 65, 24.99, 'Battle for the Abyss', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `slide_id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(10, 'Slide 1', 'Webp.net-resizeimage (2).jpg'),
(11, 'slide 3', 'Webp.net-resizeimage (4).jpg'),
(12, 'Slide 2', 'Webp.net-resizeimage.png'),
(13, 'slide4', 'Webp.net-resizeimage (2).jpg'),
(14, 'slide4', 'Webp.net-resizeimage (1).jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Karel', 'karelderuddere@hotmail.com', 'Ferrari1'),
(2, 'korneel', 'korneelbaardmans@gmail.com', 'Varen'),
(3, 'een ander persoon', 'eenanderpersoon@hotmail.com', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
