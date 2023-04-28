-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 28. 10:35
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `moonlighttravel`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `nev`, `email`, `jelszo`) VALUES
(2, 'Fanni', 'fanni@citromail.hu', 'a'),
(3, 'Turi Regina', 'turi.viktoriar-2018@keri.mako.hu', 'aa'),
(6, 'Félix', 'felix@freemail.hu', '123456'),
(7, 'Nagy Viktória', 'nagyviki@gmail.com', '1234567'),
(8, 'Nagy Sándor', 'nagysandor@gmail.com', 'asd123');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalas_id` int(50) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `teljes_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonsz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `fo` int(2) NOT NULL,
  `vegosszeg` int(6) NOT NULL,
  `kisagy` int(100) NOT NULL,
  `evszam` int(11) NOT NULL,
  `honap` int(10) NOT NULL,
  `nap` int(10) NOT NULL,
  `oda_ora` int(10) NOT NULL,
  `vissza_ora` int(10) NOT NULL,
  `ut_id2` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `foglalas`
--

INSERT INTO `foglalas` (`foglalas_id`, `felhasznalo_id`, `teljes_nev`, `telefonsz`, `email`, `fo`, `vegosszeg`, `kisagy`, `evszam`, `honap`, `nap`, `oda_ora`, `vissza_ora`, `ut_id2`) VALUES
(12, 2, 'Juhász Fanni', ' 36 308789060', 'fanni@citromail.hu', 1, 340000, 0, 2023, 12, 12, 8, 15, 7),
(13, 2, 'Juhász Fanni', '36 308789060', 'fanni@citromail.hu', 3, 2820000, 0, 2023, 5, 27, 8, 15, 14),
(14, 2, 'Juhász Fanni', '36 308789060', 'fanni@citromail.hu', 4, 3416000, 1, 2024, 2, 1, 8, 15, 40),
(15, 3, 'Túri Regina', '06309897630', 'turi.viktoriar-2018@keri.mako.hu', 1, 130000, 1, 2023, 8, 4, 15, 8, 6),
(16, 6, 'Bálint Márk Félix', ' 36 304568090', 'felix@freemail.hu', 3, 1830000, 0, 2024, 5, 12, 15, 15, 9),
(17, 6, 'Bálint Márk Félix', '36 304568090', 'felix@freemail.hu', 3, 1860000, 1, 2023, 4, 25, 10, 15, 16),
(18, 6, 'Bálint Márk Félix', '36 304568090', 'felix@freemail.hu', 3, 9120000, 1, 2023, 9, 9, 15, 10, 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szallas`
--

CREATE TABLE `szallas` (
  `szallas_id` int(100) NOT NULL,
  `megnev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras2` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` tinyint(4) NOT NULL,
  `elhelyezkedes` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_ar` int(7) NOT NULL,
  `ellatas` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ellatas_leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szallas`
--

INSERT INTO `szallas` (`szallas_id`, `megnev`, `leiras2`, `tipus`, `elhelyezkedes`, `szallas_img`, `szallas_ar`, `ellatas`, `ellatas_leiras`) VALUES
(1, 'Manolita Paris ', 'A Pigalle metróállomástól 500 méterre található Manolita Paris 5 csillagos szállást kínál Párizsban', 5, '1 rue Lepic, Butte-Montmartre, Párizs XVIII. kerülete, 75018 Párizs, Franciaország', 'hotel1-min.jpg', 70000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(2, 'Toyoko INN', 'A Toyoko INN Marseille Saint Charles kerttel és ingyenes wifivel várja vendégeit Marseille-ben, a marseille-i Saint Charles vasúti pályaudvartól mindössze 5 perces sétára. A szálloda az A7-es autópályáról is könnyen megközelíthető. A szálláshelyen őrzött parkoló áll rendelkezésre, de a parkolóhelyek száma korlátozott, és nem foglalhatók előre.', 3, '25 Avenue du General Leclerc, 13003 Marseille, Franciaország', 'hotel2-min.jpg', 100000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(3, 'MEININGER ', 'A Lyon városában, Az Ellenállás és Deportálás Emlékközponttól 200 méterre található a bárral, magánparkolóval, közös társalgóval és terasszal rendelkező MEININGER Hotel Lyon Centre Berthelot. A Fourvière negyed 3,1 km-re fekszik.', 4, 'Rue Professeur Zimmermann 7, Lyon VII. kerülete, 69007 Lyon, Franciaország', 'hotel3-min.jpg', 90000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(4, 'D8', 'Háromcsillagos superior lifestyle szállodánk Budapest szívében található, pár lépésre a Lánchídtól és a belváros leghosszabb bevásárló utcájától, a Váci utcától. A pezsgő főváros ikonikus látványosságai, így sok más mellett például a Budai vár, a Szent István Bazilika és a Halászbástya is rövid sétára van a D8 Hoteltől.', 3, '1051 Budapest, Dorottya utca 8., Magyarország', 'hotel4-min.jpg', 30000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(5, 'Hotel Barbakán', 'Kényelem, kultúra, szórakozás és pihenés - ezt kínálja Önnek a Hotel Barbakán***.\r\nSzállónk Pécs szívében várja Önt és kedves családját, karnyújtásnyira a látnivalóktól és a szórakozási lehetőségektől.', 3, '7624 Pécs, Bartók B. u. 10., Magyarország', 'hotel5-min.jpg', 50000, 'FB (Full Board)', 'Reggeli, ebéd és vacsora is benne van az árban. Azoknak ajánlott, akik nem terveznek három óránál hosszabb kirándulásokat, ugyanakkor nem akarnak étterembe menni.'),
(6, 'Baobab Suites', 'A Baobab Suites étteremmel, terasszal, közös társalgóval és díjmentes magánparkolóval ellátott szállást kínál Siófokon, a Nagystrandtól 400 méterre. A 4 csillagos szálloda bárral, valamint ingyenes wifivel felszerelt, légkondicionált szobákkal várja vendégeit. Siófok Aranypart strandjai 1,4 km-re, a városközpont pedig 700 méterre található.', 4, '8600 Siófok, 23 Batthyány Lajos utca, Magyarország', 'hotel6-min.jpg', 100000, 'PP', 'Az ételeket az utazás programjához illesztve szolgálják fel. Általában a szabadidőben szervezett kirándulások határozzák meg.'),
(7, 'Hospedajes Tomas Wilson MX', 'A Mexikóvárosban található Hospedajes Tomas Wilson MX terasszal , ingyenes Wi-Fi-vel és közös társalgóval várja vendégeit.', 3, ' Tomas Wilson 1B, 01290 Mexikóváros, Mexikó', 'hotel7-min.jpg', 40000, 'SC (Self Catering)', 'Önellátás. Étkezések nincsenek az árban, de a vendégek használhatják a konyhát vagy főzősarkot, ahol maguknak elkészíthetik az ételüket. Ez a legjobb választás, ha egy kis pénzt akar megtakarítani vagy szigorú diétát folytat.'),
(8, 'Grand Nikko Tokyo Daiba', 'A Grand Nikko Tokyo Daiba az első Grand Nikko szálloda Japánban, 2016. július 1-jétől. Az Odaiba városában, a Tokiói-öbölben található szálláshely a legközelebbi városi üdülőszálló Tokió központjához, 20 perces egysínű vasúti és vonatútra. JR Tokió állomás. A wifi a szálláshely egész területén ingyenes.', 5, '135-8701 Tokió prefektúra, Minato-ku Daiba 2-6-1 , Japán', 'hotel8-min.jpg', 279000, 'UAI (Ultra All Inclusive)', 'Ugyanaz, mint az All Inclusive, de az alkoholos italok (főleg a nemzetköziek) szélesebb választékával. Hoteltől függően magában foglalhat további szolgáltatásokat – pl. masszázsok, spa, szaunák.'),
(9, 'Ramses Hilton ', 'Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) éjszakai szórakozóhely és a(z) edzőterem, vagy ha úgy tartja kedve, próbálja ki szerencséjét a helyszíni kaszinóban. ', 5, '1115 Corniche El Nile, Kairó, Egyiptom', 'hotel9-min.jpg', 110000, 'HB (Half Board)', 'Azon kívül, hogy a hotelben aludhatunk, az árban reggeli és vacsora is benne van.'),
(10, 'Mercure Gold Coast Resort', 'Lazuljon el, és enegedje, hogy testét, lelkét kényeztessék a teljes körű szolgáltatást nyújtó wellnessfürdőben, ahol masszázs és arckezelés is várja a pihenni vágyókat. Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) 2 szabadtéri medence, a(z) szabadtéri teniszpálya és a(z) edzőterem.', 4, 'Palm Meadows Drive, Carrara, 4211 Gold Coast, Ausztrália', 'hotel10-min.jpg', 110000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(11, 'Chelsea Hotel, Toronto', 'A College metróállomástól kevesebb mint 300 méterre található szálloda helyszíni étkezési lehetőséggel, valamint fitneszközponttal és 2 fedett medencével is várja vendégeit. A Toronto Eaton Centre bevásárlóközpont 600 méterre fekszik.', 4, '33 Gerrard Street West, M5G 1Z4, Toronto, Kanada', 'hotel11-min.jpg', 80000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(12, 'Paramount Hotel Times Square', 'A 605 szobás butikhotel, a Paramount Hotel épülete New Yorkban, a Színháznegyedben helyezkedik el, a Times Square-től 170 méterre.', 4, '235 West 46th Street, Times Square, New York, Amerikai Egyesült Államok', 'hotel12-min.jpg', 90000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(13, 'Super 8 By Wyndham Houston/Nasa/Webster Area', 'A Super 8 Houston/NASA/Webster Websterben található, 5 perces autóútra a NASA Űrközponttól. A szálláshely szabadtéri medencével és üzleti központtal várja vendégeit.', 2, 'Super 8 By Wyndham Houston/Nasa/Webster Area', 'hotel13-min.jpg', 30000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(14, 'Days Inn by Wyndham San Diego Hotel Circle Near SeaWorld', 'A Days Inn by Wyndham San Diego Hotel Circle tágas szobákat kínál ingyenes wifivel a SeaWorld San Diego élménypark közelében, a San Diego nemzetközi repülőtértől 8 km-re. A vendégeket egész évben fűtött, kültéri medence, pezsgőfürdő és helyszíni étterem várja.', 3, 'Days Inn by Wyndham San Diego Hotel Circle Near SeaWorld', 'hotel14-min.jpg', 40000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(15, 'Gold Dust West', 'A Carson Cityben található Gold Dust West 24 órás kaszinót kínál több mint 400 legújabb játékkal. Egy szabadtéri medence és egy gyógyfürdő is rendelkezésre áll. A Reno-Tahoe nemzetközi repülőtér 36 km-re található.', 3, ' 2171 E William Street, Carson City, NV 89701, Amerika', 'hotel15-min.jpg', 40000, 'FB (Full Board)', 'Reggeli, ebéd és vacsora is benne van az árban. Azoknak ajánlott, akik nem terveznek három óránál hosszabb kirándulásokat, ugyanakkor nem akarnak étterembe menni.'),
(16, 'YAVAPAI LODGE INSIDE THE PARK ', 'A Yavapai Lodge®-ban a természet szépsége találkozik a kényelem varázslatával. A Grand Canyon Nemzeti Parkban található szálloda kiváló helyen, a déli peremen található. A szállás rövid sétára vagy buszútra található a déli peremtől, és pár lépésre a piactól, a banktól és a postától. Természetesen ez több, mint a tökéletes hely a kaland elindításához. Fő szállása remek hely a kikapcsolódásra és feltöltődésre, köszönhetően a hangulatos ülősaroknak és a szabadtéri terasznak.', 2, 'Grand Canyon National Park - Grand Canyon Village', 'hotel16-min.jpg', 20000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(17, 'Kirowy Gościniec', 'A Kis-Lengyelország régióban, Kościeliskóban található Kirowy Gościniec ingyenes wifivel, grillezési lehetőséggel, fitneszközponttal és ingyenes parkolási lehetőséggel várja vendégeit. A fontos helyek távolsága a létesítménytől: Gubałówka - 8,5 km.', 1, 'Groń 6, 34-511 Kościelisko, Lengyelország', 'hotel17-min.jpg', 25000, 'SC (Self Catering)', 'Önellátás. Étkezések nincsenek az árban, de a vendégek használhatják a konyhát vagy főzősarkot, ahol maguknak elkészíthetik az ételüket. Ez a legjobb választás, ha egy kis pénzt akar megtakarítani vagy szigorú diétát folytat.'),
(18, 'Granbell Hotel Colombo', 'A Colombóban, a Kollupitiya strandtól 90 méterre található Granbell Hotel Colombo szabadtéri úszómedencével, ingyenes parkolási lehetőséggel, fitneszközponttal és terasszal várja vendégeit. Az étteremmel, bárral, szaunával és pezsgőfürdővel rendelkező szálláshelyen A szálláshely szobaszervizt, 24 órás recepciót és pénzváltót kínál vendégeinek.', 4, '282/5, Kollupitiya Road, Kollupitiya, 00300 Colombo, Srí Lanka', 'hotel18-min.jpg', 65000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(19, 'Prince Palace Hotel - SHA Extra Plus', 'A Prince Palace Hotel épülete Bangkok óvárosában, közvetlenül a Bo Bae Tower divatáruház felett található. A Mahanak-csatornára kilátást nyújtó szálloda szabadtéri medencét és 7 különböző étkezési lehetőséget kínál. A közös helyiségekben ingyenes wifi áll rendelkezésre.', 4, '488/800 Bo Bae Tower, Damrongrak Road, Mahanak, Pomprab Sattrupai, 10100 Bangkok,', 'hotel19-min.jpg', 70000, 'PP', 'Az ételeket az utazás programjához illesztve szolgálják fel. Általában a szabadidőben szervezett kirándulások határozzák meg.'),
(20, 'Mizingani Seafront Hotel', 'A Mizingani Seafront Hotel mindössze 2 perces sétára helyezkedik el Zanzibár kompkikötőjétől. A szálloda étteremmel, szabadtéri medencével és éjjel-nappal nyitva tartó recepcióval várja vendégeit. A helyszíni magánparkoló díjmentesen használható.', 4, 'Mizingani Road, StoneTown, Zanzibár, Tanzánia', 'hotel20-min.jpg', 45000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(21, 'Lazure Hotel & Marina', 'A Kotori-öbölre néző Lazure Hotel & Marina luxus szállást kínál 2 km-re Herceg Novi városától. Az üdülőhelyen 2 étterem, valamint szezonális strandbár és lobbibár található. Ingyenes Wi-Fi és ingyenes privát parkoló – garázsok – biztosítottak.', 5, 'Braće Pedišića 10, 85340 Herceg Novi, Montenegró', 'hotel21-min.jpg', 65000, 'UAI (Ultra All Inclusive)', 'Ugyanaz, mint az All Inclusive, de az alkoholos italok (főleg a nemzetköziek) szélesebb választékával. Hoteltől függően magában foglalhat további szolgáltatásokat – pl. masszázsok, spa, szaunák.'),
(22, 'Hotel Tirolerhof\r\n', 'A Zillertal 3000 síterülethez vezető Rastkogel és Eggalm felvonók között, a Zillertal-völgyben, Tux faluban található Hotel Tirolerhof 4 Sterne Superior alpesi stílusú szobákkal, tipikus tiroli konyhával, hangulatos társalgóval, kandallóval és wellnessrészleggel várja vendégeit.', 4, 'Hofgasse 214, 5542 Flachau, Ausztria', 'hotel22-min.jpg', 35000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(23, 'Hotel Milton Roma', 'A 18. századi épületben kialakított Hotel Milton Roma elegáns szobákat kínál parkettás padlóval és 300 Mbit adatforgalomig ingyenes nagy sebességű wifivel, valamint kerti bárral várja vendégeit mindössze néhány méterre a római Manzoni metróállomástól. A Colosseum 12 perces sétával elérhető.', 4, 'Via Emanuele Filiberto 155, a római központi pályaudvar, 00185 Róma, Olaszország', 'hotel23-min.jpg', 60000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(24, 'Athens Golden City Hotel', 'Az Athens Golden City Hotel a Metaxourgeio metróállomástól mindössze 400 méterre várja vendégeit, akik a Wi-Fi-t ingyen használhatják a közös helyiségekben. Az Athén városára panorámás kilátást nyújtó tetőtéri étteremben görög ételeket szolgálnak fel reggelire és vacsorára.', 3, 'Marnis 46, Athén, 10432, Görögország ', 'hotel24-min.jpg', 34000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(25, 'Svalbard Hotell | The Vault', 'A Longyearbyenben, a Svalbard-templomtól 800 méterre található Svalbard Hotell | A Vault bárral, díjmentes magánparkolóval, közös társalgóval és terasszal rendelkezik. A 3 csillagos szálloda jegyirodai szolgáltatást és poggyászmegőrzőt is biztosít. A szálláshely éjjel-nappali recepciót, utazásszervezői pultot, reptéri transzfert és egész területén ingyenes wifit kínál vendégeinek.', 3, '500 / 503, 9170 Longyearbyen, Norvégia ', 'hotel25-min.jpg', 42000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(26, 'InterContinental Shanghai Wonderland, an IHG Hotel', 'Az InterContinental Shanghai Wonderland Songjiangban, Sanghaj gyökerében található, a sanghaji Hongqiao negyed közelében, 40 percre a Shanghai Hongqiao nemzetközi repülőtértől, a sanghaji pályaudvartól és a Sanghaji Nemzeti Kiállítási és Kongresszusi Központtól. Kína mérföldkőjének számít, 88 méterrel közelebb a Föld szívéhez. A szálloda az építészeti és formatervezési innovációk megtestesítője a mérnöki áttörésekkel, egy félelmetes úti cél, amely összehozza a gazdag utazókat', 4, '5888 Chenhua Road, Shanghai 201619 China', 'hotel26-min.jpg', 62000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(27, 'Busan Business Hotel', 'Kezdje tökéletesen utazását! A szálláshelyen az ingyenes wifi minden szobában a megtalálható a szolgáltatások között. A szálláshely Soemyeon területén található. Stratégiai elhelyezkedésének köszönhetően, innen könnyedén felfedezhetjük a helyi látványosságokat. Mindenképpen illessze bele programjába a híres Haeundae Beach meglátogatását. E 4 csillagos szálláshelyen az étterem is megtalálható a szolgáltatások között, így a tartózkodása még kényelmesebb és emlékezetesebb lehet!', 4, '67,Bujeon-ro, Buanjin-gu, Soemyeon, Busan, Dél-Korea, 47284 ', 'hotel27-min.jpg', 73000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(28, 'ISG Sabiha Gökçen Airport Hotel', 'A szálloda modern szobákat kínál az isztambuli Sabiha Gokcen repülőtér területén. A poggyász szállításáról is gondoskodó szálloda vendégei online is bejelentkezhetnek járataikra a recepción.', 4, 'Istanbul Sabiha Gokcen Uluslararasi Havalimani Pendik, 34912 Isztambul,', 'hotel28-min.jpg', 67000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(29, 'San Marco Vip', 'Minden egységben zuhanyzós fürdőszoba, ingyenes piperecikkek, hajszárító és papucsok is rendelkezésre állnak.\r\nAz apartman pezsgőfürdőt kínál.\r\nA San Marco Vip apartmanban kerékpárkölcsönzés áll rendelkezésre.\r\n', 4, '40 Axenstrasse, 6454 Fluelen, Svájc', 'hotel29-min.jpg', 80000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(30, 'ODYSSEE Boutique Hotel Casablanca', 'A Casablanca központjában található ODYSSEE Boutique Hotel Casablanca légkondicionált szobákat kínál ingyenes wifivel, ingyenes privát parkolóval és szobaszervizzel. A különböző létesítmények között közös társalgó, étterem, valamint bár is található. A szálláshely üzleti központot, portaszolgálatot és valutaváltót biztosít a vendégek számára.', 5, 'Angle Rue Kamal Mohamed-Avenue des F.A.R, Sidi Belyout, 20000 Casablanca, Marokkó', 'hotel30-min.jpg', 70000, 'FB (Full Board)', 'Reggeli, ebéd és vacsora is benne van az árban. Azoknak ajánlott, akik nem terveznek három óránál hosszabb kirándulásokat, ugyanakkor nem akarnak étterembe menni.'),
(31, 'Hotel Le Relais Normand', 'Az étteremmel rendelkező Hotel Le Relais Normand 500 méterre található a vasútállomástól és 100 méterre a Poste Petite Vitesse-től. és 5 perc sétára az Avenue de L\'Independance-tól. A Le Relais Normand vendégszobái síkképernyős TV-vel és széffel felszereltek. A saját fürdőszoba zuhanyzóval van felszerelve.', 3, 'Tsaralalana, 21 rue rainibetsimisaraka, 101 Antananarivo, Madagaszkár', 'hotel31-min.jpg', 20000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(32, 'Sousse Pearl Marriott Resort & Spa', 'A Pearl Resort & Spa saját stranddal és ingyenes wifivel rendelkező szálláshely Szúszában, a Nagymecsettől 2 km-re. Az 5 csillagos szálloda légkondicionált szobákkal és saját fürdőszobával várja vendégeit. A szálláshely 2,9 km-re fekszik a Dar Essid Múzeumtól és 3,1 km-re a Dar Am Taieb múzeumtól. Minden szoba ülősarokkal és síkképernyős műholdas TV-vel rendelkezik. A vízforralóval ellátott szobák egy részéhez terasz is tartozik. A szállásegységekben ruhásszekrény található.', 5, 'Boulevard Abdelhamid El Kadhi La corniche, 4000 Sousse, 4000 Szúsza, Tunézia', 'hotel32-min.jpg', 30000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(33, 'The Table Bay Hotel', 'A Table Bay Hotel egy 5 csillagos luxusszálloda Fokvárosban, a V&A Waterfront partszakaszon. Gyönyörű kilátás nyílik a működő kikötőre, a Table Mountainre és az Atlanti-óceánra. A szálloda medencével és gyógyfürdővel várja vendégeit. Minden légkondicionált szoba minibárral, síkképernyős műholdas TV-vel, valamint tea- és kávéfőzési lehetőséggel rendelkezik. A saját fürdőszobában kád, zuhanyzó és ingyenes piperecikkek állnak rendelkezésre.', 5, 'Quay 6, Victoria & Alfred Waterfront , Waterfront, 8002 Fokváros, Dél-afrikai Köztársaság', 'hotel33-min.jpg', 90000, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(34, 'Sofia Place Hotel by HMG', 'A központi elhelyezkedésű Sofia Place Hotel by HMG 7 perces sétára található a Szent Szófia-székesegyháztól és közel a Vitosha körút sétálóutcájához. Ingyenes internet-hozzáférést és 24 órás recepciót kínál. A Sofia Place Hotel by HMG légkondicionált szobái minibárral, síkképernyős kábel-TV-vel és ülősarokkal rendelkeznek. Minden szoba lágy krémszínekkel díszített, és íróasztallal és saját fürdőszobával rendelkezik.', 3, '29, Hristo Belchev Str., 1000 Szófia, Bulgária', 'hotel34-min.jpg', 40000, 'HB (Half Board)', 'Azon kívül, hogy a hotelben aludhatunk, az árban reggeli és vacsora is benne van.'),
(35, 'Taj Hotel & Convention Centre Agra', 'A Taj Hotel & Convention Center Agra egy 4,5 hektáros területen található, mindössze 1 km-re a Tádzs Mahaltól. A szálláshely egészségklubbal, végtelenített medencével és gyógyfürdővel, valamint 5 étkezési lehetőséggel várja vendégeit. A légkondicionált szobák ingyenes Wi-Fi-vel és síkképernyős TV-vel rendelkeznek.\r\n\r\nA Taj Hotel & Convention Center Agra fapadlóval és földszínekkel díszített szobái minibárral, tea- és kávéfőzési lehetőséggel, valamint saját fürdőszobával rendelkeznek. 24 órás szobaszerviz áll rendelkezésre.', 5, 'Taj East Gate Road, Uttar Pradesh, 282001 Agra, India', 'hotel35-min.jpg', 60000, 'UAI (Ultra All Inclusive)', 'Ugyanaz, mint az All Inclusive, de az alkoholos italok (főleg a nemzetköziek) szélesebb választékával. Hoteltől függően magában foglalhat további szolgáltatásokat – pl. masszázsok, spa, szaunák.'),
(36, 'Hotel Nuevo Madrid', 'Ez az elegáns szálloda a város északi részén található, 10 perces autóútra az IFEMA Kongresszusi Központtól, és közvetlen hozzáférést biztosít az M30-as autópályához. A szálloda relaxációs és fitneszközpontot kínál, amely minden vendég számára ingyenes.', 4, ' Bausá, 27, Ciudad Lineal negyed, 28033 Madrid, Spanyolország', 'hotel36-min.jpg', 25660, 'PP', 'Az ételeket az utazás programjához illesztve szolgálják fel. Általában a szabadidőben szervezett kirándulások határozzák meg.'),
(37, 'ibis Styles Kingsgate Hotel', 'Az ibis Styles Kingsgate Hotel ideális helyen, Melbourne központi üzleti negyedében található, 5 perces sétára a Southern Cross pályaudvartól. A szálloda megfizethető áron és kényelmet kínál, és tökéletes választás a pénztárcabarát utazók számára.', 3, '131 King Street, 3000 Melbourne, Ausztrália', 'hotel37-min.jpg', 37000, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(38, 'Airport Garden Inn Hotel & Conference Centre', 'Az Aucklandben, egy 1990-ben épült épületben, a Mount Smart Stadiontól 6 km-re található Airport Garden Inn Hotel & Conference Center kaszinóval és ingyenes Wi-Fi-vel felszerelt szobákkal várja vendégeit. Az Auckland Botanic Gardenstől körülbelül 9 km-re, az Ellerslie rendezvényközponttól pedig 10 km-re található a szálloda. Az ingatlan a Manukau kerületben található, az Ellerslie lóversenypálya pedig 10 km-re található.\r\n', 4, '12 Tidal Road, 2022 Auckland, Új-Zéland', 'hotel38-min.jpg', 78000, 'PP', 'Az ételeket az utazás programjához illesztve szolgálják fel. Általában a szabadidőben szervezett kirándulások határozzák meg.'),
(39, 'Grand Pacific Hotel', 'A suvai Nagyszerű öreg hölgy, \"The Grand Old Lady\" néven is emlegetett, korhűen felújított Grand Pacific Hotel 1914-ben épült. A szálláshely ingyenes wifivel, 5 étteremmel, 3 bárral, wellnessrészleggel és fitneszközponttal is várja vendégeit. Minden szállás légkondicionált, és bútorozott fedetlen teraszra vagy erkélyre nyílik.', 5, '584-618 Victoria Parade, Suva, Fidzsi-szigetek', 'hotel39-min.jpg', 98000, 'FB (Full Board)', 'Reggeli, ebéd és vacsora is benne van az árban. Azoknak ajánlott, akik nem terveznek három óránál hosszabb kirándulásokat, ugyanakkor nem akarnak étterembe menni.'),
(40, 'Garden Palace Downtown Koror', 'A Koror településén található Garden Palace Downtown Koror ingyenes reptéri transzferrel és ingyenes reggelivel várja vendégeit. A kertre néző szálláshely tetőtéri terasszal is rendelkezik. A szobákban ingyenes palackozott víz biztosított.', 4, 'Garden Palace Downtown Koror, Ngerbeched, 96940 Koror, Palau ', 'hotel40-min.jpg', 54000, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak`
--

CREATE TABLE `utak` (
  `ut_id` int(11) NOT NULL,
  `kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `utak_img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(5000) COLLATE utf8_hungarian_ci NOT NULL,
  `kozlekedesi_eszkoz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `kozlekedesi_eszkoz_img` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `idoszak` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_id2` int(100) NOT NULL,
  `url_kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `allapot` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ut_ar` int(6) NOT NULL,
  `ido` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `indulasi_hely` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `program` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak`
--

INSERT INTO `utak` (`ut_id`, `kontinens`, `orszag`, `varos`, `utak_img`, `leiras`, `kozlekedesi_eszkoz`, `kozlekedesi_eszkoz_img`, `kategoria`, `nev`, `idoszak`, `szallas_id2`, `url_kontinens`, `url_orszag`, `url_varos`, `allapot`, `ut_ar`, `ido`, `indulasi_hely`, `program`) VALUES
(1, 'Európa', 'Franciaország', 'Párizs', 'paris1-min.jpg', 'A világban Párizs a legnépszerűbb úticél a turisták körében, évi több mint 30 millió látogatóval. Párizsban az egyik leghíresebb építmény az Eiffel-torony. Az Eiffel-torony sok megpróbáltatáson ment keresztül, de még ma is a világ egyik leghíresebb épületeként ismerjük. A Notre-Dame Párizs legismertebb gótikus stílusú temploma, a Párizsi főegyházmegye főszékesegyháza. Monumentális méreteivel és díszítettségével különleges hatást gyakorol a szemlélőkre. A Louvre Párizs központi részén, a Szajna jobb partján található nemzeti múzeum, a világ egyik legismertebb és 1793 óta a francia főváros legnagyobb kiállítóhelye. A Galeries Lafayette Franciaországban több mint 30 saját áruházzal rendelkezik, de kilépett a világpiacra is: a világ több nagyvárosában nyitott boltokat. \r\n', 'repülő', 'repulo.svg', 'külföldi', '4 napos nyaralás Párizsban, a fények városában', '4 nap', 1, 'Europa', 'Franciaorszag', 'Parizs', 'Városlátogatás', 600000, '2 óra 23 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Eiffel-torony\r\nNotre-Dame\r\nLouvre múzeum \r\nGaleries Lafayette\r\n'),
(2, 'Európa', 'Franciaország', 'Marseille', 'marseille1-min.jpg', 'Az Európai és Mediterrán Civilizációk Múzeuma egy nemzeti múzeum a franciaországi Marseille-ben. A kék és a fehér szín sehol sem annyira gyönyörű, mint a marseille-i öblökben. A Misztrál nevű híres szél által felkorbácsolt tengerből több száz méteres magasságban nőnek ki a sziklamászók kedvenc sziklafalai – közöttük bújnak meg a híres öblök, azaz a calanque-ok. If vára, a Földközi-tenger azonos nevű szigetén áll, Marseille kikötője mellett. Hírnevét a Monte Cristo grófja című regénynek köszönheti, amelynek főhőse ebben a várban raboskodott. Ma a város egyik jelentős turisztikai látványossága. A marseille-i katedrális egy római katolikus katedrális, és Franciaország nemzeti emlékműve, Marseille-ben található. \r\n\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Marseille, provence-i kirándulások', '4 nap', 2, 'Europa', 'Franciaorszag', 'Marseille', 'Last minute', 400000, '2 óra 15 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Európai és Mediterrán Civilizációk Múzeuma\r\nCalanques Nemzeti Park\r\nIf vára\r\nLa Major katedrális'),
(3, 'Európa', 'Franciaország', 'Lyon', 'lyon1-min.jpg', 'A lyoni katedrális egy római katolikus templom, amely a Place Saint-Jean-en található Lyon központjában, Franciaországban. Az Ancient Theatre of Fourvière egy római színház Lyonban, Franciaországban. Fourvière dombján épült, amely a római város központjában található. A színház az UNESCO Világörökség része, amely Lyon történelmi központját védi. A Jardin botanique de Lyon, vagy más néven Jardin botanique du Parc de la Tête d\'Or, egy 8 hektáros önkormányzati botanikus kert a Parc de la Tête d\'or-ban, Lyon 6. kerületében, Franciaországban. Hétköznapokon díjmentesen tart nyitva.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Kellemes hétvége Lyon környékén', '3 nap', 3, 'Europa', 'Franciaorszag', 'Lyon', 'Városlátogatás', 100000, '5 óra 35 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Lyon-katedrális\r\nTeatro Galo-Romano\r\nLyon Botanical Garden'),
(4, 'Európa', 'Magyarország', 'Budapest', 'budapest1-min.jpg', 'Az Országház Budapest egyik legismertebb középülete, a Magyar Országgyűlés és egyes intézményeinek székhelye. Budapest V. kerületében, a Duna bal partján, a Kossuth Lajos téren található. A Hősök tere Budapest legtágasabb, legnagyobb hatású tere a XIV. kerületben, szűkebb értelemben véve a Millenniumi emlékművet jelöli. A Hősök tere az előtte fekvő Andrássy úttal együtt a világörökség része. A Magyar Nemzeti Múzeum országos múzeum, mely a magyar történelem tárgyi emlékeit gyűjti és mutatja be. Főépülete Budapest VIII. kerületében, a Múzeum körúton található.\r\n\r\n', 'busz', 'busz.svg', 'belföldi', '2 nap Budapesten', '2 nap', 4, 'Europa', 'Magyarorszag', 'Budapest', 'Városlátogatás', 20000, '6 óra 42 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Parlament\r\nHősök tere\r\nNemzeti Múzeum'),
(5, 'Európa', 'Magyarország', 'Pécs', 'pecs1-min.jpg', 'Állatkert régi terrárium Pécsi Állatkert és Akvárium-Terrárium A Pécsi Állatkert és Akvárium-Terrárium a Mecsek oldalában található állatkert. A pécsi Szent Péter- és Szent Pál-székesegyház a Pécsi egyházmegye katedrálisa, a város egyik jellegzetes épülete. A pécsi Hullámfürdőben a zárt uszodán felül egy strand- és egy hullámmedence várja a fürdőzőket a nyári szezonban.\r\n\r\n\r\n', 'autó', 'auto.svg', 'belföldi', 'Felfedezni való Pécs', '3 nap', 5, 'Europa', 'Magyarorszag', 'Pecs', 'Városlátogatás', 70000, '3 óra 13 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Pécsi Állatkert\r\nPécsi Bazilika\r\nHullámfürdő'),
(6, 'Európa', 'Magyarország', 'Siófok', 'balaton1-min.jpg', 'Az élményteli programot nyújtó állatparki séta bármely korosztály számára kellemes kikapcsolódást jelent, ahol felfedezhetik a szelíd állatok csodálatos világát és találkozhatnak kedvenceikkel. Magyarország legnagyobb és legszebb magángyűjteménye 1986 júniusa óta látogatható Siófok város centrumában,a Kálmán sétány 10. alatt. Siófok szívében, üde színfoltként hívogat a város egyik legszebb parkja, a Millennium park. Siófok a XX. század elejére a Balaton egyik legkedveltebb üdülőhelyévé vált. A fejlődés megkövetelte a modern víz- és szennyvízhálózat kiépítését. A Siófok Aranypart szabadstrand Siófok központjától több mint 4 km hosszan nyúlik el keleti irányba. A 20-30 méter széles part mindenhol füves, a legtöbb részen nagy fák nyújtanak hűs árnyékot.\r\n\r\n\r\n\r\n\r\n\r\n', 'busz', 'busz.svg', 'belföldi', '1 hetes nyaralás Siófokon', '1 hét', 6, 'Europa', 'Magyarorszag', 'Siofok', 'Last minute', 30000, '6 óra 38 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Bella Állatpark\r\nÁsványmúzeum\r\nMillennium park\r\nAranypart\r\nVíztorony'),
(7, 'Amerika', 'Mexikó', 'Mexikóváros', 'mexiko1-min.jpg', 'A Soumaya Múzeum Mexikóváros egyik híres művészeti múzeuma. A Copper Canyon egy hat különálló kanyonból álló csoport a Sierra Madre Occidentalban, Chihuahua állam délnyugati részén, Mexikó északnyugati részén, és mérete 65 000 négyzetkilométer. A Szépművészeti Palota Mexikóváros legjelentősebb kulturális központja, évente körülbelül egymillió látogatója van. Amellett, hogy színház működik benne, két múzeumnak, a Szépművészeti Múzeumnak és a Nemzeti Építészeti Múzeumnak is helyt ad. A Plaza de la Constitución, közismert nevén Zócalo Mexikóváros főtere. A világ egyik legnagyobb városi tere.\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Irány Mexikó!', '1 hét', 7, 'Amerika', 'Mexiko', 'Mexikovaros', 'Last minute', 300000, '19 óra 20 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', '\r\nSoumaya Múzeum\r\nCopper Kanyon\r\nPalacio de Bellas Artes\r\nZócalo'),
(8, 'Ázsia', 'Japán', 'Tokió', 'tokio1-min.jpg', 'A Meidzsi-szentély egy sintószentély a tokiói Sibujában, amit az 1912-ben elhunyt Meidzsi császár és 1914-ben elhunyt felesége, Sóken császárné tiszteletére emeltek. A Tokyo Metropolitan Art Museum egy művészeti múzeum Tokióban, Japánban. Ez egyike Japán számos múzeumának, amelyet a prefektusi kormány támogat. A Hibiya Park egy park Chiyoda Cityben, Tokióban, Japánban. A Sumida akváriumot 2012 májusában hozták létre egy bevásárlóközpontban, a Tokió SKYTREE-ben, mely 634 méteres magasságával a legmagasabb mesterséges alkotás Japánban. A Tokyo Dome City Attractions egy vidámpark a tokiói Tokyo Dome baseballstadion mellett Bunkjóban. A Mount Mitake egy hegy a Chichibu Tama Kai Nemzeti Parkban, Tokió közelében, Japánban. A Yomiuriland egy vidámpark Inagiban , Tokióban , Japánban , amelyet először 1964-ben nyitottak meg. A Rainbow Bridge egy függőhíd, amely a Tokiói-öböl északi részét keresztezi a Shibaura móló és az Odaiba vízparti fejlesztés között, Minatoban, Tokióban, Japánban.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Felkelő nap országának városa', '10 nap', 8, 'Azsia', 'Japan', 'Tokio', 'Last minute', 800000, '1 nap 2 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Meidzsi-szentély\r\nTokyo Metropolitan Art Museum\r\nHibiya Park\r\nSumida Aquarium\r\nTokyo Dome City\r\nMount Mitake\r\nYomiuri Land\r\nRainbow Bridge'),
(9, 'Afrika', 'Egyiptom', 'Kairó', 'egyiptom1-min.jpg', 'Az Egyiptomi Régiségek Múzeuma, melyet gyakran csak Egyiptomi Múzeum néven említenek, Egyiptom fővárosában, Kairóban, a Tahrír téren áll, és legendás lazac színű épülete rejti a világ leggazdagabb egyiptológiai gyűjteményét. A Kairói Citadella vagy Szaladin fellegvára egy középkori iszlám kori erődítmény Kairóban, Egyiptomban, amelyet Salah ad-Din épített, és a későbbi egyiptomi uralkodók fejlesztettek tovább. Az Amr Ibn al-Ász mecset Kairó történelmi kerületében található, Egyiptomban. Gízai piramisok néven három piramist értünk: az egyiptomi óbirodalmi Hufu, Hafré és Menkauré fáraók piramisait. Maga a teljes piramismező a három nagy piramison kívül magába foglalja a hozzájuk tartozó halotti templomokat, kisebb piramisokat.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Piramisok városa, Kairó', '6 nap', 9, 'Afrika', 'Egyiptom', 'Kairo', 'Last minute', 500000, '3 óra 25 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Egyiptomi Régiségek Múzeuma\r\nCitadella\r\nAmr Ibn al-Ász mecset\r\nGízai piramismező'),
(10, 'Ausztrália', 'Ausztrália', 'Sydney', 'sydney1-min.jpg', 'A Sydney-i Királyi Botanikus Kert egy műemléki védettségű, 30 hektáros botanikus kert, rendezvényhelyszín és nyilvános rekreációs terület. A Sydney-torony Sydney legmagasabb építménye, Ausztrália, és a második legmagasabb kilátó a déli féltekén. A BridgeClimb Sydney egy ausztrál turistalátványosság. A BridgeClimb elkalauzolja a vendégeket a Sydney Harbour Bridge megmászására. A Wild Life Sydney Zoo egy vadaspark a Darling Harbor körzetben, Sydney központi üzleti negyedének nyugati szélén, Sydneyben, Új-Dél-Walesben, Ausztráliában. A Hornby Lighthouse, más néven South Head Lower Light vagy South Head Signal Station, egy műemléki védelem alatt álló aktív világítótorony, amely South Head csúcsán, Új-Dél-Walesben, Ausztráliában található.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Nyaralás Sydney tengerpartján', '5 nap', 10, 'Ausztralia', 'Ausztralia', 'Sydney', 'Tengerparti nyaralás', 900000, '1 nap 18 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Royal Botanic Garden\r\nSydney Tower Eye\r\nBridgeClimb\r\nWILD LIFE Sydney\r\nHornby Lighthouse'),
(11, 'Amerika', 'Kanada', 'Torontó', 'toronto1-min.jpg', 'A CN Towert 1973 és 1976 között építették a kanadai Torontóban, az ottani ipar erejének demonstrálása végett. A Royal Ontario Museum egy művészeti, világkultúra és természettörténeti múzeum Torontóban, Ontario államban, Kanadában. A Toronto Eaton Center egy bevásárlóközpont és irodakomplexum a kanadai Ontario állam Toronto belvárosában. A Nathan Phillips Square egy városi tér Torontóban, Ontario államban, Kanadában. A Casa Loma egy gótikus, újjászületett kastély stílusú kastély és kert a kanadai Ontario állambeli Toronto belvárosában, amely ma történelmi házmúzeum és nevezetesség.', 'repülő', 'repulo.svg', 'külföldi', 'Helyek, amelyeket látnia kell Torontóban!', '5 nap', 11, 'Amerika', 'Kanada', 'Toronto', 'Városlátogatás', 600000, '21 óra 29 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'CN Tower, Royal Ontario Museum, CF Toronto Eaton Centre,  Nathan Phillips Square, Casa Loma'),
(12, 'Amerika', 'Egyesült Államok', 'New York', 'newyork1-min.jpg', 'A Central Park egy 3,41 km² területű nyilvános park Manhattan szívében, New York városában. Az Empire State Building New York város 102 emeletes, 381 méter magas épülete és egyik jelképe, 42 évig volt az USA legmagasabb épülete. A Times Square New Yorkban, Manhattan városrész egyik negyede. Egyike a legismertebb amerikai negyedeknek, a napi látogatószáma eléri a 330 ezret. A Szabadság megvilágosítja a világot, ismertebb nevén a Szabadság-szobor New York előtt, a Liberty Islanden található, a Hudson folyó torkolatánál. A High Line Park, vagy ahogy szintén ismert, a High Line, egy 1,6 km² területű nyilvános, lineáris park Manhattan nyugati részén, New Yorkban. A New York-i Modern Művészeti Múzeum egyike a világ legjelentősebb kortárs gyűjteménnyel rendelkező művészeti múzeumainak. ', 'repülő', 'repulo.svg', 'külföldi', 'New York kihagyhatatlan programjai', '6 nap', 12, 'Amerika', 'Egyesult Allamok', 'New York', 'Last minute', 4000000, '13 óra 5perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Central Park, Empire State Building , Times Square, Szabadság-szobor, High Line Park, Modern Művészeti Múzeum'),
(13, 'Amerika', 'Texas', 'Houston', 'houston1-min.jpg', 'Space Center Houston egy tudományos múzeum, amely a NASA Johnson Space Center hivatalos látogatóközpontjaként szolgál Houstonban. A Discovery Green egy 11,78 hektáros nyilvános városi park Houston belvárosában, Texas államban, amelyet nyugaton a La Branch Street, északon a McKinney Street, keleten az Avenida de las Americas és délen a Lamar Street határol. A Houstoni Természettudományi Múzeum egy természettudományi múzeum, amely a Hermann Park északi határán található Houstonban, Texas államban, az Egyesült Államokban. A Hermann Park egy 445 hektáros városi park Houstonban, Texasban, a Múzeumi negyed déli végén. A San Jacinto Monument egy 567,31 láb magas oszlop a Houston Ship Channel csatornán, a jogi személyiség nélküli Harris megyében, Texas államban, körülbelül 16 mérföldre keletre Houston belvárosától. A Miller Outdoor Theatre egy szabadtéri előadóművészeti színház Houstonban, Texasban. A Houston Zoo egy 55 hektáros állatkert, amely a Hermann Parkban található Houstonban, Texas államban, az Egyesült Államokban.', 'repülő', 'repulo.svg', 'külföldi', 'A világ legnagyobb angol nyelvű városa, Houston', '7 nap', 13, 'Amerika', 'Texas', 'Houston', 'Last minute', 1000000, '18 óra 25 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Space Central Houston, Discovery Green, Houstoni Természettudományi Múzeum, Hermann Park, San Jacinto Museum of History, Miller Outdoor Theatre, Houston Zoo'),
(14, 'Amerika', 'Kalifornia', 'San Diego', 'sandiego1-min.jpg', 'A Seaport Village egy vízparti bevásárló- és étkezőkomplexum a San Diego-öböl szomszédságában, San Diego belvárosában, Kaliforniában. A Balboa Park egy 1200 hektáros történelmi városi kulturális park San Diego-ban, Kaliforniában, az Egyesült Államokban. A Birch Aquarium at Scripps egy akvárium és a San Diego-i Kaliforniai Egyetem Scripps Oceanográfiai Intézetének nyilvános információs központja. A USS Midway Museum egy történelmi haditengerészeti repülőgép-hordozó múzeum, amely a kaliforniai San Diego belvárosában, a Navy Piernél található. A San Diego-i Állatkert egy állatkert Kaliforniában, San Diégóban. A világ egyik leghíresebb állatkertje. Több mint 650 faj, kb. 3700 egyede él itt. Területe 40 hektár.', 'repülő', 'repulo.svg', 'külföldi', 'Napfényes Kaliforniai utazás', '5 nap', 14, 'Amerika', 'Kalifornia', 'San Diego', 'Városlátogatás', 900000, '21 óra 50 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Seaport Village, Balboa Park, Birch Aquarium at Scripps Institution of Oceanography, USS Midway Museum, San Diego Állatkert'),
(15, 'Amerika', 'Nevada', 'Las Vegas', 'lasvegas1-min.jpg', 'A High Roller egy 550 láb magas, 520 láb átmérőjű óriási óriáskerék a Las Vegas Strip-en, Paradise-ban. Az elegáns kaszinóhotelekkel szegélyezett, neonfénnyel átitatott Strip Las Vegas elválaszthatatlan része. A kaszinókhoz hasonlóan a hatalmas hotelkomplexumokban is számos különböző bolt és étterem – az általánostól a luxusig – áll a vendégek rendelkezésére, és koncerteket, vígjátékokat, cirkuszi bemutatókat felvonultató színpadok kínálnak szórakozási lehetőséget. A szökőkút egy 3,2 hektáros, mesterséges tavon található, és bár a városi legendák szerint a hotel szennyvizét vezetik el ide, ez nem igaz. A tavat egy édesvizű kút táplálja, amit akkoriban fúrtak, amikor a területen még egy golfpálya működött – ezzel locsolták a füvet. ', 'repülő', 'repulo.svg', 'külföldi', 'Las Vegas, a világ legfényesebb városa', '3 nap', 15, 'Amerika', 'Nevada', 'Las Vegas', 'Last minute', 3000000, '19 óra 50 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Caesars Palace, High Roller, The STRAT Hotel, Casino & SkyPod, The Mirage'),
(16, 'Amerika', 'Egyesült Államok', 'Grand Canyon', 'grandcanyon1-min.jpg', 'A Yavapai Pointnál, a kanyon peremének szélén található Yavapai Geológiai Múzeum az egyik legjobb kilátópontot kínálja a Grand Canyon geológiájának áttekintésére. A festői Remete út a falu történelmi negyedének nyugati oldalán kezdődik. Az út a kanyon peremét követi 11 km-en keresztül a Hermits Rest-hez és a Remete-ösvényhez. A Desert View park keleti bejárata a nap 24 órájában, a hét minden napján nyitva tart. ', 'repülő', 'repulo.svg', 'külföldi', 'Grand-canyon a kortalan szépség', '3 nap', 16, 'Amerika', 'Egyesült Államok', 'Grand Canyon', 'Last minute', 600000, '7 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Geológiai Múzeum, Hermit Road Drive,Desert View Őrtorony, Bright Angel túraútvonal'),
(17, 'Európa', 'Lengyelország', 'Kiry', 'kiry1-min.jpg', 'Lengyelország természeti adottságai miatt tökéletes a túrázás illetve hegymászás kedvelőinek. Az emberi környezet szennyezés által nem érintett természet csodái minden felé megtalálhatóak. ', 'autó', 'auto.svg', 'külföldi', '5 napos nyaralás a friss hegyi levegőben, Lengyelországban', '5 nap', 17, 'Europa', 'Lengyelorszag', 'Kiry', 'Last minute', 300000, '7 óra', 'Makó posta utca 4-6', 'Túrák illetve hegymászások'),
(18, 'Ázsia', 'Szigetország', 'Srí Lanka', 'srilanka1-min.jpg', ' Természetes szépségei és kulturális öröksége miatt Srí Lanka az egyik legkedveltebb utazási célpont a turisták körében.Korábbi nevén Ceylon az Indiai-óceán északi részén található szigetország. A Pinnawala Elephant Orphanage egy vad ázsiai elefántok fogságban tenyésztésére és megőrzésére szolgáló intézet, amely Pinnawala faluban található.Nuwara Eliya egy város Srí Lanka központi tartományának dombvidékén.A gyönyörű Arugam-öböl, egy hold alakú, aranyszínű homokos fodrozódás, ahol egy híres szörfös pont található, amelyet sokan az ország legjobb szörfös helyének tartanak. A Yala Nemzeti Park Srí Lanka leglátogatottabb és második legnagyobb nemzeti parkja.', 'repülő', 'repulo.svg', 'külföldi', 'Fedezze fel az India-óceánban elterülő, könnycsepp alakú kis szigetet!', '5 nap', 18, 'Azsia', 'Szigetorszag', 'Sri Lanka', 'Tengerparti nyaralás', 6000000, '12 óra 55 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Pinnawala Elefántrezervátum, Nuwara Eliya, Arugam-öböl, Yala Nemzeti Park, Érintetlen szigetvilág'),
(19, 'Ázsia', 'Thaiföld', 'Bangkok', 'bangkok1-min.jpg', 'Bangkok vagy thai nyelven Krung Thep Thaiföld fővárosa, s egyben legnagyobb városa is.\r\nWat Pho, Fekvő Buddha Temploma, Bangkok egyik legrégebbi temploma, amely már azelőtt létezett, hogy I. Ráma király fővárosként megalapította. A Wat Arun, közismert nevén a “Hajnal temploma”, egyike az első osztályú királyi templomok legmagasabb osztályába tartozó hat templomnak, és ezért Thaiföld egyik legtiszteletreméltóbb temploma. Az Arany Buddha, Wat Traimit Wittharayam Worawiharn templom Bangkok kínai negyedében, a Yaowarat út mellett található, ahol a világ legnagyobb tömör arany Buddha ábrázolását láthatjuk. A Nemzeti Múzeum három kiállítótérből áll. A díszes Siwamokhaphiman teremben látható a Ram Khamhaeng felirat, az első thai írásos nyelvemlék. A Jim Thompson Ház egy múzeum Bangkok központjában , Thaiföldön , és Jim Thompson amerikai üzletember és építész , a múzeum tervezője és egykori tulajdonosa művészeti gyűjteményének ad otthont . ', 'repülő', 'repulo.svg', 'külföldi', 'Látogasd meg Thaiföld misztikus, ősi műemlékeit!', '7 nap', 19, 'Azsia', 'Thaiföld', 'Bangkok', 'Last minute', 5000000, '15 óra 30 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Grand Palace, Wat Pho – A fekvő Buddha temploma, Wat Arun – A Hajnal, Wat Traimit - Az arany Buddha temploma, Bankoki Nemzeti Múzeum, Jim Thomspon Ház, Úszópiacok'),
(20, 'Afrika', 'Tanzánia', 'Zanzibár', 'zanzibar1-min.jpg', 'Zanzibár Tanzániához tartozó szigetcsoport Afrika keleti partjainál. Lakossága 1,07 millió fő. Stone Town az egyik legérdekesebb program a szigeten, maga a főváros. Számos láttnivalót találhatunk itt. Az Old Fort egy régi erőd (szuahéliül: Boma la Kale la Zanzibar), más néven arab erőd és más néven egy erődítmény, amely Zanzibár fővárosában, Stone Townban található. Az erőddel szemben van a Forodhani kert, amely népszerű park a városrészben. Nem kell nagy területűre gondolni, de sok kifőzdénél kóstolhatjuk meg a helyi finomságokat. A Csodák háza Zanzibár szultánjainak a palotája volt, most a Művészeti Múzeum otthona. Sokan nem tudják, de Zanzibáron született Freddy Mercury. Emlékét a Stone Town-ban található Freddy Mercury Múzeum ápolja, ahol rengeteg fénykép, videó és személyes tárgy látható. Az egyházi épületek közül az Anglikán katedrális a legszebb. A templom belül is nagyon szép, érdemes az oltárát megcsodálni.Zanzibár a régió egyik legnagyobb rabszolgatartó helye volt. Ezt örökíti meg a Rabszolgapiac emlékmű (Slave Chambers) és a mellette lévő épület. A föld alatt rabszolgakamrák is vannak.', 'repülő', 'repulo.svg', 'külföldi', 'Pálmafákkal teli homokos partra vágysz? Irány Zanzibár!', '7 nap', 20, 'Afrika', 'Tanzania', 'Zanzibar', 'Tengerparti nyaralás', 3000000, '1 nap 6 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Stone Town, Old Fort,  Forodhani kert, Csodák háza, Freddy Mercury Múzeum, Anglikán katedrális, Rabszolgapiac emlékmű'),
(21, 'Európa ', 'Montenegró', 'Herceg novi', 'hercegnovi1-min.jpg', 'Herceg Novi város és község Montenegróban, az Adriai-tenger partján. A mintegy 16 000 lakosú község Európa-szerte ismert és népszerű üdülőhely. A Kanli Kula (Véres torony) erődöt 1487-ben a törökök építették, Herceg Novi városnak a legészakibb részén foglal helyet és a város összetett várrendszerének az egyik eleme, ami védelmi szerepet töltött be és börtönként is használták. A Tengeri erődöt (Forte Mare) a 14. században építették, később a törökök, majd az osztrákok is átépítették. Ma szabadtéri színház működik benne, augusztus elején filmfesztiválnak ad helyet.A Durmitor hegyei Montenegró északi részén húzódnak, a határhoz közel. A Durmitor legmagasabb csúcsa, a Bobotov Kuk. A Savina kolostor egy szerb ortodox kolostor, amely három templomból áll Herceg Novi város közelében, a Kotori-öbölben, sűrű mediterrán növényzetben, az egyik legszélesebb körben. ', 'repülő', 'repulo.svg', 'külföldi', 'Unod az egyszerű nyaralásokat? Gyere el és fedezd fel a Balkán-félszigetet!', '5 nap', 21, 'Europa ', 'Montenegro', 'Herceg novi', 'Tengerparti nyaralás', 1000000, '19 óra 45 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Kanli kula, Forte Mare, Old Town, Durmitor, Savina Monastery, Montenegro'),
(22, 'Európa ', 'Ausztria', 'Schneeberg', 'schneeberg1-min.jpg', 'A Schneeberg Alsó-Ausztria legmagasabb hegycsúcsa az Alpok hegységben, egyben az Alpok fő vonulatának utolsó keleti tagja, amely magasságával meghaladja a 2000 métert. A hegység látképe Észak-Burgenlandból, Bécsből és az Alpokalja tájegységről is könnyen megfigyelhető Kőszegtől Sopronig. Magassága 2076m. Schneeberg közeli távolsága miatt számos egynapos túrázás célpontja, csakúgy, mint az Alpok. Az egyik legnépszerűbb program, hogy egy hétvége keretében járják be mindkét célpontot a kirándulni vágyók.', 'repülő', 'repulo.svg', 'külföldi', 'Szeret túrázni? Másszon fel Alsó-Ausztria legmagasabb hegycsúcsára, a Schneebergre!', '3 nap', 22, 'Europa ', 'Ausztria', 'Schneeberg', 'Last minute', 500000, '4 óra 55 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Hegymászás'),
(23, 'Európa', 'Olaszország', 'Róma', 'roma1-min.jpg', 'Róma Olaszország fővárosa, Lazio régió központja, a hajdani Római Birodalom központja. Az ország legnagyobb és legnépesebb városa 1285,3 km²-en mintegy 2,8 millió lakossal, az Európai Unió harmadik legnépesebb városa.A firenzei dóm, olaszul Cattedrale di Santa Maria del Fiore, a Firenzei főegyházmegye főtemploma. A vatikáni Szent Péter-bazilika a római katolikus egyház első számú szentélye, a négy nagy bazilika egyike. A Colosseum az ókori Róma hatalmas amfiteátruma, ma pedig nevezetes látványossága a városnak. A Trevi-kút Róma egyik legnagyobb és világszinten legismertebb szökőkútja. A barokk szökőkutat a 17. században építette Niccolò Salvi a Poli-palota déli homlokzatán. ', 'repülő', 'repulo.svg', 'külföldi', 'Róma, az örök város', '5 nap', 23, 'Europa', 'Olaszorszag', 'Roma', 'Tengerparti nyaralás', 2000000, '5 óra 40 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Firenzei dóm, Szent Péter-bazilika, Vatikán, Colosseum, Trevi-kút'),
(24, 'Európa ', 'Görögország', 'Athén', 'athen1-min.jpg', 'Athén Görögország fővárosa. A modern Athén hatalmas, kozmopolita jellegű város; az ókori Athén nagy hatalmú városállam és jelentős tudományos központ volt. Az athéni Akropolisz Görögországban található, az ókorból származó épületegyüttes, az európai civilizáció és demokrácia jelképe, az emberi alkotógéniusz egyik legnagyobb alkotása. A Nemzeti Kert egy 15,5 hektáros nyilvános park a görög főváros, Athén központjában. A Kolonaki és Pangrati kerületek között található, közvetlenül a görög parlament épülete mögött, és dél felé halad a Zappeion területére, szemben az 1896-os Olimpiai Játékok Panathenaiko vagy Kalimarmaro Olimpiai Stadionjával. Az Athéni Nemzeti Obszervatórium egy kutatóintézet Athénban, Görögországban. Az 1842-ben alapított intézmény Görögország legrégebbi kutatási alapja. Az athéni Stadiou utcában található régi Parlament épülete 1875 és 1935 között a görög parlamentnek adott otthont. Jelenleg az ország Nemzeti Történeti Múzeumának ad otthont.  ', 'autó', 'auto.svg', 'külföldi', 'Az ókori világ központja, Athén', '5 nap', 24, 'Europa ', 'Gorogorszag', 'Athen', 'Tengerparti nyaralás', 2000000, '2 óra 5 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Akropolisz, Acropolis Museum, Nemzeti Kert, National Observatory of Athens, Old Parliament, hajó út'),
(25, 'Európa', 'Norvégia', 'Flatbostad', 'flatbostad1-min.jpg', 'Viosen egy idilli hely, amely gyönyörűen fekszik a Snåsavatnet-tó legvégén. A strand és az út között gyönyörű homokos strand, nyári kávézó, hangulatos épületek és egy szép nyírfa fasor található. Múzeum\r\nGjerstadhuset Joralf Gjerstad gyermekkori otthona, amely 2012-ben nyitotta meg kapuit a nagyközönség előtt. A megjelenés gyakorlatilag megegyezik azzal, ahogyan egész gyermekkorában kinézett. A ház Berg Nedre városából származik az 1800-as évek közepéről, de 1924-ben költöztették át jelenlegi helyére.                          ', 'repülő', 'repulo.svg', 'külföldi', 'Norvégia felejthetetlen látnivalói', '4 nap', 25, 'Europa', 'Norvegia', 'Flatbostad', 'Tengerparti nyaralás', 1000000, '12 óra 55 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Park ved Semskaia, Viosen, Gjerstadhuset,'),
(26, 'Ázsia', 'Kína', 'Sanghai', 'sanghai1-min.jpg', 'Sanghaj Kína legnagyobb ipari városa, a Távol-Kelet egyik gazdasági központja, tartományi jogú város a kelet-kínai tengerpart középső részén, a Jangce torkolatvidékén, a folyam Huangpu nevű kis mellékfolyójának két partján található. A Yu garden komplexum egyik központi épülete a Huxinting teaház. Kína legrégebbi teaháza fa oszlopokon áll egy mesterséges tó közepén és egy cikk-cakkos hídon közelíthető meg, mely a kínai hiedelmek szerint távol tartja a pavilontól a szellemeket. A bár a Captain Hostel lobbyjából közelíthető meg, lifttel a legfelső emeletre, majd még 1-2 emelet lépcsőn és megérkezünk a tetőteraszra. A hostel a Bund második épület sorában helyezkedik el, de szerencsére nem takarja semmi a kilátást a folyó és Pudong felhőkarcolói felé.\r\nAz East Nanjing sétálóutcában ehetünk utcáról, kézben pálcikás húst (chuan), vehetünk gyönyörű mangót és más friss gyümölcsöket, remek a bao felhozatal, az alagsorban pedig van pár leülős hely is, ahol kiszolgálnak. Nagy a pörgés, minden frissen készül, 20-40 yuanból (800-1500 Ft) ehetünk ellenőrzött körülmények között készült gusztusos street foodot. \r\nA Jing’an Sangaj talán legismertebb buddhista temploma, illetve a legtöbbet fotózott épülete, hiszen nagyon látványosan ékelődik be a környező toronyházak közé.  A Pudong városrészben található a legnépszerűbb Ritz Carlton tetőterasz, Inenn rá lehet láttni a Oriental Pearl Tower-re.', 'repülő', 'repulo.svg', 'külföldi', 'Tekintsd meg  a világ egyik legnagyobb városát, Sanghait!', '5 nap', 26, 'Azsia', 'Kina', 'Sanghai', 'Városlátogatás', 2000000, '1 nap 2 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Huxinting teaház, The Captain bar, East Nanjing road food court, Jing’an templom, Ritz-Carlton Pudong'),
(27, 'Ázsia', 'Korea', 'Busan', 'busan1-min.jpg', 'A Busan Puszan Dél-Korea második legnagyobb városa, mely a Koreai-félsziget délkeleti részén, a Japán-tenger partján található. A Gamcheon Culture Village festői látványosság színes házakkal, \r\nfalfestményekkel, üzletekkel és kávézókkal. A Busani Művészeti Múzeum a művészeti tevékenységeket népszerűsíti kulturális területén annak érdekében, hogy növelje a város polgárainak figyelmét a művészet és a kultúra iránt. Hozzájárul az ország kulturális színterének fejlődéséhez, és sokféle műalkotást\r\n és művészi tevékenységet támogat, hogy a közönség könnyen hozzáférhessen a művészetekhez, valamint bővíti a művészbázist, élénkíti a művészetalkotást. A Beomeosa (a nirvánai hal temploma) a Koreai Buddhizmus Jogye Rendjének főtemploma Cheongnyong-dongban, Geumjeong-gu-ban, Busanban, Dél-Koreában. Geumjeongsan lejtőin épült, ez az ország egyik legismertebb városi temploma. A Sea Life Busan Aquarium egy akvárium a dél-koreai Haeundae Beach területén. A Yongdusan Park egy park a dél-koreai Busan állambeli Jung-gu városában. Itt található a 120 méter magas Busan-torony.', 'repülő', 'repulo.svg', 'külföldi', 'A filmfesztiválók hazája, Busan', '5 nap', 27, 'Azsia', 'Korea', 'Busan', 'Last minute', 1500000, '15 óra 10 perc ', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Gamcheon Culture Village,  Busan Museum of Art , Beomeosa, SEALIFE Busan Aquarium, Yongdusan Park'),
(28, 'Ázsia', 'Törökország', 'Isztambul', 'isztambul1-min.jpg', 'Isztambul 15 milliós agglomerációs lakosságával a Föld egyik legnépesebb, és Törökország legnépesebb települése. Az Hagia Szophia bizánci építésű hajdani ortodox bazilika Isztambulban, Törökországban. 1453-tól, Konstantinápoly oszmán kézre kerülésétől kezdve 1934-ig mecsetként használták, 1934 és 2020 között múzeumként volt látogatható. A Galata-torony az Aranyszarv-öböltől északra, Beyoğluban található. Isztambul egyik meghatározó épülete. Krisztus-torony néven is ismert. A Szulejmán-mecset a második legnagyobb mecset Isztambulban. A híres török építész, Szinán építette I. Szulejmán szultán parancsára Isztambul harmadik hegyére. Az építkezés 1550-ben kezdődött, és 7 évig tartott. Az Elsüllyedt Palota vagy Bazilika Ciszterna az egyik legnagyobb a több száz hajdani víztározó közül, melyek ma is ott fekszenek Isztambul alatt. A Topkapı palota Isztambulban található, 1465 és 1853 között az Oszmán Birodalom adminisztratív központja volt. Építésére II. Mehmed szultán  adott utasítást 1459-ben és 1465-ben fejezték be. A palota az Aranyszarv-öböl és a Márvány-tenger között fekszik az ún. Szeráj Csúcson.', 'repülő', 'repulo.svg', 'külföldi', 'Csodák városa, Isztambul', '5 nap', 28, 'Azsia', 'Torokorszag', 'Isztambul', 'Last minute', 1000000, '5 óra 50 perc ', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Hagia Szophia, Galata-torony, Szulejmán-mecset, Elsüllyedt Palota, Topkapı palota'),
(29, 'Európa', 'Svájc', 'Flüelen', 'fluelen1-min.jpg', 'Számos túra illetve hegymászási lehetőség található Flüelen területén. Luftseilbahn Oberaxen egy hegyi libegő, mely remek családi program lehet az utazás során. A Reuss Delta Badi and fireplaces Park egy állami Park Svájcban. A Reuss-delta állat- és növényvilága, azaz állat- és növényvilága rendkívül változatos. A seedorfi \"Schanz\" körzetben található tanösvény lehetővé teszi az érdeklődők számára, hogy minél közelebbről megtapasztalják és megfigyeljék az állat- és növényvilágot.', 'repülő', 'repulo.svg', 'külföldi', 'Flüelen, számos túra lehetőséggel', '4 nap', 29, 'Europa', 'Svajc', 'Fluelen', 'Last minute', 1000000, '5 óra 20 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Túra illetve hegymászási lehetőség,\r\nReuss Delta Badi and fireplaces Park,\r\nLuftseilbahn Oberaxen,\r\nGitschen hegycsúcs'),
(30, 'Afrika', 'Marokkó', 'Casablanca', 'casablanca1-min.jpg', 'Casablanca város Marokkó nyugati részén, az Atlanti-óceán partján. A város Marokkó gazdasági fővárosa; itt található az ország fő kikötője és haditengerészeti központja. A Place Mohamed V a Casablanca központja. A város számos fontos hivatalos épülete, köztük a főposta, az igazságügyi palota, a prefektúra, a francia konzulátus és a fő Marokkói Bank. A Casablanca\'s Corniche (tengerparti negyed) az Ain Diab külvárosában, a város örvénye azoknak, akik szeretnének látni és látni. A partok nagy része ma már luxus szállodák és éttermek otthona. A Casablanca nyüzsgő központi piacát olyan turisták számára kell elengedni, akik a városi élet közepén akarják magukat bevinni.', 'repülő', 'repulo.svg', 'külföldi', 'Marokkó mesés városa, Casablanca', '3 nap', 30, 'Afrika', 'Marokko', 'Casablanca', 'Városlátogatás', 1000000, '7 óra 25 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Place Mohamed V, Corniche, Központi piac'),
(31, 'Afrika', 'Madagaszkár', 'Antananarivo', 'antananarivo1-min.jpg', 'Antananarivo Madagaszkár fővárosa, az azonos nevű megyében található. Rova, a Rova (királynői palotaegyüttes), melynek építését 1650 körül, Andrianjaka merina király kezdte. A Tsimbazaza Botanikus és Állatkert, a rövid Tsimbazaza Zoo egy állat- és botanikus kert a madagaszkári Antananarivo városában található Tsimbazaza szomszédságában, a Madagaszkári Nemzetgyűlés épületétől északra.', 'repülő', 'repulo.svg', 'külföldi', 'Madagaszkár fővárosa, Antananarivo', '2 nap', 31, 'Afrika', 'Madagaszkar', 'Antananarivo', 'last minute', 1500000, '2 nap 1 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Rova, Tsimbazaza Zoo and Botanical Gardens'),
(32, 'Afrika', 'Tunézia', 'Sousse', 'sousse1-min.jpg', 'Sousse egy város Tunéziában. Ez a kiváló múzeum tartalmazza a legnagyobb gyűjteménye antikvitás az országban után Tunisz \" Bardo Múzeum. Sousse erődje-szerű nagy mecsetje az AD 851-ben épült, néhány évvel az Aghlabids által a város újbóli megalapítása után. Ha kedveled a vásárlási helyet, és nem bánod a szórakoztató alkudozással, akkor a medina souk kerületének helye kell. Ez a célzott üdülőkomplexum, ahol sok látogató marad a napfényes és a tengerparton.', 'repülő', 'repulo.svg', 'külföldi', 'Pihenés Sousse városában', '1 hetes', 32, 'Afrika', 'Tunezia', 'Sousse', 'tengerparti nyaralás', 4000000, '10 óra 35 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Sousse Régészeti Múzeum, Sousse Nagy Mecset, Souk kerület, Port el Kantaoui'),
(33, 'Afrika', 'Dél-afrikai Köztársaság', 'Fokváros', 'fokvaros1-min.jpg', 'Fokváros a Dél-afrikai Köztársaság törvényhozási fővárosa és második legnépesebb települése, Nyugati Fokföld tartomány, a dél-afrikai parlament és sok más kormányhivatal székhelye. A Victoria & Alfred Waterfront Fokvárosban az Atlanti-óceán partján, a Table Bay kikötőben, Fokváros városában és a Table Mountainben található. A Kirstenbosch egy fontos botanikus kert, amely Fokvárosban, a Table Mountain keleti lábánál található. A Jóreménység foka egy sziklás földnyelv Dél-Afrikában az Atlanti-óceán partján. A Two Oceans Aquarium egy akvárium, amely a Victoria & Alfred vízparton található Fokvárosban, Western Cape-ban, Dél-Afrikában.', 'repülő', 'repulo.svg', 'külföldi', 'Fokváros felsőfokon', '4 nap', 33, 'Afrika', 'Del-afrikai Koztarsasag', 'Fokvaros', 'last minute', 3000000, '1 nap 3 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'V&A Waterfront, Kirstenbosch National Botanical Garden, Jóreménység foka, Two Oceans Aquarium'),
(34, 'Európa', 'Bulgária', 'Szófia', 'szofia1-min.jpg', 'Szófia, Bulgária fővárosa, és egyben a legnépesebb városa. Az Alekszandr Nyevszkij-székesegyház egy bolgár ortodox templom Szófiában. A Bojana-templom középkori bolgár ortodox templom Szófiában, a Vitosa lábánál, a Bojana-negyedben. A Borisova gradina vagy Knyaz-Borisova gradina a legrégebbi és legismertebb park Szófiában, Bulgária fővárosában. A Bulgária fővárosában, Szófiában található Nemzeti Kultúrpalota Délkelet-Európa legnagyobb, többfunkciós konferencia- és kiállítási központja.', 'autó', 'auto.svg', 'külföldi', '5 napos nyaralás Szófiában', '5 nap', 34, 'Europa', 'Bulgaria', 'Szofia', 'városlátogatás', 1000000, '7 óra 20 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Alekszandr Nyevszkij-székesegyház, Bojana-templom, Borisova Gradina Park, Nemzeti Kultúrpalota'),
(35, 'Ázsia', 'India', 'Agra', 'agra1-min.jpg', 'Agra város India északi részén, a Jamuna folyó partján fekszik, Uttar Prades tagállamának nyugati részén. A Tádzs Mahal az indiai Agrában, a Jamuna folyó partján található muszlim mauzóleum elnevezése, amely valójában egy teljes épületkomplexumot takar, ennek része maga a fehér márvány síremlék is. A Vörös Erőd egy UNESCO-védelem alá tartozó világörökségi helyszín India Agra városában. I\'timād-ud-Daulah sírja egy mogul mauzóleum Agra városában, az indiai Uttar Pradesh államban. Akbar sírja Akbar mogul császár sírja.', 'repülő', 'repulo.svg', 'külföldi', 'Agra, a Tadzs Mahal városa', '3 nap', 35, 'Azsia', 'India', 'Agra', 'last minute', 900000, '10 óra 10 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Tádzs Mahal, Vörös Erőd, Itmad-ud-Daula, Tomb of Akbar the Great'),
(36, 'Európa ', 'Spanyolország ', 'Madrid', 'madrid1.jpg', 'Madrid Spanyolország fővárosa, legnagyobb városa és az azonos nevű tartomány székhelye. Területe 607 km². Lakosainak száma megközelítőleg 3,3 millió, elővárosokkal együtt pedig körülbelül 6,3 millió fő.   Madrid árkádos főtere igazán különleges hangulatot áraszt. A 17. századból származó szimmetrikus, négyszöglet alakú teret egységes építészetű, háromemeletes lakóépületekkel vették körül. A lakások erkélyei, szám szerint összesen 237, mind a tér felé néznek. A madridi királyi palotát az egyik legszebb európai palotaként tartják számon. A palota egy korábbi vár helyére épült, amit egy tűzvész pusztított el. A Gran Vía az egyik legismertebb és legnépszerűbb út a Spanyolországba látogató turisták között. Az út 1910-ben kezdődött építkezési munkálatainak legfőbb célja egy szórakoztató központ kialakítása volt, mozikkal, színházakkal, klubokkal és bárokkal ellátva.  A Buen Retiro, avagy magyarra fordítva a kellemes visszavonulás, egy bájos park Madrid belvárosában. A parkban gyönyörű szobrokkal, galériákkal, egy lélegzetelállító kristálypalotával és egy idilli tóval is találkozhatunk, ahol akár csónakba ülve élvezhetjük a park meghitt hangulatát.  A Prado múzeum a 12. és a 20. század közötti neves spanyol, olasz, flamand és német művészek alkotásait tudhatja magáénak, ezzel ma a világ egyik legtekintélyesebb művészeti múzeuma lett.', 'repülő', 'repulo.svg', 'külföldi', 'Madrid városlátogatás', '5 nap', 36, 'Európa ', 'Spanyolország ', 'Madrid', 'városlátogatás', 500000, '3 óra 30 perc', 'Budapest', 'Plaza Mayor, Királyi palota, Gran Vía, Buen Retiro park , Museo del Prado'),
(37, 'Ausztrália', 'Ausztrália', 'Melbourne', 'melbourne1-min.jpg', 'Melbourne ausztrál város, Victoria állam fővárosa, Ausztrália és Óceánia második legnagyobb városa. A Royal Botanic Gardens valójában két viktoriánus helyszínen található: a 35 hektáros helyszín a városban, és a hatalmas, 363 hektáros Cranbourne-i királyi botanikus kert, amely Melbourne városától 55 km-re délkeletre található. Az Ausztrál Sportmúzeum az ausztrál sportnak szentelt múzeum, és a Melbourne-i krikettpályán belül található, Melbourne-ben, Ausztráliában. A 1861-ben létrehozott Victoria Nemzeti Galéria nagy művészek festményeit mutatja be. Közülük említésre méltó Anthony Van Dyck, Paolo Uccello, Peter Paul Rubens, Rembrandt, Giovanni Battista Tiepolo, Paolo Veronese, DossoDossi, Claude Monet, Pablo Picasso.  Az Eureka Tower Melbourne legmagasabb épülete. Országos szinten csak a második, mivel a Gold Coast-i Q1 Tower 22 méterrel magasabb. A Föld 35. legmagasabb felhőkarcolójaként tartjuk számon.  A Királyi Kiállítási Épület a Melbourne-i Carlton-kertben található, a város üzleti negyedének északkeleti szélén.', 'repülő', 'repulo.svg', 'külföldi', 'Fedezze fel Ausztrália legszebb kertjeit Melbourneben', '5 nap', 37, 'Ausztralia', 'Ausztralia', 'Melbourne', 'Last minute', 700000, '1 nap 13 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Királyi Botanikus Kertek,  Melbourne Cricket Ground és a Nemzeti Sportmúzeum,  Victoria Nemzeti Galéria,  Eureka torony,  Melbourne Múzeum és a Royal Exhibition Building'),
(38, 'Ausztrália', 'New Zeland', 'Auckland', 'auckland1-min.jpg', 'Auckland Új-Zéland legnagyobb városa, az Északi-szigeten helyezkedik el. A város népessége a 2008-as adatok szerint 438 100, azonban elővárosaival együtt 1,4 millió ember él itt, az ország lakosságának 31%-a.  A Sky Tower az új-zélandi Aucklandben épült 328 méter magas kommunikációs és megfigyelőtorony.  Az Auckland War Memorial Museum nevétől eltérően Új-Zéland legnagyobb városának általános jellegű történelmi, kulturális, hadtörténeti, természettudományos múzeuma, az ország legfontosabb múzeumainak egyike. A Maungakiekie / One Tree Hill egy 182 méteres vulkáni csúcs és Tūpuna Maunga Aucklandben, Új-Zélandon. Aucklandi Művészeti Galéria Auckland központi üzleti negyede területén helyezkedik el. A környék jól ismert a következőknek köszönhetően: barátságos közeg, múzeumok, kávézók. Amennyiben szeretnéd felfedezni a helyi látnivalókat és programlehetőségeket, mindenképp látogass el Kawakawa Bay vagy Queen Street bevásárlónegyed helyszínére.', 'repülő', 'repulo.svg', 'külföldi', 'A hosszú, fehér felhő földje, Auckland', '4 nap', 38, 'Ausztralia', 'New Zeland', 'Auckland', 'Városlátogatás', 600000, '1 nap 17 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Auckland Sky Tower, Auckland Háborús Emlékmúzeum, Egy Tree Hill ,  Auckland Művészeti Galéria'),
(39, 'Ausztrália', 'Fidzsi-szigetek', 'Suva', 'suva1-min.jpg', 'Suva, a Csendes-óceáni Fidzsi-szigetek fővárosa a korallzátonyoktól szegélyezett Viti Levu délkeleti partjain épült. A Fidzsi Múzeum egy múzeum a Fidzsi-szigeteki Suva városában, a főváros botanikus kertjében, a Thurston Gardensben. A Thurston Gardens a Fidzsi-szigetek botanikus kertje. Korábban Suva Botanical Gardens néven ismerték. A Sacred Heart Cathedral egy katolikus templom Szarajevóban; Szarajevói székesegyházként emlegetik, Bosznia-Hercegovina legnagyobb katedrálisa. A Municipal Handicraft Center egy bolha- és utcai piac, amely Suva városában, Viti Levuban található. A Városi Kézműves Központ címe: Municipal Car Park, Suva, Viti Levu Fiji. Ha a helyszínre szeretne menni, vagy bármilyen szolgáltatásra van szüksége, közvetlenül kapcsolatba léphet velük. ', 'repülő', 'repulo.svg', 'külföldi', 'Egzotikus utazás? Fidzsi-szigetek!', '5 nap', 39, 'Ausztralia', 'Fidzsi-szigetek', 'Suva', 'Last minute', 700000, '1 nap 17 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Fiji Museum, Thurston Gardens, Sacred Heart Cathedral , Municipal Handicraft Centre, Suva Municipal Market'),
(40, 'Ausztralia', 'Palau', 'Koror', 'koror1-min.jpg', 'Koror település Palau legnagyobb szigetén, Babelthuap szigeten. A szigetország legnagyobb és legnépesebb települése, Palau vezető központja, 2006-ig fővárosa. A Sziklák Szűzanya egyike annak a két szigetnek, amely a Perast partjainál található a Kotori-öbölben. A Njegoš mauzóleum a Lovćen-hegy tetején található Petar II Petrović-Njegoš mauzóleuma. A mauzóleum a közeli Cetinjétől huszonegy kilométerre, aszfaltos úton található, Ivan Meštrović horvát szobrász ötlete alapján épült. A kotori Szent Trifun-székesegyház egyike Montenegró két római katolikus székesegyházának, a Kotori egyházmegye székhelye. A Lovcen Nemzeti Park a Dinara-Alpok sziklás régiójában található. A Lovcen hegy lejtői meredeken, Budva tengerparti régiójából és Cetinje nyugati részéből emelkednek ki. A park délről a Budva – Cetinje autópályával, északról pedig a régi Kotori úttal határos. Különös múzeum a macskákhoz kapcsolódó emléktárgyak, nyomtatványok és régies műtárgyak gyűjteményével. ', 'repülő', 'repulo.svg', 'külföldi', 'Palau, egy csodálatos paradicsomi sziget', '5 nap', 40, 'Ausztralia', 'Palau', 'Koror', 'Városlátogatás', 800000, '1 óra 20 perc ', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', '(Our Lady of the Rocks, Njegos Mausoleum, St. Tryphon\'s Cathedral, Lovcen National Park ,Kotor Cats Museum');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak_kepek`
--

CREATE TABLE `utak_kepek` (
  `neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `darabszam` int(50) NOT NULL,
  `ut_id3` int(50) NOT NULL,
  `neve2` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak_kepek`
--

INSERT INTO `utak_kepek` (`neve`, `darabszam`, `ut_id3`, `neve2`) VALUES
('paris2-min.jpg', 2, 1, ''),
('marseille2-min.jpg', 2, 2, ''),
('lyon2-min.jpg', 2, 3, ''),
('budapest2-min.jpg', 2, 4, ''),
('pecs2-min.jpg', 2, 5, ''),
('balaton2-min.jpg', 2, 6, ''),
('mexiko2-min.jpg', 2, 7, ''),
('tokio2-min.jpg', 2, 8, ''),
('egyiptom2-min.jpg', 2, 9, ''),
('sydney2-min.jpg', 2, 10, ''),
('toronto2-min.jpg', 2, 11, ''),
('newyork2-min.jpg', 2, 12, ''),
('houston2-min.jpg', 2, 13, ''),
('sandiego2-min.jpg', 2, 14, ''),
('lasvegas2-min.jpg', 2, 15, ''),
('grandcanyon2-min.jpg', 2, 16, ''),
('kiry2-min.jpg', 2, 17, ''),
('srilanka2-min.jpg', 2, 18, ''),
('bangkok2-min.jpg', 2, 19, ''),
('zanzibar2-min.jpg', 2, 20, ''),
('hercegnovi2-min.jpg', 2, 21, ''),
('schneeberg2-min.jpg', 2, 22, ''),
('roma2-min.jpg', 2, 23, ''),
('athen2-min.jpg', 2, 24, ''),
('flatbostad2-min.jpg', 2, 25, ''),
('sanghai2-min.jpg', 2, 26, ''),
('busan2-min.jpg', 2, 27, ''),
('isztambul2-min.jpg', 2, 28, ''),
('fluelen2-min.jpg', 2, 29, ''),
('casablanca2-min.jpg', 2, 30, ''),
('antananarivo2-min.jpg', 2, 31, ''),
('sousse2-min.jpg', 2, 32, ''),
('fokvaros2-min.jpg', 2, 33, ''),
('szofia2-min.jpg', 2, 34, ''),
('agra2-min.jpg', 2, 35, ''),
('madrid2.jpg', 2, 36, ''),
('melbourne2-min.jpg', 2, 37, ''),
('auckland2-min.jpg', 2, 38, ''),
('suva2-min.jpg', 2, 39, ''),
('koror2-min.jpg', 2, 40, ''),
('paris3-min.jpg', 3, 1, ''),
('marseille3-min.jpg', 3, 2, ''),
('lyon3-min.jpg', 3, 3, ''),
('budapest3-min.jpg', 3, 4, ''),
('pecs3-min.jpg', 3, 5, ''),
('balaton3-min.jpg', 3, 6, ''),
('mexiko3-min.jpg', 3, 7, ''),
('tokio3-min.jpg', 3, 8, ''),
('egyiptom3-min.jpg', 3, 9, ''),
('sydney3-min.jpg', 3, 10, ''),
('toronto3-min.jpg', 3, 11, ''),
('newyork3-min.jpg', 3, 12, ''),
('houston3-min.jpg', 3, 13, ''),
('sandiego3-min.jpg', 3, 14, ''),
('lasvegas3-min.jpg', 3, 15, ''),
('grandcanyon3-min.jpg', 3, 16, ''),
('kiry3-min.jpg', 3, 17, ''),
('srilanka3-min.jpg', 3, 18, ''),
('bangkok3-min.jpg', 3, 19, ''),
('zanzibar3-min.jpg', 3, 20, ''),
('hercegnovi3-min.jpg', 3, 21, ''),
('schneeberg3-min.jpg', 3, 22, ''),
('roma3-min.jpg', 3, 23, ''),
('athen3-min.jpg', 3, 24, ''),
('flatbostad3-min.jpg', 3, 25, ''),
('sanghai3-min.jpg', 3, 26, ''),
('busan3-min.jpg', 3, 27, ''),
('isztambul3-min.jpg', 3, 28, ''),
('fluelen3-min.jpg', 3, 29, ''),
('casablanca3-min.jpg', 3, 30, ''),
('antananarivo3-min.jpg', 3, 31, ''),
('sousse3-min.jpg', 3, 32, ''),
('fokvaros3-min.jpg', 3, 33, ''),
('szofia3-min.jpg', 3, 34, ''),
('agra3-min.jpg', 3, 35, ''),
('madrid3.jpg', 3, 36, ''),
('melbourne3-min.jpg', 3, 37, ''),
('auckland3-min.jpg', 3, 38, ''),
('suva3-min.jpg', 3, 39, ''),
('koror3-min.jpg', 3, 40, ''),
('paris4-min.jpg', 4, 1, ''),
('marseille4-min.jpg', 4, 2, ''),
('lyon4-min.jpg', 4, 3, ''),
('budapest4-min.jpg', 4, 4, ''),
('pecs4-min.jpg', 4, 5, ''),
('balaton4-min.jpg', 4, 6, ''),
('mexiko4-min.jpg', 4, 7, ''),
('tokio4-min.jpg', 4, 8, ''),
('egyiptom4-min.jpg', 4, 9, ''),
('sydney4-min.jpg', 4, 10, ''),
('toronto4-min.jpg', 4, 11, ''),
('newyork4-min.jpg', 4, 12, ''),
('houston4-min.jpg', 4, 13, ''),
('sandiego4-min.jpg', 4, 14, ''),
('lasvegas4-min.jpg', 4, 15, ''),
('grandcanyon4-min.jpg', 4, 16, ''),
('kiry4-min.jpg', 4, 17, ''),
('srilanka4-min.jpg', 4, 18, ''),
('bangkok4-min.jpg', 4, 19, ''),
('zanzibar4-min.jpg', 4, 20, ''),
('hercegnovi4-min.jpg', 4, 21, ''),
('schneeberg4-min.jpg', 4, 22, ''),
('roma4-min.jpg', 4, 23, ''),
('athen4-min.jpg', 4, 24, ''),
('flatbostad4-min.jpg', 4, 25, ''),
('sanghai4-min.jpg', 4, 26, ''),
('busan4-min.jpg', 4, 27, ''),
('isztambul4-min.jpg', 4, 28, ''),
('fluelen4-min.jpg', 4, 29, ''),
('casablanca4-min.jpg', 4, 30, ''),
('antananarivo4-min.jpg', 4, 31, ''),
('sousse4-min.jpg', 4, 32, ''),
('fokvaros4-min.jpg', 4, 33, ''),
('szofia4-min.jpg', 4, 34, ''),
('agra4-min.jpg', 4, 35, ''),
('madrid4.jpg', 4, 36, ''),
('melbourne4-min.jpg', 4, 37, ''),
('auckland4-min.jpg', 4, 38, ''),
('suva4-min.jpg', 4, 39, ''),
('koror4-min.jpg', 4, 40, ''),
('paris5-min.jpg', 5, 1, ''),
('marseille5-min.jpg', 5, 2, ''),
('lyon5-min.jpg', 5, 3, ''),
('budapest5-min.jpg', 5, 4, ''),
('pecs5-min.jpg', 5, 5, ''),
('balaton5-min.jpg', 5, 6, ''),
('mexiko5-min.jpg', 5, 7, ''),
('tokio5-min.jpg', 5, 8, ''),
('egyiptom5-min.jpg', 5, 9, ''),
('sydney5-min.jpg', 5, 10, ''),
('toronto5-min.jpg', 5, 11, ''),
('newyork5-min.jpg', 5, 12, ''),
('houston5-min.jpg', 5, 13, ''),
('sandiego5-min.jpg', 5, 14, ''),
('lasvegas5-min.jpg', 5, 15, ''),
('kiry5-min.jpg', 5, 17, ''),
('wifi.svg', 5, 19, 'Wifi'),
('wifi.svg', 5, 20, 'Wifi'),
('hercegnovi5-min.jpg', 5, 21, ''),
('roma5-min.jpg', 5, 23, ''),
('athen5-min.jpg', 5, 24, ''),
('flatbostad5-min.jpg', 5, 25, ''),
('sanghai5-min.jpg', 5, 26, ''),
('busan5-min.jpg', 5, 27, ''),
('isztambul5-min.jpg', 5, 28, ''),
('fluelen5-min.jpg', 5, 29, ''),
('casablanca5-min.jpg', 5, 30, ''),
('antananarivo5-min.jpg', 5, 31, ''),
('sousse5-min.jpg', 5, 32, ''),
('fokvaros5-min.jpg', 5, 33, ''),
('szofia5-min.jpg', 5, 34, ''),
('agra5-min.jpg', 5, 35, ''),
('wifi.svg', 5, 36, 'Wifi'),
('melbourne5-min.jpg', 5, 37, ''),
('auckland5-min.jpg', 5, 38, ''),
('suva5-min.jpg', 5, 39, ''),
('koror5-min.jpg', 5, 40, ''),
('wifi.svg', 6, 1, 'Wifi'),
('wifi.svg', 6, 2, 'Wifi'),
('wifi.svg', 6, 3, 'Wifi'),
('wifi.svg', 6, 4, 'Wifi'),
('no_smoking.svg', 6, 5, 'Dohányzás mentes'),
('wifi.svg', 6, 6, 'Wifi'),
('wifi.svg', 6, 7, 'Wifi'),
('wifi.svg', 6, 8, 'Wifi'),
('wifi.svg', 6, 9, 'Wifi'),
('wifi.svg', 6, 10, 'Wifi'),
('wifi.svg', 6, 11, 'Wifi'),
('wifi.svg', 6, 12, 'Wifi'),
('wifi.svg', 6, 13, 'Wifi'),
('wifi.svg', 6, 14, 'Wifi'),
('wifi.svg', 6, 15, 'Wifi'),
('wifi.svg', 6, 16, 'Wifi'),
('wifi.svg', 6, 17, 'Wifi'),
('wifi.svg', 6, 18, 'Wifi'),
('no_smoking.svg', 6, 19, 'Dohányzás mentes'),
('no_smoking.svg', 6, 20, 'Dohányzás mentes'),
('wifi.svg', 6, 21, 'Wifi'),
('wifi.svg', 6, 22, 'Wifi'),
('wifi.svg', 6, 23, 'Wifi'),
('wifi.svg', 6, 24, 'Wifi'),
('wifi.svg', 6, 25, 'Wifi'),
('wifi.svg', 6, 26, 'Wifi'),
('wifi.svg', 6, 27, 'Wifi'),
('wifi.svg', 6, 28, 'Wifi'),
('wifi.svg', 6, 29, 'Wifi'),
('wifi.svg', 6, 30, 'Wifi'),
('wifi.svg', 6, 31, 'Wifi'),
('wellness.svg', 6, 32, 'Wellness lehetőség'),
('wifi.svg', 6, 33, 'Wifi'),
('wifi.svg', 6, 34, 'Wifi'),
('no_smoking.svg', 6, 35, 'Dohányzás mentes'),
('kilatas.svg', 6, 36, 'Terasz'),
('wifi.svg', 6, 37, 'Wifi'),
('legkondi.svg', 6, 38, 'Légkondícionálás'),
('kilatas.svg', 6, 39, 'Terasz'),
('wifi.svg', 6, 40, 'Wifi'),
('no_smoking.svg', 7, 1, 'Dohányzás mentes'),
('no_smoking.svg', 7, 2, 'Dohányzás mentes'),
('parkolas.svg', 7, 3, 'Fizetős parkoló'),
('parkolas.svg', 7, 4, 'Ingyenes parkolás'),
('parkolas.svg', 7, 5, 'Ingyenes parkolás'),
('legkondi.svg', 7, 6, 'Légkondícionálás'),
('parkolas.svg', 7, 7, 'Ingyenes parkolás'),
('parkolas.svg', 7, 8, 'Fizetős parkoló'),
('parkolas.svg', 7, 9, 'Fizetős parkoló'),
('parkolas.svg', 7, 10, 'Fizetős parkoló'),
('no_smoking.svg', 7, 11, 'Dohányzás mentes'),
('no_smoking.svg', 7, 12, 'Dohányzás mentes'),
('parkolas.svg', 7, 13, 'Ingyenes parkolás'),
('parkolas.svg', 7, 14, 'Ingyenes parkolás'),
('no_smoking.svg', 7, 15, 'Dohányzás mentes'),
('no_smoking.svg', 7, 16, 'Dohányzás mentes'),
('legkondi.svg', 7, 17, 'Légkondícionálás'),
('legkondi.svg', 7, 18, 'Légkondícionálás'),
('parkolas.svg', 7, 19, 'Ingyenes parkolás'),
('parkolas.svg', 7, 20, 'Ingyenes parkolás'),
('legkondi.svg', 7, 21, 'Légkondícionálás'),
('legkondi.svg', 7, 22, 'Légkondícionálás'),
('legkondi.svg', 7, 23, 'Légkondícionálás'),
('no_smoking.svg', 7, 24, 'Dohányzás mentes'),
('kisallat.svg', 7, 25, 'Kisállat vihető'),
('parkolas.svg', 7, 26, 'Ingyenes parkolás'),
('parkolas.svg', 7, 27, 'Ingyenes parkolás '),
('parkolas.svg', 7, 28, 'Ingyenes parkolás'),
('parkolas.svg', 7, 29, 'Ingyenes parkolás'),
('wellness.svg', 7, 30, 'Wellness lehetőség'),
('parkolas.svg', 7, 31, 'Ingyenes parkolás'),
('legkondi.svg', 7, 32, 'Légkondícionálás'),
('parkolas.svg', 7, 33, 'Ingyenes parkolás'),
('parkolas.svg', 7, 34, 'Ingyenes parkolás'),
('parkolas.svg', 7, 35, 'Ingyenes parkolás'),
('legkondi.svg', 7, 36, 'Légkondícionálás'),
('parkolas.svg', 7, 37, 'Ingyenes parkolás'),
('wifi.svg', 7, 38, 'Wifi'),
('wifi.svg', 7, 39, 'Wifi'),
('parkolas.svg', 7, 40, 'Ingyenes parkolás'),
('kisallat.svg', 8, 1, 'Kisállat vihető'),
('restaurant.svg', 8, 2, 'Saját étterem'),
('restaurant.svg', 8, 3, 'Saját étterem'),
('legkondi.svg', 8, 4, 'Légkondícionálás'),
('legkondi.svg', 8, 5, 'Légkondícionálás'),
('kisallat.svg', 8, 6, 'Kisállat vihető'),
('restaurant.svg', 8, 7, 'Saját étterem'),
('no_smoking.svg', 8, 8, 'Dohányzás mentes'),
('restaurant.svg', 8, 9, 'Saját étterem'),
('restaurant.svg', 8, 10, 'Saját étterem'),
('parkolas.svg', 8, 11, 'Ingyenes parkolás'),
('parkolas.svg', 8, 12, 'Ingyenes parkolás'),
('legkondi.svg', 8, 13, 'Légkondícionálás'),
('legkondi.svg', 8, 14, 'Légkondícionálás'),
('parkolas.svg', 8, 15, 'Ingyenes parkolás'),
('parkolas.svg', 8, 16, 'Ingyenes parkolás'),
('restaurant.svg', 8, 18, 'Saját étterem'),
('legkondi.svg', 8, 19, 'Légkondícionálás'),
('legkondi.svg', 8, 20, 'Légkondícionálás'),
('parkolas.svg', 8, 23, 'Ingyenes parkolás'),
('legkondi.svg', 8, 24, 'Légkondícionálás'),
('restaurant.svg', 8, 25, 'Saját étterem'),
('legkondi.svg', 8, 26, 'Légkondícionálás'),
('kisallat.svg', 8, 27, 'Kisállat vihető'),
('legkondi.svg', 8, 28, 'Légkondícionálás'),
('restaurant.svg', 8, 29, 'Saját étterem'),
('restaurant.svg', 8, 30, 'Saját étterem'),
('no_smoking.svg', 8, 31, 'Dohányzás mentes'),
('wifi.svg', 8, 32, 'Wifi'),
('restaurant.svg', 8, 33, 'Saját étterem'),
('restaurant.svg', 8, 34, 'Saját étterem'),
('restaurant.svg', 8, 35, 'Saját étterem'),
('no_smoking.svg', 8, 36, 'Dohányzás mentes'),
('legkondi.svg', 8, 37, 'Légkondícionálás'),
('kilatas.svg', 8, 38, 'Terasz'),
('legkondi.svg', 8, 39, 'Légkondícionálás'),
('legkondi.svg', 8, 40, 'Légkondícionálás'),
('legkondi.svg', 9, 1, 'Légkondícionálás'),
('kilatas.svg', 9, 2, 'Terasz'),
('medence.svg', 9, 3, 'Medence'),
('kilatas.svg', 9, 4, 'Terasz'),
('kilatas.svg', 9, 5, 'Terasz'),
('parkolas.svg', 9, 6, 'Ingyenes parkolás'),
('kisallat.svg', 9, 7, 'Kisállat bevihető'),
('kilatas.svg', 9, 8, 'Terasz'),
('legkondi.svg', 9, 9, 'Légkondícionálás'),
('legkondi.svg', 9, 10, 'Légkondícionálás'),
('legkondi.svg', 9, 11, 'Légkondícionálás'),
('legkondi.svg', 9, 12, 'Légkondícionálás'),
('kisallat.svg', 9, 13, 'Kisállat vihető'),
('kisallat.svg', 9, 14, 'Kisállat vihető'),
('legkondi.svg', 9, 15, 'Légkondícionálás'),
('legkondi.svg', 9, 16, 'Légkondícionálás'),
('kilatas.svg', 9, 18, 'Terasz'),
('kilatas.svg', 9, 19, 'Terasz'),
('kilatas.svg', 9, 20, 'Terasz'),
('kisallat.svg', 9, 23, 'Kisállat vihető'),
('kilatas.svg', 9, 24, 'Terasz'),
('legkondi.svg', 9, 25, 'Légkondícionálás'),
('no_smoking.svg', 9, 26, 'Dohányzás mentes'),
('kilatas.svg', 9, 27, 'Terasz'),
('kisallat.svg', 9, 28, 'Kisállat vihető'),
('kilatas.svg', 9, 29, 'Terasz'),
('kisallat.svg', 9, 30, 'Kisállat bevihető'),
('kilatas.svg', 9, 31, 'Terasz'),
('no_smoking.svg', 9, 32, 'Dohányzás mentes'),
('legkondi.svg', 9, 33, 'Légkondícionálás'),
('no_smoking.svg', 9, 34, 'Dohányzás mentes'),
('kilatas.svg', 9, 35, 'Terasz'),
('medence.svg', 9, 36, 'Medence'),
('no_smoking.svg', 9, 37, 'Dohányzás mentes'),
('restaurant.svg', 9, 38, 'Saját étterem'),
('no_smoking.svg', 9, 39, 'Dohányzás mentes'),
('medence.svg', 9, 40, 'Medence'),
('medence.svg', 10, 1, 'Medence'),
('wellness.svg', 10, 2, 'Wellness lehetőség'),
('no_smoking.svg', 10, 3, 'Dohányzás mentes'),
('kisallat.svg', 10, 4, 'Kisállat vihető'),
('wellness.svg', 10, 7, 'Wellness lehetőség'),
('restaurant.svg', 10, 8, 'Saját étterem'),
('kisallat.svg', 10, 9, 'Kisállat vihető'),
('kisallat.svg', 10, 10, 'Kisállat vihető'),
('kilatas.svg', 10, 11, 'Terasz'),
('kilatas.svg', 10, 12, 'Terasz'),
('restaurant.svg', 10, 14, 'Saját étterem'),
('kilatas.svg', 10, 15, 'Terasz'),
('kilatas.svg', 10, 16, 'Terasz'),
('no_smoking.svg', 10, 18, 'Dohányzás mentes'),
('kilatas.svg', 10, 23, 'Terasz'),
('parkolas.svg', 10, 24, 'Ingyenes parkolás'),
('parkolas.svg', 10, 25, 'Ingyenes parkolás'),
('kilatas.svg', 10, 26, 'Terasz'),
('medence.svg', 10, 27, 'Medence'),
('kilatas.svg', 10, 28, 'Terasz'),
('legkondi.svg', 10, 29, 'Légkondícionálás'),
('legkondi.svg', 10, 30, 'Légkondícionálás'),
('kisallat.svg', 10, 32, 'Kisállat vihető'),
('wellness.svg', 10, 33, 'Wellness lehetőség'),
('wellness.svg', 10, 35, 'Wellness lehetőség'),
('restaurant.svg', 10, 36, 'Saját étterem'),
('kisallat.svg', 10, 37, 'Kisállat vihető'),
('no_smoking.svg', 10, 38, 'Dohányzás mentes'),
('wellness.svg', 10, 39, 'Wellness lehetőség'),
('kilatas.svg', 10, 40, 'Terasz'),
('parkolas.svg', 11, 1, 'Ingyenes parkolás'),
('kilatas.svg', 11, 3, 'Terasz'),
('kilatas.svg', 11, 7, 'Terasz'),
('wellness.svg', 11, 8, 'Wellness lehetőség'),
('wellness.svg', 11, 9, 'Wellness lehetőség'),
('no_smoking.svg', 11, 10, 'Dohányzás mentes'),
('restaurant.svg', 11, 11, 'Saját étterem'),
('kisallat.svg', 11, 15, 'Kisállat vihető'),
('kisallat.svg', 11, 16, 'Kisállat vihető'),
('parkolas.svg', 11, 18, 'Ingyenes parkolás'),
('restaurant.svg', 11, 19, 'Saját étterem'),
('wellness.svg', 11, 23, 'Wellness lehetőség'),
('restaurant.svg', 11, 24, 'Saját étterem'),
('no_smoking.svg', 11, 29, 'Dohányzás mentes'),
('parkolas.svg', 11, 30, 'Ingyenes parkolás'),
('kilatas.svg', 11, 32, 'Terasz'),
('kisallat.svg', 11, 33, 'Kisállat bevihető'),
('parkolas.svg', 11, 35, 'Fizetős parkoló'),
('parkolas.svg', 11, 36, 'Ingyenes parkolás'),
('kilatas.svg', 11, 37, 'Terasz'),
('parkolas.svg', 11, 38, 'Ingyenes parkolás'),
('medence.svg', 11, 39, 'Medence'),
('no_smoking.svg', 11, 40, 'Dohányzás mentes'),
('kilatas.svg', 12, 9, 'Terasz'),
('wellness.svg', 12, 10, 'Wellness lehetőség'),
('medence.svg', 12, 23, 'Medence'),
('kilatas.svg', 12, 30, 'Terasz');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EMAIL` (`email`),
  ADD UNIQUE KEY `LOGIN` (`email`,`jelszo`);

--
-- A tábla indexei `foglalas`
--
ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalas_id`),
  ADD KEY `ut_id2_2` (`ut_id2`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- A tábla indexei `szallas`
--
ALTER TABLE `szallas`
  ADD PRIMARY KEY (`szallas_id`);

--
-- A tábla indexei `utak`
--
ALTER TABLE `utak`
  ADD PRIMARY KEY (`ut_id`),
  ADD KEY `szallas_id2` (`szallas_id2`);

--
-- A tábla indexei `utak_kepek`
--
ALTER TABLE `utak_kepek`
  ADD PRIMARY KEY (`darabszam`,`ut_id3`) USING BTREE,
  ADD KEY `ut_id` (`ut_id3`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `foglalas`
--
ALTER TABLE `foglalas`
  MODIFY `foglalas_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `szallas`
--
ALTER TABLE `szallas`
  MODIFY `szallas_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `utak`
--
ALTER TABLE `utak`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `foglalas`
--
ALTER TABLE `foglalas`
  ADD CONSTRAINT `foglalas_ibfk_1` FOREIGN KEY (`ut_id2`) REFERENCES `utak` (`ut_id`),
  ADD CONSTRAINT `foglalas_ibfk_2` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`id`);

--
-- Megkötések a táblához `utak`
--
ALTER TABLE `utak`
  ADD CONSTRAINT `utak_ibfk_1` FOREIGN KEY (`szallas_id2`) REFERENCES `szallas` (`szallas_id`);

--
-- Megkötések a táblához `utak_kepek`
--
ALTER TABLE `utak_kepek`
  ADD CONSTRAINT `utak_kepek_ibfk_1` FOREIGN KEY (`ut_id3`) REFERENCES `utak` (`ut_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
