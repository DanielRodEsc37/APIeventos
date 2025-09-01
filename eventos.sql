-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2025 a las 23:39:10
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
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id` int(11) NOT NULL,
  `describcion` varchar(100) NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `dirreccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `salario` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id`, `nombre`, `apellidos`, `dirreccion`, `telefono`, `correo`, `salario`) VALUES
(1, 'Callum', 'Richard', 'Ap #540-3758 Litora Av.', '+573433298362', 'fusce.aliquet@google.net', 549),
(2, 'Calvin', 'Turner', 'Ap #955-2278 Quisque Rd.', '+573552868532', 'arcu.vel@google.com', 130),
(3, 'Madeline', 'Mccoy', '4851 Dolor, St.', '+573488866248', 'ac.eleifend.vitae@google.com', 639),
(4, 'Chadwick', 'Warner', '276-8512 Libero. Road', '+573464227736', 'tincidunt@icloud.net', 447),
(5, 'Andrew', 'Buckley', 'Ap #483-3517 Aliquet, Road', '+573854918497', 'dictum.mi.ac@outlook.edu', 415),
(6, 'Fritz', 'Pickett', '339-7276 Egestas. St.', '+573291267513', 'tortor@protonmail.co', 937),
(7, 'Althea', 'Massey', 'P.O. Box 761, 4819 Arcu. St.', '+573289522714', 'erat.volutpat.nulla@protonmail.co', 197),
(8, 'Ava', 'Copeland', 'P.O. Box 905, 7588 Ullamcorper St.', '+573451545467', 'nibh@protonmail.com', 205),
(9, 'Adam', 'Adams', '1057 Dolor, St.', '+573539685968', 'ipsum.cursus@outlook.net', 889),
(10, 'Herman', 'Morris', '3021 Pellentesque Road', '+573712378325', 'turpis.non@hotmail.net', 812);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'congreso'),
(2, 'Deportivos'),
(3, 'Conciertos'),
(4, 'Social');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `direccion`, `telefono`, `correo`) VALUES
(18, 'Lavinia', 'Dunlap', '229-607 Dui St.', '+573632224971', 'a@outlook.com'),
(22, 'Imogene', 'Odom', '2899 Eget Av.', '+573142569762', 'ut.pellentesque.eget@google.co'),
(23, 'Brynn', 'Yates', 'Ap #474-113 Aliquam Street', '+573339383881', 'enim.non@google.net'),
(24, 'Jelani', 'Jordan', 'Ap #764-2308 Ante. Rd.', '+573843585364', 'quis@hotmail.edu'),
(25, 'Harlan', 'Macdonald', 'P.O. Box 463, 4035 Nam Avenue', '+573615872876', 'risus.nulla@outlook.net'),
(26, 'Wyatt', 'Neal', 'Ap #299-632 Mauris St.', '+573295272362', 'elit.pellentesque.a@google.com'),
(27, 'Gretchen', 'Flores', '448-5120 Dui. St.', '+573442474949', 'et@icloud.com'),
(28, 'Cole', 'Cook', 'Ap #795-1144 Sed Rd.', '+573881673698', 'lorem@protonmail.edu'),
(29, 'Darryl', 'Spencer', 'P.O. Box 287, 8216 Arcu. Street', '+573883386538', 'morbi.metus@icloud.edu'),
(30, 'Jaime', 'Calderon', '938-5676 Mauris. Avenue', '+573726468279', 'torquent@protonmail.edu'),
(31, 'Jolie', 'Hayden', '490-3794 Dolor St.', '+573157533463', 'arcu@google.com'),
(32, 'Nathaniel', 'Morse', 'Ap #117-6281 Molestie St.', '+573973483863', 'duis.risus.odio@icloud.com'),
(33, 'Otto', 'O\'connor', 'P.O. Box 591, 1097 Ultrices Avenue', '+573458351754', 'vivamus.rhoncus@hotmail.edu'),
(34, 'Amir', 'Hogan', '5678 Duis St.', '+573321354937', 'sem.ut@icloud.co'),
(35, 'Bruno', 'Trevino', 'Ap #571-6895 Erat Street', '+573243686654', 'pellentesque.a@hotmail.edu'),
(36, 'Irene', 'Wong', 'P.O. Box 381, 9868 A St.', '+573182352581', 'sed.turpis@outlook.com'),
(37, 'Evelyn', 'O\'donnell', 'Ap #508-3246 Phasellus Street', '+573887775877', 'eu.lacus@outlook.co'),
(38, 'Timothy', 'Alexander', 'Ap #794-6343 Quisque Street', '+573533686573', 'pellentesque@hotmail.edu'),
(39, 'Sylvia', 'Perkins', '531-1560 Enim. St.', '+573613852342', 'a.dui@google.edu'),
(40, 'Raymond', 'Rodriquez', 'P.O. Box 217, 4670 Interdum. St.', '+573988727382', 'erat@hotmail.com'),
(41, 'Hyacinth', 'Hester', 'Ap #160-9637 Cras St.', '+573299763873', 'diam.at@google.net'),
(42, 'Kennedy', 'Bray', 'Ap #522-7607 Ac Avenue', '+573889833233', 'at@icloud.co'),
(43, 'Tamara', 'Daugherty', 'P.O. Box 282, 3783 Aliquet Rd.', '+573449586746', 'cras.eget.nisi@google.edu'),
(44, 'Caryn', 'Walls', 'P.O. Box 799, 1072 Mus. St.', '+573668269487', 'fringilla.porttitor@hotmail.co'),
(45, 'Giselle', 'Holden', '994-3066 Mi Rd.', '+573715956352', 'risus.quis@icloud.edu'),
(46, 'Mason', 'Marsh', 'Ap #876-5381 In Av.', '+573761212789', 'dictum.eu@protonmail.co'),
(47, 'Wing', 'Cabrera', 'Ap #978-2050 Mi St.', '+573715181298', 'purus@icloud.co'),
(48, 'Marny', 'Foley', 'Ap #639-7584 Donec St.', '+573165752687', 'feugiat.non@outlook.edu'),
(49, 'Wynter', 'Bush', '6712 Dignissim Road', '+573582843227', 'penatibus.et@icloud.net'),
(50, 'Ryan', 'Sims', '101-4340 Lectus Avenue', '+573442653896', 'volutpat.ornare.facilisis@google.edu'),
(51, 'Desiree', 'Greene', '7650 Sapien. Ave', '+573363598779', 'magnis.dis.parturient@icloud.co'),
(52, 'Kim', 'Wheeler', 'P.O. Box 101, 4078 A, Av.', '+573264225174', 'donec.porttitor.tellus@google.com'),
(53, 'Wyoming', 'Terry', '8026 Donec Av.', '+573812316469', 'iaculis.nec.eleifend@google.com'),
(54, 'Kylan', 'Good', '733-3913 Enim. St.', '+573748342553', 'amet.nulla.donec@icloud.com'),
(55, 'Ronan', 'Mcknight', '7785 Suspendisse St.', '+573454757589', 'mauris.blandit.mattis@icloud.com'),
(56, 'Valentine', 'Brooks', 'P.O. Box 558, 7399 Amet Ave', '+573257965738', 'ipsum.dolor@icloud.edu'),
(57, 'Kirsten', 'Heath', '624-1346 Eleifend. St.', '+573477975378', 'a@google.edu'),
(58, 'Yasir', 'Rhodes', 'Ap #454-1574 Felis Rd.', '+573522363833', 'risus.donec.egestas@protonmail.edu'),
(59, 'Kasper', 'Ball', 'P.O. Box 346, 4891 Faucibus Rd.', '+573637681732', 'ipsum.primis.in@protonmail.edu'),
(60, 'Scarlet', 'Maxwell', '365-146 Est, Road', '+573546359953', 'magna.a@icloud.net'),
(61, 'Astra', 'Black', '882-4847 Tempor Ave', '+573636631241', 'vivamus.euismod@icloud.net'),
(62, 'Delilah', 'Bailey', 'P.O. Box 686, 4182 Enim Av.', '+573256977823', 'nulla.semper@outlook.edu'),
(63, 'Cameron', 'Bush', '355-4016 Lorem Av.', '+573438878748', 'non@google.edu'),
(64, 'Emery', 'Flowers', '336-2251 Praesent St.', '+573286565975', 'pellentesque@icloud.com'),
(65, 'Miriam', 'Wagner', '701-3096 Nascetur Avenue', '+573451367777', 'sit.amet@hotmail.net'),
(66, 'Mason', 'Leon', 'Ap #148-821 Convallis, St.', '+573875274165', 'vivamus@outlook.co'),
(67, 'Elijah', 'Landry', '475-5783 Arcu. Rd.', '+573243195986', 'lorem.fringilla@outlook.net'),
(68, 'Emily', 'Solomon', '781-109 Id Street', '+573662154218', 'primis.in@hotmail.edu'),
(69, 'Salvador', 'Hess', '975-8682 Luctus Road', '+573244456788', 'magna.cras@outlook.co'),
(70, 'Joseph', 'Hubbard', 'P.O. Box 685, 4376 Et Av.', '+573875932625', 'maecenas.mi@outlook.com'),
(71, 'Alexander', 'Erickson', 'P.O. Box 548, 3769 Odio Rd.', '+573543284492', 'mauris.ipsum@google.net'),
(72, 'Bradley', 'Beach', '473-9593 Sit Ave', '+573323263573', 'morbi.quis@icloud.co'),
(73, 'Serena', 'Rodriquez', 'Ap #683-6330 Suspendisse Rd.', '+573866231827', 'consectetuer@protonmail.com'),
(74, 'Chadwick', 'Randall', '3310 Enim, Avenue', '+573677725959', 'nibh.quisque.nonummy@outlook.net'),
(75, 'Dieter', 'Golden', 'P.O. Box 512, 8541 Nulla Road', '+573547487438', 'dolor@protonmail.edu'),
(76, 'Nash', 'Bell', '152-9441 Eget Avenue', '+573679568424', 'semper.nam@protonmail.edu'),
(77, 'Andrew', 'Weeks', '3954 Lectus Street', '+573737967684', 'molestie.sodales.mauris@outlook.net'),
(78, 'Hoyt', 'Patel', 'P.O. Box 670, 7940 Eu Rd.', '+573258576427', 'aliquam@outlook.com'),
(79, 'Cathleen', 'Baxter', '362-9080 Suspendisse Road', '+573791735178', 'non.lacinia@outlook.edu'),
(80, 'Ahmed', 'Clark', 'Ap #143-7093 Nunc Street', '+573433413897', 'augue.sed.molestie@icloud.co'),
(81, 'Kenneth', 'Lopez', '311-3362 Rhoncus. Street', '+573532388976', 'tristique.aliquet@google.edu'),
(82, 'Andrew', 'Bowen', 'P.O. Box 372, 166 Nec Street', '+573268373856', 'lobortis.class.aptent@hotmail.net'),
(83, 'Sydnee', 'Graham', '863-6018 Dolor, Rd.', '+573252367518', 'odio.sagittis.semper@icloud.co'),
(84, 'Nash', 'Kidd', 'Ap #125-5690 Enim. Road', '+573911326834', 'lorem@google.com'),
(85, 'Fritz', 'Hunter', 'P.O. Box 199, 1533 In St.', '+573476464857', 'vitae.posuere@google.com'),
(86, 'Anne', 'Ingram', '3038 Lorem Avenue', '+573515925139', 'lectus.pede@outlook.com'),
(87, 'Levi', 'Burris', '751-162 Dapibus Street', '+573684341687', 'lectus.pede.ultrices@hotmail.com'),
(88, 'Barry', 'Berg', '616-9714 Nisl St.', '+573221462527', 'sed.pharetra@outlook.net'),
(89, 'Rose', 'Case', '9565 Ipsum Road', '+573552281274', 'a@outlook.com'),
(90, 'Faith', 'Swanson', '847-2329 Velit Street', '+573523541165', 'ac@outlook.net'),
(91, 'Leila', 'Howe', 'Ap #184-3622 Lobortis St.', '+573674865327', 'eu.enim.etiam@protonmail.edu'),
(92, 'Patience', 'Marks', 'P.O. Box 857, 2607 Donec Rd.', '+573622947116', 'nunc.quis@hotmail.net'),
(93, 'Basil', 'Hill', '3231 Amet Rd.', '+573945382617', 'posuere.cubilia@hotmail.co'),
(94, 'Joshua', 'Rush', 'Ap #172-3377 Arcu. Rd.', '+573763726347', 'eu.placerat@google.co'),
(95, 'John', 'Hayden', '415-8496 Neque St.', '+573923279515', 'sapien.aenean.massa@protonmail.net'),
(96, 'Channing', 'Chavez', 'Ap #295-163 At, Avenue', '+573531577421', 'at@hotmail.edu'),
(97, 'Ulysses', 'Pearson', '392-2808 Sed St.', '+573438524747', 'duis.risus@protonmail.co'),
(98, 'Leroy', 'Alford', '141 Molestie St.', '+573855621273', 'pharetra.nam.ac@icloud.edu'),
(99, 'Drake', 'Garrett', 'P.O. Box 618, 1111 Tristique Av.', '+573655221653', 'neque.sed@hotmail.net'),
(101, 'Mannix', 'Ramirez', '991-8480 Varius St.', '+573876798458', 'a.felis.ullamcorper@outlook.edu'),
(102, 'Preston', 'Guy', 'Ap #216-9855 Sem Road', '+573438953625', 'fringilla.euismod.enim@protonmail.edu'),
(103, 'Hayley', 'Hartman', '524-7175 Donec Road', '+573359756853', 'at@protonmail.edu'),
(104, 'Amaya', 'Mann', '1947 Lectus St.', '+573871775835', 'eget.volutpat.ornare@google.com'),
(105, 'Ralph', 'Burris', 'P.O. Box 594, 1797 Penatibus Avenue', '+573135195575', 'elit.sed.consequat@icloud.net'),
(106, 'Blossom', 'Ashley', 'Ap #460-1073 Libero. St.', '+573982555653', 'lorem.ac@google.co'),
(107, 'Norman', 'Olsen', 'Ap #644-1402 Egestas, Ave', '+573559942497', 'et.commodo.at@protonmail.co'),
(108, 'Jacob', 'Bradshaw', 'Ap #217-2347 Amet St.', '+573525758821', 'at.sem@protonmail.edu'),
(109, 'Mary', 'Conrad', 'Ap #286-8318 Curabitur St.', '+573696638286', 'ipsum.primis.in@google.edu'),
(110, 'Leonard', 'Lowery', '614-177 Lectus Av.', '+573344364291', 'pharetra@icloud.com'),
(111, 'Daniel', 'Rollins', 'Ap #473-3845 Eu, Ave', '+573774697492', 'id@icloud.net'),
(112, 'Dustin', 'Sears', 'P.O. Box 777, 5817 Dapibus Rd.', '+573568662798', 'faucibus@hotmail.net'),
(113, 'Raymond', 'Walter', 'Ap #933-1491 Arcu. Av.', '+573883646965', 'quisque.porttitor.eros@protonmail.edu'),
(114, 'Perry', 'Terrell', 'P.O. Box 425, 5376 Elit, St.', '+573762781132', 'nunc.nulla@outlook.co'),
(115, 'Justin', 'Moon', 'Ap #663-2179 Magna. Ave', '+573363579537', 'fames@protonmail.edu'),
(116, 'Bradley', 'Rodriquez', 'Ap #317-1336 Nullam Street', '+573539535787', 'sit.amet.ornare@google.co'),
(117, 'Kasper', 'Barlow', 'P.O. Box 264, 2874 Convallis Rd.', '+573168937388', 'lorem@icloud.edu'),
(118, 'Hillary', 'Henson', 'Ap #675-2907 Eleifend Avenue', '+573143114786', 'quam@protonmail.com'),
(121, 'Carlos', 'Ramírez', 'Calle 456', '3004567890', 'carlos@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fechadeinicio` datetime NOT NULL,
  `fechafinal` datetime NOT NULL,
  `lugar` varchar(45) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `valor` double NOT NULL,
  `categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodosdepagos`
