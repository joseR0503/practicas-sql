-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2024 a las 10:18:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesora`
--

CREATE TABLE `asesora` (
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(30) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `lim_credito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `id_cliente`, `lim_credito`) VALUES
('Pedro Ramirez', 1, 1000),
('Rocio Porras', 2, 2000),
('Andres Ruiz', 3, 6000),
('Maria Gonzalez', 4, 4000),
('Sergio Perez', 5, 2000),
('Luisa Carranza', 6, 1000),
('Santiago Abascal', 7, 1000),
('Ramon Fernandez', 8, 4000),
('Manuel Ronaldo', 9, 6000),
('Vinicius', 10, 1000),
('Hamilton', 11, 5000),
('Messi', 12, 2000),
('Pau Gasol', 13, 1000),
('Dani Alves', 14, 1000),
('Pedro Sanchez', 15, 1000),
('Jennifer Lopez', 16, 1000),
('Pamela Langer', 17, 2000),
('Albert Einstein', 18, 1000),
('Dani deVito', 19, 5000),
('Ana de Armas', 20, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `tienda` varchar(30) NOT NULL,
  `fecha_incorporacion` date NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `cuota` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `jefe` varchar(30) NOT NULL,
  `id_oficina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`dni`, `nombre`, `edad`, `tienda`, `fecha_incorporacion`, `cargo`, `cuota`, `ventas`, `jefe`, `id_oficina`) VALUES
(1, 'Pedro Ramirez', 26, 'El palo', '2000-08-03', 'vendedor', 12000, 13000, 'Pedro Ramirez', 1),
(2, 'Rocio Porras', 36, 'Gran vía', '2006-10-03', 'vendedor', 14000, 15000, 'Rocio Porras', 2),
(3, 'Andres Ruiz', 46, 'Gran vía', '2011-04-03', 'vendedor', 8000, 7000, 'Rocio Porras', 2),
(4, 'Maria Gonzalez', 22, 'Larios', '2000-04-29', 'vendedor', 16000, 15000, 'María González', 1),
(5, 'Sergio Perez', 32, 'Gran vía', '2011-12-03', 'vendedor', 8500, 9600, 'Rocio Porras', 2),
(6, 'Luisa Carranza', 42, 'las Ramblas', '2008-10-03', 'vendedor', 9600, 12600, 'Luisa Carranza', 3),
(7, 'Santiago Abascal', 29, 'Larios', '2005-06-03', 'vendedor', 6400, 3000, 'María González', 1),
(8, 'Ramon Fernandez', 39, 'las Ramblas', '2013-10-03', 'vendedor', 17000, 8000, 'Sra. Carranza', 3),
(9, 'Manuel Ronaldo', 49, 'las Ramblas', '2013-10-03', 'vendedor', 12000, 1000, 'Luisa Carranza', 3),
(10, 'Vinicius', 25, 'O Grove', '2009-04-23', 'vendedor', 8600, 9600, 'Vinicius', 4),
(11, 'Hamilton', 35, 'Larios', '2010-01-08', 'vendedor', 9700, 12000, 'Pedro Ramirez', 1),
(12, 'Messi', 45, 'O Grove', '2009-04-23', 'vendedor', 8000, 6400, 'Vinicius', 4),
(13, 'Pau Gasol', 56, 'O Grove', '2014-04-23', 'vendedor', 14000, 18000, 'Vinicius', 4),
(14, 'Dani Alves', 61, 'Gran vía', '2016-10-03', 'vendedor', 9000, 9000, 'Porras', 2),
(15, 'Pedro Sanchez', 23, 'O Grove', '2019-04-23', 'vendedor', 4000, 4600, 'Vinicius', 4),
(16, 'Jennifer Lopez', 33, 'Larios', '2020-10-03', 'vendedor', 7000, 9000, 'Pedro Ramirez', 1),
(17, 'Pamela Langer', 43, 'the city', '2023-01-23', 'vendedor', 8600, 1200, 'Pamela Langer', 5),
(18, 'Albert Einstein', 19, 'las Ramblas', '2018-10-03', 'vendedor', 12000, 11000, 'Luisa Carranza', 3),
(19, 'Dani deVito', 55, 'Gran vía', '2022-07-03', 'vendedor', 12300, 20000, 'Rocio Porras', 2),
(20, 'Ana de Armas', 57, 'las Ramblas', '2023-10-03', 'vendedor', 12000, 18000, 'Luisa Carranza', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incluye`
--

CREATE TABLE `incluye` (
  `num_pedido` int(11) NOT NULL,
  `id_fab` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficina`
--

CREATE TABLE `oficina` (
  `ciudad` varchar(30) NOT NULL,
  `id_oficina` int(11) NOT NULL,
  `objetivo` int(11) DEFAULT NULL,
  `ventas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oficina`
--

INSERT INTO `oficina` (`ciudad`, `id_oficina`, `objetivo`, `ventas`) VALUES
('Málaga', 1, 100000, 180000),
('Madrid', 2, 50000, 43000),
('Barcelona', 3, 75000, 95000),
('Lugo', 4, 65000, 62000),
('Londres', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `num_pedido` int(11) NOT NULL,
  `fecha_realizacion` date NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_fab` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_fab`, `id_prod`, `precio`, `cantidad`) VALUES
(1, 1, 10, 1000),
(1, 2, 30, 1000),
(1, 3, 50, 1000),
(1, 4, 70, 1000),
(1, 5, 90, 1000),
(1, 6, 110, NULL),
(1, 7, 130, NULL),
(1, 8, 150, NULL),
(1, 9, 170, NULL),
(1, 10, 190, NULL),
(2, 10, 11, 1000),
(2, 11, 21, 1000),
(2, 12, 31, 1000),
(2, 13, 41, 1000),
(2, 14, 51, 1000),
(3, 11, 13, 1000),
(3, 12, 23, 1000),
(3, 13, 33, 1000),
(3, 14, 43, 1000),
(3, 15, 53, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selecciona`
--

CREATE TABLE `selecciona` (
  `id_cli` int(11) NOT NULL,
  `id_fab` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesora`
--
ALTER TABLE `asesora`
  ADD PRIMARY KEY (`id_cliente`,`id_empleado`),
  ADD KEY `fk_empases` (`id_empleado`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `fk_oficina` (`id_oficina`);

--
-- Indices de la tabla `incluye`
--
ALTER TABLE `incluye`
  ADD PRIMARY KEY (`num_pedido`,`id_fab`,`id_prod`),
  ADD KEY `fk_prodincl` (`id_fab`,`id_prod`);

--
-- Indices de la tabla `oficina`
--
ALTER TABLE `oficina`
  ADD PRIMARY KEY (`id_oficina`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`num_pedido`),
  ADD KEY `fk_cliente` (`id_cliente`),
  ADD KEY `fk_empleado` (`id_empleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_fab`,`id_prod`);

--
-- Indices de la tabla `selecciona`
--
ALTER TABLE `selecciona`
  ADD PRIMARY KEY (`id_cli`,`id_fab`,`id_prod`),
  ADD KEY `fk_prodselec` (`id_fab`,`id_prod`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesora`
--
ALTER TABLE `asesora`
  ADD CONSTRAINT `fk_cliases` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_clieases` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_empases` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`dni`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_oficina` FOREIGN KEY (`id_oficina`) REFERENCES `oficina` (`id_oficina`);

--
-- Filtros para la tabla `incluye`
--
ALTER TABLE `incluye`
  ADD CONSTRAINT `fk_pedincl` FOREIGN KEY (`num_pedido`) REFERENCES `pedido` (`num_pedido`),
  ADD CONSTRAINT `fk_prodincl` FOREIGN KEY (`id_fab`,`id_prod`) REFERENCES `producto` (`id_fab`, `id_prod`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`dni`);

--
-- Filtros para la tabla `selecciona`
--
ALTER TABLE `selecciona`
  ADD CONSTRAINT `fk_cliselec` FOREIGN KEY (`id_cli`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_prodselec` FOREIGN KEY (`id_fab`,`id_prod`) REFERENCES `producto` (`id_fab`, `id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
