-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 11, 2025 at 02:41 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u303392960_la_capuera_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `caja`
--

INSERT INTO `caja` (`caja_id`, `caja_numero`, `caja_nombre`, `caja_efectivo`) VALUES
(1, 1, 'Caja Principal', 717200.00),
(4, 2, 'Caja Auxiliar', 0.00),
(6, 3, 'david', 3000.00),
(7, 4, 'aylin', 29660.00);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_ubicacion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(1, 'Energizantes', ''),
(2, 'Gaseosas', ''),
(3, 'Chocolates', ''),
(4, 'Alfajores', ''),
(5, 'Caramelos', ''),
(6, 'Cigarrillos', ''),
(7, 'Yerba', ''),
(8, 'Harinas', ''),
(9, 'Cervezas', ''),
(10, 'Vinos', ''),
(11, 'Galletitas', ''),
(12, 'Articulos de Limpieza', ''),
(13, 'Pañales', ''),
(14, 'Productos de Higiene Personal', ''),
(15, 'Lacteos', ''),
(16, 'Panaderia', ''),
(17, 'Verduras y Frutas', ''),
(18, 'Helados', ''),
(19, 'Congelados', ''),
(20, 'Libreria', ''),
(21, 'Insecticidas', ''),
(22, 'Jugos', ''),
(23, 'Alimentos', ''),
(24, 'Snacks', ''),
(25, 'Electrónica varios', '');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_tipo_documento` varchar(20) NOT NULL,
  `cliente_numero_documento` varchar(35) NOT NULL,
  `cliente_nombre` varchar(50) NOT NULL,
  `cliente_apellido` varchar(50) NOT NULL,
  `cliente_provincia` varchar(30) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_telefono` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_tipo_documento`, `cliente_numero_documento`, `cliente_nombre`, `cliente_apellido`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_telefono`, `cliente_email`) VALUES
