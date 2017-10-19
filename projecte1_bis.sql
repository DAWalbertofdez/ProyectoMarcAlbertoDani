-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2017 a las 18:37:44
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 'Connor Ride WRC 105', '2016-04-01', '2016-04-15', 'Barrio de Montecarmelo', 'Bicicleta WRC robada de un trastero por la noche a finales de Marzo de 2016.', 'WRC', 'Connor Ride WRC 105', 'Negra con detalles rojos', '2008', '', '196966', '', '50.00'),
(2, 'GIANT Revel 1', '2016-02-09', '2016-02-09', 'Calle Alberto Alcocer', 'Bicicleta GIANT Revel 1, cuadro de 18 pulgadas, robada en un garaje de la calle Alberto Alcocer', 'GIANT', 'GIANT Revel 1', 'Negra con detalles azules', '2011', '', NULL, '', '99.99'),
(3, 'Wilier GTR', '2016-03-03', '2016-02-07', 'Barrio de Chamartín', 'Bicicleta Wilier GTR, robada en el barrio de Chamartín ', 'Wilier', 'GTR', 'Negro, verde y amarillo', '2015', '', '87120030', '', NULL),
(4, 'Felt Ar 1', '2016-01-16', '2016-01-16', 'Barrio de Gava Mar', 'Bicicleta Felt Ar 1, robada la madrugada del 15-16 de la terraza de un primer piso en Gava Mar', 'Felt', 'Ar 1', 'Negra', '2015', '', 'F508D1475', '', NULL),
(5, 'Agece Scape', '2015-12-05', '2015-11-29', 'Avenida Virgen de la Montaña', 'Bicicleta Agece Scape, robada en Avenida Virgen de la Montaña', 'Agece', 'Scape', 'Negra con detalles azules', '2015', '', 'XD3060134', '', NULL),
(6, 'Lapierre X-Race Team 385', '2015-10-02', '2015-10-03', 'Zona de Baeza en Jaén', 'Me han robado mi Lapierre X-Race Team 385 de talla XL, por la zona de Baeza en Jaén', 'Lapierre', 'X-Race Team 385', 'Negra y blanca', '2007', '', NULL, '', '99.99'),
(7, 'Alpine Star Beach Cruiser', '2017-02-23', '2017-02-18', 'Plaza del Ajuntamiento, Valencia', 'Nos han robado esta bicicleta beach cruiser en el interior de una finca, en la zona de la plaza del Ayuntamiento (Valencia)', 'Alpine', 'Star Beach Cruiser', 'Naranja', NULL, '', NULL, '', NULL),
(8, 'Kona Sutra', '2017-08-17', '2107-08-16', 'Calle Santa Isabel, Madrid', 'Bicicleta Kona Sutra robada por la zona de santa isabel en Madrid', 'Kona', 'Sutra', 'Negra', '2012', '', NULL, '', NULL),
(9, 'Merida Big Ninety Nine Carbon PRO 3000', '2017-06-04', '2017-06-02', 'Plasencia, Cáceres', 'Nos han robado nuestra bicicleta Merida por Plasencia, Cáceres el modelo es Big Ninety Nine Carbon 3000', 'Merida', 'Big 99 Carbon 3000', 'Blanca y negra', '2013', '', NULL, '', NULL),
(10, 'Orbea Onix (Opal) Dama 11 53 Rosa', '2017-08-03', '2017-07-29', 'Tafalla, Navarra', 'Bicicleta Orbea Onix robada en un trastero entre el 29/07 y el 30/07/2017.', 'Orbea', 'Onix Opal Dama 11 53 Rosa', 'Negro y detalles rosas', '2012', '', '01091150428', '', NULL),
(11, 'BH Boston Wave', '2017-07-21', '2017-07-20', 'Centro deportivo La Flota, Murcia', 'Bicicleta BH Boston Wave estacionada en zona para bicis en el centro deportivo La Flota', 'BH', 'Boston Wave', 'Blanco', '2013', '', NULL, '', NULL),
(12, 'Scott Aspect 10', '2017-09-10', '2017-09-05', 'La Marina, Alicante', 'Bicicleta Scott Aspect 10 robada por el barrio La Marina, Alicante', 'Scott', 'Aspect 10', 'Negro con detalles  rojos', '2011', '', NULL, '', NULL),
(13, 'Specialized FSR Camber', '2017-10-01', '2017-09-27', 'La Vall, Castellón', 'Fue robada la noche del 26 al 27 de septiembre de 2017 de la cochera particular', 'Specialized', 'FSR Camber', 'Blanca', '2013', '', '4578RT3X77', '', NULL);

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
  MODIFY `anu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
