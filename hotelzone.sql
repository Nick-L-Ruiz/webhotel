-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2020 a las 02:05:15
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotelzone`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `ubicacion` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `correo` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `ubicacion`, `telefono`, `correo`) VALUES
(1, 'tuxtla, BL Hidalgo', '9614800126', 'nicklom23@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `subtitulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `titulo`, `subtitulo`, `descripcion`, `orden`, `imagen`) VALUES
(2, 'Restaurant', 'restaurante', 'Espacio ampliamente cómodo, para que puedas disfrutar de cada uno de nuestros platillos', '1', 'Vistas/img/galeria/Gal538.jpeg'),
(3, 'Buffete', 'Una gran variedad de platillos', '                \r\nDisfruta del manjar que ofrecemos en nuestro restaurante y disfruta del buffete que tenemos para ti', '2', 'Vistas/img/galeria/Gal982.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generales`
--

CREATE TABLE `generales` (
  `id` int(11) NOT NULL,
  `favicon` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `logotipo` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `generales`
--

INSERT INTO `generales` (`id`, `favicon`, `titular`, `logotipo`) VALUES
(1, 'Vistas/img/Generales/787.png', 'Hotel Site', 'Vistas/img/Generales/L809.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hdoble`
--

CREATE TABLE `hdoble` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `estrellas` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hdoble`
--

INSERT INTO `hdoble` (`id`, `imagen`, `estrellas`, `precio`) VALUES
(1, 'Vistas/img/hd/HD531.jpg', '3', '270');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hsimple`
--

CREATE TABLE `hsimple` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `estrellas` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hsimple`
--

INSERT INTO `hsimple` (`id`, `imagen`, `estrellas`, `precio`) VALUES
(1, 'Vistas/img/hs/HS269.jpg', '4', '180');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hsuite`
--

CREATE TABLE `hsuite` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `estrellas` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hsuite`
--

INSERT INTO `hsuite` (`id`, `imagen`, `estrellas`, `precio`) VALUES
(1, 'Vistas/img/hst/Hst971.jpg', '5', '850');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `htriple`
--

CREATE TABLE `htriple` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `estrellas` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `htriple`
--

INSERT INTO `htriple` (`id`, `imagen`, `estrellas`, `precio`) VALUES
(1, 'Vistas/img/ht/Ht276.jpg', '4', '350');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `asunto` text COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `email`, `telefono`, `asunto`, `mensaje`, `fecha`) VALUES
(2, 'Valeria Carolina', 'Valeria@gmail.com', '9610126113', 'Prueba2', 'Mensaje de prueba 2', '2020-10-22 03:50:23'),
(3, 'Nick Alan', 'nicklom23@gmail.com', '9614800126', 'Prueba 3', 'Este mensaje es la prueba numero 3 en el cual es correo es valido, para verificar el funcionamiento de respuesta del mensaje desde el backend', '2020-10-22 04:00:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nosotros`
--

CREATE TABLE `nosotros` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `introduccion` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nosotros`
--

INSERT INTO `nosotros` (`id`, `titulo`, `introduccion`, `descripcion`, `imagen`) VALUES
(1, 'Nosotros', 'Bienvenido a nuestro Hotel, Experiencia y Comodidad en cada una de nuestras habitaciones', 'Nuestro Hotel cuenta con habitaciones cómodas, ofrecer la mejor experiencia en tu estadía es en lo que nos enfocamos. y la experiencia no esta completa sin disfrutar de nuestros maravillosos platillos en nuestro restaurante', 'Vistas/img/nosotros/N712.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(11) NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `icono`, `url`) VALUES
(1, 'facebook', 'www.facebook.com'),
(2, 'instagram', 'www.instagram.com'),
(3, 'twitter', 'www.twitter.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `icono`, `descripcion`) VALUES
(1, 'Servicio a la Habitacion', 'concierge-bell', 'A una Llamada desde tu habitación y podrás recibir nuestro servicio de lavandería, limpieza a la habitación o restaurante. sin dejar la comodidad de tu cama'),
(2, 'Restaurante', 'utensils', 'Disfruta de la extensa cartilla de alimentos que tenemos para tener una mayor experiencia durante tu estadia'),
(3, 'Agua Caliente', 'shower', 'Todas nuestras habitaciones cuentan con el servicio de agua caliente.'),
(4, 'Piscina ', 'swimmer', 'Podrás disfrutar de la piscina, a toda hora. contamos con la higiene necesaria para el uso adecuado de nuestra piscina'),
(5, 'Aire acondicinado', 'snowflake', 'En cada una de nuestras habitaciones podrás disfrutar de el clima de aire acondicionado que tenemos, para que pases noches sin calor'),
(6, 'Servicio de equipaje', 'luggage-cart', 'Contamos con personal que llevara todo tu equipaje hasta tu habitación, desde que te registras disfruta de cada uno de nuestros beneficios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `titular`, `descripcion`, `orden`, `imagen`) VALUES
(1, 'Bienvenido ', 'Un Sitio Web Para realzar tu negocio', '1', 'Vistas/img/slide/S723.jpg'),
(5, 'Este Podria Ser tu Siguiente sitio web', '                \r\nSeguimos trabajando para lograr el impacto digital que tu marca necesita', '2', 'Vistas/img/slide/S36.jpg'),
(6, 'Tu propio sitio web', 'Que esperas, un sitio web totalmente administrable\r\n              ', '3', 'Vistas/img/slide/S502.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `suscriptores`
--

INSERT INTO `suscriptores` (`id`, `email`) VALUES
(2, 'nicklom23@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `clave` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `rol` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `foto`, `rol`) VALUES
(1, 'adminNick', 'admin1234', 'Vistas/img/usuarios/U635.png', 'Administrador'),
(7, 'Ana', 'ana123', 'Vistas/img/usuarios/U692.jpg', 'Marketing');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generales`
--
ALTER TABLE `generales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hdoble`
--
ALTER TABLE `hdoble`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hsimple`
--
ALTER TABLE `hsimple`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hsuite`
--
ALTER TABLE `hsuite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `htriple`
--
ALTER TABLE `htriple`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nosotros`
--
ALTER TABLE `nosotros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `generales`
--
ALTER TABLE `generales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hdoble`
--
ALTER TABLE `hdoble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hsimple`
--
ALTER TABLE `hsimple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `hsuite`
--
ALTER TABLE `hsuite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `htriple`
--
ALTER TABLE `htriple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `nosotros`
--
ALTER TABLE `nosotros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
