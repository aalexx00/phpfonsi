CREATE TABLE IF NOT EXISTS `pedido` (
  `codped` int(11) NOT NULL AUTO_INCREMENT,
  `codusu` int(11) NOT NULL,
  `codpro` int(11) NOT NULL,
  `fecped` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `dirusuped` varchar(50) NOT NULL,
  `telusuped` varchar(12) NOT NULL,
  PRIMARY KEY (`codped`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `pedido` (`codped`, `codusu`, `codpro`, `fecped`, `estado`, `dirusuped`, `telusuped`) VALUES
(1, 1, 4, '2021-01-12 16:53:45', 1, '', ''),
(2, 2, 4, '2021-01-14 19:25:24', 1, '', '');

CREATE TABLE IF NOT EXISTS `producto` (
  `codpro` int(11) NOT NULL AUTO_INCREMENT,
  `nompro` varchar(50) DEFAULT NULL,
  `despro` varchar(100) DEFAULT NULL,
  `prepro` int(6) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `rutimapro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codpro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `producto` (`codpro`, `nompro`, `despro`, `prepro`, `estado`, `rutimapro`) VALUES
(1, 'Papel Crepe', 'Ideal para decoraci&oacute;n de trabajos escolares', 15, 1, 'crepe.jpg'),
(2, 'Papel Bond A4', 'Papel ultra blanco de 180gr', 10, 1, 'bonda4.jpg'),
(3, 'Colores Faber Castell', 'Caja de colores x 12 unid. + 2 de regalo', 6, 1, 'colores12unid.jpg'),
(4, 'Ecolapices Faber Castell', 'Caja de ecolapices x 60 unid.', 12, 1, 'ecolapices60unid.jpg'),
(5, 'Estuche lapices Faber Castell', 'Estuche de lapiceros de colores x 5 unid.', 7, 1, 'lapiceros5unid.jpg'),
(6, 'Tempera Artesco 250 ml', 'Frasco de tempera Artesco de 250 ml', 4, 1, 'temperaartesco.jpg'),
(7, 'Plastilina Norma', 'Caja con 12 barras plastilinas. 260 gr', 6, 1, 'plastilinanorma.jpg'),
(8, 'Cuaderno Standford', 'Cuaderno cuadriculado Standford 100 hojas', 3, 1, 'cuadernostandford.jpg');

CREATE TABLE IF NOT EXISTS `usuario` (
  `codusu` int(11) NOT NULL AUTO_INCREMENT,
  `nomusu` varchar(50) DEFAULT NULL,
  `apeusu` varchar(50) DEFAULT NULL,
  `emausu` varchar(50) NOT NULL,
  `pasusu` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`codusu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `usuario` (`codusu`, `nomusu`, `apeusu`, `emausu`, `pasusu`, `estado`) VALUES
(1, 'pepe', 'los palotes', 'pepe@gmail.com', '123456', 1),
(2, 'alex', 'garcia', 'alex@gmail.com', '123456', 1),
(8, 'Peras', 'Manzanas', 'PMs@gmail.com', '123456', 1);
