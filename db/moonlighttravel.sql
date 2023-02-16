-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 16. 10:33
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
-- Tábla szerkezet ehhez a táblához `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalas_id` int(50) NOT NULL,
  `nev2` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonsz` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `fo` int(2) NOT NULL,
  `vegosszeg` int(6) NOT NULL,
  `ut_id2` int(50) NOT NULL,
  `orszag2` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `iranyitoszam` int(10) NOT NULL,
  `varos2` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `utca` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `hazszam` int(10) NOT NULL,
  `kisagy` int(100) NOT NULL,
  `evszam` date NOT NULL,
  `honap` int(10) NOT NULL,
  `nap` int(10) NOT NULL,
  `oda_ora` int(10) NOT NULL,
  `vissza_ora` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `foglalas`
--

INSERT INTO `foglalas` (`foglalas_id`, `nev2`, `telefonsz`, `email`, `fo`, `vegosszeg`, `ut_id2`, `orszag2`, `iranyitoszam`, `varos2`, `utca`, `hazszam`, `kisagy`, `evszam`, `honap`, `nap`, `oda_ora`, `vissza_ora`) VALUES
(1, 'kdhadkddf', 63, 'djfdsffdfhdfsdfsdf', 3, 12345, 1, 'gdfggf', 6900, 'fgdg', 'frgerter', 1, 2, '0000-00-00', 12, 1, 12, 12);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szallas`
--

