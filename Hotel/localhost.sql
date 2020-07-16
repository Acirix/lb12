-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 9 2020 г., 18:45
-- Версия сервера: 5.7.30-0ubuntu0.16.04.1
-- Версия PHP: 7.0.33-0ubuntu0.16.04.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_hotel`
--
CREATE DATABASE IF NOT EXISTS `db_hotel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_hotel`;

-- --------------------------------------------------------

--
-- Структура таблицы `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `start`, `end`, `room_id`, `status`, `paid`) VALUES
(53, 'Mr.Boruchovets', '2020-03-09 11:30:31', '2020-05-20 18:20:00', 15, 'Arrived', 100),
(55, 'Mr.Cloud', '2020-03-06 12:00:00', '2020-05-21 00:00:00', 14, 'New', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` text,
  `capacity` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `capacity`, `status`) VALUES
(1, 'Room 1', 2, 'Ready'),
(2, 'Room 2', 2, 'Ready'),
(3, 'Room 3', 3, 'Dirty'),
(4, 'Room 4', 2, 'Cleanup'),
(5, 'Room 5 ', 1, 'Ready'),
(6, 'Room 6', 2, 'Ready'),
(7, 'Room 7', 1, 'Cleanup'),
(8, 'Room 8', 1, 'Ready'),
(9, 'Room 9', 4, 'Cleanup'),
(10, 'Room 10', 2, 'Dirty'),
(11, 'Room 11', 5, 'Ready'),
(12, 'Room 12 ', 2, 'Ready'),
(13, 'Room 13', 1, 'Ready'),
(14, 'Room 14', 1, 'Ready'),
(15, 'Room 15', 1, 'Ready'),
(16, 'Room 16', 1, 'Cleanup'),
(17, 'Room 17', 1, 'Ready'),
(18, 'Room 18 ', 2, 'Ready'),
(19, 'Room 19', 2, 'Ready'),
(20, 'Room 20', 1, 'Ready'),
(21, 'Room 21', 3, 'Ready'),
(22, 'Room 22', 2, 'Ready'),
(23, 'Room 23', 2, 'Dirty'),
(24, 'Room 24', 2, 'Cleanup'),
(25, 'Room 25', 2, 'Cleanup');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
