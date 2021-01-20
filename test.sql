-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-01-2021 a las 19:01:17
-- Versión del servidor: 5.6.13
-- Versión de PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginaphp`
--

CREATE TABLE IF NOT EXISTS `paginaphp` (
  `Username` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paginaphp`
--

INSERT INTO `paginaphp` (`Username`, `Password`) VALUES
('pepillo', '1234'),
('axel', '1347'),
('asd', 'as'),
('peret', 'peret123'),
('alex123', '12345'),
('kiko', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `codped` int(11) NOT NULL AUTO_INCREMENT,
  `codusu` int(11) NOT NULL,
  `codpro` int(11) NOT NULL,
  `fecped` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `dirusuped` varchar(50) NOT NULL,
  `telusuped` varchar(12) NOT NULL,
  PRIMARY KEY (`codped`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`codped`, `codusu`, `codpro`, `fecped`, `estado`, `dirusuped`, `telusuped`) VALUES
(1, 1, 4, '2021-01-12 16:53:45', 1, '', ''),
(16, 2, 1, '2021-01-20 20:00:31', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `codpro` int(11) NOT NULL AUTO_INCREMENT,
  `nompro` varchar(50) DEFAULT NULL,
  `despro` varchar(100) DEFAULT NULL,
  `prepro` int(6) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `rutimapro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codpro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codpro`, `nompro`, `despro`, `prepro`, `estado`, `rutimapro`) VALUES
(1, 'Papel Crepe', 'Ideal para decoraci&oacute;n de trabajos escolares', 15, 1, 'crepe.jpg'),
(2, 'Papel Bond A4', 'Papel ultra blanco de 180gr', 10, 1, 'bonda4.jpg'),
(3, 'Colores Faber Castell', 'Caja de colores x 12 unid. + 2 de regalo', 6, 1, 'colores12unid.jpg'),
(4, 'Ecolapices Faber Castell', 'Caja de ecolapices x 60 unid.', 12, 1, 'ecolapices60unid.jpg'),
(5, 'Estuche lapices Faber Castell', 'Estuche de lapiceros de colores x 5 unid.', 7, 1, 'lapiceros5unid.jpg'),
(6, 'Tempera Artesco 250 ml', 'Frasco de tempera Artesco de 250 ml', 4, 1, 'temperaartesco.jpg'),
(7, 'Plastilina Norma', 'Caja con 12 barras plastilinas. 260 gr', 6, 1, 'plastilinanorma.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `codusu` int(11) NOT NULL AUTO_INCREMENT,
  `nomusu` varchar(50) DEFAULT NULL,
  `apeusu` varchar(50) DEFAULT NULL,
  `emausu` varchar(50) NOT NULL,
  `pasusu` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`codusu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codusu`, `nomusu`, `apeusu`, `emausu`, `pasusu`, `estado`) VALUES
(1, 'pepe', 'los palotes', 'pepe@gmail.com', '123456', 1),
(2, 'alex', 'garcia', 'alex@gmail.com', '123456', 1),
(9, 'Peras', 'Manzanas', 'PMs@gmail.com', '123456', 1),
(10, 'tst', 'Manzanas', 'mangris@gmail.com', '132456', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