CREATE TABLE `szallas` (
  `szallas_id` int(100) NOT NULL,
  `megnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras2` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` tinyint(4) NOT NULL,
  `elhelyezkedes` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_ar` int(7) NOT NULL,
  `ellatas` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szallas`
--

INSERT INTO `szallas` (`szallas_id`, `megnev`, `leiras2`, `tipus`, `elhelyezkedes`, `szallas_img`, `szallas_ar`, `ellatas`) VALUES
(1, 'Manolita Paris ', 'A Pigalle metróállomástól 500 méterre található Manolita Paris 5 csillagos szállást kínál Párizsban', 5, '1 rue Lepic, Butte-Montmartre, Párizs XVIII. kerülete, 75018 Párizs, Franciaország', 'hotel1-min.jpg', 900000, 'teljes ellátás '),
(2, 'Toyoko INN', 'A Toyoko INN Marseille Saint Charles kerttel és ingyenes wifivel várja vendégeit Marseille-ben, a marseille-i Saint Charles vasúti pályaudvartól mindössze 5 perces sétára. A szálloda az A7-es autópályáról is könnyen megközelíthető. A szálláshelyen őrzött parkoló áll rendelkezésre, de a parkolóhelyek száma korlátozott, és nem foglalhatók előre.', 3, '25 Avenue du General Leclerc, 13003 Marseille, Franciaország', 'hotel2-min.jpg', 130000, 'félpanzió'),
(3, 'MEININGER ', 'A Lyon városában, Az Ellenállás és Deportálás Emlékközponttól 200 méterre található a bárral, magánparkolóval, közös társalgóval és terasszal rendelkező MEININGER Hotel Lyon Centre Berthelot. A Fourvière negyed 3,1 km-re fekszik.', 4, 'Rue Professeur Zimmermann 7, Lyon VII. kerülete, 69007 Lyon, Franciaország', 'hotel4-min.jpg', 649000, 'All inclusive'),
(4, 'D8', 'Háromcsillagos superior lifestyle szállodánk Budapest szívében található, pár lépésre a Lánchídtól és a belváros leghosszabb bevásárló utcájától, a Váci utcától. A pezsgő főváros ikonikus látványosságai, így sok más mellett például a Budai vár, a Szent István Bazilika és a Halászbástya is rövid sétára van a D8 Hoteltől.', 3, '1051 Budapest, Dorottya utca 8., Magyarország', 'hotel5-min.jpg', 30000, 'félpanzió'),
(5, 'Hotel Barbakán', 'Kényelem, kultúra, szórakozás és pihenés - ezt kínálja Önnek a Hotel Barbakán***.\r\nSzállónk Pécs szívében várja Önt és kedves családját, karnyújtásnyira a látnivalóktól és a szórakozási lehetőségektől.', 3, '7624 Pécs, Bartók B. u. 10., Magyarország', 'hotel6-min.jpg', 83600, 'Reggeli'),
(6, 'Baobab Suites', 'A Baobab Suites étteremmel, terasszal, közös társalgóval és díjmentes magánparkolóval ellátott szállást kínál Siófokon, a Nagystrandtól 400 méterre. A 4 csillagos szálloda bárral, valamint ingyenes wifivel felszerelt, légkondicionált szobákkal várja vendégeit. Siófok Aranypart strandjai 1,4 km-re, a városközpont pedig 700 méterre található.', 4, '8600 Siófok, 23 Batthyány Lajos utca, Magyarország', 'hotel7-min.jpg', 446100, 'All inclusive '),
(7, 'Hospedajes Tomas Wilson MX', 'A Mexikóvárosban található Hospedajes Tomas Wilson MX terasszal , ingyenes Wi-Fi-vel és közös társalgóval várja vendégeit.', 3, ' Tomas Wilson 1B, 01290 Mexikóváros, Mexikó', 'hotel8-min.jpg', 21775, 'nincs ellátás'),
(8, 'Grand Nikko Tokyo Daiba', 'A Grand Nikko Tokyo Daiba az első Grand Nikko szálloda Japánban, 2016. július 1-jétől. Az Odaiba városában, a Tokiói-öbölben található szálláshely a legközelebbi városi üdülőszálló Tokió központjához, 20 perces egysínű vasúti és vonatútra. JR Tokió állomás. A wifi a szálláshely egész területén ingyenes.', 5, '135-8701 Tokió prefektúra, Minato-ku Daiba 2-6-1 , Japán', 'hotel9-min.jpg', 279000, 'All inclusive '),
(9, 'Ramses Hilton ', 'Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) éjszakai szórakozóhely és a(z) edzőterem, vagy ha úgy tartja kedve, próbálja ki szerencséjét a helyszíni kaszinóban. ', 5, '1115 Corniche El Nile, Kairó, Egyiptom', 'hotel3-min.jpg', 77000, 'teljes ellátás '),
(10, 'Mercure Gold Coast Resort', 'Lazuljon el, és enegedje, hogy testét, lelkét kényeztessék a teljes körű szolgáltatást nyújtó wellnessfürdőben, ahol masszázs és arckezelés is várja a pihenni vágyókat. Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) 2 szabadtéri medence, a(z) szabadtéri teniszpálya és a(z) edzőterem.', 4, 'Palm Meadows Drive, Carrara, 4211 Gold Coast, Ausztrália', 'hotel10-min.jpg', 110000, 'All inclusive ');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak`
--

CREATE TABLE `utak` (
  `ut_id` int(100) NOT NULL,
  `kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `utak_img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `kozlekedesi_eszkoz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `kozlekedesi_eszkoz_img` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `idoszak` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_id2` int(100) NOT NULL,
  `url_kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `allapot` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ut_ar` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak`
--

INSERT INTO `utak` (`ut_id`, `kontinens`, `orszag`, `varos`, `utak_img`, `leiras`, `kozlekedesi_eszkoz`, `kozlekedesi_eszkoz_img`, `kategoria`, `nev`, `idoszak`, `szallas_id2`, `url_kontinens`, `url_orszag`, `url_varos`, `allapot`, `ut_ar`) VALUES
(1, 'Európa', 'Franciaország', 'Párizs', 'paris1-min.jpg', 'A világban Párizs a legnépszerűbb úticél a turisták körében, évi több mint 30 millió látogatóval. Párizsban az egyik leghíresebb építmény az Eiffel-torony. Az Eiffel-torony sok megpróbáltatáson ment keresztül, de még ma is a világ egyik leghíresebb épületeként ismerjük. A Notre-Dame Párizs legismertebb gótikus stílusú temploma, a Párizsi főegyházmegye főszékesegyháza. Monumentális méreteivel és díszítettségével különleges hatást gyakorol a szemlélőkre. A Louvre Párizs központi részén, a Szajna jobb partján található nemzeti múzeum, a világ egyik legismertebb és 1793 óta a francia főváros legnagyobb kiállítóhelye. A Galeries Lafayette Franciaországban több mint 30 saját áruházzal rendelkezik, de kilépett a világpiacra is: a világ több nagyvárosában nyitott boltokat. \r\n\r\nA nyaraláshoz tartozó programok:\r\nEiffel-torony\r\nNotre-Dame\r\nLouvre múzeum\r\nGaleries Lafayette\r\n', 'repülő', 'repulo.svg', 'külföldi', '4 napos nyaralás Párizsban, a fények városában', '4 nap', 1, 'Europa', 'Franciaorszag', 'Parizs', 'városlátogatás', 600000),
(2, 'Európa', 'Franciaország', 'Marseille', 'marseille1-min.jpg', 'Az Európai és Mediterrán Civilizációk Múzeuma egy nemzeti múzeum a franciaországi Marseille-ben. A kék és a fehér szín sehol sem annyira gyönyörű, mint a marseille-i öblökben. A Misztrál nevű híres szél által felkorbácsolt tengerből több száz méteres magasságban nőnek ki a sziklamászók kedvenc sziklafalai – közöttük bújnak meg a híres öblök, azaz a calanque-ok. If vára, a Földközi-tenger azonos nevű szigetén áll, Marseille kikötője mellett. Hírnevét a Monte Cristo grófja című regénynek köszönheti, amelynek főhőse ebben a várban raboskodott. Ma a város egyik jelentős turisztikai látványossága. A marseille-i katedrális egy római katolikus katedrális, és Franciaország nemzeti emlékműve, Marseille-ben található. \r\n\r\n\r\nA nyaraláshoz tartozó programok:\r\nEurópai és Mediterrán Civilizációk Múzeuma\r\nCalanques Nemzeti Park\r\nIf vára\r\nLa Major katedrális', 'repülő', 'repulo.svg', 'külföldi', 'Marseille, provence-i kirándulások', '4 nap', 2, 'Europa', 'Franciaorszag', 'Marseille', 'last minute', 400000),
(3, 'Európa', 'Franciaország', 'Lyon', 'lyon1-min.jpg', 'A lyoni katedrális egy római katolikus templom, amely a Place Saint-Jean-en található Lyon központjában, Franciaországban. Az Ancient Theatre of Fourvière egy római színház Lyonban, Franciaországban. Fourvière dombján épült, amely a római város központjában található. A színház az UNESCO Világörökség része, amely Lyon történelmi központját védi. A Jardin botanique de Lyon, vagy más néven Jardin botanique du Parc de la Tête d\'Or, egy 8 hektáros önkormányzati botanikus kert a Parc de la Tête d\'or-ban, Lyon 6. kerületében, Franciaországban. Hétköznapokon díjmentesen tart nyitva.\r\n\r\nA nyaraláshoz tartozó programok:\r\nLyon-katedrális\r\nTeatro Galo-Romano\r\nLyon Botanical Garden', 'busz', 'busz.svg', 'külföldi', 'Kellemes hétvége Lyon környékén', '3 nap', 3, 'Europa', 'Franciaorszag', 'Lyon', 'városlátogatás', 100000),
(4, 'Európa', 'Magyarország', 'Budapest', 'budapest1-min.jpg', 'Az Országház Budapest egyik legismertebb középülete, a Magyar Országgyűlés és egyes intézményeinek székhelye. Budapest V. kerületében, a Duna bal partján, a Kossuth Lajos téren található. A Hősök tere Budapest legtágasabb, legnagyobb hatású tere a XIV. kerületben, szűkebb értelemben véve a Millenniumi emlékművet jelöli. A Hősök tere az előtte fekvő Andrássy úttal együtt a világörökség része. A Magyar Nemzeti Múzeum országos múzeum, mely a magyar történelem tárgyi emlékeit gyűjti és mutatja be. Főépülete Budapest VIII. kerületében, a Múzeum körúton található.\r\n\r\nA nyaraláshoz tartozó programok:\r\nParlament\r\nHősök tere\r\nNemzeti Múzeum', 'busz', 'busz.svg', 'belföldi', '1 nap Budapesten', '1 nap', 4, 'Europa', 'Magyarorszag', 'Budapest', 'városlátogatás', 20000),
(5, 'Európa', 'Magyarország', 'Pécs', 'pecs1-min.jpg', 'Állatkert régi terrárium Pécsi Állatkert és Akvárium-Terrárium A Pécsi Állatkert és Akvárium-Terrárium a Mecsek oldalában található állatkert. A pécsi Szent Péter- és Szent Pál-székesegyház a Pécsi egyházmegye katedrálisa, a város egyik jellegzetes épülete. A pécsi Hullámfürdőben a zárt uszodán felül egy strand- és egy hullámmedence várja a fürdőzőket a nyári szezonban.\r\n\r\nA nyaraláshoz tartozó programok:\r\nPécsi Állatkert\r\nPécsi Bazilika\r\nHullámfürdő', 'autó', 'auto.svg', 'belföldi', 'Felfedezni való Pécs', '3 nap', 5, 'Europa', 'Magyarorszag', 'Pecs', 'városlátogatás', 70000),
(6, 'Európa', 'Magyarország', 'Siófok', 'balaton1-min.jpg', 'Az élményteli programot nyújtó állatparki séta bármely korosztály számára kellemes kikapcsolódást jelent, ahol felfedezhetik a szelíd állatok csodálatos világát és találkozhatnak kedvenceikkel. Magyarország legnagyobb és legszebb magángyűjteménye 1986 júniusa óta látogatható Siófok város centrumában,a Kálmán sétány 10. alatt. Siófok szívében, üde színfoltként hívogat a város egyik legszebb parkja, a Millennium park. Siófok a XX. század elejére a Balaton egyik legkedveltebb üdülőhelyévé vált. A fejlődés megkövetelte a modern víz- és szennyvízhálózat kiépítését. A Siófok Aranypart szabadstrand Siófok központjától több mint 4 km hosszan nyúlik el keleti irányba. A 20-30 méter széles part mindenhol füves, a legtöbb részen nagy fák nyújtanak hűs árnyékot.\r\n\r\nA nyaraláshoz tartozó programok:\r\nBella Állatpark\r\nÁsványmúzeum\r\nMillennium park\r\nAranypart\r\nVíztorony\r\n\r\n\r\n', 'busz', 'busz.svg', 'belföldi', '1 hetes nyaralás Siófokon', '1 hét', 6, 'Europa', 'Magyarorszag', 'Siofok', 'last minute', 100000),
(7, 'Amerika', 'Mexikó', 'Mexikóváros', 'mexiko1-min.jpg', 'A Soumaya Múzeum Mexikóváros egyik híres művészeti múzeuma. A Copper Canyon egy hat különálló kanyonból álló csoport a Sierra Madre Occidentalban, Chihuahua állam délnyugati részén, Mexikó északnyugati részén, és mérete 65 000 négyzetkilométer. A Szépművészeti Palota Mexikóváros legjelentősebb kulturális központja, évente körülbelül egymillió látogatója van. Amellett, hogy színház működik benne, két múzeumnak, a Szépművészeti Múzeumnak és a Nemzeti Építészeti Múzeumnak is helyt ad. A Plaza de la Constitución, közismert nevén Zócalo Mexikóváros főtere. A világ egyik legnagyobb városi tere.\r\n\r\nA nyaraláshoz tartozó programok:\r\nSoumaya Múzeum\r\nCopper Kanyon\r\nPalacio de Bellas Artes\r\nZócalo', 'repülő', 'repulo.svg', 'külföldi', 'Irány Mexikó!', '1 hét', 7, 'Amerika', 'Mexiko', 'Mexikovaros', 'last minute', 300000),
(8, 'Ázsia', 'Japán', 'Tokió', 'tokio1-min.jpg', 'A Meidzsi-szentély egy sintószentély a tokiói Sibujában, amit az 1912-ben elhunyt Meidzsi császár és 1914-ben elhunyt felesége, Sóken császárné tiszteletére emeltek. A Tokyo Metropolitan Art Museum egy művészeti múzeum Tokióban, Japánban. Ez egyike Japán számos múzeumának, amelyet a prefektusi kormány támogat. A Hibiya Park egy park Chiyoda Cityben, Tokióban, Japánban. A Sumida akváriumot 2012 májusában hozták létre egy bevásárlóközpontban, a Tokió SKYTREE-ben, mely 634 méteres magasságával a legmagasabb mesterséges alkotás Japánban. A Tokyo Dome City Attractions egy vidámpark a tokiói Tokyo Dome baseballstadion mellett Bunkjóban. A Mount Mitake egy hegy a Chichibu Tama Kai Nemzeti Parkban, Tokió közelében, Japánban. A Yomiuriland egy vidámpark Inagiban , Tokióban , Japánban , amelyet először 1964-ben nyitottak meg. A Rainbow Bridge egy függőhíd, amely a Tokiói-öböl északi részét keresztezi a Shibaura móló és az Odaiba vízparti fejlesztés között, Minatoban, Tokióban, Japánban.\r\n\r\nA nya', 'repülő', 'repulo.svg', 'külföldi', 'Felkelő nap országának városa', '10 nap', 8, 'Azsia', 'Japan', 'Tokio', 'last minute', 400000),
(9, 'Afrika', 'Egyiptom', 'Kairó', 'egyiptom1-min.jpg', 'Az Egyiptomi Régiségek Múzeuma, melyet gyakran csak Egyiptomi Múzeum néven említenek, Egyiptom fővárosában, Kairóban, a Tahrír téren áll, és legendás lazac színű épülete rejti a világ leggazdagabb egyiptológiai gyűjteményét. A Kairói Citadella vagy Szaladin fellegvára egy középkori iszlám kori erődítmény Kairóban, Egyiptomban, amelyet Salah ad-Din épített, és a későbbi egyiptomi uralkodók fejlesztettek tovább. Az Amr Ibn al-Ász mecset Kairó történelmi kerületében található, Egyiptomban. Gízai piramisok néven három piramist értünk: az egyiptomi óbirodalmi Hufu, Hafré és Menkauré fáraók piramisait. Maga a teljes piramismező a három nagy piramison kívül magába foglalja a hozzájuk tartozó halotti templomokat, kisebb piramisokat \r\n\r\nA nyaraláshoz tartozó programok: \r\nEgyiptomi Régiségek Múzeuma\r\nCitadella\r\nAmr Ibn al-Ász mecset\r\nGízai piramismező', 'repülő', 'repulo.svg', 'külföldi', 'Piramisok városa, Kairó', '6 nap', 9, 'Afrika', 'Egyiptom', 'Kairo', 'last minute', 500000),
(10, 'Ausztrália', 'Ausztrália', 'Sydney', 'sydney1-min.jpg', 'A Sydney-i Királyi Botanikus Kert egy műemléki védettségű, 30 hektáros botanikus kert, rendezvényhelyszín és nyilvános rekreációs terület. A Sydney-torony Sydney legmagasabb építménye, Ausztrália, és a második legmagasabb kilátó a déli féltekén. A BridgeClimb Sydney egy ausztrál turistalátványosság. A BridgeClimb elkalauzolja a vendégeket a Sydney Harbour Bridge megmászására. A Wild Life Sydney Zoo egy vadaspark a Darling Harbor körzetben, Sydney központi üzleti negyedének nyugati szélén, Sydneyben, Új-Dél-Walesben, Ausztráliában. A Hornby Lighthouse, más néven South Head Lower Light vagy South Head Signal Station, egy műemléki védelem alatt álló aktív világítótorony, amely South Head csúcsán, Új-Dél-Walesben, Ausztráliában található.\r\n\r\nA nyaraláshoz tartozó programok: \r\nRoyal Botanic Garden\r\nSydney Tower Eye\r\nBridgeClimb\r\nWILD LIFE Sydney\r\nHornby Lighthouse', 'repülő', 'repulo.svg', 'külföldi', 'Nyaralás Sydney tengerpartján', '5 nap', 10, 'Ausztralia', 'Ausztralia', 'Sydney', 'tengerparti nyaralás', 500000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak_kepek`
--

CREATE TABLE `utak_kepek` (
  `neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `darabszam` int(50) NOT NULL,
  `ut_id3` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak_kepek`
--

INSERT INTO `utak_kepek` (`neve`, `darabszam`, `ut_id3`) VALUES
('paris2-min.jpg', 2, 1),
('marseille2-min.jpg', 2, 2),
('lyon2-min.jpg', 2, 3),
('budapest2-min.jpg', 2, 4),
('pecs2-min.jpg', 2, 5),
('balaton2-min.jpg', 2, 6),
('mexiko2-min.jpg', 2, 7),
('tokio2-min.jpg', 2, 8),
('egyiptom2-min.jpg', 2, 9),
('sydney2-min.jpg', 2, 10),
('paris3-min.jpg', 3, 1),
('marseille3-min.jpg', 3, 2),
('lyon3-min.jpg', 3, 3),
('budapest3-min.jpg', 3, 4),
('pecs3-min.jpg', 3, 5),
('balaton3-min.jpg', 3, 6),
('mexiko3-min.jpg', 3, 7),
('tokio3-min.jpg', 3, 8),
('egyiptom3-min.jpg', 3, 9),
('sydney3-min.jpg', 3, 10),
('paris4-min.jpg', 4, 1),
('marseille4-min.jpg', 4, 2),
('lyon4-min.jpg', 4, 3),
('budapest4-min.jpg', 4, 4),
('pecs4-min.jpg', 4, 5),
('balaton4-min.jpg', 4, 6),
('mexiko4-min.jpg', 4, 7),
('tokio4-min.jpg', 4, 8),
('egyiptom4-min.jpg', 4, 9),
('sydney4-min.jpg', 4, 10),
('paris5-min.jpg', 5, 1),
('marseille5-min.jpg', 5, 2),
('lyon5-min.jpg', 5, 3),
('budapest5-min.jpg', 5, 4),
('pecs5-min.jpg', 5, 5),
('balaton5-min.jpg', 5, 6),
('mexiko5-min.jpg', 5, 7),
('tokio5-min.jpg', 5, 8),
('egyiptom5-min.jpg', 5, 9),
('sydney5-min.jpg', 5, 10);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `foglalas`
--
ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalas_id`),
  ADD KEY `ut_id2` (`ut_id2`);

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
-- AUTO_INCREMENT a táblához `szallas`
--
ALTER TABLE `szallas`
  MODIFY `szallas_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `foglalas`
--
ALTER TABLE `foglalas`
  ADD CONSTRAINT `foglalas_ibfk_1` FOREIGN KEY (`ut_id2`) REFERENCES `utak` (`ut_id`);

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
