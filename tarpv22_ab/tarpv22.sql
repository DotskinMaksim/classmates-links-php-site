-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 24 2023 г., 10:46
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tarpv22`
--

-- --------------------------------------------------------

--
-- Структура таблицы `opilane`
--

CREATE TABLE `opilane` (
  `id` int(11) NOT NULL,
  `nimi` varchar(30) DEFAULT NULL,
  `veebileht` text DEFAULT NULL,
  `sugu` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `opilane`
--

INSERT INTO `opilane` (`id`, `nimi`, `veebileht`, `sugu`) VALUES
(1, 'Maksim Artjomov', 'maksimartjomov22.thkit.ee', b'1'),
(2, 'Oleksandr Bohatyrov', 'oleksandrbohatyrov22.thkit.ee', b'1'),
(3, 'Anton Buivol', 'antonbuivol22.thkit.ee', b'1'),
(4, 'Edvard Datser', 'edvarddatser22.thkit.ee', b'1'),
(5, 'Timur Denisenko', 'timurdenisenko22.thkit.ee', b'1'),
(6, 'Maksim Dotskin', 'maksimdotskin22.thkit.ee', b'1'),
(7, 'Egor Fedorenko', 'egorfedorenko22.thkit.ee', b'1'),
(8, 'Luca Gluhhov', 'lucagluhhov22.thkit.ee', b'1'),
(9, 'Deniss Gorjunov', 'denissgorjunov22.thkit.ee', b'1'),
(10, 'Martin Kemppi', 'martinkemppi22.thkit.ee', b'1'),
(11, 'Arkadi Korotots', 'arkadikorotots22.thkit.ee', b'1'),
(12, 'Matvei Kulakovski', 'matveikulakovski22.thkit.ee', b'1'),
(13, 'Darja Miljukova', 'darjamiljukova22.thkit.ee', b'0'),
(14, 'Veronika Milovzorova', 'veronikamilovzorova22.thkit.ee', b'0'),
(15, 'Maksym Miskevych', 'maksymmiskevych22.thkit.ee', b'1'),
(16, 'Ekaterina Mosljajeva', 'ekaterinamosljajeva22.thkit.ee', b'0'),
(17, 'Martin Nommiste', 'martinnommiste22.thkit.ee', b'1'),
(18, 'Aleksander Rogovski', 'aleksanderrogovski22.thkit.ee', b'1'),
(19, 'Anna Sohromova', 'annasohromova22.thkit.ee', b'0'),
(20, 'Maksim Tsepelevits', 'maksimtsepelevits22.thkit.ee', b'1'),
(21, 'Yaroslav Yekasov', 'yaroslavyekasov22.thkit.ee', b'1'),
(22, 'Artur Suskevits', 'artursuskevits22.thkit.ee', b'1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `opilane`
--
ALTER TABLE `opilane`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `opilane`
--
ALTER TABLE `opilane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
