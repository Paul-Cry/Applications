-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 02 2021 г., 07:47
-- Версия сервера: 5.7.24
-- Версия PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `applications`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appl_list`
--

CREATE TABLE `appl_list` (
  `ID` int(11) NOT NULL,
  `FCS` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office` int(11) NOT NULL,
  `urgency_id` int(11) NOT NULL,
  `category` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appl_list`
--

INSERT INTO `appl_list` (`ID`, `FCS`, `office`, `urgency_id`, `category`, `subcategory`, `status`, `Date`) VALUES
(3, '123', 123, 1, '213', '', 0, '2021-06-15'),
(4, '123', 123, 1, '213', '', 0, '2021-06-15'),
(5, 'Харченко Алексей Андропович', 12, 1, 'Сломался принтер', 'Печатает без остановки, издаёт не понятные шумы', 1, '2021-02-06'),
(6, 'Харченко Алексей Андропович', 12, 1, 'Сломался принтер', 'Печатает без остановки, издаёт не понятные шумы', 1, '2021-02-06'),
(7, 'Харченко Алексей Андропович', 12, 1, 'Сломался принтер', 'Печатает без остановки, издаёт не понятные шумы', 1, '2021-02-06');

-- --------------------------------------------------------

--
-- Структура таблицы `urgency`
--

CREATE TABLE `urgency` (
  `ID` int(11) NOT NULL,
  `Name` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `urgency`
--

INSERT INTO `urgency` (`ID`, `Name`) VALUES
(1, 'Срочно'),
(2, 'Не срочно');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appl_list`
--
ALTER TABLE `appl_list`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `urgency_id` (`urgency_id`);

--
-- Индексы таблицы `urgency`
--
ALTER TABLE `urgency`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appl_list`
--
ALTER TABLE `appl_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `urgency`
--
ALTER TABLE `urgency`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appl_list`
--
ALTER TABLE `appl_list`
  ADD CONSTRAINT `appl_list_ibfk_1` FOREIGN KEY (`urgency_id`) REFERENCES `urgency` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
