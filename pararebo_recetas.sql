-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-10-2018 a las 21:01:03
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pararebo_recetas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Carnes'),
(2, 'Pescados y Mariscos'),
(3, 'Ensaladas y Verduras'),
(4, 'Pastas y Pizzas'),
(5, 'Sopas y Cremas'),
(6, 'Arroces y Cereales'),
(7, 'Postres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `receta_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `nombre`) VALUES
(1, 'Huevo'),
(2, 'Patata'),
(3, 'Col'),
(4, 'Lechuga'),
(5, 'Espinacas'),
(6, 'Repollo'),
(7, 'Coliflor'),
(8, 'Pimiento Verde'),
(9, 'Pimiento Rojo'),
(10, 'Pimiento Amarillo'),
(11, 'Tomate'),
(12, 'Tomate Cherry'),
(13, 'Zanahoria'),
(14, 'Apio'),
(15, 'Cebolla'),
(16, 'Cebolleta'),
(17, 'Maíz'),
(18, 'Aceituna Verde'),
(19, 'Aceituna Negra'),
(20, 'Remolacha'),
(21, 'Calabacín'),
(22, 'Judías Verdes'),
(23, 'Lentejas'),
(24, 'Perejil'),
(25, 'Eneldo'),
(26, 'Berenjena'),
(27, 'Pepino'),
(28, 'Pepinillos'),
(29, 'Naranja'),
(30, 'Fresas'),
(31, 'Higo'),
(32, 'Pasas'),
(33, 'Uvas'),
(34, 'Manzanas'),
(35, 'Arándanos'),
(36, 'Bayas de Goji'),
(37, 'Jamón Serrano'),
(38, 'Jamón York'),
(39, 'Tocino'),
(40, 'Pollo'),
(41, 'Atún'),
(42, 'Salmón Ahumado'),
(43, 'Huevo Duro'),
(44, 'Camarón'),
(45, 'Pulpo'),
(46, 'Gamba'),
(47, 'Quinoa'),
(48, 'Semillas de Sésamo'),
(49, 'Semillas de Calabaza'),
(50, 'Nueces'),
(51, 'Almendras'),
(52, 'Orégano'),
(53, 'Albahaca'),
(54, 'Miel'),
(55, 'Vinagre'),
(56, 'Yogur'),
(57, 'Limón'),
(58, 'Mayonesa'),
(59, 'Mantequilla'),
(60, 'Queso de Cabra'),
(61, 'Queso Parmesano'),
(62, 'Queso Azul'),
(63, 'Queso Rallado'),
(64, 'Nata'),
(65, 'Chocolate'),
(66, 'Pimienta'),
(67, 'Pimentón'),
(68, 'Ajo'),
(69, 'Calabaza'),
(70, 'Cilantro'),
(71, 'Harina'),
(72, 'Arroz'),
(73, 'Leche'),
(74, 'Azúcar'),
(75, 'Puerros'),
(76, 'Champiñones'),
(77, 'Avellanas'),
(78, 'Cangrejo'),
(79, 'Almejas'),
(80, 'Espárragos'),
(81, 'Salmón'),
(82, 'Calamar'),
(83, 'Garbanzos'),
(84, 'Melón'),
(85, 'Remolacha'),
(86, 'Mango'),
(87, 'Alcachofa'),
(88, 'Plátano'),
(89, 'Piña'),
(90, 'Costilla de Cerdo'),
(91, 'Tomillo'),
(92, 'Aceite de oliva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientesrecetas`
--

CREATE TABLE `ingredientesrecetas` (
  `receta_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL,
  `cantidad_ingrediente` float NOT NULL,
  `medida_ingrediente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(20000) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `titulo`, `descripcion`, `categoria_id`, `usuario_id`) VALUES
(1, 'Receta de Solomillo de cerdo con calabacín rebozado\n', 'Coloca las lonchas de jamón sobre la placa de horno forrada con papel de hornear. Cúbrelas con otro trozo de papel y hornéalas a 190º C durante 12-15 minutos. Deja que se enfríen, retírales la grasa y pica el jamón finamente y agrégalo al pan rallado. Reserva.\n\nPela los ajos, lamina y ponlos a rehogar en una sartén con un poco de aceite. Pela y pica las cebolletas en dados y añádelos. Sazona. Rehoga todo bien hasta que se doren. Vierte el vino y dale un hervor. Espolvorea con perejil picado.\n\nCorta los solomillos por la mitad, salpimienta y dóralos en una sartén con un chorrito de aceite. Colócalos en una bandeja apta para horno, añade por encima la cebolleta pochada y hornea la carne a 190º C durante 10 minutos.\n\nLava el calabacín, córtalo en rodajas y sazónalas. Pásalas por harina, huevo batido y el pan rallado mezclado con el polvo de jamón. Fríelas en una sartén con aceite. Escúrrelas sobre un plato cubierto de papel absorbente.\n\nSirve el solomillo con las rodajas de calabacín rebozado. Decora con unas hojitas de perejil.', 1, 1),
(2, 'Filetes de pavo empanados con setas al Roquefort', 'Corta la pechuga en filetes y aplástalos un poco con la hoja del cuchillo cebollero. Salpimienta los filetes de pavo. Bate los huevos en un bol, sazona y añade un poco de perejil picado. Pasa los filetes por harina, huevo batido y pan rallado. Aplástalos un poco y hazles (en uno de los lados) unas marcas en cruz con el contrafilo del cuchillo. Resérvalos.\n\nLimpia las setas, córtalas por la mitad y cocínalas brevemente en una sartén con un chorrito de aceite. Sazona y añádeles el orégano. Resérvalas.\n\nColoca la leche y el queso en un cazo. Pon a calentar y cocina los ingredientes hasta que espese un poco. Pon a punto de sal y reserva la salsa caliente.\n\nPon abundante aceite a calentar en una sartén. Agrega los filetes y fríelos por los 2 lados. Retira y escúrrelos sobre un plato cubierto con papel absorbente de cocina. Sirve los filetes con las setas salseadas con la salsa de queso. Decora con unas hojas de perejil.\n\n\nhttps://www.hogarmania.com/cocina/recetas/carnes/201810/filetes-pavo-empanados-setas-roquefort-41295.html', 1, 1),
(3, 'Pollo con setas y ajos frescos', 'Corta las pechugas en tiras y colócalas en un bol. Salpimienta. Vierte el vino, remueve y déjalas macerando durante 20 minutos.\n\nElimina la parte superior e inferior de los ajos frescos, córtalos en trozos de unos 3 centímetros. Corta las setas y los pimientos del mismo tamaño que los trozos de pollo. Lava el calabacín y córtalo de la misma manera.\n\nPon un poco de aceite en una sartén, añade los pimientos y los ajos frescos y saltéalos brevemente. Sazona. Retíralos a un plato. Pon a calentar otro chorrito de aceite en otra sartén, agrega las setas y el calabacín y saltéalos. Sazona. Retíralos a otro plato.\n\nPon a calentar una sartén pequeña con un poco de aceite, agrega los anacardos y saltéalos brevemente. Cuando se tuesten un poco, retíralos a un plato.\n\nEscurre el pollo y sécalo un poco con papel absorbente. Pon un poco de aceite en otra sartén, añade el pollo y saltéalo a fuego fuerte. Agrega las verduras y cocina todo junto durante 3-4 minutos a fuego fuerte. Sirve.\n\nConsejo:\n\nEl salteado de setas y calabacín desprenderá bastante líquido, por lo que antes de mezclarlos con el resto de los ingredientes, os recomiendo retirarlo.\n\nhttps://www.hogarmania.com/cocina/recetas/carnes/201809/pollo-setas-ajos-frescos-41155.html', 1, 1),
(4, 'Magras con tomate', 'Pela los dientes de ajo, córtalos por la mitad y rehógalos en una tartera grande con unas 6 cucharadas de aceite. Agrega las lonchas de jamón y fríelas (vuelta y vuelta). Retíralas a un plato y resérvalas. Reserva también el jugo.\n\nPica la cebolla en dados y añádelos a la tartera donde están los ajos. Rehógala un poco. Lava los tomates, pícalos a tu gusto e incorpóralos. Sazona y añade el azúcar. Cocínalo durante 30 minutos aproximadamente y pásalo por el pasapurés. Coloca la salsa de tomate en la cazuela y caliéntalo. Añade el jugo de las magras y mezcla bien.\n\nPela las patatas, córtalas en daditos y fríelos en una sartén con aceite. Escúrrelos sobre un plato cubierto con papel absorbente. Sazona y espolvorea con perejil picado.\n\nSirve las magras en una fuente, cúbrelas con el tomate y acompáñalas con las patatas.\n\nhttps://www.hogarmania.com/cocina/recetas/carnes/201809/magras-tomate-karlos-arguinano-41145.html', 1, 1),
(5, 'Brochetas de cordero con salsa de melocotón', 'Coloca las patatas en una cazuela con agua y sal y cuécelas durante 30 minutos. Resérvalas en la cazuela hasta el momento de servir.\n\nCorta la carne en tacos grandes, sazona y ponlos en un bol. Agrega el tomillo y un chorrito de aceite. Mezcla bien y déjalos macerando durante 30 minutos.\n\nPela y pica los ajos y la cebolleta y ponlos a rehogar en una cazuela con un chorrito de aceite. Añade la guindilla (entera). Pela un melocotón, pícalo e incorpóralo a la cazuela. Rehoga brevemente, vierte el vino y la misma cantidad de agua. Deja que reduzca durante 15 minutos aproximadamente. Tritura la salsa con la batidora eléctrica, cuela y resérvala.\n\nPela los otros melocotones y córtalos en gajos. Inserta alternando en cada palito de brocheta, los trozos de carne (4) y los gajos de melocotón (3).\n\nAderézalas con un poco de pimienta recién molida.\n\nÁsalas a la plancha dándoles la vuelta de vez en cuando. Estarán a punto en unos 8 minutos.\n\nColoca las brochetas en una fuente y rocíalas con un poco de salsa. Pon el resto de la salsa en una salsera. Corta las patatas por la mitad, sazona y riégalas con un chorrito de aceite. Colócalas con las brochetas y espolvorea todo con un poco de perejil picado.\n\nConsejo:\n\nA la hora de cocinar las brochetas habrá que tener en cuenta la edad del cordero. Si es cordero lechal tardará menos tiempo que si es cordero de pasto.\n\nhttps://www.hogarmania.com/cocina/recetas/carnes/201809/brochetas-cordero-salsa-melocoton-41137.html', 1, 1),
(6, 'Empanadillas de pollo\n', 'Pica finamente la cebolleta y el pimiento verde y póchalos en una sartén con un poco de aceite. Sazona. Agrega el ajo picado y la carne de pollo picada previamente. Remueve bien. \nCuando esté bien pochado, escurre el aceite sobrante, y añade los piquillos picados y el tomate. Adereza con un poco de curry y romero.\n\nCuece un huevo, pícalo y mezcla todo en un bol. Deja enfriar.\n\nColoca una porción sobre cada oblea, ciérralas con ayuda de un tenedor y fríelas en abundante aceite.\n\nhttps://www.hogarmania.com/cocina/recetas/carnes/201809/empanadillas-pollo-40973.html', 1, 1),
(7, 'Solomillo Wellington', 'Salpimienta la carne y séllala en la sartén por todos los lados hasta que quede dorada. Deja que se enfríe y úntala con la mostaza. Reserva.\n\nPica las chalotas y los ajos y ponlos a pochar en una sartén con un chorrito de aceite. Retira la parte inferior de los champiñones y límpialos. Pícalos finamente, incorpóralos a la sartén, incorpora la harina, sazona y cocínalos durante 10 minutos. Deja que se enfríen. Añade el paté y mezcla todo bien hasta que quede una pasta homogénea. Deja templar.\n\nCalienta el horno a 200ºC. Extiende la masa de hojaldre sobre una placa de horno. Coloca encima, en la parte central, una capa de la mezcla de champiñones y foie. Coloca encima la carne y cúbrela con otra capa de la mezcla de champiñones y foie.\n\nCierra el hojaldre con cuidado, dejando la unión en la parte inferior. Bate el huevo y con ayuda de un pincel pinta la masa (Puedes decorar la superficie con algunos recortes de hojaldre). Hornéalo a 200ºC durante 20 minutos. Deja que repose durante 10 minutos.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201808/solomillo-wellington-40947.html', 1, 1),
(8, 'Pollo relleno al horno con puré de patata', 'Limpia el pollo.\n\nPrepara un sofrito con la cebolleta picada y los champiñones, con aceite y sal.\n\nMezcla en un bol la carne picada, el sofrito, los orejones, las pasas y los pistachos picados con sal y pimienta.\n\nRellena el pollo, colócalo en una bandeja de horno, salpimiéntalo, rocía con el vino y hornea con una rama de romero a 230ºC, 45 minutos.\n\nPela las patatas y cuécelas con agua. Pásalas por el pasapurés y adereza con leche, mantequilla, nuez moscada y sal.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201807/pollo-relleno-horno-pure-patata-40692.html', 1, 1),
(9, 'Solomillo de cerdo relleno con salsa de champiñones', 'Cortar los solomillos en dos, a lo largo, sin llegar hasta el final en forma de libro. Salpimentar.\n\nColocar en el centro del solomillo el jamón cocido, dos lonchas de queso y los orejones picados en dados de 5x5mm.\n\nCerrar el solomillo con hilo de bridar haciendo nudos con una separación de 2-3 cm.\n\nPrecalentar el horno a 180ºC.\n\nMarcar el solomillo por todas sus caras a fuego vivo durante unos 10 minutos en una sartén antiadherente con el aceite.\n\nColocar en una bandeja de horno junto a los ajos y hornear unos 10 minutos más.\n\nRetirar del horno y dejarlo reposar 5 minutos cubierto de papel aluminio con dos chimeneas en la parte superior.\n\nPara la salsa:\nPicar la chalota y filetear los champiñones.\n\nRehogar la chalota con la mantequilla en una cazuela durante 3 minutos hasta que este translucida, añadir los champiñones fileteados y una pizca de sal, seguir rehogando todo junto hasta que el champiñón suelte su agua, unos 4 minutos. Calentar el agua, disolver la pastilla de caldo.\n\nAñadir el oporto, agregar el caldo, la nata y la mostaza, y mezclar bien.\n\nCuando rompa el hervor, bajar el fuego a mínimo y cocer lentamente durante 12 minutos hasta que la salsa tenga la cremosidad deseada.\n\nPoner a punto de sal y pimienta, agregar el perejil picado y servir con el solomillo.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201806/solomillo-cerdo-relleno-salsa-champinones-40558.html', 1, 1),
(10, 'Sesos rebozados con tomate', 'Para la salsa\n\nRehogar cebolletas, el pimiento, salpimienta y añade una pizca de aceite de oliva.\n\nPicar sobre la tabla el chile y laminar el ajo, añadirlo al sofrito.\n\nTrocear los tomates, añadirlos al sofrito con el vinagre, vino y azúcar, guisar 15 mn.\n\nIntroducir la salsa en una batidora con albahaca fresca.\n\nVolver la salsa al fuego y hervir unos minutos, rectificar sazón.\n\nListo.\n\nPara los sesos:\n\nLimpiar los sesos.\n\nPon a hervir el caldo, añadir los sesos y cuando empiece de nuevo a hervir, retirar del fuego, tapar y esperar 10-15 minutos. Escurrir bien.\n\nSalpimentar los sesos y rebozarlos por harina y huevo. Freírlos en aceite de oliva, escurrir y servir con la salsa.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201806/sesos-rebozados-tomate-40590.html', 1, 1),
(11, 'Paletillas de conejo con setas a la mostaza', 'Coloca las paletillas en un bol. Pela y maja 2 dientes de ajo y agrégalos al bol. Añade el txakoli, el vinagre, 2 cucharadas de aceite y el pimentón. Salpimienta y mezcla bien para que la carne se embadurne bien con el macerado. Deja que macerar durante 30 minutos mínimo.\n\nPela y pica la cebolleta en daditos y ponlos a pochar en una cazuelita con un chorrito de aceite. Cuando la cebolleta coja color, vierte el caldo, la nata y la mostaza y deja que reduzca durante 10 minutos a fuego suave. Escurre las paletillas y ásalas a la parrilla.\n\nUnta una bandeja de horno con aceite y coloca encima las setas limpias. Sazona, rocíalas con un chorrito de aceite y hornéalas a 220º C durante 15 minutos.\n\nSirve las paletillas de conejo y decóralas con unas hojas de perejil. Sirve las setas en otra fuente, espolvoréalas con perejil picado y salséalas.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201806/paletillas-conejo-setas-mostaza-40492.html', 1, 1),
(12, 'Cordero asado con yuca frita y pan de ajo', 'Calienta una sartén con una gotita de aceite, agrega las lonchas de panceta y cocínalas brevemente (vuelta y vuelta). Extiende la carne sobre la tabla, distribuye las lonchas de panceta sobre la falda y enróllala alrededor del lomo. Átala con una cuerda de cocina y colócala en una bandeja de horno.\n\nPela y trocea un par de dientes. Colócalos en el mortero, agrega el tomillo y májalos. Añade perejil picado, una pizca de sal, una pizca de pimienta molida y un buen chorro de aceite. Mezcla y pinta la carne con ayuda de una brocha. Ásala en el horno a 200º C durante 40 minutos.\n\nPela la yuca, córtala con el pelador en láminas finas. Pon a calentar una sartén con abundante aceite y fríelas hasta que queden crujientes. Escúrrelas sobre una fuente cubierta con papel absorbente de cocina.\n\nPela y troca los otros dos dientes de ajo y colócalos en el mortero. Añade un poco de aceite y mezcla. Haz unos cortes al pan y unta los cortes con la mezcla. Envuelve el pan en papel de horno y colócalo en una bandeja de horno. Hornea a 200º C durante 10 minutos. Retira el papel de horno con cuidado. Corta la carne por las costillas y sirve. Acompaña con la yuca frita y el pan. Salsea con el jugo de la carne. Decora con una hojita de perejil.\nhttps://www.hogarmania.com/cocina/recetas/carnes/201806/cordero-asado-yuca-frita-40460.html', 1, 1),
(13, 'Lenguado asado con puré de patatas', 'Pon las patatas a cocer en una cazuela con abundante agua y una pizca de sal. Cuécelas durante 30 minutos. Déjalas templar. Pela y pásalas por el pasapurés. Coloca el puré en un bol, salpimienta, vierte la leche y un chorrito de aceite. Mezcla y resérvalo. En el momento de servir caliéntalo en el microondas.\n\nCalienta el horno a 180º C. Lava los pimientos y colócalos en una bandeja apta para horno. Riégalos con un chorrito de aceite y sazónalos. Hornéalos a 200º C durante 35-40 minutos. Retíralos y deja que se templen un poco. Pela y córtalos en tiras. Pela 3 dientes de ajo, lamina y rehógalos en una sartén con un chorro de aceite. Agrega las tiras de pimiento y confítalas a fuego suave durante 15 minutos.\n\nSazona el pescado. Sazona la placa del horno y rocíala con un poco de aceite. Coloca encima el pescado, sazona y riégalo con otro chorrito de aceite y el txakolí. Ásalo a 220º C durante 15 minutos.\n\nCuando falten 5 minutos, prepara el refrito.\n\nPon a calentar en una sartén 5 cucharadas de aceite. Pela los otros 2 dientes de ajo y lamina y añádelos. Cuando empiecen a dorarse, añade el zumo de limón, un chorrito de vinagre y un poco de perejil picado. Dale un hervor durante 1 minuto.\n\nRetira el pescado del horno y riégalo con el refrito. Sirve también el puré de patatas y los pimientos confitados. Decora con unas hojas de perejil.\n\nConsejo:\n\nSi no os gusta encontraros ajos en el pescado, os recomiendo colar el refrito antes de verterlo sobre el pescado.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201810/lenguado-asado-pure-patatas-41341.html', 2, 1),
(14, 'Mejillones en tempura con mahonesa de azafrán', 'Limpia los mejillones retirándoles las impurezas adheridas a las cáscaras y las barbas. Pon a calentar el txakoli en una tartera. Agrega los mejillones y tápalos. Cuando se abran, retira y elimínales las cascaras. Escúrrelos bien y si fuera necesario sécalos. Resérvalos.\n\nTuesta las hebras de azafrán en una sartén sin nada de aceite y pásalas al mortero. Machácalos hasta que queden reducidas a polvo. Colócalas en el vaso batidor, añade el huevo, una pizca de sal, vierte un chorrito de vinagre y una buena porción de aceite (200ml.). Tritura los ingredientes hasta que liguen. Reserva la mahonesa.\n\nMezcla bien en un bol la harina con el agua fría y una pizca de sal. Introduce los mejillones. Retira y escúrrelos. Fríelos en una sartén con abundante aceite. Escúrrelos sobre un plato cubierto con papel absorbente.\n\nSirve los mejillones y decora los platos con unas hojas de rúcula aliñadas con aceite, vinagre y sal. Pon en cada plato pequeñas porciones de la mahonesa de azafrán.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201810/mejillones-tempura-mahonesa-azafran-41329.html', 2, 1),
(15, 'Guiso de rape, mejillones y langostinos', 'Limpia el rape y retira la cabeza y los huesos. Resérvalos y reserva también los lomos. Pon la cabeza y los huesos de rape en una cazuela, cúbrela con agua. Sazona. Agrega una cebolleta cortada en 4, la parte verde del puerro y unas ramas de perejil. Agrega las cabezas y las pieles de los langostinos (reserva la carne). Pon a punto de sal y cuece todo durante 20-25 minutos. Desespuma el caldo, cuela y resérvalo.\n\nPon a calentar el txakoli en una sartén. Limpia los mejillones, retirándoles las barbas, y añádelos. Tapa y espera a que se abran. Retíralos del fuego y separa las cáscaras de la carne. Reserva la carne y el caldo por separado.\n\nPela y lamina los dientes de ajo y ponlos a pochar en una cazuela grande con un chorrito de aceite. Pela y pica la otra cebolleta y añádela. Limpia el puerro, pícalo en daditos y añádelos. Rehoga un poco.\n\nPela las patatas, córtalas en lonchas de 1 centímetro e incorpóralas. Agrega la salsa de tomate, una hoja de laurel y el caldo (de los mejillones y del rape). Cocina el conjunto durante 20-25 minutos.\n\nAñade los langostinos, los mejillones, el rape y mezcla. Espolvorea con perejil picado y cocina todo junto durante un par de minutos. Sirve.\n\nConsejo:\n\nA la hora de preparar un caldo de pescado es interesante hacerlo a fuego suave. De esta manera el caldo no se enturbiará.2\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201810/guiso-rape-mejillones-langostinos-41275.html', 2, 1),
(16, 'Bacalao al pil-pil con puerro crujiente', 'Pela los dientes de ajo y fríelos enteros en la tartera junto con la guindilla con bastante aceite de oliva. Cuando se doren retira los ajos y la guindilla. Agrega el bacalao con la piel hacia arriba y retira del fuego. Deja que el aceite se temple y el bacalao suelte su gelatina.\n\nRetira el aceite y meneando la cazuela empieza a ligar el aceite con la gelatina mientras añades más aceite poco a poco, hasta que ligue bien la salsa. Añade los ajos fritos y la guindilla.\n\nLimpia y pica los puerros en bastones finos. Pásalos por harina y fríelos en abundante aceite.\n\nSirve el bacalao al pil-pil con el puerro crujiente.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201809/bacalao-puerro-crujiente-41065.html', 2, 1),
(17, 'Sardinas asadas con patatas al pimentón', 'Pon las patatas con piel en una cazuela, cúbrelas con agua y cuécelas durante unos 20-25 minutos aproximadamente. Pela y córtalas en lonchas.\n\nRiega una fuente con un chorrito de aceite, sazona y espolvorea con pimentón. Coloca encima las patatas. Sazona, espolvoréalas con otro poco de pimentón y riégalas con otro chorrito de aceite.\n\nCorta el pan en rebanadas y tuéstalas un poco en la parrilla. Pela el diente de ajo y unta las rebanadas de pan.\n\nColoca las sardinas en un bol con agua y sal durante 40 minutos. Sécalas bien con papel absorbente, sazona y ásalas a la parrilla durante 2 minutos por cada lado.\n\nSirve las sardinas y acompáñalas con las patatas al pimentón y el pan. Decora con unas hojas de perejil.\n\nConsejo:\n\nCuando tuestes el pan en la parrilla que ni se te ocurra alejarte ya que se puede quemar con mucha facilidad.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201809/sardinas-asadas-patatas-pimenton-41075.html', 2, 1),
(18, 'Bonito encebollado con guindillas fritas', 'Retira el tallo y las pepitas del pimiento choricero. Ponlo en una cazuela y cuécelo durante 10 minutos. Sácalo y con ayuda de una puntilla quítale la pulpa y pícala finamente. Resérvala.\n\nPela y pica los ajos en láminas y ponlos a freír en una sartén con aceite. Pela las cebollas, córtalas en juliana fina y agrégalas a la sartén. Sazona y deja pochar. Una vez pochada agrega la carne del pimiento choricero y vierte el txakoli. Deja reducir durante 10 minutos a fuego suave.\n\nPon aceite en una sartén, vierte el aceite y agrega las guindillas. Fríe las guindillas a tu gusto. Retira y sazónalas.\n\nCorta el bonito en 8 lonchas, salpimienta y fríelas (vuelta y vuelta) en la misma sartén (retirándole parte del aceite) donde has frito las guindillas.\n\nReparte la cebolla en la base de los platos y coloca encima de cada uno, un par de lonchas de bonito. Pon al lado una porción de guindillas y adorna con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201809/bonito-encebollado-guindillas-fritas-41039.html', 2, 1),
(19, 'Chipirones en su tinta', 'Limpia los chipirones. Separa las aletas y los tentáculos, pícalos y resérvalos.\n\nPara el relleno, saltea en una sartén con un poco de aceite, una cebolla y 2 dientes de ajo picados. Añade la picadura de los tentáculos y las aletas y el jamón cortadito. Rehoga el conjunto y añade el huevo cocido picado. Deja templar.\n\nEn una cazuela a fuego muy lento rehoga en un poco de aceite las restantes cebollas, el otro diente de ajo y el pimiento verde picados y los tomates cortaditos en gajitos. Sofríe el conjunto y agrega la tinta disuelta en un poco de agua junto al vino blanco. Cocina a fuego suave durante 15 minutos. Posteriormente, tritura la salsa con el pasapurés y reserva.\n\nRellena los txipirones con la preparación anterior y ciérralos con un palillo. Fríe los txipirones en una sartén con aceite e incorpóralos a la salsa. Cocina durante 20 minutos y rectifica el punto de sal.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201809/chipirones-tinta-41005.html', 2, 1),
(20, 'Croquetas de salmón', 'Trocea el salmón fresco, salpimienta y cocínalo brevemente en una cazuela con un chorrito de aceite. Retira el salmón, deja que se temple, desmenuza y resérvalo.\n\nAgrega un poco más de aceite a la cazuela donde has cocinado el salmón, agrega 90 gramos de harina y rehógala un poco. Vierte la leche poco a poco, sazona y cocina la bechamel durante 15 minutos. Añade el salmón fresco y el salmón ahumado picadito, y mezcla bien. Pica el eneldo finamente, agrégalo y mezcla. Pon a punto de sal.\n\nRetira la cazuela del fuego y añade la yema de huevo. Mezcla bien. Pasa la masa a una fuente, cúbrela con papel film y deja que se enfríe.\n\nCorta la masa en cuadrados, pásalos por harina, huevo batido y pan rallado y fríelas en una sartén con abundante aceite. Escurre las croquetas de salmón sobre un plato cubierto con papel absorbente de cocina para retirar el exceso de aceite.\n\nPasa las croquetas de salmón a una fuente y decora con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/pescados-mariscos/201806/croquetas-salmon-40488.html', 2, 1),
(21, 'Ensalada de rúcula y aguacate', 'Lava la rúcula, seca y ponla en una fuente.\n\nPela el aguacate y córtalo en lonchas finas. Colócalas sobre la rúcula. Añade también las frambuesas.\n\nSazona y adereza con aceite y vinagre. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201810/ensalada-rucula-aguacate-41367.html', 3, 1),
(22, 'Ensalada de manzana y remolacha', 'Lava los berros y espárcelos en una fuente grande.\n\nPela la manzana, córtalas en lonchas (medias lunas) finas y repártelas por encima.\n\nCorta la remolacha en dados y agrégalos.\n\nAñade también las pasas y los pistachos (pelados). Mezcla el zumo de limón con un chorrito de aceite de oliva virgen extra y aliña la ensalada. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201810/ensalada-manzana-remolacha-41353.html', 3, 1),
(23, 'Ensalada de pepino y pepinillos', 'Lava el calabacín, córtalo en dados y colócalos en un plato. Cubre el plato con film de cocina e introdúcelos en el microondas durante 3 minutos. Retira y deja que se enfríen.\n\nPela los pepinos, córtalos en daditos y ponlo en una fuente.\n\nAgrega los dados de calabacín.\n\nCorta los pepinillos en lonchitas e incorpóralas. Agrega también las huevas. Sazona y riega con un poco de aceite. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201810/ensalada-pepino-pepinillos-41345.html', 3, 1),
(24, 'Puerros con bechamel de paté', 'Retira la parte inferior y superior de los puerros. Enjuágalos bien, retira la primera capa (reserva dos) y cuécelos en una cazuela con agua y una pizca de sal durante 18-20 minutos. Escúrrelos y repártelos en 4 platos aptos para el horno. Reserva.\n\nPon a calentar un poco de aceite en una cazuela. Agrega la harina y rehógala bien. Vierte la leche poco a poco y cocina la bechamel a fuego suave durante 6-8 minutos sin dejar de remover. Salpimienta la bechamel y añádele el paté de ave. Mezcla bien hasta que quede una masa homogénea. Pon a punto de sal. Napa los puerros, espolvorea con el queso rallado y gratínalos en el horno.\n\nLimpia los otros 2 puerros, córtalos en juliana fina y fríelos a fuego medio en una sartén con una buena cantidad de aceite. Escúrrelos sobre un plato cubierto con papel absorbente. Sazona.\n\nSirve y adorna los platos con el crujiente de puerro y unas hojas de perejil.\n\nConsejo:\n\nPara ahorrar un poco de tiempo, podéis cocer los puerros en la olla. En ese caso bastarán con cocerlos durante 2-3 minutos desde el momento en que suba la válvula.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201810/puerros-bechamel-pate-41317.html', 3, 1),
(25, 'Calabacines rellenos', 'Retira las puntas de los calabacines, córtalos por la mitad a lo largo y después por la mitad a lo ancho, de manera que de cada calabacín salgan 4 trozos. Vacíalos (dejándolos como si fueran unas barcas) con ayuda de una cuchara saca bolas. Pica la pulpa de los calabacines y resérvala. Reserva también las barcas.\n\nPela y pica los ajos y las cebolletas finamente y ponlos a rehogar en una sartén con aceite. Pela el pimiento, córtalo de la misma manera y agrégalo a la sartén. Sazona. Añade también la carne del calabacín. Rehoga todo bien.\n\nSalpimienta la carne picada y añádela a la sartén, cocínala y añade el orégano. Mezcla bien todo. Reserva el relleno.\n\nColoca los calabacines en un bol grande. Añade la harina y remueve el bol de manera que los calabacines queden bien impregnados con la harina. Retírales el exceso de harina. En otro bol, bate los huevos con una pizca de sal. Introduce los calabacines y empápalos bien. Retira, escurre y pásalos por el pan rallado. Fríelos en una sartén con aceite y escúrrelos sobre un plato cubierto con papel absorbente.\n\nRellena los calabacines y colócalos en una fuente apta para horno. Cúbrelos con el queso rallado y gratínalos en el horno. Sirve 2 trozos por ración y decóralos con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201810/calabacines-rellenos-41229.html', 3, 1),
(26, 'Cogollos con vinagreta', 'Pica en daditos los pimientos, la cebolleta y el diente de ajo. Coloca todo en un bol. Agrega aceite, vinagre y sal y mezcla bien.\n\nCorta los cogollos por la mitad y sazónalos. Riégalos con la vinagreta. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201809/cogollos-vinagreta-41149.html', 3, 1),
(27, 'Pimientos rellenos de bacalao', 'Pela 2 dientes de ajo y la cebolleta. Pícalos en daditos y pon todo a pochar en una cazuela con un chorrito de aceite. Cuando la cebolleta empiece a quedarse transparente, agrega el bacalao y rehógalo un poco. Añade la harina y cocínala un poco. Vierte la leche, poco a poco, sin dejar de remover. Pon a punto de sal. Espolvorea con un poco de perejil picado y cocina la bechamel durante 6-8 minutos. Pasa la bechamel a un bol y deja que se enfríe. Reserva el relleno.\n\nVierte un poco de aceite en una sartén con los otros dos dientes de ajo (aplastados con piel). Agrega los pimientos y cocínalos a fuego suave durante 2 minutos por cada lado. Sazona, retira los pimientos y deja que se enfríen.\n\nRellena los pimientos, pásalos por harina y huevo batido y fríelos en una sartén con aceite. Escúrrelos sobre un plato cubierto con papel absorbente de cocina.\n\nCalienta la salsa de tomate y pon una capa fina en cada plato. Pon encima de cada uno 4 pimientos y adorna los platos con unas hojas de perejil. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201809/pimientos-rellenos-bacalao-41091.html', 3, 1),
(28, 'Ensalada de judías verdes y langostinos', 'Retira las puntas de las judías y trocéalas en trozos de 2 centímetros. Pela la patata y córtala en daditos. Coloca todo en un accesorio para cocer al vapor, introdúcelo en la olla rápida con un poco de agua y sazona. Coloca la tapa y cuece todo durante 5 minutos desde el momento en que suba la válvula. Reserva.\n\nPon a calentar una cazuela con agua y una cucharada de sal. Cuando empiece a hervir, agrega los langostinos y cuécelos durante 3 minutos. Retira, pela y resérvalos.\nPela la zanahoria, ralla y resérvala.\n\nCorta el pan en daditos y fríelos en una sartén con aceite. Escúrrelos sobre un plato cubierto con papel absorbente de cocina. Pon a calentar 175 ml de aceite en una sartén. Aplasta los ajos (con piel) y agrégalos. Cocínalos a fuego suave hasta que el aceite se impregne del aroma de los ajos. Retira los ajos y espera a que el aceite se enfríe. Pásalo a un vaso batidor y añade el huevo, un chorrito de vinagre y una pizca de sal. Introduce la batidora y liga los ingredientes hasta conseguir una buena mahonesa.\n\nReparte las judías y la patata en 4 platos. Coloca a tu gusto 4 langostinos, un poco de la zanahoria rallada y unos costrones de pan. Añade también un poco de mahonesa y adorna los platos con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201809/ensalada-judias-verdes-langostinos-41051.html', 3, 1),
(29, 'Quiche de alcachofas y espinacas', 'Para la base, monta la mantequilla con la batidora de varillas. Incorpora la harina y mezcla. Salpimienta y añade el huevo. Continúa mezclando hasta conseguir una bola homogénea.\n\nEspolvorea con harina una superficie limpia y estira la masa con ayuda de un rodillo. Forra un molde redondo, pon encima un puñado de garbanzos (para que hagan peso y la masa no suba) y hornea a 190ºC durante 12 minutos.\n\nLimpia las alcachofas, córtalas por la mitad y cuécelas en una cazuela con abundante agua y una pizca de sal.\n\nEscalda las espinacas en la cazuela de las alcachofas.\n\nPica el jamón, lamina el ajo y sofríe todo en una sartén con aceite de oliva.\n\nPon las alcachofas en el vaso de la batidora. Introduce las espinacas y el sofrito de jamón. Tritura y añade la nata y los huevos. Mezcla bien. Vuelca la mezcla sobre la masa del quiche y hornea a 190ºC durante 15 minutos.\n\nEsparce por encima el queso rallado y hornea durante 5 minutos más.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201807/quiche-alcachofas-espinacas-40742.html', 3, 1),
(30, 'Tomates rellenos de puré de patata y marisco', 'Cuece la patata en una cazuela con agua durante 25-30 minutos. Pela y aplástalas con un tenedor.\n\nLava los tomates y un trozo por la parte del pedúnculo. Vacíalos. Reserva los 4 tomates vacíos. Escurre la pulpa, pícala un poco y colócala en un bol. Añade el puré de patata.\n\nColoca los berberechos y los mejillones en una sartén al fuego. Añade el vino, coloca la tapa y espera a que se abran. Retira las cáscaras de los mejillones y pícalos. Añádelos al bol. Retira la cáscara de los berberechos y agrégalos al bol.\n\nPela las gambas y sazónalas. Pon a calentar un poco de aceite en una sartén. Agrega las gambas y saltéalas brevemente. Pícalas un poco y añádelas al bol.\n\nCorta el aguacate por la mitad, pélalo y pica la pulpa en dados. Incorpórala al bol. Sazona, adereza con el zumo de medio limón y un chorrito de aceite. Mezcla bien y rellena los tomates.\n\nSirve y adorna el resto del limón y unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/ensaladas-verduras/201806/tomates-rellenos-pure-patata-marisco-40484.html', 3, 1),
(31, 'Pasta con aguacate y tomates cherrys', 'Escalda los tomates cherry en un cazo con agua hirviendo durante 1 minuto. Mételos en un bol con agua fría y pélalos.\n\nPon abundante agua a calentar en una cazuela. Sazona. Cando empiece a hervir, añade la pasta y cuécela durante el tiempo que indique el paquete. Escurre y ponlos en un bol.\n\nPela los aguacates, saca la pulpa, trocea y ponla en un vaso batidor. Pela el diente de ajo, pica añádelo. Agrega también las hojas de albahaca. Vierte el zumo de limón y una buena cantidad de aceite. Tritura y agrega la mezcla al bol de los tallarines. Mezcla bien.\n\nSírvelos en una fuente grande, ralla el queso por encima y agrega los tomates cherry (pelados). Decora la fuente con una ramita de perejil.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201809/pasta-aguacate-tomates-cherrys-41121.html', 4, 1),
(32, 'Pasta fresca carbonara', 'Para hacer la pasta, mezcla harina con los huevos hasta que quede homogénea.\n\nReposar 10 minutos.\n\nEstira la masa con la máquina y un poco más de harina. Haz los espaguetis con la máquina.\n\nMezclar en un bol los huevos, el queso rallado, la nata, sal y pimienta.\n\nSaltear la tocineta troceada con aceite hasta que quede crujiente.\n\nHervir agua con sal y cocer la pasta.\n\nAñadir la pasta a la salsa.\n\nServir la pasta, añadir la tocineta y espolvorear perejil picado.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201806/pasta-fresca-carbonara-40448.html', 4, 1),
(33, 'Macarrones a la boloñesa', 'Pela y pica los ajos, las cebolletas y las zanahorias en daditos y ponlos a rehogar en una cazuela con un chorrito de aceite. Agrega la rama de apio cortada en tres trozos y pocha bien todo. Una vez pochado (15 minutos aproximadamente) retira el apio.\n\nCorta la panceta en dados y añádelos. Rehógalos un poco e incorpora la carne picada. Salpimienta y cocínala durante unos 5 minutos aproximadamente.\n\nAgrega el orégano, la albahaca, el vino tinto y el tomate triturado y cocínalo a fuego suave durante 30 minutos.\n\nPon agua a calentar. Cuando empiece a hervir, añade los macarrones y cuécelos durante el tiempo que indique el paquete. Sazona. Retira, escurre y agrégalos a la salsa. Remueve y sirve. Ralla encima un poco de queso y adorna con unas hojas de perejil.\n\nConsejo:\n\nCuando vayáis a hacer salsa boloñesa, os recomiendo que hagáis el doble de cantidad de lo que indica la receta porque lo que sobre se puede congelar para cualquier otra ocasión.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201806/macarrones-bolonesa-40370.html', 4, 1),
(34, 'Pastel de carne a la boloñesa', 'Pela y trocea las patatas y cuécelas en agua hirviendo con una pizca de sal durante 20 minutos. Escúrrelas y tritúralas con la leche, la mantequilla, un chorrito de aceite de oliva y una pizca de sal y de pimienta.\n\nPica la cebolla, la zanahoria y el ajo y póchalos en una sartén con un chorro de aceite de oliva durante 20 minutos. Incorpora la carne picada. Condiméntala con sal, pimienta, un puñado de orégano y otro de hierbas provenzales secas. Vierte la salsa de tomate y remueve para que se integre bien.\n\nIntroduce la carne en una bandeja para horno. Cúbrela con el puré de patata. Espolvorea con queso en polvo. Hornéala a 200ºC durante 20 minutos. Saca del horno y sirve.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201804/pastel-carne-bolonesa-39742.html', 4, 1),
(35, 'Ragout de pescado', 'Comenzamos cociendo la pasta en abundante agua con un chorrito de aceite. La refrescamos para cortarle la cocción y reservamos.\n\nCortamos el pescado en tiras. El ajo lo picamos muy fino y lo doramos en una sartén con mantequilla.\n\nAñadimos las almejas y las gambas. Cuando las almejas estén abiertas, incorporamos el pescado y la sal.\n\nSalteamos a fuego fuerte y a los 3 minutos echamos la pasta, una pizca de orégano y otra de perejil picado. Probamos de sal, dejamos que la pasta se caliente y servimos.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201803/ragout-pescado-39664.html', 4, 1),
(36, 'Tallarines con pescado', 'Cocemos los tallarines durante 15 minutos en abundante agua con sal y un chorro de aceite.\n\nEscurrimos y reservamos tapados. En una sartén rehogamos la cebolla picada con el orégano y el tomate. Dejamos al fuego 10 minutos e incorporamos el pimentón.\n\nAl poco rato, ponemos las almejas y el pescado troceado, dejamos 4 minutos más al fuego, retiramos y reservamos.\n\nEn otra sartén ponemos aceite con las láminas de ajo y cuando esté dorado salteamos en ese mismo aceite los tallarines con una pizca de orégano.\n\nPara servir, colocamos los tallarines en el centro del plato y el pescado con las almejas y la salsa bordeando la pasta.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201802/tallarines-pescado-39262.html', 4, 1),
(37, 'Lasaña de calabacín, champiñones y jamón', 'Pon a calentar abundante agua en una cazuela grande. Cuando empiece a hervir, sazona y agrega las láminas de lasaña. Cuécelas durante 10-12 minutos y escúrrelas sobre un paño de cocina limpio y seco. Resérvalas.\n\nPela y pica las cebolletas en daditos y ponlas a rehogar en una sartén con un chorrito de aceite. Pica los calabacines y los champiñones de la misma manera y agrégalos. Rehoga las verduras hasta que se pochen bien. Sazona y agrega el tomillo seco. Pica el jamón en daditos y añádelo.\n\nPara hacer la bechamel, pon a calentar el aceite en una cazuela, agrega la harina y rehógala un poco. Vierte la leche, sazona y cocínala sin dejar de remover durante 5-6 minutos.\n\nAñade un poco de bechamel a la farsa. Monta la lasaña alternando láminas de lasaña con el relleno. Finalmente cubre la lasaña con la bechamel, espolvorea la superficie con el queso rallado y gratínala en el horno hasta que se dore. Adorna con unas hojas de perejil. Sirve la lasaña de calabacín, champiñones y jamón.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201801/lasana-calabacin-champinones-jamon-38588.html', 4, 1),
(38, 'Macarrones con salmón', 'Pon abundante agua a calentar en una cazuela grande. Cuando empiece a hervir, sazona el agua y agrega los macarrones. Cuécelos durante 12-14 minutos. Escurre y resérvalos. Reserva también un poco del agua de la cocción.\n\nPela las chalotas, pícalas en daditos y rehógalas en una tartera con un chorrito de aceite y una nuez de mantequilla. Sazona.\n\nCorta el salmón fresco en daditos, salpimienta y añádelos a la tartera. Sube el fuego y saltéalos brevemente. Vierte el brandy y flambea.\n\nCuando se apague la llama, agrega los macarrones escurridos. Vierte la nata. Pica el salmón ahumado finamente y añádelo. Cocina todo junto durante 2-3 minutos.\n\nEspolvorea con perejil picado y sirve los macarrones con salmón.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201711/macarrones-salmon-37750.html', 4, 1),
(39, 'Pizza de bonito con queso\n', 'Sobre la masa de pizza colocaremos el tomate frito y el atún, lo cubriremos con queso y encima del queso pondremos los champiñones salteados con el ajo, el aceite y las colas de gambas peladas.\n\nLo meteremos al horno durante 20 minutos a 230 grados y a continuación, lo serviremos.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201710/pizza-bonito-queso-37636.html', 4, 1),
(40, 'Canelones de pato y manzana', 'Pon a cocer los arándanos con un poco de agua y dos cucharadas de azúcar a fuego medio, hasta obtener una salsa de arándanos. Reserva.\n\nPara la bechamel, derrite la mantequilla en una cazuela. Incorpora la harina y rehógala. Vierte la leche poco a poco sin dejar de remover hasta conseguir una bechamel fina. Sazona y reserva.\n\nCuece las láminas de canelones en abundante agua con sal durante 8 minutos. Refréscalas y sécalas. Reserva.\n\nQuítale la parte grasa al magret y trocéalo en taquitos. Corta la manzana sin pelar en taquitos de tamaño similar. Introduce todo en un bol, salpimienta y mezcla.\n\nSaltea la mezcla a fuego fuerte en una sartén con un chorrito de aceite, lo justo para que la carne se haga por fuera.\n\nIncorpora el salteado a la bechamel y remueve. Rellena los canelones con la mezcla. Colócalos en una fuente para horno y espolvorea por encima queso rallado. Gratínalos hasta que se dore el queso.\n\nPon los canelones en un plato y acompáñalos con la salsa de arándanos.\nhttps://www.hogarmania.com/cocina/recetas/pastas-pizzas/201706/canelones-pato-manzana-36519.html', 4, 1),
(41, 'Crema de coliflor y nabo con hongos salteados', 'Pon agua a calentar en una cazuela. Lava la coliflor, suéltala en ramilletes a añádelos al agua. Pela el nabo, trocea e incorpóralo. Añade la pastilla de caldo vegetal y tapa la cazuela. Cuece todo durante 20 minutos. (Retira parte del caldo y resérvalo por si acaso hubiera que aligerar la crema).\n\nPela y trocea los dientes de ajo. Pon a calentar un chorrito de aceite en una sartén pequeña. Agrega los ajos, y antes de que se doren, añade un poco de perejil picado y vierte todo sobre la cazuela de la coliflor y el nabo. Tritura y reserva. Si la crema queda muy espesa, aligérala añadiendo un poco del caldo reservado anteriormente.\n\nCorta el pan en medias lunas y fríelas en una sartén con aceite. Dóralas y escúrrelas sobre un plato cubierto con papel absorbente de cocina.\n\nLimpia bien los hongos y lamínalos. Saltéalos brevemente en una sartén con aceite y sazónalos. Sirve la crema, agrega a cada plato unos costrones de pan y unos hongos salteados. Decora con unas hojas de perejil.\n\nConsejo:\n\nEsta crema admite la congelación perfectamente. Lo único, cuando la vayáis a descongelar, hacedlo lentamente en el frigorífico. Es conveniente darle un hervor antes de consumirla.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201810/crema-coliflor-nabo-hongos-salteados-41371.html', 5, 1),
(42, 'Crema de champiñones y pollo al romero', 'Pela la zanahoria, trocea y colócala en una cazuela con agua. Retira la piel al pollo y resérvala. Añade el muslo de pollo sin piel. Añade también las ramas de romero, unas ramas de perejil y la pastilla de caldo de pollo. Cuece todo durante 20 minutos. Cuela el caldo y reserva el muslo. Pela y trocea los dientes de ajo y las cebolletas. Pon todo a pochar en una cazuela grande con un chorrito de aceite.\n\nRetira la parte inferior del tallo de los champiñones. Córtalos en 4 y enjuágalos en un bol con agua. Escurre y agrégalos a la cazuela donde están los ajos y las cebolletas. Rehógalos brevemente y cuela encima el caldo de pollo. Cocina todo durante 20-25 minutos a fuego no muy fuerte.\n\nPasa los ingredientes de la crema (reserva parte del caldo) y el muslo de pollo (picado) al vaso americano. Agrega un poco de perejil picado y tritura. Pasa la crema a una cazuela. Si quedara muy espesa puedes aligerarla agregándole un poco del caldo reservado anteriormente.\n\nPon a calentar un poco de aceite en una sartén, agrega los granos de maíz, tapa y fríelos hasta que exploten. Retira las palomitas a un plato. Dora la piel del muslo de pollo (a fuego suave) en una sartén pequeña hasta que quede crujiente. Pícala con un cuchillo. Sirve la crema, añade por encima las palomitas y la piel de pollo crujiente. Rocía con una gotita de aceite y decora con una hojita de perejil.\n\nConsejo:\n\nPara que la crema no contenga ningún resto de tierra, es importante limpiar bien los champiñones.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201810/crema-champinones-pollo-romero-41247.html', 5, 1),
(43, 'Gazpacho con su guarnición', 'Cubre la placa del horno con papel de hornear, extiende encima las lonchas de jamón y cúbrelas con otro papel. Hornéalas a 190º C durante 12 minutos. Retira, deja que se enfríen y resérvalas.\n\nLava los tomates (reserva 1), trocea y colócalos en un bol grande. Pela el pepino (reserva un cuarto), trocea el resto y añádelo al bol. Pela los ajos, pica e incorpóralos. Corta la cebolleta por la mitad (reserva media) pica el otro trozo y añádelo. Sazona y adereza con 4 cucharadas de aceite y 1 de vinagre. Deja macerar y colócalo en el vaso americano. Tritura y cuélalo. Resérvalo en el frigorífico hasta el momento de consumirlo.\n\nPara la guarnición: pica la cebolleta y el pepino (reservados) en daditos y colócalo en un bol pequeño. Pela el tomate reservado, pícalo también en daditos y añádelo al bol. Pica las hojas de menta y las de los cogollos y agrégalas. Mezcla todo bien y sazona. Humedece 1 oblea de arroz durante 1 minuto en un plato hondo con agua. Extiéndela en un plato y rellénala con una porción de la guarnición. Cierra la oblea de arroz formando un paquetito. Repite el proceso con el resto de las obleas. Sazónalas.\n\nReparte el gazpacho en 4 platos hondos y pon en el centro de cada uno, un paquetito de verdura. Rocía los platos con unas gotas de aceite y salpícalos con unos trocitos de jamón crujiente.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201809/gazpacho-guarnicion-41029.html', 5, 1),
(44, 'Salmorejo', 'Escalda los tomates en una cazuela con agua hirviendo. Retírales la piel \ny colócalos en la jarra de la batidora. Tritúralos bien y cuélalos para eliminar las pepitas.\n\nTrocea la miga de pan e incorpórala. Añade el diente de ajo picado, una pizca de sal y 100 ml de aceite. Tritura todo bien hasta que quede una crema homogénea. Enfríalo en el frigorífico.\n\nCuece los huevos en una cazuela con agua. Refresca, pela y pícalos.\n\nColoca las lonchas de jamón entre dos papeles de horno y hornea a 180ºC., durante 10-15 min.\n\nSirve el salmorejo con el huevo picado y el jamón crujiente también bien picadito.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201808/salmorejo-40897.html', 5, 1),
(45, 'Crema de calabacín con tejas de tomate y queso', 'Limpia los puerros, pica y ponlos a rehogar a una cazuela con un chorrito de aceite. Pela los calabacines, pica y añádelos a la cazuela. Sazona y rehoga la verdura.\nAñade el arroz, vierte abundante agua y cuece todo conjuntamente durante 20 minutos. Salpimienta y tritura. En el momento de servir, calienta la crema.\n\nPon las lentejas en un cazo, cúbrelas con agua, sazona y cuécelas durante 30-35 minutos. Escurre y resérvalas.\n\nPela la zanahoria y el nabo y córtalos en daditos. Suelta el brócoli en florecillas. Cocina toda la verdura al vapor durante 10-12 minutos. Sazona.\n\nRalla el queso y pica los tomates en daditos. Mezcla los 2 ingredientes en un bol. Cubre una bandeja de horno con papel de hornear y extiende encima la mezcla. Cúbrela con otro papel de hornear y otra placa de horno. Introduce en el horno (previamente calentado) a 160º C durante 25 minutos. Con ayuda de unas tijeras, córtalo en porciones.\n\nSirve la crema en 6 platos hondos y agrega las verduras al vapor, las lentejas y las tejas de queso y tomate.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201805/crema-calabacin-tejas-tomate-queso-40252.html', 5, 1),
(46, 'Sopa de verduras y trigo sarraceno', 'Para hacer el caldo, pon a cocer en una cazuela con agua las partes verdes de las cebolletas, de las zanahorias y de los puerros (bien limpios). Sazona, añade unas ramas de perejil y cuécelos durante 15 minutos. Cuela y reserva el caldo.\n\nPela y pica las cebolletas, los puerros y las zanahoria finamente. Pon a pochar en una cazuela con un chorrito de aceite. Lava los champiñones, córtalos en cuartos y láminalos. Añade y rehógalos. Agrega las lentejas rojas, enjuaga el trigo sarraceno y añádelo.\n\nCubre con el caldo y cuece todo durante unos 20 minutos a fuego suave. Pon a punto de sal. Desgrasa con ayuda de un cacillo.\n\nSirve la sopa de verduras y trigo sarraceno. Pica las hojas de menta y salpica la sopa.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201803/sopa-verduras-trigo-sarraceno-39818.html', 5, 1),
(47, 'Sopa zamorana', 'Empezamos haciendo un sofrito en una sartén con aceite, los ajos bien picaditos y los tomates troceados.\n\nCuando esté en su punto, añadimos el chorizo cortado en rodajas.\n\nAparte, tostamos el pan en horno. Después, lo cortamos en trozos, no importa que se rompan.\n\nRealizada esta operación con el pan, ponemos aceite en una cazuela y cuando esté caliente, incorporamos el pan, el caldo caliente y el sofrito con el pimiento.\n\nDejamos hervir media hora, ponemos a punto de sal y servimos.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201801/sopa-zamorana-39004.html', 5, 1),
(48, 'Crema de tomate con espinacas', 'Una vez hayamos limpiado bien las espinacas, las cocemos en agua con sal durante 3 minutos.\n\nDespués, las escurrimos y las picamos. Hacemos bolitas con las espinacas picadas, las rebozamos en harina y huevo, las freímos y reservamos.\n\nEn una cazuela con aceite rehogamos la cebolla, el ajo y el tomate con azúcar y sal.\n\nUna vez bien rehogado, añadimos el caldo y cocemos a fuego lento unos 20 o 30 minutos.\n\nTranscurrido este tiempo pasamos por la batidora y probamos de sal.\n\nPara servir se adorna con unas pocas espinacas picadas y acompañado de las bolitas de espinacas rebozadas.\n\nEste plato también se puede tomar frío, metiendo unos minutos en un frigorífico. Si te gustan los platos fuertes, puedes añadirle salsa picante.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201801/crema-tomate-espinacas-38934.html', 5, 1);
INSERT INTO `recetas` (`id`, `titulo`, `descripcion`, `categoria_id`, `usuario_id`) VALUES
(49, 'Crema de lentejas con medallones de cordero', 'Pela y pica la cebolla y los dientes de ajo y ponlos a dorar en la olla rápida con un poco de aceite. Sazona. Rehoga bien, salpimienta los cuellos de cordero (cada uno cortado en 4 trozos) y agrégalos. Vierte el vino oloroso y dale un hervor para que se evapore el alcohol. Cubre los cuellos con agua, coloca la tapa y cuécelos durante 10 minutos a partir de que comience a salir el vapor.\n\nPasado este tiempo, abre la olla y retira los cuellos de cordero. Resérvalos. Cuela el caldo y ponlo a reducir. Agrega una cucharada de harina de maíz refinada disuelta en agua fría y lígalo. Reserva la salsa caliente.\n\nLava y pica el puerro. Pela y pica la zanahoria y pon todo a rehogar en una cazuela con un chorrito de aceite. Cuando estén rehogados, agrega la salsa de tomate, las lentejas, el arroz, la hoja de laurel y una buena cantidad de agua. Sazona, tápalas y cuécelas durante 18-20 minutos. Tritúralas hasta que quede una crema ligera. Pon a punto de sal.\n\nPasa los trozos de cordero por harina, huevo batido y pan rallado. Fríelos en una sartén con aceite. Escúrrelos sobre un plato cubierto con papel absorbente de cocina.\n\nSirve la crema de lentejas y coloca en cada plato un par de medallones de cordero. Salpica los platos con la salsa y espolvoréalos con un poco perejil picado.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201801/crema-lentejas-medallones-cordero-38956.html', 5, 1),
(50, 'Sopa de ajo', 'Pela los dientes de ajo y córtalos en láminas. Retira la parte inferior y superior de los ajos frescos, córtalos en cilindros y agrégalos.\n\nPon un poco de aceite a calentar en una cazuela grande, agrega los ajos (secos y frescos) y rehógalos un poco, teniendo cuidado de que no se doren.\n\nCon un cuchillo de sierra corta el pan en rebanadas finas.\n\nAñade el pan, el jamón picadito, el pimentón y la guindilla. Vierte 1 litro y medio de agua y añade la pastilla de caldo de pollo. Cocina todo durante 20-25 minutos.\n\nCuando la sopa esté hecha, remuévela bien con una varilla hasta que el pan y los ajos se deshagan. Sirve la sopa de ajo y adorna los platos con unas hojas de perejil.\n\nConsejo:\n\nEsta receta aguanta perfectamente la congelación, así que si os sobra, podréis congelarla para cualquier otra ocasión.\nhttps://www.hogarmania.com/cocina/recetas/sopas-cremas/201712/sopa-karlos-arguinano-38482.html', 5, 1),
(51, 'Arroz cremoso de boletus y calabaza', 'Para hacer el caldo: limpia el puerro y córtalo en tres trozos. Agrega 3 dientes de ajo (con piel) aplastados, los tallos de los boletus (troceados) y el tallo de la cebolleta. Cubre con abundante agua (2 l) y sazona. Cuece todo durante 15-20 minutos.\n\nPela y pica la cebolleta en daditos y ponlos a rehogar en una cazuela con aceite. Pela y pica la calabaza y añádela. Pica los sombreritos de las setas y agrégalos a la cazuela. Sazona y rehoga un poco.\n\nA continuación añade el arroz y rehógalo un poco. Vierte la mitad del caldo de verduras y cocina el arroz sin dejar de remover hasta que absorba todo el caldo. Vierte poco a poco el resto del caldo y sigue removiéndolo hasta conseguir el punto deseado (18-20 minutos aproximadamente).\n\nRalla encima el queso, mezcla bien y espolvoréalo con perejil picado. Sirve y decora con una hojita de perejil.\n\nConsejo:\n\nRespecto a la cantidad de caldo necesario para hacer un arroz cremoso como el de hoy, deberéis multiplicar por cuatro la cantidad de arroz.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201809/arroz-cremoso-boletus-calabaza-41191.html', 6, 1),
(52, 'Arroz negro con calamares', 'Pela y pica en daditos el diente de ajo, la cebolleta, el puerro y la zanahoria. Ponlos a rehogar en la olla rápida con un chorrito de aceite.\n\nLimpia los calamares. Corta los cuerpos en aros y los tentáculos por la mitad. Cuando la verdura esté dorada, añade el calamar troceado. Sazona, cierra la olla y cocínalos durante 5 minutos.\n\nPasa el pochado de verduras y calamares a una paella. Añade el arroz y rehógalo un poco. Incorpora el caldo para paella y las tintas. Mezcla y cocínalo 10 minutos a fuego fuerte y otros 10 a fuego suave. Sirve y adorna con el limón y con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201806/arroz-negro-calamares-40606.html', 6, 1),
(53, 'Fideuá de sepia y cigala', 'Trocea la cebolla y la zanahoria y ponlas a pochar en una cazuela con un chorro de aceite de oliva y una pizca de sal. Introduce la cabeza y las pinzas de la cigala y saltea. Vierte el whisky y deja que se evapore. Agrega la mitad de la salsa de tomate y el caldo de pescado. Remueve y deja que se cocine el caldo durante 20 minutos. Cuélalo.\n\nTuesta los fideos con una gotita de aceite de oliva en una sartén, hasta que cojan color dorado. Corta la sepia y la cigala en daditos y márcalas en una sartén bien caliente con un chorro de aceite de oliva. Retira y sazona.\n\nVierte el vino blanco a la sartén para que coja el sabor del fondo y deja que reduzca. Agrega el resto de la salsa de tomate y deja que reduzca. Condimenta con las especias para paella. Incorpora la sepia y la cigala. Agrega los fideos tostados y cúbrelos con el caldo. Deja cocinar la fideuá unos 5 minutos. \nApaga el fuego y tapa la fideuá con un paño de cocina. Déjala reposar 10-15 minutos. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201804/fideua-sepia-cigala-39750.html', 6, 1),
(54, 'Arroz cremoso a la naranja', 'Pica el puerro y la zanahoria y rehógalos a fuego suave en una cazuela con un chorrito de aceite de oliva durante 10 minutos. Pica las setas y añádelas. Incorpora el arroz. Remueve y rehoga.\n\nSaca tiras de cáscara de naranja sin la parte blanca. Agrégalas al arroz. Vierte el caldo. Deja que se cocine a fuego suave durante 18-20 minutos.\n\nRetira las cáscaras de naranja. Sazona y añade la mantequilla. Ralla el queso sobre el arroz y remueve para que el arroz quede cremoso.\n\nPica tres lonchas de jamón de pato e incorpóralas. Mezcla.\n\nPresenta el arroz cremoso a la naranja con dos lonchas de jamón de pato y un poco de queso rallado por encima. Condimenta con perejil picado. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201804/arroz-cremoso-naranja-39610.html', 6, 1),
(55, 'Arroz cremoso al horno con pato confitado', 'Pela y pica la cebolleta, el ajo y el pimiento verde y ponlos a pochar en una cazuela baja con un poco de aceite de oliva virgen extra.\n\nRetira la piel y el hueso del muslo de pato confitado y desmígalo.\n\nAñade el confit desmigado a la verdura pochada y rehoga un poco. Incorpora el arroz, rehoga 2 minutos más y añade el caldo caliente junto al azafrán. Deja que del primer hervor e introducir al horno a 200ºC durante 10 minutos.\n\nEn una sartén con un poco de aceite de oliva saltea los espárragos trigueros partidos por la mitad.\n\nSaca el arroz del horno, remueve bien y vuelve a meter al horno otros 10 minutos más. Pasado este tiempo, saca del horno, añade el queso crema y vuelve a remover bien hasta que quede integrado el queso en el arroz.\n\nEspolvorea con perejil picado y coloca los espárragos trigueros.\n\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201803/arroz-cremoso-horno-pato-confitado-39678.html', 6, 1),
(56, 'Acelgas con arroz', 'Pela y pica la cebolleta y los ajos en daditos y ponlos a rehogar a fuego suave en una tartera con un poco de aceite.\n\nLimpia las acelgas y separa las pencas de las hojas. Pica finamente las hojas. Retira los hilos de las pencas y córtalas en trozos de 2x2cm. Agrega las acelgas a la cazuela. Sazona y rehoga el conjunto.\n\nAgrega el pimentón, dale un par de vueltas y vierte el tomate triturado. Rehoga brevemente.\n\nIncorpora el arroz y el agua (el triple que de arroz). Pon a punto de sal y cocínalo durante 20 minutos. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201801/acelgas-arroz-38792.html', 6, 1),
(57, 'Arroz con mejillones en escabeche', 'Limpia los mejillones retirándoles cualquier adherencia que puedan tener. Retírales las barbas. Pon a calentar 100 ml de vino blanco en una tartera. Agrega los mejillones, tapa y espera a que se abran. Retira las conchas y reserva la carne. Cuela el caldo que han soltado los mejillones y resérvalo.\n\nPara hacer el escabeche, pon a calentar 150 ml de aceite, 150 ml de vinagre, el resto del vino y la salsa de tomate. Corta 1 cebolleta en 4 trozos y agrégalos. Incorpora los granos de pimienta y la hoja de laurel. Aplasta dos dientes de ajo (con piel) y agrégalos. Cuece todo durante 10 minutos. Introduce los mejillones y cocínalos durante 5 minutos más. Deja que reposen durante 30 minutos.\n\nPela y pica finamente los otros 2 dientes de ajo, la otra cebolleta y el pimiento. Ponlos a pochar en una tartera con un chorrito de aceite. Sazona.\n\nAñade el arroz, rehógalo un poco y vierte el caldo que han soltado los mejillones. Vierte el doble de agua que de arroz, sazona y cocínalo durante 18 minutos. Deja que repose un poco y añade los mejillones.\n\nRocía el arroz con un poco del escabeche. Sirve y adorna con unas hojas de perejil.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201802/arroz-mejillones-escabeche-39038.html', 6, 1),
(58, 'Paella de conejo', 'Picamos fina toda la verdura y la ponemos a rehogar con aceite en una paellera.\n\nCuando estén doradas añadimos el conejo cortado en trocitos y sazonado.\n\nEsperamos 5 minutos hasta que esté doradito. Entonces, echamos el arroz y la sal y lo rehogamos.\n\nPosteriormente vertemos el agua hirviendo y el azafran. Lo dejamos cocer a fuego fuerte durante 10 minutos y probamos de sal.\n\nLuego lo metemos al horno y lo tenemos otros 10 minutos. Servir caliente y con el personal sentado y listo para comer.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201801/paella-conejo-38870.html', 6, 1),
(59, 'Quinoa con puré de verduras dulces', 'Deja reposar 1 litro de agua del grifo entre media hora y una hora para que pierda el cloro. Por otro lado, pon el alga kombu a remojo.\n\nLava la quinoa con agua fría, escúrrela y ponla en una cazuela. Añade el alga con su agua de remojo. Agrega la zanahoria cortada en daditos. Vierte el doble de agua y sazona. Tapa y deja que hierva. Baja el fuego al mínimo y deja que se cocine hasta que el agua se evapore completamente, unos 20 minutos.\n\nPara el puré de verduras, pela, trocea y sofríe la cebolla en una sartén con aceite de oliva hasta que se caramelice. Agrega la remolacha pelada y cortada en daditos. Sazona. Vierte agua hasta cubrir la verdura. Introduce la ramita de canela. Tapa y deja que hierva. Después baja el fuego y deja que se cocine a fuego suave, unos 15 minutos. Retira la canela y pasa la verdura por el pasapurés.\n\nColoca la quinoa en un plato. Vierte por encima el puré dulce. Espolvorea con las hojas de las zanahorias picadas. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201705/quinoa-pure-verduras-dulces-35869.html', 6, 1),
(60, 'Risotto de espirulina y ortigas', 'Para la salsa de ortigas, escalda las hojas de ortiga en una cazuela con agua hirviendo durante unos segundos. Retíralas y refréscalas en agua con hielo. Escurre las ortigas e introdúcelas en un vaso batidor junto con el queso crema y la espirulina. Tritura y reserva la salsa.\n\nDerrite la mantequilla en una cazuela. Incorpora las chalotas finamente picadas y deja que se pochen hasta que queden traslúcidas. Sazona. Introduce el arroz y rehoga. Vierte poco a poco el vino blanco y remueve. Ve añadiendo el caldo de verduras poco a poco sin dejar de remover. Salpimienta.\n\nIncorpora la salsa de ortigas y espirulina y el queso parmesano rallado. Sigue cocinando sin parar de remover hasta que el arroz quede al dente.\n\nEmplata el risotto con un poco de queso parmesano rallado por encima. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/arroces-cereales/201705/risotto-espirulina-ortigas-35821.html', 6, 1),
(61, 'Bizcocho de castañas', 'Unta el molde con un poco de mantequilla (10g) y espolvoréalo con un poco de harina (25g). Espárcela bien y retira el exceso.\n\nCasca los huevos y ponlos en un bol. Móntalos con la batidora eléctrica y vete añadiendo el azúcar. Monta todo bien. Añade la mantequilla y sigue batiendo durante un par de minutos.\n\nMezcla en otro bol la levadura con la harina y el puré de castañas. Mezcla y añádelo al bol de los huevos montados. Remueve suavemente hasta que queden bien integrados.\n\nVierte la mezcla al molde y hornéala (horno precalentado) a 180º C durante 40 minutos aproximadamente.\n\nDeja que se enfríe, desmolda y espolvorea el bizcocho con un poco de azúcar glas. Adórnalo con unas hojas de menta. Sirve.\n\nConsejo:\n\nEl puré de castañas se vende en supermercados y tiendas dietéticas. Pero si tenéis castañas lo podéis hacer vosotros mismos. Basta con hacer un corte (muesca) a las castañas y cocerlas durante 40 minutos en una cazuela con agua y una pizca de sal. Después habrá que pelarlas y pasarlas por el pasapurés.\nhttps://www.hogarmania.com/cocina/recetas/postres/201810/bizcocho-castanas-41373.html', 7, 1),
(62, 'Bizcocho de chocolate sin gluten', 'Unta el molde con mantequilla y espolvoréalo con un poco de harina de garbanzo. Sacúdelo para que caiga el exceso de harina.\n\nTrocea el chocolate, colócalo en un bol al baño María. Agrega la mantequilla y espera a que se funda.\n\nBate un poco los huevos (a temperatura ambiente) con 200 gramos de azúcar glas. Cuando estén mezclados introduce la batidora de varillas eléctrica y monta todo muy bien.\n\nCuando la mantequilla y el chocolate estén fundidos, retira el bol del baño María e incorpora a la mezcla de los huevos montados. Pica a cuchillo las avellanas y las nueces e incorpóralas. Mezcla todo con movimientos suaves y envolventes.\n\nVierte la mezcla en el molde y hornéala a 180º C durante 20-25 minutos. Retira y deja que se enfríe antes de desmoldar.\n\nPon el yogur natural en un vaso batidor. Añade unas hojas de menta y tritúralas con la batidora eléctrica.\n\nDecora el bizcocho con el resto del azúcar glas y acompáñalo con el yogur.\n\nConsejo:\n\nSi hay algún celiaco, no os preocupéis porque en vez de espolvorear el molde con harina, podéis hacerlo con azúcar glas.\nhttps://www.hogarmania.com/cocina/recetas/postres/201810/bizcocho-chocolate-41259.html', 7, 1),
(63, 'Copa de higos', 'Pon el vinagre de Módena en una sartén. Agrega el azúcar y las pasas y deja que reduzca hasta que espese. Reserva y deja que se enfríe.\n\nPela y pica los higos. Derrite la mantequilla en una sartén y saltea los higos. Mezcla la nata montada con los yogures en un bol.\n\nReparte la reducción en 4 copas, rellénalas con la mezcla de yogur y nata y reparte encima los higos salteados.\n\nDecora las copas con la almendra tostada y unas hojas de menta. Sirve.\n\nConsejo:\n\nEs conveniente mantener los yogures y la nata en el frigorífico hasta el momento de montar las copas.\nhttps://www.hogarmania.com/cocina/recetas/postres/201809/copa-higos-41127.html', 7, 1),
(64, 'Tostadas de melocotón y queso mascarpone', 'Pela los melocotones y pon las cáscaras en una cazuela (reserva los melocotones). Añade el agua, el anís, los anises estrellados y el azúcar. Pon a calentar y cuece los ingredientes durante 5 minutos hasta conseguir un jarabe ligero. Deja que se enfríe.\n\nCorta las rebanadas de pan por la mitad. Bate los huevos en un recipiente, introduce las rebanadas de pan en el huevo, escurre y fríelas por todos lados en una sartén con aceite. Escúrrelas sobre un plato cubierto con papel absorbente de cocina.\n\nPon la mantequilla a calentar en una sartén. Pica los melocotones en daditos, añade y saltéalos. Espolvorea con menta picada. Pon el mascarpone en un bol y remuévelo con una cuchara. Cuela el jarabe sobre las rebanadas de pan y deja que se empapen bien. Retíralas.\n\nSirve en cada plato una tostada, cúbrela con un poco de queso y unos trocitos de melocotón. Decora cada uno con unos trozos de melocotón y unas hojas de menta.\n\nConsejo:\n\nEl queso mascarpone suelta suero, así que antes de utilizarlo en cualquier receta es conveniente removerlo bien.\nhttps://www.hogarmania.com/cocina/recetas/postres/201809/tostadas-melocoton-queso-mascarpone-41183.html', 7, 1),
(65, 'Flan de huevo', 'Precalienta el horno a 160ºC.\n\nPara el caramelo, echa la mitad del azúcar en un cazo y remueve. Cuando empiece a dorarse agrega el resto del azúcar y sigue removiendo hasta que coja un color uniforme. Extiéndelo en los moldes. Deja que se enfríe.\n\nPon a infusionar la leche y la nata en una cazuela con un trozo de cáscara de limón y de naranja. Corta la vaina de vainilla por la mitad y saca las semillas. Introdúcelas junto con la vaina en la cazuela. Dale un hervor y deja templar.\n\nPon las yemas y los huevos en un bol. Agrega el azúcar y bate. Cuela la leche templada sobre el bol y bate. Vierte la mezcla en los moldes.\n\nColoca los moldes al baño maría y hornea a 160ºC durante 45-50 minutos.\n\nDeja enfriar, desmolda y sirve.\nhttps://www.hogarmania.com/cocina/recetas/postres/201808/flan-huevo-40923.html', 7, 1),
(66, 'Bizcocho de almendra', 'Coloca las claras en un bol, móntalas con la batidora eléctrica. Añade 35 gramos de azúcar glas poco a poco y sigue montándolas.\n\nMezcla en otro bol la harina de almendra con 110 gramos de azúcar glas. Agrega las claras montadas y mezcla suavemente.\n\nCubre el fondo de la placa de horno con un trozo de papel de horno. Forra por dentro 4 moldes (tipo cortapastas) con papel de horno (el papel tiene que sobresalir unos 3-4 centímetros por la altura del molde) y reparte la masa. Hornéalos a 200ºC durante 30 minutos. Retira y deja que se enfríen.\n\nRetira los bizcochos de los moldes, córtalos por la mitad y rellénalos con la crema de vainilla.\n\nSirve el bizcocho de almendra, espolvoréalo con el resto de azúcar glas y adorna con unas hojas de menta.\nhttps://www.hogarmania.com/cocina/recetas/postres/201806/bizcocho-almendra-40508.html', 7, 1),
(67, 'Palmeras con chocolate', 'Estirar el hojaldre con el rodillo y azúcar.\n\nCortar el hojaldre en tiras y formar palmeritas.\n\nHornear a 180ºC durante 30 minutos.\n\nDerretir el chocolate en el microondas o al baño maría.\n\nFormar un cucurucho con papel de horno y decorar las palmeras con hilos de chocolate.\nhttps://www.hogarmania.com/cocina/recetas/postres/201806/palmeras-chocolate-40452.html', 7, 1),
(68, 'Natillas de fresa con virutas de chocolate', 'Limpia las fresas (reserva 2) y tritúralas con la batidora eléctrica. Cuela el puré resultante y resérvalo. Corta en trocitos las otras dos fresas y resérvalas.\n\nColoca las yemas en un bol grande, agrega un chorrito de leche y mézclalas bien con una varilla. Añade el azúcar, el resto de leche y sigue batiendo con la varilla.\n\nVierte todo en una cazuela y calienta a fuego suave hasta que casi hierva sin dejar de remover con la varilla suavemente. Añade el puré de fresas fuera del fuego y sigue mezclando. Deja enfriar en una jarra.\n\nReparte las natillas en 4 copas. Ralla encima un poco de chocolate y adorna con los trocitos de fresa y unas hojas de menta. Sirve.\n\nConsejo:\n\nHay que tener mucho cuidado de que la leche con las yemas no hierva ya que la mezcla se cortaría. Para eso puedes añadir un cucharadita de harina de maíz refinada.\nhttps://www.hogarmania.com/cocina/recetas/postres/201806/natillas-fresa-virutas-chocolate-40392.html', 7, 1),
(69, 'Bizcocho de piña y ron', 'Pela la piña y córtala en lonchas de medio centímetro de grosor. Unta un molde con mantequilla y harina y coloca encima (de lado a lado) una tira de papel de hornear dejando una pestaña por cada lado (de esta manera será más fácil desmoldarlo). Distribuye encima las lonchas de piña.\n\nCasca los huevos y ponlos en un bol grande. Bátelos bien con una batidora de varillas eléctrica. Agrega el interior de la vaina de vainilla y 75 g de azúcar. Sigue batiéndolos hasta que espumen bien. Añade la harina tamizada y mezcla suavemente. Vierte la mezcla sobre la piña y hornea la masa a 190º C durante 20 minutos.\n\nPara hacer el caramelo de ron: pon a calentar en una sartén el resto de azúcar hasta que se funda. Vierte el ron, mezcla bien y añade el agua. No te asustes si el caramelo se cristaliza y sigue removiendo la mezcla hasta que quede totalmente líquido. Deja reducir hasta que coja un poco de cuerpo.\n\nDesmolda el bizcocho y úntalo con el caramelo de ron. Decora con los physalis y unas hojas de menta. Sirve.\nhttps://www.hogarmania.com/cocina/recetas/postres/201805/bizcocho-pina-40218.html', 7, 1),
(70, 'Mousse de mango', 'Pon la gelatina en un bol con agua fría para que se ablande. Pon a calentar un chorrito de agua en un cazo e introduce la gelatina (remojada y escurrida). Remueve hasta que se disuelva.\n\nPela los mangos, trocea y colócalos en la jarra batidora. Tritúralos. Añade un poco de ralladura de lima, el zumo de la lima, el azúcar y la gelatina diluida en agua. Vuelve a triturar hasta que todos los ingredientes queden bien integrados.\n\nColoca las claras en un bol. Móntalas con una batidora de varillas eléctrica. Añade el puré de mango y mezcla con movimientos suaves y envolventes. Reparte la mousse en 6 copas (o vasos) e introdúcelas en el frigorífico durante 1 hora como mínimo.\n\nTuesta las almendras y repártelas sobre las copas. Adorna con unas hojas de menta. Sirve.\n\nConsejo:\n\nTambién puedes preparar este postre con otras frutas, como melocotón o plátano.\nhttps://www.hogarmania.com/cocina/recetas/postres/201804/mousse-mango-40005.html', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `password`) VALUES
(1, 'manololama54', 'fernando_n_g@hotmail.com', 'manololama54'),
(2, 'nacho', 'naxovr@gmail.com', 'nacho');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
