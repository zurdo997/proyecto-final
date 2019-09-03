-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-09-2019 a las 21:56:32
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `dni`, `nombres`, `apellido`, `telefono`) VALUES
(1, '12345', 'Luis', 'Suarez', '12346'),
(3, '54321', 'paulo', 'dybala', '1213543');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `asunto` varchar(30) NOT NULL,
  `mensaje` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_contacto`, `nombre`, `apellido`, `telefono`, `asunto`, `mensaje`) VALUES
(1, 'alan', 'franco', '1234556', 'Reservas', 'la seccion reservas de la pagina web no funciona'),
(2, 'alan', 'franco', '13558688', 'calefaccion', 'en la habitacion 55 no funciona la calefaccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_reservas`
--

CREATE TABLE `detalle_reservas` (
  `id_detalle` int(11) NOT NULL,
  `id_reservas` int(11) NOT NULL,
  `id_hab` int(11) NOT NULL,
  `cant_hab` int(11) NOT NULL,
  `precio_res` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_reservas`
--

INSERT INTO `detalle_reservas` (`id_detalle`, `id_reservas`, `id_hab`, `cant_hab`, `precio_res`) VALUES
(1, 3, 3, 1, 500),
(2, 3, 3, 2, 500),
(3, 3, 5, 1, 170),
(4, 3, 4, 1, 100),
(5, 3, 5, 1, 170),
(6, 3, 4, 1, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `dni`, `nombres`, `apellido`, `telefono`, `user`) VALUES
(1, '12345', 'Alan', 'Franco', '12345678', 'alan97'),
(4, '1234', 'Lionel', 'Messi', '123466', 'messi10'),
(8, '12345', 'Cristiano', 'Ronaldo', '13558688', 'ronaldo7'),
(9, '32132123', 'jorge', 'canteros', '123432432', 'totojorge');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_hab` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `cant_camas` int(15) NOT NULL,
  `piso` int(10) NOT NULL,
  `numero` int(200) NOT NULL,
  `precio` double NOT NULL,
  `estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_hab`, `tipo`, `cant_camas`, `piso`, `numero`, `precio`, `estado`) VALUES
(1, 'suite junior', 2, 3, 35, 300, 'ocupada'),
(3, 'suite presidencial', 2, 10, 100, 500, 'ocupada'),
(4, 'individual', 1, 2, 22, 100, 'libre'),
(5, 'doble', 2, 3, 30, 170, 'libre'),
(6, 'king', 1, 5, 54, 250, 'ocupada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reservas` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `entrada` varchar(15) NOT NULL,
  `salida` varchar(20) NOT NULL,
  `cant_hab` int(10) NOT NULL,
  `monto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reservas`, `id_cliente`, `id_empleado`, `entrada`, `salida`, `cant_hab`, `monto`) VALUES
(2, 0, 0, '2019-09-02', '2019-09-10', 2, 0),
(3, 0, 0, '2019-09-10', '2019-09-18', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_serv` int(11) NOT NULL,
  `descripcion` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `disponible` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_serv`, `descripcion`, `disponible`) VALUES
(1, 'Calefacción', 'no disponible'),
(2, 'Mayordomo', 'no disponible'),
(3, 'Piscina', 'disponible'),
(5, 'Aire acondicionado', 'disponible'),
(6, 'Alquiler de coches', 'no disponible'),
(7, 'Salas de reunión', 'no disponible');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `detalle_reservas`
--
ALTER TABLE `detalle_reservas`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_hab`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reservas`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_serv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `detalle_reservas`
--
ALTER TABLE `detalle_reservas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_hab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reservas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_serv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
