-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 28. 15:39
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
(1, 'Regina', 'regina@citromail.hu', 'a'),
(2, 'Fanni', 'fanni@citromail.hu', 'a'),
(3, 'Turi Regina', 'turi.viktoriar-2018@keri.mako.hu', 'aa'),
(4, 'Turi Regina', 'turiviki2003@gmail.com', 'aaa'),
(5, 'Fanni', 'fanni@hotmail.com', 'a'),
(6, 'Félix', 'felix@freemail.hu', '123456');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalas_id` int(50) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `teljes_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonsz` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `fo` int(2) NOT NULL,
  `vegosszeg` int(6) NOT NULL,
  `kisagy` int(100) NOT NULL,
  `evszam` date NOT NULL,
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
(1, 6, 'kdhadkddf', 63, 'djfdsffdfhdfsdfsdf', 3, 12345, 2, '2023-03-28', 12, 1, 12, 12, 1);

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
(11, 'Chelsea Hotel, Toronto', 'A College metróállomástól kevesebb mint 300 méterre található szálloda helyszíni étkezési lehetőséggel, valamint fitneszközponttal és 2 fedett medencével is várja vendégeit. A Toronto Eaton Centre bevásárlóközpont 600 méterre fekszik.', 4, '33 Gerrard Street West, M5G 1Z4, Toronto, Kanada', 'hotel11-min.jpg', 86604, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(12, 'Paramount Hotel Times Square', 'A 605 szobás butikhotel, a Paramount Hotel épülete New Yorkban, a Színháznegyedben helyezkedik el, a Times Square-től 170 méterre.', 4, '235 West 46th Street, Times Square, New York, Amerikai Egyesült Államok', 'hotel12-min.jpg', 99628, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(13, 'Super 8 By Wyndham Houston/Nasa/Webster Area', 'A Super 8 Houston/NASA/Webster Websterben található, 5 perces autóútra a NASA Űrközponttól. A szálláshely szabadtéri medencével és üzleti központtal várja vendégeit.', 2, 'Super 8 By Wyndham Houston/Nasa/Webster Area', 'hotel13-min.jpg', 24182, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(14, 'Days Inn by Wyndham San Diego Hotel Circle Near SeaWorld', 'A Days Inn by Wyndham San Diego Hotel Circle tágas szobákat kínál ingyenes wifivel a SeaWorld San Diego élménypark közelében, a San Diego nemzetközi repülőtértől 8 km-re. A vendégeket egész évben fűtött, kültéri medence, pezsgőfürdő és helyszíni étterem várja.', 3, 'Days Inn by Wyndham San Diego Hotel Circle Near SeaWorld', 'hotel24-min.jpg', 39219, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(15, 'Gold Dust West', 'A Carson Cityben található Gold Dust West 24 órás kaszinót kínál több mint 400 legújabb játékkal. Egy szabadtéri medence és egy gyógyfürdő is rendelkezésre áll. A Reno-Tahoe nemzetközi repülőtér 36 km-re található.', 3, ' 2171 E William Street, Carson City, NV 89701, Amerika', 'hotel19-min.jpg', 46565, 'FB (Full Board)', 'Reggeli, ebéd és vacsora is benne van az árban. Azoknak ajánlott, akik nem terveznek három óránál hosszabb kirándulásokat, ugyanakkor nem akarnak étterembe menni.'),
(16, 'YAVAPAI LODGE INSIDE THE PARK ', 'A Yavapai Lodge®-ban a természet szépsége találkozik a kényelem varázslatával. A Grand Canyon Nemzeti Parkban található szálloda kiváló helyen, a déli peremen található. A szállás rövid sétára vagy buszútra található a déli peremtől, és pár lépésre a piactól, a banktól és a postától. Természetesen ez több, mint a tökéletes hely a kaland elindításához. Fő szállása remek hely a kikapcsolódásra és feltöltődésre, köszönhetően a hangulatos ülősaroknak és a szabadtéri terasznak.', 2, 'Grand Canyon National Park - Grand Canyon Village', 'hotel20-min.jpg', 105521, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(17, 'Kirowy Gościniec', 'A Kis-Lengyelország régióban, Kościeliskóban található Kirowy Gościniec ingyenes wifivel, grillezési lehetőséggel, fitneszközponttal és ingyenes parkolási lehetőséggel várja vendégeit. A fontos helyek távolsága a létesítménytől: Gubałówka - 8,5 km.', 1, 'Groń 6, 34-511 Kościelisko, Lengyelország', 'hotel21-min.jpg', 23055, 'SC (Self Catering)', 'Önellátás. Étkezések nincsenek az árban, de a vendégek használhatják a konyhát vagy főzősarkot, ahol maguknak elkészíthetik az ételüket. Ez a legjobb választás, ha egy kis pénzt akar megtakarítani vagy szigorú diétát folytat.'),
(18, 'Granbell Hotel Colombo', 'A Colombóban, a Kollupitiya strandtól 90 méterre található Granbell Hotel Colombo szabadtéri úszómedencével, ingyenes parkolási lehetőséggel, fitneszközponttal és terasszal várja vendégeit. Az étteremmel, bárral, szaunával és pezsgőfürdővel rendelkező szálláshelyen A szálláshely szobaszervizt, 24 órás recepciót és pénzváltót kínál vendégeinek.', 4, '282/5, Kollupitiya Road, Kollupitiya, 00300 Colombo, Srí Lanka', 'hotel22-min.jpg', 0, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(19, 'Prince Palace Hotel - SHA Extra Plus', 'A Prince Palace Hotel épülete Bangkok óvárosában, közvetlenül a Bo Bae Tower divatáruház felett található. A Mahanak-csatornára kilátást nyújtó szálloda szabadtéri medencét és 7 különböző étkezési lehetőséget kínál. A közös helyiségekben ingyenes wifi áll rendelkezésre.', 4, '488/800 Bo Bae Tower, Damrongrak Road, Mahanak, Pomprab Sattrupai, 10100 Bangkok,', 'hotel23-min.jpg', 0, 'PP', 'Az ételeket az utazás programjához illesztve szolgálják fel. Általában a szabadidőben szervezett kirándulások határozzák meg.'),
(20, 'Mizingani Seafront Hotel', 'A Mizingani Seafront Hotel mindössze 2 perces sétára helyezkedik el Zanzibár kompkikötőjétől. A szálloda étteremmel, szabadtéri medencével és éjjel-nappal nyitva tartó recepcióval várja vendégeit. A helyszíni magánparkoló díjmentesen használható.', 4, 'Mizingani Road, StoneTown, Zanzibár, Tanzánia', 'hotel25-min.jpg', 40895, 'AI (All Inclusive)', 'A legnépszerűbb étkeztetési mód, különösen azok körében, akik a szabadságukat a tengerparton szeretnénk tölteni, közel a hotelhez. Teljes ellátást foglal magában (napi három-hat étkezés, plusz a ropogtatnivalók), valamint az alkoholmentes italok és a helyi készítésű alkoholok korlátlan mennyiségű fogyasztását.'),
(21, 'Lazure Hotel & Marina', 'A Kotori-öbölre néző Lazure Hotel & Marina luxus szállást kínál 2 km-re Herceg Novi városától. Az üdülőhelyen 2 étterem, valamint szezonális strandbár és lobbibár található. Ingyenes Wi-Fi és ingyenes privát parkoló – garázsok – biztosítottak.', 5, 'Braće Pedišića 10, 85340 Herceg Novi, Montenegró', 'hotel28-min.jpg', 65660, 'UAI (Ultra All Inclusive)', 'Ugyanaz, mint az All Inclusive, de az alkoholos italok (főleg a nemzetköziek) szélesebb választékával. Hoteltől függően magában foglalhat további szolgáltatásokat – pl. masszázsok, spa, szaunák.'),
(22, 'Hotel Tirolerhof\r\n', 'A Zillertal 3000 síterülethez vezető Rastkogel és Eggalm felvonók között, a Zillertal-völgyben, Tux faluban található Hotel Tirolerhof 4 Sterne Superior alpesi stílusú szobákkal, tipikus tiroli konyhával, hangulatos társalgóval, kandallóval és wellnessrészleggel várja vendégeit.', 4, 'Hofgasse 214, 5542 Flachau, Ausztria', 'hotel29-min.jpg', 25500, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(23, 'Hotel Milton Roma', 'A 18. századi épületben kialakított Hotel Milton Roma elegáns szobákat kínál parkettás padlóval és 300 Mbit adatforgalomig ingyenes nagy sebességű wifivel, valamint kerti bárral várja vendégeit mindössze néhány méterre a római Manzoni metróállomástól. A Colosseum 12 perces sétával elérhető.', 4, 'Via Emanuele Filiberto 155, a római központi pályaudvar, 00185 Róma, Olaszország', '', 275460, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.'),
(24, 'Athens Golden City Hotel', 'Az Athens Golden City Hotel a Metaxourgeio metróállomástól mindössze 400 méterre várja vendégeit, akik a Wi-Fi-t ingyen használhatják a közös helyiségekben. Az Athén városára panorámás kilátást nyújtó tetőtéri étteremben görög ételeket szolgálnak fel reggelire és vacsorára.', 3, 'Marnis 46, Athén, 10432, Görögország ', '', 37765, 'OV', 'Ezért nem jár semmilyen étkezés a hotelben. Ezt az aktív turisták választják, akik idejük nagy részét a hotelen kívül töltik.'),
(25, 'Svalbard Hotell | The Vault', 'A Longyearbyenben, a Svalbard-templomtól 800 méterre található Svalbard Hotell | A Vault bárral, díjmentes magánparkolóval, közös társalgóval és terasszal rendelkezik. A 3 csillagos szálloda jegyirodai szolgáltatást és poggyászmegőrzőt is biztosít. A szálláshely éjjel-nappali recepciót, utazásszervezői pultot, reptéri transzfert és egész területén ingyenes wifit kínál vendégeinek.', 3, '500 / 503, 9170 Longyearbyen, Norvégia ', '', 218815, 'BB (Bed and Breakfast)', 'A szállás árában benne van a reggeli.');

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
(1, 'Európa', 'Franciaország', 'Párizs', 'paris1-min.jpg', 'A világban Párizs a legnépszerűbb úticél a turisták körében, évi több mint 30 millió látogatóval. Párizsban az egyik leghíresebb építmény az Eiffel-torony. Az Eiffel-torony sok megpróbáltatáson ment keresztül, de még ma is a világ egyik leghíresebb épületeként ismerjük. A Notre-Dame Párizs legismertebb gótikus stílusú temploma, a Párizsi főegyházmegye főszékesegyháza. Monumentális méreteivel és díszítettségével különleges hatást gyakorol a szemlélőkre. A Louvre Párizs központi részén, a Szajna jobb partján található nemzeti múzeum, a világ egyik legismertebb és 1793 óta a francia főváros legnagyobb kiállítóhelye. A Galeries Lafayette Franciaországban több mint 30 saját áruházzal rendelkezik, de kilépett a világpiacra is: a világ több nagyvárosában nyitott boltokat. \r\n', 'repülő', 'repulo.svg', 'külföldi', '4 napos nyaralás Párizsban, a fények városában', '4 nap', 1, 'Europa', 'Franciaorszag', 'Parizs', 'városlátogatás', 600000, '2 óra 23 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Eiffel-torony\r\nNotre-Dame\r\nLouvre múzeum \r\nGaleries Lafayette\r\n'),
(2, 'Európa', 'Franciaország', 'Marseille', 'marseille1-min.jpg', 'Az Európai és Mediterrán Civilizációk Múzeuma egy nemzeti múzeum a franciaországi Marseille-ben. A kék és a fehér szín sehol sem annyira gyönyörű, mint a marseille-i öblökben. A Misztrál nevű híres szél által felkorbácsolt tengerből több száz méteres magasságban nőnek ki a sziklamászók kedvenc sziklafalai – közöttük bújnak meg a híres öblök, azaz a calanque-ok. If vára, a Földközi-tenger azonos nevű szigetén áll, Marseille kikötője mellett. Hírnevét a Monte Cristo grófja című regénynek köszönheti, amelynek főhőse ebben a várban raboskodott. Ma a város egyik jelentős turisztikai látványossága. A marseille-i katedrális egy római katolikus katedrális, és Franciaország nemzeti emlékműve, Marseille-ben található. \r\n\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Marseille, provence-i kirándulások', '4 nap', 2, 'Europa', 'Franciaorszag', 'Marseille', 'last minute', 400000, '2 óra 15 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Európai és Mediterrán Civilizációk Múzeuma\r\nCalanques Nemzeti Park\r\nIf vára\r\nLa Major katedrális'),
(3, 'Európa', 'Franciaország', 'Lyon', 'lyon1-min.jpg', 'A lyoni katedrális egy római katolikus templom, amely a Place Saint-Jean-en található Lyon központjában, Franciaországban. Az Ancient Theatre of Fourvière egy római színház Lyonban, Franciaországban. Fourvière dombján épült, amely a római város központjában található. A színház az UNESCO Világörökség része, amely Lyon történelmi központját védi. A Jardin botanique de Lyon, vagy más néven Jardin botanique du Parc de la Tête d\'Or, egy 8 hektáros önkormányzati botanikus kert a Parc de la Tête d\'or-ban, Lyon 6. kerületében, Franciaországban. Hétköznapokon díjmentesen tart nyitva.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Kellemes hétvége Lyon környékén', '3 nap', 3, 'Europa', 'Franciaorszag', 'Lyon', 'városlátogatás', 100000, '5 óra 35 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Lyon-katedrális\r\nTeatro Galo-Romano\r\nLyon Botanical Garden'),
(4, 'Európa', 'Magyarország', 'Budapest', 'budapest1-min.jpg', 'Az Országház Budapest egyik legismertebb középülete, a Magyar Országgyűlés és egyes intézményeinek székhelye. Budapest V. kerületében, a Duna bal partján, a Kossuth Lajos téren található. A Hősök tere Budapest legtágasabb, legnagyobb hatású tere a XIV. kerületben, szűkebb értelemben véve a Millenniumi emlékművet jelöli. A Hősök tere az előtte fekvő Andrássy úttal együtt a világörökség része. A Magyar Nemzeti Múzeum országos múzeum, mely a magyar történelem tárgyi emlékeit gyűjti és mutatja be. Főépülete Budapest VIII. kerületében, a Múzeum körúton található.\r\n\r\n', 'busz', 'busz.svg', 'belföldi', '2 nap Budapesten', '2 nap', 4, 'Europa', 'Magyarorszag', 'Budapest', 'városlátogatás', 20000, '6 óra 42 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Parlament\r\nHősök tere\r\nNemzeti Múzeum'),
(5, 'Európa', 'Magyarország', 'Pécs', 'pecs1-min.jpg', 'Állatkert régi terrárium Pécsi Állatkert és Akvárium-Terrárium A Pécsi Állatkert és Akvárium-Terrárium a Mecsek oldalában található állatkert. A pécsi Szent Péter- és Szent Pál-székesegyház a Pécsi egyházmegye katedrálisa, a város egyik jellegzetes épülete. A pécsi Hullámfürdőben a zárt uszodán felül egy strand- és egy hullámmedence várja a fürdőzőket a nyári szezonban.\r\n\r\n\r\n', 'autó', 'auto.svg', 'belföldi', 'Felfedezni való Pécs', '3 nap', 5, 'Europa', 'Magyarorszag', 'Pecs', 'városlátogatás', 70000, '3 óra 13 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Pécsi Állatkert\r\nPécsi Bazilika\r\nHullámfürdő'),
(6, 'Európa', 'Magyarország', 'Siófok', 'balaton1-min.jpg', 'Az élményteli programot nyújtó állatparki séta bármely korosztály számára kellemes kikapcsolódást jelent, ahol felfedezhetik a szelíd állatok csodálatos világát és találkozhatnak kedvenceikkel. Magyarország legnagyobb és legszebb magángyűjteménye 1986 júniusa óta látogatható Siófok város centrumában,a Kálmán sétány 10. alatt. Siófok szívében, üde színfoltként hívogat a város egyik legszebb parkja, a Millennium park. Siófok a XX. század elejére a Balaton egyik legkedveltebb üdülőhelyévé vált. A fejlődés megkövetelte a modern víz- és szennyvízhálózat kiépítését. A Siófok Aranypart szabadstrand Siófok központjától több mint 4 km hosszan nyúlik el keleti irányba. A 20-30 méter széles part mindenhol füves, a legtöbb részen nagy fák nyújtanak hűs árnyékot.\r\n\r\n\r\n\r\n\r\n\r\n', 'busz', 'busz.svg', 'belföldi', '1 hetes nyaralás Siófokon', '1 hét', 6, 'Europa', 'Magyarorszag', 'Siofok', 'last minute', 30000, '6 óra 38 perc', 'Magyarország, Makó, 6900 Posta u. 4-6.', 'Bella Állatpark\r\nÁsványmúzeum\r\nMillennium park\r\nAranypart\r\nVíztorony'),
(7, 'Amerika', 'Mexikó', 'Mexikóváros', 'mexiko1-min.jpg', 'A Soumaya Múzeum Mexikóváros egyik híres művészeti múzeuma. A Copper Canyon egy hat különálló kanyonból álló csoport a Sierra Madre Occidentalban, Chihuahua állam délnyugati részén, Mexikó északnyugati részén, és mérete 65 000 négyzetkilométer. A Szépművészeti Palota Mexikóváros legjelentősebb kulturális központja, évente körülbelül egymillió látogatója van. Amellett, hogy színház működik benne, két múzeumnak, a Szépművészeti Múzeumnak és a Nemzeti Építészeti Múzeumnak is helyt ad. A Plaza de la Constitución, közismert nevén Zócalo Mexikóváros főtere. A világ egyik legnagyobb városi tere.\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Irány Mexikó!', '1 hét', 7, 'Amerika', 'Mexiko', 'Mexikovaros', 'last minute', 300000, '19 óra 20 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', '\r\nSoumaya Múzeum\r\nCopper Kanyon\r\nPalacio de Bellas Artes\r\nZócalo'),
(8, 'Ázsia', 'Japán', 'Tokió', 'tokio1-min.jpg', 'A Meidzsi-szentély egy sintószentély a tokiói Sibujában, amit az 1912-ben elhunyt Meidzsi császár és 1914-ben elhunyt felesége, Sóken császárné tiszteletére emeltek. A Tokyo Metropolitan Art Museum egy művészeti múzeum Tokióban, Japánban. Ez egyike Japán számos múzeumának, amelyet a prefektusi kormány támogat. A Hibiya Park egy park Chiyoda Cityben, Tokióban, Japánban. A Sumida akváriumot 2012 májusában hozták létre egy bevásárlóközpontban, a Tokió SKYTREE-ben, mely 634 méteres magasságával a legmagasabb mesterséges alkotás Japánban. A Tokyo Dome City Attractions egy vidámpark a tokiói Tokyo Dome baseballstadion mellett Bunkjóban. A Mount Mitake egy hegy a Chichibu Tama Kai Nemzeti Parkban, Tokió közelében, Japánban. A Yomiuriland egy vidámpark Inagiban , Tokióban , Japánban , amelyet először 1964-ben nyitottak meg. A Rainbow Bridge egy függőhíd, amely a Tokiói-öböl északi részét keresztezi a Shibaura móló és az Odaiba vízparti fejlesztés között, Minatoban, Tokióban, Japánban.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Felkelő nap országának városa', '10 nap', 8, 'Azsia', 'Japan', 'Tokio', 'last minute', 800000, '1 nap 2 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Meidzsi-szentély\r\nTokyo Metropolitan Art Museum\r\nHibiya Park\r\nSumida Aquarium\r\nTokyo Dome City\r\nMount Mitake\r\nYomiuri Land\r\nRainbow Bridge'),
(9, 'Afrika', 'Egyiptom', 'Kairó', 'egyiptom1-min.jpg', 'Az Egyiptomi Régiségek Múzeuma, melyet gyakran csak Egyiptomi Múzeum néven említenek, Egyiptom fővárosában, Kairóban, a Tahrír téren áll, és legendás lazac színű épülete rejti a világ leggazdagabb egyiptológiai gyűjteményét. A Kairói Citadella vagy Szaladin fellegvára egy középkori iszlám kori erődítmény Kairóban, Egyiptomban, amelyet Salah ad-Din épített, és a későbbi egyiptomi uralkodók fejlesztettek tovább. Az Amr Ibn al-Ász mecset Kairó történelmi kerületében található, Egyiptomban. Gízai piramisok néven három piramist értünk: az egyiptomi óbirodalmi Hufu, Hafré és Menkauré fáraók piramisait. Maga a teljes piramismező a három nagy piramison kívül magába foglalja a hozzájuk tartozó halotti templomokat, kisebb piramisokat \r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Piramisok városa, Kairó', '6 nap', 9, 'Afrika', 'Egyiptom', 'Kairo', 'last minute', 500000, '3 óra 25 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Egyiptomi Régiségek Múzeuma\r\nCitadella\r\nAmr Ibn al-Ász mecset\r\nGízai piramismező'),
(10, 'Ausztrália', 'Ausztrália', 'Sydney', 'sydney1-min.jpg', 'A Sydney-i Királyi Botanikus Kert egy műemléki védettségű, 30 hektáros botanikus kert, rendezvényhelyszín és nyilvános rekreációs terület. A Sydney-torony Sydney legmagasabb építménye, Ausztrália, és a második legmagasabb kilátó a déli féltekén. A BridgeClimb Sydney egy ausztrál turistalátványosság. A BridgeClimb elkalauzolja a vendégeket a Sydney Harbour Bridge megmászására. A Wild Life Sydney Zoo egy vadaspark a Darling Harbor körzetben, Sydney központi üzleti negyedének nyugati szélén, Sydneyben, Új-Dél-Walesben, Ausztráliában. A Hornby Lighthouse, más néven South Head Lower Light vagy South Head Signal Station, egy műemléki védelem alatt álló aktív világítótorony, amely South Head csúcsán, Új-Dél-Walesben, Ausztráliában található.\r\n\r\n\r\n', 'repülő', 'repulo.svg', 'külföldi', 'Nyaralás Sydney tengerpartján', '5 nap', 10, 'Ausztralia', 'Ausztralia', 'Sydney', 'tengerparti nyaralás', 900000, '1 nap 18 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Royal Botanic Garden\r\nSydney Tower Eye\r\nBridgeClimb\r\nWILD LIFE Sydney\r\nHornby Lighthouse'),
(11, 'Amerika', 'Kanada', 'Torontó', 'kanada.jpg', 'A CN Towert 1973 és 1976 között építették a kanadai Torontóban, az ottani ipar erejének demonstrálása végett. A Royal Ontario Museum egy művészeti, világkultúra és természettörténeti múzeum Torontóban, Ontario államban, Kanadában. A Toronto Eaton Center egy bevásárlóközpont és irodakomplexum a kanadai Ontario állam Toronto belvárosában. A Nathan Phillips Square egy városi tér Torontóban, Ontario államban, Kanadában. A Casa Loma egy gótikus, újjászületett kastély stílusú kastély és kert a kanadai Ontario állambeli Toronto belvárosában, amely ma történelmi házmúzeum és nevezetesség.', 'repülő', 'repulo.svg', 'kulfoldi', 'Helyek ,amelyeket láttnia kell Torontóban', '5 nap', 11, 'Amerika', 'Kanada', 'Torontó', 'varoslatogatas', 600000, '21 óra 29 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'CN Tower, Royal Ontario Museum, CF Toronto Eaton Centre,  Nathan Phillips Square, Casa Loma'),
(12, 'Amerika', 'Egyesült Államok', 'New York', 'NewYork.jpg', 'A Central Park egy 3,41 km² területű nyilvános park Manhattan szívében, New York városában. Az Empire State Building New York város 102 emeletes, 381 méter magas épülete és egyik jelképe, 42 évig volt az USA legmagasabb épülete. A Times Square New Yorkban, Manhattan városrész egyik negyede. Egyike a legismertebb amerikai negyedeknek, a napi látogatószáma eléri a 330 ezret. A Szabadság megvilágosítja a világot, ismertebb nevén a Szabadság-szobor New York előtt, a Liberty Islanden található, a Hudson folyó torkolatánál. A High Line Park, vagy ahogy szintén ismert, a High Line, egy 1,6 km² területű nyilvános, lineáris park Manhattan nyugati részén, New Yorkban. A New York-i Modern Művészeti Múzeum egyike a világ legjelentősebb kortárs gyűjteménnyel rendelkező művészeti múzeumainak. ', 'repülő', 'repulo.svg', 'kulfoldi', 'New York kihagyhatatlan programjai', '6 nap', 12, 'Amerika', 'Egyesült Államok', 'New York', 'last minute', 4000000, '13 óra 5perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Central Park, Empire State Building , Times Square, Szabadság-szobor, High Line Park, Modern Művészeti Múzeum'),
(13, 'Amerika', 'Texas', 'Houston', 'Texas.jpg', 'Space Center Houston egy tudományos múzeum, amely a NASA Johnson Space Center hivatalos látogatóközpontjaként szolgál Houstonban. A Discovery Green egy 11,78 hektáros nyilvános városi park Houston belvárosában, Texas államban, amelyet nyugaton a La Branch Street, északon a McKinney Street, keleten az Avenida de las Americas és délen a Lamar Street határol. A Houstoni Természettudományi Múzeum egy természettudományi múzeum, amely a Hermann Park északi határán található Houstonban, Texas államban, az Egyesült Államokban. A Hermann Park egy 445 hektáros városi park Houstonban, Texasban, a Múzeumi negyed déli végén. A San Jacinto Monument egy 567,31 láb magas oszlop a Houston Ship Channel csatornán, a jogi személyiség nélküli Harris megyében, Texas államban, körülbelül 16 mérföldre keletre Houston belvárosától. A Miller Outdoor Theatre egy szabadtéri előadóművészeti színház Houstonban, Texasban. A Houston Zoo egy 55 hektáros állatkert, amely a Hermann Parkban található Houstonban, Texas államban, az Egyesült Államokban.', 'repülő', 'repulo.svg', 'kulfoldi', 'A világ legnagyobb angol nyelvű városa', '7 nap', 13, 'Amerika', 'Texas', 'Houston', 'last minute', 1000000, '18 óra 25 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Space Central Houston, Discovery Green, Houstoni Természettudományi Múzeum, Hermann Park, San Jacinto Museum of History, Miller Outdoor Theatre, Houston Zoo'),
(14, 'Amerika', 'Kalifornia', 'San Diego', 'kalifornia.jpg', 'A Seaport Village egy vízparti bevásárló- és étkezőkomplexum a San Diego-öböl szomszédságában, San Diego belvárosában, Kaliforniában. A Balboa Park egy 1200 hektáros történelmi városi kulturális park San Diego-ban, Kaliforniában, az Egyesült Államokban. A Birch Aquarium at Scripps egy akvárium és a San Diego-i Kaliforniai Egyetem Scripps Oceanográfiai Intézetének nyilvános információs központja. A USS Midway Museum egy történelmi haditengerészeti repülőgép-hordozó múzeum, amely a kaliforniai San Diego belvárosában, a Navy Piernél található. A San Diego-i Állatkert egy állatkert Kaliforniában, San Diégóban. A világ egyik leghíresebb állatkertje. Több mint 650 faj, kb. 3700 egyede él itt. Területe 40 hektár.', 'repülő', 'repulo.svg', 'kulfoldi', 'Napfényes Kaliforniai utazás', '5 nap', 14, 'Amerika', 'Kalifornia', 'San Diego', 'városlátogatás', 200000, '21 óra 50 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Seaport Village, Balboa Park, Birch Aquarium at Scripps Institution of Oceanography, USS Midway Museum, San Diego Állatkert'),
(15, 'Amerika', 'Nevada', 'Las Vegas', 'nevada.jpg', 'A High Roller egy 550 láb magas, 520 láb átmérőjű óriási óriáskerék a Las Vegas Strip-en, Paradise-ban. Az elegáns kaszinóhotelekkel szegélyezett, neonfénnyel átitatott Strip Las Vegas elválaszthatatlan része. A kaszinókhoz hasonlóan a hatalmas hotelkomplexumokban is számos különböző bolt és étterem – az általánostól a luxusig – áll a vendégek rendelkezésére, és koncerteket, vígjátékokat, cirkuszi bemutatókat felvonultató színpadok kínálnak szórakozási lehetőséget. A szökőkút egy 3,2 hektáros, mesterséges tavon található, és bár a városi legendák szerint a hotel szennyvizét vezetik el ide, ez nem igaz. A tavat egy édesvizű kút táplálja, amit akkoriban fúrtak, amikor a területen még egy golfpálya működött – ezzel locsolták a füvet. ', 'repülő', 'repulo.svg', 'kulfoldi', 'Las Vegas a világ legfényesebb városa', '3 nap', 15, 'Amerika', 'Nevada', 'Las Vegas', 'last minute', 3000000, '19 óra 50 perc', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Caesars Palace, High Roller, The STRAT Hotel, Casino & SkyPod, The Mirage'),
(16, 'Amerika', 'Egyesült Államok', 'Grand Canyon', 'grand-canyon.jpg', 'A Yavapai Pointnál, a kanyon peremének szélén található Yavapai Geológiai Múzeum az egyik legjobb kilátópontot kínálja a Grand Canyon geológiájának áttekintésére. A festői Remete út a falu történelmi negyedének nyugati oldalán kezdődik. Az út a kanyon peremét követi 11 km-en keresztül a Hermits Rest-hez és a Remete-ösvényhez. A Desert View park keleti bejárata a nap 24 órájában, a hét minden napján nyitva tart. ', 'repülő', 'repulo.svg', 'kulfoldi', 'Grand-canyon a kortalan szépség', '3 nap', 16, 'Amerika', 'Egyesült Államok', 'Grand Canyon', 'last minute', 3000000, '7 óra', 'Magyarország, Budapest, 1185 Nemzetközi Repülőtér', 'Geológiai Múzeum, Hermit Road Drive,Desert View Őrtorony, Bright Angel túraútvonal'),
(17, 'Európa', 'Lengyelország', 'Kiry', 'lengyel1-min.jpg', 'Lengyelország természeti adottságai miatt tökéletes a túrázás illetve hegymászás kedvelőinek. Az emberi környezet szennyezés által nem érintett természet csodái minden felé megtalálhatóak. ', 'autó', 'auto.svg', 'külföldi', '5 napos nyaralás a friss hegyi levegőben Lengyelor', '5 nap', 17, 'Európa', 'Lengyelorzsag', 'Kiry', 'last minute', 48000, '7 óra', 'Makó posta utca 4-6', 'Túrák illetve hegymászások'),
(18, 'Ázsia', 'Szigetország', 'Srí Lanka', 'srilanka1.jpg', ' Természetes szépségei és kulturális öröksége miatt Srí Lanka az egyik legkedveltebb utazási célpont a turisták körében.Korábbi nevén Ceylon az Indiai-óceán északi részén található szigetország. A Pinnawala Elephant Orphanage egy vad ázsiai elefántok fogságban tenyésztésére és megőrzésére szolgáló intézet, amely Pinnawala faluban található.Nuwara Eliya egy város Srí Lanka központi tartományának dombvidékén.A gyönyörű Arugam-öböl, egy hold alakú, aranyszínű homokos fodrozódás, ahol egy híres szörfös pont található, amelyet sokan az ország legjobb szörfös helyének tartanak. A Yala Nemzeti Park Srí Lanka leglátogatottabb és második legnagyobb nemzeti parkja.', 'repülő', 'repulo.svg', 'külföldi', 'Fedezze fel a az India-óceánban elterülő, könnycsepp alakú kis szigetet!', '5 nap', 18, 'Ázsia', 'Szigetország', 'Srí Lanka', 'tengerparti nyaralás', 6000000, '12 óra 55 perc', 'Budapest', 'Pinnawala Elefántrezervátum, Nuwara Eliya, Arugam-öböl, Yala Nemzeti Park, Érintetlen szigetvilág'),
(19, 'Ázsia', 'Thaiföld', 'Bangkok', 'thaifold.jpg', 'Bangkok vagy thai nyelven Krung Thep Thaiföld fővárosa, s egyben legnagyobb városa is.\r\nWat Pho, Fekvő Buddha Temploma, Bangkok egyik legrégebbi temploma, amely már azelőtt létezett, hogy I. Ráma király fővárosként megalapította. A Wat Arun, közismert nevén a “Hajnal temploma”, egyike az első osztályú királyi templomok legmagasabb osztályába tartozó hat templomnak, és ezért Thaiföld egyik legtiszteletreméltóbb temploma. Az Arany Buddha, Wat Traimit Wittharayam Worawiharn templom Bangkok kínai negyedében, a Yaowarat út mellett található, ahol a világ legnagyobb tömör arany Buddha ábrázolását láthatjuk. A Nemzeti Múzeum három kiállítótérből áll. A díszes Siwamokhaphiman teremben látható a Ram Khamhaeng felirat, az első thai írásos nyelvemlék. A Jim Thompson Ház egy múzeum Bangkok központjában , Thaiföldön , és Jim Thompson amerikai üzletember és építész , a múzeum tervezője és egykori tulajdonosa művészeti gyűjteményének ad otthont . ', 'repülő', 'repulo.svg', 'kulfoldi', 'Látogasd meg Thaiföld misztikus, ősi műemlékeit  ', '7 nap', 19, 'Ázsia', 'Thaiföld', 'Bangkok', 'last minute', 12000000, '15 óra 30 perc', 'Budapest', 'Grand Palace, Wat Pho – A fekvő Buddha temploma, Wat Arun – A Hajnal, Wat Traimit - Az arany Buddha temploma, Bankoki Nemzeti Múzeum, Jim Thomspon Ház, Úszópiacok'),
(20, 'Afrika', 'Tanzánia', 'Zanzibár', 'zanzibar.jpg', 'Zanzibár Tanzániához tartozó szigetcsoport Afrika keleti partjainál. Lakossága 1,07 millió fő. Stone Town az egyik legérdekesebb program a szigeten, maga a főváros. Számos láttnivalót találhatunk itt. Az Old Fort egy régi erőd (szuahéliül: Boma la Kale la Zanzibar), más néven arab erőd és más néven egy erődítmény, amely Zanzibár fővárosában, Stone Townban található. Az erőddel szemben van a Forodhani kert, amely népszerű park a városrészben. Nem kell nagy területűre gondolni, de sok kifőzdénél kóstolhatjuk meg a helyi finomságokat. A Csodák háza Zanzibár szultánjainak a palotája volt, most a Művészeti Múzeum otthona. Sokan nem tudják, de Zanzibáron született Freddy Mercury. Emlékét a Stone Town-ban található Freddy Mercury Múzeum ápolja, ahol rengeteg fénykép, videó és személyes tárgy látható. Az egyházi épületek közül az Anglikán katedrális a legszebb. A templom belül is nagyon szép, érdemes az oltárát megcsodálni.Zanzibár a régió egyik legnagyobb rabszolgatartó helye volt. Ezt örökíti meg a Rabszolgapiac emlékmű (Slave Chambers) és a mellette lévő épület. A föld alatt rabszolgakamrák is vannak.', 'repülő', 'repulo.svg', 'kulfoldi', 'Pálmafákkal teli homokos partra vágysz? Írány Zanzibár!', '7 nap', 20, 'Afrika', 'Tanzánia', 'Zanzibár', 'tengerparti nyaralás', 7500000, '1 nap 6 óra', 'Budapest', 'Stone Town, Old Fort,  Forodhani kert, Csodák háza, Freddy Mercury Múzeum, Anglikán katedrális, Rabszolgapiac emlékmű'),
(21, 'Európa ', 'Montenegró', 'Herceg novi', 'montenegro.jpg', 'Herceg Novi város és község Montenegróban, az Adriai-tenger partján. A mintegy 16 000 lakosú község Európa-szerte ismert és népszerű üdülőhely. A Kanli Kula (Véres torony) erődöt 1487-ben a törökök építették, Herceg Novi városnak a legészakibb részén foglal helyet és a város összetett várrendszerének az egyik eleme, ami védelmi szerepet töltött be és börtönként is használták. A Tengeri erődöt (Forte Mare) a 14. században építették, később a törökök, majd az osztrákok is átépítették. Ma szabadtéri színház működik benne, augusztus elején filmfesztiválnak ad helyet.A Durmitor hegyei Montenegró északi részén húzódnak, a határhoz közel. A Durmitor legmagasabb csúcsa, a Bobotov Kuk. A Savina kolostor egy szerb ortodox kolostor, amely három templomból áll Herceg Novi város közelében, a Kotori-öbölben, sűrű mediterrán növényzetben, az egyik legszélesebb körben. ', 'repülő', 'repulo.svg', 'kulfoldi', 'Unod az egyszerű nyaralásokat? Gyere és fedezd fel a Balkán-félszigetet!', '5 nap', 21, 'Európa ', 'Montenegró', 'Herceg novi', 'tengerparti nyaralás', 7000000, '19 óra 45 perc', 'Budapest', 'Kanli kula, Forte Mare, Old Town, Durmitor, Savina Monastery, Montenegro'),
(22, 'Európa ', 'Ausztria', 'Schneebergdörfl', 'hegytura.jpg', 'A Schneeberg Alsó-Ausztria legmagasabb hegycsúcsa az Alpok hegységben, egyben az Alpok fő vonulatának utolsó keleti tagja, amely magasságával meghaladja a 2000 métert. A hegység látképe Észak-Burgenlandból, Bécsből és az Alpokalja tájegységről is könnyen megfigyelhető Kőszegtől Sopronig. Magassága 2076m. Schneeberg közeli távolsága miatt számos egynapos túrázás célpontja, csakúgy, mint az Alpok. Az egyik legnépszerűbb program, hogy egy hétvége keretében járják be mindkét célpontot a kirándulni vágyók.', 'repülő', 'repulo.svg', 'kulfoldi', 'Szeret túrázni ? Másszon fel Alsó-Ausztria legmagasabb hegycsúcsára ,a  Schneebergre!', '3 nap', 22, 'Európa ', 'Ausztria', 'Schneebergdörfl', 'last minute', 500000, '4 óra 55 perc', 'Budapest', 'Hegymászás'),
(23, 'Európa', 'Olaszország', 'Róma', 'romai.jpg', 'Róma Olaszország fővárosa, Lazio régió központja, a hajdani Római Birodalom központja. Az ország legnagyobb és legnépesebb városa 1285,3 km²-en mintegy 2,8 millió lakossal, az Európai Unió harmadik legnépesebb városa.A firenzei dóm, olaszul Cattedrale di Santa Maria del Fiore, a Firenzei főegyházmegye főtemploma. A vatikáni Szent Péter-bazilika a római katolikus egyház első számú szentélye, a négy nagy bazilika egyike. A Colosseum az ókori Róma hatalmas amfiteátruma, ma pedig nevezetes látványossága a városnak. A Trevi-kút Róma egyik legnagyobb és világszinten legismertebb szökőkútja. A barokk szökőkutat a 17. században építette Niccolò Salvi a Poli-palota déli homlokzatán. ', 'repülő', 'repulo.svg', 'külföldi', 'Róma az örök város', '5 nap', 23, 'Európa', 'Olaszország', 'Róma', 'tengerparti nyaralás', 6000000, '5 óra 40 perc', 'Budapest', 'Firenzei dóm, Szent Péter-bazilika, Vatikán, Colosseum, Trevi-kút'),
(24, 'Európa ', 'Görögország', 'Athén', 'gorog_ut1.jpg', 'Athén Görögország fővárosa. A modern Athén hatalmas, kozmopolita jellegű város; az ókori Athén nagy hatalmú városállam és jelentős tudományos központ volt. Az athéni Akropolisz Görögországban található, az ókorból származó épületegyüttes, az európai civilizáció és demokrácia jelképe, az emberi alkotógéniusz egyik legnagyobb alkotása. A Nemzeti Kert egy 15,5 hektáros nyilvános park a görög főváros, Athén központjában. A Kolonaki és Pangrati kerületek között található, közvetlenül a görög parlament épülete mögött, és dél felé halad a Zappeion területére, szemben az 1896-os Olimpiai Játékok Panathenaiko vagy Kalimarmaro Olimpiai Stadionjával. Az Athéni Nemzeti Obszervatórium egy kutatóintézet Athénban, Görögországban. Az 1842-ben alapított intézmény Görögország legrégebbi kutatási alapja. Az athéni Stadiou utcában található régi Parlament épülete 1875 és 1935 között a görög parlamentnek adott otthont. Jelenleg az ország Nemzeti Történeti Múzeumának ad otthont.  ', 'autó', 'auto.svg', 'külföldi', 'Az ókori világ központja', '5 nap', 24, 'Európa ', 'Görögország', 'Athén', 'tengerparti nyaralás', 7500000, '2 óra 5 perc', 'Budapest', 'Akropolisz, Acropolis Museum, Nemzeti Kert, National Observatory of Athens, Old Parliament'),
(25, 'Európa', 'Norvégia', 'Flatbostad', 'norvegia1-min.jpg', ' Viosen egy idilli hely, amely gyönyörűen fekszik a Snåsavatnet-tó legvégén. A strand és az út között gyönyörű homokos strand, nyári kávézó, hangulatos épületek és egy szép nyírfa fasor található. Múzeum\r\nGjerstadhuset Joralf Gjerstad gyermekkori otthona, amely 2012-ben nyitotta meg kapuit a nagyközönség előtt. A megjelenés gyakorlatilag megegyezik azzal, ahogyan egész gyermekkorában kinézett. A ház Berg Nedre városából származik az 1800-as évek közepéről, de 1924-ben költöztették át jelenlegi helyére.                          ', 'repülő', 'repulo.svg', 'külföldi', 'Norvégia felejthetetlen látnivalói', '4 nap', 25, 'Európa', 'Norvégia', 'Flatbostad', 'tengerparti nyaralás', 7000000, '12 óra 55 perc', 'Budapest', 'Park ved Semskaia, Viosen, Gjerstadhuset,');

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
('kanada2.jpg', 2, 11, ''),
('NewYork2.jpg', 2, 12, ''),
('Texas2.jpg', 2, 13, ''),
('kalifornia2.jpg', 2, 14, ''),
('nevada2.jpg', 2, 15, ''),
('grand-canyon2.jpg', 2, 16, ''),
('lengyel2-min.jpg', 2, 17, ''),
('srilanka2.jpg', 2, 18, ''),
('thaifold2.jpg', 2, 19, ''),
('zanzibar2.jpg', 2, 20, ''),
('montenegro2.jpg', 2, 21, ''),
('hegytura2.jpg', 2, 22, ''),
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
('kanada3.jpg', 3, 11, ''),
('NewYork3.jpg', 3, 12, ''),
('Texas3.jpg', 3, 13, ''),
('kalifornia3.jpg', 3, 14, ''),
('nevada3.jpg', 3, 15, ''),
('grand-canyon3.jpg', 3, 16, ''),
('lengyel3-min.jpg', 3, 17, ''),
('srilanka3.jpg', 3, 18, ''),
('thaifold3.jpg', 3, 19, ''),
('zanzibar3.jpg', 3, 20, ''),
('montenegro3.jpg', 3, 21, ''),
('hegytura3.jpg', 3, 22, ''),
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
('kanada4.jpg', 4, 11, ''),
('NewYork4.jpg', 4, 12, ''),
('Texas4.jpg', 4, 13, ''),
('kalifornia4.jpg', 4, 14, ''),
('nevada4.jpg', 4, 15, ''),
('grand-canyon4.jpg', 4, 16, ''),
('lengyel4-min.jpg', 4, 17, ''),
('srilanka4.jpg', 4, 18, ''),
('thaifold4.jpg', 4, 19, ''),
('zanzibar4.jpg', 4, 20, ''),
('montenegro4.jpg', 4, 21, ''),
('hegytura4.jpg', 4, 22, ''),
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
('kanada5jpg', 5, 11, ''),
('NewYork5.jpg', 5, 12, ''),
('Texas5.jpg', 5, 13, ''),
('kalifornia5.jpg', 5, 14, ''),
('nevada5.jpg', 5, 15, ''),
('grand-canyon5.jpg', 5, 16, ''),
('lengyel5-min.jpg', 5, 17, ''),
('montenegro5.jpg', 5, 21, ''),
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
('wifi.svg', 6, 19, 'Wifi'),
('wifi.svg', 6, 20, 'Wifi'),
('wifi.svg', 6, 21, 'Wifi'),
('wifi.svg', 6, 22, 'Wifi'),
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
('	 no_smoking.svg', 7, 19, 'Dohányzás mentes'),
('	 no_smoking.svg', 7, 20, 'Dohányzás mentes'),
('legkondi.svg', 7, 21, 'Légkondícionálás'),
('legkondi.svg', 7, 22, 'Légkondícionálás'),
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
('parkolas.svg', 8, 19, 'Ingyenes parkolás'),
('parkolas.svg', 8, 20, 'Ingyenes parkolás'),
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
('legkondi.svg', 9, 19, 'Légkondícionálás'),
('legkondi.svg', 9, 20, 'Légkondícionálás'),
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
('kilatas.svg', 10, 19, 'Terasz'),
('kilatas.svg', 10, 20, 'Terasz'),
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
('kilatas.svg', 12, 9, 'Terasz'),
('wellness.svg', 12, 10, 'Wellness lehetőség');

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
  ADD KEY `ut_id2_2` (`ut_id2`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `foglalas`
--
ALTER TABLE `foglalas`
  MODIFY `foglalas_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `szallas`
--
ALTER TABLE `szallas`
  MODIFY `szallas_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `utak`
--
ALTER TABLE `utak`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `utak`
--
ALTER TABLE `utak`
  ADD CONSTRAINT `utak_ibfk_1` FOREIGN KEY (`szallas_id2`) REFERENCES `szallas` (`szallas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
