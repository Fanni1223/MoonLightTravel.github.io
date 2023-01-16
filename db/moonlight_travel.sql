-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jan 10. 11:58
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
-- Adatbázis: `moonlight_travel`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ellatas`
--

CREATE TABLE `ellatas` (
  `img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ellatas_id` int(50) NOT NULL,
  `szallas_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalas_id` int(50) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `telefonsz` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `fo` int(2) NOT NULL,
  `mettol` date NOT NULL,
  `meddig` date NOT NULL,
  `vegosszeg` int(6) NOT NULL,
  `ut_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szallas`
--

CREATE TABLE `szallas` (
  `szallas_id` int(100) NOT NULL,
  `megnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `elhelyezkedes` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(7) NOT NULL,
  `etkezes` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szallas`
--

INSERT INTO `szallas` (`szallas_id`, `megnev`, `leiras`, `tipus`, `elhelyezkedes`, `img`, `ar`, `etkezes`) VALUES
(1, 'Manolita Paris ', 'A Pigalle metróállomástól 500 méterre található Manolita Paris 5 csillagos szállást kínál Párizsban', '5 csillagos', '1 rue Lepic, Butte-Montmartre, Párizs XVIII. kerülete, 75018 Párizs, Franciaország', '', 900000, 'teljes ellátás '),
(2, 'Toyoko INN', 'A Toyoko INN Marseille Saint Charles kerttel és ingyenes wifivel várja vendégeit Marseille-ben, a marseille-i Saint Charles vasúti pályaudvartól mindössze 5 perces sétára. A szálloda az A7-es autópályáról is könnyen megközelíthető. A szálláshelyen őrzött parkoló áll rendelkezésre, de a parkolóhelyek száma korlátozott, és nem foglalhatók előre.', '3 csillagos ', '25 Avenue du General Leclerc, 13003 Marseille, Franciaország', '', 130000, 'félpanzió'),
(3, 'MEININGER ', 'A Lyon városában, Az Ellenállás és Deportálás Emlékközponttól 200 méterre található a bárral, magánparkolóval, közös társalgóval és terasszal rendelkező MEININGER Hotel Lyon Centre Berthelot. A Fourvière negyed 3,1 km-re fekszik.', '4 csillgos ', 'Rue Professeur Zimmermann 7, Lyon VII. kerülete, 69007 Lyon, Franciaország', '', 649000, 'All inclusive'),
(4, 'D8', 'Háromcsillagos superior lifestyle szállodánk Budapest szívében található, pár lépésre a Lánchídtól és a belváros leghosszabb bevásárló utcájától, a Váci utcától. A pezsgő főváros ikonikus látványosságai, így sok más mellett például a Budai vár, a Szent István Bazilika és a Halászbástya is rövid sétára van a D8 Hoteltől.', '3 csillagos ', '1051 Budapest, Dorottya utca 8., Magyarország', '', 30000, 'félpanzió'),
(5, 'Hotel Barbakán', 'Kényelem, kultúra, szórakozás és pihenés - ezt kínálja Önnek a Hotel Barbakán***.\r\nSzállónk Pécs szívében várja Önt és kedves családját, karnyújtásnyira a látnivalóktól és a szórakozási lehetőségektől.', '3 csillagos ', '7624 Pécs, Bartók B. u. 10., Magyarország', '', 83600, 'Reggeli'),
(6, 'Baobab Suites', 'A Baobab Suites étteremmel, terasszal, közös társalgóval és díjmentes magánparkolóval ellátott szállást kínál Siófokon, a Nagystrandtól 400 méterre. A 4 csillagos szálloda bárral, valamint ingyenes wifivel felszerelt, légkondicionált szobákkal várja vendégeit. Siófok Aranypart strandjai 1,4 km-re, a városközpont pedig 700 méterre található.', '4 csillagos', '8600 Siófok, 23 Batthyány Lajos utca, Magyarország', '', 446100, 'All inclusive '),
(7, 'Hospedajes Tomas Wilson MX', 'A Mexikóvárosban található Hospedajes Tomas Wilson MX terasszal , ingyenes Wi-Fi-vel és közös társalgóval várja vendégeit.', '3 csillagos ', ' Tomas Wilson 1B, 01290 Mexikóváros, Mexikó', '', 21775, 'nincs ellátás'),
(8, 'Grand Nikko Tokyo Daiba', 'A Grand Nikko Tokyo Daiba az első Grand Nikko szálloda Japánban, 2016. július 1-jétől. Az Odaiba városában, a Tokiói-öbölben található szálláshely a legközelebbi városi üdülőszálló Tokió központjához, 20 perces egysínű vasúti és vonatútra. JR Tokió állomás. A wifi a szálláshely egész területén ingyenes.', '5 csillagos', '135-8701 Tokió prefektúra, Minato-ku Daiba 2-6-1 , Japán', '', 279000, 'All inclusive '),
(9, 'Ramses Hilton ', 'Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) éjszakai szórakozóhely és a(z) edzőterem, vagy ha úgy tartja kedve, próbálja ki szerencséjét a helyszíni kaszinóban. ', '5 csillagos', '1115 Corniche El Nile, Kairó, Egyiptom', '', 77000, 'teljes ellátás '),
(10, 'Mercure Gold Coast Resort', 'Lazuljon el, és enegedje, hogy testét, lelkét kényeztessék a teljes körű szolgáltatást nyújtó wellnessfürdőben, ahol masszázs és arckezelés is várja a pihenni vágyókat. Élvezze ki a szálláshely kínálta szabadidős létesítményeket és szolgáltatásokat, mint például a(z) 2 szabadtéri medence, a(z) szabadtéri teniszpálya és a(z) edzőterem.', '4 csillagos', 'Palm Meadows Drive, Carrara, 4211 Gold Coast, Ausztrália', '', 110000, 'All inclusive ');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szallas_kepek`
--

