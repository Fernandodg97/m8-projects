-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-10-2024 a las 14:57:56
-- Versión del servidor: 8.0.39-0ubuntu0.24.04.2
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Nav`
--

CREATE TABLE `Nav` (
  `id` int NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Nav`
--

INSERT INTO `Nav` (`id`, `label`, `link`) VALUES
(1, 'Inicio', '/index.php'),
(2, 'Proyectos', '/projects.php'),
(3, 'Sobre mí', '/about.php'),
(4, 'Servicios', '/services.php'),
(5, 'Contacto', '/contact.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Project`
--

CREATE TABLE `Project` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Project`
--

INSERT INTO `Project` (`id`, `name`, `description`, `image_path`) VALUES
(1, 'PuigLab', 'Implementación y diseño de una página web', '../assets/img/PuigLab.png'),
(2, 'FGC', 'Implementación y diseño de una página web', '../assets/img/FGC.png'),
(3, 'E-commerce Website', 'Desarrollo de una plataforma de comercio electrónico con integración de pasarelas de pago.', '../assets/img/E-commerceWebsite.png'),
(4, 'Personal Blog', 'Creación de un blog personal con funcionalidad para publicar artículos y comentarios de los usuarios.', '../assets/img/PersonalBlog.png'),
(5, 'Portfolio Site', 'Desarrollo de un sitio web personal para mostrar trabajos y proyectos realizados.', '../assets/img/PortfolioSite.png'),
(6, 'Task Management App', 'Implementación de una aplicación de gestión de tareas con funcionalidades de colaboración y notificaciones.', '../assets/img/TaskManagementApp.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProjectTechnology`
--

CREATE TABLE `ProjectTechnology` (
  `projectId` int NOT NULL,
  `technologyId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ProjectTechnology`
--

INSERT INTO `ProjectTechnology` (`projectId`, `technologyId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(1, 6),
(5, 6),
(2, 7),
(1, 8),
(3, 8),
(6, 8),
(4, 9),
(2, 10),
(4, 11),
(5, 11),
(3, 12),
(6, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Technology`
--

CREATE TABLE `Technology` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Technology`
--

INSERT INTO `Technology` (`id`, `name`, `description`) VALUES
(1, 'HTML', 'HTML es un lenguaje de marcado que posibilita definir la estructura de nuestro documento mediante etiquetas. Este lenguaje ofrece una gran adaptabilidad, una ...'),
(2, 'CSS', 'CSS (siglas en inglés de Cascading Style Sheets; en español: «hojas de estilo en cascada») es un lenguaje informático especializado en definir y cohesionar ...'),
(3, 'JavaScript', 'JavaScript es un lenguaje de programación de alto nivel que permite implementar funcionalidades complejas en páginas web, como animaciones y actualizaciones de contenido.'),
(4, 'PHP', 'PHP es un lenguaje de programación de código del lado del servidor, especialmente adecuado para el desarrollo web. Permite la creación de contenido dinámico y la interacción con bases de datos.'),
(5, 'MySQL', 'MySQL es un sistema de gestión de bases de datos relacional, muy utilizado para almacenar y recuperar datos en aplicaciones web.'),
(6, 'Bootstrap', 'Bootstrap es un framework front-end que facilita el diseño de páginas web responsivas y móviles utilizando HTML, CSS y JavaScript.'),
(7, 'React', 'React es una biblioteca de JavaScript para construir interfaces de usuario, especialmente para aplicaciones de una sola página.'),
(8, 'Node.js', 'Node.js es un entorno de ejecución de JavaScript que permite ejecutar código JavaScript en el servidor, facilitando la creación de aplicaciones web escalables.'),
(9, 'jQuery', 'jQuery es una biblioteca de JavaScript que simplifica el manejo de eventos, la manipulación del DOM y las solicitudes AJAX.'),
(10, 'SASS', 'SASS es un preprocesador de CSS que permite utilizar características como variables, anidamiento y mixins, facilitando la escritura de estilos CSS más mantenibles.'),
(11, 'Git', 'Git es un sistema de control de versiones que permite llevar un seguimiento de los cambios en el código fuente a lo largo del tiempo.'),
(12, 'API REST', 'Las API REST son interfaces que permiten la comunicación entre diferentes sistemas a través de HTTP, facilitando la interacción con servicios externos y la integración de datos.'),
(13, 'WordPress', 'WordPress es un sistema de gestión de contenido (CMS) que permite crear y gestionar sitios web fácilmente, ideal para blogs y páginas de negocio.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `date_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `name`, `last_name`, `city`, `date_birth`) VALUES
(1, 'Fernando', 'Diaz Gutierrez', 'Mataró', '1997-03-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Nav`
--
ALTER TABLE `Nav`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ProjectTechnology`
--
ALTER TABLE `ProjectTechnology`
  ADD PRIMARY KEY (`projectId`,`technologyId`),
  ADD KEY `technologyId_FK` (`technologyId`);

--
-- Indices de la tabla `Technology`
--
ALTER TABLE `Technology`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Nav`
--
ALTER TABLE `Nav`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Project`
--
ALTER TABLE `Project`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Technology`
--
ALTER TABLE `Technology`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ProjectTechnology`
--
ALTER TABLE `ProjectTechnology`
  ADD CONSTRAINT `projectId_FK` FOREIGN KEY (`projectId`) REFERENCES `Project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technologyId_FK` FOREIGN KEY (`technologyId`) REFERENCES `Technology` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
