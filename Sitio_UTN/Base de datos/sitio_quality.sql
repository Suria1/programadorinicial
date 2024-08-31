-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-08-2024 a las 21:41:46
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitio_quality`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio1`
--

DROP TABLE IF EXISTS `ejercicio1`;
CREATE TABLE IF NOT EXISTS `ejercicio1` (
  `id_emp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `trabajo` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `edad` int NOT NULL,
  `salario` int NOT NULL,
  `mail` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejercicio1`
--

INSERT INTO `ejercicio1` (`id_emp`, `nombre`, `apellido`, `trabajo`, `edad`, `salario`, `mail`) VALUES
(1, 'Juan', 'Hagan', 'Programador Senior', 32, 120000, 'juan_hagan@bignet.com'),
(2, 'Gonzalo', 'Pillai', 'Programador Senior', 32, 110000, 'g_pillai@bignet.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

DROP TABLE IF EXISTS `empleados`;
CREATE TABLE IF NOT EXISTS `empleados` (
  `id_emp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `trabajo` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `edad` int NOT NULL,
  `salario` int NOT NULL,
  `mail` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_emp`, `nombre`, `apellido`, `trabajo`, `edad`, `salario`, `mail`) VALUES
(1, 'Juan', 'Hagan', 'Programador Senior', 32, 120000, 'juan_hagan@bignet.com'),
(2, 'Gonzalo', 'Pillai', 'Programador Senior', 32, 110000, 'g_pillai@bignet.com'),
(3, 'Ana', 'Dharma', 'Desarrollador Web', 27, 90000, 'ana@bignet.com'),
(4, 'Maria', 'Anchor', 'Desarrollador Web', 26, 85000, 'mary@bignet.com'),
(5, 'Alfredo', 'Fernandez', 'Programador', 31, 75000, 'af@bignet.com'),
(6, 'Juan', 'Aguero', 'Programador', 34, 80000, 'juan@bignet.com'),
(7, 'Eduardo', 'Sacan', 'Programador', 25, 75000, 'eddie@bignet.com'),
(8, 'Alejandro', 'Nanda', 'Programador', 32, 70000, 'alenanda@bignet.com'),
(9, 'Hernan', 'Rosso', 'Especialista Multimedia', 33, 90000, 'hernan@bignet.com'),
(10, 'Paublo', 'Simon', 'Especialista Multimedia', 43, 85000, 'ps@bignet.com'),
(11, 'Arturo', 'Hernandez', 'Especialista Multimedia', 32, 75000, 'arturo@bignet.com'),
(12, 'Jimena', 'Cazado', 'Dise ador Web Senior', 32, 110000, 'jimena@bignet.com'),
(13, 'Roberto', 'Luis', 'Administrador de Sistemas', 35, 100000, 'roberto@bignet.com'),
(14, 'Daniel', 'Gutierrez', 'Administrador de Sistemas', 34, 900000, 'daniel@bignet.com'),
(15, 'Miguel', 'Harper', 'Ejecutivo de Ventas Senior', 36, 120000, 'miguel@bignet.com'),
(16, 'Monica', 'Sanchez', 'Ejecutivo de Ventas', 30, 90000, 'monica@bignet.com'),
(17, 'Alicia', 'Simlai', 'Ejecutivo de Ventas', 27, 70000, 'alicia@bignet.com'),
(18, 'Jose', 'Iriarte', 'Ejecutivo de Ventas', 27, 72000, 'jose@bignet.com'),
(19, 'Sabrina', 'Allende', 'Gerente de Soporte Tecnico', 32, 200000, 'sabrina@bignet.com'),
(20, 'Pedro', 'Campion', 'Gerente de Finanzas', 36, 220000, 'pedro@bignet.com'),
(21, 'Mariano', 'Dharma', 'Presidente', 28, 300000, 'mariano@bignet.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `texto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `texto`) VALUES
(1, 'No, la IA no te va a quitar tu trabajo, dice Juan Santiago (siempre que sepas adaptarte)', 'El CEO de Santex escribió una interesante columna de opinión que aquí reproducimos y que aclara algunos puntos sobre la IA fundamentalmente en lo relacionado con el mercado laboral.', 'Una columna de opinión publicada en The Wall Street Journal desperó nuevamente la polémica en relación a la inteligencia artificial (IA) y su impacto sobre los empleos “de cuello blanco” (profesionales de nivel medio o directivos). Su autor, Ray A. Smith plantea, tras analizar diversas industrias, que podría resultar que muchos roles gerenciales desaparezcan para siempre: “La IA generativa no sólo acelera tareas rutinarias o hace predicciones reconociendo patrones en los datos. Tiene el poder de crear contenido y sintetizar ideas: en esencia, el tipo de trabajo de conocimiento que millones de personas hacen ahora detrás de computadoras” concluye Smith.\r\n\r\nComo viene ocurriendo a menudo desde la masificación de las inteligencias artificiales desde hace poco más de un año, cada vez que un referente o un medio importante realiza un vaticinio apocalíptico sobre IA y empleabilidad, emerge nuevamente la psicosis y la resistencia a este avance en la tecnología. Esto es un error principalmente por cuatro razones:\r\n\r\n1° La IA va a eliminar empleos pero creará nuevos: No hay que ser ingenuos. Como todo avance tecnológico, uno de los propósitos de la IA es optimizar las labores humanas. Algunos oficios que conocemos actualmente podrían desaparecer o modificarse sustancialmente; pero también surgirán nuevas profesiones. Si no nos adaptamos a los cambios, nuestros empleos si corren peligro, por ello es preciso actualizarse y capacitarse. Y, en este sentido, los gobiernos tienen una responsabilidad muy importante: desde generar un mindset basado en la evolución y adaptación al cambio desde las bases del sistema educativo hasta las políticas de capacitación direccionadas a adultos mayores y personas de mediana edad; además de fomentar la inserción laboral en todos los niveles.\r\n2° La IA existe hace más de 80 años: Siempre ha estado en evolución permanente, pero su aplicación siempre estuvo reservada al sector privado. Hace décadas que empresas como Santex desarrollan soluciones basadas en IA para otras empresas y gobiernos, las cuáles seguramente tuvieron un impacto en las fuentes de empleo, pero que pocos advirtieron.\r\n3° Las habilidades diferenciales de los humanos no pueden ser reemplazadas por AI: El informe “Global Risk Report 2024” elaborado por el Foro Económico Mundial, resaltó varias competencias interpersonales como las más demandadas y, en consecuencia, las que permiten a quienes las poseen obtener mayores ingresos. El principal aprendizaje del estudio es que habilidades humanas como el pensamiento estratégico, capacidad de negociación, de persuasión, de presentación, pensamiento crítico, innovación, resiliencia y la inteligencia emocional no pueden ser emulados por la IA.\r\n4° En el siglo XXI las empresas, además de hacer negocios, buscan aportar valor social: Si bien hay excepciones, las corporaciones modernas se alejaron del estereotipo cinematográfico basado en los grandes campeones de la industria del siglo XIX. Las empresas de hoy saben que no pueden ser sustentables económicamente en sociedades pobres, por ello buscan integrarse armónicamente como un ecosistema, midiendo permanentemente que su impacto sea siempre positivo o al menos neutral. Y todo lo que refiere a IA no es una excepción. Este es el concepto de shared value que propone Michael Porter.\r\nComo ocurre en todas las industrias modernas, la regulación busca adecuarse a lo que ya está pasando y el compromiso ético de las empresas toma un rol sustancial en esta materia. En este punto, la ética empresarial se posiciona como un factor crítico. Y es muy importante la voz de los referentes en cada temática para guiar esta conversación. Desde Santex, por ejemplo, promueven la formación de Liga del Bien de la IA, un movimiento formado por un equipo interdisciplinario de especialistas de la academia, el sector privado y el tercer sector, que busca apoyar el debate ético y la difusión de ideas para un desarrollo regulatorio acorde a valores humanos universales. Desde allí desarrollaron un documento de Autoevaluación en materia de IA, que propone compromisos éticos y establece un vocabulario compartido sobre valores fundamentales.\r\n\r\nAcerca de Santex\r\n\r\nSantex es una empresa tecnológica global, con 25 años de experiencia y presencia en 100 ciudades en 18 países de todo el mundo. Se especializa en el desarrollo de software a medida, implementando  soluciones basadas en Inteligencia Artificial, con el objetivo de aprovechar la tecnología para mejorar los procesos, automatizar tareas y marcar una diferencia competitiva. Tiene expertise en diversas industrias, como alimentos y bebidas, salud, banca, tecnología, manufactura retail y demás.'),
(2, 'Microsoft y NTT Data se unen para fomentar la adopción de la IA generativa (abren su GenAI Studio)', 'Se trata de una iniciativa, con presencia en América Latina, que busca acelerar la adopción de la inteligencia artificial generativa dentro de las organizaciones, dotándolas de las capacidades técnicas y humanas necesarias para aprovechar los beneficios de esta tecnología.', 'La integración creciente de la inteligencia artificial está marcando un hito significativo en el panorama empresarial de América Latina. Según el informe \"Inteligencia Artificial en América Latina 2023\" de MIT Technology Review y NTT DATA, el uso de esta tecnología en las empresas de la región ha aumentado notablemente, pasando del 58% al 71% entre 2020 y 2023. Este avance no solo optimiza operaciones, sino que también genera retornos de inversión atractivos.\r\n\r\nSin embargo, la evolución rápida de la IA generativa presenta desafíos únicos. En respuesta, NTT DATA y Microsoft han unido fuerzas para lanzar el GenAI Studio. Este centro de excelencia no solo acelera la adopción de la IA generativa en diversas empresas latinoamericanas, sino que también ofrece un enfoque integral: desde mejorar la eficiencia operativa hasta impulsar la innovación en productos y servicios.\r\n\r\nEl GenAI Studio se destaca por su metodología de cuatro fases, diseñada para desarrollar soluciones robustas que aborden desafíos empresariales específicos. Este enfoque estratégico, respaldado por un equipo interdisciplinario de expertos, asegura no solo la implementación efectiva, sino también la escalabilidad y la sostenibilidad a largo plazo.\r\n\r\n“Nuestra misión en GenAI Studio es asegurar que la adopción de la IA Generativa sea tan integral como beneficiosa, transformando no sólo los procesos de negocio sino también la cultura organizacional”, explica Luis Quiles, director Ejecutivo de IA Generativa en NTT DATA para América Latina. “Nuestro enfoque se centra en la adopción responsable, poniendo las necesidades humanas en el centro de las soluciones y abordando los desafíos éticos garantizando la transparencia, la privacidad y la seguridad”, aseguró. \r\n\r\nCon programas piloto en curso en toda la región, esta iniciativa promete transformar radicalmente la manera en que las organizaciones latinoamericanas aprovechan el potencial de la IA generativa. Es un paso audaz hacia adelante, impulsado por el compromiso compartido de NTT DATA y Microsoft de impulsar la innovación responsable y el progreso sostenible en toda América Latina.\r\n\r\n“Estamos entusiasmados de hacer parte de esta iniciativa pionera que tiene el potencial de transformar la forma en que las organizaciones de todos los sectores y tamaños aprovechan el poder de la IA para generar valor y resolver problemas complejos”, dijo Giovanna Cortez, directora de Partners de Microsoft para Suramérica Hispanohablante.'),
(14, 'Trabajo práctico integrador final (RECUPERATORIO) 30/08', 'Desarrollar y diseñar un sitio utilizando todo lo aprendido en el curso. Para aprobar el curso el proyecto deberá tener las siguientes características:\r\n', 'Contar con al menos 4 secciones distintas\r\nImplementar Node.js como lenguaje de servidor y Handlebars como motor de plantillas\r\nEnviar mails mediante un formulario.\r\nRealizar las 4 operaciones básicas de las bases de datos: leer, escribir, modificar y eliminar registros de una tabla.\r\nEl sitio o aplicación debe ser totalmente navegable.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'suria', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'flavia', '6562c5c1f33db6e05a082a88cddab5ea');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
