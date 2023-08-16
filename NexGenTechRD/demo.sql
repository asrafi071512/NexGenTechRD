-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-08-2023 a las 13:52:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `application_date` varchar(255) NOT NULL,
  `solicited_service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `fullname`, `phone`, `address`, `application_date`, `solicited_service`) VALUES
(1, 'jose', '8090010203', 'Av. 27 de Febrero, Santo Domingo #454', '03/08/20', 'Personal website'),
(2, 'Juan Pérez', '555-1234', 'Calle Principal, Ciudad', '2023-08-02', 'Diseño de sitio web'),
(3, '', '', 'Calle Principal, Ciudad', '2023-08-02', 'Diseño de sitio web'),
(4, 'Juan Pérez', '555-1234', 'Calle Principal, Ciudad', '2023-08-02', 'Diseño de sitio web'),
(5, 'Juan Pérez', '555-1234', 'Calle Principal, Ciudad', '2023-08-02', 'Diseño de sitio web'),
(6, 'Juan Pérez', '555-1234', 'Calle Principal, Ciudad', '2023-08-02', 'Diseño de sitio web'),
(12, 'jdljsdl', 'adasdas', 'dasdasd', '2023-08-05', 'asdasdasd'),
(13, 'Mario', '8093340908', 'Pajarito', '2023-08-05', 'Leanding Page'),
(14, 'Mario', '8093340908', 'Pajarito', '', ''),
(15, 'Mario', '8093340908', 'Pajarito', '', ''),
(16, 'Mario', '8093340908', 'Pajarito', '', ''),
(17, 'Mario', '8093340908', 'Pajarito', '', ''),
(18, 'Mario', '8093340908', 'Pajarito', '', ''),
(19, 'Mario', '8093340908', 'Pajarito', '', ''),
(22, 'Andreudy', '8093340908', 'pajarito/', '2023-08-18', 'Mario'),
(23, 'Andreudy', '8093340908', 'pajarito/', '2023-08-18', 'Mario'),
(25, 'Mario', '8093340909', 'Los Mina', '2023-08-05', 'WebSite'),
(26, 'Mario', '8093340909', 'Los Mina', '2023-08-05', 'WebSite'),
(27, 'Mario', '8093340909', 'Los Mina', '2023-08-05', 'assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
(28, 'Mario', '8093340909', 'Los Mina', '2023-08-05', 'assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
(29, 'Hola', 'Hola', 'Hola', '2023-08-06', 'Hola'),
(30, 'Hola', 'Hole', 'Holi', '2023-08-12', 'Holo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `rol`) VALUES
(1, 'admin', '1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