--

CREATE TABLE `metodosdepagos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metodosdepagos`
--

INSERT INTO `metodosdepagos` (`id`, `nombre`) VALUES
(1, 'efectivo'),
(2, 'tarjeta debito Visa'),
(3, 'Tarjeta Credito'),
(4, 'Transferencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `valor` double NOT NULL,
  `observacion` varchar(100) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `metodosdepagos_id` int(11) NOT NULL,
  `eventos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programaciones`
--

CREATE TABLE `programaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `duracion` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `valor` double NOT NULL,
  `eventos_id` int(11) NOT NULL,
  `autores_id` int(11) NOT NULL,
  `actividades_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos_categorias_idx` (`categorias_id`);

--
-- Indices de la tabla `metodosdepagos`
--
ALTER TABLE `metodosdepagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pagos_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_pagos_metodosdepagos1_idx` (`metodosdepagos_id`),
  ADD KEY `fk_pagos_eventos1_idx` (`eventos_id`);

--
-- Indices de la tabla `programaciones`
--
ALTER TABLE `programaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_programaciones_eventos1_idx` (`eventos_id`),
  ADD KEY `fk_programaciones_autores1_idx` (`autores_id`),
  ADD KEY `fk_programaciones_actividades1_idx` (`actividades_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metodosdepagos`
--
ALTER TABLE `metodosdepagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programaciones`
--
ALTER TABLE `programaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_categorias` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `fk_pagos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagos_eventos1` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagos_metodosdepagos1` FOREIGN KEY (`metodosdepagos_id`) REFERENCES `metodosdepagos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `programaciones`
--
ALTER TABLE `programaciones`
  ADD CONSTRAINT `fk_programaciones_actividades1` FOREIGN KEY (`actividades_id`) REFERENCES `actividades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programaciones_autores1` FOREIGN KEY (`autores_id`) REFERENCES `autores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programaciones_eventos1` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
