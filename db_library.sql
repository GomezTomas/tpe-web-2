-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2022 a las 21:01:30
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_library`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_autor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_autor`, `nombre`, `apellido`, `nacionalidad`) VALUES
(14, 'Joanne', 'Rowling', 'Reino Unido'),
(15, 'Paulo', 'Coelho', 'Brasil'),
(16, 'Dan', 'Brown', 'Estados Unidos'),
(17, 'Margaret', 'Mitchell', 'Estados Unidos'),
(18, 'Miguel', 'de Cervantes', 'España'),
(19, 'Charles', 'Dickens', 'Reino Unido'),
(20, 'Julio', 'Verne', 'Francia'),
(21, 'George', 'Orwell', 'Reino Unido'),
(22, 'Roald', 'Dahl', 'Reino Unido'),
(23, 'Edgar Allan', 'Poe', 'Estados Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `descripcion` varchar(2500) NOT NULL,
  `id_autor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `genero`, `descripcion`, `id_autor`) VALUES
(1, 'Rebelión en la granja', 'Novela', 'Los animales de la Granja Solariega, alentados un día por el Viejo Mayor, un cerdo que antes de morir les explicó a todos sus ideas, llevan a cabo una revolución en la que consiguen expulsar al granjero Howard Jones y crear sus propias reglas (los Siete Mandamientos)', 21),
(2, 'Matilda', 'Novela', 'Matilda Wormwood es una niña sumamente brillante. Sin haber cumplido los cinco años, ya había desarrollado habilidades increíbles para su edad, leído a numerosos autores y atesorado asombrosos conocimientos. Sus mediocres padres nunca se preocupan por ella y la obligan a mirar la televisión negándose a comprarle libros; además de dejarla sola todas las tardes', 22),
(4, 'Harry Potter y la cámara secreta', 'Novela', 'Tras el primer curso de Harry en Hogwarts, este regresa al hogar de sus tíos Vernon y Petunia Dursley para pasar el verano allí. Un día, en la habitación de Harry aparece un ser conocido como elfo doméstico llamado Dobby, quien le advierte que no debe asistir a su segundo curso del colegio puesto que estará en peligro mortal; sin embargo, Harry hace caso omiso a las palabras del elfo. Después de esto, Ron Weasley, y sus hermanos Fred y George llegan a su casa en un coche volador, escapando con Harry.', 14),
(5, 'Charlie y la fábrica de chocolate', 'Novela', 'Charlie Bucket es un niño que vive con sus padres y sus abuelos maternos y paternos en una casa. Son pobres y pasan hambre y frío, sobre todo cuando su padre es despedido de su trabajo. Charlie y su abuelo Joe sueñan con visitar la Fábrica de chocolate de Willy Wonka, que lleva años cerrada al público para evitar espionaje industrial, y el sueño se hará realidad. Willy Wonka, el dueño de la fábrica, pone en circulación dentro de sus barras de chocolate, cinco boletos (o billetes) dorados, que pueden estar en cualquier barra de chocolate, en cualquier tienda, y en cualquier país. Estos permitirán, a los cinco niños o niñas que los encuentren, visitar esta fábrica, llevarse un cargamento de chocolates y golosinas de por vida y, además, el ganador recibirá un premio muy especial. Augustus Gloop, Veruca Salt, Violet Beauregarde, Mike Tevé y Charlie Bucket y Mario son los afortunados ganadores. Todos entran con sus padres, menos Charlie, que va acompañado por el abuelo paterno Joe.', 22),
(6, 'Don Quijote de la Mancha', 'Novela', 'En Don Quijote de la Mancha se narra la historia de un hidalgo maduro que, por la excesiva lectura de libros de caballería, se vuelve loco y concibe la idea de hacerse caballero andante y así recrear la antigua caballería. Pertrechado de armas y caballo, \"Rocinante\", y, desde la segunda salida acompañado por un paisano llamado Sancho Panza, que le sirve de escudero, corre mil aventuras de las que generalmente sale malparado. La tercera vez que vuelve, vencido por el Caballero de la Blanca Luna, es ya para morir. En la primera parte se entrecruzan con la línea argumental novelas cortas de diferentes tipos.', 18),
(7, '1984', 'Novela', 'El personaje principal de la novela es Winston Smith, que trabaja en el Ministerio de la Verdad. Su cometido es reescribir la historia, ironizando así el ideal declarado en el nombre del Ministerio. Tras años trabajando para dicho Ministerio, Winston Smith se va volviendo consciente de que los retoques de la historia en los que consiste su trabajo son solo una parte de la gran farsa en la que se basa su gobierno, y descubre la falsedad intencionada de todas las informaciones procedentes del Partido Único. En su ansia de evadir la omnipresente vigilancia del Gran Hermano (que llega inclusive a todas las casas) encuentra el amor de una joven rebelde llamada Julia, también desengañada del sistema político; ambos encarnan así una resistencia de dos contra una sociedad que se vigila a sí misma.', 21),
(8, 'De la Tierra a la Luna', 'Novela', 'Tras terminar la Guerra de Secesión estadounidense, el presidente del Gun-Club, Impey Barbicane, propone la fabricación de un cañón gigante para enviar un proyectil a la Luna. Junto con el secretario, J. T. Maston, y tras ser informados de los detalles astronómicos por el observatorio de Cambridge, deben resolver una serie de cuestiones: características del cañón, forma y tamaño del proyectil, clase y cantidad de pólvora, ubicación del sitio de lanzamiento, financiación de la empresa.', 20),
(9, 'Viaje al centro de la Tierra', 'Novela', 'Axel reside en una vieja casa situada en la Königstrasse, en Hamburgo, junto a su tío Otto Lidenbrock, un prestigioso profesor de mineralogía a quien describe como un hombre temido por su fuerte carácter pero muy original; su ahijada Gräuben y su sirvienta, Marta. Un día el profesor lo llama a su despacho, donde le enseña un manuscrito de gran valor del Heimskringla, de Snorri Sturluson. Pero ese libro esconde una gran sorpresa: un pergamino de origen rúnico que oculta un criptograma. Tras muchos esfuerzos y gracias a un descubrimiento casual de Axel, logran descifrarlo; es un texto del alquimista islandés Arne Saknussemm2​ quien revela cómo llegar al centro de la tierra. El profesor, eufórico, decide ir al lugar indicado en el pergamino junto con su sobrino Axel.', 20),
(10, 'El pozo y el péndulo', 'Cuento', 'El narrador/protagonista comienza el relato, ya agotado, en una oscura celda en donde la inquisición española encierra a las personas que condena, y donde la tortura que esta aplica consiste en la soledad, el abandono, la oscuridad, el frío y el hambre. El torturado protagonista se encuentra atado en casi su totalidad y experimenta la angustia de conocer su próxima muerte pues un péndulo desciende hacia él. Luego de medir el tamaño de su celda, este descubre una fosa profunda con agua ubicada en el centro del sitio', 23),
(11, 'Tiempos difíciles', 'Novela', 'Transcurre en Coketown, una ciudad ficticia del norte de la Inglaterra victoriana. Se considera que la descripción está basada, al menos parcialmente, en la ciudad de Preston. Se nos dan perspectivas del momento desde dos puntos de vista muy diferentes: el de la clase proletaria, que cree que el trabajo es su único modelo de vida, (además de resultarles necesario para subsistir), y el de la clase alta, que controla las fábricas y mantiene en condiciones pésimas a sus obreros. También se nos muestra otro tipo de vida: el de la gente del circo, que se aparta completamente de la que llevan los dos grupos anteriormente nombrados. Dickens nos muestra todo esto con un trasfondo irónico, sin hacer una crítica clara de la sociedad de su época hasta las últimas páginas de la obra.', 19),
(12, 'Ángeles y demonios', 'Novela', 'El profesor de simbología Robert Langdon recibe una misteriosa llamada a las tantas de la madrugada y se ve envuelto en una persecución en la que tratará de evitar la destrucción de la Ciudad del Vaticano. Acompañado de la científica Vittoria Vetra, ambos deberán encontrar la guarida de los Illuminati para detener a un hombre cuyo propósito es hacer explotar la antimateria y destruir el altar principal de la Iglesia junto a todas las personas que estén a su alrededor.', 16),
(13, 'Harry Potter y el prisionero de Azkaban', 'Novela', 'El verano se acerca a su fin y encuentra a Harry Potter de 13 años en la casa de sus tíos, los Dursley. Pero luego de un incidente en que el muchacho no logra controlar su temperamento y hechiza a una visitante –Marge, la hermana de Vernon Dursley–, el muchacho huye a bordo del Autobús Noctámbulo rumbo a Londres. Así se entera de la noticia que mantiene en vilo al mundo mágico: un peligroso asesino ha burlado a los carceleros de Azkaban y se ha dado a la fuga.', 14),
(14, 'El corazón delator', 'Cuento', 'El cuento es relatado por un narrador que insiste desde el primer momento en que es una persona normal, aunque sus sentidos son muy agudos. El anciano con el que él suele vivir tiene un ojo nublado y azulado, como si fuera un ojo de buitre. Esto causa una gran ansiedad al narrador, que llega al punto de querer matarlo. Un día que descubre el ojo del anciano abierto mientras duerme, se decide y lo asfixia con su propio colchón. Después corta el cadáver y lo esconde bajo la tarima del suelo, y borra todas las huellas para que no encuentren pruebas de que él lo mató. La policía acude a inspeccionar la casa porque uno de los vecinos dice que ha escuchado un grito. El asesino los invita, tranquilo, les enseña la casa y los conduce al cuarto donde está el cadáver desmembrado. Pronto le parece escuchar un ruido que va creciendo. Al pensar horrorizado que es el corazón del viejo, que lo está delatando, se derrumba y confiesa, pidiendo a voces a los policías que levanten las tablas del suelo.', 23),
(15, 'Harry Potter y la piedra filosofal', 'Novela', 'Harry Potter crece en la casa de sus tíos, los Dursley, quienes le ocultan su verdadera historia familiar; al cumplir Harry once años de edad, empiezan a llegarle cartas de remitente desconocido, que van aumentando en número a medida que sus tíos no dejan que las abra. Las mismas traen la noticia de que el niño ha sido admitido en el Colegio Hogwarts de Magia y Hechicería, ya que, al igual que sus padres, es mago.   El Colegio Hogwarts es el principal escenario donde suceden los hechos de la serie de novelas. Se descubre entonces que los Potter no murieron en un accidente de coche como se le había dicho a Harry, sino que habían sido asesinados en la noche de Halloween por un hechicero tenebroso conocido como lord Voldemort, quien había aterrorizado a la comunidad mágica británica años atrás. Sin embargo, algo ocurrió esa noche: Voldemort consiguió matar al matrimonio Potter pero no pudo asesinar al bebé, perdió su cuerpo y le dejó al niño una cicatriz permanente en forma de rayo en su frente.', 14),
(16, 'El código Da Vinci', 'Novela', 'El libro narra los intentos de Robert Langdon, Profesor de Iconografía Religiosa de la Universidad Harvard, para resolver el misterioso asesinato de Jacques Saunière ocurrido en el Museo del Louvre en París. El cuerpo de Saunière fue encontrado en el ala Denon del Louvre en la postura del Hombre de Vitruvio (dibujo realizado por Leonardo da Vinci) con un mensaje críptico escrito a su costado y un pentáculo dibujado en el pecho con su propia sangre. La interpretación que realiza tanto Langdon como la agente francesa Sophie Neveu, nieta de Saunière, los llevan a analizar otras obras como la Mona Lisa', 16),
(17, 'El alquimista', 'Novela', 'En Andalucía, un joven pastor pasea por las llanuras contemplando la naturaleza. El joven Santiago tiene un sueño repetido mientras descansa con sus ovejas en un pasto andaluz, por lo que decide acudir a una gitana para que le interprete el sueño. Después de quedar descontento con la respuesta que recibe, se sienta en un banco de la plaza a leer un libro y conoce a un anciano que dice ser el rey de Salem. Tras tener una conversación con él, en la que le deja claro que es alguien muy especial, Santiago decide emprender un viaje por el norte de África en busca de un tesoro. En su camino conocerá a un sinfín de personas que, como él, buscan su propia Leyenda Personal.  Cuando llega a una ciudad del norte de África, decide buscar a alguien que lo lleve a las pirámides. En un bar conoce a un hombre al que confía su dinero y lo pierde todo, porque resulta ser un ladrón. El muchacho, desolado y completamente indignado, decide buscar dinero para regresar a España con sus ovejas. Así es que se encuentra un vendedor de vidrios para el que trabaja, hace que mejore su negocio y consigue el dinero para regresar a España y comprar ovejas, pero lo que quiere es ver realizada su Leyenda Personal, razón por la cual se embarca en una caravana que lo llevará hasta Egipto, exactamente a un oasis. Durante su viaje conoce a un estudiante de alquimia inglés cuyo sueño es transformar el metal en oro; con él, aprende el idioma del desierto, es decir, el idioma del mundo, el cual se compone de señales.', 15),
(18, 'Veinte mil leguas de viaje submarino', 'Novela', 'Veinte mil leguas de viaje submarino es una obra narrada en primera persona por el profesor francés Pierre Aronnax, notable biólogo que es hecho prisionero por el Capitán Nemo y es conducido por los océanos a bordo del submarino Nautilus, en compañía de su criado Conseil y el arponero canadiense Ned Land.  La historia comienza con una expedición a bordo de un buque de la marina de guerra estadounidense: el Abraham Lincoln, al mando del almirante Farragut, que busca dar caza a un extraño cetáceo, con un largo y filoso cuerno en el hocico (luego se demuestra que el animal es un narval), que había ocasionado daños a diversas embarcaciones. Durante la expedición, los protagonistas se ven lanzados por la borda del buque como resultado de una embestida del animal. El profesor Aronnax y su acompañante Conseil son rescatados por el arponero canadiense Ned Land que también cayó al agua con ellos, después del impacto de la criatura, y los tres logran llegar a nado a un lugar seguro. Una vez a salvo, descubren que no se encuentran realmente en una isla, sino sobre una estructura metálica: un submarino a flote a cuyo interior acceden por una compuerta, llevados por ocho enmascarados.', 20),
(19, 'Lo que el viento se llevó', 'Novela', 'El argumento de la novela comienza en abril de 1861, justo en el mes y año en que empieza oficialmente la Guerra de Secesión.  La novela arranca con una escena en que Scarlett O`Hara, una de las hijas del hacendado esclavista irlandés Gerald O`Hara y su esposa Ellen O`Hara (una aristócrata sureña de ascendencia francesa), se encuentra en la plantación (el equivalente estadounidense sureño de una hacienda hispanoamericana) de su padre llamada Tara, charlando animadamente con dos de sus numerosos pretendientes, los hermanos gemelos Tarleton. Scarlett es la chica más deseada de la región por su belleza, elegancia y coquetería. Ella espera emocionada el próximo banquete que van a ofrecer sus vecinos de la familia Wilkes. Pero toda su emoción desaparece cuando se entera por boca de los gemelos que Ashley Wilkes (el hijo varón de la familia que ofrece la barbacoa y baile) podría anunciar su compromiso matrimonial con su prima Melanie Hamilton durante la fiesta.', 17),
(20, 'La vuelta al mundo en ochenta días', 'Novela', 'El flemático y solitario caballero británico Phileas Fogg entra en una discusión con sus colegas del Reform Club,​ al enterarse de que un ladrón robó cincuenta y cinco mil libras del Banco de Inglaterra. Convencido de que el ladrón podría haber huido muy lejos, propone una arriesgada apuesta en el que compromete la mitad de su fortuna, convencido de poder dar la vuelta al mundo en solo ochenta días usando los medios disponibles en la segunda mitad del siglo XIX y siguiendo el proyecto publicado en el Morning Chronicle, su periódico de lectura cotidiana. Así, Fogg abandonará su vida de escrupulosa disciplina para encarar el extraño periplo, junto a su recién contratado mayordomo francés, Jean Passepartout (llamado \"Picaporte\" en algunas traducciones al español), y tendrá que lidiar no solo con los retrasos en los medios de transporte, sino con la pertinaz persecución del detective Fix, que, ignorando la verdadera identidad del caballero, se enrola en toda la aventura a la espera de una orden de arresto de la Corona británica, en la creencia de que, en realidad, Fogg es el ladrón mentado y busca escapar de la Justicia.', 20),
(21, 'Origen', 'Novela', 'El ateo y aclamado futurista Edmond Kirsch asiste a una reunión en Cataluña, España, con tres miembros del famoso Parlamento Mundial de Religiones: el obispo católico Antonio Valdespino, el judío Rabbi Yehuda Köves, y el musulmán Allamah Syed al-Fadl. Kirsch les informa que ha hecho un descubrimiento revolucionario que planea liberar al público en un mes. Lo presenta de forma previa a ellos por supuesto respeto, a pesar de su aversión bien sabida a la religión, a la cual culpa de la muerte de su madre; esta era una mujer nacida en el seno de una familia católica quién, a los diecinueve años, se enamoró de un profesor universitario que la dejó embarazada de Edmond. Sabiendo que, debido a su religión, su familia y vecinos la tratarían de forma denigrante al convertirse en madre soltera, decidió casarse e irse a vivir a Chicago con dicho profesor, quién fallecería atropellado poco después de que Edmond naciera. La familia de su madre usó la muerte de su marido como excusa para atormentar a su hija diciéndole que se había ganado la ira de Dios y que, o consagraba el resto de su vida a Dios, o se iría al infierno, a partir de lo cual la madre de Edmond se puso a trabajar de camarera en un hotel, cada vez más sumida en la pobreza, mientras suplicaba a Dios que la perdonara, pese a estar convencida de que ello no ocurriría, hasta que, teniendo Edmond cinco años, decide dejarlo en un orfanato pensando en su bienestar, y regresar a España para ingresar en un convento. Edmond se entera, con diez años, de que su madre ha muerto allí, y solo en sus años de bachillerato, descubre que esto sucedió tras un ayuno autoimpuesto tras el que finalmente se ahorcó en su habitación debido a los dolores físicos que el mismo le provocó. El descubrimiento le horroriza. Más tarde se enteran de que en realidad lo está presentando sólo tres días después, lo que provoca que Valdespino le envíe un mensaje de voz exigiéndole que se detenga o corra el riesgo de ser desacreditado.', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(2, 'tg@admin.com', '$2y$10$MG8/L85hbLoFUNITHDKlbuHeSWhAD1UOgMl9vGMl1xApIesQDMgXy');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