CREATE TABLE `szallas_kepek` (
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `darabszam` int(50) NOT NULL,
  `szallas_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak`
--

CREATE TABLE `utak` (
  `ut_id` int(100) NOT NULL,
  `kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `img` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(1000) COLLATE utf8_hungarian_ci NOT NULL,
  `kozlekedesi_eszkoz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `idoszak` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `szallas_id` int(100) NOT NULL,
  `url_kontinens` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_orszag` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `url_varos` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `allapot` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak`
--

INSERT INTO `utak` (`ut_id`, `kontinens`, `orszag`, `varos`, `img`, `leiras`, `kozlekedesi_eszkoz`, `kategoria`, `nev`, `idoszak`, `szallas_id`, `url_kontinens`, `url_orszag`, `url_varos`, `allapot`, `ar`) VALUES
(1, 'Európa', 'Franciaország', 'Párizs', '', 'A világban Párizs a legnépszerűbb úticél a turisták körében, évi több mint 30 millió látogatóval. Párizsban az egyik leghíresebb építmény az Eiffel-torony. Az Eiffel-torony sok megpróbáltatáson ment keresztül, de még ma is a világ egyik leghíresebb épületeként ismerjük. A Notre-Dame Párizs legismertebb gótikus stílusú temploma, a Párizsi főegyházmegye főszékesegyháza. Monumentális méreteivel és díszítettségével különleges hatást gyakorol a szemlélőkre. A Louvre Párizs központi részén, a Szajna jobb partján található nemzeti múzeum, a világ egyik legismertebb és 1793 óta a francia főváros legnagyobb kiállítóhelye. A Galeries Lafayette Franciaországban több mint 30 saját áruházzal rendelkezik, de kilépett a világpiacra is: a világ több nagyvárosában nyitott boltokat. \r\n\r\nA nyaraláshoz tartozó programok:\r\nEiffel-torony\r\nNotre-Dame\r\nLouvre múzeum\r\nGaleries Lafayette\r\n', 'repülő', 'külföldi', '4 napos nyaralás Párizsban, a fények városában', '4 nap', 1, 'Europa', 'Franciaorszag', 'Parizs', 'városlátogatás', 600000),
(2, 'Európa', 'Franciaország', 'Marseille', '', '', 'repülő', 'külföldi', 'Marseille, provence-i kirándulások', '4 nap', 2, 'Europa', 'Franciaorszag', 'Marseille', 'last minute', 400000),
(3, 'Európa', 'Franciaország', 'Lyon', '', '', 'busz', 'külföldi', 'Kellemes hétvége Lyon környékén', '3 nap', 3, 'Europa', 'Franciaorszag', 'Lyon', 'városlátogatás', 100000),
(4, 'Európa', 'Magyarország', 'Budapest', '', '', 'busz', 'belföldi', '1 nap Budapesten', '1 nap', 4, 'Europa', 'Magyarorszag', 'Budapest', 'városlátogatás', 20000),
(5, 'Európa', 'Magyarország', 'Pécs', '', '', 'autó', 'belföldi', 'Felfedezni való Pécs', '3 nap', 5, 'Europa', 'Magyarorszag', 'Pecs', 'városlátogatás', 70000),
(6, 'Európa', 'Magyarország', 'Siófok', '', '', 'busz', 'belföldi', '1 hetes nyaralás Siófokon', '1 hét', 6, 'Europa', 'Magyarorszag', 'Siofok', 'last minute', 100000),
(7, 'Amerika', 'Mexikó', 'Mexikóváros', '', '', 'repülő', 'külföldi', 'Irány Mexikó!', '1 hét', 7, 'Amerika', 'Mexiko', 'Mexikovaros', 'last minute', 300000),
(8, 'Ázsia', 'Japán', 'Tokió', '', '', 'repülő', 'külföldi', 'Felkelő nap országának városa', '10 nap', 8, 'Azsia', 'Japan', 'Tokio', 'last minute', 400000),
(9, 'Afrika', 'Egyiptom', 'Kairó', '', '', 'repülő', 'külföldi', 'Piramisok városa, Kairó', '6 nap', 9, 'Afrika', 'Egyiptom', 'Kairo', 'last minute', 500000),
(10, 'Ausztrália', 'Ausztrália', 'Sydney', '', '', 'repülő', 'külföldi', 'Nyaralás Sydney tengerpartján', '5 nap', 10, 'Ausztralia', 'Ausztralia', 'Sydney', 'tengerparti nyaralás', 500000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak_kepek`
--

CREATE TABLE `utak_kepek` (
  `neve` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `darabszam` int(50) NOT NULL,
  `ut_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ellatas`
--
ALTER TABLE `ellatas`
  ADD PRIMARY KEY (`ellatas_id`,`szallas_id`) USING BTREE;

--
-- A tábla indexei `foglalas`
--
ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalas_id`);

--
-- A tábla indexei `szallas`
--
ALTER TABLE `szallas`
  ADD PRIMARY KEY (`szallas_id`);

--
-- A tábla indexei `szallas_kepek`
--
ALTER TABLE `szallas_kepek`
  ADD PRIMARY KEY (`szallas_id`,`darabszam`) USING BTREE;

--
-- A tábla indexei `utak`
--
ALTER TABLE `utak`
  ADD PRIMARY KEY (`ut_id`);

--
-- A tábla indexei `utak_kepek`
--
ALTER TABLE `utak_kepek`
  ADD PRIMARY KEY (`darabszam`,`ut_id`) USING BTREE;

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `szallas`
--
ALTER TABLE `szallas`
  MODIFY `szallas_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `utak`
--
ALTER TABLE `utak`
  MODIFY `ut_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