(1, 'Otro', 'N/A', 'Publico', 'General', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, 'Otro', '12346789', 'GENÉRICO', 'GENÉRICO', 'MISIONES', 'JARDÍN AMÉRICA', 'RUTA 7', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `empresa_nombre` varchar(90) NOT NULL,
  `empresa_telefono` varchar(20) NOT NULL,
  `empresa_email` varchar(50) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_nombre`, `empresa_telefono`, `empresa_email`, `empresa_direccion`) VALUES
(1, 'LA CAPUERA RUTA 7', '', '', 'RUTA 7');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(77) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_stock_total` int(25) NOT NULL,
  `producto_tipo_unidad` varchar(20) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_marca` varchar(35) NOT NULL,
  `producto_modelo` varchar(35) NOT NULL,
  `producto_estado` varchar(20) NOT NULL,
  `producto_foto` varchar(500) NOT NULL,
  `categoria_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(5, '7794612065917', 'Hamlet chocolate de Leche y Cookies 43gr', 10, 'Unidad', 450.00, 600.00, 'Hamlet', '', 'Habilitado', '', 3),
(6, '7790580134228', 'Caramelos Arcor Menta Chocolate x 140gr.', 10, 'Unidad', 1700.00, 2200.00, 'Arcor', '', 'Habilitado', '', 5),
(7, '7792198006621', 'Yerba Natura Suave 500gr.', 10, 'Unidad', 1300.00, 1800.00, 'Natura', '', 'Habilitado', '', 7),
(8, '7790573000561', 'Yerba Mate Rojo Tradicional 500gr.', 10, 'Unidad', 1100.00, 1500.00, 'Mate Rojo', '', 'Habilitado', '', 7),
(9, '7790387014624', 'Yerba Union Suave Original 500gr', 10, 'Unidad', 1400.00, 2000.00, 'Union', '', 'Habilitado', '', 7),
(10, '7790387015324', 'Yerba Mañanita 500gr.', 10, 'Unidad', 1400.00, 2000.00, 'Mañanita', '', 'Habilitado', '', 7),
(11, '7790387013627', 'Yerba Taragui 500gr.', 10, 'Unidad', 1400.00, 2000.00, 'Taragui', '', 'Habilitado', '', 7),
(12, '7790036000626', 'Baggio Pronto durazno-naranja 200ml', 10, 'Unidad', 350.00, 450.00, 'Baggio', '', 'Habilitado', '', 22),
(13, '7792798013470', 'Stella Artois sin alcohol 330cc descartable', 10, 'Unidad', 1400.00, 1800.00, 'Stella Artois', '', 'Habilitado', '', 9),
(14, '7790240042108', 'Vino Alma Mora Malbec 750cc', 10, 'Unidad', 4000.00, 5000.00, 'Alma Mora', '', 'Habilitado', '', 10),
(15, '7791813555100', 'Gaseosa 7up Retornable 2.25lt.', 10, 'Unidad', 2500.00, 3200.00, '7up', '', 'Habilitado', '', 2),
(16, '7790895000430', 'Gaseosa Coca Cola 1.5lt. descartable', 10, 'Unidad', 2700.00, 3500.00, 'Coca Cola', '', 'Habilitado', '', 2),
(17, '7790036000589', 'Jugo Baggio Pronto durazno 200ml', 10, 'Unidad', 350.00, 450.00, 'Baggio', '', 'Habilitado', '', 22),
(18, '7790036000619', 'Jugo Baggio Pronto Multifruta 200ml', 10, 'Unidad', 350.00, 450.00, 'Baggio', '', 'Habilitado', '', 22),
(19, '7791540053184', 'Frizze Blue Evolution 1lt.', 10, 'Unidad', 2500.00, 3500.00, 'Frizze', '', 'Habilitado', '', 10),
(20, '7790895643866', 'Ades (Soja mas Jugo de Frutas Tropicales) 1lt.', 10, 'Unidad', 2500.00, 3200.00, 'Ades', '', 'Habilitado', '', 22),
(21, '7790895643835', 'Ades (Soja mas Jugo de Manzana) 1lt.', 10, 'Unidad', 2500.00, 3200.00, 'Ades', '', 'Habilitado', '', 22),
(22, '7790895643842', 'Ades (Soja mas Jugo de Naranja) 1lt.', 10, 'Unidad', 2500.00, 3200.00, 'Ades', '', 'Habilitado', '', 22),
(23, '7793699045959', 'Lavandina Sedilé 1lt.', 10, 'Unidad', 600.00, 900.00, 'Sedilé', '', 'Habilitado', '', 12),
(24, '7793699045485', 'Lavavajillas Sedilé Rosa Mosqueta 750ml.', 10, 'Unidad', 900.00, 1200.00, 'Sedile', '', 'Habilitado', '', 12),
(25, '7793699045461', 'Lavavajillas Sedilé Limón 750ml.', 10, 'Unidad', 850.00, 1200.00, 'Sedilé', '', 'Habilitado', '', 12),
(26, '7791290793750', 'Suavizante Vivere Clásico 900ml.', 10, 'Unidad', 1600.00, 2300.00, 'Vivere', '', 'Habilitado', '', 12),
(27, '7798024450118', 'Mister Trapo de Piso 62x48 gris', 10, 'Unidad', 750.00, 1000.00, 'Mister Trapo', '', 'Habilitado', '', 12),
(28, '7794440001729', 'Virulana Rollitos x 6u. (Lana de Acero)', 10, 'Unidad', 800.00, 1200.00, 'Virulana', '', 'Habilitado', '', 12),
(29, '7790250040767', 'Pañales Babysec Ultra Soft 8u. Mediano', 10, 'Unidad', 2200.00, 3000.00, 'Babysec', '', 'Habilitado', '', 13),
(30, '7790250040750', 'Pañales Babysec Ultra Soft 12u. Pequeño', 10, 'Unidad', 2200.00, 3000.00, 'Babysec', '', 'Habilitado', '', 13),
(31, '7790250040774', 'Pañales Babysec Ultra Soft 8 u. Grande', 10, 'Unidad', 2200.00, 3000.00, 'Babysec', '', 'Habilitado', '', 13),
(32, '7791290791732', 'Jabón en Polvo Ala c/bicarbonato 400gr.', 10, 'Unidad', 700.00, 1000.00, 'Ala', '', 'Habilitado', '', 12),
(33, '7791290791763', 'Jabon en polvo Ala Matic c/Bicarbonato 400gr.', 10, 'Unidad', 700.00, 1000.00, 'Ala', '', 'Habilitado', '', 12),
(34, '7798022225190', 'Rollo de Cocina My Hogar x3u.', 10, 'Unidad', 1100.00, 1500.00, 'My Hogar', '', 'Habilitado', '', 12),
(35, '7798022221536', 'Bolsas p/Residuos My Hogar 10u. 50x70', 10, 'Unidad', 700.00, 1000.00, 'My Hogar', '', 'Habilitado', '', 12),
(36, '7500435176187', 'Shampoo Pantene Liso extremo 10ml.', 10, 'Unidad', 250.00, 350.00, 'Pantene', '', 'Habilitado', '', 12),
(37, '7790940216144', 'Toallitas Doncella Nomal 8u.', 10, 'Unidad', 650.00, 900.00, 'Doncella', '', 'Habilitado', '', 12),
(38, '7790770602070', 'Toallita Calipso Normal 8u.', 10, 'Unidad', 600.00, 1000.00, 'Calipso', '', 'Habilitado', '', 12),
(39, '7790250040781', 'Pañal Babysec Ultra Soft 8u. XG', 10, 'Unidad', 2200.00, 3000.00, 'Babysec', '', 'Habilitado', '', 12),
(40, '7790250040798', 'Pañal Babysec Ultra Soft 8u. XXG', 10, 'Unidad', 2200.00, 3000.00, 'Babysec', '', 'Habilitado', '', 13),
(41, '7790064000261', 'Algodón Estrella Clásico 75gr.', 10, 'Unidad', 800.00, 1200.00, 'Estrella', '', 'Habilitado', '', 12),
(42, '7790250054962', 'Pañuelos descartables Elite x6 paquetes', 10, 'Unidad', 2000.00, 2900.00, 'Elite', '', 'Habilitado', '', 12),
(43, '7790250000358', 'Pañuelo descartable Elite 10u.', 10, 'Unidad', 400.00, 600.00, 'Elite', '', 'Habilitado', '', 12),
(44, '7790520028655', 'Raid Aerosol Mata Moscas y Mosquitos 380cc', 10, 'Unidad', 4500.00, 6000.00, 'Raid', '', 'Habilitado', '', 21),
(45, '7798022221505', 'Papel Higiénico My Hogar Natural x4u. 30m.x10cm.', 10, 'Unidad', 800.00, 1200.00, 'My Hogar', '', 'Habilitado', '', 12),
(46, '7794626012815', 'Protectores diarios Lina 20u.', 10, 'Unidad', 700.00, 1000.00, 'Lina', '', 'Habilitado', '', 12),
(47, '7798130889260', 'Papel Higiénico My Hogar x1u. 50mts.', 10, 'Unidad', 400.00, 600.00, 'My Hogar', '', 'Habilitado', '', 12),
(48, '7790250016182', 'Papel Higiénico Higienol Fresh x4u. 30mts.', 10, 'Unidad', 1200.00, 1800.00, 'Higienol', '', 'Habilitado', '', 12),
(49, '7798022225473', 'Papel Higiénico My Hogar x6u. 30mts.', 10, 'Unidad', 1800.00, 2400.00, 'My Hogar', '', 'Habilitado', '', 12),
(50, '7790036044323', 'Uvita Blanco 1lt.', 10, 'Unidad', 1200.00, 1600.00, 'Uvita', '', 'Habilitado', '', 10),
(51, '7790036046327', 'Uvita Tinto tetra 1lt.', 10, 'Unidad', 1200.00, 1600.00, 'Uvita', '', 'Habilitado', '', 10),
(52, '7792798005970', 'Pack de Cerveza Lata Brahma x6u. 473cc.', 10, 'Unidad', 7800.00, 10500.00, 'Brahma', '', 'Habilitado', '', 9),
(53, '7792798005888', 'Cerveza Lata Brahma 473cc.', 100, 'Unidad', 1400.00, 1800.00, 'Brahma', '', 'Habilitado', '', 9),
(54, '7791843008294', 'Vino Viña de Balbo Clasico Tinto 1lt.', 100, 'Unidad', 2600.00, 3500.00, 'Viña de Balbo', '', 'Habilitado', '', 10),
(55, '7798119220183', 'Energizante Lata Speed 473CC.', 100, 'Unidad', 2100.00, 2800.00, 'Speed', '', 'Habilitado', '', 1),
(56, '7792410528887', 'Fernet Capri 700cc', 100, 'Unidad', 2500.00, 4000.00, 'Capri', '', 'Habilitado', '', 1),
(57, '7790580134259', 'Caramelos Arcor Menta Cristal 140gr.', 10, 'Unidad', 1600.00, 2000.00, 'Arcor', '', 'Habilitado', '', 5),
(58, '7790580134211', 'Caramelos Arcor Miel 140gr.', 10, 'Unidad', 1600.00, 2000.00, 'Arcor', '', 'Habilitado', '', 5),
(59, '7790580134235', 'Caramelos Arcor Rellenos Frutales 140gr.', 10, 'Unidad', 1600.00, 2000.00, 'Arcor', '', 'Habilitado', '', 5),
(60, '7790580134181', 'Caramelos Arcor Butter Toffees Leche 140gr.', 10, 'Unidad', 1700.00, 2400.00, 'Arcor', '', 'Habilitado', '', 5),
(61, '7790580134204', 'Caramelos Arcor Butter Toffees Surtido 140gr.', 10, 'Unidad', 1700.00, 2400.00, 'Arcor', '', 'Habilitado', '', 5),
(62, '7790580134198', 'Caramelos Arcor Butter Toffees Chocolate 140gr.', 10, 'Unidad', 1700.00, 2400.00, 'Arcor', '', 'Habilitado', '', 5),
(63, '7790580141868', 'Caramelos Arcor Mogul Jelly Beans 150gr.', 10, 'Unidad', 1700.00, 2400.00, 'Arcor', '', 'Habilitado', '', 5),
(64, '7790580130992', 'Caramelos Arcor Mogul Conitos 220gr.', 10, 'Unidad', 1700.00, 2400.00, 'Arcor', '', 'Habilitado', '', 5),
(65, '7790580131388', 'Bombones Arcor Selección 228gr.', 10, 'Unidad', 5200.00, 7200.00, 'Arcor', '', 'Habilitado', '', 3),
(66, '7790580119126', 'Bon o Bon Surtidos en caja 255gr.', 10, 'Unidad', 5200.00, 7200.00, 'Arcor', '', 'Habilitado', '', 3),
(67, '77958921', 'Bon o Bon choclate 1u.', 100, 'Unidad', 300.00, 400.00, 'Arcor', '', 'Habilitado', '', 3),
(68, '77953537', 'Bombon Bon o Bon Aguila 1u.', 100, 'Unidad', 300.00, 400.00, 'Arcor', '', 'Habilitado', '', 3),
(69, '77956712', 'Bombon Bon o Bon c/Chocolinas 1u.', 100, 'Unidad', 300.00, 400.00, 'Arcor', '', 'Habilitado', '', 3),
(70, '77961815', 'Bombon Bon o Bon blanco 1u.', 100, 'Unidad', 300.00, 400.00, 'Arcor', '', 'Habilitado', '', 3),
(71, '77975737', 'Turrón y Maní Chocolatada 25gr.', 100, 'Unidad', 220.00, 280.00, 'Arcor', '', 'Habilitado', '', 11),
(72, '77940131', 'Turrón y Maní Arcor 23gr.', 100, 'Unidad', 220.00, 280.00, 'Arcor', '', 'Habilitado', '', 11),
(73, '7790628102684', 'Vainillas Mauri 80gr. 1u.', 100, 'Unidad', 350.00, 500.00, 'Mauri', '', 'Habilitado', '', 11),
(74, '7792200000159', 'Bizcochos 9 de Oro Clasicos 200gr.', 100, 'Unidad', 650.00, 900.00, '9 de Oro', '', 'Habilitado', '', 11),
(75, '7792200000319', 'Bizcochos 9 de Oro Azucarados 210gr.', 100, 'Unidad', 650.00, 900.00, '9 de Oro', '', 'Habilitado', '', 11),
(76, '7792200000128', 'Bizcochos 9 de Oro Agridulces 200gr.', 100, 'Unidad', 650.00, 900.00, '9 de Oro', '', 'Habilitado', '', 11),
(77, '7790040139169', 'Polvorita vainilla 81gr.', 100, 'Unidad', 250.00, 350.00, 'Lia', '', 'Habilitado', '', 11),
(78, '7790040139176', 'Polvorita frutilla 81gr', 100, 'Unidad', 250.00, 350.00, 'Lia', '', 'Habilitado', '', 11),
(79, '7622201745561', 'Terrabusi Variedad 390gr.', 100, 'Unidad', 1700.00, 2200.00, 'Terrabusi', '', 'Habilitado', '', 11),
(80, '7790040143364', 'Galletitas Surtido Diversion 400gr.', 100, 'Unidad', 1600.00, 2000.00, 'Arcor', '', 'Habilitado', '', 11),
(81, '7790040143319', 'Surtido Desfile 400g.', 100, 'Unidad', 1200.00, 1600.00, 'Lia', '', 'Habilitado', '', 11),
(82, '7798080660704', 'Galletitas de Miel Valido 450gr.', 100, 'Unidad', 1300.00, 1800.00, 'Válido', '', 'Habilitado', '', 11),
(83, '7790387800135', 'Té Taragui 25 saq.', 100, 'Unidad', 700.00, 1000.00, 'Taragui', '', 'Habilitado', '', 1),
(84, '7790150330166', 'Té de Manzanilla La Virgina 25saq.', 100, 'Unidad', 1400.00, 1800.00, 'La Virginia', '', 'Habilitado', '', 1),
(85, '7790580132170', 'Mermelada Damasco Arcor 454gr.', 100, 'Unidad', 1800.00, 2400.00, 'Arcor', '', 'Habilitado', '', 1),
(86, '7790580123437', 'Mermelada de Ciruela Arcor 454gr.', 100, 'Unidad', 1800.00, 2400.00, 'Arcor', '', 'Habilitado', '', 23),
(87, '7790580132163', 'Mermelada de Durazno Arcor 454gr.', 100, 'Unidad', 1800.00, 2400.00, 'Arcor', '', 'Habilitado', '', 23),
(88, '7790580132194', 'Mermelada de Naranja Arcor 454 gr.', 100, 'Unidad', 1800.00, 2400.00, 'Arcor', '', 'Habilitado', '', 23),
(89, '7791540044526', 'Vino DADA #3 Art. Wine 750ml', 10, 'Unidad', 4500.00, 5500.00, 'Dada', '', 'Habilitado', '', 10),
(90, '7790950000160', 'Gancia Americano Aperitivo 950ml.', 10, 'Unidad', 4500.00, 6500.00, 'Gancia', '', 'Habilitado', '', 1),
(91, '7790290008192', 'Carpano Rosso Vermouth 950cc.', 10, 'Unidad', 3200.00, 4000.00, 'Carpano', '', 'Habilitado', '', 1),
(92, '7790520010469', 'Espiral Raid en sobre x 4 u.', 100, 'Unidad', 600.00, 900.00, 'Raid', '', 'Habilitado', '', 21),
(93, '7891051026780', 'Maq. afeitar Gillette Prestobarba x1', 100, 'Unidad', 700.00, 1000.00, 'Gillette', '', 'Habilitado', '', 12),
(94, '7790036000367', 'Baggio Pronto Mix Frutal 1lt.', 100, 'Unidad', 1100.00, 1500.00, 'Baggio', '', 'Habilitado', '', 22),
(95, '7790036000329', 'Baggio Pronto Naranja 1LT.', 100, 'Unidad', 1100.00, 1500.00, 'Baggio', '', 'Habilitado', '', 22),
(96, '7790036000343', 'Baggio Pronto Durazno 1lt.', 100, 'Unidad', 1100.00, 1500.00, 'Baggio', '', 'Habilitado', '', 22),
(97, '7790580129910', 'Jugo en Sobre Arcor Frutilla 18gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580129910_1.jpg', 22),
(98, '7790580143763', 'Jugo en Sobre Arcor Naranja-Mango 15gr.', 100, 'Unidad', 250.00, 350.00, 'Arcor', '', 'Habilitado', '7790580143763_56.jpg', 22),
(99, '7790580143008', 'Jugo en Sobre Arcor Naranja Dulce 15 gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580143008_12.jpg', 22),
(100, '7790580141943', 'Jugo en Sobre Arcor Naranja-Durazno 15gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580141943_90.jpg', 22),
(101, '7790580143527', 'Jugo en Sobre Arcor Limonada 15 gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580143527_25.jpg', 22),
(102, '7790580141509', 'Jugo en Sobre Arcor Naranja-Banana 15gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580141509_24.jpg', 22),
(103, '7790580143824', 'Jugo en Sobre Arcor Frutilla-Ananá-Banana) 15gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580143824_84.jpg', 22),
(104, '7790580143237', 'Jugo en sobre Arcor (Naranja) 15gr.', 100, 'Unidad', 200.00, 350.00, 'Arcor', '', 'Habilitado', '7790580143237_31.jpg', 22),
(105, '7790040719804', 'Rex Original en caja 125gr.', 100, 'Unidad', 1300.00, 1800.00, 'Bagley', '', 'Habilitado', '7790040719804_23.jpg', 23),
(106, '7790040173200', 'Kesitas en caja 125gr.', 100, 'Unidad', 1300.00, 1800.00, 'Bagley', '', 'Habilitado', '7790040173200_22.jpg', 23),
(107, '7793706000216', 'Palitos de Maiz Julicroc 45gr.', 100, 'Unidad', 350.00, 450.00, 'Julicroc', '', 'Habilitado', '', 23),
(108, '7790580138738', 'Polenta Presto Pronta 490gr.', 100, 'Unidad', 1100.00, 1500.00, 'Arcor', '', 'Habilitado', '', 23),
(109, '7798407180182', 'Aritos Galacticos de Cebolla Ovni 60gr.', 100, 'Unidad', 650.00, 900.00, 'Ovni', '', 'Habilitado', '', 23),
(110, '7793706000254', 'Papas Fritas Julicroc 70gr.', 100, 'Unidad', 1100.00, 1500.00, 'Julicroc', '', 'Habilitado', '', 23),
(111, '7791620002255', 'Mayonesa Danifiesta 95gr', 100, 'Unidad', 350.00, 450.00, 'Danifiesta', '', 'Habilitado', '', 23),
(112, '7798316700808', 'Aceite de Girasol Legitimo 900cc', 100, 'Unidad', 1700.00, 2500.00, 'Legitimo', '', 'Habilitado', '', 23),
(113, '7798111850142', 'Harina 4/0 Venado Tuerto 1kg.', 100, 'Unidad', 700.00, 1200.00, 'Venado Tuerto', '', 'Habilitado', '', 23),
(114, '7790580132392', 'Arveja en Lata Arcor 300gr.', 100, 'Unidad', 650.00, 850.00, 'Arcor', '', 'Habilitado', '', 23),
(115, '7792798007493', 'Cerveza Brahma 1 Lt. Retornable', 100, 'Unidad', 2500.00, 3000.00, 'Brahma', '', 'Habilitado', '', 9),
(116, '7792170042029', 'Gatorade Frutas Tropicales 500cc', 100, 'Unidad', 1500.00, 2000.00, 'Gatorade', '', 'Habilitado', '', 1),
(117, '7790641000011', 'Colosal sal fina 500gr.', 100, 'Unidad', 400.00, 600.00, 'Colosal', '', 'Habilitado', '', 23),
(118, '7798022224162', 'Picadillo San Remo 90gr.', 100, 'Unidad', 450.00, 700.00, 'San Remo', '', 'Habilitado', '', 23),
(119, '7794270002583', 'Harina 3/0 Reinharina 1kg.', 100, 'Unidad', 600.00, 900.00, 'Reinharina', '', 'Habilitado', '', 23),
(120, '7790641000080', 'Colosal Sal Entrefina 1 kg.', 100, 'Unidad', 700.00, 1000.00, 'Colosal', '', 'Habilitado', '', 23),
(121, '7798121880160', 'Choclo en lata San Remo 300gr.', 100, 'Unidad', 900.00, 1300.00, 'San Remo', '', 'Habilitado', '', 23),
(122, '7790070320285', 'Fideo Favorita Spaghetti 500gr.', 1000, 'Unidad', 700.00, 1000.00, 'Favorita', '', 'Habilitado', '', 23),
(123, '7798022220355', 'Jardinera en lata San Remo 300gr.', 100, 'Unidad', 600.00, 900.00, 'San Remo', '', 'Habilitado', '', 23),
(124, '7798022228580', 'Atún en aceite  San Remo 170gr.', 100, 'Unidad', 1700.00, 2200.00, 'San Remo', '', 'Habilitado', '', 23),
(125, '7790790120257', 'Arveja en lata Inca 350gr.', 100, 'Unidad', 500.00, 750.00, 'Inca', '', 'Habilitado', '', 23),
(126, '7798121886094', 'Arroz San Remo 1/2kg.', 100, 'Unidad', 700.00, 1000.00, 'San Remo', '', 'Habilitado', '', 23),
(127, '7794870001344', 'Arroz Primor de 1 KG.', 100, 'Unidad', 1200.00, 1600.00, 'Primor', '', 'Habilitado', '', 23),
(128, '7798022224797', 'Tomate Perita en lata San Remo 400gr.', 100, 'Unidad', 700.00, 1000.00, 'San Remo', '', 'Habilitado', '', 23),
(129, '7790580138851', 'Pure de Tomate San Remo 530gr.', 100, 'Unidad', 600.00, 850.00, 'San Remo', '', 'Habilitado', '', 23),
(130, '7790036973036', 'Pure La Huerta 210gr.', 100, 'Unidad', 450.00, 600.00, 'Baggio', '', 'Habilitado', '', 23),
(131, '7794000008557', 'Caldos de Verdura x12u. Knorr', 100, 'Unidad', 1800.00, 2500.00, 'Knorr', '', 'Habilitado', '', 23),
(132, '7798022224186', 'Puré de Tomate San Remo 260gr.', 100, 'Unidad', 450.00, 600.00, 'San Remo', '', 'Habilitado', '', 23),
(133, '7798121880085', 'Champignones en trozo San Remo 400gr.', 100, 'Unidad', 1900.00, 2500.00, 'San Remo', '', 'Habilitado', '', 23),
(134, '7794080001554', 'Fideo Bernabeu Mostachol 500gr.', 100, 'Unidad', 650.00, 900.00, '', '', 'Habilitado', '', 23),
(135, '7794080001561', 'Fideo Bernabeu Tirabuzón 500gr.', 100, 'Unidad', 650.00, 900.00, '', '', 'Habilitado', '', 23),
(136, '7794080001592', 'Fideo Bernabeu Codito 500g.', 100, 'Unidad', 650.00, 900.00, '', '', 'Habilitado', '', 23),
(137, '7798407180151', 'Pizzetas Galácticas Pizza Ovni 100gr.', 100, 'Unidad', 1000.00, 1400.00, '', '', 'Habilitado', '', 23),
(138, '77987983', 'Odorono Rexona 60gr.', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 14),
(139, '7791293043791', 'Desodorante Axe Marine 150ml', 100, 'Unidad', 2200.00, 3000.00, '', '', 'Habilitado', '', 14),
(140, '7798022222557', 'Vinagre de Alcohol San Remo 500cc', 100, 'Unidad', 800.00, 1200.00, '', '', 'Habilitado', '', 23),
(141, '7791813888444', 'Pepsi 2.25lt. Retornable', 100, 'Unidad', 2400.00, 3200.00, '', '', 'Habilitado', '', 2),
(142, '7840371000451', 'Eight común x 10u.', 100, 'Unidad', 6000.00, 8000.00, '', '', 'Habilitado', '', 1),
(143, '7798187210178', 'Quento Papas Pay 110 gr.', 100, 'Unidad', 1800.00, 2300.00, '', '', 'Habilitado', '', 23),
(144, '7798187211335', 'Quento Papas Fritas Onduladas 100gr.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(145, '7798187211281', 'Quento Papas Fritas Jamón Serrano 90gr.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(146, '7798187211410', 'Quento Papas Fritas sabor Salame 90 gr.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(147, '7798187211298', 'Quento Papas Fritas sabor Cheddar 90gr.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(148, '7798187211311', 'Quento Papas Clasicas 100gr.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(149, '7798187211571', 'Quento Papas Fritas Queso Crema y Ciboulette 90GR.', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(150, '77958648', 'Menthoplus strong 29.4 gr.', 999, 'Unidad', 450.00, 600.00, 'Arcor', '', 'Habilitado', '', 5),
(151, '77958631', 'Menthoplus cereza 29.4 gr.', 99, 'Unidad', 450.00, 600.00, 'Arcor', '', 'Habilitado', '', 5),
(152, '77958655', 'Menthoplus miel 29.4 gr', 98, 'Unidad', 450.00, 600.00, 'Arcor', '', 'Habilitado', '', 5),
(153, '77951113', 'Topline 7 Straswberry 7u.', 100, 'Unidad', 450.00, 600.00, 'Arcor', '', 'Habilitado', '', 5),
(154, '77939753', 'Topline 7 Strong 7u.', 99, 'Unidad', 600.00, 800.00, 'Arcor', '', 'Habilitado', '', 5),
(155, '77948496', 'Topline 7 Violet Cherry', 100, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 5),
(156, '77983794', 'Topline 7 Bubble Fun 7u.', 99, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 5),
(157, '77932693', 'Topline 7 Mandarina 7u.', 99, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 5),
(158, '7622201448325', 'Beldent Infinit Blueberry 7u.', 1000, 'Unidad', 650.00, 900.00, '', '', 'Habilitado', '', 5),
(159, '77916389', 'Topline Fruta 4u.', 100, 'Unidad', 250.00, 400.00, '', '', 'Habilitado', '', 5),
(160, '77916426', 'Topline Menta 4u.', 100, 'Unidad', 250.00, 400.00, '', '', 'Habilitado', '', 5),
(161, '7798176191310', 'Pastillas Bull Dog Mandarina 30 gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '', 5),
(162, '7798186030555', 'Pastillas Bull Dog Mandarina y Uva 30 gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '', 5),
(163, '7798162584300', 'Pastillas Bull Dog Tutti Frutti 30g', 100, 'Unidad', 250.00, 400.00, 'Billiken', '', 'Habilitado', '', 5),
(164, '7798162584317', 'Pastillas Bull Dog Manzana 30gr.', 100, 'Unidad', 250.00, 400.00, 'Billiken', '', 'Habilitado', '', 5),
(165, '7790040613607', 'Alfajor Simple Bon o Bon Blanco 40gr', 100, 'Unidad', 700.00, 900.00, '', '', 'Habilitado', '', 4),
(166, '7790040613706', 'Alfajor Simple Bn o Bon Negro 40Ggr.', 100, 'Unidad', 700.00, 900.00, '', '', 'Habilitado', '', 4),
(167, '7790040143654', 'Alfajor Simple Cofler Block  40gr.', 100, 'Unidad', 700.00, 900.00, 'Cofler', '', 'Habilitado', '', 4),
(168, '7790040659605', 'Alfajor Tripl Cofler Block 60gr.', 100, 'Unidad', 1000.00, 1300.00, '', '', 'Habilitado', '', 4),
(169, '7790040614000', 'Alfajor Triple Bon o Bon 60gr', 100, 'Unidad', 1000.00, 1300.00, 'Bon o Bon', '', 'Habilitado', '', 4),
(170, '7790040133594', 'Alfajor Aguila Minitorta Brownie 71gr', 100, 'Unidad', 1000.00, 1300.00, '', '', 'Habilitado', '', 4),
(171, '7790040991910', 'Alfajor Triple Bagley Blanco 73 gr.', 100, 'Unidad', 1000.00, 1300.00, '', '', 'Habilitado', '', 4),
(172, '7790040375000', 'Alfajor Triple Bagley Negro 73 gr.', 1000, 'Unidad', 1000.00, 1300.00, '', '', 'Habilitado', '', 4),
(173, '7622300457303', 'Alfajor Triple Milka Mousse Blanco 55gr', 100, 'Unidad', 1000.00, 1400.00, '', '', 'Habilitado', '', 4),
(174, '7796319000192', 'Alfajor Triple Fantasio Negro 70g', 100, 'Unidad', 350.00, 500.00, '', '', 'Habilitado', '', 4),
(175, '7796319000208', 'Alfajor Triple Fantasio Blanco 70gr.', 100, 'Unidad', 350.00, 500.00, '', '', 'Habilitado', '', 4),
(176, '7790580404314', 'Sapitos Confites 15gr', 100, 'Unidad', 300.00, 400.00, '', '', 'Habilitado', '', 3),
(177, '77912718', 'Sapito Mani 10g', 100, 'Unidad', 200.00, 250.00, '', '', 'Habilitado', '', 3),
(178, '77917393', 'Sapito Frutilla 10gr.', 100, 'Unidad', 200.00, 250.00, '', '', 'Habilitado', '', 3),
(179, '7790580132439', 'Misky Fantasia 30gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '', 5),
(180, '17927987', 'Lata Brahma Chopp 473cc', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 9),
(181, '7792798992317', 'Lata Andes Origen Roja 473cc', 100, 'Unidad', 1900.00, 2500.00, '', '', 'Habilitado', '', 9),
(182, '7791250801532', 'Lata Smirnoff Citric 473cc', 100, 'Unidad', 2500.00, 3000.00, '', '', 'Habilitado', '', 10),
(183, '7793147573386', 'Lata Miller 473cc', 100, 'Unidad', 1800.00, 2300.00, '', '', 'Habilitado', '', 9),
(184, '1007084701235', 'Lata Monster Energy 473cc', 100, 'Unidad', 2500.00, 2900.00, '', '', 'Habilitado', '', 1),
(185, '7798422620021', 'Lata Monster Energy Ultra 473cc', 100, 'Unidad', 2500.00, 2900.00, '', '', 'Habilitado', '', 1),
(186, '1007084703703', 'Lata Monster Energy Ultra Sunrise 473cc', 100, 'Unidad', 2500.00, 2900.00, '', '', 'Habilitado', '', 1),
(187, '7798119220015', 'Lata Speed 250cc', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 1),
(188, '1007084703536', 'Lata Monster Energy Ultra Paradise', 100, 'Unidad', 2500.00, 2900.00, '', '', 'Habilitado', '', 1),
(189, '90435225', 'Lata Red Bull 355cc', 100, 'Unidad', 2800.00, 3200.00, '', '', 'Habilitado', '', 1),
(190, '7798164280019', 'Agua de las Misiones 500cc', 100, 'Unidad', 450.00, 600.00, '', '', 'Habilitado', '', 2),
(191, '7798113300270', 'Agua Villamanaos 600cc', 100, 'Unidad', 450.00, 600.00, '', '', 'Habilitado', '', 2),
(192, '7799155001392', 'Levite Pomelo Rosado 1500cc', 100, 'Unidad', 1800.00, 2150.00, '', '', 'Habilitado', '', 2),
(193, '7799155000852', 'Levite Pomelo 1500cc', 100, 'Unidad', 1800.00, 2150.00, '', '', 'Habilitado', '', 2),
(194, '7798164280033', 'Agua de las Misiones 1500cc', 100, 'Unidad', 700.00, 900.00, '', '', 'Habilitado', '', 2),
(195, '7790895641800', 'Cepita Naranja 1500cc', 100, 'Unidad', 2400.00, 2900.00, '', '', 'Habilitado', '', 2),
(196, '7799155000289', 'Levite Naranja 1500cc', 100, 'Unidad', 1700.00, 2150.00, '', '', 'Habilitado', '', 2),
(197, '7799155000296', 'Levite Manzana 1500cc', 100, 'Unidad', 1700.00, 2150.00, '', '', 'Habilitado', '', 2),
(198, '7798113301529', 'Soda Manaos 2lt.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 2),
(199, '7799155000432', 'Levite Pera 1500cc', 100, 'Unidad', 1700.00, 2150.00, '', '', 'Habilitado', '', 2),
(200, '7798113301208', 'Agua Corazón 1500cc', 100, 'Unidad', 700.00, 900.00, '', '', 'Habilitado', '', 2),
(201, '7798113302076', 'Placer Manzana 1500cc', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 2),
(202, '7798113302069', 'Placer Anana 1500cc', 1000, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 2),
(203, '7798113302106', 'Placer Pera 1500cc', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 2),
(204, '7798113302090', 'Placer Naranja 1500cc', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 2),
(205, '7798113302113', 'Placer Pomelo 1500cc', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 2),
(206, '7790703204968', 'Don Valentin Lacrado', 100, 'Unidad', 3000.00, 3900.00, '', '', 'Habilitado', '', 10),
(207, '7795232000524', 'Otro Loco Mas Malbec 750cc', 100, 'Unidad', 3200.00, 3900.00, '', '', 'Habilitado', '', 10),
(208, '7790168904403', 'Colon Malbec 750cc', 100, 'Unidad', 4000.00, 4800.00, '', '', 'Habilitado', '', 10),
(209, '7798113301277', 'Manaos Pomelo 3lt', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 2),
(210, '7798113301284', 'Manaos Manzana 3lt.', 1000, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 2),
(211, '7798113301246', 'Manaos Coca 3lt.', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 2),
(212, '7798113301253', 'Manaos Lima Limon 3lt', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 2),
(213, '7798113301260', 'Manaos Naranja 3lt.', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 2),
(214, '7790895005916', 'Coca Cola Vidrio 1500cc RETORNABLE', 100, 'Unidad', 2000.00, 2500.00, '', '', 'Habilitado', '', 2),
(215, '7791813888468', 'Pepsi 2000cc Descartable', 100, 'Unidad', 2700.00, 3200.00, '', '', 'Habilitado', '', 2),
(216, '7792798007547', 'Quilmes Clasica 340cc Retornable', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 9),
(217, '7792170042005', 'Gatorade Manzana 500cc', 100, 'Unidad', 1500.00, 2000.00, '', '', 'Habilitado', '', 1),
(218, '7790040136243', 'Salvado Bagley x3 507gr.', 100, 'Unidad', 2800.00, 3500.00, '', '', 'Habilitado', '', 8),
(219, '7798141972401', 'Galletitas Bonanza x3 303gr', 100, 'Unidad', 1000.00, 1350.00, '', '', 'Habilitado', '', 11),
(220, '7790040143616', 'Serranitas x3 315gr', 100, 'Unidad', 1000.00, 1350.00, '', '', 'Habilitado', '', 11),
(221, '7790071080218', 'Tostada de Arroz RIERA 150gr.', 100, 'Unidad', 1800.00, 2100.00, '', '', 'Habilitado', '', 11),
(222, '763571850831', 'Pan de Hamburguesas x4', 100, 'Unidad', 800.00, 1000.00, '', '', 'Habilitado', '', 8),
(223, '763571850824', 'Pan de Pancho x6', 100, 'Unidad', 800.00, 1000.00, '', '', 'Habilitado', '', 8),
(224, '763571850794', 'Chinas con Queso 150gr.', 100, 'Unidad', 800.00, 1200.00, '', '', 'Habilitado', '', 8),
(225, '7790045000457', 'Baloncitos de chocolates Granix 150g.', 100, 'Unidad', 1500.00, 2000.00, '', '', 'Habilitado', '', 8),
(226, '7790045001188', 'Frutigran Avena y Pasas 250gr', 100, 'Unidad', 1500.00, 2000.00, '', '', 'Habilitado', '', 11),
(227, '7790045827054', 'Frutigran Avena y Frutos Rojos 175gr.', 100, 'Unidad', 1400.00, 1800.00, '', '', 'Habilitado', '', 11),
(228, '7790045824893', 'Frutigran Chips de Choclate', 100, 'Unidad', 2000.00, 2600.00, '', '', 'Habilitado', '', 11),
(229, '7790040133235', 'Maná Rellenas Vainilla 152gr.', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 11),
(230, '7790040133259', 'Maná Rellenas con Limon 152gr.', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 11),
(231, '7790040133266', 'Maná Rellenas Frutilla 152gr.', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 11),
(232, '7798126073925', 'Gaona Crunchips Mini 90gr.', 100, 'Unidad', 800.00, 1000.00, '', '', 'Habilitado', '', 11),
(233, '7622201761288', 'Mini Oreo 50gr.', 1000, 'Unidad', 650.00, 1000.00, '', '', 'Habilitado', '', 11),
(234, '7792180007315', 'Paseo 5 Semillas 300gr.', 100, 'Unidad', 1000.00, 1350.00, '', '', 'Habilitado', '', 11),
(235, '7792180007346', 'Paseo Multicereal 300gr.', 100, 'Unidad', 1000.00, 1350.00, '', '', 'Habilitado', '', 11),
(236, '763571850855', 'Torraditas 400gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 8),
(237, '7798080660216', 'Galletitas de Miel Valido 150gr.', 100, 'Unidad', 500.00, 700.00, 'Valido', '', 'Habilitado', '', 11),
(238, '7798080660667', 'Pepas Valido 200gr.', 100, 'Unidad', 500.00, 700.00, 'Valido', '', 'Habilitado', '', 11),
(239, '7798080660209', 'Galletitas de Coco Valido150g.', 100, 'Unidad', 500.00, 700.00, 'Valido', '', 'Habilitado', '', 11),
(240, '7798080660711', 'Galletitas de Coco Valido 450gr.', 100, 'Unidad', 1400.00, 1800.00, 'Valido', '', 'Habilitado', '', 11),
(241, '7790628102714', 'Surtido Fauna 150gr.', 100, 'Unidad', 450.00, 600.00, '', '', 'Habilitado', '', 11),
(242, '7790628000034', 'Surtido Fauna 400gr.', 100, 'Unidad', 1400.00, 1700.00, 'Mauri', '', 'Habilitado', '', 11),
(243, '7792180009487', '9 de Oro Pepas 200gr.', 100, 'Unidad', 950.00, 1300.00, '', '', 'Habilitado', '', 11),
(244, '7790040135895', 'Receta de la Abuela Pepas 183gr.', 100, 'Unidad', 800.00, 1100.00, '', '', 'Habilitado', '', 11),
(245, '7798126073802', 'Masista de Vainilla Gaona 220gr.', 100, 'Unidad', 900.00, 1200.00, 'Gaona', '', 'Habilitado', '', 11),
(246, '7798126073826', 'Masitas de Coco Gaona 220gr.', 100, 'Unidad', 800.00, 1200.00, 'Gaona', '', 'Habilitado', '', 11),
(247, '7790040147720', 'Galletitas Surtido Bagley 400gr.', 100, 'Unidad', 2000.00, 2600.00, 'Bagley', '', 'Habilitado', '', 11),
(248, '7790040137912', 'Maná de Chocolate 136gr.', 100, 'Unidad', 800.00, 1100.00, '', '', 'Habilitado', '', 11),
(249, '7790040139893', 'Formis Frutilla 72gr.', 100, 'Unidad', 650.00, 850.00, '', '', 'Habilitado', '', 11),
(250, '77903501', 'Opera 55gr.', 100, 'Unidad', 600.00, 750.00, '', '', 'Habilitado', '', 11),
(251, '7790040143517', 'Rumba 110gr.', 100, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(252, '7790040143548', 'Mellizas 110gr.', 100, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(253, '7790349000047', 'Obleas Zupay Chocolate 100gr.', 100, 'Unidad', 550.00, 750.00, '', '', 'Habilitado', '', 11),
(254, '7790040143531', 'Amor 110gr.', 100, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(255, '7790040132689', 'Galletitas Porteñitas 139gr.', 100, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(256, '7790040133488', 'Galletitas Sonrisas 108gr.', 97, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(257, '7790040139909', 'Formis Animales Chocolate 72gr.', 100, 'Unidad', 600.00, 850.00, '', '', 'Habilitado', '', 11),
(258, '7790040139916', 'Formis Animales Dulce de Leche 72gr.', 100, 'Unidad', 600.00, 850.00, '', '', 'Habilitado', '', 11),
(259, '7790040139657', 'Galletitas Merengadas 88gr.', 100, 'Unidad', 900.00, 1300.00, '', '', 'Habilitado', '', 11),
(260, '7798126073062', 'Bizcochitos Dulces Gaona 180gr.', 100, 'Unidad', 600.00, 800.00, 'Gaona', '', 'Habilitado', '', 11),
(261, '7798126073055', 'Biscochitos con Grasa Gaona 180gr.', 100, 'Unidad', 600.00, 800.00, 'Gaona', '', 'Habilitado', '', 11),
(262, '7798332890415', 'Papas Julicroc Corte Americano 80gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 24),
(263, '7798332890347', 'Papas Fritas Cheddar Julicroc 70gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 24),
(264, '7791014001772', 'Tulipan Control Retardante 3u.', 100, 'Unidad', 1600.00, 2200.00, '', '', 'Habilitado', '7791014001772_6.jpg', 14),
(265, '7791014090325', 'Preservativo Tulipán Clasico 3u.', 98, 'Unidad', 1800.00, 2200.00, '', '', 'Habilitado', '7791014090325_96.jpg', 14),
(266, '7791014001178', 'Tulipan Frutilla 3u.', 100, 'Unidad', 1600.00, 2200.00, '', '', 'Habilitado', '7791014001178_22.jpg', 14),
(267, '7791014001161', 'Tulipan Ultra Resistente 3u', 100, 'Unidad', 1600.00, 2200.00, '', '', 'Habilitado', '7791014001161_4.jpg', 14),
(268, '7791014122088', 'Tulipan Tatoo 3u', 100, 'Unidad', 1600.00, 2200.00, '', '', 'Habilitado', '7791014122088_52.jpg', 14),
(269, '7791014001765', 'Tulipan Neon 3u.', 100, 'Unidad', 1600.00, 2200.00, '', '', 'Habilitado', '7791014001765_97.jpg', 14),
(270, '7790580716707', 'Saladix Jamón 100gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '7790580716707_87.jpg', 24),
(271, '7790580697303', 'Saladix Pizza 100gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '7790580697303_30.jpg', 24),
(272, '7790040141254', 'Saladix Picante 100gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '7790040141254_58.jpg', 24),
(273, '7790040003569', 'Rex 75 gr.', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '7790040003569_39.jpg', 24),
(274, '7790040003606', 'Kesitas 75gr.', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '7790040003606_92.jpg', 24),
(275, '7793706000933', 'Papas Fritas Julicroc 35gr.', 100, 'Unidad', 500.00, 700.00, '', '', 'Habilitado', '', 24),
(276, '7793706000148', 'Mani salado Julicroc 100gr', 100, 'Unidad', 800.00, 1100.00, '', '', 'Habilitado', '', 24),
(277, '7793706000278', 'Palitos Salados Julicroc 150gr.', 100, 'Unidad', 800.00, 1100.00, '', '', 'Habilitado', '', 24),
(278, '6606224017646', 'Cartas Españolas', 100, 'Unidad', 1000.00, 1500.00, '', '', 'Habilitado', '6606224017646_20.jpg', 20),
(279, '9216623804098', 'Cartas Españolas Naipes', 100, 'Unidad', 1000.00, 1500.00, '', '', 'Habilitado', '9216623804098_31.jpg', 20),
(280, '689076532495', 'Papel de Fumar Poker 50u.', 100, 'Unidad', 650.00, 1000.00, 'Poker', '', 'Habilitado', '689076532495_92.jpg', 6),
(281, '78420274', 'Zomo Papelillos 33u.', 100, 'Unidad', 650.00, 900.00, '', '', 'Habilitado', '78420274_92.jpg', 6),
(282, '7798088272220', 'Tabaco Cuatro Leguas 50gr.', 100, 'Unidad', 2900.00, 3500.00, '', '', 'Habilitado', '7798088272220_90.jpg', 6),
(283, '78413948', 'Eight Convert 20u.', 100, 'Unidad', 800.00, 1000.00, '', '', 'Habilitado', '78413948_97.jpg', 6),
(284, '78400924', 'Cigarrillos Eight 20u.', 999, 'Unidad', 650.00, 900.00, 'Eight', '', 'Habilitado', '78400924_69.jpg', 6),
(285, '6902004095218', 'Encendedor Candela', 1000, 'Unidad', 400.00, 600.00, '', '', 'Habilitado', '6902004095218_11.jpg', 6),
(286, '7790590016286', 'Fosforos Tres Patitos 222u.', 100, 'Unidad', 350.00, 600.00, '', '', 'Habilitado', '7790590016286_48.jpg', 6),
(287, '7842327001703', 'Bombilla de Alpaka', 100, 'Unidad', 2500.00, 3600.00, '', '', 'Habilitado', '7842327001703_46.jpg', 12),
(288, '7842327001710', 'Bombilla de Alpaka', 100, 'Unidad', 2500.00, 3600.00, '', '', 'Habilitado', '7842327001710_99.jpg', 12),
(289, '7796851812482', 'Pila Macao AAA', 100, 'Unidad', 500.00, 700.00, '', '', 'Habilitado', '7796851812482_14.jpg', 12),
(290, '7796851812505', 'Pila Macao AA', 100, 'Unidad', 500.00, 700.00, '', '', 'Habilitado', '7796851812505_39.jpg', 12),
(291, '7793706000926', 'Palitos Salados Julicroc 40gr.', 100, 'Unidad', 290.00, 350.00, '', '', 'Habilitado', '', 24),
(292, '7790040124899', 'Saladix Cross Pizza 27gr.', 100, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 24),
(293, '7622201733865', 'Tang Mandarina 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201733865_81.jpg', 2),
(294, '7622201735340', 'Tang Naranja Dulce 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201735340_28.jpg', 2),
(295, '7622201735371', 'Tang Naranja Mango 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201735371_8.jpg', 2),
(296, '7622201745707', 'Tang Naranja Durazno 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201745707_70.jpg', 2),
(297, '7622201735777', 'Tang Naranja Banana 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201735777_74.jpg', 2),
(298, '7622201746063', 'Tang Naranja Maracuya Frutilla 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201746063_57.jpg', 2),
(299, '7622201705992', 'Jugo en Sobre Tang Manzana 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201705992_63.jpg', 2),
(300, '7622201735685', 'Tang Limonada Dulce 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201735685_74.jpg', 2),
(301, '7622201746490', 'Jugo en Sobre Tang Frutilla 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201746490_97.jpg', 2),
(302, '7622201735746', 'Tang Pomelo Rosado 15gr', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201735746_2.jpg', 2),
(303, '7622201746117', 'Tang Uva 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201746117_0.jpg', 2),
(304, '7622201745967', 'Tang Anana 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201745967_13.jpg', 2),
(305, '7622201745936', 'Jugo en Sobre Tang Durazno 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201745936_7.jpg', 2),
(306, '7622201745738', 'Tang Pera 15gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7622201745738_66.jpg', 2),
(307, '7790580130626', 'Frutigelatin Saurios Gomitas 25gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '7790580130626_49.jpg', 5),
(308, '7790773018649', 'Toallitas Humedas Ideal 50u.', 100, 'Unidad', 1500.00, 2000.00, '', '', 'Habilitado', '', 14),
(309, '7798094344249', 'Mentitas DRF Dulce de Leche 26gr.', 100, 'Unidad', 300.00, 400.00, 'DRF', '', 'Habilitado', '', 5),
(310, '7790580116675', 'Misky Roll 35gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '', 5),
(311, '7790398100002', 'La Paulina Dulce de leche 250gr.', 100, 'Unidad', 1500.00, 1900.00, '', '', 'Habilitado', '', 23),
(312, '7798001562629', 'Cremigal dulce de leche 400gr.', 100, 'Unidad', 1900.00, 2350.00, '', '', 'Habilitado', '', 23),
(313, '614143331015', 'Yerba Mate Encanto 500gr', 100, 'Unidad', 1400.00, 1800.00, 'Encanto', '', 'Habilitado', '', 7),
(314, '7790802000010', 'Yerba Mate Romance 500gr', 100, 'Unidad', 1800.00, 2200.00, 'Romance', '', 'Habilitado', '', 7),
(315, '7794000008595', 'Caldos de Verdura x6u. Knorr', 100, 'Unidad', 1000.00, 1400.00, 'Knorr', '', 'Habilitado', '', 23),
(316, '7791113001543', 'Dulce de Batata Emeth 500g', 100, 'Unidad', 2000.00, 2400.00, 'Emeth', '', 'Habilitado', '', 23),
(317, '779113001567', 'Dulce de Membrillo Emeth 500g', 100, 'Unidad', 2000.00, 2400.00, 'Emeth', '', 'Habilitado', '', 23),
(318, '7790150079898', 'Cafe La Virginia Saquito 5g', 100, 'Unidad', 200.00, 250.00, 'La VIrginia', '', 'Habilitado', '', 23),
(319, '7798022220720', 'Durazno en lata San Remo 485g', 100, 'Lata', 1600.00, 2100.00, 'San Remo', '', 'Habilitado', '', 23),
(320, '7798022220102', 'Tomate triturado San Remo 950g', 100, 'Botella', 1800.00, 2200.00, 'San Remo', '', 'Habilitado', '', 23),
(321, '7794270000114', 'Harina Leudante Reinharina 1kg', 100, 'Unidad', 900.00, 1250.00, 'Reinharina', '', 'Habilitado', '', 8),
(322, '7792180004871', 'Harina 0000 Pureza 1kg', 100, 'Unidad', 900.00, 1200.00, 'Pureza', '', 'Habilitado', '', 8),
(323, '7792180139320', 'Harina 000 Cañuelas 1kg', 100, 'Unidad', 700.00, 900.00, 'Cañuelas', '', 'Habilitado', '', 8),
(324, '7795024000985', 'Almidón Flor de Jardín 1kg', 100, 'Unidad', 1700.00, 2000.00, 'Flor de Jardín', '', 'Habilitado', '', 8),
(325, '8445291121867', 'Cacao Nesquik 180g', 100, 'Unidad', 1500.00, 1900.00, 'Nequik', '', 'Habilitado', '', 23),
(326, '7794000007451', 'Maizena 220g', 100, 'Unidad', 1800.00, 2200.00, 'Maizena', '', 'Habilitado', '', 8),
(327, '763571660287', 'Azúcar Sideral 1kg', 100, 'Unidad', 800.00, 1000.00, 'Sideral', '', 'Habilitado', '', 23),
(328, '7891000345245', 'Caldo de verduras Maggi x2', 100, 'Unidad', 400.00, 450.00, 'Maggi', '', 'Habilitado', '', 23),
(329, '7791885001208', 'Atún desmenuzado ac. y ag. Cumaná 170g', 100, 'Lata', 2000.00, 2400.00, 'Cumaná', '', 'Habilitado', '', 23),
(330, '7790580138868', 'Puré de tomates La Campagnola 530g', 100, 'Unidad', 800.00, 820.00, 'La Campagnola', '', 'Habilitado', '', 23),
(331, '7798106150455', 'Arveja Mora 340g', 100, 'Unidad', 700.00, 750.00, 'Mora', '', 'Habilitado', '', 23),
(332, '7793360129889', 'Extracto de tomate La Campagnola 180g', 100, 'Unidad', 1200.00, 1500.00, 'La Campagnola', '', 'Habilitado', '', 23),
(333, '7798121880474', 'Caballa San Remo 380g', 100, 'Lata', 2800.00, 3200.00, 'San Remo', '', 'Habilitado', '', 23),
(334, '7791866001197', 'Mayonesa Natura 118g', 100, 'Unidad', 500.00, 700.00, 'Natura', '', 'Habilitado', '', 23),
(335, '7791669000960', 'Provenzal Indias 25g', 100, 'Unidad', 600.00, 800.00, 'Indias', '', 'Habilitado', '', 23),
(336, '7790580136550', 'Orégano La Campagnola 23g', 100, 'Unidad', 1200.00, 1500.00, 'La Campagnola', '', 'Habilitado', '', 23),
(337, '7793360103025', 'Ketchup Hot La Campagnola 250g', 100, 'Unidad', 1300.00, 1600.00, 'La Campagnola', '', 'Habilitado', '', 23),
(338, '7798151770189', 'Queso ralllado Tremblay 40g', 100, 'Unidad', 1200.00, 1500.00, 'Tremblay', '', 'Habilitado', '', 23),
(339, '7790580134471', 'Salsa Filetto Noel 340g', 100, 'Unidad', 900.00, 1200.00, 'Noel', '', 'Habilitado', '', 23),
(340, '7790580133153', 'Salsa pizza Arcor 340g', 100, 'Unidad', 900.00, 1300.00, 'Arcor', '', 'Habilitado', '', 23),
(341, '7791113003356', 'Mermelada de durazno Emeth 420g', 100, 'Unidad', 1200.00, 1500.00, 'Emeth', '', 'Habilitado', '', 23),
(342, '7791113004056', 'Mermelada de ciruela Emeth 420g', 100, 'Unidad', 1200.00, 1600.00, 'Emeth', '', 'Habilitado', '', 23),
(343, '7794000006515', 'Savora 60g', 100, 'Unidad', 400.00, 600.00, 'Savora', '', 'Habilitado', '', 23),
(344, '7794080001578', 'Fideo tallarín Don Bernabeu 500g', 100, 'Unidad', 700.00, 1000.00, 'Don Bernabeu', '', 'Habilitado', '', 23),
(345, '7794080001547', 'Fideo rigatti Don Bernabeu 5800g', 100, 'Unidad', 700.00, 900.00, 'Don Bernabeu', '', 'Habilitado', '', 23),
(346, '7793913001822', 'Leche entera Tregar', 100, 'Unidad', 1200.00, 1600.00, 'Tregar', '', 'Habilitado', '', 15),
(347, '7798035123704', 'Lentejas El Mulato 400g', 100, 'Unidad', 1000.00, 1350.00, 'El Mulato', '', 'Habilitado', '', 23),
(348, '7798033320334', 'Arvejas partidas ST 400g', 100, 'Unidad', 700.00, 1000.00, 'ST', '', 'Habilitado', '', 23),
(349, '7798419390098', 'Maiz pisingallo Khumpay', 100, 'Unidad', 700.00, 1000.00, 'Khumpay', '', 'Habilitado', '', 23),
(350, '7790045001607', 'Skarchitos Granix 240g', 100, 'Unidad', 1200.00, 1500.00, 'Granix', '', 'Habilitado', '', 23),
(351, '7796319000093', 'Alfajor Simple Fantasio Negro 40g', 100, 'Unidad', 200.00, 300.00, 'Fantasio', '', 'Habilitado', '', 4),
(352, '7796319000253', 'Alfajor Simple Fantasio Blanco 40g', 100, 'Unidad', 200.00, 300.00, 'Fantasio', '', 'Habilitado', '', 4),
(353, '7798187211328', 'Quento Papas Fritas Asado Criollo 90gr.', 100, 'Unidad', 1800.00, 2100.00, 'Quento', '', 'Habilitado', '', 24),
(354, '7622201812652', 'Mantecol Clásico 111gr.', 100, 'Unidad', 1700.00, 2000.00, 'Mantecol', '', 'Habilitado', '', 24),
(355, '7793706000230', 'Palitos de Maiz Julicroc 200gr.', 100, 'Unidad', 1300.00, 1600.00, 'Julicroc', '', 'Habilitado', '', 24),
(356, '7796624012125', 'Neolitas Sabor Queso 70gr.', 100, 'Unidad', 750.00, 900.00, 'Neosol', '', 'Habilitado', '', 24),
(357, '7798332890194', 'Conix 70gr.', 100, 'Unidad', 1200.00, 1400.00, 'Julicroc', '', 'Habilitado', '', 24),
(358, '7796624012118', 'Neolitas Sabor Pizza 70gr.', 100, 'Unidad', 750.00, 900.00, 'Neosol', '', 'Habilitado', '', 24),
(359, 'cc7798407180168', 'Serranitos Galácticos Ovni Jamón Serrano 150gr.', 100, 'Unidad', 1200.00, 1400.00, 'Ovni', '', 'Habilitado', '', 24),
(360, '7790349000153', 'Obleas Zupay Vainilla 100gr.', 100, 'Unidad', 600.00, 750.00, 'Zupay', '', 'Habilitado', '', 11),
(361, '7790349000122', 'Obleas Zupay Frutilla 100gr.', 100, 'Unidad', 600.00, 750.00, 'Zupay', '', 'Habilitado', '', 11),
(362, '7798126073819', 'Masitas de Limón Gaona 220gr.', 100, 'Unidad', 1000.00, 1200.00, 'Gaona', '', 'Habilitado', '', 11),
(363, '7790040149021', 'Surtido Lía 400gr.', 100, 'Unidad', 1500.00, 1700.00, 'Lía', '', 'Habilitado', '', 11),
(364, '77903518', 'Opera 92gr.', 100, 'Unidad', 900.00, 1200.00, 'Opera', '', 'Habilitado', '', 11),
(365, '7790040137837', 'Maná de Vainilla 136gr.', 100, 'Unidad', 900.00, 1100.00, 'Maná', '', 'Habilitado', '', 11),
(366, '7790040137813', 'Maná de Leche', 100, 'Unidad', 900.00, 1100.00, 'Maná', '', 'Habilitado', '', 11),
(367, '7622201735296', 'Oreo 118gr.', 98, 'Unidad', 1300.00, 1600.00, 'Oreo', '', 'Habilitado', '', 11),
(368, '7790250054283', 'Pañuelos Elite x75u', 100, 'Unidad', 1000.00, 1200.00, 'Elite', '', 'Habilitado', '', 14),
(369, '7796851811140', 'Hisopoas Batalla x100u', 100, 'Unidad', 400.00, 500.00, 'Batalla', '', 'Habilitado', '', 14),
(370, '7790520028761', 'Aromatizante en Aerosol Glade Encanto de Vainilla 380cm', 100, 'Unidad', 2100.00, 2500.00, 'Glade', '', 'Habilitado', '', 12),
(371, '7790520028815', 'Aromatizante en Aerosol Glade Potpurrí 380cm', 100, 'Unidad', 2100.00, 2500.00, 'Glade', '', 'Habilitado', '', 12),
(372, '7793253004231', 'Aromatizante den Aerosol Poett Frescura de Lavanda 360cm', 100, 'Unidad', 2200.00, 2600.00, 'Poett', '', 'Habilitado', '', 12),
(373, '7793253004323', 'Aromatizante en Aerosol Poett Espiritu Play 360cm', 100, 'Unidad', 2200.00, 2600.00, 'Poett', '', 'Habilitado', '', 12),
(374, '7793253004279', 'Aromatizante en Aerosol Poett Sólo Para Ti 360cm', 100, 'Unidad', 2200.00, 2600.00, 'Poett', '', 'Habilitado', '', 12),
(375, '7791293051000', 'Jabóin de Tocador Rexona Nutritive Orchid 120gr.', 100, 'Unidad', 700.00, 800.00, 'Rexona', '', 'Habilitado', '', 14),
(376, '7791293050980', 'Jabón de Tocador Rexona Cotton Fresh', 100, 'Unidad', 700.00, 800.00, 'Rexona', '', 'Habilitado', '', 14),
(377, '7791293050973', 'Javbón de Tocador Rexona Bamboo 120gr.', 100, 'Unidad', 700.00, 800.00, 'Rexona', '', 'Habilitado', '', 14),
(378, '7798134070688', 'Jabón de Lavar con Glicerina Signo 150gr.', 100, 'Unidad', 500.00, 600.00, 'Signo', '', 'Habilitado', '', 12),
(379, '7794573000170', 'Jabón de Lavar Puero Cosquín 200gr.', 100, 'Unidad', 600.00, 700.00, 'Cosquín', '', 'Habilitado', '', 12),
(380, '7791290791770', 'Jabón en Polvo Ala Matic con bicarbonato 800gr', 100, 'Unidad', 2000.00, 2400.00, 'Ala', '', 'Habilitado', '', 12),
(381, '7791290791749', 'Jabón en Polvo Ala Lavado a Mano con bicarbonato 800gr', 100, 'Unidad', 2000.00, 2400.00, 'Ala', '', 'Habilitado', '', 12),
(382, '7793699045713', 'Limpiador Desinfectante Sedilé Lavanda 900ml', 100, 'Unidad', 900.00, 1200.00, 'Sedilé', '', 'Habilitado', '', 12),
(383, '7793699000309', 'Limpiador Desinfectante Sedilé Marino 900ml', 100, 'Unidad', 900.00, 1200.00, 'Sedilé', '', 'Habilitado', '', 12),
(384, '7791905023982', 'Limpiador Multisuperficies Odex Limón 900ml.', 100, 'Unidad', 1100.00, 1500.00, 'Odex', '', 'Habilitado', '', 12),
(385, '7791290794054', 'Detergente Cif Bioactive Limón 300ml.', 100, 'Unidad', 1300.00, 1600.00, 'Cif', '', 'Habilitado', '', 12),
(386, '7793699001955', 'Lavavajillas Sedilé Marina 750ml.', 100, 'Unidad', 900.00, 1200.00, 'Sedilé', '', 'Habilitado', '', 12),
(387, '7790132098459', 'Lavandina Común Ayudín 1l.', 100, 'Unidad', 1000.00, 1200.00, 'Ayudín', '', 'Habilitado', '', 12),
(388, '7793416000186', 'Cepillo Mano Salzano', 100, 'Unidad', 1200.00, 1500.00, 'Salzano', '', 'Habilitado', '', 12),
(389, '7794440003310', 'Esponja Lavavajilla Virulana Lisa', 100, 'Unidad', 500.00, 600.00, 'Virulana', '', 'Habilitado', '', 12),
(390, '7790064001558', 'Alcohol Estrella 250ml.', 100, 'Unidad', 1000.00, 1250.00, 'Estrella', '', 'Habilitado', '', 1),
(391, '4005808257621', 'Desodorante a Bolilla Nivea Men Sensitive Protect 50ml.', 100, 'Unidad', 1800.00, 2000.00, 'Nivea', '', 'Habilitado', '', 14),
(392, '7791293043838', 'Desodorante Axe Collision 150ml.', 100, 'Unidad', 2700.00, 3000.00, 'Axe', '', 'Habilitado', '', 14),
(393, '7790064001565', 'Alcohol Estrella 50ml.', 100, 'Unidad', 1700.00, 2000.00, 'Estrella', '', 'Habilitado', '', 1),
(394, '7791293049519', 'Desodorante Aerosol Rexona Antibacterial Protection 150ml.', 100, 'Unidad', 2700.00, 3100.00, 'Rexona', '', 'Habilitado', '', 12),
(395, '6910021007206', 'Cepillo de Dientes Colgate Premier Clean Medio', 100, 'Unidad', 800.00, 1000.00, 'Colgate', '', 'Habilitado', '', 14),
(396, '6413789501158', 'Cepillo de Dientes Aqua Oral Care Kids', 100, 'Unidad', 700.00, 800.00, 'Aqua', '', 'Habilitado', '', 14),
(397, '7891024132005', 'Crema Dental Colgate Triple Acción 90gr.', 100, 'Unidad', 2000.00, 2200.00, 'Colgate', '', 'Habilitado', '', 14),
(398, '7798347080061', 'Foco Candela LED Clásica 12w', 100, 'Unidad', 1300.00, 1500.00, 'Candela', '', 'Habilitado', '', 1),
(399, '7622201735715', 'Jugo en Sobre Tang Multifruta 15gr.', 100, 'Unidad', 200.00, 350.00, 'Tang', '', 'Habilitado', '', 22),
(400, '7622201746018', 'Jugo en Sobre Tang Naranja-Lima 15gr.', 100, 'Unidad', 200.00, 350.00, 'Tang', '', 'Habilitado', '', 22),
(401, '7622201705961', 'Jugo en Sobre Tang Naranja 15gr.', 100, 'Unidad', 200.00, 350.00, 'Tang', '', 'Habilitado', '', 22),
(402, '7790580129880', 'Jugo en Sobre BC Naranja-Durazno 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(403, '7790580129958', 'Juego en Sobre BC Mango-Naranja 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(404, '7790580143978', 'Jugo en Sobre BC Limonada-Menta-Jengibre 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(405, '7790580129644', 'Juego en Sobre BC Pomelo Rosado 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(406, '7790580129637', 'Jugo en Sobre BC Futilla-Limón 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(407, '7790580129385', 'Jugo en Sobre BC Mix Frutal 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(408, '7790580129620', 'Jugo en Sobre BC Ananá 7gr.', 100, 'Unidad', 200.00, 350.00, 'La Campagnola', '', 'Habilitado', '', 22),
(409, '77903785', 'Alfajor Triple Milka Mousse 55gr', 100, 'Unidad', 1200.00, 1400.00, 'Milka', '', 'Habilitado', '', 4),
(410, '7790040150010', 'Alfajor Triple Cofler Choco Creamy 60gr.', 100, 'Unidad', 100.00, 1200.00, 'Cofler', '', 'Habilitado', '', 4),
(411, '7790040143692', 'Cofler Choco Cookies Bañadas 132gr.', 100, 'Unidad', 2000.00, 2200.00, 'Cofler', '', 'Habilitado', '', 11);
INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(412, '77984395', 'Barra Cereal Mix Oasión de Chocolate 26gr.', 100, 'Unidad', 600.00, 800.00, 'Arcor', '', 'Habilitado', '', 24),
(413, '7790040146723', 'Barra Cereal Mix Almendras, Girasol y Maní 33gr.', 100, 'Unidad', 600.00, 800.00, 'Arcor', '', 'Habilitado', '', 24),
(414, '7790040140943', 'Galletitas Cereal Mix Grano Entero con Cacao', 100, 'Unidad', 1400.00, 1700.00, 'Arcor', '', 'Habilitado', '', 11),
(415, '7790040136250', 'Galletitas Cereales Bagley con Salvado 169gr.', 100, 'Unidad', 1000.00, 1350.00, 'Bagley', '', 'Habilitado', '', 11),
(416, '7790040136212', 'Galletitas Cereales Bagley con Avena 155gr.', 100, 'Unidad', 1000.00, 1350.00, 'Bagley', '', 'Habilitado', '', 11),
(417, '7790040145023', 'Galletitas Cereal Mix Avena y Chocolate 207gr.', 100, 'Unidad', 1700.00, 2000.00, 'Arcor', '', 'Habilitado', '', 11),
(418, '7790040135758', 'Galletitas Cereal Mix Semillas y Chips 207gr.', 100, 'Unidad', 1700.00, 2000.00, 'Arcor', '', 'Habilitado', '', 11),
(419, '7790040136090', 'Galletitas Hogareñas Mix de Cereales', 100, 'Unidad', 1000.00, 1350.00, 'Arcor', '', 'Habilitado', '', 11),
(420, '7790040135741', 'Galletitas Cereal Mix Avena y Pasas 207gr.', 100, 'Unidad', 1700.00, 2000.00, 'Arcor', '', 'Habilitado', '', 11),
(421, '7790040147782', 'Saladix Picante 30gr.', 100, 'Unidad', 900.00, 1200.00, 'Saladix', '', 'Habilitado', '', 24),
(422, '7790040147751', 'Saladix Xtra Picante 60gr.', 100, 'Unidad', 1400.00, 1700.00, 'Saladix', '', 'Habilitado', '', 24),
(423, '7790380023401', 'Toddy cacao 180gr.', 100, 'Unidad', 1200.00, 1600.00, '', '', 'Habilitado', '', 23),
(424, '7791113001161', 'Gelatina Emeth Frambuesa 70gr.', 100, 'Unidad', 900.00, 1200.00, '', '', 'Habilitado', '', 23),
(425, '7791113004605', 'Bizcochuelo de Chocolate Emeth 450gr.', 100, 'Unidad', 1800.00, 2200.00, '', '', 'Habilitado', '', 23),
(426, '7790036948188', 'SiDiet edulcorante 200ml.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 23),
(427, '7790070933652', 'Cafe Arlistán 50gr.', 100, 'Unidad', 1500.00, 1900.00, '', '', 'Habilitado', '', 23),
(428, '7790580134532', 'Romero La Campagnola 15gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 23),
(429, '7790580136062', 'Aji Triturado La Campagnola 23 gr.', 100, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 23),
(430, '7791620187235', 'Ketchup Dánica 50gr.', 100, 'Unidad', 250.00, 350.00, '', '', 'Habilitado', '', 23),
(431, '7791620187693', 'Ketchup Dánica 220gr.', 100, 'Unidad', 1200.00, 1500.00, '', '', 'Habilitado', '', 23),
(432, '7790580136529', 'Pimentón La Campagnola 48gr.', 100, 'Unidad', 700.00, 1000.00, '', '', 'Habilitado', '', 23),
(433, '7798324642336', 'Laurel Don Ilmo 15gr.', 100, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 23),
(434, '7790580135980', 'Condimento para Arroz La Campagnola 23gr.', 100, 'Unidad', 500.00, 700.00, '', '', 'Habilitado', '', 23),
(435, '7790580135737', 'Condimento para Pizza La Campagnola 23gr', 100, 'Unidad', 600.00, 800.00, '', '', 'Habilitado', '', 23),
(436, '7792900634135', 'Sal Fina Dos Anclas 500gr', 100, 'Unidad', 1700.00, 2200.00, '', '', 'Habilitado', '', 23),
(437, '7792900092676', 'Sal Gruesa Dos Anclas 500gr.', 100, 'Unidad', 1100.00, 1500.00, '', '', 'Habilitado', '', 23),
(438, '7896022201906', 'Express Renata sabor Carne 80gr', 100, 'Unidad', 1000.00, 1500.00, '', '', 'Habilitado', '', 23),
(439, '7896022201890', 'Express Renata sabor Gallina 80gr', 100, 'Unidad', 1000.00, 1500.00, '', '', 'Habilitado', '', 23),
(440, '7798033108536', 'Test de Embarazo', 100, 'Unidad', 1500.00, 2000.00, '', '', 'Habilitado', '', 14),
(441, '7798048721768', 'Harina Crema Elio 900gr.', 100, 'Unidad', 1100.00, 1500.00, '', '', 'Habilitado', '', 23),
(442, '112402002', 'Pendrive 32gr ONLY', 1, 'Unidad', 8000.00, 9800.00, '', '', 'Habilitado', '', 25),
(443, '619659134686', 'Tarjeta de Memoria SanDisk 16gr', 3, 'Unidad', 10000.00, 11700.00, '', '', 'Habilitado', '', 25),
(444, '619659134884', 'Tarjeta de Memoria SanDisk 32gb', 3, 'Unidad', 8000.00, 10400.00, '', '', 'Habilitado', '', 25),
(445, '619659129729', 'Pendrive SanDisk 64gb.', 3, 'Unidad', 13000.00, 15000.00, '', '', 'Habilitado', '', 25),
(446, '619659129729PendriveSanDisk128gb', 'Pendrive SanDisk 128gb.', 1, 'Unidad', 20000.00, 24900.00, '', '', 'Habilitado', '', 25),
(447, '11300220150', 'Audicular Simil Samsung Blanco', 4, 'Unidad', 2500.00, 3000.00, '', '', 'Habilitado', '11300220150_43.jpg', 25),
(448, '110733112', 'Cable Only USB V8', 6, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(449, '1113070112601', 'Cable Only USB Tipo C carga rapida', 6, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(450, '194252156926', 'Cargador Apple 20w', 2, 'Unidad', 10000.00, 12300.00, '', '', 'Habilitado', '', 25),
(451, '110718001', 'Cable Only Tipo C a Tipo C 3.1A', 1, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '110718001_20.jpg', 25),
(452, '110801098', 'Cargador Only 4.4A Tipo C', 6, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(453, '100703201', 'Cable Only USB a V8 1.5A', 6, 'Unidad', 2500.00, 3000.00, '', '', 'Habilitado', '100703201_13.jpg', 25),
(454, '112105030', 'Microfono Clip Only', 2, 'Unidad', 8000.00, 10900.00, '', '', 'Habilitado', '', 25),
(455, '1108050101002', 'Cargador Only Carga Rapida 4.4A Tipo C', 10, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(456, '110801097', 'Cargador Only Carga Rapida 4.4A V8', 10, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(457, '11080501b010009', 'Cargador Xaea Intensify 30W Tipo C', 10, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(458, '11080401b010009', 'Cargador Xaea Intensify 30W Cable Iphone', 10, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(459, '110809010180121', 'Cargador Only Rush Carga Rapida 4.8A', 6, 'Unidad', 5000.00, 6000.00, '', '', 'Habilitado', '', 25),
(460, '1113080402702', 'Cable USB Xaea Thor Iphone', 6, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(461, '7796350507810', 'Cable USB Legatus Tipo V8 5.A', 6, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(462, '1113080402703', 'Cable USB Xaea Thor Tipo Iphone', 10, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(463, '1113090402603', 'Cable USB Xaea Thor Tipo C', 10, 'Unidad', 3000.00, 3500.00, '', '', 'Habilitado', '', 25),
(464, '7798186030326', 'Cupetín Bull Dog Crazy 40gr.', 100, 'Unidad', 500.00, 700.00, 'Billiken', '', 'Habilitado', '', 5),
(465, '7798186030548', 'Pastillas Bul Dog Mix Manzana-Sandía 30gr.', 100, 'Unidad', 250.00, 400.00, 'Billiken', '', 'Habilitado', '', 5),
(466, '7798184562256', 'Pastillas Bull Dog Uve 30gr.', 100, 'Unidad', 250.00, 400.00, 'Biliken', '', 'Habilitado', '', 5),
(467, '7798186033457', 'Gomitas Yummy Moritas 30gr.', 100, 'Unidad', 350.00, 500.00, 'Billiken', '', 'Habilitado', '', 5),
(468, '7798162584294', 'Pastillas Bull Dog Sandía 30gr.', 100, 'Unidad', 250.00, 400.00, 'Billiken', '', 'Habilitado', '', 5),
(469, '7798186032627', 'Gomitas Yummy Ositos 30gr.', 100, 'Unidad', 350.00, 500.00, 'Billiken', '', 'Habilitado', '', 5),
(470, '7798186032665', 'Gomitas Yummy Pececitos 30gr.', 100, 'Unidad', 350.00, 500.00, 'Billiken', '', 'Habilitado', '', 5),
(471, '7798094340012', 'Mentitas DRF Menta 26 gr.', 100, 'Unidad', 300.00, 400.00, 'DRF', '', 'Habilitado', '', 5),
(472, '7798176191297', 'Mentitas DRF Cherry 26gr.', 100, 'Unidad', 300.00, 400.00, 'DRF', '', 'Habilitado', '', 5),
(473, '7798040463598', 'Chupetín Pus Pop Frambuesa 14gr.', 100, 'Unidad', 500.00, 700.00, 'Push Pop', '', 'Habilitado', '', 5),
(474, '7798186033631', 'Pastillas Punch 6,5gr.', 100, 'Unidad', 50.00, 100.00, 'Billiken', '', 'Habilitado', '', 5),
(475, '77904744', 'Pastillas La Yapa', 100, 'Unidad', 200.00, 350.00, 'Billiken', '', 'Habilitado', '', 5),
(476, '7798186030531', 'Pastillas Bull Dog Mix Tuttifruti y Limón 30gr.', 100, 'Unidad', 250.00, 350.00, 'Billiken', '', 'Habilitado', '', 5),
(477, '7896760400395', 'Cerveza Lata malta 473ml', 100, 'Lata', 1400.00, 2000.00, '', '', 'Habilitado', '', 9),
(478, '7891149201006', 'Cerveza Lata Skol 473ml', 100, 'Lata', 2000.00, 2000.00, '', '', 'Habilitado', '', 9),
(479, '7795767000037', 'Picapalo Caña Misionera 930CC', 100, 'Unidad', 2200.00, 2900.00, '', '', 'Habilitado', '', 9),
(480, '7792410527897', 'Doble-V petaca 200cc', 100, 'Unidad', 2000.00, 2400.00, '', '', 'Habilitado', '', 9),
(481, '78400528', 'Fortín petaca 200cc', 100, 'Unidad', 700.00, 900.00, '', '', 'Habilitado', '', 9),
(482, '7792855002430', 'Borsa Licor Dulce de Leche petaca 200cc', 100, 'Unidad', 1000.00, 1200.00, '', '', 'Habilitado', '', 9),
(483, '7792855002416', 'Borsa Cafe al Cognac petaca 200cc', 100, 'Unidad', 1000.00, 1200.00, '', '', 'Habilitado', '', 9),
(484, '7896050200124', 'Velho Barreiro 910cc', 100, 'Unidad', 4300.00, 5000.00, '', '', 'Habilitado', '', 9),
(485, '7790036976020', 'Vino Uvita Tinto Botellón 1125cc', 100, 'Unidad', 2100.00, 2500.00, '', '', 'Habilitado', '', 10),
(486, '7622201735906', 'Pepitos 119gr', 100, 'Unidad', 1100.00, 1500.00, '', '', 'Habilitado', '', 11),
(487, '7622201735272', 'Oreo 118gr', 100, 'Unidad', 1.10, 1.60, '', '', 'Habilitado', '', 11),
(488, '7622201745608', 'Oreos Bañadas 119gr', 100, 'Unidad', 3.60, 4.90, '', '', 'Habilitado', '', 11),
(489, '7622201740368', 'Oreo Bañada chocolate negro', 100, 'Unidad', 3.60, 4.90, '', '', 'Habilitado', '', 11),
(490, '7622300990732', 'Club Social 24gr', 100, 'Unidad', 0.39, 0.55, '', '', 'Habilitado', '', 11),
(491, '7622210692245', 'Club Social Jamon 23,5g', 100, 'Unidad', 0.39, 0.55, '', '', 'Habilitado', '', 11),
(492, '77976307', 'Oreo Alfajor triple 56g', 100, 'Unidad', 1100.00, 1400.00, '', '', 'Habilitado', '', 4),
(493, '77915481', 'Pepitos Alfajor triple 57gr', 100, 'Unidad', 1.10, 1.40, '', '', 'Habilitado', '', 4),
(494, '7798205050564', 'Kos Mix Vitalidad 100g', 100, 'Unidad', 1800.00, 2300.00, '', '', 'Habilitado', '', 24),
(495, '7798205050120', 'Kos Mix Frutal 200gr', 100, 'Unidad', 4000.00, 4800.00, '', '', 'Habilitado', '', 24),
(496, '7798205050649', 'Kos Granola Tradicional 150 gr', 100, 'Unidad', 1800.00, 2200.00, '', '', 'Habilitado', '', 24),
(497, '7798205050632', 'Kos Granola Berries 150 gr', 100, 'Unidad', 1800.00, 2200.00, '', '', 'Habilitado', '', 24),
(498, '7798205050601', 'Kos Granola Energetica 150 gr', 100, 'Unidad', 1800.00, 2200.00, '', '', 'Habilitado', '', 24),
(499, '7798205056481', 'Kos Mix Coconuts 100 gr', 100, 'Unidad', 2200.00, 2600.00, '', '', 'Habilitado', '', 24),
(500, '7798205050441', 'Kos Mix Deportivo 200 gr', 100, 'Unidad', 4200.00, 4800.00, '', '', 'Habilitado', '', 24);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(7) NOT NULL,
  `usuario_nombre` varchar(50) NOT NULL,
  `usuario_apellido` varchar(50) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_clave` varchar(535) NOT NULL,
  `usuario_foto` varchar(200) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `caja_id`) VALUES
(1, 'David', 'Merkua', '', 'Administrador', '$2y$10$Jgm6xFb5Onz/BMdIkNK2Tur8yg/NYEMb/tdnhoV7kB1BwIG4R05D2', '', 1),
(2, 'Vendedor', 'Genérico', '', 'Vendedor', '$2y$10$6YR7uz4TjH2uW7KJ7uq/0O0AIsAqpxQtMN.xq0q/HaRPM4Hzv5ADW', 'Vendedor_15.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(30) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `usuario_id` int(7) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `venta`
--

INSERT INTO `venta` (`venta_id`, `venta_codigo`, `venta_fecha`, `venta_hora`, `venta_total`, `venta_pagado`, `venta_cambio`, `usuario_id`, `cliente_id`, `caja_id`) VALUES
(4, 'M9J0J3D0P7-1', '2025-04-20', '01:49 pm', 1600.00, 10000.00, 8400.00, 1, 1, 1),
(5, 'K5T7N9C0C7-2', '2025-04-20', '01:52 pm', 8400.00, 10000.00, 1600.00, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(100) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Dumping data for table `venta_detalle`
--

INSERT INTO `venta_detalle` (`venta_detalle_id`, `venta_detalle_cantidad`, `venta_detalle_precio_compra`, `venta_detalle_precio_venta`, `venta_detalle_total`, `venta_detalle_descripcion`, `venta_codigo`, `producto_id`) VALUES
(8, 1, 1300.00, 1600.00, 1600.00, 'Oreo 118gr.', 'M9J0J3D0P7-1', 367),
(9, 1, 1300.00, 1600.00, 1600.00, 'Oreo 118gr.', 'K5T7N9C0C7-2', 367),
(10, 3, 900.00, 1300.00, 3900.00, 'Galletitas Sonrisas 108gr.', 'K5T7N9C0C7-2', 256),
(11, 1, 600.00, 800.00, 800.00, 'Topline 7 Bubble Fun 7u.', 'K5T7N9C0C7-2', 156),
(12, 1, 450.00, 600.00, 600.00, 'Menthoplus miel 29.4 gr', 'K5T7N9C0C7-2', 152),
(13, 1, 450.00, 600.00, 600.00, 'Menthoplus cereza 29.4 gr.', 'K5T7N9C0C7-2', 151),
(14, 1, 650.00, 900.00, 900.00, 'Cigarrillos Eight 20u.', 'K5T7N9C0C7-2', 284);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indexes for table `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`venta_detalle_id`),
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Constraints for table `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
