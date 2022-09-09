-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 09 sep. 2022 à 07:33
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `customers`
--

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `CusDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Adress`, `City`, `PostalCode`, `Country`, `CusDate`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', '2022-09-08 14:49:53'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.	', '05021', 'Mexico', '2022-09-08 14:49:53'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.	', '05023', 'Mexico', '2022-09-08 14:49:53'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', '2022-09-08 14:49:53'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden', '2022-09-08 14:49:53'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany', '2022-09-08 14:49:53'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France', '2022-09-08 14:49:53'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain', '2022-09-08 14:49:53'),
(9, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France', '2022-09-08 14:49:53'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada', '2022-09-08 14:49:53'),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK', '2022-09-08 14:49:53'),
(13, 'Himax Technologies, Inc.', 'Fayette', '73424 Ridgeway Pass', 'Manukau City', '2246', 'New Zealand', '2022-09-08 14:49:53'),
(15, 'Vantage Energy Acquisition Corp.', 'Neel', '1 Memorial Hill', 'Libacao', '5602', 'Philippines', '2022-09-08 14:49:53'),
(16, 'American National Insurance Company', 'Louie', '4 Victoria Way', 'Orenburg', '460999', 'Russia', '2022-09-08 14:49:53'),
(18, 'Blackrock MuniYield Pennsylvania Quality Fund', 'Arnold', '21 Ludington Hill', 'Benito Juarez', '31540', 'Mexico', '2022-09-08 14:49:53'),
(19, 'General Cable Corporation', 'Clo', '0975 Sheridan Park', 'Gryazovets', '162002', 'Russia', '2022-09-08 14:49:53'),
(20, 'New Germany Fund, Inc. (The)', 'Isabeau', '7340 Scofield Road', 'Lethbridge', 'T1K', 'Canada', '2022-09-08 14:49:53'),
(22, 'RADA Electronic Industries Ltd.', 'Carmencita', '14 Lakewood Alley', 'Nueve de Julio', '3606', 'Argentina', '2022-09-08 14:49:53'),
(23, 'Discovery Communications, Inc.', 'Hynda', '1613 Jana Terrace', 'Tosno', '187003', 'Russia', '2022-09-08 14:49:53'),
(28, 'Lincoln Electric Holdings, Inc.', 'Olin', '0399 Stang Avenue', 'Dulian', '3110', 'Philippines', '2022-09-08 14:49:53'),
(29, 'Qiagen N.V.', 'Jeremie', '1061 Katie Alley', 'Gaspar', '89110-000', 'Brazil', '2022-09-08 14:49:53'),
(31, 'Infinity Pharmaceuticals, Inc.', 'Laurianne', '6 Beilfuss Junction', 'Orlando', '32825', 'United States', '2022-09-08 14:49:53'),
(33, 'Asia Pacific Fund, Inc. (The)', 'Jehu', '20 Fairfield Center', 'Leleque', '9213', 'Argentina', '2022-09-08 14:49:53'),
(35, 'TC PipeLines, LP', 'Shell', '28 Monument Alley', 'Urazovo', '309975', 'Russia', '2022-09-08 14:49:53'),
(36, 'Howard Hughes Corporation (The)', 'Hunt', '887 Nevada Avenue', 'Tuscaloosa', '35487', 'United States', '2022-09-08 14:49:53'),
(37, 'Diebold Nixdorf Incorporated', 'Meade', '8193 Hallows Parkway', 'Kota Bharu', '15540', 'Malaysia', '2022-09-08 14:49:53'),
(39, 'GAIN Capital Holdings, Inc.', 'Fancie', '05 Elmside Place', 'Mapiripán', '943057', 'Colombia', '2022-09-08 14:49:53'),
(43, 'Matson, Inc.', 'Leshia', '69 Morrow Center', 'Skulsk', '62-560', 'Poland', '2022-09-08 14:49:53'),
(44, 'Texas Capital Bancshares, Inc.', 'Talbert', '8 Cody Court', 'Sao Hai', '18160', 'Thailand', '2022-09-08 14:49:53'),
(46, 'Genworth Financial Inc', 'Deloris', '99 Annamark Court', 'Boco', '2425-405', 'Portugal', '2022-09-08 14:49:53'),
(48, 'Andina Acquisition Corp. II', 'Doralynne', '00 Brown Terrace', 'Buenavista', '8601', 'Philippines', '2022-09-08 14:49:53'),
(54, 'ICC Holdings, Inc.', 'Weber', '893 3rd Place', 'Sochi', '354084', 'Russia', '2022-09-08 14:49:53'),
(55, 'Guaranty Bancorp', 'Carolyne', '24 Glendale Lane', 'Del Pilar', '8720', 'Philippines', '2022-09-08 14:49:53'),
(59, 'Hemisphere Media Group, Inc.', 'Golda', '270 Springview Court', 'Oakland', '94627', 'United States', '2022-09-08 14:49:53'),
(62, 'Western Asset Mortgage Defined Opportunity Fund Inc', 'Roanna', '80 Sutteridge Alley', 'Buenavista', '8601', 'Philippines', '2022-09-08 14:49:53'),
(63, 'ONE Gas, Inc.', 'Nissie', '02 Spaight Parkway', 'Padre Las Casas', '10702', 'Dominican Republic', '2022-09-08 14:49:53'),
(65, 'M/I Homes, Inc.', 'Marlie', '7 Sloan Plaza', 'Penteado', '2860-424', 'Portugal', '2022-09-08 14:49:53'),
(66, 'Targa Resources Partners LP', 'Frasier', '7818 Comanche Terrace', 'Ourinhos', '19900-000', 'Brazil', '2022-09-08 14:49:53'),
(69, 'Zions Bancorporation', 'Conant', '50 Hanson Crossing', 'Spirovo', '422338', 'Russia', '2022-09-08 14:49:53'),
(71, 'TCF Financial Corporation', 'Paulie', '2 5th Point', 'Calape', '6328', 'Philippines', '2022-09-08 14:49:53'),
(72, 'Luxoft Holding, Inc.', 'Peter', '075 Oak Valley Circle', 'Madison', '53716', 'United States', '2022-09-08 14:49:53'),
(76, 'Zions Bancorporation', 'Dianemarie', '8 Service Pass', 'Sodankylä', '99601', 'Finland', '2022-09-08 14:49:53'),
(78, 'Southcross Energy Partners, L.P.', 'Karlens', '82 Corben Avenue', 'Serra da Boa Viagem', '3080-352', 'Portugal', '2022-09-08 14:49:53'),
(79, 'Syndax Pharmaceuticals, Inc.', 'Malynda', '457 Clove Lane', 'Sarlat-la-Canéda', '24212 CEDEX', 'France', '2022-09-08 14:49:53'),
(80, 'Vanda Pharmaceuticals Inc.', 'Jordon', '60338 Waubesa Alley', 'Bang Klam', '90110', 'Thailand', '2022-09-08 14:49:53'),
(82, 'Travelzoo', 'Robyn', '371 Tony Center', 'Passal', '4960-130', 'Portugal', '2022-09-08 14:49:53'),
(83, 'Vanguard Global ex-U.S. Real Estate ETF', 'Donnamarie', '53984 Memorial Terrace', 'Pisão', '3220-331', 'Portugal', '2022-09-08 14:49:53'),
(86, 'Entergy Louisiana, Inc.', 'Rochella', '62231 Melvin Circle', 'Habo', '566 24', 'Sweden', '2022-09-08 14:49:53'),
(90, 'Pampa Energia S.A.', 'Meridel', '02290 Basil Drive', 'Belverde', '2845-487', 'Portugal', '2022-09-08 14:49:53'),
(92, 'Tyson Foods, Inc.', 'Ade', '161 Toban Avenue', 'Maní', '854019', 'Colombia', '2022-09-08 14:49:53'),
(93, 'United Insurance Holdings Corp.', 'Rochella', '9 Beilfuss Parkway', 'Cabittaogan', '2727', 'Philippines', '2022-09-08 14:49:53'),
(97, 'OncoSec Medical Incorporated', 'Ferdinand', '5 Annamark Place', 'Sélestat', '67604 CEDEX', 'France', '2022-09-08 14:49:53'),
(99, 'First Trust Small Cap Value AlphaDEX Fund', 'Lora', '464 Oriole Terrace', 'Benoni', '1527', 'South Africa', '2022-09-08 14:49:53'),
(100, 'Consolidated Water Co. Ltd.', 'Marrilee', '71708 Walton Pass', 'Kihniö', '39820', 'Finland', '2022-09-08 14:49:53'),
(101, 'Fanhua Inc.', 'Johann', '514 Bartelt Center', 'Kuching', '93590', 'Malaysia', '2022-09-08 14:49:53'),
(102, 'WisdomTree Germany Hedged Equity Fund', 'Rubin', '2 Shoshone Center', 'Emiliano Zapata', '55690', 'Mexico', '2022-09-08 14:49:53'),
(185, 'Western Gas Partners, LP', 'Lindy', '2104 Kipling Place', 'Borås', '501 88', 'Sweden', '2022-09-08 14:49:53'),
(188, 'Sun Hydraulics Corporation', 'Gianna', '68826 Park Meadow Drive', 'Jacksonville', '32277', 'United States', '2022-09-08 14:49:53'),
(189, 'Regal Beloit Corporation', 'Pier', '057 Kings Way', 'Uryupinsk', '403140', 'Russia', '2022-09-08 14:49:53'),
(190, 'Gevo, Inc.', 'Godfrey', '0769 Sachtjen Street', 'Strumica', '2400', 'Macedonia', '2022-09-08 14:49:53'),
(192, 'Insight Select Income Fund', 'Hamil', '0313 Waywood Way', 'Cordova', '6017', 'Philippines', '2022-09-08 14:49:53'),
(193, 'Lam Research Corporation', 'Lulu', '2 Garrison Alley', 'Leksand', '793 50', 'Sweden', '2022-09-08 14:49:53'),
(194, 'Calamos Convertible Opportunities and Income Fund', 'Aileen', '6528 Village Junction', 'Brie-Comte-Robert', '77254 CEDEX', 'France', '2022-09-08 14:49:53'),
(195, 'Clear Channel Outdoor Holdings, Inc.', 'Abigale', '66829 Drewry Junction', 'Khāngāh Dogrān', '39250', 'Pakistan', '2022-09-08 14:49:53'),
(199, 'National General Holdings Corp', 'Theresina', '31150 Bartillon Lane', 'Ruen', '8542', 'Bulgaria', '2022-09-08 14:49:53'),
(200, 'Atlas Financial Holdings, Inc.', 'Fitzgerald', '5457 Dottie Hill', 'Maple Ridge', 'V2X', 'Canada', '2022-09-08 14:49:53'),
(201, 'The Medicines Company', 'Andy', '86 Annamark Terrace', 'Quitilipi', '3530', 'Argentina', '2022-09-08 14:49:53'),
(202, 'Navient Corporation', 'Gerri', '73962 Killdeer Trail', 'Gostagayevskaya', '353400', 'Russia', '2022-09-08 14:49:53'),
(206, 'Naked Brand Group Inc.', 'Esme', '71 Green Ridge Junction', 'Río Colorado', '8138', 'Argentina', '2022-09-08 14:49:53'),
(208, 'Yelp Inc.', 'Alicea', '35092 Kropf Terrace', 'Caen', '14922 CEDEX 9', 'France', '2022-09-08 14:49:53'),
(209, 'Blackrock MuniYield Quality Fund III, Inc.', 'Sascha', '4 Division Park', 'Passa Quatro', '37460-000', 'Brazil', '2022-09-08 14:49:53'),
(213, 'Blackrock Corporate High Yield Fund, Inc.', 'Becky', '1 Hansons Parkway', 'Azueira', '2665-021', 'Portugal', '2022-09-08 14:49:53'),
(215, 'Blackrock MuniEnhanced Fund, Inc.', 'Lin', '26 8th Park', 'Vyshneye Dolgoye', '303773', 'Russia', '2022-09-08 14:49:53'),
(216, 'Discovery Communications, Inc.', 'Rori', '2727 Eliot Drive', 'Manalad', '6109', 'Philippines', '2022-09-08 14:49:53'),
(218, 'Citigroup Inc.', 'Lezley', '6 Ridgeview Place', 'Spas-Zaulok', '141667', 'Russia', '2022-09-08 14:49:53'),
(224, 'Psychemedics Corporation', 'Tomaso', '43 David Avenue', 'Zašová', '756 51', 'Czech Republic', '2022-09-08 14:49:53'),
(226, 'Assured Guaranty Ltd.', 'Clementia', '35 Hooker Hill', 'Kawanoechō', '799-0412', 'Japan', '2022-09-08 14:49:53'),
(230, 'Ocean Rig UDW Inc.', 'Gizela', '48942 Dapin Crossing', 'Rungis', '94631 CEDEX 1', 'France', '2022-09-08 14:49:53'),
(232, 'Brookfield Property Partners L.P.', 'Lydie', '265 Golf Junction', 'La Gacilly', '56209 CEDEX', 'France', '2022-09-08 14:49:53'),
(235, 'Selective Insurance Group, Inc.', 'Luciano', '6570 Blue Bill Park Terrace', 'Honkajoki', '38951', 'Finland', '2022-09-08 14:49:53'),
(236, 'Petit', 'Gegory', '15 rue machin', 'Maubeuge', '59600', 'France', '2022-09-08 14:49:53');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
