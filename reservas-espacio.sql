-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2023 a las 20:51:15
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas-espacio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `perfil` text NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `perfil`, `nombre`, `usuario`, `password`, `estado`, `fecha`) VALUES
(1, 'Administrador', 'admin', 'Admin', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 1, '2023-11-29 20:49:48'),
(2, 'Administrador', 'Alvaro', 'Alvaro', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 1, '2023-11-29 12:23:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(2, 2, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(3, 3, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(4, 4, '2019-04-29 18:00:00', '2019-04-29 19:00:00'),
(5, 5, '2019-05-29 18:00:00', '2019-05-29 19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/banner11.jpg', '2023-11-27 01:01:02'),
(2, 'vistas/img/banner/banner22.jpg', '2023-11-27 01:01:07'),
(3, 'vistas/img/banner/banner33.jpg', '2023-11-27 01:01:13'),
(4, 'vistas/img/banner/banner44.jpg', '2023-11-27 01:01:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` text NOT NULL,
  `continental_alta` float NOT NULL,
  `continental_baja` float NOT NULL,
  `americano_alta` float NOT NULL,
  `americano_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `img`, `descripcion`, `incluye`, `continental_alta`, `continental_baja`, `americano_alta`, `americano_baja`, `fecha`) VALUES
(1, 'Base-tipo-', '#F2A900', 'Espacios', 'vistas/img/suite/portada.jpg', 'Lorem ipsum dolor sit amet', '[{\"item\":\"Servicio Wifi\",\"icono\":\"fas fa-wifi\"},{\"item\":\"TV de 42 Pulg\",\"icono\":\"fas fa-tv\"}]', 100, 60, 120, 80, '2023-11-29 11:17:22'),
(2, 'Base-tipo2-', '#63666A', 'Unidades', 'vistas/img/especial/portada.jpg', 'Lorem ipsum dolor sit amet', '[\r\n  { \"item\": \"Sillas\", \"icono\": \"fas fa-chair\"},\r\n  { \"item\": \"Televisor\", \"icono\": \"fas fa-tv\"},\r\n  { \"item\": \"Wi-fi\", \"icono\": \"fas fa-wifi\"},\r\n  { \"item\": \"Arsenal\", \"icono\": \"fas fa-coffee\"},\r\n  { \"item\": \"Aire Acondicionado\", \"icono\": \"fas fa-couch\"},\r\n  { \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}\r\n]', 50, 35, 80, 65, '2023-12-01 19:26:50'),
(3, 'Base-tipo3-', '#F2A900', 'Oficinas', 'vistas/img/standar/portada.jpg', 'Lorem ipsum dolor sit amet', '[\r\n  { \"item\": \"Sillas\", \"icono\": \"fas fa-chair\"},\r\n  { \"item\": \"Televisor\", \"icono\": \"fas fa-tv\"},\r\n  { \"item\": \"Wi-fi\", \"icono\": \"fas fa-wifi\"},\r\n  { \"item\": \"Arsenal\", \"icono\": \"fas fa-coffee\"},\r\n  { \"item\": \"Aire Acondicionado\", \"icono\": \"fas fa-couch\"},\r\n  { \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}\r\n]', 80, 100, 120, 150, '2023-11-29 15:12:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_h` int(11) NOT NULL,
  `tipo_h` int(11) NOT NULL,
  `estilo` text NOT NULL,
  `galeria` text NOT NULL,
  `video` text NOT NULL,
  `recorrido_virtual` text NOT NULL,
  `descripcion_h` text NOT NULL,
  `fecha_h` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `estilo`, `galeria`, `video`, `recorrido_virtual`, `descripcion_h`, `fecha_h`) VALUES
(1, 1, 'Espacios', '[\"vistas\\/img\\/suite\\/espacios11.jpg\",\"vistas\\/img\\/suite\\/mando22.jpg\",\"vistas\\/img\\/suite\\/espacios33.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir&nbsp;</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 15:02:45'),
(2, 1, 'Base Mando', '[\"vistas\\/img\\/suite\\/base11.jpg\",\"vistas\\/img\\/suite\\/base22.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 14:58:41'),
(3, 1, 'Hangar', '[\"vistas\\/img\\/suite\\/hangar11.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: $300.000 COP Temporada Alta: $350.000 COP</p><h3>PLAN ESPECIAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: $380.000 COP Temporada Alta: $420.000 COP</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-11-29 14:58:47'),
(4, 2, 'Phone Boots', '[\"vistas\\/img\\/especial\\/phone11.jpg\",\"vistas\\/img\\/especial\\/phone22.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 14:58:52'),
(5, 2, 'Unidades', '[\"vistas\\/img\\/especial\\/unidades11.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 14:58:57'),
(6, 2, 'Operativa', '[\"vistas\\/img\\/especial\\/unidades11.jpg\",\"vistas\\/img\\/especial\\/operativa22.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 15:01:24'),
(7, 3, 'Brigada', '[\"vistas\\/img\\/standar\\/brigada11.jpg\",\"vistas\\/img\\/standar\\/brigada22.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 14:59:07'),
(8, 3, 'Bunker', '[\"vistas\\/img\\/standar\\/bunker11.jpg\",\"vistas\\/img\\/standar\\/bunker22.jpg\"]', 'mx3Ly8JSo1c', '', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p><h3>PLAN SIMPLE</h3><p>(Precio 1 día) No incluye .</p><h3>PLAN ESPECIAL</h3><p>(Precio 1 &nbsp;día) , incluye: aperitivos, comida, a elegir T</p><p>Hora de entrada (Check in) 8:00 pm | Hora de salida (Check out) 7:00 pm</p>', '2023-11-29 14:59:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `tipo`, `cantidad`, `fecha`) VALUES
(1, 'reservas', 0, '2019-09-24 00:55:26'),
(2, 'testimonios', 0, '2023-11-27 00:51:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio_alta` float NOT NULL,
  `precio_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `tipo`, `img`, `descripcion`, `precio_alta`, `precio_baja`, `fecha`) VALUES
(1, 'La Base', 'vistas/img/planes/planbase44.jpg', '<p>Nuestro equipo de recepción está aquí para hacer que tu experiencia sea excepcional</p>', 300, 180, '2023-11-29 12:38:19'),
(2, 'Oficina', 'vistas/img/planes/planoficina33.JPG', '<p>Para conformar un equipo en un ambiente privado.</p>', 400, 280, '2023-11-29 11:03:40'),
(3, 'Reuniones', 'vistas/img/planes/planreuniones22.JPG', '<p>Espacio de máxima seguridad y de mayor confidencialidad.</p>', 500, 400, '2023-11-29 11:03:22'),
(4, 'Salas', 'vistas/img/planes/plansalas11.JPG', '<p>Amplio espacio para concentrar un equipo de personas.</p>', 380, 370, '2023-11-29 11:03:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

CREATE TABLE `recorrido` (
  `id` int(11) NOT NULL,
  `foto_peq` text NOT NULL,
  `foto_grande` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`id`, `foto_peq`, `foto_grande`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/recorrido/lugar03.png', 'vistas/img/recorrido/lugar03b.png', '   ', '     ', '2023-11-29 15:30:42'),
(2, 'vistas/img/recorrido/recepcion11.jpg', 'vistas/img/recorrido/recepcion12.jpg', '  ', '   ', '2023-11-29 15:30:33'),
(3, 'vistas/img/recorrido/lugar02.png', 'vistas/img/recorrido/lugar05a.png', '  ', '  ', '2023-11-29 15:30:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago_reserva` float NOT NULL,
  `numero_transaccion` text NOT NULL,
  `codigo_reserva` text NOT NULL,
  `descripcion_reserva` text NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_habitacion`, `id_usuario`, `pago_reserva`, `numero_transaccion`, `codigo_reserva`, `descripcion_reserva`, `fecha_ingreso`, `fecha_salida`, `fecha_reserva`) VALUES
(8, 1, 8, 90, '19680828', '6NJS06V8L', 'Oficinas - Brigada - 2 personas', '2023-12-21', '2023-12-24', '2023-11-29 20:35:21'),
(9, 2, 8, 70, '19680844', 'M1UHK6R50', 'Oficinas - Bunker - 4 personas', '2019-05-22', '2019-05-24', '2023-11-29 20:35:58'),
(10, 3, 8, 42, '19680849', 'YK51N1HAQ', 'Oficinas - Brigada - 2 personas', '2019-05-30', '2019-05-31', '2023-11-29 20:36:06'),
(11, 1, 7, 80, '19680940', '2S7PLNC32', 'Espacios - Base Mando - 1 persona', '2019-05-20', '2019-05-22', '2023-11-29 20:36:13'),
(12, 2, 7, 50, '19681854', '3UD1XIBEO', 'Unidades - Botas de teléfono - 2 personas', '2019-05-15', '2019-05-17', '2023-11-29 20:36:31'),
(13, 3, 7, 30, '19681866', 'WFZIEN8MO', 'Espacios - Base Mando - 1 persona', '2019-11-18', '2019-11-21', '2023-11-29 20:35:51'),
(14, 1, 3, 20, '19681883', '3U2WO6002', 'Unidades - Operativa - 1 persona', '2019-05-27', '2019-05-30', '2023-11-29 20:36:41'),
(15, 2, 3, 150, '19681896', 'N10L457ZB', 'Oficinas - Brigada - 2 personas', '2019-05-25', '2019-05-27', '2023-11-29 20:36:50'),
(16, 3, 3, 90, '19681906', 'IMSB2OKGV', 'Oficinas - Brigada - 3 personas', '2019-10-15', '2019-10-18', '2023-11-29 20:36:58'),
(17, 1, 4, 50, '19681954', '6VZ4HIZ27', 'Unidades - Phone  Boots - 2 personas', '2023-11-26', '2023-11-28', '2023-11-29 21:10:44'),
(18, 2, 4, 70, '19681999', 'L5BCTUYGM', 'Unidades- Operativa - 2 personas', '2023-12-01', '2023-12-03', '2023-11-29 21:09:59'),
(19, 3, 4, 120, '19682031', 'ACXC0HPO5', 'Espacios - Base Mando - 1 persona', '0000-00-00', '0000-00-00', '2023-11-29 20:26:03'),
(20, 1, 3, 50, '19686161', 'ZLMAOP6C0', 'Espacios - Base Mando - 3 persona', '0000-00-00', '0000-00-00', '2023-11-29 20:37:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas2`
--

CREATE TABLE `reservas2` (
  `id` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas2`
--

INSERT INTO `reservas2` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2019-05-03', '2019-05-05'),
(2, 2, '2019-05-02', '2019-05-05'),
(3, 3, '2019-05-03', '2019-05-05'),
(4, 4, '2019-05-05', '2019-05-07'),
(5, 5, '2019-05-03', '2019-05-05'),
(6, 1, '2019-05-06', '2019-05-07'),
(7, 2, '2019-05-06', '2019-05-08'),
(8, 3, '2019-05-05', '2019-05-05'),
(9, 4, '2019-05-08', '2019-05-10'),
(10, 5, '2019-05-06', '2019-05-07'),
(11, 1, '2019-05-09', '2019-05-12'),
(12, 2, '2019-05-09', '2019-05-13'),
(13, 3, '2019-05-05', '2019-05-10'),
(14, 4, '2019-05-10', '2019-05-11'),
(15, 5, '2019-05-07', '2019-05-09'),
(16, 1, '2019-05-16', '2019-05-17'),
(17, 2, '2019-05-15', '2019-05-16'),
(18, 3, '2019-05-19', '2019-05-21'),
(19, 4, '2019-05-18', '2019-05-19'),
(20, 5, '2019-05-11', '2019-05-15'),
(21, 1, '2019-05-26', '2019-05-28'),
(22, 2, '2019-05-26', '2019-05-28'),
(23, 3, '2019-05-26', '2019-05-28'),
(24, 4, '2019-05-26', '2019-05-28'),
(25, 5, '2019-05-26', '2019-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`id`, `img`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/restaurante/plato01.png', 'Papas con pollo a la cacerola', '2023-11-29 14:43:40'),
(2, 'vistas/img/restaurante/plato02.png', 'Causa rellena de pollo', '2023-11-29 14:44:10'),
(3, 'vistas/img/restaurante/plato03.png', 'Fruta a la macedonia', '2023-11-29 14:44:48'),
(4, 'vistas/img/restaurante/plato04.png', 'Tacos a la barbacoa', '2023-11-29 14:42:28'),
(5, 'vistas/img/restaurante/plato05.png', 'Wantan con tamarindo', '2023-11-29 14:46:21'),
(6, 'vistas/img/restaurante/plato06.png', 'Pollo con una rebanada de pan encima', '2023-11-29 14:40:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id_testimonio` int(11) NOT NULL,
  `id_res` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  `id_hab` int(11) NOT NULL,
  `testimonio` text NOT NULL,
  `aprobado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_testimonio`, `id_res`, `id_us`, `id_hab`, `testimonio`, `aprobado`, `fecha`) VALUES
(1, 20, 3, 1, 'Fue una experiencia maravillosa', 1, '2019-05-15 00:35:52'),
(2, 14, 3, 1, 'Siempre quise una oficina.', 1, '2023-11-29 15:10:16'),
(3, 15, 3, 2, 'La mejor experiencia de mi vida', 1, '2019-05-15 00:36:07'),
(4, 16, 3, 3, 'Me encantó estar en ese espacio.', 0, '2023-11-29 20:48:02'),
(5, 8, 8, 1, 'Super siempre quise estar acá', 0, '2023-11-29 20:48:03'),
(6, 9, 8, 2, 'Estoy muy agradecido con el personal.', 0, '2023-11-29 20:48:03'),
(7, 10, 8, 3, 'La comida maravillosa', 0, '2023-11-29 20:48:04'),
(8, 11, 7, 1, 'Es una experiencia inolvidable', 0, '2023-11-29 20:48:05'),
(9, 12, 7, 2, 'El lugar es de ensueños', 0, '2023-11-29 20:48:06'),
(10, 13, 7, 3, 'Gracias, todo muy bien!', 0, '2023-11-29 20:48:06'),
(11, 17, 4, 1, 'Que belleza de lugar', 1, '2019-09-23 23:28:57'),
(12, 18, 4, 2, 'Volveré con mi familia', 1, '2023-11-27 00:51:26'),
(13, 19, 4, 3, 'Sin lugar a dudas, el mejor espacio.', 1, '2023-11-29 15:11:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `foto` text NOT NULL,
  `modo` text NOT NULL,
  `verificacion` int(11) NOT NULL,
  `email_encriptado` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `nombre`, `password`, `email`, `foto`, `modo`, `verificacion`, `email_encriptado`, `fecha`) VALUES
(4, 'Felipe Trujillo', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'felipe@hotmail.com', '', 'directo', 1, '8fe863573a42ae1ec12c4d3c1d591c6d', '2019-05-14 17:16:14'),
(10, 'Maria del mar', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'maria@gmail.com', '', 'directo', 0, 'c3a724f59d3245b0e166b278f809a9c7', '2019-07-16 10:50:44'),
(11, 'Alvaro', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'alvaro.mulato0@gmail.com', '', 'directo', 0, '394eaa6120f8b244c92901a8041c3ef0', '2023-11-27 00:48:40'),
(12, 'Alvaro', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'alvaro.mulat0@gmail.com', '', 'directo', 0, '80cb3c0cc886427d0d43bf20e1ffbdc9', '2023-11-27 00:48:58'),
(13, 'Alvaro', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'alvaro.mulato@gmail.com', '', 'directo', 0, 'e3f4d041baba12323a22a85cd3ca66dd', '2023-11-29 17:29:23'),
(14, 'Miguel', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'jorge.mitma@gmail.com', '', 'directo', 0, '64a68a47dbca036b57d855aeb837fbab', '2023-11-29 20:39:08'),
(15, 'Mitma', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'mitma@gmail.com', '', 'directo', 0, '04f990e4de24ac4b9a5153fc7f535434', '2023-11-30 13:41:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_h`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `reservas2`
--
ALTER TABLE `reservas2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id_testimonio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reservas2`
--
ALTER TABLE `reservas2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id_testimonio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
