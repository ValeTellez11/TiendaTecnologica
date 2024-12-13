-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2024 a las 01:54:55
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `ID_Categoría` int(11) NOT NULL,
  `Nombre_Categoría` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `ID_Compra` int(11) NOT NULL,
  `ID_Proveedor` int(11) DEFAULT NULL,
  `ID_Usuario` int(11) DEFAULT NULL,
  `Fecha_Compra` date DEFAULT NULL,
  `Total_Compra` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_compra`
--

CREATE TABLE `detalles_compra` (
  `ID_Detalle` int(11) NOT NULL,
  `ID_Compra` int(11) DEFAULT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Precio_Unitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotoproducts`
--

CREATE TABLE `fotoproducts` (
  `id` int(11) NOT NULL,
  `products_id` int(11) DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fotoproducts`
--

INSERT INTO `fotoproducts` (`id`, `products_id`, `foto1`, `foto2`, `foto3`) VALUES
(1, 1, 'fotosProductos/1/1.jpg', 'fotosProductos/1/2.jpg', 'fotosProductos/1/3.jpg'),
(2, 2, 'fotosProductos/2/1.jpg', 'fotosProductos/2/2.png', 'fotosProductos/2/3.png'),
(3, 3, 'fotosProductos/3/1.jpg', 'fotosProductos/3/2.png', 'fotosProductos/3/3.jpeg'),
(4, 4, 'fotosProductos/4/1.jpg', 'fotosProductos/4/2.png', 'fotosProductos/4/3.jpg'),
(5, 5, 'fotosProductos/5/1.jpg', 'fotosProductos/5/2.png', 'fotosProductos/5/3.jpg'),
(6, 6, 'fotosProductos/6/1.jpg', 'fotosProductos/6/2.jpg', 'fotosProductos/6/3.png'),
(7, 7, 'fotosProductos/7/1.jpg', 'fotosProductos/7/2.jpg', 'fotosProductos/7/3.jpg'),
(8, 8, 'fotosProductos/8/1.jpg', 'fotosProductos/8/2.jpg', 'fotosProductos/8/3.jpg'),
(9, 9, 'fotosProductos/9/1.webp', 'fotosProductos/9/2.webp', 'fotosProductos/9/3.webp'),
(10, 10, 'fotosProductos/10/1.webp', 'fotosProductos/10/2.webp', 'fotosProductos/10/3.webp'),
(11, 11, 'fotosProductos/11/1.webp', 'fotosProductos/11/2.webp', 'fotosProductos/11/3.webp'),
(12, 12, 'fotosProductos/12/1.webp', 'fotosProductos/12/2.webp', 'fotosProductos/12/3.webp'),
(13, 13, 'fotosProductos/13/1.webp', 'fotosProductos/13/2.webp', 'fotosProductos/13/3.webp'),
(14, 14, 'fotosProductos/14/1.webp', 'fotosProductos/14/2.webp', 'fotosProductos/14/3.webp'),
(15, 15, 'fotosProductos/15/1.webp', 'fotosProductos/15/2.webp', 'fotosProductos/15/3.webp'),
(16, 16, 'fotosProductos/16/1.webp', 'fotosProductos/16/2.webp', 'fotosProductos/16/3.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `ID_Inventario` int(11) NOT NULL,
  `ID_Producto` int(11) DEFAULT NULL,
  `Cantidad_Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidostemporales`
--

CREATE TABLE `pedidostemporales` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `tokenCliente` varchar(100) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidostemporales`
--

INSERT INTO `pedidostemporales` (`id`, `producto_id`, `cantidad`, `tokenCliente`, `fecha`) VALUES
(17, 2, 1, 'gJfGJm8FrFUNZpHKD3gRbY94x3h2CDYP', '2024-12-10 01:51:30'),
(18, 3, 1, 'gJfGJm8FrFUNZpHKD3gRbY94x3h2CDYP', '2024-12-10 01:55:54'),
(19, 2, 1, '9CHakVNW2fTDMcnp4ZpPcYAc3WBc7TYc', '2024-12-10 02:00:01'),
(20, 14, 1, 'frJTiUjKWjjjRWKHBzr99RueVwtAh0QJ', '2024-12-10 02:10:02'),
(35, 2, 1, 'biYeefq0HPckYnRR6H0FTfGcTUubqk6M', '2024-12-10 14:15:40'),
(36, 1, 1, 'mhPYAurJMbR0RQzfp0Zzm9hPC8TGtXRj', '2024-12-10 14:16:10'),
(37, 1, 1, 'biYeefq0HPckYnRR6H0FTfGcTUubqk6M', '2024-12-11 19:01:44'),
(38, 1, 1, '3JmzciHidK8NcZPiHXy9J6PKqkBbbR6f', '2024-12-11 19:02:02'),
(39, 1, 1, 'mk0tcdGVpMx499aetqzxeW9kZ2HNXKYd', '2024-12-11 19:03:00'),
(40, 1, 1, 'nDAianhVJKu73EjgKvPup9BECdztw4tC', '2024-12-11 19:04:56'),
(41, 2, 1, 'Jk4prTyu8t0mRaR40WhV0T0MH7XCGVhx', '2024-12-11 19:49:05'),
(42, 3, 1, 'tmFefyiCkAnG28Q84bZyUzJHVE87tprK', '2024-12-11 20:20:35'),
(46, 6, 1, 'A6BDnZ9w9DmNFhuFnd74hBJqU8qZ97N3', '2024-12-12 01:51:09'),
(48, 8, 1, 'A6BDnZ9w9DmNFhuFnd74hBJqU8qZ97N3', '2024-12-12 02:57:33'),
(49, 1, 1, 'QymkJiWri2yHc7r0cGwavrQDMguV8Txh', '2024-12-13 00:44:46'),
(50, 4, 2, 'QymkJiWri2yHc7r0cGwavrQDMguV8Txh', '2024-12-13 00:46:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Producto` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripción` text DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Categoría` int(11) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nameProd` varchar(250) DEFAULT NULL,
  `precio` varchar(250) DEFAULT NULL,
  `description_Prod` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nameProd`, `precio`, `description_Prod`) VALUES
(1, 'Portátil Asus Vivobook Go', '1889000', 'ASUS Vivobook Go 15 OLED es liviano, compacto, y diseñado para que seas productivo y te mantengas entretenido donde quiera que vayas. Con su bisagra plana de 180°, el protector físico de la cámara web y un montón de características de diseño bien pensadas, incluida una hermosa pantalla con bordes ultradelgados, ¡Vivobook Go 15 es la laptop que te permite hacer todo! ¡Adquiérelo ya!'),
(2, 'Portatil Asus', '3599000', 'ASUS Vivobook Go 15 OLED es liviano, compacto, y diseñado para que seas productivo y te mantengas entretenido donde quiera que vayas. Con su bisagra plana de 180°, el protector físico de la cámara web y un montón de características de diseño bien pensadas, incluida una hermosa pantalla con bordes ultradelgados, ¡Vivobook Go 15 es la laptop que te permite hacer todo! ¡Adquiérelo ya!'),
(3, 'Portatil Asus', '2599000', 'La ASUS TUF Gaming F15 es un resistente portátil gamer que te entregará todo lo que necesitas para ganar, gracias a su pantalla de alta velocidad, sistema térmico mejorado y batería de alta duración. Su resistencia certificada bajo un estándar de pruebas de grado militar le permite resistir todos los desafíos del día a día e incluso situaciones ambientales extremas como altas y bajas temperaturas, altos niveles de presión y altos niveles de humedad atmosférica. ¡Cómpralo ya!\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 'Monitor LG', '1700000', 'Disfruta de la inmersión perfecta con una pantalla personal en tu propio espacio. Amplía lo pequeño, acerca lo lejano: conecta y navega fácilmente con el Smart Monitor LG 27\" pulgadas que está diseñado tanto para tu oficina en casa como para el entretenimiento. Disfruta de tus contenidos favoritos sin esfuerzo con varias aplicaciones de streaming, y configura un entorno de oficina en casa al instante, con un PC conectado o sin PC. Lo fácil es mejor, lo sencillo aporta más\". Qué esperas para comprar el tuyo? ¡Cómpralo aquí!'),
(5, 'Monitor LG', '759000', 'Despierta tus sentidos con el monitor LG 27MR400. Tendrás colores vibrantes, imágenes nítidas y fluidez en una pantalla de 27\" pulgadas. Realiza multitareas para mayor eficiencia en tu trabajo o estudio y visualiza imágenes con mejor calidad con la tecnología IPS, con el Flicker Safe, su protección visual mejorada y el modo lectura este monitor ayudaran en el cuidado de tus ojos combinando un diseño elegante, bordes delgados y ajustable para mayor comodidad. Transforma tu trabajo y entretenimiento en tu hogar con LG. Qué esperas para comprar el tuyo? ¡Cómpralo aquí!'),
(6, 'Diadema Gamer Logitech', '249000', 'Conoce los Audífonos de Diadema LOGITECH G435 inalámbricos Gaming Azules para PC, Mac, PS4|PS5 y Celulares.| Con micrófono G435 para gaming se conectan a tu PC, tu móvil y otros dispositivos mediante tecnología inalámbrica LIGHTSPEED para gaming y Bluetooth. Ofrecen un sonido nítido y potente, y los micrófonos con formación de haces reducen el ruido de fondo. Además, están hechos con un mínimo de 22% de plástico reciclado posconsumo. Para tus juegos individuales, para el juego con amigos, para música ¡Lleva los tuyos aquí!'),
(7, 'Monitor LG', '1350000', 'Con el Monitor Gamer LG UtraGear 27GS65F podrás aumentar tus posibilidades de ganar y ser un profesional en tus juegos online, PC o Consola. Enciende tu poder gaming y experimenta la increíble velocidad de 1ms GTG y un rendimiento fluido con sus 180 Hz para ver el siguiente cuadro rápidamente y hacer que la imagen aparezca sin errores. Tendrás una inmersión visual realista con colores y contrastes intensos con AMD FreeSync Premium y con ajustes de inclinación tendrás mayor comodidad y concentración, podrás configurarlo con la Interfaz Gaming GUI adaptando tu pantalla a cada estilo del juego. Qué esperas para comprar el tuyo? ¡Cómpralo aquí!'),
(8, 'Monitor LG', '2510000', 'Más espacio para múltiples tareas con el Monitor LG 29\" Pulgadas 29WQ500. Con la resolución 21:9 UltraWide, Full HD (2560X1080) y con un 33% más pantalla en comparación con la resolución 16:9. Puedes ejecutar varias ventanas y ver más imágenes en miniatura a la vez, disfruta de tus clases online viendo materiales más grandes y a más asistentes. Disfruta tomar clases en casa, y visualiza videos en alta calidad, toma apuntes y realiza búsquedas al mismo tiempo gracias a su amplia pantalla. Este monitor es compatible con HDR 10 y soporta niveles altos de color y brillo que superan las capacidades de los monitores comunes. ¿Qué esperas para comprar el tuyo? ¡Cómpralo aquí!'),
(9, 'Teclado Logitech', '239000', 'Para días de trabajo sin tensiones, siente la onda con el teclado ergonómico inalámbrico Wave Keys, el cual está diseñado para que disfrutes de un soporte para las muñecas reposar las manos gracias a el acolchado con espuma viscoelástica, menos presión y una postura de escritura natural durante todo el día. Además, cuenta con una estructura de teclas onduladas para una escritura natural y agradable, aumentando la productividad con la aplicación Logi Options+. Este teclado es multisistema operativo el cual permite conectarte mediante el Bluetooth o con el receptor Bolt incluido.'),
(10, 'Cámara Web Logitech', '834000', 'Mirar con mas claridad en las videollamadas y grabar los mejores videos es ahora posible con la Camara HD PRO C920, la cual ofrece video Full HD (1080p a 30 fps) y sonido estéreo claro con todas las aplicaciones de video más populares.'),
(11, 'Logitech G923', '759000', 'Con un diseño impecable para ofrecer la experiencia de conducción perfecta, El Timon de Logitech G lleva los juegos de carreras más recientes al más alto nivel. Si no has conducido tu supercoche con un volante, jamás disfrutaste de la simulación de carreras.'),
(12, 'Diadema Logitech G Pro X', '799000', 'Ligeros y atractivos, conoce los Audífonos LOGITECH G335 alámbricos Gaming Negros para PC, Xbox One|Series X|S, PS4|PS5, Nintendo Switch y Celulares.| En los G335 se combinan el color y el confort. El diseño de diadema con suspensión con cinta ajustable permite el ajuste idóneo. Con Plug and Play y controles integrados podrás conectarte y meterte de lleno en el juego rápidamente. Elige el color que vaya mejor con tu increíble estilo, ¡lleva los tuyos ahora!'),
(13, 'Mouse Gamer Logitech', '225000', 'Aprovecha al máximo tu tiempo de juego con el Mouse LOGITECH alámbrico gaming G203 Lila.| Disponible en una variedad de vibrantes colores. Con la tecnología LIGHTSYNC, un sensor para gaming y un diseño clásico de 6 botones, animarás tu juego y tu espacio. Elige entre animaciones vibrantes y ajustes según el juego y el soporte, o programa tus propios ajustes con unos 16,8 millones de colores a tu disposición. ¡Vive una mejor experiencia gaming, lleva el tuyo ahora!'),
(14, 'Joystick Extreme 3d', '219000', 'La nueva depiladora Braun Silk-épil 9 Flex 9-020 es la primera depiladora del mundo para mujeres con un cabezal totalmente flexible, para una depilación sin esfuerzo. Disfrute de semanas de piel suave gracias a la tecnología Micro-Grip y una cabeza un 40% más ancha que elimina incluso el vello más corto, de hasta 0,5 mm. Incluye cabezal de rasurado y recorte adicional y una almohadilla de masaje profundo para reducir las impurezas de la piel.\r\n'),
(15, 'Logitech Diadema Gamer', '650000', 'Por fin, unos audífonos que pueden ser tan expresivos como tú. Los audífonos G733 son inalámbricos y se diseñaron pensando en el confort. Están equipados con todo el sonido envolvente, los filtros de voz y la iluminación avanzada que necesitas para lucir, sonar y jugar con más estilo que nunca.'),
(16, 'Monitor Ultrawide LG', '840000', 'Más espacio para múltiples tareas con el Monitor LG 29\" Pulgadas 29WQ500. Con la resolución 21:9 UltraWide, Full HD (2560X1080) y con un 33% más pantalla en comparación con la resolución 16:9. Puedes ejecutar varias ventanas y ver más imágenes en miniatura a la vez, disfruta de tus clases online viendo materiales más grandes y a más asistentes. Disfruta tomar clases en casa, y visualiza videos en alta calidad, toma apuntes y realiza búsquedas al mismo tiempo gracias a su amplia pantalla. Este monitor es compatible con HDR 10 y soporta niveles altos de color y brillo que superan las capacidades de los monitores comunes. ¿Qué esperas para comprar el tuyo? ¡Cómpralo aquí!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Dirección` varchar(200) DEFAULT NULL,
  `Teléfono` varchar(15) DEFAULT NULL,
  `País` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorías`
--
ALTER TABLE `categorías`
  ADD PRIMARY KEY (`ID_Categoría`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`ID_Compra`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD KEY `ID_Compra` (`ID_Compra`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`ID_Inventario`),
  ADD KEY `ID_Producto` (`ID_Producto`);

--
-- Indices de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Producto`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorías`
--
ALTER TABLE `categorías`
  MODIFY `ID_Categoría` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `ID_Compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  MODIFY `ID_Detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `ID_Inventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID_Proveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedores` (`ID_Proveedor`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);

--
-- Filtros para la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD CONSTRAINT `detalles_compra_ibfk_1` FOREIGN KEY (`ID_Compra`) REFERENCES `compras` (`ID_Compra`),
  ADD CONSTRAINT `detalles_compra_ibfk_2` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`ID_Producto`) REFERENCES `productos` (`ID_Producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
