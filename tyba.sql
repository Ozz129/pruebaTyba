-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2022 a las 05:47:56
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tyba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `endpoint` char(50) NOT NULL,
  `method` char(7) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`id`, `endpoint`, `method`, `createdAt`, `updatedAt`) VALUES
(6, 'api/auth/register', 'POST', '2022-06-05 01:39:35', '2022-06-05 01:39:35'),
(7, 'api/auth/login', 'POST', '2022-06-05 01:41:41', '2022-06-05 01:41:41'),
(8, 'api/auth/register', 'POST', '2022-06-05 02:07:25', '2022-06-05 02:07:25'),
(9, 'api/auth/login', 'POST', '2022-06-05 02:08:42', '2022-06-05 02:08:42'),
(10, 'api/auth/register', 'POST', '2022-06-05 02:46:36', '2022-06-05 02:46:36'),
(11, 'api/auth/register', 'POST', '2022-06-05 02:46:52', '2022-06-05 02:46:52'),
(12, 'api/auth/login', 'POST', '2022-06-05 03:06:47', '2022-06-05 03:06:47'),
(13, 'api/auth/register', 'POST', '2022-06-05 03:11:41', '2022-06-05 03:11:41'),
(14, 'api/auth/login', 'POST', '2022-06-05 03:12:03', '2022-06-05 03:12:03'),
(15, 'api/auth/login', 'POST', '2022-06-05 03:19:59', '2022-06-05 03:19:59'),
(16, 'api/auth/register', 'POST', '2022-06-05 03:19:59', '2022-06-05 03:19:59'),
(17, 'api/auth/login', 'POST', '2022-06-05 03:19:59', '2022-06-05 03:19:59'),
(18, 'api/auth/register', 'POST', '2022-06-05 03:27:09', '2022-06-05 03:27:09'),
(19, 'api/auth/register', 'POST', '2022-06-05 03:28:41', '2022-06-05 03:28:41'),
(20, 'api/auth/register', 'POST', '2022-06-05 03:30:28', '2022-06-05 03:30:28'),
(21, 'api/auth/login', 'POST', '2022-06-05 03:33:16', '2022-06-05 03:33:16'),
(22, 'api/auth/register', 'POST', '2022-06-05 03:34:49', '2022-06-05 03:34:49'),
(23, 'api/auth/register', 'POST', '2022-06-05 03:35:03', '2022-06-05 03:35:03'),
(24, 'api/auth/register', 'POST', '2022-06-05 03:35:23', '2022-06-05 03:35:23'),
(25, 'api/auth/login', 'POST', '2022-06-05 03:35:29', '2022-06-05 03:35:29'),
(26, 'api/auth/login', 'POST', '2022-06-05 03:36:02', '2022-06-05 03:36:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` char(100) NOT NULL,
  `user` char(100) NOT NULL,
  `password` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Fabian', 'user', '$2a$10$h6yY0GnD6ZGyVGYhoxl0feI.LlUfsOVYWysQZ0l4NxoZiZ5cFo65q', '2022-06-05 00:37:44', '2022-06-05 00:37:44'),
(2, 'Fabian', 'user', '$2a$10$VL88AC.OALYtoCP6zYCf8u893Ae1675dP2DXlQr.z.T20s4nKSUW6', '2022-06-05 00:40:48', '2022-06-05 00:40:48'),
(3, 'Fabian', 'user', '$2a$10$G1XqTKb9HshfSgksTK9uJ.vDZe/nptwkblIgkEWNvxz0FW7swlW46', '2022-06-05 00:41:47', '2022-06-05 00:41:47'),
(4, 'Fabian', 'user', '$2a$10$Nvd0fc4TsOmCQb.nXSDlHOCxSZ2vmjvnrTjMRmQ0Dp2vni.6PPkvG', '2022-06-05 00:42:05', '2022-06-05 00:42:05'),
(5, 'Fabian', 'user', '$2a$10$/XoLjDpY/yN7DCrcrvJXO.3gH1ctCZztiKBqs8SoGrHPcnsAAX7km', '2022-06-05 00:42:29', '2022-06-05 00:42:29'),
(6, 'Fabian', 'user', '$2a$10$/66kjckjRXMgOaRCds9zouWZJfzHGHkBZciCezZbJHDe/LW.vZtje', '2022-06-05 00:44:40', '2022-06-05 00:44:40'),
(7, 'Fabian', 'user', '$2a$10$0TnTTSBJshTTynXEU5dLo.d2sd/CQuyGGKq3OlFHZj0mR/vkWUPUi', '2022-06-05 01:25:17', '2022-06-05 01:25:17'),
(8, 'Fabian', 'user', '$2a$10$JMC7H028Ftuq3lCRMqRb/u3zKug0q3ovQ82L7JIEGFSy5tfwPAbE6', '2022-06-05 01:25:42', '2022-06-05 01:25:42'),
(9, 'Fabian', 'user', '$2a$10$qBXg4S3yJ0BKd/fjRCFM2.RGe89QTdRxRbcnUbFcsCy/d0Ea8GbUy', '2022-06-05 01:27:06', '2022-06-05 01:27:06'),
(10, 'Fabian', 'user', '$2a$10$w/SXUwFIbc3mhz5QcxuQJ.kjHJU7pMSw59EOwjfd1ZaDsOlBEFMlm', '2022-06-05 01:30:30', '2022-06-05 01:30:30'),
(11, 'Fabian', 'user', '$2a$10$ZzD4u6O9QbqwjBF0i2tn9.rGtM5s1HBlZnQ665pGNEVm5xJRWIEmW', '2022-06-05 01:31:45', '2022-06-05 01:31:45'),
(12, 'Fabian', 'user', '$2a$10$grRnoaRcOnEyUn2VTHxr3.Xz.xtXFyNQSlXm718gYLk8GM5OpeSEG', '2022-06-05 01:33:04', '2022-06-05 01:33:04'),
(13, 'Fabian', 'user', '$2a$10$sQSgJxWME.tiW3fObb6DHOgdBdwGoLxTARDjp0zf7ELHz8m4FgLj.', '2022-06-05 01:34:52', '2022-06-05 01:34:52'),
(14, 'Fabian', 'user', '$2a$10$kdiaBqST2zlh3k.OePXZzOX07PdwlKfCySsV2TwAcsFrZDO2eyeMe', '2022-06-05 01:35:19', '2022-06-05 01:35:19'),
(15, 'Fabian', 'user', '$2a$10$AKsWzT56DPGmReSPPEof7O1VgUupK2aqYdcwi8ZzPPfGOfFzi0gGO', '2022-06-05 01:35:56', '2022-06-05 01:35:56'),
(16, 'Fabian', 'user', '$2a$10$n6K80GUQtbg2rutzNT5g3.75wZ35c9piIfJ9PnSXSx.qPAwTfUPvC', '2022-06-05 01:36:23', '2022-06-05 01:36:23'),
(17, 'Fabian', 'user', '$2a$10$.dKUTrPyF/Hyxry3.pzy0eUEtLyHIn8eS8h/QosjIBrOLSXfVfcQi', '2022-06-05 01:36:54', '2022-06-05 01:36:54'),
(18, 'Fabian', 'user', '$2a$10$tvumr5b1Bo4mXgkuWbKjWehTl3vVNMBnWTj/w1tZmQFipL2NA8Zoi', '2022-06-05 01:37:15', '2022-06-05 01:37:15'),
(19, 'Fabian', 'user', '$2a$10$17i9hvwMx3iPlGuFReOj4O0Oj/byOgjtqa6JtE4HAISbe9NvYrZqq', '2022-06-05 01:38:44', '2022-06-05 01:38:44'),
(20, 'Fabian', 'user', '$2a$10$.JHwS25kC7sVMLQtT9m4c.K7fS1wj.R3tSMNT/2YpARQKj5dJG4ky', '2022-06-05 01:39:22', '2022-06-05 01:39:22'),
(21, 'Fabian', 'user', '$2a$10$mb86ee7uRdDNz8bW9H6kd.PMwsqQIVmsb93FL2X4G..L2ogC5uc6S', '2022-06-05 01:39:35', '2022-06-05 01:39:35'),
(22, 'Fabian', 'user', '$2a$10$ngfo02V1ga04qKKfXxG9xeMgTCSIUM5e4rmL7PqlVm5g/JhTrFEO.', '2022-06-05 02:07:25', '2022-06-05 02:07:25'),
(23, 'Fabian', 'user', '$2a$10$PnHa.jpVJSvXM/fzcgjfa.Kl0Tq8YIb7DzqPHDD0jA08ph3QJ7RD6', '2022-06-05 02:46:36', '2022-06-05 02:46:36'),
(24, 'Fabian', 'user', '$2a$10$MqVeJMCea411yFphOf8wQ.lrenMCKxy8lwBp7V7lphCXjCedl4LkG', '2022-06-05 02:46:52', '2022-06-05 02:46:52'),
(25, 'Fabian', 'user', '$2a$10$/1NTCMfuusZfLtkDAcq0/efXIHhy3RSJ.MGTN9OSOnovi0GxFcWV2', '2022-06-05 03:11:41', '2022-06-05 03:11:41'),
(26, 'Fabian', 'user', '$2a$10$R/iaPgbZVIA/0IW4Y6Xd2OKqyHOT4/lDig427coo4xmlgwbH4YOpK', '2022-06-05 03:19:59', '2022-06-05 03:19:59'),
(27, 'Fabian', 'user', '$2a$10$azxlNZV3f3k0a7q8A9zea.5Ad8VD4hJd35pZB/0MSA9gc6ZPN8mcy', '2022-06-05 03:27:09', '2022-06-05 03:27:09'),
(28, 'Fabian', 'user', '$2a$10$xXuJTin0COghUzzYaE/kAuOiLPveYriUcH0qwujRZp7oH1WCBWni6', '2022-06-05 03:28:41', '2022-06-05 03:28:41'),
(29, 'Fabian', 'user', '$2a$10$Esj8.Dbgfdtw/cGsdtdPwuV./T2wFjDjAVu8ZkgtWtRRo3C8F6W8.', '2022-06-05 03:30:28', '2022-06-05 03:30:28'),
(30, 'Fabian', 'user', '$2a$10$d//xXc.i8dXRcDqQdv7X/OoVGSk2pGXqvGazDa6kyIjaqIME5Hkau', '2022-06-05 03:34:49', '2022-06-05 03:34:49'),
(31, 'Fabian', 'user', '$2a$10$kIitJKIhF4tnYUR8DO..6uMtljXpkvU8QwnM4K.FGGhOclLTSlMJ6', '2022-06-05 03:35:03', '2022-06-05 03:35:03'),
(32, 'Fabian', 'user', '$2a$10$ycjhqvB6VRTD55a.MZ0zCerYG09UnD.tTGQNzxEbf48UEv.COxWtK', '2022-06-05 03:35:23', '2022-06-05 03:35:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
