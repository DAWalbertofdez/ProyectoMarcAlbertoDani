-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2017 a las 17:58:52
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `projecte1_bis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `anu_id` int(4) NOT NULL,
  `anu_titol` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `anu_data_anunci` date NOT NULL,
  `anu_data_robatori` date NOT NULL,
  `anu_ubicacio_robatori` varchar(35) COLLATE utf8_spanish_ci NOT NULL,
  `anu_descripcio_robatori` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `anu_marca` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `anu_model` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_color` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_antiguitat` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_descripcio` text COLLATE utf8_spanish_ci NOT NULL,
  `anu_numero_serie` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anu_foto` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `anu_compensacio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`anu_id`, `anu_titol`, `anu_data_anunci`, `anu_data_robatori`, `anu_ubicacio_robatori`, `anu_descripcio_robatori`, `anu_marca`, `anu_model`, `anu_color`, `anu_antiguitat`, `anu_descripcio`, `anu_numero_serie`, `anu_foto`, `anu_compensacio`) VALUES
(1, 'Connor Ride WRC 105', '2016-04-01', '2016-04-15', 'Barrio de Montecarmelo', 'Bicicleta WRC robada de un trastero por la noche a finales de Marzo de 2016.', 'WRC', 'Connor Ride WRC 105', 'Negra con detalles rojos', '2008', '', '196966', 'wrc.jpg', '50.00'),
(2, 'GIANT Revel 1', '2016-02-09', '2016-02-09', 'Calle Alberto Alcocer', 'Bicicleta GIANT Revel 1, cuadro de 18 pulgadas, robada en un garaje de la calle Alberto Alcocer', 'GIANT', 'GIANT Revel 1', 'Negra con detalles azules', '2011', '', NULL, 'giant.jpg', '99.99'),
(3, 'Wilier GTR', '2016-03-03', '2016-02-07', 'Barrio de Chamartín', 'Bicicleta Wilier GTR, robada en el barrio de Chamartín ', 'Wilier', 'GTR', 'Negro, verde y amarillo', '2015', '', '87120030', 'wilier.jpg', NULL),
(4, 'Felt Ar 1', '2016-01-16', '2016-01-16', 'Barrio de Gava Mar', 'Bicicleta Felt Ar 1, robada la madrugada del 15-16 de la terraza de un primer piso en Gava Mar', 'Felt', 'Ar 1', 'Negra', '2015', '', 'F508D1475', 'felt.jpg', NULL),
(5, 'Agece Scape', '2015-12-05', '2015-11-29', 'Avenida Virgen de la Montaña', 'Bicicleta Agece Scape, robada en Avenida Virgen de la Montaña', 'Agece', 'Scape', 'Negra con detalles azules', '2015', '', 'XD3060134', 'AgeceScape.jpg', NULL),
(6, 'Lapierre X-Race Team 385', '2015-10-02', '2015-10-03', 'Zona de Baeza en Jaén', 'Me han robado mi Lapierre X-Race Team 385 de talla XL, por la zona de Baeza en Jaén', 'Lapierre', 'X-Race Team 385', 'Negra y blanca', '2007', '', NULL, 'lapierre2.jpg', '99.99'),
(7, 'Alpine Star Beach Cruiser', '2017-02-23', '2017-02-18', 'Plaza del Ajuntamiento, Valencia', 'Nos han robado esta bicicleta beach cruiser en el interior de una finca, en la zona de la plaza del Ayuntamiento (Valencia)', 'Alpine', 'Star Beach Cruiser', 'Naranja', NULL, '', NULL, 'alpine.jpg', NULL),
(8, 'Kona Sutra', '2017-08-17', '2017-08-16', 'Calle Santa Isabel, Madrid', 'Bicicleta Kona Sutra robada por la zona de santa isabel en Madrid', 'Kona', 'Sutra', 'Negra', '2012', '', NULL, 'ConaSutra.jpg', NULL),
(9, 'Merida Big Ninety Nine Carbon PRO 3000', '2017-06-04', '2017-06-02', 'Plasencia, Cáceres', 'Nos han robado nuestra bicicleta Merida por Plasencia, Cáceres el modelo es Big Ninety Nine Carbon 3000', 'Merida', 'Big 99 Carbon 3000', 'Blanca y negra', '2013', '', NULL, 'merida.jpg', NULL),
(10, 'Orbea Onix (Opal) Dama 11 53 Rosa', '2017-08-03', '2017-07-29', 'Tafalla, Navarra', 'Bicicleta Orbea Onix robada en un trastero entre el 29/07 y el 30/07/2017.', 'Orbea', 'Onix Opal Dama 11 53 Rosa', 'Negro y detalles rosas', '2012', '', '01091150428', 'orbea.jpg', NULL),
(11, 'BH Boston Wave', '2017-07-21', '2017-07-20', 'Centro deportivo La Flota, Murcia', 'Bicicleta BH Boston Wave estacionada en zona para bicis en el centro deportivo La Flota', 'BH', 'Boston Wave', 'Blanco', '2013', '', NULL, 'BH.jpg', NULL),
(12, 'Scott Aspect 10', '2017-09-10', '2017-09-05', 'La Marina, Alicante', 'Bicicleta Scott Aspect 10 robada por el barrio La Marina, Alicante', 'Scott', 'Aspect 10', 'Negro con detalles  rojos', '2011', '', NULL, 'scott.jpg', NULL),
(13, 'Specialized FSR Camber', '2017-10-01', '2017-09-27', 'La Vall, Castellón', 'Fue robada la noche del 26 al 27 de septiembre de 2017 de la cochera particular', 'Specialized', 'FSR Camber', 'Blanca', '2013', '', '4578RT3X77', 'especialized.jpg', NULL),
(14, 'Focus Whistler Pro ', '2017-10-19', '2017-10-10', 'Rondilla, Valladolid', 'Bicicleta robada en la cochera patio de la convivencia', 'Focus', 'Whistler Pro', 'Blanco', '2016', '', '319432063', 'FocusWhistler.jpg', NULL),
(15, 'B-TWIN Rockrider 520 Nave Blue', '2017-07-18', '2017-06-27', 'El Vendrell, Tarragona', 'Fue robada el pasado martes 27/06/2017 en el garaje de casa', 'B-TWIN', 'Rockrider 520 Nave Blue', 'Negra y azul', '2017', '', NULL, 'btwin.jpg', NULL),
(16, 'Lapierre Sensium 200', '2017-05-23', '2017-05-20', 'Jerez de la frontera, Cádiz', 'Bicicleta de carbono de la marca Lapierre robada en Jerez de la frontera, Cádiz', 'Lapierre', 'Sensium 200', 'Negra y blanca', '2014', '', NULL, 'lapierre.jpg', '99.99'),
(17, 'Santa Cruz Blur LT', '2017-05-28', '2017-05-08', 'El puerto de Santa Maria, Cádiz', 'Bicicleta robada en el barrio de Santa Maria, en un garaje comunitario', 'Santa Cruz', 'Blur LT', 'Naranja', NULL, '', NULL, 'santacruz.jpg', NULL),
(18, 'Marin Bobcat Trail', '2017-04-27', '2017-04-20', 'Valencia', 'Robada de interior de bajo vivienda de un patio de vecinos rompiendo puerta de entrada al local', 'Marin', 'Bobcat Trail', 'Verde claro metalizado', '1996', '', NULL, 'marin.jpg', NULL),
(19, 'Gazelle Primeur', '2017-02-12', '2017-02-08', 'Zona torre Acbar, Barcelona', 'Robada en la zona de la torre Acbar', 'Gazelle', 'Primeur', 'Azul oscuro', NULL, '', NULL, 'gazelle.jpg', NULL),
(20, 'Seven Serius Unrivaled 8', '2017-01-12', '2017-01-10', 'Plaza del Pilar, Zaragoza', 'Bicicleta robada en la plaza del Pilar, tenía dos candados que rompieron', 'Seven', 'Serious Unrivaled 8', 'Blanco', NULL, '', NULL, 'seven.jpg', '99.99'),
(21, 'Scott Scale 900 RC', '2017-01-24', '2016-12-23', 'Barrio de Montserrat, Barcelona', 'Me la robaron por el barrio de Montserrat mientras estaba haciendo unos recados', 'Scott', 'Scale 900 RC', 'Negra y amarilla', '2015', '', NULL, 'scott.jpg', '99.99'),
(22, 'Fixie Aventón Cordoba ', '2016-12-10', '2016-12-05', 'Barcelona', 'Bicicleta robada en el párquing de bicis de la UPC Campus Nord', 'Fixie', 'Aventón Cordoba', 'Negra', '2016', '', 'AGDB15F0112', 'fixie.jpg', '50.00'),
(23, 'Cannondale Scalpel', '2016-11-21', '2016-11-13', 'San Lorenzo de El Escorial, Madrid', 'Robada en mi garaje personal por la noche', 'Cannondable', 'Scalpel', 'Roja y blanca', '2011', '', 'NM19920', 'cannondale.jpg', NULL),
(24, 'Brompton H3R', '2014-12-20', '2014-11-16', 'Badalona, Barcelona', 'Robada en el trabajo ', 'Brompton', 'H3R', 'Naranja', '2014', '', '1405289944', 'brompton.jpg', '99.99'),
(25, 'Specialized S-Works Enduro', '2014-08-11', '2014-08-03', 'Bustarviejo, Madrid', 'Robada delante de mi casa, tenía 3 candados', 'Specialized', 'S-Works Enduro', 'Negro', '2004', '', NULL, 'especialized2.jpg', '60.00'),
(26, 'Trek Jamis Dakar XCT 2.0', '2014-09-28', '2014-09-26', 'Alcobendas, Madrid', 'La robaron al descuido con forcejeo, me rompieron el hombro en el intento', 'Trek', 'Jamis Dakar XCT 2.0', 'Naranja', '2010', '', NULL, 'trek.jpg', '99.99'),
(27, 'Peugeot Blue Lagoon', '2014-04-07', '2014-04-03', 'Atocha, Madrid', 'Robada en la calle Cañizares con Atocha, cerca de la Plaza Santa Ana', 'Peugeot', 'Blue Lagoon', 'Azul', '1991', '', NULL, 'peugeot.jpg', '50.00'),
(28, 'Contini Mortirolo', '2014-01-28', '2014-01-25', 'Muskiz, Vizcaya', 'Posiblemente robada por rumanos de zona Cantabria', 'Contini', 'Mortirolo', 'Naranja y azul', '1980', '', NULL, 'contini.jpg', '99.99'),
(29, 'KTM Ultra Sport', '2013-02-16', '2013-02-10', 'Vicálvaro, Madrid', 'La bici estaba candada en la señal que hay a la puerta del local y dos personas en scooter la robaron', 'KTM', 'Ultra Sport', 'Blanca', '2010', '', 'GT5643DF', 'ktm.jpg', '99.99'),
(30, 'Canyon Aeroad CF 9.0 ST', '2013-06-11', '2013-06-08', 'Madrid', 'Robada a modo de atraco en Madrid', 'Canyon', 'Aeroad CF 9.0 ST', 'Negra', '2011', '', NULL, 'canyon.jpg', '70.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`anu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
