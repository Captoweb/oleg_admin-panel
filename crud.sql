-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 13 2024 г., 23:20
-- Версия сервера: 10.4.26-MariaDB
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crud`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `cost`, `description`, `img`, `category`) VALUES
(1, 'Ролик с кнопкой (одно колесо)', 80, 'Ролики дверные для душевой кабины с кнопкой, одно колесо', 'rolic1.jpg', 'roliki'),
(2, 'Ролик без кнопки (одно колесо)', 80, 'Ролики дверные для душевой кабины без кнопкой, одно колесо. Серый, 19мм', 'rolic2.jpg', 'roliki'),
(3, 'Ролик без кнопки (одно колесо)', 80, 'Ролики дверные для душевой кабины без кнопкой, одно колесо. Серый, 23мм', 'rolic2.jpg', 'roliki'),
(4, 'Ролик без кнопки (одно колесо)', 80, 'Ролики дверные для душевой кабины без кнопкой, одно колесо. Серый, 25мм', 'rolic2.jpg', 'roliki'),
(5, 'Ролик без кнопки (одно колесо)', 80, 'Ролики дверные для душевой кабины без кнопкой, одно колесо. Серый, 27мм', 'rolic2.jpg', 'roliki'),
(6, 'Ролик с кнопкой (два колеса)', 110, 'Ролики дверные для душевой кабины с кнопкой, два колеса', 'rolic7.jpg', 'roliki'),
(7, 'Ролик без кнопки (два колеса)', 110, 'Ролики дверные для душевой кабины без кнопки, два колеса', 'rolic2-bez-knopka.jpg', 'roliki'),
(8, 'Ролик СУ 2', 110, 'для душевой кабины Серый 19мм', 'rolic-CU3.jpg', 'roliki'),
(9, 'Ролик СУ 2', 110, 'для душевой кабины Серый 23мм', 'rolic-CU3.jpg', 'roliki'),
(10, 'Ролик СУ 2', 110, 'для душевой кабины Серый 25мм', 'rolic-CU3.jpg', 'roliki'),
(11, 'Ролик СУ 2', 110, 'для душевой кабины Серый 27мм', 'rolic-CU3.jpg', 'roliki'),
(12, 'Ролик СУ 3', 110, 'для душевой кабины Серый 19мм', 'rolic-CU3.jpg', 'roliki'),
(13, 'Ролик СУ 3', 110, 'для душевой кабины Серый 23мм', 'rolic-CU3.jpg', 'roliki'),
(14, 'Ролик СУ 3', 110, 'для душевой кабины Серый 25мм', 'rolic-CU3.jpg', 'roliki'),
(15, 'Ролик СУ 3', 110, 'для душевой кабины Серый 27мм', 'rolic-CU3.jpg', 'roliki'),
(16, 'Ролик DC 1011', 110, 'для душевой кабины Серый 23мм', 'rolic4.jpg', 'roliki'),
(17, 'Ролик DC 1011', 110, 'для душевой кабины Серый 25мм', 'rolic4.jpg', 'roliki'),
(18, 'Ролик латунь', 110, 'для душевой кабины Латунь, 23мм', 'rolic-latun.png', 'roliki'),
(19, 'Ролик овальный с кнопкой', 110, 'для душевой кабины Овальный, 23мм', 'rolic-oval-knopka.jpg', 'roliki'),
(41, 'ФУМ лента газ малая', 15, 'Лента уплотнительная сантехническая для резьбы на газовых трубах', 'fum_little.jpg', 'fum'),
(42, 'ФУМ лента вода малая', 15, 'Лента уплотнительная сантехническая для резьбы на водопроводных трубах', 'fum_little.jpg', 'fum'),
(43, 'ФУМ лента газ большая', 25, 'Лента уплотнительная сантехническая для резьбы на газовых трубах', 'fum_big.jpg', 'fum'),
(44, 'ФУМ лента вода большая', 25, 'Лента уплотнительная сантехническая для резьбы на водопроводных трубах', 'fum_big.jpg', 'fum'),
(45, 'Лента фум русская № 1 узкая', 14, 'Лента уплотнительная сантехническая ширина 10мм', '1_russia.png', 'fum'),
(46, 'Лента фум русская № 2 широкая', 15, 'Лента уплотнительная сантехническая ширина 15мм', '2_russia.png', 'fum'),
(47, 'Лента фум русская № 3 узкая', 20, 'Лента уплотнительная сантехническая ширина 10мм', '3_russia.png', 'fum'),
(48, 'Лента фум русская № 4 широкая', 25, 'Лента уплотнительная сантехническая ширина 15мм', '4_russia.png', 'fum'),
(49, 'Лента фум русская № 5 широкая', 30, 'Лента уплотнительная сантехническая ширина 15мм', '5_russia.png', 'fum'),
(50, 'Лента фум русская № 6 широкая', 40, 'Лента уплотнительная сантехническая ширина 15мм', '6_russia.png', 'fum'),
(51, 'Лента фум русская № 7 широкая', 50, 'Лента уплотнительная сантехническая ширина 15мм', '7_russia.png', 'fum'),
(52, 'Лента фум русская № 8 широкая', 60, 'Лента уплотнительная сантехническая ширина 15мм', '8_russia.png', 'fum'),
(53, 'Лента фум русская № 9 широкая', 70, 'Лента уплотнительная сантехническая ширина 15мм', '9_russia.png', 'fum'),
(54, 'Лента фум русская № 10 широкая', 90, 'Лента уплотнительная сантехническая ширина 15мм', '10_russia.png', 'fum'),
(55, 'Лента фум русская № 11 широкая', 300, 'Лента уплотнительная сантехническая ширина 15мм', '11_russia.png', 'fum'),
(56, 'Лента фум русская № 12 широкая', 800, 'Лента уплотнительная сантехническая ширина 15мм', '12_russia.png', 'fum'),
(57, 'Сантехнить 20м, Россия', 80, 'Нить для герметизации резьбы', 'santehnit20.jpg', 'fum'),
(58, 'Сантехнить 50м, Россия', 130, 'Нить для герметизации резьбы', 'santehnit50.jpg', 'fum'),
(59, 'Манжета переходная 50/20', 9, 'Манжета переходная 50х20 мм предназначена для соединения канализационных труб', '50x20.jpg', 'rezina'),
(60, 'Манжета переходная 50/25', 8, 'Манжета переходная 50х25 мм предназначена для соединения канализационных труб', '50x25.jpg', 'rezina'),
(61, 'Манжета переходная 50/32', 8, 'Манжета переходная 50х32 мм предназначена для соединения канализационных труб', '50x32.jpg', 'rezina'),
(62, 'Манжета переходная 50/40', 8, 'Манжета переходная 50х40 мм предназначена для соединения канализационных труб', '50x40.jpg', 'rezina'),
(63, 'Манжета переходная 72/50', 20, 'Манжета переходная 72х50 мм предназначена для соединения канализационных труб', '72x50.jpg', 'rezina'),
(64, 'Манжета переходная 124/110', 25, 'Манжета переходная 72х50 мм предназначена для соединения канализационных труб', '124x110.jpg', 'rezina'),
(65, 'Манжета переходная 40/20', 9, 'Манжета переходная 40х20 мм предназначена для соединения канализационных труб', '40x25.jpg', 'rezina'),
(66, 'Манжета переходная 40/25', 9, 'Манжета переходная 40х25 мм предназначена для соединения канализационных труб', '40x25.jpg', 'rezina'),
(67, 'Манжета переходная 40/32', 9, 'Манжета переходная 50х32 мм предназначена для соединения канализационных труб', '40x25.jpg', 'rezina'),
(68, 'Манжета переходная 32/20', 9, '&quot;Манжета переходная 32х20 мм предназначена для соединения канализационных труб', '32x25.jpg', 'rezina'),
(69, 'Манжета переходная 32/25', 9, 'Манжета переходная предназначена для соединения канализационных труб', '32x25.jpg', 'rezina'),
(70, 'Конус на унитаз', 25, 'Манжета переходная предназначена для соединения канализационных труб', 'konus.jpg', 'rezina'),
(71, 'Рюмка на унитаз', 25, 'Манжета переходная предназначена для соединения канализационных труб', 'ryumka.jpg', 'rezina'),
(72, 'Переход резиновый 63/50', 20, 'Манжета переходная предназначена для соединения канализационных труб', '63x50.png', 'rezina'),
(73, 'Переход резиновый 50/40', 25, 'Манжета переходная предназначена для соединения канализационных труб', '63x50.png', 'rezina'),
(74, 'Переход резиновый 50/50', 25, 'Манжета переходная предназначена для соединения канализационных труб', '50x50.png', 'rezina'),
(75, 'Переход резиновый 40/40', 25, 'Манжета переходная предназначена для соединения канализационных труб', '50x50.png', 'rezina'),
(76, 'Блин на унитаз', 15, 'Манжета переходная предназначена для соединения канализационных труб', 'blin.jpg', 'rezina'),
(77, 'Ø 110 на унитаз черная', 15, 'Манжета переходная предназначена для соединения канализационных труб', 'unitaz-chernaia.png', 'rezina'),
(78, 'Ø 110 на унитаз белая', 15, 'Манжета переходная предназначена для соединения канализационных труб', 'unitaz-belaia.jpg', 'rezina'),
(79, 'Вантуз', 60, 'для механической прочистки засоров в трубах', 'vantus.jpg', 'rezina'),
(80, 'Кольцо Ø 50', 3, 'Кольцо уплотнительное для канализационных', 'kolco50.jpg', 'rezina'),
(81, 'Кольцо Ø 110', 4, 'Кольцо уплотнительное для канализационных', 'kolco110.jpg', 'rezina'),
(82, 'Кольцо Ø 40', 3, 'Кольцо уплотнительное для канализационных', 'kolco40.jpg', 'rezina'),
(83, 'Клапан на унитаз Псков белый', 25, 'Мембрана запорная для бачка унитаза', 'pskov_belyj.jpg', 'rezina'),
(84, 'Клапан на унитаз Псков силикон', 25, 'Мембрана запорная для бачка унитаза', 'pskov_silicon.jpg', 'rezina'),
(85, 'Клапан на унитаз Псков двойной старый', 30, 'Мембрана запорная для бачка унитаза', 'pskov2_new.png', 'rezina'),
(86, 'Клапан на унитаз Псков двойной новый', 30, 'Мембрана запорная для бачка унитаза', 'pskov2_new.png', 'rezina'),
(87, 'Клапан на унитаз с кнопкой черный', 20, 'Мембрана запорная для бачка унитаза', 'noimage.jpg', 'rezina'),
(88, 'Клапан на унитаз белый Москва', 25, 'Мембрана запорная для бачка унитаза', 'moscow_white.jpg', 'rezina'),
(89, 'Клапан на унитаз Алкапласт (ALCAPLAST) чех', 60, 'Мембрана запорная для бачка унитаза', 'noimage.jpg', 'rezina'),
(90, 'Клапан на унитаз АНИ Пласт', 30, 'Мембрана запорная для бачка унитаза', 'aniplast.png', 'rezina'),
(91, 'Клапан на унитаз Груша с резьбой', 20, 'Мембрана запорная для бачка унитаза', 'grusha_rezba.jpg', 'rezina'),
(92, 'Клапан на унитаз Груша 20мм', 20, 'Мембрана запорная для бачка унитаза', 'grusha-20mm.jpg', 'rezina'),
(93, 'Клапан на унитаз Груша 25мм', 20, 'Мембрана запорная для бачка унитаза', 'grusha-20mm.jpg', 'rezina'),
(94, 'Набор прокладок', 600, 'Набор уплотнительных колец резинок масло-бензо стойких', 'nabor_prokladok.jpg', 'rezina'),
(120, 'Прокладка на алюминиевый бидон резина 10 литров', 90, 'Резиновая прокладка для крышки молочной алюминиевой фляги', '10_bidon.webp', 'bidon'),
(121, 'Прокладка на алюминиевый бидон резина 25 литров', 90, 'Резиновая прокладка для крышки молочной алюминиевой фляги', '25_bidon_plockaya.jpg', 'bidon'),
(122, 'Прокладка на алюм бидон полукруглая 25 литров', 100, 'Резиновая прокладка для крышки молочной алюминиевой фляги', '25_bidon_plockaya.jpg', 'bidon'),
(123, 'Прокладка на алюм бидон полукруглая 40 литров', 100, 'Резиновая прокладка для крышки молочной алюминиевой фляги', '40_bidon.webp', 'bidon'),
(124, 'Прокладка на алюм бидон плоская 40 литров', 100, 'Прокладка для крышки молочной алюминиевой фляги', 'noimage.jpg', 'bidon'),
(125, 'Прокладка на алюм бидон полукруглая 20 литров', 100, 'Прокладка для крышки молочной алюминиевой фляги', 'noimage.jpg', 'bidon'),
(126, 'Прокладка на автоклав', 120, 'Кольцо уплотнительное для автоклава', 'avtoklav.png', 'bidon'),
(127, 'Прокладка на алюм бидон силикон 25 литров', 240, 'Прокладка для крышки молочной алюминиевой фляги', 'bidon_silikon.jpg', 'bidon'),
(128, 'Прокладка на алюм бидон силикон 40 литров', 250, 'Прокладка для крышки молочной алюминиевой фляги', 'bidon_silikon.jpg', 'bidon'),
(129, 'Прокладка на стеклянную банку для самогона 80/60', 70, 'Уплотнительная прокладка для уплотнения', 'noimage.jpg', 'bidon'),
(161, 'Паста Унипак + лен 25гр', 60, 'для герметизации резьбовых соединений', 'unipak25.jpg', 'smazka'),
(162, 'Паста Унипак 75гр', 90, 'для герметизации резьбовых соединений', 'unipak75.jpg', 'smazka'),
(163, 'Паста Унипак 250гр', 220, 'для герметизации резьбовых соединений', 'unipak250.png', 'smazka'),
(164, 'Смазка для канализации Sinicon', 150, 'для герметизации резьбовых соединений', 'sinicon.jpg', 'smazka'),
(201, 'Хомут ремонтный 1/2 (Ø15)', 50, 'Хомут ремонтный оцинкованный на 3 болта', '20_homut.png', 'homuty'),
(202, 'Хомут ремонтный 3/4 (Ø20)', 50, 'Хомут ремонтный оцинкованный на 3 болта&quot;', '20_homut.png', 'homuty'),
(203, 'Хомут ремонтный 1 дюйм (Ø25)', 50, 'Хомут ремонтный оцинкованный на 3 болта&quot;', '20_homut.png', 'homuty'),
(204, 'Хомут ремонтный 1 дюйм 1/4 (Ø32)', 60, 'Хомут ремонтный оцинкованный на 3 болта', '32_homut.png', 'homuty'),
(205, 'Хомут ремонтный 1 дюйм 1/2 (Ø40)', 60, 'Хомут ремонтный оцинкованный на 3 болта', '32_homut.png', 'homuty'),
(206, 'Хомут ремонтный 2 дюйма (Ø50)', 60, '&quot;Хомут ремонтный оцинкованный на 3 болта', '32_homut.png', 'homuty'),
(207, 'Хомут ремонтный Ø63', 60, '&quot;Хомут ремонтный оцинкованный на 3 болта', '32_homut.png', 'homuty'),
(208, 'Хомут ремонтный Ø76', 110, 'Хомут ремонтный оцинкованный на 3 болта', '110_homut.png', 'homuty'),
(209, 'Хомут ремонтный Ø89', 120, 'Хомут ремонтный оцинкованный на 3 болта', '110_homut.png', 'homuty'),
(210, 'Хомут ремонтный Ø110', 130, 'Хомут ремонтный оцинкованный на 3 болта', '110_homut.png', 'roliki'),
(211, 'Хомут ремонтный Ø160', 160, 'Хомут ремонтный оцинкованный на 3 болта', 'noimage.jpg', 'homuty'),
(212, 'Хомут ремонтный 1/2 (Ø15)', 35, 'оцинкованный на 2 болта', '15.png', 'homuty'),
(213, 'Хомут ремонтный 3/4 (Ø20)', 35, 'оцинкованный на 2 болта', '20.png', 'homuty'),
(214, 'Хомут ремонтный 1 дюйм (Ø25)', 25, 'оцинкованный на 2 болта', '25.png', 'homuty'),
(215, 'Хомут ремонтный 1 дюйм 1/4 (Ø32)', 35, 'оцинкованный на 2 болта', '32.png', 'homuty'),
(216, 'Хомут ремонтный 1 дюйм 1/2 (Ø40)', 45, 'оцинкованный на 2 болта', '40.png', 'homuty'),
(217, 'Хомут ремонтный 2 дюйма (Ø50)', 45, 'оцинкованный на 2 болта', '50.png', 'homuty'),
(241, 'Крепление крышки унитаза Универсальное', 60, 'Крепление крышки унитаза', 'universal.png', 'krepezh'),
(242, 'Крепление крышки унитаза СУ 1', 150, 'Крепление крышки унитаза', 'cu1.jpg', 'krepezh'),
(243, 'Крепление крышки унитаза СУ 3', 150, 'Крепление крышки унитаза', 'cu3.jpg', 'krepezh'),
(244, 'Крепление крышки унитаза квадрат с планкой', 60, 'Крепление крышки унитаза', 'kvadrat_planka.png', 'krepezh'),
(245, 'Крепление крышки унитаза C 13', 60, 'Крепление крышки унитаза', 'c13.png', 'krepezh'),
(246, 'Крепление крышки унитаза C 15', 60, 'Крепление крышки унитаза', 'c15.jpg', 'krepezh'),
(247, 'Крепление крышки унитаза C 19', 60, 'Крепление крышки унитаза', 'c19.png', 'krepezh'),
(248, 'Крепление крышки унитаза C6Б', 60, 'Крепление крышки унитаза', 'c6b.png', 'krepezh'),
(249, 'Крепление крышки унитаза K5', 60, 'Крепление крышки унитаза', 'k5.png', 'krepezh'),
(250, 'Крепление крышки унитаза квадрат с металич болтом', 70, 'Крепление крышки унитаза', 'metall_bolt.png', 'krepezh'),
(251, 'Крепление крышки унитаза EСO 2000&quot;', 150, 'Крепление крышки унитаза', 'eco-2000.jpg', 'krepezh'),
(252, 'Крепление крышки унитаза Президент', 150, 'Крепление крышки унитаза', 'president.png', 'krepezh'),
(253, 'Крепление крышки унитаза Cola', 250, 'Крепление крышки унитаза', 'cola-250.png', 'krepezh'),
(254, 'Крепление крышки унитаза угловое', 70, 'Крепление крышки унитаза', 'noimage.jpg', 'krepezh'),
(255, 'Крепление крышки унитаза с1 евро', 60, 'Крепление крышки унитаза', 'noimage.jpg', 'krepezh'),
(281, 'Прокладки паронит 1/4', 150, 'Цена указана за 100 штук', '1.4.jpg', 'paronit'),
(282, 'Прокладки паронит 3/8', 150, 'Цена указана за 100 штук', '3.8.jpg', 'paronit'),
(283, 'Прокладки паронит 1/2', 100, 'Цена указана за 100 штук', '15.jpg', 'roliki'),
(284, 'Прокладки паронит 3/4', 100, 'Цена указана за 100 штук', '20.jpg', 'paronit'),
(285, 'Прокладки паронит 1 дюйм', 150, 'в связке 100 штук', '25.jpg', 'paronit'),
(286, 'Прокладки паронит 1 дюйм 1/2', 300, 'в связке 100 штук', '40.jpg', 'paronit'),
(287, 'Прокладки паронит 1 дюйм 1/4', 300, '(на алюминевый радиатор) серые', '32.jpg', 'paronit'),
(288, 'Прокладки паронит 1 дюйм 1/4', 350, '(на алюминевый радиатор) зеленые', '32_green.jpg', 'paronit'),
(289, 'Прокладки паронит 1/2 зеленые', 200, 'в связке 100 штук', '15_green.jpg', 'paronit'),
(290, 'Прокладки паронит 3/4 зеленые', 250, 'в связке 100 штук', '20_green.jpg', 'paronit'),
(291, 'Прокладки паронит 1 дюйм зеленые', 250, 'в связке 100 штук', '25_green.jpg', 'paronit'),
(292, 'Прокладки паронит 1/2 красные', 200, 'в связке 100 штук', '15_red.jpg', 'paronit'),
(293, 'Прокладки паронит 1/2 черные', 200, 'в связке 100 штук', '15_black.png', 'paronit'),
(294, 'Прокладки паронит 1 1/4 белые', 200, 'в связке 100 штук', '32_white.png', 'paronit'),
(321, 'Прокладки резиновые 3/8', 150, 'Цена указана за 100 штук', '3.8_rez.jpg', 'procladki_rezina'),
(322, 'Прокладки резиновые 1/2', 100, 'Цена указана за 100 штук', '15_rez.jpg', 'procladki_rezina'),
(323, 'Прокладки резиновые 3/4', 100, 'Цена указана за 100 штук', '20_rez.jpg', 'procladki_rezina'),
(324, 'Прокладки резиновые 1 дюйм', 200, 'Цена указана за 100 штук', '25_rez.jpg', 'procladki_rezina'),
(325, 'Прокладки резиновые 1 дюйм 1/4', 300, 'в связке 100 штук', '32_rez.jpg', 'procladki_rezina'),
(326, 'Прокладки на газ счетчик', 300, 'в связке 100 штук', 'gaz.png', 'procladki_rezina'),
(327, 'Кольцо на трубу ПНД Ø 20', 800, 'в связке 100 штук', 'pnd_20.jpg', 'procladki_rezina'),
(328, 'Кольцо на трубу ПНД Ø 25', 900, 'в связке 100 штук', 'pnd_25.jpg', 'procladki_rezina'),
(329, 'Кольцо на трубу ПНД Ø 32', 1000, 'в связке 100 штук', 'pnd_32.jpg', 'procladki_rezina'),
(330, 'Кольцо на трубу ПНД Ø 40', 1800, 'в связке 100 штук', 'pnd_40.jpg', 'procladki_rezina'),
(331, 'Кольцо на трубу ПНД Ø 50', 2000, 'в связке 100 штук', 'pnd_50.jpg', 'procladki_rezina'),
(361, 'Прокладки силикон 1/2', 100, 'Цена указана за 100 штук', '15_silicon.jpg', 'silikon'),
(362, 'Прокладки силикон 3/4', 100, 'Цена указана за 100 штук', '20_silicon.jpg', 'silikon'),
(363, 'Прокладки силикон 1 дюйм', 200, 'Цена указана за 100 штук', '25_silicon.jpeg', 'silikon'),
(364, 'Прокладки силикон 1 дюйм 1/4 на алюм радиатор', 300, 'Цена указана за 100 штук', '32_silicon.jpg', 'silikon'),
(365, 'Прокладки силикон 1 дюйм 1/2', 300, 'в связке 100 штук', 'all_silicon.jpg', 'silikon'),
(366, 'Кольцо 32 на алюминевый радиатор', 600, 'в связке 100 штук', 'noimage.jpg', 'silikon'),
(367, 'Прокладки фторопласт 1/2', 500, 'в связке 100 штук', 'ftoroplast.png', 'silikon'),
(368, 'Прокладки фторопласт 1/4', 500, 'в связке 100 штук', 'ftoroplast.png', 'silikon'),
(369, 'Прокладки фторопласт 1 дюйм', 800, 'в связке 100 штук', 'ftoroplast.png', 'silikon'),
(370, 'Кольцо на Американку Ø 15', 300, 'Цена указана за 100 штук', '15_amerikanka.jpg', 'amerikanka'),
(371, 'Кольцо на Американку Ø 20', 300, 'Цена указана за 100 штук', '20_amerikanka.jpg', 'amerikanka'),
(372, 'Кольцо на Американку Ø 25', 500, 'Цена указана за 100 штук', '25_amerikanka.jpg', 'amerikanka'),
(373, 'Кольцо на Американку Ø 32', 600, 'Цена указана за 100 штук', '32_amerikanka.jpg', 'amerikanka'),
(374, 'Кольцо на Американку Ø 40', 2000, 'Цена указана за 100 штук', '40_amerikanka.jpg', 'amerikanka'),
(375, 'Кольцо на Американку Ø 50', 3000, 'Цена указана за 100 штук', '50_amerikanka.jpg', 'amerikanka'),
(376, 'Кольцо на Американку KALDE Ø 20&quot;', 1500, 'в связке 100 штук', '20_amerikanka.jpg', 'amerikanka'),
(377, 'Кольцо на Американку KALDE Ø 25', 1800, 'в связке 100 штук', '25_amerikanka.jpg', 'amerikanka'),
(378, 'Кольцо на Американку KALDE Ø 32', 2000, 'в связке 100 штук', '32_amerikanka.jpg', 'amerikanka'),
(379, 'Кольцо на Американку Китай Ø 20', 1500, 'в связке 100 штук', '20_amerikanka.jpg', 'amerikanka'),
(380, 'Кольцо на Американку Китай Ø 25', 1800, 'в связке 100 штук', '25_amerikanka.jpg', 'amerikanka'),
(381, 'Кольцо на Американку Китай Ø 32', 2000, 'в связке 100 штук', '32_amerikanka.jpg', 'amerikanka'),
(382, 'Кольцо на Американку ПЛОСКОЕ Ø 20', 300, 'в связке 100 штук', '20_amer_ploskaya.jpg', 'amerikanka'),
(383, 'Кольцо на Американку ПЛОСКОЕ Ø 25', 300, 'в связке 100 штук', '25_amer_ploskaya.jpeg', 'amerikanka'),
(384, 'Кольцо на Американку ПЛОСКОЕ Ø 32', 300, 'в связке 100 штук', '32_amer_ploskaya.jpg', 'amerikanka'),
(385, 'Кольцо на Американку ПЛОСКОЕ Ø 40', 300, 'в связке 100 штук', '32_amer_ploskaya.jpg', 'amerikanka'),
(386, 'Кольцо на Американку ПЛОСКОЕ Ø 50', 2000, 'в связке 100 штук', 'noimage.jpg', 'amerikanka'),
(387, 'Кольцо на Американку ПЛОСКОЕ Ø 63', 3000, 'в связке 100 штук', 'noimage.jpg', 'amerikanka'),
(441, 'Кольцо на гусак Россиия', 150, 'Цена указана за 100 штук', 'gusak.png', 'procladki_smesitel'),
(442, 'Кольцо на гусак импорт', 150, 'Цена указана за 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(443, 'Кольцо на гусак плоское', 100, 'Цена указана за 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(444, 'Ремкомплект на смеситель керамика Россия', 135, 'цена за 10 штук', 'noimage.jpg', 'procladki_smesitel'),
(445, 'Ремкомплект на смеситель керамика импорт', 145, 'цена за 10 штук', 'remcomplect.png', 'procladki_smesitel'),
(446, 'Ремкомплект на смеситель керамика импорт', 155, 'цена за 10 штук', 'noimage.jpg', 'procladki_smesitel'),
(447, 'Кольцо на подводку смесителя м10', 150, 'в связке 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(448, 'Кольцо на метелопластиковый фитинг Ø 16', 150, 'в связке 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(449, 'Кольцо на метелопластиковый фитинг Ø 20', 150, 'в связке 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(450, 'Кольцо на метелопластиковый фитинг Ø 25', 150, 'в связке 100 штук', 'noimage.jpg', 'procladki_smesitel'),
(451, 'Кольцо на метелопластиковый фитинг Ø 32', 400, 'в связке 100 штук', 'noimage.jpg', 'procladki_smesitel');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
