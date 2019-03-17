-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Мар 16 2019 г., 23:33
-- Версия сервера: 5.7.23
-- Версия PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `artgornica_loc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', 1, 1545848548),
('author', 1, 1545848548),
('author', 2, 1545848518),
('moderator', 1, 1545848548),
('moderator', 2, 1545848518),
('user', 1, 1545848548),
('user', 2, 1545848518);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `group_code`, `data`, `created_at`, `updated_at`) VALUES
('/admin', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/#mediafile', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/bulk-spam', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/bulk-trash', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/comment/default/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/eav/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/bulk-delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/create', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/grid-page-size', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/grid-sort', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/index', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-option/update', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/bulk-delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/create', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/grid-page-size', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/grid-sort', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/index', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute-type/update', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/bulk-delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/create', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/grid-page-size', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/grid-sort', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/index', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/attribute/update', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/default/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/default/get-attributes', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/default/get-categories', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/default/index', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/default/set-attributes', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/*', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/bulk-delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/create', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/delete', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/grid-page-size', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/grid-sort', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/index', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/eav/entity-model/update', 3, NULL, NULL, NULL, NULL, 1440180000, 1440180000),
('/admin/media/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/album/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/category/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/default/settings', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/info', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/resize', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/upload', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/media/manage/uploader', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/default/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/menu/link/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/page/default/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/category/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/default/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/post/tag/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/settings/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/settings/cache/flush', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/settings/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/settings/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/settings/reading/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/site/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/source/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/source/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/source/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/translation/source/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/bulk-activate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/bulk-deactivate', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/change-password', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/toggle-attribute', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/default/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission-groups/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/refresh-routes', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/set-child-permissions', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/set-child-routes', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/permission/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/bulk-delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/create', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/delete', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/set-child-permissions', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/set-child-roles', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/update', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/role/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/user-permission/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/user-permission/set', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/user-permission/set-roles', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/visit-log/*', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/visit-log/grid-page-size', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/visit-log/grid-sort', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/visit-log/index', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('/admin/user/visit-log/view', 3, NULL, NULL, NULL, NULL, 1538934054, 1538934054),
('administrator', 1, 'Administrator', NULL, NULL, NULL, 1538934054, 1538934054),
('assignRolesToUsers', 2, 'Assign Roles To Users', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('author', 1, 'Author', NULL, NULL, NULL, 1538934054, 1538934054),
('bindUserToIp', 2, 'Bind User To IP', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('changeGeneralSettings', 2, 'Change General Settings', NULL, 'settings', NULL, 1538934054, 1538934054),
('changeOwnPassword', 2, 'Change Own Password', NULL, 'userCommonPermissions', NULL, 1538934054, 1538934054),
('changeReadingSettings', 2, 'Change Reading Settings', NULL, 'settings', NULL, 1538934054, 1538934054),
('changeUserPassword', 2, 'Change User Password', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('commonPermission', 2, 'Common Permission', NULL, 'userCommonPermissions', NULL, 1538934054, 1538934054),
('createComments', 2, 'Create Comments', NULL, 'commentManagement', NULL, 1538934054, 1538934054),
('createEavRecords', 2, 'Create EAV records', NULL, 'eavManagement', NULL, 1440180000, 1440180000),
('createMediaAlbums', 2, 'Create Media Albums', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('createMediaCategories', 2, 'Create Media Categories', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('createMenuLinks', 2, 'Create Menu Links', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('createMenus', 2, 'Create Menus', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('createPages', 2, 'Create Pages', NULL, 'pageManagement', NULL, 1538934054, 1538934054),
('createPostCategories', 2, 'Create Post Categories', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('createPosts', 2, 'Create Posts', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('createPostTags', 2, 'Create Post Tags', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('createSourceMessages', 2, 'Create Source Messages', NULL, 'translations', NULL, 1538934054, 1538934054),
('createUsers', 2, 'Create Users', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('deleteComments', 2, 'Delete Comments', NULL, 'commentManagement', NULL, 1538934054, 1538934054),
('deleteEavRecords', 2, 'Delete EAV records', NULL, 'eavManagement', NULL, 1440180000, 1440180000),
('deleteMedia', 2, 'Delete Media', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('deleteMediaAlbums', 2, 'Delete Media Albums', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('deleteMediaCategories', 2, 'Delete Media Categories', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('deleteMenuLinks', 2, 'Delete Menu Links', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('deleteMenus', 2, 'Delete Menus', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('deletePages', 2, 'Delete Pages', NULL, 'pageManagement', NULL, 1538934054, 1538934054),
('deletePostCategories', 2, 'Delete Post Categories', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('deletePosts', 2, 'Delete Posts', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('deletePostTags', 2, 'Delete Post Tags', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('deleteSourceMessages', 2, 'Delete Source Messages', NULL, 'translations', NULL, 1538934054, 1538934054),
('deleteUsers', 2, 'Delete Users', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('editComments', 2, 'Edit Comments', NULL, 'commentManagement', NULL, 1538934054, 1538934054),
('editEavRecords', 2, 'Edit EAV records', NULL, 'eavManagement', NULL, 1440180000, 1440180000),
('editMedia', 2, 'Edit Media', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('editMediaAlbums', 2, 'Edit Media Albums', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('editMediaCategories', 2, 'Edit Media Categories', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('editMediaSettings', 2, 'Edit Media Settings', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('editMenuLinks', 2, 'Edit Menu Links', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('editMenus', 2, 'Edit Menus', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('editPages', 2, 'Edit Pages', NULL, 'pageManagement', NULL, 1538934054, 1538934054),
('editPostCategories', 2, 'Edit Post Categories', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('editPosts', 2, 'Edit Posts', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('editPostTags', 2, 'Edit Post Tags', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('editUserEmail', 2, 'Edit User Email', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('editUsers', 2, 'Edit Users', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('flushCache', 2, 'Flush Cache', NULL, 'settings', NULL, 1538934054, 1538934054),
('fullMediaAccess', 2, 'Full Media Access', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('fullMediaAlbumAccess', 2, 'Full Media Albums Access', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('fullMediaCategoryAccess', 2, 'Full Media Categories Access', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('fullMenuAccess', 2, 'Full Menu Access', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('fullMenuLinkAccess', 2, 'Full Menu Links Access', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('fullPageAccess', 2, 'Full Page Access', NULL, 'pageManagement', NULL, 1538934054, 1538934054),
('fullPostAccess', 2, 'Full Post Access', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('fullPostCategoryAccess', 2, 'Full Post Categories Access', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('fullPostTagAccess', 2, 'Full Post Tags Access', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('manageRolesAndPermissions', 2, 'Manage Roles And Permissions', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('moderator', 1, 'Moderator', NULL, NULL, NULL, 1538934054, 1538934054),
('updateImmutableSourceMessages', 2, 'Update Immutable Source Messages', NULL, 'translations', NULL, 1538934054, 1538934054),
('updateSourceMessages', 2, 'Update Source Messages', NULL, 'translations', NULL, 1538934054, 1538934054),
('updateTranslations', 2, 'Update Message Translations', NULL, 'translations', NULL, 1538934054, 1538934054),
('uploadMedia', 2, 'Upload Media', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('user', 1, 'User', NULL, NULL, NULL, 1538934054, 1538934054),
('viewComments', 2, 'View Comments', NULL, 'commentManagement', NULL, 1538934054, 1538934054),
('viewDashboard', 2, 'View Dashboard', NULL, 'dashboard', NULL, 1538934054, 1538934054),
('viewEavRecords', 2, 'View EAV records', NULL, 'eavManagement', NULL, 1440180000, 1440180000),
('viewMedia', 2, 'View Media', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('viewMediaAlbums', 2, 'View Media Albums', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('viewMediaCategories', 2, 'View Media Categories', NULL, 'mediaManagement', NULL, 1538934054, 1538934054),
('viewMenuLinks', 2, 'View Menu Links', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('viewMenus', 2, 'View Menus', NULL, 'menuManagement', NULL, 1538934054, 1538934054),
('viewPages', 2, 'View Pages', NULL, 'pageManagement', NULL, 1538934054, 1538934054),
('viewPostCategories', 2, 'View Posts', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('viewPosts', 2, 'View Posts', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('viewPostTags', 2, 'View Tags', NULL, 'postManagement', NULL, 1538934054, 1538934054),
('viewRegistrationIp', 2, 'View Registration IP', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('viewRolesAndPermissions', 2, 'View Roles And Permissions', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('viewTranslations', 2, 'View Message Translations', NULL, 'translations', NULL, 1538934054, 1538934054),
('viewUserEmail', 2, 'View User Email', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('viewUserRoles', 2, 'View User Roles', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('viewUsers', 2, 'View Users', NULL, 'userManagement', NULL, 1538934054, 1538934054),
('viewVisitLog', 2, 'View Visit Logs', NULL, 'userManagement', NULL, 1538934054, 1538934054);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('viewDashboard', '/admin'),
('viewMedia', '/admin/#mediafile'),
('editComments', '/admin/comment/default/bulk-activate'),
('editComments', '/admin/comment/default/bulk-deactivate'),
('deleteComments', '/admin/comment/default/bulk-delete'),
('editComments', '/admin/comment/default/bulk-spam'),
('editComments', '/admin/comment/default/bulk-trash'),
('createComments', '/admin/comment/default/create'),
('deleteComments', '/admin/comment/default/delete'),
('viewComments', '/admin/comment/default/grid-page-size'),
('viewComments', '/admin/comment/default/grid-sort'),
('viewComments', '/admin/comment/default/index'),
('editComments', '/admin/comment/default/toggle-attribute'),
('editComments', '/admin/comment/default/update'),
('viewComments', '/admin/comment/default/view'),
('deleteEavRecords', '/admin/eav/attribute-option/bulk-delete'),
('createEavRecords', '/admin/eav/attribute-option/create'),
('deleteEavRecords', '/admin/eav/attribute-option/delete'),
('viewEavRecords', '/admin/eav/attribute-option/grid-page-size'),
('viewEavRecords', '/admin/eav/attribute-option/grid-sort'),
('viewEavRecords', '/admin/eav/attribute-option/index'),
('editEavRecords', '/admin/eav/attribute-option/toggle-attribute'),
('editEavRecords', '/admin/eav/attribute-option/update'),
('deleteEavRecords', '/admin/eav/attribute-type/bulk-delete'),
('createEavRecords', '/admin/eav/attribute-type/create'),
('deleteEavRecords', '/admin/eav/attribute-type/delete'),
('viewEavRecords', '/admin/eav/attribute-type/grid-page-size'),
('viewEavRecords', '/admin/eav/attribute-type/grid-sort'),
('viewEavRecords', '/admin/eav/attribute-type/index'),
('editEavRecords', '/admin/eav/attribute-type/toggle-attribute'),
('editEavRecords', '/admin/eav/attribute-type/update'),
('deleteEavRecords', '/admin/eav/attribute/bulk-delete'),
('createEavRecords', '/admin/eav/attribute/create'),
('deleteEavRecords', '/admin/eav/attribute/delete'),
('viewEavRecords', '/admin/eav/attribute/grid-page-size'),
('viewEavRecords', '/admin/eav/attribute/grid-sort'),
('viewEavRecords', '/admin/eav/attribute/index'),
('editEavRecords', '/admin/eav/attribute/toggle-attribute'),
('editEavRecords', '/admin/eav/attribute/update'),
('viewEavRecords', '/admin/eav/default/get-attributes'),
('viewEavRecords', '/admin/eav/default/get-categories'),
('viewEavRecords', '/admin/eav/default/index'),
('editEavRecords', '/admin/eav/default/set-attributes'),
('deleteEavRecords', '/admin/eav/entity-model/bulk-delete'),
('createEavRecords', '/admin/eav/entity-model/create'),
('deleteEavRecords', '/admin/eav/entity-model/delete'),
('viewEavRecords', '/admin/eav/entity-model/grid-page-size'),
('viewEavRecords', '/admin/eav/entity-model/grid-sort'),
('viewEavRecords', '/admin/eav/entity-model/index'),
('editEavRecords', '/admin/eav/entity-model/toggle-attribute'),
('editEavRecords', '/admin/eav/entity-model/update'),
('deleteMediaAlbums', '/admin/media/album/bulk-delete'),
('createMediaAlbums', '/admin/media/album/create'),
('deleteMediaAlbums', '/admin/media/album/delete'),
('viewMediaAlbums', '/admin/media/album/grid-page-size'),
('viewMediaAlbums', '/admin/media/album/grid-sort'),
('viewMediaAlbums', '/admin/media/album/index'),
('editMediaAlbums', '/admin/media/album/toggle-attribute'),
('editMediaAlbums', '/admin/media/album/update'),
('deleteMediaCategories', '/admin/media/category/bulk-delete'),
('createMediaCategories', '/admin/media/category/create'),
('deleteMediaCategories', '/admin/media/category/delete'),
('viewMediaCategories', '/admin/media/category/grid-page-size'),
('viewMediaCategories', '/admin/media/category/grid-sort'),
('viewMediaCategories', '/admin/media/category/index'),
('editMediaCategories', '/admin/media/category/toggle-attribute'),
('editMediaCategories', '/admin/media/category/update'),
('viewMedia', '/admin/media/default/index'),
('editMediaSettings', '/admin/media/default/settings'),
('deleteMedia', '/admin/media/manage/delete'),
('viewMedia', '/admin/media/manage/index'),
('viewMedia', '/admin/media/manage/info'),
('editMediaSettings', '/admin/media/manage/resize'),
('editMedia', '/admin/media/manage/update'),
('uploadMedia', '/admin/media/manage/upload'),
('uploadMedia', '/admin/media/manage/uploader'),
('deleteMenus', '/admin/menu/default/bulk-delete'),
('createMenus', '/admin/menu/default/create'),
('deleteMenus', '/admin/menu/default/delete'),
('viewMenus', '/admin/menu/default/grid-page-size'),
('viewMenus', '/admin/menu/default/grid-sort'),
('viewMenus', '/admin/menu/default/index'),
('editMenus', '/admin/menu/default/update'),
('viewMenus', '/admin/menu/default/view'),
('deleteMenuLinks', '/admin/menu/link/bulk-delete'),
('createMenuLinks', '/admin/menu/link/create'),
('deleteMenuLinks', '/admin/menu/link/delete'),
('viewMenuLinks', '/admin/menu/link/grid-page-size'),
('viewMenuLinks', '/admin/menu/link/grid-sort'),
('viewMenuLinks', '/admin/menu/link/index'),
('editMenuLinks', '/admin/menu/link/update'),
('viewMenuLinks', '/admin/menu/link/view'),
('editPages', '/admin/page/default/bulk-activate'),
('editPages', '/admin/page/default/bulk-deactivate'),
('deletePages', '/admin/page/default/bulk-delete'),
('createPages', '/admin/page/default/create'),
('deletePages', '/admin/page/default/delete'),
('viewPages', '/admin/page/default/grid-page-size'),
('viewPages', '/admin/page/default/grid-sort'),
('viewPages', '/admin/page/default/index'),
('editPages', '/admin/page/default/toggle-attribute'),
('editPages', '/admin/page/default/update'),
('viewPages', '/admin/page/default/view'),
('deletePostCategories', '/admin/post/category/bulk-delete'),
('createPostCategories', '/admin/post/category/create'),
('deletePostCategories', '/admin/post/category/delete'),
('viewPostCategories', '/admin/post/category/grid-page-size'),
('viewPostCategories', '/admin/post/category/grid-sort'),
('viewPostCategories', '/admin/post/category/index'),
('editPostCategories', '/admin/post/category/toggle-attribute'),
('editPostCategories', '/admin/post/category/update'),
('editPosts', '/admin/post/default/bulk-activate'),
('editPosts', '/admin/post/default/bulk-deactivate'),
('deletePosts', '/admin/post/default/bulk-delete'),
('createPosts', '/admin/post/default/create'),
('deletePosts', '/admin/post/default/delete'),
('viewPosts', '/admin/post/default/grid-page-size'),
('viewPosts', '/admin/post/default/grid-sort'),
('viewPosts', '/admin/post/default/index'),
('editPosts', '/admin/post/default/toggle-attribute'),
('editPosts', '/admin/post/default/update'),
('viewPosts', '/admin/post/default/view'),
('deletePostTags', '/admin/post/tag/bulk-delete'),
('createPostTags', '/admin/post/tag/create'),
('deletePostTags', '/admin/post/tag/delete'),
('viewPostTags', '/admin/post/tag/grid-page-size'),
('viewPostTags', '/admin/post/tag/grid-sort'),
('viewPostTags', '/admin/post/tag/index'),
('editPostTags', '/admin/post/tag/toggle-attribute'),
('editPostTags', '/admin/post/tag/update'),
('flushCache', '/admin/settings/cache/flush'),
('changeGeneralSettings', '/admin/settings/default/index'),
('changeReadingSettings', '/admin/settings/reading/index'),
('viewDashboard', '/admin/site/index'),
('viewTranslations', '/admin/translation/default/index'),
('createSourceMessages', '/admin/translation/source/create'),
('deleteSourceMessages', '/admin/translation/source/delete'),
('updateSourceMessages', '/admin/translation/source/update'),
('editUsers', '/admin/user/default/bulk-activate'),
('editUsers', '/admin/user/default/bulk-deactivate'),
('deleteUsers', '/admin/user/default/bulk-delete'),
('changeUserPassword', '/admin/user/default/change-password'),
('createUsers', '/admin/user/default/create'),
('deleteUsers', '/admin/user/default/delete'),
('viewUsers', '/admin/user/default/grid-page-size'),
('viewUsers', '/admin/user/default/grid-sort'),
('viewUsers', '/admin/user/default/index'),
('editUsers', '/admin/user/default/toggle-attribute'),
('editUsers', '/admin/user/default/update'),
('manageRolesAndPermissions', '/admin/user/permission-groups/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/permission-groups/create'),
('manageRolesAndPermissions', '/admin/user/permission-groups/delete'),
('viewRolesAndPermissions', '/admin/user/permission-groups/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/permission-groups/grid-sort'),
('viewRolesAndPermissions', '/admin/user/permission-groups/index'),
('manageRolesAndPermissions', '/admin/user/permission-groups/update'),
('manageRolesAndPermissions', '/admin/user/permission/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/permission/create'),
('manageRolesAndPermissions', '/admin/user/permission/delete'),
('viewRolesAndPermissions', '/admin/user/permission/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/permission/grid-sort'),
('viewRolesAndPermissions', '/admin/user/permission/index'),
('manageRolesAndPermissions', '/admin/user/permission/refresh-routes'),
('manageRolesAndPermissions', '/admin/user/permission/set-child-permissions'),
('manageRolesAndPermissions', '/admin/user/permission/set-child-routes'),
('manageRolesAndPermissions', '/admin/user/permission/update'),
('manageRolesAndPermissions', '/admin/user/permission/view'),
('manageRolesAndPermissions', '/admin/user/role/bulk-delete'),
('manageRolesAndPermissions', '/admin/user/role/create'),
('manageRolesAndPermissions', '/admin/user/role/delete'),
('viewRolesAndPermissions', '/admin/user/role/grid-page-size'),
('viewRolesAndPermissions', '/admin/user/role/grid-sort'),
('viewRolesAndPermissions', '/admin/user/role/index'),
('manageRolesAndPermissions', '/admin/user/role/set-child-permissions'),
('manageRolesAndPermissions', '/admin/user/role/set-child-roles'),
('manageRolesAndPermissions', '/admin/user/role/update'),
('manageRolesAndPermissions', '/admin/user/role/view'),
('assignRolesToUsers', '/admin/user/user-permission/set'),
('assignRolesToUsers', '/admin/user/user-permission/set-roles'),
('viewVisitLog', '/admin/user/visit-log/grid-page-size'),
('viewVisitLog', '/admin/user/visit-log/grid-sort'),
('viewVisitLog', '/admin/user/visit-log/index'),
('viewVisitLog', '/admin/user/visit-log/view'),
('administrator', 'assignRolesToUsers'),
('administrator', 'author'),
('moderator', 'author'),
('administrator', 'bindUserToIp'),
('administrator', 'changeGeneralSettings'),
('user', 'changeOwnPassword'),
('administrator', 'changeReadingSettings'),
('administrator', 'changeUserPassword'),
('user', 'commonPermission'),
('moderator', 'createComments'),
('administrator', 'createEavRecords'),
('author', 'createMediaAlbums'),
('moderator', 'createMediaCategories'),
('administrator', 'createMenuLinks'),
('administrator', 'createMenus'),
('administrator', 'createPages'),
('moderator', 'createPostCategories'),
('author', 'createPosts'),
('moderator', 'createPostTags'),
('administrator', 'createSourceMessages'),
('administrator', 'createUsers'),
('moderator', 'deleteComments'),
('administrator', 'deleteEavRecords'),
('administrator', 'deleteMedia'),
('administrator', 'deleteMediaAlbums'),
('administrator', 'deleteMediaCategories'),
('administrator', 'deleteMenuLinks'),
('administrator', 'deleteMenus'),
('administrator', 'deletePages'),
('administrator', 'deletePostCategories'),
('moderator', 'deletePosts'),
('administrator', 'deletePostTags'),
('administrator', 'deleteSourceMessages'),
('administrator', 'deleteUsers'),
('moderator', 'editComments'),
('administrator', 'editEavRecords'),
('uploadMedia', 'editMedia'),
('moderator', 'editMediaAlbums'),
('moderator', 'editMediaCategories'),
('administrator', 'editMenuLinks'),
('administrator', 'editMenus'),
('administrator', 'editPages'),
('moderator', 'editPostCategories'),
('author', 'editPosts'),
('moderator', 'editPostTags'),
('administrator', 'editUserEmail'),
('administrator', 'editUsers'),
('manageRolesAndPermissions', 'editUsers'),
('administrator', 'flushCache'),
('moderator', 'fullMediaAccess'),
('moderator', 'fullMediaAlbumAccess'),
('moderator', 'fullMediaCategoryAccess'),
('administrator', 'fullMenuAccess'),
('administrator', 'fullMenuLinkAccess'),
('administrator', 'fullPageAccess'),
('moderator', 'fullPostAccess'),
('moderator', 'fullPostCategoryAccess'),
('moderator', 'fullPostTagAccess'),
('administrator', 'manageRolesAndPermissions'),
('administrator', 'moderator'),
('administrator', 'updateSourceMessages'),
('createSourceMessages', 'updateSourceMessages'),
('deleteSourceMessages', 'updateSourceMessages'),
('updateImmutableSourceMessages', 'updateSourceMessages'),
('administrator', 'updateTranslations'),
('updateSourceMessages', 'updateTranslations'),
('author', 'uploadMedia'),
('administrator', 'user'),
('author', 'user'),
('moderator', 'user'),
('createComments', 'viewComments'),
('deleteComments', 'viewComments'),
('editComments', 'viewComments'),
('moderator', 'viewComments'),
('author', 'viewDashboard'),
('administrator', 'viewEavRecords'),
('createEavRecords', 'viewEavRecords'),
('deleteEavRecords', 'viewEavRecords'),
('editEavRecords', 'viewEavRecords'),
('deleteMedia', 'viewMedia'),
('editMedia', 'viewMedia'),
('editMediaSettings', 'viewMedia'),
('fullMediaAccess', 'viewMedia'),
('uploadMedia', 'viewMedia'),
('createMediaAlbums', 'viewMediaAlbums'),
('deleteMediaAlbums', 'viewMediaAlbums'),
('editMediaAlbums', 'viewMediaAlbums'),
('createMediaCategories', 'viewMediaCategories'),
('deleteMediaCategories', 'viewMediaCategories'),
('editMediaCategories', 'viewMediaCategories'),
('administrator', 'viewMenuLinks'),
('createMenuLinks', 'viewMenuLinks'),
('deleteMenuLinks', 'viewMenuLinks'),
('editMenuLinks', 'viewMenuLinks'),
('fullMenuLinkAccess', 'viewMenuLinks'),
('administrator', 'viewMenus'),
('createMenus', 'viewMenus'),
('deleteMenus', 'viewMenus'),
('editMenus', 'viewMenus'),
('fullMenuAccess', 'viewMenus'),
('viewMenuLinks', 'viewMenus'),
('administrator', 'viewPages'),
('createPages', 'viewPages'),
('deletePages', 'viewPages'),
('editPages', 'viewPages'),
('author', 'viewPostCategories'),
('author', 'viewPosts'),
('createPostCategories', 'viewPosts'),
('createPosts', 'viewPosts'),
('deletePostCategories', 'viewPosts'),
('deletePosts', 'viewPosts'),
('editPostCategories', 'viewPosts'),
('editPosts', 'viewPosts'),
('viewPostCategories', 'viewPosts'),
('viewPostTags', 'viewPosts'),
('author', 'viewPostTags'),
('createPostTags', 'viewPostTags'),
('deletePostTags', 'viewPostTags'),
('editPostTags', 'viewPostTags'),
('administrator', 'viewRegistrationIp'),
('administrator', 'viewRolesAndPermissions'),
('manageRolesAndPermissions', 'viewRolesAndPermissions'),
('administrator', 'viewTranslations'),
('createSourceMessages', 'viewTranslations'),
('deleteSourceMessages', 'viewTranslations'),
('updateImmutableSourceMessages', 'viewTranslations'),
('updateSourceMessages', 'viewTranslations'),
('updateTranslations', 'viewTranslations'),
('editUserEmail', 'viewUserEmail'),
('moderator', 'viewUserEmail'),
('administrator', 'viewUserRoles'),
('assignRolesToUsers', 'viewUserRoles'),
('viewRolesAndPermissions', 'viewUserRoles'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers'),
('manageRolesAndPermissions', 'viewUsers'),
('moderator', 'viewUsers'),
('viewRolesAndPermissions', 'viewUsers'),
('viewVisitLog', 'viewUsers'),
('administrator', 'viewVisitLog');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('commentManagement', 'Comment Management', 1538934054, 1538934054),
('dashboard', 'Dashboard', 1538934054, 1538934054),
('eavManagement', 'EAV Management', 1440180000, 1440180000),
('mediaManagement', 'Media Management', 1538934054, 1538934054),
('menuManagement', 'Menu Management', 1538934054, 1538934054),
('pageManagement', 'Page Management', 1538934054, 1538934054),
('postManagement', 'Post Management', 1538934054, 1538934054),
('settings', 'Settings', 1538934054, 1538934054),
('translations', 'Translations', 1538934054, 1538934054),
('userCommonPermissions', 'Common Permissions', 1538934054, 1538934054),
('userManagement', 'User Management', 1538934054, 1538934054);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL DEFAULT '',
  `model_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'null-is not a reply, int-replied comment id',
  `content` text,
  `status` int(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0-pending,1-published,2-spam,3-deleted',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `super_parent_id` int(11) DEFAULT NULL COMMENT 'null-has no parent, int-1st level parent id',
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `model`, `model_id`, `user_id`, `username`, `email`, `parent_id`, `content`, `status`, `created_at`, `updated_at`, `updated_by`, `user_ip`, `super_parent_id`, `url`) VALUES
(8, 'backend\\modules\\post\\models\\Post', 15, 1, NULL, NULL, NULL, '«Быть счастливой каждый день»\r\n\r\nНачинаю серию интервью с теми людьми, которые мне кажутся очень особенными в плане личной силы. Выбираю тех, кто много лет очень нравится,\r\n\r\nс кем я ощущаю себя «в унисон».\r\n\r\nЗдесь будет моя личная коллекция людей, которые вызывают только тепло\r\n\r\nи восхищение.\r\n\r\nИ в первую очередь, — тех, кто достиг того, к чему все стремятся (то самое «приближаясь» в названии моего блога) — стабильной удовлетворенности\r\n\r\nот своей жизни, перманентного счастья и радости от всего, какие бы ситуации\r\n\r\nни происходили.\r\n\r\nМне интересно докопаться — откуда это в них, что они делали, как к этому пришли, что им помогло, что кажется важнейшим.', 1, 1545423065, 1545423065, 1, '::1', NULL, '/post_15'),
(10, 'backend\\modules\\post\\models\\Post', 15, NULL, 'Артур', 'artmarkov@mail.ru', NULL, 'Я уже пожилой человек, добившийся в жизни всего, о чем только можно мечтать. Моих денег мне не прожить до конца моих дней, а, учитывая скромность моих потребностей - и за много жизней не прожить.Я больше не заинтересован в зарабатывании денег. Будучи евреем, я, за исключением последних лет, жил и работал в России, хорошо узнал страну и ее народ, изучил силу и слабости русских. Начав, как беспощадный эксплуататор и иудей, я постепенно проникся сочувствием к великому и сверхтерпеливому русскому народу, и сейчас уже вполне искренне желаю ему блага.\r\n', 0, 1545424900, 1545661012, 1, '::1', 8, '/post_15'),
(11, 'backend\\modules\\post\\models\\Post', 14, 1, NULL, NULL, NULL, '123123123', 1, 1546110672, 1546110672, 1, '::1', NULL, '/post_14'),
(12, 'backend\\modules\\post\\models\\Post', 15, 1, NULL, NULL, 8, 'sdfsdfsdfsdfsf', 1, 1546112546, 1546112546, 1, '::1', 8, '/post_15');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `subject` varchar(127) NOT NULL,
  `body` text NOT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `body`, `subscribe`, `created_at`) VALUES
(1, 'Артур', 'artmarkov@mail.ru', 'Запись на консультацию', 'Я хочу у Вас заниматься. Когда можно подъехать?', 1, 1545901921),
(2, '1111111111', 'artmarkov@mail.ru', '111111111111111', '11111111111111111111111111111111111111111111111111111111 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 1, 1550524762),
(3, '1111111111', 'artmarkov@mail.ru', '111111111111111', ' \'js/scripts.js\', \'js/scripts.js\', \'js/scripts.js\', \'js/scripts.js\',1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 0, 1550524987),
(4, '1111111111', 'artmarkov@mail.ru', '111111111111111', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 0, 1550525054);

-- --------------------------------------------------------

--
-- Структура таблицы `event_item`
--

CREATE TABLE `event_item` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` text NOT NULL,
  `assignment` text NOT NULL,
  `sortOrder` int(8) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Состав программы';

--
-- Дамп данных таблицы `event_item`
--

INSERT INTO `event_item` (`id`, `name`, `description`, `assignment`, `sortOrder`, `created_at`, `updated_at`) VALUES
(1, 'Взаимоотношения в обществе', '<p>1</p>', '<p>Доверительные отношения. </p>\r\n<p>Курс направлен на раскрытие себя через рисунок, за счет познания своего внутреннего мира и внутреннего мира других участников встреч, с помощью методов арт-терапии.</p>\r\n<p> \"ВЗАИМОДЕЙСТВИЕ В ГРУППЕ\" - Мир вокруг меня, представление с помощью техники \"Рисуем по кругу\" или \"Лепим по кругу\".</p>\r\n<p>Практика \"Завтрак - обед - ужин\". Какое ты блюдо, расскажи о себе.</p>\r\n<p>Мир вокруг меня, представление с помощью техники \"Рисуем круги\" (циркулем, разные) .</p>\r\n<p>Практика \"Мы делили апельсин\" или \"Собери круг\".</p>\r\n<p>Практика \"У зеркала два лица\" (маскотерапия).</p>\r\n<p>Мандала из песка, камешков и песчинок. </p>\r\n<p>Быть хорошим! Практика \"Как говорить нет\"(журнал Психология и я).</p>\r\n<p>Практика \"Человек и дерево\"(глинотерапия).(дипл.1й вариант).</p>\r\n<p>Как дела? Кто похвалин меня лучше всех? Говорить друг другу комплиманты (из личн.эф)</p>\r\n<p>Умение смотреть в глаза!</p>\r\n<p>Троль, осуждение, зависть.</p>\r\n<p>Белая ворона. </p>\r\n<p>Практика Натальи Шафрановой - Изменить отношение к человека, чувства злости или зависти заменить на чувства радости.</p>\r\n<p> Интерес к людям. Открой свое сердце.Мысленно посылать любовь людям: мужчинам и женщинам.</p>\r\n<p>Практика \"Коллаж группы\".</p>\r\n<p>Практика \"Рисуем на жатой бумаге\" (в конце терапевт.процесса) - способствует самораскрытию участников гр, их сближению и обнаружению различий и общности опыта. Техника носит релаксационный характер. (дипл.1й)</p>\r\n<p>Коммуникативный тренинг \"Почувствуй себя животным\"???</p>\r\n<p>Сказка \"Колобок\" - играть, не говорить \"нет\". Почувствовать разницу между \"да\" и \"нет\".</p>\r\n<p>ДЗ: Не быть хорошей.Говорить нет. Ответить на вопрос Как дела? Развитие умения смотреть в глаза, стать открытым миру, окружающим. Здороваться со всеми. Замечать какого цвета глаза у рядом стоящего человека. Составлять досье прохожих.</p>', 2, 1546696357, 1552309672),
(2, 'Мир детских воспоминаний', '<p> </p>\r\n<p>1 </p>', '<p>Путешествие в страну детства к маленькой девочке.</p>\r\n<p>Вспомнить свое хочу. Топнуть ножкой. </p>\r\n<p>Я ребенок, вспомни все мои фантазии и ожидания. То что мы не позволяем, позволь сейчас.</p>\r\n<p> Узелок из детства.</p>\r\n<p>Медитация: Я в разные периоды детства.(диплом).</p>\r\n<p>Техника \"Рисуем пальчиками\".</p>\r\n<p>\"МИР ДЕТСТВА\" - Путешествие в волшебную страну, представление с помощью техники\"Рисуем мелками на асфальте\". Походить друг к другу в гости. </p>\r\n<p>Мультик - сказку симровизировать.</p>\r\n<p>Игра - пазлы собирать вместе в парах (груп.)</p>\r\n<p>\"ДЕТСКИЕ ВОСПОМИНАНИЯ\" - мой ресурс и моя фантазия, представление с помощью техники \"Рисуем песком\". Чудеса на песке - рисуем песком. Нарисовать волнуещую сейчас ситуацию и написать рассказ о ней.</p>\r\n<p>Мандала песочная. (груп.)</p>\r\n<p>\"ВДОХНОВЕНИЕ В СКАЗКЕ\" - Время творить волшебство, представление с помощью техники \"Сочини сказку по картинке\".</p>\r\n<p>Написать расказ \"Я маленькая девочка и я мечтаю о..  я хочу..\"</p>\r\n<p>Практика \"Рисунок моего дества\" (обсуждение в подгр)</p>\r\n<p>Тест-анкета \"Влияние моих родителей на мое воспитание\"(из личн.эф.)</p>\r\n<p>ДЗ! Чаще смотреть на небо. Замечать во всем радость, 3 чуда в день что: Удивляет - Радует - Вдохновляет. фильм Полиана. Письмо Богу написать (Волшебнику, ДедМорозу). Рисунок на снегу, на морском берегу - Будьте как дети!</p>', 3, 1546898212, 1552305647),
(3, 'Уникальный внутренний мир', '<p>1</p>', '<p>Отражение внутреннего мира в отпечатке ладони, представление с помощью техники рисунок ладони\".</p>\r\n<p>Познание своего лица и тела, представление с помощью техники \"Автопортрет\". Дополнить автопортрет лица, закрытыми глазами.</p>\r\n<p>(Практика \"Портрет в полный рост\".)</p>\r\n<p>Представление себя через куклу, с помощью техники \"Тряпичная кукла и Кукла из салфеток\". Практика \"Жила-была девочка не похожая на меня (изготовление куклы - мотанки).<strong> </strong></p>\r\n<p>Познание своего имени и общение пальчиковыми куклами, с помощью техники \"Нарисуй имя\". Практика \"Игра пальчиковыми куклами\"(гр.)</p>\r\n<p>Мое имя и роли (личн.эф)</p>\r\n<p>Сочини рассказ о своей кукле.</p>\r\n<p>Интервью, отвечать просто, как в детстве: \"Обо мне\" (ИрХм-38стр.)</p>\r\n<p>ДЗ: Имена перевертыши. Автобиографию написать. Сделать куклу самостоятельно или купить, как талисман.</p>', 4, 1546898549, 1552305330),
(4, 'Творческий потенциал и Креативность', '<p>1</p>', '<p>Составить треугольник из монет.</p>\r\n<p>Чудеса на песке - рисуем песком. Нарисовать волнуещую сейчас ситуацию и написать рассказ о ней.</p>\r\n<p>ЛИТЕРАТУРА - мой ресурс творчества, представление с помощью техники \"Зарисуй рассказ\". Борис Захандер \"кот и кит\".</p>\r\n<p>ВОСКОГРАФИЯ - проявление внутренних ресурсов,  новых идей творчества, представление с помощью техники \"Граттаж\".</p>\r\n<p>КАЛЛИГРАФИЯ - как образ жизни, новые образы творчества, представление с помощью техники \"Нарисуй иероглиф\".</p>\r\n<p>Практика \"Рисунок из мозайки\".</p>\r\n<p>Составить треугольник из монет. Головоломки.  Дорисовать букву Ш, придумать словосочетание, сложить палочки, говорить по тарабарски, подумать про то как можно использовать бутылку. Сочинить стихотворение, найти своего любимого поэта, читать стихи представляя изображение.  Читать сказки разных народов мира. Смотреть картинки 3D.</p>\r\n<p>КИНОТЕРАПИЯ: мультики, придумать героев, сочинить сказку, дать название.</p>\r\n<p>Практика или ДЗ: Роспись точками по керамике, бутылка, блюдце, разукрасить точками.</p>\r\n<p>Теории:Левое и правое полушария.Развитие творческих способностей.Нейрогенез.</p>', 33, 1546898785, 1552308577),
(33, 'Мандалатерапия ', '<p>1</p>', '<p>Рисуем Мандалу. (дип.1й)</p>\r\n<p>Мандала из камешков или песка (дипл.1й)</p>\r\n<p>Мандала ин и янь (из имиджтерапии).</p>\r\n<p>Мандала из платков (груп.)</p>\r\n<p>Плетение мандалы.(дипл.1й)</p>\r\n<p>Создание групповой мандалы</p>', 36, 1551430281, 1552467219),
(36, 'Психология Мужчины & Женщины', '<p>1</p>', '<p>Кто Я: дерево - металл - цветок - цвет - камень.</p>\r\n<p>Рисуем первую встречу. Какой ты, каким я тебя увидела.</p>\r\n<p>Мандала инь -ян.. </p>\r\n<p>Сказка \"Бал не случившихся встреч\" - Андрей Гнездилов</p>\r\n<p>Мудры женских и мужских энергий.</p>\r\n<p>Мужские и Женские архитипы.</p>\r\n<p>Анима и Анимус.</p>\r\n<p>Какие роли я чаще всего играю в жизни. Как меня воспринимают окружающие.</p>\r\n<p>Ожидания первой встречи, в практике коллаж.</p>\r\n<p>Практика лепка: кувшин и оружие.</p>\r\n<p>ЖЕНСКИЙ АРХЕТИП: Как определитьс свой архетип?Какие роли я чаще всего играю? Плюсы и минусы - опасность поглощения архетипом. Как меня воспринимают окружающие? Устраивает ли это меня? Как установить контакт с близким человеком, ориентируясь на архетип. Как разглядеть основной архетип в ребенке, интроверты - экстроверты. Выбор профессии исходя из архетипа. Полнота жизни и самореализация возможны, когда мы можем мы можем переходить из одной роли в другую.</p>\r\n<p>МУЖСКОЙ АРХЕТИП: Архетипы Юнга, теософские, тотемы. Как найти свой архетип мужчины?Мужской архетип - занине определяет способы поведения в конфликте. В ребенке выявление архетипа - Кто у вас растет Зевс, Гермес, Аполлон? Как строить модель воспитания? Позититвные и негативные стороны каждого архетипа, поглощение архетипом.Архетим можно определить в отношение карьеры, отношений в коллективе, корпоративной культуры, классивикация архетипов для улучшения контакта с клиентом-заказчиком, развития коммуникативных навыков.</p>\r\n<p>Кн.КарлРоджерс \"Психология супружеских отношений\".</p>', 39, 1551476506, 1552300039),
(37, 'Имиджтерапия или Разморозка чувств', '<p>1</p>', '<p>Психология внешности (внешность, осанка, речь, жесты - манеры, мимика, жизненная позиция). Психотипы (классический, романтический, естественный, драматический, gamile).</p>\r\n<p>Красота и Грация (Удовольствие и творческий подход к жизни. Лоуэн)</p>\r\n<p>Гримотерапия \"Я и другой\".</p>\r\n<p>Цветотерапия: стань художником своего настроения.</p>\r\n<p>Что такое имидж?</p>\r\n<p>Что такое стиль?</p>\r\n<p>Практика: Я героиня фильма, который смотрю.</p>\r\n<p>Найти актрису которая очень нравится.</p>\r\n<p>Правильный имидж - это..</p>\r\n<p>Я хочу, включать!</p>\r\n<p>Чувство собственного достоинства.</p>\r\n<p>Психотипы, к какому типу я принадлежу?</p>\r\n<p>завтра может не наступить, платья надо одевать.</p>\r\n<p>Гр.практика: \"Итервью-презентация\", что обо мне думают.(личн.эф)</p>\r\n<p>Тест - анкета: \"Взгляд на себя\".(личн.эф)</p>\r\n<p>Из занятия - Маскотерапия: Убрать маску с лица. \"Я такой, каким себя вижу. Я такой, каким хочу, чтобы видели меня другие. Я такой, каким хочу быть.\"</p>\r\n<p>Упражнение \"Картинная галерея\"(личн.эф) Практика: картины известных героинь - Екатерина Великой, Анна Ахматова, Наталья Нарышкина..Посмотреть портреты, вспомнить их судьбы., почувствовать сходство, своим внутр.миром или дшвным состоянием. Обсуждение личностных черт, которые повлияли на выбор и помочь закрепить свои положительные черты характера.</p>\r\n<p>ДЗ:Купить красную помаду, новую вещь.</p>\r\n<p>Замечать как выгядят ваши друзь и те с кем ежедневно общаетесь. Найти фильм с героиней / героем. Я героиня - фильма. Свой кодекс личности - собственное достоинство. Что хотим от жизни? Не должно быть на потом - отложенная жизнь (как сервис на полке). Платья / одежду одевать сейчас!</p>\r\n<p>Кн.Эволюция.Секреты разморозки - Марина Комиссарова.</p>', 38, 1551476557, 1552309366),
(38, 'Моя семья или Семейная терапия', '<p>1</p>', '<p>Доверительные взаимоотношения в семье, с близкими людьми</p>\r\n<p>Семья ввиде Дома.</p>\r\n<p>Семья в образе цветов.</p>\r\n<p>Фототерапия - семейные практики.</p>\r\n<p>Терапия \"Песочница\".</p>\r\n<p>Герб семьи.</p>\r\n<p>Медитация: прощение родителей.</p>\r\n<p>Прощение - рисунок левой рукой и надпись \"прощение родителей\".</p>\r\n<p>ДЗ: Список фильмов для семейного просмотра. Нарядить елочку вместе с семьей. Посетить в каникулы выставку картин, фотографий или др. Записать в дневник свои ощущения, а также записывать ощущения от путешествий.</p>\r\n<p>Кн.КарлРоджерс \"Брак и его альтернативы\".</p>\r\n<p>Архетип матери Кн.Сибилл Биркхойзер.</p>', 41, 1551476593, 1552393238),
(39, 'Знакомство со своими чувствами и эмоциями', '<p>1</p>', '<p>Практика Каракули, борьба двух лининй.</p>\r\n<p>Практика \"Нарисовать кружочки - смайлики\" и дать им название.</p>\r\n<p>Практика Натальи Шафрановой - Изменить отношение к человека, чувства злости или зависти заменить на чувства радости.</p>\r\n<p>Про чувства злости и зависти - общение.</p>\r\n<p><span> Знакомство с эмоциями и чувствами, представление с помощью техники \"Рисуем геометрические фигуры\". (составить фигуру человека из геометрич.фигур).</span></p>\r\n<p><span>Проявление эмоций, представление с помощью техники «Рисуем образ состояния». на влажной бумаге. Кукла на руки.</span></p>\r\n<p><span>\"КАЛЕЙДОСКОП КРАСОК\" - Эмоций и переживаний моего внутреннего мира, представление с помощью техники \"Акватипия\".</span></p>\r\n<p> </p>', 37, 1551476950, 1552308871),
(41, 'Как подружиться со страхом?', '<p>1</p>', '<p>Как справиться со страхама (ИрХм-61стр.) Рисунок моего страха. Освободи зубастика. Как подружиться со страхом? </p>\r\n<p><span>\"МАСКИ ГОВОРЯТ ЗА МЕНЯ\" - представление с помощью техники \"Мой страх\".(Создание маски)</span></p>\r\n<p><span>Практика - рисунок сангиной на коричневой бумаге, сделать маску, съиграть роль. Тревога за будущее. Страх перемен. Страх что ничего не получится. Ир.Хм. Вытащить безубик из тени на свет, прислушаться, прописать что он говорит, описать его, дать имя. А когда он станет проявленным, он исчезнет, т.к. потеряет силу. В Театр теней сходить.</span></p>\r\n<p><span>Страх начала и прокрастинация.</span></p>\r\n<p><span>Практика созерцания  с образами, по событиям. Страх помещается в сердечную чакру. Нырнуть в страх полностью.  Страх притягивает к нам то, чего боимся. Страх - это энергия смерти, необходимо заменить на энергию жизни, трансформировать в любовь (глубокий вдох и на выдахе в любовь трансф). Страхи заразны, не включаться в разговоры об опасностях. Фильмыужасы как вампиры на страх, энрегия страдания. Особенно за едой нельзя негативную инфо получать о новостях..</span></p>\r\n<p><span>Глинотерапия - создание своего лица из глины (маска)???</span></p>\r\n<p><span>ДЗ: Прочитать книгу или посмотреть мультфильм \"Крошка Енот\" песня Дружба начинается с улыбки. </span><span>Когда появляется страх, придумать для него юмористический рассказ; создай свой анекдот; завести копилку анекдотов или притчей, попробуйте сами посочинять анекдоты.</span></p>\r\n<p> </p>', 45, 1551477117, 1552511164),
(42, '\"Свет и Тень\" - проявленные и не проявленные качества личности ', '<p>1</p>', '<p>\"СВЕТ И ТЕНЬ\" - Проявленные и не проявленные качества личности, представление с помощью техники \"Я и моя тень\".</p>\r\n<p>Тень ходит за мной.</p>\r\n<p>Техника \"Каракули\".</p>\r\n<p>Практика из Имиджтерапии и Мандалатерапии: \"Мандала инь-янь\".</p>\r\n<p>Практика из Света и Тени: \"Маски на руках и поиграть\".</p>\r\n<p><span>\"У ЗЕРКАЛА ДВА ЛИЦА\" - проявление моих качеств личности, представление с помощью техники \"Лицо света и тени\": светящееся лицо и лица нет, в тени.</span></p>\r\n<p><span>Намерение из </span>нити двух цветов, интерграция \"света\" и \"тени\".</p>\r\n<p><span>ДЗ.Театр теней, понаблюдать за своей тенью, создать образы из тени своих рук на стене, выключив свет в помещении и направив свет из лампы на стену. Дырочки из листа -лучики света.</span></p>\r\n<p> </p>', 43, 1551477206, 1552511125),
(43, 'Актерская мастерская и Мир моих эмоций', '<p>1</p>', '<p>Мир эмоций, представление с помощью техник: \"Я актер театра\".</p>\r\n<p><span>Возможность стать иным, представление с помощью  техники \"Герой с картины\".</span></p>\r\n<p><span>Ролевая игра: \"Рассказ о себе\" - снять страх самопрезентации.? (личн.эф.) из Занятия КтоЯ или Образ меня.</span></p>\r\n<p><span>Добавить техники их ораторского искусства..</span></p>', 47, 1551477941, 1552511212),
(45, 'Сила моих мыслей - Управление настроением', '<p>1</p>', '<p>Практика \"Мой настроение\" сейчас - рисуем.</p>\r\n<p>Как жить без лишних переживаний.Выписать все ситуации зависти.</p>\r\n<p>Как мыслить позитивно. Как научиться замечать радости и чудеса.</p>\r\n<p><span>Сказка про магазин.</span></p>\r\n<p><span>Написать рассказ \"Я счастливая!\". Я счастливая - почему, продолжить фразу… Описать себя: Я какая (ой)  сильные кажетсва прилагательными, чтобы стали утверждениями и девизами.  </span></p>\r\n<p>Рисунок моего лета, вдозновение в красках осени, или узоры зимы, пробуждение весны.(из ресурсов)</p>\r\n<p>Рисунок Радуги.(из ресурсов)</p>\r\n<p><span>Практика: какого цвета моя жизнь. Ракрасьте каждый сегмент круга.</span></p>\r\n<p><span>Эмоция радость - это..</span></p>\r\n<p><span>Управление настроением - Жизнь в цвете.</span></p>\r\n<p><span> Что такое любовь к себе? Практика - составить список 20 доступных вам радостей.</span></p>\r\n<p><span>Кодекс моих правил \"Кодекс чести\".</span></p>\r\n<p><span>Радость жизни: порисовать песком, песчинки как крупинки - мгновения жизни. пример песочные часы.</span></p>\r\n<p><span>Рисуем музыку.</span></p>\r\n<p><span>По чакрам цвета (пропевание по чакрам звуков - снимает зажимы в теле).</span></p>\r\n<p><span>Шелковые радости в технике \"Батик\".</span></p>\r\n<p><span>Замечать чудеса и записывать в \"Дневник Радостей и Удовольствия\".</span></p>\r\n<p>ДЗ! Чаще смотреть на небо. Замечать во всем радость, 3 чуда в день что: Удивляет - Радует - Вдохновляет. фильм Полиана. Письмо Богу написать (Волшебнику, ДедМорозу). Рисунок на снегу, на морском берегу - Будьте как дети!</p>\r\n<p><span>Сосуд эмоций и Теория гормонов.</span></p>', 48, 1551478149, 1552402603),
(46, 'Чувство обиды - Искусство прощения', '<p>*</p>', '', 42, 1551478496, 1552300473),
(47, 'Моменты жизни или Как ценить время?', '<p>1</p>', '<p>Практика \"Сказка о потерянном времени\".</p>\r\n<p><span>86400 секунд в каждом дне, рассказать.</span></p>\r\n<p><span>Рисуем кружочки.(Ир.Хм.) - Круги жизни, хождение по кругу.</span></p>\r\n<p>Поиск возможностей в структуре времени, алгоритмы времени и пространства, представление с помощью техники \"Время на рисунке\".</p>\r\n<p><span>Магия утра.</span></p>\r\n<p><span>Описать идеальный рабочий день.</span></p>\r\n<p><span>Порисовать песком, песчинки как крупинки - мгновения жизни. пример посчные часы.</span></p>\r\n<p><span>Анализ моментов, на которые мы тратим время.</span></p>', 54, 1551478687, 1552333845),
(48, 'Вдохновение в кадре фотографии ', '<p>1</p>', '<p>Вдохновение в кадре фотографии,  представление с помощью техники \"Я тогда и Я сейчас\".</p>\r\n<p>Практика \"Грани моего я.</p>\r\n<p><span>Travel Therapy. </span>Терапия Путешествий. Рисунок после путешествия. ДЗ: Записывать ощущения от путешествий. Практика: расказать о путешествии, разделившись в гр, только жестами, другие угадывают.(из ресурса)</p>\r\n<p>Практика: Фотоколлаж </p>', 49, 1551478880, 1552511258),
(49, 'Мотивация и Ресурсы энергии ', '<p>1</p>', '<p>Избавление от старого. Уборка в доме.</p>\r\n<p>Прокрастинация.</p>\r\n<p>Самомотивация.</p>\r\n<p>Какие Ваши ценности? Что Вас вдохновляет?</p>\r\n<p>Законы сохранения жизненной энергии. - Не жаловаться на жизнь.</p>\r\n<p>Освобождение себя от негативных мыслей.</p>\r\n<p>Как востановить свою энергию (солнце - сон - секс) -ИрХм</p>\r\n<p>Найти ресурсы и быть счастливым, представление с помощью техники \"Ларец счастья\"</p>\r\n<p>Техника Безопасное место.(электр.Арт-практики)</p>\r\n<p>Рисунок моего лета, вдозновение в красках осени, или узоры зимы, пробуждение весны.</p>\r\n<p>Рисунок Радуги.</p>\r\n<p>Вкус жизни. Практика: описать обычный день  вкруге. Описать его в коротком рассказе. Что можно поменять в вашем привычном распорядке. Найти Удовольствие и энергию в  родном доме-городе, в путешествиях, в экстремальном спорте.</p>\r\n<p>Экстремальный спорт.</p>\r\n<p>Терапия Путешествий. Рисунок после путешествия. ДЗ: Записывать ощущения от путешествий.</p>\r\n<p>Практика: расказать о путешествии, разделившись в гр, только жестами, другие угадывают.</p>\r\n<p>Список фильмов, как ресурс. Новые марщруты на работу. Новые блюда. Замечать машины одного цвета.</p>\r\n<p>Практика Раскрыть свое сердце.(из любовь и благодарность)</p>\r\n<p>ДЗ: Список фильмов.</p>', 58, 1551478938, 1552403362),
(51, 'Денежное мышление или Внимательность к деньгам', '<p> </p>\r\n<p>1 </p>', '<p>Как увеличить доход? Как иметь доп.доход, работая в офисе? Сменив работу, совместив с любимым увлечением, откуда могут быть деньги?</p>\r\n<p>Как Вы относитесь к деньгам? (Ир.Хм-55стр.)</p>\r\n<p>Радик.прощ.(4я глава)</p>\r\n<p>Курс Шафрановой.</p>\r\n<p>Курс Алишера.</p>\r\n<p>Брайна Трейси.</p>\r\n<p>Тони Роббинса.</p>\r\n<p>Наполеон Хилл \"Думай и богатей\".</p>\r\n<p>Джен Синсеро (проработка денежных установок)</p>', 62, 1551479052, 1552397239),
(52, 'Здесь и Сейчас', '<p>1</p>', '<p>Делая обычные дела, мы не чувствуем себя в состояни здесь и сейчас, дни летят один за другим. Быть в процессе, действие.</p>\r\n<p>Практика \"Моё настроение\"</p>\r\n<p>Осознание себя в разные периоды жизни, присутствие в состояние \"Здесь и сейчас\", представление с помощью техники «Точки, узоры моей жизни».</p>\r\n<p>Циркулем - круги жизни. (занятие.время)</p>\r\n<p>Рисуем точками разные периоды жизни.Рисунок прошлое -настоящее - будущее точками. </p>\r\n<p>Узоры моей жизни на воде. (воском или красками). </p>\r\n<p>Медитация - Представление себя в разном возрасте, тот который грустит и тот который радуется, приятие родителей.  (дипл.1й вар.)</p>\r\n<p>Практика \"Спокойное присутствие\" (ИрХм-22стр.)</p>\r\n<p>Молитва Оптинских старцев.</p>\r\n<p>Практика или ДЗ: Роспись точками по керамике, бутылка, блюдце, разукрасить точками.</p>', 64, 1551479109, 1552337449),
(53, 'Мой мир мечтаний', '<p>1</p>', '<p>Расскажите себе о своих мечтах. Чего я хочу? </p>\r\n<p>Левой рукой написать - обращение к внутрен.ребенку.</p>\r\n<p>\"Я очень-очень сильно и даже страстно хочу... Я хочу, чтобы в моей жизни...\"</p>\r\n<p>\"КАРТА МОЕГО МИРА\" - Мои мечтания, представление с помощью техники \"Коллаж\".</p>\r\n<p>Написать расказ \"Я маленькая девочка и я мечтаю о..\" Топнуть ножкой \"Я хочу..\"</p>\r\n<p>Письмо волшебнику.</p>\r\n<p>Кн. Абрахам и Хикс \"Проси и дано тебе будет, как научиться реализовывать свои желания.</p>', 51, 1551479876, 1552511296),
(54, 'Постановка цели - Линия жизни', '<p>1</p>', '<p>Тест 24 вопроса (по поиску работы) - Мои ценности и Чем мне нравиться заниматься.</p>\r\n<p>Линия жизни.</p>\r\n<p>Моя цель - ...(Кн.Радик.прощение 89-94 стр.)</p>\r\n<p>Шлака способностей и талантов (Кн.Радик.прощение 96-97стр.)</p>\r\n<p><span>Нарисовать рисунок ландшафт цели (у Милютиной техн.изо).</span></p>\r\n<p>Постановка цели. Запишите 20 целей. В прошедшем и настоящем времени.</p>\r\n<p>Кем Вы хотите стать? Где Вы хотите работать? Чем именно хочется заниматься? Сколько часов в день Вы хотите работать?</p>\r\n<p>Записать 20 мини-рассказов. Обязательно д.б. действие  - Что я делаю.</p>\r\n<p>Определяем сроки.</p>\r\n<p>Переделываем цели с правильной формулировкой, без частиц \"не\", в активной форме, движение к чему-то, записать как о свершившемся факте. Вселенная и бессознательное не слышит частиц Не. </p>\r\n<p>Выбрать 5 основных целей. </p>\r\n<p>Проверить на реалистичность. Действительно ли Вы хотите этого? Для чего мне это нужно?</p>\r\n<p>Закрыть глаза и представить, почувствовать удовольствие. Проверить на достижимость. Сколько Вы зарабатываете? Побудьте в реализации каждого желания. Поймайте ощущение счастья.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', 52, 1551480268, 1552387250),
(55, 'Вектор моей профессии или \"Хочу - Могу - Надо\"', '<p>1</p>', '<p>Какой образ жизни мне нужен (тест).</p>\r\n<p>Конструктивный рисунок человека из геометрических фигур.</p>\r\n<p><span>Представление своей деятельности, сочетание условий «хочу – могу – надо», с помощью техники \"Вектор моей профессии\"</span></p>\r\n<p><span>Пирамида Маслоу. Пирамида Дилтса. Зачем я Живу? Или относительно моей цели - зачем я стану таким-то специалистом?</span></p>\r\n<p><span>Самореализация: \"Мне хорошо с семьей\" или \"Мне хорошо с социумом\" - Маслоу.</span></p>\r\n<p><span>Dragon Dreaming - Что делать, чтобы не выгорать.</span></p>\r\n<p><span>Теория целостности.\"мечтаете 25% своего времени – планируете 25% своего времени – делаете 25% своего времени – отдыхаете 25% своего времени\"  </span></p>\r\n<p> </p>', 56, 1551481338, 1552511461),
(56, 'Визуализация будущего или Моя мечта сбылась', '<p>1</p>', '<p>Письмо самому себе в будущее, сайт для составления письма <a href=\"https://www.futureme.org\">https://www.futureme.org</a></p>\r\n<p><span>Взгляд в будущее на себя, взгляд из будущего на себя, с помощью техники \"Моя мечта сбылась\", через 5 лет.</span></p>\r\n<p><span>Дать совет самому себе, через ... дней.</span></p>\r\n<p><span>Сторителлинг или Сказка моей жизни. </span>Сочини сказку. (Сказка Ирины из Опалихи про камень на мейл) Алгоритм написания сказки у Кристины (защита дипл)</p>\r\n<p><span>Сделать свой талисман из любого материала, или сплести мандалу, или найти красивый камень, который станет талисманом.</span></p>\r\n<p><span>Практика \"Плетение на шпажках\".</span></p>\r\n<p><span>Аффирмации - 100 раз произнести. Только по отношению к себе задавать желания. Отсутствие отрицательных частиц. (Фильм Секрет. ) Нарпимер: Бедный слепой больной загадал - Я хочу увидеть во дворце свадьбу моего внука с принцессой из другого королевства. Осознание намерения - существует, но без привязки к результату.<br /></span></p>\r\n<p> </p>', 59, 1551481429, 1552511539),
(57, 'Поток и отдача, Благодарность и любовь', '<p> </p>\r\n<p><span style=\"font-size: 14px;\"><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\"><span style=\"font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">1</span></span></span></p>\r\n<p> </p>', '<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Практика рисование точками.</span></span></p>\r\n<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Все начинается с любви к себе. </span></span></p>\r\n<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Когда мы от души любим и уважаем себя, мы создаем определенную организацию ума. </span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Любовь вытесняет страх: в человеке царит или любовь, или страх. Вместе они не уживаются. </span></span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Образ себя становится образом для других. Его любят хотя бы потому, что любить его легко, он открыт к восприятию доброго к себе отношения.<br /> </span><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">(тренинг личн.эффективности - 13стр.)</span></span></p>\r\n<p><span>Практкика: Открыть свое сердце.</span></p>\r\n<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Благодарность и любовь (от Лазарева)</span></span></p>\r\n<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Практика: перед сном записывать 5 благодарностей. помогает замечать подарки судьбы.</span></span></p>\r\n<p><span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Изобилие и благодарность (Кн.-Радикальное прощение.102-104стр.)</span></span></p>\r\n<p>ТЕОРИЕЙ ПОТОКА МИХАЙ ЧИКСЕНТМИХАЙИ и Леоньева.</p>\r\n<p>Что лежит в основе моего поведения. Тест Альберта Эллиса \"Я должен - мне должны - мир должен\".</p>\r\n<p>(Интервью с психологом Ал.Моховиков) о балансе между отдачей и получением.</p>\r\n<p>Сильное желание делиться. Что я могу дать людям? Для чего я это делаю - для чего мне это нужно? </p>\r\n<p><span>Подарить счастье - подарок, цеток, шоколадку.. Незнакомому человеку подарите что-то. Сделайте пожертвование.</span></p>\r\n<p><span>Лепим подарок.. (из практики прощения обид).</span></p>\r\n<p><span>Мир полон добрых людей!</span></p>\r\n<p><span>Улыбайтесь, когда выходите на улицу! :) Очень часто люди жалеют отдавать то, чего им и так не хватает - деньги, время, силы, внимание. И когда у нас чего-то мало, мы хотим это сэкономить  и сберечь. Как ни парадоксально в жизни действует иной Закон: Хочешь стать счастливым? - Сделай счастливым другого! Хочешь стать богатым? Сделай богатым другого! Хочешь свободы? дай быть свободным людям вокруг! Хочешь быть нужным? - Покажи людям, чтоони нудны тебе! Отдавя мы признаем, что оно у нас есть и фиксируем эту мысль дя себя! В итоге получаем больше то что есть! </span></p>\r\n<p> </p>\r\n<p> </p>', 63, 1551481970, 1552403449),
(58, 'Идеальный образ себя или Кто Я? ', '<p>1</p>', '<p><span>Кто Я? «Яйцо» Ассаджолли (Структура Сознания). </span>Атма-вичара (само-исследование) – традиционный путь достижения Самореализации, который был наиболее полно и глубоко раскрыт в наставлениях Раманы Махарши (1879-1950). Он основан на поддержании непрерывной внимательности к чувству «Я».</p>\r\n<p>Кто Я: дерево - металл - цветок - цвет - камень.</p>\r\n<p>Идеальный образ себя рисуем (ИрХМ), любую астракцию. </p>\r\n<p>Запишите, кто тот замечательный человек, кем Вы хотели стать: Где он живет? Что он делает?Как выглядит? Чем занимается? Какими качествами обладает? Кто и что его окружает?</p>\r\n<p>Я..(прилагательные)</p>\r\n<p>Опишите идеальный образ своей работы и своего рабочего дня. Опишите день о котором Вы мечтаете.</p>\r\n<p><span style=\"font-size: 11pt; line-height: 115%; font-family: Arial, sans-serif;\">Пусть каждое утро с вами первой просыпается установка: «Я – хорошая, славная, любимая, замечательная».</span></p>\r\n<p> Практика \"Я умею, я знаю, я могу\" (личн.эф.), разделить лист на 3 части и записать самые сильные качества личности, навыки и знания.</p>\r\n<p>Ролевая игра: \"Рассказ о себе\" - снять страх самопрезентации.? (личн.эф.)</p>', 55, 1551524320, 1552511429),
(59, 'Достижение цели и Шаги к цели', '<p class=\"MsoListParagraph\" style=\"margin-bottom: 12pt; text-align: left;\" align=\"center\"> </p>\r\n<p>1 </p>', '<p class=\"MsoListParagraph\" style=\"margin-bottom: 12pt; text-align: left;\" align=\"center\">Сказка о милостивой судьбе - Важно правильно формулировать свои желания. </p>\r\n<p>Как цели превратить в действия? Выставляем приоритеты.</p>\r\n<p>Прописываем шаги к тем 5-7  основным целям. Что конкретно Вы можете сделать. Как я этого добьюсь? </p>\r\n<p>Каждый шаг прописывается от первого лица, с конкретными цифрами, суммами, именами. В настоящем времени. Опишите позититвно и как Выполучаете удовольствие. </p>\r\n<p>Составьте план дествий. Обозначьте четкий срок. Распишите в ежедневнике свои шаги на ближайшие недели или на каждый день, как Вы делаете конкретный шаг.</p>\r\n<p>Утром записывайте цели на день, вечером отчет.(ИрХм-51стр.)</p>\r\n<p>Разделение большой задачи на маленькие шаги, когда сложно приступить к выполнению большого дела. Попробуйте ввести одну новую привычку, например такую как \"делать зарядку по утрам\" и дйте ей прижиться 3-7 дней, затем можете внедрять следующую.</p>\r\n<p>Поощряйте себя за достижения!</p>\r\n<p>Замените утверждения \"я должен\" на девиз \"я хочу\" или \"я могу\".</p>\r\n<p>Достижение цели - идти к цели по комнате. На что отзывается тело? </p>\r\n<p><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black; mso-fareast-language: RU;\">Научитесь любить свое тело, именно в этой оболочке жить активно и радостно. </span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Подружитесь со своим телом, победите страх перед ним, почувствуйте собственное тело, ощутите его притягательным и желанным. </span></p>\r\n<p><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Почувствуйте вкус к жизни!</span></p>\r\n<p><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">Быть в настоящем..</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Визуализация цели – это рекламный ролик, снятый вами в вашей голове, в котором вы видите цели уже достигнутыми. В этом видеоряде вы должны получить ответы на такие вопросы как:</p>\r\n<ul>\r\n<li>Как я пойму, что достиг цели?</li>\r\n<li style=\"box-sizing: border-box;\">Что я увижу? Что я услышу? Что почувствую?</li>\r\n<li style=\"box-sizing: border-box;\">Что я буду делать?</li>\r\n<li style=\"box-sizing: border-box;\">С кем я буду это делать?</li>\r\n<li style=\"box-sizing: border-box;\">Где я буду это делать?</li>\r\n<li style=\"box-sizing: border-box;\">Зачем я буду это делать?</li>\r\n</ul>\r\n<p><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\"> </span><span style=\"color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">. При постановке задач я рекомендую вам воспользоваться данной таблицей:</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\"><img src=\"https://i.5sfer.com/uploads/thumb-a2649f785bc348ac42fc0f95816d7844.jpg\" alt=\"5 ÑÐ°Ð³Ð¾Ð² Ðº Ð´Ð¾ÑÑÐ¸Ð¶ÐµÐ½Ð¸Ñ ÑÐµÐ»Ð¸. Ð§Ð°ÑÑÑ 2\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Наличие нескольких сценариев позволит вам не только выбрать самый оптимальный, но и оставит вам возможность переиграть ситуацию.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Найти в окружении человека, который Вас поддерит.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Что делать с откатами (ИрХм 31стр.).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Молитва Экзюпери - Маленькие шаги.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Практика. Эффективное завершение дел.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #555555; font-family: \'helvetica neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">Как быстро и эффетивно завершать дела.(ИрХм.76стр.)</p>', 57, 1551526270, 1552337741),
(60, 'Внутренние установки, стереотипы и убеждения', '<p>1</p>', '<p>Выявление негативных утверждений и создание позитивных, представление с помощью техники \"Клякса\".</p>\r\n<p>12-13 предписаний от родителей: не делать, не быть, не сближаться, не быть значимым, не быть ребенком, не взрослеть, не добиваться успеха, не быть собой, не быть здоровым, не быть нормадьным, не принадлежать. Отметить по шкале от 1 до 10. (дипл.гр.арттерапии)</p>\r\n<p>Написать сказку с выбранными интуитивно предписанием. Осознать и осводиться от всяких условностей, предписаний. </p>\r\n<p>Формулируем позитивные установки. </p>\r\n<p>(из занятия свет и тень \"игра масок на руках\".)</p>', 53, 1551544049, 1552685693),
(62, 'Мир вокруг меня', '<p>1</p>', '<p>Основные вопросы: Кто Я? и Что для меня мир, в котором я живу?</p>\r\n<p>\"ЗНАКОМСТВО\" - Представление себя с помощью техники \"Спонтанный рисунок - Каракули\".</p>\r\n<p>Рисунок Мандалы.</p>\r\n<p>\"ВЗАИМОДЕЙСТВИЕ В ГРУППЕ\" - Мир вокруг меня, представление с помощью техники \"Рисуем деревья\".</p>\r\n<p>Практика \"Куст роз\".</p>\r\n<p>Практика \"Люди - двери\". Какая Я дверь?</p>\r\n<p>Практика \"Почувствуйте себя цветком на поляне\". </p>\r\n<p>ДЗ! Завести дневник, записывать все яркие события, переживания, ощущения в тот момент, мысли. Фиксация приятных моментов поможет увидеть добро вокруг.</p>\r\n<p> </p>', 1, 1551563991, 1552305554),
(63, 'Маски говорят за меня', '<p>1</p>', '<p>Убрать маску с лица. Маскотерапия: \"Я такой, каким себя вижу. Я такой, каким хочу, чтобы видели меня другие. Я такой, каким хочу быть.\"</p>\r\n<p>Практика: создание маски из цв.бумаги, из глины, или раскрасить готовую маску.</p>\r\n<p>Как вариант, практика из темы страха: \"Маски говорят за меня\".</p>\r\n<p>Др.вариант, практика из темы свет и тень: \"Лицо света и тени\".</p>\r\n<p>Др.практика из света и тени: \"Маски на руках и поиграть\" - разные качества личности.</p>', 46, 1551616410, 1552511188),
(64, 'История моей жизни или Сказкатерапия', '<p>1</p>', '<p>Сказкатерапия (у Милютиной).</p>\r\n<p>ЛИТЕРАТУРА - мой ресурс творчества, представление с помощью техники \"Зарисуй рассказ\". Борис Захандер \"кот и кит\".</p>\r\n<p>Библиотерапия.</p>\r\n<p>Логотерапия.</p>\r\n<p>Сказки Удо Байер. Сказочный герой или Какой сказки ты герой (Эрик Берн).</p>\r\n<p>Сказка Жила-Была девочка.</p>\r\n<p>Сторителлинг или Сказка моей жизни. Сочини сказку. Сказка про дорогу и камень (Ирины из Опалихи на мейле).</p>\r\n<p>Алгоритм написания сказки у Кристины (защита дипл)</p>\r\n<p> ДЗ: Читать сказки разных народов мира.</p>\r\n<p><span>Кн.Зинкевич-Евстигнеева Т.Д., Практикум по сказкатерапии</span></p>', 60, 1551634504, 1552511582);

-- --------------------------------------------------------

--
-- Структура таблицы `event_item_practice`
--

CREATE TABLE `event_item_practice` (
  `id` int(8) NOT NULL,
  `item_id` int(8) NOT NULL,
  `practice_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='связь n:n событий и практик';

--
-- Дамп данных таблицы `event_item_practice`
--

INSERT INTO `event_item_practice` (`id`, `item_id`, `practice_id`) VALUES
(1, 1, 2),
(44, 2, 2),
(48, 3, 2),
(50, 33, 2),
(53, 36, 2),
(54, 37, 2),
(55, 38, 2),
(56, 39, 2),
(58, 41, 2),
(59, 42, 2),
(60, 43, 2),
(62, 45, 2),
(63, 46, 2),
(64, 47, 2),
(65, 48, 2),
(66, 49, 2),
(68, 51, 2),
(69, 52, 2),
(70, 53, 2),
(71, 54, 2),
(72, 55, 2),
(73, 56, 2),
(74, 57, 2),
(75, 58, 2),
(76, 59, 2),
(77, 60, 2),
(79, 62, 2),
(81, 64, 2),
(82, 63, 2),
(83, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `event_item_programm`
--

CREATE TABLE `event_item_programm` (
  `id` int(11) NOT NULL,
  `programm_id` int(8) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name_short` varchar(32) DEFAULT '1',
  `price` mediumint(5) DEFAULT NULL,
  `sortOrder` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь n:n программы с занятиями';

--
-- Дамп данных таблицы `event_item_programm`
--

INSERT INTO `event_item_programm` (`id`, `programm_id`, `item_id`, `name_short`, `price`, `sortOrder`) VALUES
(1, 1, 62, '1', 2100, 1),
(2, 1, 1, '1', 2100, 2),
(3, 1, 2, '1', 2100, 5),
(4, 1, 4, '1', 2100, 9),
(5, 1, 3, '2', 2100, 8),
(6, 1, 33, '1', 2100, 11),
(7, 1, 38, '1', 2100, 14),
(8, 1, 36, '1', 2100, 12),
(9, 1, 37, '1', 2100, 13),
(11, 1, 39, '1', 2100, 15),
(12, 1, 46, '2', 2100, 23),
(13, 1, 41, '1', 2100, 17),
(14, 1, 42, '1', 2100, 18),
(16, 1, 63, '1', 2100, 19),
(17, 1, 43, '1', 2100, 20),
(21, 1, 45, '1', 2100, 21),
(22, 1, 53, '1', 2100, 26),
(24, 1, 47, '1', 2100, 25),
(25, 1, 48, '1', 2100, 24),
(26, 1, 55, '1', 2100, 27),
(27, 1, 56, '1', 2100, 29),
(28, 1, 49, '1', 2100, 28),
(29, 1, 52, '1', 2100, 30),
(30, 2, 62, '1', 2500, 29),
(31, 2, 1, '1', 2500, 1),
(32, 2, 2, '2', 2500, 3),
(33, 2, 4, '1', 2500, 6),
(34, 2, 3, '1', 2500, 4),
(35, 2, 38, '1', 2500, 9),
(36, 2, 36, '1', 2500, 7),
(37, 2, 37, '1', 2500, 8),
(40, 2, 39, '1', 2500, 10),
(41, 2, 46, '1', 2500, 14),
(42, 2, 41, '1', 2500, 11),
(43, 2, 42, '1', 2500, 12),
(47, 2, 45, '1', 2500, 13),
(48, 2, 53, '1', 2500, 21),
(49, 2, 48, '1', 2500, 17),
(50, 2, 47, '1', 2500, 16),
(51, 2, 54, '1', 2500, 22),
(52, 2, 60, '1', 2500, 28),
(53, 2, 58, '1', 2500, 26),
(54, 2, 55, '1', 2500, 23),
(56, 2, 59, '1', 2500, 27),
(57, 2, 56, '1', 2500, 24),
(58, 2, 64, '1', 2500, 30),
(59, 2, 49, '1', 2500, 18),
(60, 2, 51, '1', 2500, 19),
(61, 2, 52, '1', 2500, 20),
(62, 2, 57, '1', 2500, 25),
(63, 7, 33, '1', 2500, 1),
(64, 9, 46, '1', 3200, 1),
(65, 3, 62, '1', 3200, 1),
(67, 12, 51, '1', 2000, 6),
(68, 12, 1, '1', 2000, 1),
(69, 12, 2, '1', 2000, 2),
(70, 12, 60, '1', 2000, 9),
(71, 12, 41, '1', 2000, 3),
(73, 12, 46, '1', 2000, 5),
(74, 12, 56, '1', 2000, 8),
(75, 12, 45, '1', 2000, 4),
(76, 12, 57, '1', 2000, 10),
(77, 12, 53, '1', 2000, 7),
(78, 11, 49, '1', 2500, 2),
(79, 11, 45, '1', 2500, 5),
(80, 4, 2, '2', 2500, 5),
(81, 11, 48, '1', 2500, 4),
(83, 10, 53, '1', 2000, 1),
(84, 10, 54, '1', 2000, 3),
(88, 10, 41, '1', 2000, 4),
(89, 10, 45, '1', 2000, 2),
(90, 10, 60, '1', 2000, 5),
(91, 10, 47, '1', 2000, 6),
(92, 10, 49, '1', 2000, 7),
(93, 10, 58, '1', 2000, 9),
(94, 10, 55, '1', 2000, 8),
(95, 10, 59, '1', 2000, 10),
(96, 10, 56, '1', 2000, 11),
(99, 10, 51, '1', 2000, 12),
(101, 11, 57, '1', 2500, 6),
(103, 8, 39, '1', 2000, 1),
(105, 8, 41, '1', 2000, 4),
(106, 8, 42, '1', 2000, 5),
(107, 8, 63, '1', 2000, 6),
(108, 8, 43, '1', 2000, 7),
(109, 8, 60, '1', 2000, 8),
(111, 6, 3, '2', 2000, 2),
(112, 6, 33, '1', 2000, 3),
(114, 6, 36, '1', 2000, 4),
(115, 6, 38, '1', 2000, 5),
(116, 6, 37, '1', 2000, 6),
(119, 13, 4, '1', 3200, 1),
(121, 14, 33, '1', 2000, 4),
(123, 14, 3, '1', 2000, 2),
(124, 14, 4, '1', 2000, 3),
(125, 14, 41, '1', 2000, 5),
(126, 14, 45, '1', 2000, 6),
(127, 14, 2, '1', 2000, 1),
(128, 14, 53, '1', 2000, 7),
(129, 14, 57, '1', 2000, 8),
(130, 1, 2, '2', 2100, 6),
(131, 1, 4, '2', 2100, 10),
(132, 1, 3, '1', 2100, 7),
(133, 4, 2, '1', 2500, 1),
(135, 1, 39, '2', 2100, 16),
(136, 1, 46, '1', 2100, 22),
(137, 6, 3, '1', 2000, 1),
(138, 2, 46, '2', 2500, 15),
(139, 8, 46, '1', 2000, 2),
(140, 13, 4, '2', 3200, 2),
(141, 9, 46, '2', 3200, 2),
(142, 2, 2, '1', 2500, 2),
(143, 2, 3, '2', 2500, 5),
(145, 1, 1, '2', 2100, 3),
(146, 1, 1, '3', 2100, 4),
(147, 3, 1, '1', 3200, 2),
(149, 6, 45, '1', 2000, 7),
(150, 6, 49, '1', 2000, 8),
(151, 4, 53, '1', 2500, 7),
(152, 4, 64, '1', 2500, 8),
(153, 8, 45, '1', 2000, 9),
(154, 15, 62, '1', NULL, 1),
(155, 15, 1, '1', NULL, 2),
(156, 15, 1, '2', NULL, 3),
(157, 15, 4, '1', NULL, 4),
(158, 15, 3, '1', NULL, 6),
(159, 15, 2, '1', NULL, 5),
(160, 15, 39, '1', NULL, 7),
(161, 15, 45, '1', NULL, 8),
(162, 4, 46, '1', NULL, 2),
(164, 4, 45, '1', NULL, 4),
(165, 4, 58, '1', NULL, 6),
(166, 4, 57, '1', NULL, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `event_item_programm_practice`
--

CREATE TABLE `event_item_programm_practice` (
  `id` int(8) NOT NULL,
  `item_programm_id` int(8) NOT NULL,
  `practice_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='связь n:n событий и практик';

--
-- Дамп данных таблицы `event_item_programm_practice`
--

INSERT INTO `event_item_programm_practice` (`id`, `item_programm_id`, `practice_id`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `event_methods`
--

CREATE TABLE `event_methods` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Методы арттерапии';

--
-- Дамп данных таблицы `event_methods`
--

INSERT INTO `event_methods` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Песочная терапия', '', 1234567890),
(2, 'Изотерапия', '', 1546862227),
(3, 'Глинотерапия', '', 1546862775),
(4, 'Сказкотерапия', '', 1546862816),
(5, 'Драматерапия', '', 1546862850),
(6, 'Библиотерапия', '', 1546862862),
(7, 'Куклотерапия', '', 1546862872),
(8, 'Цветотерапия', '', 1546862883),
(9, 'Маскотерапия', '', 1546862896),
(10, 'Фототерапия', '', 1546862908),
(11, 'Креативная терапия', '', 1546862918),
(12, 'Семейная терапия', '', 1546862942),
(13, 'Имиджтерапия', '', 1546862977);

-- --------------------------------------------------------

--
-- Структура таблицы `event_place`
--

CREATE TABLE `event_place` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `phone_optional` varchar(24) NOT NULL,
  `email` varchar(255) NOT NULL,
  `сontact_person` varchar(127) NOT NULL,
  `coords` varchar(64) DEFAULT NULL,
  `map_zoom` smallint(2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_color` varchar(32) DEFAULT NULL,
  `event_text_color` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Место проведения';

--
-- Дамп данных таблицы `event_place`
--

INSERT INTO `event_place` (`id`, `name`, `address`, `phone`, `phone_optional`, `email`, `сontact_person`, `coords`, `map_zoom`, `description`, `event_color`, `event_text_color`, `created_at`, `updated_at`) VALUES
(1, 'Красный Кит', 'Россия, Московская область, Красногорск, улица Ленина, 2, 3 этаж', '+7 (911) 123 45 67', '', 'artmarkov@mail.ru', 'Елена', '55.81963507238688,37.320560147307866', 17, '', 'rgba(106, 168, 79, 0.84)', 'rgb(255, 255, 255)', 1546901535, 1547488170),
(2, 'Сокол', 'Россия, Москва, Ленинградский проспект, 78к4', '+7 (111) 111 11 11', '', 'artmarkov@mail.ru', 'Артур', '55.806927240893025,37.51445068176123', 15, '', 'rgba(60, 120, 216, 0.82)', 'rgb(255, 255, 255)', 1547476901, 1548260112),
(3, 'Start Hub', 'Россия, Москва, Большая Новодмитровская улица, дом 36 стр 12 вход 6', '+7 (499) 653 50 37', '', 'artmarkov@mail.ru', 'Елена', '55.804438632779274,37.586017233310734', 17, '', 'rgba(255, 153, 0, 0.93)', 'rgb(255, 255, 255)', 1547488423, 1547662796);

-- --------------------------------------------------------

--
-- Структура таблицы `event_plan`
--

CREATE TABLE `event_plan` (
  `id` int(8) NOT NULL,
  `programm_id` int(8) NOT NULL,
  `place_id` int(8) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `start_timestamp` int(11) NOT NULL,
  `end_timestamp` int(11) DEFAULT NULL,
  `description` mediumtext,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Планирование занятий';

--
-- Дамп данных таблицы `event_plan`
--

INSERT INTO `event_plan` (`id`, `programm_id`, `place_id`, `color`, `start_timestamp`, `end_timestamp`, `description`, `all_day`, `created_at`, `updated_at`) VALUES
(6, 7, 1, NULL, 1551853800, 1551859200, NULL, 0, 1552237679, 1552239936),
(7, 9, NULL, 'rgba(74, 134, 232, 0.7)', 1551946500, 1551954600, '', 0, 1552239336, 1552240247);

-- --------------------------------------------------------

--
-- Структура таблицы `event_practice`
--

CREATE TABLE `event_practice` (
  `id` int(8) NOT NULL,
  `methods_id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` mediumtext NOT NULL,
  `time_volume` int(3) NOT NULL COMMENT 'время проведения в мин',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Практики арттерапии';

--
-- Дамп данных таблицы `event_practice`
--

INSERT INTO `event_practice` (`id`, `methods_id`, `name`, `description`, `time_volume`, `created_at`) VALUES
(2, 2, 'Спонтанный рисунок', 'Инструменты: масляная пастель, белые листы бумаги А-4.\n\nАлгоритм работы: Учащиеся рисуют то, что захочется, какие образы приходят, то и рисуют. Прикрепляют получившиеся картины-рисунки к стене. Ведущий просит участников рассказать несколько слов о себе: Кто Я? Участники группы делятся своими ощущениями, чувствами, которые они испытывают.', 20, 1546862271),
(3, 2, 'Каракули', 'Инструменты: фломастеры или цветные карандаши, белые листы бумаги А-4.\n\nАлгоритм работы: «Каракули» Выполнение техники рисования каракулей подразумевает, что участники закрывает глаза. Лист 1: Двумя руками одновременно на одном листе водят по листу, так как руки захотят, карандаш - продолжение руки. Лист 2: Карандаши поменять в руках, и водить по листу. В результате получается «клубок линий». Ведущий предлагает выбрать один лист с рисунком, далее предлагается прорисовать то, что более напоминает. Группа делится свои ощущения. На основе созданных каракулей сочинить рассказ.', 40, 1546862441),
(4, 2, 'Рисуем деревья', 'Инструменты: масляная пастель, большой лист (соединить 2-3 листа А-0).\n\nАлгоритм работы: Каждому учащемуся предлагается закрыть глаза и постараться увидеть лес. Представь себя в образе дерева. Открыть глаза и на большом листе бумаги нарисовать дерево. Придумать рисунку название и историю, от первого лица. Чтобы прояснить детали рисунка или рассказа, ведущий и другие учащиеся задают вопросы.', 30, 1546862493),
(5, 2, 'Рисунок по кругу', 'Инструменты: фломастеры или цветные карандаши, белые листы бумаги А-4.\n\nАлгоритм работы: «Рисунок по кругу» Ведущий предлагает сесть в круг и создать свой небольшой рисунок, который в какой-то мере отражал бы состояние учащегося, настроение в данный момент. По окончании работы учащиеся передают свои рисунки по кругу, начиная с соседа слева, который что-то дорисовывает на свое усмотрение и передает рисунок дальше. Завершающий этап обсуждение.', 20, 1546862590),
(6, 2, 'Собери круг', 'Инструменты: белый лист А-1. масляная пастель, ножницы, бумажный скотч, клей. \n\nАлгоритм работы: «Собери круг» Ведущий предлагает нарисовать на листе большой круг. Каждый участник вырезает себе кусочек листа от круга, круг разделяется между учащимися на части. Каждый раскрашивает свой кусочек. Далее ведущий предлагает объединить рисунки в круг, создавая общую картину. Участники делятся своими ощущениями.', 50, 1546863063);

-- --------------------------------------------------------

--
-- Структура таблицы `event_programm`
--

CREATE TABLE `event_programm` (
  `id` int(8) NOT NULL,
  `vid_id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` mediumtext NOT NULL,
  `assignment` text NOT NULL,
  `programm_price` mediumint(5) DEFAULT NULL,
  `item_hours` mediumint(5) NOT NULL DEFAULT '0',
  `item_price` mediumint(5) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Программа занятий';

--
-- Дамп данных таблицы `event_programm`
--

INSERT INTO `event_programm` (`id`, `vid_id`, `name`, `description`, `assignment`, `programm_price`, `item_hours`, `item_price`, `created_at`, `updated_at`) VALUES
(1, 2, 'Программа 30 встреч - Путь к поиску Себя', '<p>111</p>', '', 54000, 3, 1950, 1547040720, 1552467667),
(2, 1, 'Индивидуальная Программа 30 встреч', '<p>1</p>', '<p>\"30 встреч\" 2 раза в неделю, всего 4 месяца</p>\r\n<p>Одно занятие продолжительностью 1 - 1,5 часа = 2500 руб </p>\r\n<p>75 000 весь курс = 8 встреч в месяц (20 000 + 20 000 + 20 000 + 15 000)</p>\r\n<p>Если Вы оплачивает до (даты), то стоимость 70 000 руб</p>\r\n<p>Заключение договора с 50% предоплатой  37 500 (на второй встрече)</p>\r\n<p>Аренда м. Дмитровская 600 руб / 1 час = вся аренда 18 000</p>\r\n<p>Доход за вычетом аренды 63 000 (57 000) = в месяц 15 750 (14 250)  </p>\r\n<p>Все материалы  для арт-занятий предоставляются и входят в стоимость </p>\r\n<p>вечер  18:45 - 19:45 / день 11:30 - 12:30 и 12:45 - 13:45</p>', 72000, 1, 2500, 1547153697, 1552654990),
(3, 2, 'Общество в миниатюре или Доверительные взаимоотношения', '', '', 6400, 4, 3500, 1551474685, 1552660863),
(4, 2, 'Мой внутренний ребенок или Как вернуть свои желания?', '', '', 15600, 3, 2100, 1551474814, 1552503470),
(6, 2, 'Женская привлекательность или Познание себя', '', '', 18000, 3, 2475, 1551474935, 1552474183),
(7, 2, 'Мой мир Мандала', '', '', 2500, 1, 2500, 1551475079, 1552468742),
(8, 2, 'Эмоциональный интеллект или Как жить без лишних переживаний?', '<p>150</p>', '', 16800, 3, 2250, 1551475155, 1552468871),
(9, 2, 'Марафон прощения Обид или Искусство прощать', '', '', 7000, 4, 4000, 1551475253, 1552468945),
(10, 2, 'Постановка цели или Вектор моей профессии', '', '', 22800, 2, 2000, 1551475336, 1552469377),
(11, 2, 'Интерес к жизни или Где найти ресурсы энергии?', '', '', 8800, 3, 2475, 1551475621, 1552473396),
(12, 2, 'Мастерская осознанности или Денежное мышление', '', '', 24000, 3, 2550, 1551475662, 1552474269),
(13, 2, 'Креативность или Как раскрыть свои способности?', '', '', 4800, 3, 2700, 1551662364, 1552468095),
(14, 2, 'Мир будущей мамы - чувства, эмоции и настроение ', '<p>1</p>', '', 15200, 3, 2100, 1551729533, 1552468352),
(15, 2, 'Арт-терапия для корпоративного персонала организаций', '<p> 1</p>', '<p> 1</p>', 15200, 2, 2100, 1552464457, 1552468335);

-- --------------------------------------------------------

--
-- Структура таблицы `event_schedule`
--

CREATE TABLE `event_schedule` (
  `id` int(8) NOT NULL,
  `programm_id` int(8) NOT NULL,
  `item_programm_id` int(8) NOT NULL,
  `place_id` int(8) NOT NULL,
  `start_timestamp` int(11) NOT NULL,
  `end_timestamp` int(11) DEFAULT NULL,
  `description` mediumtext,
  `all_day` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Расписание занятий';

--
-- Дамп данных таблицы `event_schedule`
--

INSERT INTO `event_schedule` (`id`, `programm_id`, `item_programm_id`, `place_id`, `start_timestamp`, `end_timestamp`, `description`, `all_day`, `created_at`, `updated_at`) VALUES
(2, 1, 145, 1, 1552462200, 1552473600, '', 0, 1551856945, 1552425441);

-- --------------------------------------------------------

--
-- Структура таблицы `event_schedule_users`
--

CREATE TABLE `event_schedule_users` (
  `id` int(8) NOT NULL,
  `schedule_id` int(8) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `event_schedule_users`
--

INSERT INTO `event_schedule_users` (`id`, `schedule_id`, `user_id`) VALUES
(2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `event_vid`
--

CREATE TABLE `event_vid` (
  `id` int(8) NOT NULL,
  `status_vid` tinyint(1) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Вид занятий';

--
-- Дамп данных таблицы `event_vid`
--

INSERT INTO `event_vid` (`id`, `status_vid`, `name`, `description`, `created_at`) VALUES
(1, 0, 'Индивидуальные', '', 1546708700),
(2, 1, 'Групповые', '', 1546708966);

-- --------------------------------------------------------

--
-- Структура таблицы `image_manager`
--

CREATE TABLE `image_manager` (
  `id` mediumint(8) NOT NULL,
  `name` varchar(256) NOT NULL,
  `class` varchar(256) DEFAULT NULL,
  `item_id` mediumint(8) DEFAULT NULL,
  `alt` varchar(256) DEFAULT NULL,
  `sort` smallint(5) NOT NULL,
  `type` varchar(32) NOT NULL,
  `filetype` varchar(32) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image_manager`
--

INSERT INTO `image_manager` (`id`, `name`, `class`, `item_id`, `alt`, `sort`, `type`, `filetype`, `url`, `size`) VALUES
(1, '1545120447_096KGq.jpg', 'Post', 15, NULL, 1, 'image', NULL, 'http://artgornica.loc/uploads/images/Post/1545120447_096KGq.jpg', 221353),
(2, '1545120480_RLBCs6.jpg', 'Post', 15, NULL, 0, 'image', NULL, 'http://artgornica.loc/uploads/images/Post/1545120480_RLBCs6.jpg', 152305);

-- --------------------------------------------------------

--
-- Структура таблицы `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(127) DEFAULT NULL,
  `url` text,
  `size` varchar(127) DEFAULT NULL,
  `thumbs` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media`
--

INSERT INTO `media` (`id`, `album_id`, `filename`, `type`, `url`, `size`, `thumbs`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 4, 'solar-eclipse.jpg', 'image/jpeg', '/uploads/2019/02/solar-eclipse.jpg', '531187', 'a:4:{s:5:\"small\";s:41:\"/uploads/2019/02/solar-eclipse-128x72.jpg\";s:6:\"medium\";s:42:\"/uploads/2019/02/solar-eclipse-832x468.jpg\";s:5:\"large\";s:43:\"/uploads/2019/02/solar-eclipse-1280x720.jpg\";s:5:\"great\";s:44:\"/uploads/2019/02/solar-eclipse-1920x1080.jpg\";}', 1550492620, 1550603033, 1, 2),
(2, 4, 'forest.jpg', 'image/jpeg', '/uploads/2019/02/forest.jpg', '730310', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/forest-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/forest-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/forest-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/forest-1920x1080.jpg\";}', 1550492621, 1550603029, 1, 2),
(4, 4, 'textslider.jpg', 'image/jpeg', '/uploads/2019/02/textslider.jpg', '33269', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/textslider-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/textslider-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/textslider-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/textslider-1920x1080.jpg\";}', 1550492623, 1550603019, 1, 2),
(5, 3, 'tree-cat.jpg', 'image/jpeg', '/uploads/2019/02/tree-cat.jpg', '67693', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/tree-cat-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/tree-cat-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/tree-cat-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/tree-cat-1920x1080.jpg\";}', 1550492624, 1550603009, 1, 2),
(14, 12, '101719.jpg', 'image/jpeg', '/uploads/2019/02/101719.jpg', '579243', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/101719-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/101719-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/101719-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/101719-1920x1080.jpg\";}', 1550695702, 1552667496, 2, 2),
(15, 12, '113012.jpg', 'image/jpeg', '/uploads/2019/02/113012.jpg', '628005', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/113012-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/113012-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/113012-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/113012-1920x1080.jpg\";}', 1550695707, 1552667503, 2, 2),
(18, 12, '114157.jpg', 'image/jpeg', '/uploads/2019/02/114157.jpg', '626904', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/114157-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/114157-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/114157-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/114157-1920x1080.jpg\";}', 1550695716, 1552667509, 2, 2),
(19, 12, '3101018.jpg', 'image/jpeg', '/uploads/2019/02/3101018.jpg', '269129', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/3101018-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/3101018-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/3101018-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/3101018-1920x1080.jpg\";}', 1550695722, 1552667514, 2, 2),
(20, 12, '8798703.jpg', 'image/jpeg', '/uploads/2019/02/8798703.jpg', '370408', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/8798703-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/8798703-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/8798703-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/8798703-1920x1080.jpg\";}', 1550695724, 1552667520, 2, 2),
(21, 12, '1101018.jpg', 'image/jpeg', '/uploads/2019/02/1101018.jpg', '886484', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1101018-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1101018-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1101018-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1101018-1920x1080.jpg\";}', 1550697949, 1552667526, 2, 2),
(25, 7, '23598.jpg', 'image/jpeg', '/uploads/2019/02/23598.jpg', '854753', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/23598-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/23598-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/23598-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/23598-1920x1080.jpg\";}', 1550736298, 1550736315, 2, 2),
(26, 7, '25894563.jpg', 'image/jpeg', '/uploads/2019/02/25894563.jpg', '444285', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/25894563-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/25894563-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/25894563-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/25894563-1920x1080.jpg\";}', 1550739345, 1550739369, 2, 2),
(28, 7, '568923547.jpg', 'image/jpeg', '/uploads/2019/02/568923547.jpg', '1115007', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/568923547-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/568923547-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/568923547-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/568923547-1920x1080.jpg\";}', 1550740749, 1550740769, 2, 2),
(29, 7, '78563298.jpg', 'image/jpeg', '/uploads/2019/02/78563298.jpg', '781073', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/78563298-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/78563298-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/78563298-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/78563298-1920x1080.jpg\";}', 1550741732, 1550741758, 2, 2),
(30, 7, '56238456.jpg', 'image/jpeg', '/uploads/2019/02/56238456.jpg', '906096', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/56238456-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/56238456-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/56238456-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/56238456-1920x1080.jpg\";}', 1550743277, 1550743309, 2, 2),
(32, 7, '56897423.jpg', 'image/jpeg', '/uploads/2019/02/56897423.jpg', '2081876', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/56897423-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/56897423-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/56897423-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/56897423-1920x1080.jpg\";}', 1550747735, 1550747755, 2, 2),
(33, 7, '56284236.jpg', 'image/jpeg', '/uploads/2019/02/56284236.jpg', '1416094', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/56284236-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/56284236-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/56284236-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/56284236-1920x1080.jpg\";}', 1550748655, 1550748675, 2, 2),
(34, 7, '2569413.jpg', 'image/jpeg', '/uploads/2019/02/2569413.jpg', '1289888', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/2569413-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/2569413-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/2569413-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/2569413-1920x1080.jpg\";}', 1550751234, 1550751253, 2, 2),
(35, 7, '542983.jpg', 'image/jpeg', '/uploads/2019/02/542983.jpg', '678259', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/542983-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/542983-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/542983-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/542983-1920x1080.jpg\";}', 1550752532, 1550752559, 2, 2),
(36, 7, '159874523.jpg', 'image/jpeg', '/uploads/2019/02/159874523.jpg', '760420', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/159874523-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/159874523-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/159874523-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/159874523-1920x1080.jpg\";}', 1550754574, 1550754763, 2, 2),
(37, 7, '6512783.jpg', 'image/jpeg', '/uploads/2019/02/6512783.jpg', '812528', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/6512783-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/6512783-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/6512783-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/6512783-1920x1080.jpg\";}', 1550758361, 1550758381, 2, 2),
(38, 5, '1107190628.jpg', 'image/jpeg', '/uploads/2019/02/1107190628.jpg', '251849', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190628-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190628-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190628-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190628-1920x1080.jpg\";}', 1550762118, 1550765031, 2, 2),
(39, 5, '1107190642.jpg', 'image/jpeg', '/uploads/2019/02/1107190642.jpg', '293705', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190642-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190642-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190642-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190642-1920x1080.jpg\";}', 1550762121, 1550765041, 2, 2),
(40, 5, '1107190646.jpg', 'image/jpeg', '/uploads/2019/02/1107190646.jpg', '222089', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190646-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190646-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190646-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190646-1920x1080.jpg\";}', 1550762124, 1550765051, 2, 2),
(41, 5, '1107190652.jpg', 'image/jpeg', '/uploads/2019/02/1107190652.jpg', '259748', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190652-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190652-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190652-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190652-1920x1080.jpg\";}', 1550762126, 1550765061, 2, 2),
(42, 5, '1107190644.jpg', 'image/jpeg', '/uploads/2019/02/1107190644.jpg', '239025', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190644-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190644-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190644-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190644-1920x1080.jpg\";}', 1550762129, 1550765070, 2, 2),
(43, 5, '1107190686.jpg', 'image/jpeg', '/uploads/2019/02/1107190686.jpg', '277714', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190686-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190686-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190686-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190686-1920x1080.jpg\";}', 1550762132, 1550765080, 2, 2),
(44, 5, '1107190697.jpg', 'image/jpeg', '/uploads/2019/02/1107190697.jpg', '403803', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190697-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190697-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190697-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190697-1920x1080.jpg\";}', 1550762135, 1550765090, 2, 2),
(45, 5, '1107190717.jpg', 'image/jpeg', '/uploads/2019/02/1107190717.jpg', '151965', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190717-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190717-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190717-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190717-1920x1080.jpg\";}', 1550762138, 1550765099, 2, 2),
(46, 5, '1107190748.jpg', 'image/jpeg', '/uploads/2019/02/1107190748.jpg', '427494', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190748-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190748-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190748-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190748-1920x1080.jpg\";}', 1550762141, 1550765107, 2, 2),
(47, 5, '1107190754.jpg', 'image/jpeg', '/uploads/2019/02/1107190754.jpg', '567039', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107190754-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107190754-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107190754-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107190754-1920x1080.jpg\";}', 1550762144, 1550765116, 2, 2),
(48, 7, '20171075518.jpg', 'image/jpeg', '/uploads/2019/02/20171075518.jpg', '1299043', 'a:4:{s:5:\"small\";s:39:\"/uploads/2019/02/20171075518-128x72.jpg\";s:6:\"medium\";s:40:\"/uploads/2019/02/20171075518-832x468.jpg\";s:5:\"large\";s:41:\"/uploads/2019/02/20171075518-1280x720.jpg\";s:5:\"great\";s:42:\"/uploads/2019/02/20171075518-1920x1080.jpg\";}', 1550763201, 1550763222, 2, 2),
(52, 7, '24536829.jpg', 'image/jpeg', '/uploads/2019/02/24536829.jpg', '561122', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/24536829-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/24536829-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/24536829-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/24536829-1920x1080.jpg\";}', 1550766489, 1552398639, 2, 2),
(53, 6, '56482397.jpg', 'image/jpeg', '/uploads/2019/02/56482397.jpg', '341813', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/56482397-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/56482397-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/56482397-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/56482397-1920x1080.jpg\";}', 1550766506, 1550766643, 2, 2),
(54, 7, '11125896.jpg', 'image/jpeg', '/uploads/2019/02/11125896.jpg', '157476', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/11125896-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/11125896-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/11125896-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/11125896-1920x1080.jpg\";}', 1550766523, 1550766657, 2, 2),
(55, 8, '4398616.jpg', 'image/jpeg', '/uploads/2019/02/4398616.jpg', '502890', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/4398616-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/4398616-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/4398616-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/4398616-1920x1080.jpg\";}', 1550766537, 1552398532, 2, 2),
(56, 1, '1258886.jpg', 'image/jpeg', '/uploads/2019/02/1258886.jpg', '348801', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1258886-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1258886-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1258886-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1258886-1920x1080.jpg\";}', 1550776124, 1550776172, 2, 2),
(57, 1, '3590536.jpg', 'image/jpeg', '/uploads/2019/02/3590536.jpg', '344253', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/3590536-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/3590536-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/3590536-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/3590536-1920x1080.jpg\";}', 1550776129, 1550776178, 2, 2),
(58, 1, '2589569.jpg', 'image/jpeg', '/uploads/2019/02/2589569.jpg', '239744', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/2589569-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/2589569-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/2589569-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/2589569-1920x1080.jpg\";}', 1550776134, 1550776186, 2, 2),
(59, 1, '445690639.jpg', 'image/jpeg', '/uploads/2019/02/445690639.jpg', '375115', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/445690639-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/445690639-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/445690639-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/445690639-1920x1080.jpg\";}', 1550776137, 1550776193, 2, 2),
(60, 1, '35689444.jpg', 'image/jpeg', '/uploads/2019/02/35689444.jpg', '270333', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/35689444-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/35689444-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/35689444-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/35689444-1920x1080.jpg\";}', 1550776141, 1550776200, 2, 2),
(61, 1, '1107110107.jpg', 'image/jpeg', '/uploads/2019/02/1107110107.jpg', '329161', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107110107-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107110107-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107110107-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107110107-1920x1080.jpg\";}', 1550776145, 1550776206, 2, 2),
(62, 1, '1107231053.jpg', 'image/jpeg', '/uploads/2019/02/1107231053.jpg', '474097', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/1107231053-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/1107231053-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/1107231053-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/1107231053-1920x1080.jpg\";}', 1550776149, 1550776211, 2, 2),
(63, 1, '2225880591.jpg', 'image/jpeg', '/uploads/2019/02/2225880591.jpg', '266285', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/2225880591-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/2225880591-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/2225880591-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/2225880591-1920x1080.jpg\";}', 1550776151, 1550776216, 2, 2),
(64, 5, '456843.jpg', 'image/jpeg', '/uploads/2019/02/456843.jpg', '405582', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/456843-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/456843-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/456843-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/456843-1920x1080.jpg\";}', 1550778840, 1550779055, 2, 2),
(65, 5, '1234501.jpg', 'image/jpeg', '/uploads/2019/02/1234501.jpg', '439235', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1234501-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1234501-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1234501-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1234501-1920x1080.jpg\";}', 1550778845, 1550779067, 2, 2),
(67, 5, '1234509.jpg', 'image/jpeg', '/uploads/2019/02/1234509.jpg', '601861', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1234509-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1234509-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1234509-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1234509-1920x1080.jpg\";}', 1550778852, 1550779092, 2, 2),
(68, 5, '456807.jpg', 'image/jpeg', '/uploads/2019/02/456807.jpg', '520537', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/456807-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/456807-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/456807-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/456807-1920x1080.jpg\";}', 1550778855, 1550779108, 2, 2),
(69, 5, '1234502.jpg', 'image/jpeg', '/uploads/2019/02/1234502.jpg', '500194', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1234502-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1234502-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1234502-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1234502-1920x1080.jpg\";}', 1550778859, 1550779120, 2, 2),
(71, 5, '4568141.jpg', 'image/jpeg', '/uploads/2019/02/4568141.jpg', '379626', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/4568141-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/4568141-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/4568141-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/4568141-1920x1080.jpg\";}', 1550778865, 1550779140, 2, 2),
(72, 5, '12459011.jpg', 'image/jpeg', '/uploads/2019/02/12459011.jpg', '338286', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/12459011-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/12459011-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/12459011-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/12459011-1920x1080.jpg\";}', 1550778868, 1550779151, 2, 2),
(74, 5, '124593.jpg', 'image/jpeg', '/uploads/2019/02/124593.jpg', '156798', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/124593-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/124593-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/124593-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/124593-1920x1080.jpg\";}', 1550781042, 1550781096, 2, 2),
(75, 5, '124586.jpg', 'image/jpeg', '/uploads/2019/02/124586.jpg', '185169', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/124586-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/124586-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/124586-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/124586-1920x1080.jpg\";}', 1550781045, 1550781105, 2, 2),
(76, 5, '123467.jpg', 'image/jpeg', '/uploads/2019/02/123467.jpg', '220446', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/123467-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/123467-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/123467-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/123467-1920x1080.jpg\";}', 1550781048, 1550781115, 2, 2),
(77, 5, '1234561.jpg', 'image/jpeg', '/uploads/2019/02/1234561.jpg', '231699', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1234561-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1234561-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1234561-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1234561-1920x1080.jpg\";}', 1550781051, 1550781124, 2, 2),
(78, 5, '124594.jpg', 'image/jpeg', '/uploads/2019/02/124594.jpg', '316277', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/124594-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/124594-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/124594-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/124594-1920x1080.jpg\";}', 1550781054, 1550781134, 2, 2),
(79, 5, '124599.jpg', 'image/jpeg', '/uploads/2019/02/124599.jpg', '355667', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/124599-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/124599-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/124599-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/124599-1920x1080.jpg\";}', 1550781057, 1550781143, 2, 2),
(80, 5, '4562385.jpg', 'image/jpeg', '/uploads/2019/02/4562385.jpg', '295732', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/4562385-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/4562385-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/4562385-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/4562385-1920x1080.jpg\";}', 1550781060, 1550781152, 2, 2),
(81, 5, '4567898.jpg', 'image/jpeg', '/uploads/2019/02/4567898.jpg', '316885', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/4567898-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/4567898-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/4567898-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/4567898-1920x1080.jpg\";}', 1550781062, 1550781161, 2, 2),
(82, 5, '4578810.jpg', 'image/jpeg', '/uploads/2019/02/4578810.jpg', '249530', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/4578810-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/4578810-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/4578810-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/4578810-1920x1080.jpg\";}', 1550781065, 1550781170, 2, 2),
(83, 5, '7856292.jpg', 'image/jpeg', '/uploads/2019/02/7856292.jpg', '315227', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/7856292-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/7856292-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/7856292-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/7856292-1920x1080.jpg\";}', 1550781068, 1550781180, 2, 2),
(84, 5, '2.jpg', 'image/jpeg', '/uploads/2019/02/2.jpg', '406320', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/2-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/2-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/2-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/2-1920x1080.jpg\";}', 1550782759, 1550782809, 2, 2),
(85, 5, '1.jpg', 'image/jpeg', '/uploads/2019/02/1.jpg', '575011', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/1-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/1-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/1-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/1-1920x1080.jpg\";}', 1550782762, 1550782819, 2, 2),
(86, 5, '3.jpg', 'image/jpeg', '/uploads/2019/02/3.jpg', '406941', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/3-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/3-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/3-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/3-1920x1080.jpg\";}', 1550782765, 1550782828, 2, 2),
(88, 5, '6.jpg', 'image/jpeg', '/uploads/2019/02/6.jpg', '1420972', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/6-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/6-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/6-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/6-1920x1080.jpg\";}', 1550782771, 1550782847, 2, 2),
(89, 5, '4.jpg', 'image/jpeg', '/uploads/2019/02/4.jpg', '1526093', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/4-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/4-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/4-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/4-1920x1080.jpg\";}', 1550782774, 1550782856, 2, 2),
(91, 5, '8.jpg', 'image/jpeg', '/uploads/2019/02/8.jpg', '507877', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/02/8-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/02/8-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/02/8-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/02/8-1920x1080.jpg\";}', 1550782780, 1550782875, 2, 2),
(93, 5, '10.jpg', 'image/jpeg', '/uploads/2019/02/10.jpg', '456331', 'a:4:{s:5:\"small\";s:30:\"/uploads/2019/02/10-128x72.jpg\";s:6:\"medium\";s:31:\"/uploads/2019/02/10-832x468.jpg\";s:5:\"large\";s:32:\"/uploads/2019/02/10-1280x720.jpg\";s:5:\"great\";s:33:\"/uploads/2019/02/10-1920x1080.jpg\";}', 1550782786, 1550782894, 2, 2),
(94, 5, '2258960.jpg', 'image/jpeg', '/uploads/2019/02/2258960.jpg', '483783', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/2258960-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/2258960-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/2258960-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/2258960-1920x1080.jpg\";}', 1550822822, 1550822841, 2, 2),
(95, 5, '45689503.jpg', 'image/jpeg', '/uploads/2019/02/45689503.jpg', '1675428', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/45689503-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/45689503-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/45689503-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/45689503-1920x1080.jpg\";}', 1550823088, 1550823105, 2, 2),
(96, 7, 'img20181126165121.jpg', 'image/jpeg', '/uploads/2019/02/img20181126165121.jpg', '3428095', 'a:4:{s:5:\"small\";s:45:\"/uploads/2019/02/img20181126165121-128x72.jpg\";s:6:\"medium\";s:46:\"/uploads/2019/02/img20181126165121-832x468.jpg\";s:5:\"large\";s:47:\"/uploads/2019/02/img20181126165121-1280x720.jpg\";s:5:\"great\";s:48:\"/uploads/2019/02/img20181126165121-1920x1080.jpg\";}', 1550824998, 1550825032, 2, 2),
(97, 7, '259874.jpg', 'image/jpeg', '/uploads/2019/02/259874.jpg', '255225', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/259874-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/259874-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/259874-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/259874-1920x1080.jpg\";}', 1550826907, 1550826927, 2, 2),
(98, 8, '1482222.jpg', 'image/jpeg', '/uploads/2019/02/1482222.jpg', '627452', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/1482222-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/1482222-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/1482222-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/1482222-1920x1080.jpg\";}', 1550827269, 1552664613, 2, 2),
(100, 5, '02584444.jpg', 'image/jpeg', '/uploads/2019/02/02584444.jpg', '631205', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/02/02584444-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/02/02584444-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/02/02584444-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/02/02584444-1920x1080.jpg\";}', 1550828371, 1550828395, 2, 2),
(101, 5, 'img0120.jpg', 'image/jpeg', '/uploads/2019/02/img0120.jpg', '1966759', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/img0120-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/img0120-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/img0120-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/img0120-1920x1080.jpg\";}', 1550828973, 1550828988, 2, 2),
(102, 7, 'work-hobbies.jpg', 'image/jpeg', '/uploads/2019/02/work-hobbies.jpg', '456089', 'a:4:{s:5:\"small\";s:40:\"/uploads/2019/02/work-hobbies-128x72.jpg\";s:6:\"medium\";s:41:\"/uploads/2019/02/work-hobbies-832x468.jpg\";s:5:\"large\";s:42:\"/uploads/2019/02/work-hobbies-1280x720.jpg\";s:5:\"great\";s:43:\"/uploads/2019/02/work-hobbies-1920x1080.jpg\";}', 1550857025, 1550857053, 1, 1),
(103, 7, '2983.jpg', 'image/jpeg', '/uploads/2019/02/2983.jpg', '408849', 'a:4:{s:5:\"small\";s:32:\"/uploads/2019/02/2983-128x72.jpg\";s:6:\"medium\";s:33:\"/uploads/2019/02/2983-832x468.jpg\";s:5:\"large\";s:34:\"/uploads/2019/02/2983-1280x720.jpg\";s:5:\"great\";s:35:\"/uploads/2019/02/2983-1920x1080.jpg\";}', 1550939645, 1550939867, 2, 2),
(104, 7, '25986.jpg', 'image/jpeg', '/uploads/2019/02/25986.jpg', '1720814', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/25986-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/25986-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/25986-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/25986-1920x1080.jpg\";}', 1550939649, 1550939879, 2, 2),
(106, 7, '58965.jpg', 'image/jpeg', '/uploads/2019/02/58965.jpg', '751451', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/58965-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/58965-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/58965-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/58965-1920x1080.jpg\";}', 1550939655, 1550939913, 2, 2),
(107, 8, '54448999.jpeg', 'image/jpeg', '/uploads/2019/02/54448999.jpeg', '1019265', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/54448999-128x72.jpeg\";s:6:\"medium\";s:38:\"/uploads/2019/02/54448999-832x468.jpeg\";s:5:\"large\";s:39:\"/uploads/2019/02/54448999-1280x720.jpeg\";s:5:\"great\";s:40:\"/uploads/2019/02/54448999-1920x1080.jpeg\";}', 1550939659, 1552398412, 2, 2),
(109, 8, '555444333.jpg', 'image/jpeg', '/uploads/2019/02/555444333.jpg', '692781', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/555444333-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/555444333-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/555444333-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/555444333-1920x1080.jpg\";}', 1550943463, 1550943485, 2, 2),
(111, 8, '45568.jpg', 'image/jpeg', '/uploads/2019/02/45568.jpg', '1006460', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/45568-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/45568-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/45568-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/45568-1920x1080.jpg\";}', 1550943726, 1550943746, 2, 2),
(112, 8, '15899.jpg', 'image/jpeg', '/uploads/2019/02/15899.jpg', '1336951', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/15899-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/15899-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/15899-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/15899-1920x1080.jpg\";}', 1550944648, 1550944671, 2, 2),
(114, 2, '88888.jpg', 'image/jpeg', '/uploads/2019/02/88888.jpg', '420125', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/88888-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/88888-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/88888-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/88888-1920x1080.jpg\";}', 1551017999, 1551024496, 2, 2),
(122, 2, '11111.jpg', 'image/jpeg', '/uploads/2019/02/11111.jpg', '500047', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/11111-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/11111-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/11111-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/11111-1920x1080.jpg\";}', 1551019004, 1552398379, 2, 2),
(130, 2, '33333.jpg', 'image/jpeg', '/uploads/2019/02/33333.jpg', '659795', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/33333-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/33333-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/33333-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/33333-1920x1080.jpg\";}', 1551024639, 1551024660, 2, 2),
(131, 2, '225894.jpg', 'image/jpeg', '/uploads/2019/02/225894.jpg', '330376', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/02/225894-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/02/225894-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/02/225894-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/02/225894-1920x1080.jpg\";}', 1551024765, 1551024862, 2, 2),
(132, 2, '5890571.jpg', 'image/jpeg', '/uploads/2019/02/5890571.jpg', '437462', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/02/5890571-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/02/5890571-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/02/5890571-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/02/5890571-1920x1080.jpg\";}', 1551024843, 1551024877, 2, 2),
(137, 2, '920641386.jpg', 'image/jpeg', '/uploads/2019/02/920641386.jpg', '590089', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/920641386-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/920641386-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/920641386-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/920641386-1920x1080.jpg\";}', 1551035425, 1552398357, 2, 2),
(138, 2, '5896.png', 'image/png', '/uploads/2019/02/5896.png', '1240079', 'a:4:{s:5:\"small\";s:32:\"/uploads/2019/02/5896-128x72.png\";s:6:\"medium\";s:33:\"/uploads/2019/02/5896-832x468.png\";s:5:\"large\";s:34:\"/uploads/2019/02/5896-1280x720.png\";s:5:\"great\";s:35:\"/uploads/2019/02/5896-1920x1080.png\";}', 1551040679, 1551042325, 2, 2),
(139, 2, '22559.jpg', 'image/jpeg', '/uploads/2019/02/22559.jpg', '1270023', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/22559-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/22559-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/22559-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/22559-1920x1080.jpg\";}', 1551040686, 1551040725, 2, 2),
(141, 8, '100210933.jpg', 'image/jpeg', '/uploads/2019/02/100210933.jpg', '918294', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/100210933-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/100210933-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/100210933-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/100210933-1920x1080.jpg\";}', 1551043794, 1551044135, 2, 2),
(145, 8, '77777.jpg', 'image/jpeg', '/uploads/2019/02/77777.jpg', '1373071', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/02/77777-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/02/77777-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/02/77777-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/02/77777-1920x1080.jpg\";}', 1551361184, 1551361512, 2, 2),
(146, 8, '555992873.jpg', 'image/jpeg', '/uploads/2019/02/555992873.jpg', '1416028', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/555992873-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/555992873-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/555992873-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/555992873-1920x1080.jpg\";}', 1551361191, 1551361473, 2, 2),
(149, 8, '445598237.jpg', 'image/jpeg', '/uploads/2019/02/445598237.jpg', '1035545', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/02/445598237-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/02/445598237-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/02/445598237-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/02/445598237-1920x1080.jpg\";}', 1551361216, 1551361494, 2, 2),
(150, 8, '2255886633.jpg', 'image/jpeg', '/uploads/2019/02/2255886633.jpg', '1095497', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/02/2255886633-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/02/2255886633-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/02/2255886633-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/02/2255886633-1920x1080.jpg\";}', 1551361638, 1551361658, 2, 2),
(151, 8, '2.jpg', 'image/jpeg', '/uploads/2019/03/2.jpg', '1031930', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/03/2-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/03/2-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/03/2-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/03/2-1920x1080.jpg\";}', 1551428917, 1551428995, 2, 2),
(156, 12, '2589657.jpg', 'image/jpeg', '/uploads/2019/03/2589657.jpg', '630841', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2589657-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2589657-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2589657-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2589657-1920x1080.jpg\";}', 1551688096, 1552398234, 2, 2),
(157, 12, '53338777.jpg', 'image/jpeg', '/uploads/2019/03/53338777.jpg', '418771', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/53338777-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/53338777-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/53338777-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/53338777-1920x1080.jpg\";}', 1551688100, 1552398227, 2, 2),
(160, 12, '55588834.jpg', 'image/jpeg', '/uploads/2019/03/55588834.jpg', '591965', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55588834-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55588834-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55588834-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55588834-1920x1080.jpg\";}', 1551688162, 1552398223, 2, 2),
(161, 12, '99851114.jpg', 'image/jpeg', '/uploads/2019/03/99851114.jpg', '510339', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/99851114-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/99851114-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/99851114-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/99851114-1920x1080.jpg\";}', 1551688166, 1552398218, 2, 2),
(162, 12, '55544422.jpg', 'image/jpeg', '/uploads/2019/03/55544422.jpg', '453939', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55544422-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55544422-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55544422-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55544422-1920x1080.jpg\";}', 1551688194, 1552398212, 2, 2),
(163, 12, '589655.jpg', 'image/jpeg', '/uploads/2019/03/589655.jpg', '1489892', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/589655-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/589655-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/589655-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/589655-1920x1080.jpg\";}', 1551689008, 1552398208, 2, 2),
(166, 12, '8529632.jpg', 'image/jpeg', '/uploads/2019/03/8529632.jpg', '382424', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/8529632-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/8529632-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/8529632-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/8529632-1920x1080.jpg\";}', 1551690723, 1552398199, 2, 2),
(168, 8, '598746.jpg', 'image/jpeg', '/uploads/2019/03/598746.jpg', '234969', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/598746-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/598746-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/598746-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/598746-1920x1080.jpg\";}', 1551691326, 1552398191, 2, 2),
(169, 8, '2003687.jpg', 'image/jpeg', '/uploads/2019/03/2003687.jpg', '888695', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2003687-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2003687-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2003687-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2003687-1920x1080.jpg\";}', 1551691800, 1552398185, 2, 2),
(170, 12, '25000661.jpg', 'image/jpeg', '/uploads/2019/03/25000661.jpg', '673300', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25000661-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25000661-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25000661-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25000661-1920x1080.jpg\";}', 1551691803, 1552398178, 2, 2),
(171, 8, '25897.jpg', 'image/jpeg', '/uploads/2019/03/25897.jpg', '232462', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/03/25897-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/03/25897-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/03/25897-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/03/25897-1920x1080.jpg\";}', 1551692087, 1552398169, 2, 2),
(172, 8, '2885521.jpg', 'image/jpeg', '/uploads/2019/03/2885521.jpg', '249285', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2885521-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2885521-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2885521-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2885521-1920x1080.jpg\";}', 1551692223, 1552398147, 2, 2),
(173, 8, '2000136.jpg', 'image/jpeg', '/uploads/2019/03/2000136.jpg', '393474', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2000136-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2000136-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2000136-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2000136-1920x1080.jpg\";}', 1551692546, 1552398142, 2, 2),
(174, 8, '12.jpg', 'image/jpeg', '/uploads/2019/03/12.jpg', '553173', 'a:4:{s:5:\"small\";s:30:\"/uploads/2019/03/12-128x72.jpg\";s:6:\"medium\";s:31:\"/uploads/2019/03/12-832x468.jpg\";s:5:\"large\";s:32:\"/uploads/2019/03/12-1280x720.jpg\";s:5:\"great\";s:33:\"/uploads/2019/03/12-1920x1080.jpg\";}', 1551693069, 1552398118, 2, 2),
(176, 8, 'schastlivaya-semya-2.jpeg', 'image/jpeg', '/uploads/2019/03/schastlivaya-semya-2.jpeg', '1025214', 'a:4:{s:5:\"small\";s:49:\"/uploads/2019/03/schastlivaya-semya-2-128x72.jpeg\";s:6:\"medium\";s:50:\"/uploads/2019/03/schastlivaya-semya-2-832x468.jpeg\";s:5:\"large\";s:51:\"/uploads/2019/03/schastlivaya-semya-2-1280x720.jpeg\";s:5:\"great\";s:52:\"/uploads/2019/03/schastlivaya-semya-2-1920x1080.jpeg\";}', 1551693075, 1552398113, 2, 2),
(180, 12, '2890660.jpg', 'image/jpeg', '/uploads/2019/03/2890660.jpg', '349964', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2890660-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2890660-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2890660-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2890660-1920x1080.jpg\";}', 1551693687, 1552398068, 2, 2),
(181, 12, '5890653.jpg', 'image/jpeg', '/uploads/2019/03/5890653.jpg', '1204871', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5890653-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5890653-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5890653-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5890653-1920x1080.jpg\";}', 1551694270, 1552398051, 2, 2),
(183, 12, '5870659.jpg', 'image/jpeg', '/uploads/2019/03/5870659.jpg', '1290793', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5870659-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5870659-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5870659-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5870659-1920x1080.jpg\";}', 1551694276, 1552398060, 2, 2),
(184, 8, '258964.jpg', 'image/jpeg', '/uploads/2019/03/258964.jpg', '780630', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258964-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258964-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258964-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258964-1920x1080.jpg\";}', 1551694406, 1552397990, 2, 2),
(188, 12, '5548333.jpg', 'image/jpeg', '/uploads/2019/03/5548333.jpg', '600708', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5548333-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5548333-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5548333-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5548333-1920x1080.jpg\";}', 1551694501, 1552397978, 2, 2),
(189, 12, '5890658.jpg', 'image/jpeg', '/uploads/2019/03/5890658.jpg', '576015', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5890658-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5890658-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5890658-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5890658-1920x1080.jpg\";}', 1551694504, 1552397974, 2, 2),
(190, 12, '2017021.jpg', 'image/jpeg', '/uploads/2019/03/2017021.jpg', '458925', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2017021-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2017021-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2017021-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2017021-1920x1080.jpg\";}', 1551694820, 1552397967, 2, 2),
(191, 12, 'img0665.jpg', 'image/jpeg', '/uploads/2019/03/img0665.jpg', '648422', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/img0665-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/img0665-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/img0665-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/img0665-1920x1080.jpg\";}', 1551695142, 1552397957, 2, 2),
(192, 12, '2589366.jpg', 'image/jpeg', '/uploads/2019/03/2589366.jpg', '638447', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2589366-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2589366-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2589366-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2589366-1920x1080.jpg\";}', 1551702333, 1552397949, 1, 2),
(193, 8, '5689994.jpg', 'image/jpeg', '/uploads/2019/03/5689994.jpg', '551811', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5689994-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5689994-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5689994-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5689994-1920x1080.jpg\";}', 1551704270, 1552397934, 2, 2),
(194, 8, '55588877.jpg', 'image/jpeg', '/uploads/2019/03/55588877.jpg', '923121', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55588877-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55588877-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55588877-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55588877-1920x1080.jpg\";}', 1551705590, 1552397924, 2, 2),
(195, 8, '25894.jpg', 'image/jpeg', '/uploads/2019/03/25894.jpg', '316515', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/03/25894-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/03/25894-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/03/25894-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/03/25894-1920x1080.jpg\";}', 1551705726, 1552397906, 2, 2),
(196, 8, '201555889.jpg', 'image/jpeg', '/uploads/2019/03/201555889.jpg', '1499503', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/201555889-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/201555889-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/201555889-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/201555889-1920x1080.jpg\";}', 1551705866, 1552397898, 2, 2),
(197, 8, '258884.jpg', 'image/jpeg', '/uploads/2019/03/258884.jpg', '210601', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258884-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258884-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258884-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258884-1920x1080.jpg\";}', 1551706244, 1552397894, 2, 2),
(198, 8, '258946.jpg', 'image/jpeg', '/uploads/2019/03/258946.jpg', '233666', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258946-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258946-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258946-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258946-1920x1080.jpg\";}', 1551706946, 1552397885, 2, 2),
(199, 8, '180510000.jpg', 'image/jpeg', '/uploads/2019/03/180510000.jpg', '563544', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/180510000-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/180510000-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/180510000-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/180510000-1920x1080.jpg\";}', 1551707240, 1552397865, 2, 2),
(200, 12, '480371340.jpg', 'image/jpeg', '/uploads/2019/03/480371340.jpg', '403396', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/480371340-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/480371340-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/480371340-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/480371340-1920x1080.jpg\";}', 1551707389, 1552397814, 2, 2),
(201, 8, 'maxresdefault.jpg', 'image/jpeg', '/uploads/2019/03/maxresdefault.jpg', '61137', 'a:4:{s:5:\"small\";s:41:\"/uploads/2019/03/maxresdefault-128x72.jpg\";s:6:\"medium\";s:42:\"/uploads/2019/03/maxresdefault-832x468.jpg\";s:5:\"large\";s:43:\"/uploads/2019/03/maxresdefault-1280x720.jpg\";s:5:\"great\";s:44:\"/uploads/2019/03/maxresdefault-1920x1080.jpg\";}', 1551707526, 1552397803, 2, 2),
(202, 8, 'orig461571.jpg', 'image/jpeg', '/uploads/2019/03/orig461571.jpg', '542631', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/03/orig461571-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/03/orig461571-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/03/orig461571-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/03/orig461571-1920x1080.jpg\";}', 1551707528, 1552397775, 2, 2),
(204, 8, 'wp20160731103135pro.jpg', 'image/jpeg', '/uploads/2019/03/wp20160731103135pro.jpg', '540766', 'a:4:{s:5:\"small\";s:47:\"/uploads/2019/03/wp20160731103135pro-128x72.jpg\";s:6:\"medium\";s:48:\"/uploads/2019/03/wp20160731103135pro-832x468.jpg\";s:5:\"large\";s:49:\"/uploads/2019/03/wp20160731103135pro-1280x720.jpg\";s:5:\"great\";s:50:\"/uploads/2019/03/wp20160731103135pro-1920x1080.jpg\";}', 1551707803, 1552397760, 2, 2),
(205, 8, '259936.jpg', 'image/jpeg', '/uploads/2019/03/259936.jpg', '1266451', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/259936-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/259936-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/259936-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/259936-1920x1080.jpg\";}', 1551707979, 1552397756, 2, 2),
(207, 8, '2518946.jpg', 'image/jpeg', '/uploads/2019/03/2518946.jpg', '936424', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2518946-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2518946-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2518946-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2518946-1920x1080.jpg\";}', 1551708595, 1552397750, 2, 2),
(208, 8, '55000298.jpg', 'image/jpeg', '/uploads/2019/03/55000298.jpg', '718070', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55000298-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55000298-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55000298-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55000298-1920x1080.jpg\";}', 1551708714, 1552397729, 2, 2),
(209, 8, '230089.jpg', 'image/jpeg', '/uploads/2019/03/230089.jpg', '240940', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/230089-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/230089-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/230089-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/230089-1920x1080.jpg\";}', 1551708813, 1552397708, 2, 2),
(210, 8, '2557789.jpg', 'image/jpeg', '/uploads/2019/03/2557789.jpg', '948685', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2557789-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2557789-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2557789-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2557789-1920x1080.jpg\";}', 1551708944, 1552397667, 2, 2);
INSERT INTO `media` (`id`, `album_id`, `filename`, `type`, `url`, `size`, `thumbs`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(211, 8, '2589977.jpg', 'image/jpeg', '/uploads/2019/03/2589977.jpg', '397884', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2589977-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2589977-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2589977-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2589977-1920x1080.jpg\";}', 1551709051, 1552397663, 2, 2),
(212, 8, '693856.jpg', 'image/jpeg', '/uploads/2019/03/693856.jpg', '275230', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/693856-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/693856-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/693856-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/693856-1920x1080.jpg\";}', 1551709210, 1552397658, 2, 2),
(213, 8, '2005936.jpg', 'image/jpeg', '/uploads/2019/03/2005936.jpg', '371844', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2005936-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2005936-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2005936-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2005936-1920x1080.jpg\";}', 1551709382, 1552397638, 2, 2),
(216, 8, '20185050.jpg', 'image/jpeg', '/uploads/2019/03/20185050.jpg', '2690042', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/20185050-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/20185050-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/20185050-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/20185050-1920x1080.jpg\";}', 1551715976, 1552397632, 2, 2),
(217, 12, '4555598.jpg', 'image/jpeg', '/uploads/2019/03/4555598.jpg', '776440', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/4555598-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/4555598-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/4555598-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/4555598-1920x1080.jpg\";}', 1551716269, 1552669498, 2, 2),
(218, 12, '253894.jpg', 'image/jpeg', '/uploads/2019/03/253894.jpg', '688856', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/253894-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/253894-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/253894-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/253894-1920x1080.jpg\";}', 1551730610, 1552669504, 2, 2),
(220, 8, '25896.jpg', 'image/jpeg', '/uploads/2019/03/25896.jpg', '707482', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/03/25896-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/03/25896-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/03/25896-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/03/25896-1920x1080.jpg\";}', 1551730890, 1552397604, 2, 2),
(221, 8, '928308.jpg', 'image/jpeg', '/uploads/2019/03/928308.jpg', '393693', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/928308-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/928308-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/928308-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/928308-1920x1080.jpg\";}', 1551731253, 1552666301, 2, 2),
(222, 12, '2599777.jpg', 'image/jpeg', '/uploads/2019/03/2599777.jpg', '1238085', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2599777-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2599777-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2599777-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2599777-1920x1080.jpg\";}', 1551731385, 1552397590, 2, 2),
(223, 8, '2588885.jpg', 'image/jpeg', '/uploads/2019/03/2588885.jpg', '347394', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2588885-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2588885-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2588885-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2588885-1920x1080.jpg\";}', 1551731489, 1552397582, 2, 2),
(224, 8, '170053.jpg', 'image/jpeg', '/uploads/2019/03/170053.jpg', '726412', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/170053-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/170053-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/170053-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/170053-1920x1080.jpg\";}', 1551781204, 1552397575, 2, 2),
(225, 8, '247778.jpg', 'image/jpeg', '/uploads/2019/03/247778.jpg', '478379', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/247778-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/247778-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/247778-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/247778-1920x1080.jpg\";}', 1551781209, 1552397141, 2, 2),
(227, 8, '255889.jpg', 'image/jpeg', '/uploads/2019/03/255889.jpg', '1181530', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/255889-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/255889-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/255889-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/255889-1920x1080.jpg\";}', 1551781216, 1552397100, 2, 2),
(228, 8, '224887.jpg', 'image/jpeg', '/uploads/2019/03/224887.jpg', '584631', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/224887-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/224887-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/224887-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/224887-1920x1080.jpg\";}', 1551781219, 1552397070, 2, 2),
(229, 8, '58955.jpg', 'image/jpeg', '/uploads/2019/03/58955.jpg', '450040', 'a:4:{s:5:\"small\";s:33:\"/uploads/2019/03/58955-128x72.jpg\";s:6:\"medium\";s:34:\"/uploads/2019/03/58955-832x468.jpg\";s:5:\"large\";s:35:\"/uploads/2019/03/58955-1280x720.jpg\";s:5:\"great\";s:36:\"/uploads/2019/03/58955-1920x1080.jpg\";}', 1551781223, 1552396984, 2, 2),
(230, 12, '258947.jpg', 'image/jpeg', '/uploads/2019/03/258947.jpg', '1696639', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258947-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258947-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258947-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258947-1920x1080.jpg\";}', 1551781227, 1552396968, 2, 2),
(231, 12, '258971.jpg', 'image/jpeg', '/uploads/2019/03/258971.jpg', '531333', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258971-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258971-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258971-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258971-1920x1080.jpg\";}', 1551781258, 1552396959, 2, 2),
(232, 6, '258974.jpg', 'image/jpeg', '/uploads/2019/03/258974.jpg', '469010', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258974-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258974-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258974-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258974-1920x1080.jpg\";}', 1551781261, 1552398619, 2, 2),
(233, 8, '258996.jpg', 'image/jpeg', '/uploads/2019/03/258996.jpg', '424328', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258996-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258996-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258996-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258996-1920x1080.jpg\";}', 1551781265, 1552396918, 2, 2),
(234, 8, '555897.jpg', 'image/jpeg', '/uploads/2019/03/555897.jpg', '1723960', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/555897-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/555897-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/555897-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/555897-1920x1080.jpg\";}', 1551781268, 1552396903, 2, 2),
(235, 12, '589764.jpg', 'image/jpeg', '/uploads/2019/03/589764.jpg', '896197', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/589764-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/589764-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/589764-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/589764-1920x1080.jpg\";}', 1551781272, 1552396895, 2, 2),
(236, 8, '876692.jpg', 'image/jpeg', '/uploads/2019/03/876692.jpg', '1362299', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/876692-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/876692-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/876692-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/876692-1920x1080.jpg\";}', 1551781276, 1552396864, 2, 2),
(237, 12, '2000895.jpg', 'image/jpeg', '/uploads/2019/03/2000895.jpg', '1508978', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2000895-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2000895-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2000895-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2000895-1920x1080.jpg\";}', 1551781279, 1552396835, 2, 2),
(238, 8, '2336987.jpg', 'image/jpeg', '/uploads/2019/03/2336987.jpg', '654485', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2336987-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2336987-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2336987-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2336987-1920x1080.jpg\";}', 1551781282, 1552396823, 2, 2),
(239, 12, '2499963.jpg', 'image/jpeg', '/uploads/2019/03/2499963.jpg', '1615520', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2499963-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2499963-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2499963-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2499963-1920x1080.jpg\";}', 1551781286, 1552396573, 2, 2),
(241, 8, '8887744.jpg', 'image/jpeg', '/uploads/2019/03/8887744.jpg', '826755', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/8887744-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/8887744-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/8887744-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/8887744-1920x1080.jpg\";}', 1551781292, 1552396543, 2, 2),
(244, 8, '25845633.jpg', 'image/jpeg', '/uploads/2019/03/25845633.jpg', '1057146', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25845633-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25845633-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25845633-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25845633-1920x1080.jpg\";}', 1551781302, 1552396414, 2, 2),
(245, NULL, '54628300.jpg', 'image/jpeg', '/uploads/2019/03/54628300.jpg', '449541', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/54628300-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/54628300-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/54628300-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/54628300-1920x1080.jpg\";}', 1551781305, 1551781308, 2, 2),
(246, 8, '224931873.jpg', 'image/jpeg', '/uploads/2019/03/224931873.jpg', '700573', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/224931873-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/224931873-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/224931873-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/224931873-1920x1080.jpg\";}', 1551781308, 1552396394, 2, 2),
(247, 8, '256489.jpg', 'image/jpeg', '/uploads/2019/03/256489.jpg', '1191343', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/256489-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/256489-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/256489-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/256489-1920x1080.jpg\";}', 1551825614, 1552396384, 2, 2),
(248, 8, '1005937.jpg', 'image/jpeg', '/uploads/2019/03/1005937.jpg', '2196559', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/1005937-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/1005937-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/1005937-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/1005937-1920x1080.jpg\";}', 1551825620, 1552396376, 2, 2),
(249, 8, '300985.jpg', 'image/jpeg', '/uploads/2019/03/300985.jpg', '656252', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/300985-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/300985-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/300985-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/300985-1920x1080.jpg\";}', 1551825624, 1552396137, 2, 2),
(250, 8, '2558946.jpg', 'image/jpeg', '/uploads/2019/03/2558946.jpg', '948707', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2558946-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2558946-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2558946-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2558946-1920x1080.jpg\";}', 1551825627, 1552395610, 2, 2),
(251, 12, '1805939.jpg', 'image/jpeg', '/uploads/2019/03/1805939.jpg', '1250649', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/1805939-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/1805939-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/1805939-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/1805939-1920x1080.jpg\";}', 1551825630, 1552395577, 2, 2),
(253, 12, '2590468.jpg', 'image/jpeg', '/uploads/2019/03/2590468.jpg', '1839832', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2590468-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2590468-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2590468-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2590468-1920x1080.jpg\";}', 1551825637, 1552395558, 2, 2),
(254, 8, '3658991.jpg', 'image/jpeg', '/uploads/2019/03/3658991.jpg', '543213', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/3658991-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/3658991-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/3658991-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/3658991-1920x1080.jpg\";}', 1551825641, 1552395545, 2, 2),
(255, 8, '5548787.jpg', 'image/jpeg', '/uploads/2019/03/5548787.jpg', '1128103', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5548787-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5548787-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5548787-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5548787-1920x1080.jpg\";}', 1551825684, 1552395537, 2, 2),
(256, 8, '5984231.jpg', 'image/jpeg', '/uploads/2019/03/5984231.jpg', '927328', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5984231-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5984231-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5984231-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5984231-1920x1080.jpg\";}', 1551825688, 1552395495, 2, 2),
(257, 8, '6638847.jpg', 'image/jpeg', '/uploads/2019/03/6638847.jpg', '1039680', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/6638847-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/6638847-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/6638847-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/6638847-1920x1080.jpg\";}', 1551825691, 1552395479, 2, 2),
(258, 8, '07042589.jpg', 'image/jpeg', '/uploads/2019/03/07042589.jpg', '2348237', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/07042589-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/07042589-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/07042589-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/07042589-1920x1080.jpg\";}', 1551825695, 1552395468, 2, 2),
(259, 8, '13013045.jpg', 'image/jpeg', '/uploads/2019/03/13013045.jpg', '1228195', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/13013045-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/13013045-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/13013045-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/13013045-1920x1080.jpg\";}', 1551825699, 1552395451, 2, 2),
(260, 12, '22584001.jpg', 'image/jpeg', '/uploads/2019/03/22584001.jpg', '1586295', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/22584001-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/22584001-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/22584001-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/22584001-1920x1080.jpg\";}', 1551825702, 1552395440, 2, 2),
(261, 8, '23598009.jpg', 'image/jpeg', '/uploads/2019/03/23598009.jpg', '460908', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/23598009-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/23598009-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/23598009-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/23598009-1920x1080.jpg\";}', 1551825706, 1552395432, 2, 2),
(262, 8, '25489963.jpg', 'image/jpeg', '/uploads/2019/03/25489963.jpg', '61072', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25489963-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25489963-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25489963-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25489963-1920x1080.jpg\";}', 1551825710, 1552395386, 2, 2),
(263, 8, '25899654.jpg', 'image/jpeg', '/uploads/2019/03/25899654.jpg', '738594', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25899654-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25899654-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25899654-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25899654-1920x1080.jpg\";}', 1551825713, 1552395211, 2, 2),
(264, 8, '30850651.jpg', 'image/jpeg', '/uploads/2019/03/30850651.jpg', '1058398', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/30850651-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/30850651-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/30850651-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/30850651-1920x1080.jpg\";}', 1551825717, 1552394555, 2, 2),
(266, 12, '37000408.jpg', 'image/jpeg', '/uploads/2019/03/37000408.jpg', '799760', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/37000408-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/37000408-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/37000408-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/37000408-1920x1080.jpg\";}', 1551825739, 1552394509, 2, 2),
(267, 8, '53531634.jpg', 'image/jpeg', '/uploads/2019/03/53531634.jpg', '2063857', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/53531634-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/53531634-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/53531634-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/53531634-1920x1080.jpg\";}', 1551825742, 1552394496, 2, 2),
(268, 8, '80096512.jpg', 'image/jpeg', '/uploads/2019/03/80096512.jpg', '962406', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/80096512-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/80096512-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/80096512-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/80096512-1920x1080.jpg\";}', 1551825746, 1552394481, 2, 2),
(270, 8, '99500357.jpg', 'image/jpeg', '/uploads/2019/03/99500357.jpg', '584815', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/99500357-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/99500357-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/99500357-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/99500357-1920x1080.jpg\";}', 1551825769, 1552394454, 2, 2),
(271, 8, '236210058.jpg', 'image/jpeg', '/uploads/2019/03/236210058.jpg', '1562949', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/236210058-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/236210058-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/236210058-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/236210058-1920x1080.jpg\";}', 1551825772, 1552394439, 2, 2),
(272, 8, '16092194314.jpg', 'image/jpeg', '/uploads/2019/03/16092194314.jpg', '1501153', 'a:4:{s:5:\"small\";s:39:\"/uploads/2019/03/16092194314-128x72.jpg\";s:6:\"medium\";s:40:\"/uploads/2019/03/16092194314-832x468.jpg\";s:5:\"large\";s:41:\"/uploads/2019/03/16092194314-1280x720.jpg\";s:5:\"great\";s:42:\"/uploads/2019/03/16092194314-1920x1080.jpg\";}', 1551825776, 1552394428, 2, 2),
(273, 8, '543096385223.jpg', 'image/jpeg', '/uploads/2019/03/543096385223.jpg', '927015', 'a:4:{s:5:\"small\";s:40:\"/uploads/2019/03/543096385223-128x72.jpg\";s:6:\"medium\";s:41:\"/uploads/2019/03/543096385223-832x468.jpg\";s:5:\"large\";s:42:\"/uploads/2019/03/543096385223-1280x720.jpg\";s:5:\"great\";s:43:\"/uploads/2019/03/543096385223-1920x1080.jpg\";}', 1551825880, 1552661783, 2, 2),
(274, 12, 'img0508.jpg', 'image/jpeg', '/uploads/2019/03/img0508.jpg', '1694693', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/img0508-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/img0508-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/img0508-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/img0508-1920x1080.jpg\";}', 1551825884, 1552394393, 2, 2),
(276, 12, '33500087.jpg', 'image/jpeg', '/uploads/2019/03/33500087.jpg', '1758301', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/33500087-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/33500087-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/33500087-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/33500087-1920x1080.jpg\";}', 1551826318, 1552394380, 2, 2),
(277, 12, '92000148.jpg', 'image/jpeg', '/uploads/2019/03/92000148.jpg', '1654476', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/92000148-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/92000148-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/92000148-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/92000148-1920x1080.jpg\";}', 1551826334, 1552394366, 2, 2),
(278, 12, '2138954.jpg', 'image/jpeg', '/uploads/2019/03/2138954.jpg', '1123316', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2138954-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2138954-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2138954-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2138954-1920x1080.jpg\";}', 1552301648, 1552394344, 2, 2),
(282, 8, '95487326.jpg', 'image/jpeg', '/uploads/2019/03/95487326.jpg', '1557188', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/95487326-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/95487326-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/95487326-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/95487326-1920x1080.jpg\";}', 1552304645, 1552393998, 2, 2),
(284, 8, '3214563.jpg', 'image/jpeg', '/uploads/2019/03/3214563.jpg', '1447419', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/3214563-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/3214563-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/3214563-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/3214563-1920x1080.jpg\";}', 1552305077, 1552393986, 2, 2),
(285, 8, '258951352.jpg', 'image/jpeg', '/uploads/2019/03/258951352.jpg', '364567', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/258951352-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/258951352-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/258951352-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/258951352-1920x1080.jpg\";}', 1552307540, 1552393937, 2, 2),
(286, 8, '212154.jpg', 'image/jpeg', '/uploads/2019/03/212154.jpg', '3108344', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/212154-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/212154-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/212154-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/212154-1920x1080.jpg\";}', 1552313485, 1552393907, 2, 2),
(287, 8, '2584545.jpg', 'image/jpeg', '/uploads/2019/03/2584545.jpg', '1005668', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2584545-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2584545-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2584545-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2584545-1920x1080.jpg\";}', 1552313493, 1552393873, 2, 2),
(288, 8, '25852349.jpg', 'image/jpeg', '/uploads/2019/03/25852349.jpg', '411407', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25852349-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25852349-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25852349-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25852349-1920x1080.jpg\";}', 1552313496, 1552393863, 2, 2),
(289, 8, '25845458.jpg', 'image/jpeg', '/uploads/2019/03/25845458.jpg', '429368', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25845458-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25845458-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25845458-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25845458-1920x1080.jpg\";}', 1552313500, 1552393811, 2, 2),
(290, 8, '15110930.jpg', 'image/jpeg', '/uploads/2019/03/15110930.jpg', '395995', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/15110930-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/15110930-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/15110930-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/15110930-1920x1080.jpg\";}', 1552313503, 1552393776, 2, 2),
(291, 12, '2589436.jpg', 'image/jpeg', '/uploads/2019/03/2589436.jpg', '416659', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2589436-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2589436-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2589436-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2589436-1920x1080.jpg\";}', 1552313506, 1552393765, 2, 2),
(292, 8, '154524983.jpg', 'image/jpeg', '/uploads/2019/03/154524983.jpg', '524042', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/154524983-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/154524983-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/154524983-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/154524983-1920x1080.jpg\";}', 1552313510, 1552393746, 2, 2),
(294, 12, '259847.jpg', 'image/jpeg', '/uploads/2019/03/259847.jpg', '283248', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/259847-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/259847-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/259847-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/259847-1920x1080.jpg\";}', 1552315660, 1552393735, 2, 2),
(295, 12, '2588854.jpg', 'image/jpeg', '/uploads/2019/03/2588854.jpg', '188258', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2588854-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2588854-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2588854-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2588854-1920x1080.jpg\";}', 1552317149, 1552393721, 2, 2),
(296, 8, '2642645.jpg', 'image/jpeg', '/uploads/2019/03/2642645.jpg', '368767', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2642645-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2642645-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2642645-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2642645-1920x1080.jpg\";}', 1552328522, 1552393698, 2, 2),
(297, 8, '12121548.jpg', 'image/jpeg', '/uploads/2019/03/12121548.jpg', '554493', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/12121548-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/12121548-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/12121548-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/12121548-1920x1080.jpg\";}', 1552328531, 1552393688, 2, 2),
(298, 8, '5558477.jpg', 'image/jpeg', '/uploads/2019/03/5558477.jpg', '606345', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5558477-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5558477-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5558477-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5558477-1920x1080.jpg\";}', 1552328534, 1552669228, 2, 2),
(299, 12, '535287701.jpg', 'image/jpeg', '/uploads/2019/03/535287701.jpg', '344804', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/535287701-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/535287701-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/535287701-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/535287701-1920x1080.jpg\";}', 1552328540, 1552393654, 2, 2),
(300, 8, '146688136.jpg', 'image/jpeg', '/uploads/2019/03/146688136.jpg', '96712', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/146688136-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/146688136-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/146688136-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/146688136-1920x1080.jpg\";}', 1552328544, 1552393610, 2, 2),
(301, 8, '34612795.jpg', 'image/jpeg', '/uploads/2019/03/34612795.jpg', '462611', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/34612795-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/34612795-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/34612795-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/34612795-1920x1080.jpg\";}', 1552328547, 1552393167, 2, 2),
(302, 8, 'happy-people-habits-happiness.jpg', 'image/jpeg', '/uploads/2019/03/happy-people-habits-happiness.jpg', '1003153', 'a:4:{s:5:\"small\";s:57:\"/uploads/2019/03/happy-people-habits-happiness-128x72.jpg\";s:6:\"medium\";s:58:\"/uploads/2019/03/happy-people-habits-happiness-832x468.jpg\";s:5:\"large\";s:59:\"/uploads/2019/03/happy-people-habits-happiness-1280x720.jpg\";s:5:\"great\";s:60:\"/uploads/2019/03/happy-people-habits-happiness-1920x1080.jpg\";}', 1552328551, 1552393150, 2, 2),
(304, 8, '55489959.jpg', 'image/jpeg', '/uploads/2019/03/55489959.jpg', '219248', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55489959-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55489959-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55489959-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55489959-1920x1080.jpg\";}', 1552329273, 1552393092, 2, 2),
(305, 8, '2585852.jpg', 'image/jpeg', '/uploads/2019/03/2585852.jpg', '297706', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2585852-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2585852-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2585852-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2585852-1920x1080.jpg\";}', 1552333440, 1552392968, 2, 2),
(306, 8, '111400563.jpg', 'image/jpeg', '/uploads/2019/03/111400563.jpg', '373721', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/111400563-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/111400563-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/111400563-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/111400563-1920x1080.jpg\";}', 1552333719, 1552392954, 2, 2),
(307, 8, '1598516782.jpg', 'image/jpeg', '/uploads/2019/03/1598516782.jpg', '723568', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/03/1598516782-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/03/1598516782-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/03/1598516782-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/03/1598516782-1920x1080.jpg\";}', 1552333722, 1552392942, 2, 2),
(309, 8, '2584447.jpg', 'image/jpeg', '/uploads/2019/03/2584447.jpg', '994204', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2584447-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2584447-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2584447-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2584447-1920x1080.jpg\";}', 1552334790, 1552393100, 2, 2),
(310, 12, '111477783.jpg', 'image/jpeg', '/uploads/2019/03/111477783.jpg', '326953', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/111477783-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/111477783-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/111477783-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/111477783-1920x1080.jpg\";}', 1552336852, 1552392907, 2, 2),
(311, 12, '2018021525.jpg', 'image/jpeg', '/uploads/2019/03/2018021525.jpg', '531739', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/03/2018021525-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/03/2018021525-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/03/2018021525-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/03/2018021525-1920x1080.jpg\";}', 1552336856, 1552392885, 2, 2),
(312, 12, '2247771001.jpg', 'image/jpeg', '/uploads/2019/03/2247771001.jpg', '452113', 'a:4:{s:5:\"small\";s:38:\"/uploads/2019/03/2247771001-128x72.jpg\";s:6:\"medium\";s:39:\"/uploads/2019/03/2247771001-832x468.jpg\";s:5:\"large\";s:40:\"/uploads/2019/03/2247771001-1280x720.jpg\";s:5:\"great\";s:41:\"/uploads/2019/03/2247771001-1920x1080.jpg\";}', 1552336858, 1552392869, 2, 2),
(313, 7, '1548542.jpg', 'image/jpeg', '/uploads/2019/03/1548542.jpg', '623357', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/1548542-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/1548542-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/1548542-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/1548542-1920x1080.jpg\";}', 1552339690, 1552387337, 2, 2),
(314, 8, '25489662.jpg', 'image/jpeg', '/uploads/2019/03/25489662.jpg', '648089', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25489662-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25489662-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25489662-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25489662-1920x1080.jpg\";}', 1552387100, 1552393955, 2, 2),
(315, 8, '25486887.jpg', 'image/jpeg', '/uploads/2019/03/25486887.jpg', '260030', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/25486887-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/25486887-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/25486887-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/25486887-1920x1080.jpg\";}', 1552389507, 1552392775, 2, 2),
(316, 12, '33540808.jpg', 'image/jpeg', '/uploads/2019/03/33540808.jpg', '550342', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/33540808-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/33540808-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/33540808-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/33540808-1920x1080.jpg\";}', 1552391631, 1552392752, 2, 2),
(317, 12, '33480054.jpg', 'image/jpeg', '/uploads/2019/03/33480054.jpg', '564179', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/33480054-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/33480054-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/33480054-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/33480054-1920x1080.jpg\";}', 1552395909, 1552395962, 2, 2),
(319, 8, '11005408.jpg', 'image/jpeg', '/uploads/2019/03/11005408.jpg', '584081', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/11005408-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/11005408-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/11005408-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/11005408-1920x1080.jpg\";}', 1552466555, 1552466864, 2, 2),
(320, 7, '787854201.jpg', 'image/jpeg', '/uploads/2019/03/787854201.jpg', '456548', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/787854201-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/787854201-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/787854201-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/787854201-1920x1080.jpg\";}', 1552561114, 1552561133, 2, 2),
(321, 7, '447121501.jpg', 'image/jpeg', '/uploads/2019/03/447121501.jpg', '312003', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/447121501-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/447121501-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/447121501-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/447121501-1920x1080.jpg\";}', 1552563503, 1552563523, 2, 2),
(323, 13, '55521801.jpg', 'image/jpeg', '/uploads/2019/03/55521801.jpg', '167537', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55521801-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55521801-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55521801-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55521801-1920x1080.jpg\";}', 1552567804, 1552637270, 2, 2),
(325, NULL, '270018730.jpg', 'image/jpeg', '/uploads/2019/03/270018730.jpg', '271170', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/270018730-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/270018730-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/270018730-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/270018730-1920x1080.jpg\";}', 1552572126, 1552637260, 2, 2),
(327, 13, '56487332.jpg', 'image/jpeg', '/uploads/2019/03/56487332.jpg', '264283', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/56487332-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/56487332-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/56487332-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/56487332-1920x1080.jpg\";}', 1552572944, 1552637240, 2, 2),
(328, 13, '3578547.jpg', 'image/jpeg', '/uploads/2019/03/3578547.jpg', '556669', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/3578547-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/3578547-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/3578547-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/3578547-1920x1080.jpg\";}', 1552573192, 1552637249, 2, 2),
(329, 8, '5051458.jpg', 'image/jpeg', '/uploads/2019/03/5051458.jpg', '362392', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/5051458-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/5051458-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/5051458-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/5051458-1920x1080.jpg\";}', 1552574255, 1552574293, 2, 2),
(330, 13, '55484871.jpg', 'image/jpeg', '/uploads/2019/03/55484871.jpg', '197651', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55484871-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55484871-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55484871-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55484871-1920x1080.jpg\";}', 1552575365, 1552637191, 2, 2),
(332, 7, '258479.jpg', 'image/jpeg', '/uploads/2019/03/258479.jpg', '461930', 'a:4:{s:5:\"small\";s:34:\"/uploads/2019/03/258479-128x72.jpg\";s:6:\"medium\";s:35:\"/uploads/2019/03/258479-832x468.jpg\";s:5:\"large\";s:36:\"/uploads/2019/03/258479-1280x720.jpg\";s:5:\"great\";s:37:\"/uploads/2019/03/258479-1920x1080.jpg\";}', 1552576272, 1552576291, 2, 2),
(334, 13, '1.jpg', 'image/jpeg', '/uploads/2019/03/1.jpg', '278075', 'a:4:{s:5:\"small\";s:29:\"/uploads/2019/03/1-128x72.jpg\";s:6:\"medium\";s:30:\"/uploads/2019/03/1-832x468.jpg\";s:5:\"large\";s:31:\"/uploads/2019/03/1-1280x720.jpg\";s:5:\"great\";s:32:\"/uploads/2019/03/1-1920x1080.jpg\";}', 1552636697, 1552637060, 2, 2),
(335, 7, '55547778.jpg', 'image/jpeg', '/uploads/2019/03/55547778.jpg', '307988', 'a:4:{s:5:\"small\";s:36:\"/uploads/2019/03/55547778-128x72.jpg\";s:6:\"medium\";s:37:\"/uploads/2019/03/55547778-832x468.jpg\";s:5:\"large\";s:38:\"/uploads/2019/03/55547778-1280x720.jpg\";s:5:\"great\";s:39:\"/uploads/2019/03/55547778-1920x1080.jpg\";}', 1552638685, 1552638711, 2, 2),
(336, 13, '250014730.jpg', 'image/jpeg', '/uploads/2019/03/250014730.jpg', '481241', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/250014730-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/250014730-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/250014730-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/250014730-1920x1080.jpg\";}', 1552658925, 1552658995, 2, 2),
(337, 12, '532500814.jpg', 'image/jpeg', '/uploads/2019/03/532500814.jpg', '386201', 'a:4:{s:5:\"small\";s:37:\"/uploads/2019/03/532500814-128x72.jpg\";s:6:\"medium\";s:38:\"/uploads/2019/03/532500814-832x468.jpg\";s:5:\"large\";s:39:\"/uploads/2019/03/532500814-1280x720.jpg\";s:5:\"great\";s:40:\"/uploads/2019/03/532500814-1920x1080.jpg\";}', 1552672664, 1552672689, 2, 2),
(339, 8, '2144718.jpg', 'image/jpeg', '/uploads/2019/03/2144718.jpg', '716683', 'a:4:{s:5:\"small\";s:35:\"/uploads/2019/03/2144718-128x72.jpg\";s:6:\"medium\";s:36:\"/uploads/2019/03/2144718-832x468.jpg\";s:5:\"large\";s:37:\"/uploads/2019/03/2144718-1280x720.jpg\";s:5:\"great\";s:38:\"/uploads/2019/03/2144718-1920x1080.jpg\";}', 1552685931, 1552685947, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `media_album`
--

CREATE TABLE `media_album` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_album`
--

INSERT INTO `media_album` (`id`, `category_id`, `title`, `slug`, `description`, `visible`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 'Личное фото', 'licnoe-foto', '', 1, 1549102723, 1549102723, 1, 1),
(2, 2, 'Фото на главной', 'foto-na-glavnoj', 'Карусель на главной', 1, 1549102772, 1549102772, 1, 1),
(3, 1, 'Фоны для УТП', 'fony-dla-utp', 'Для параллакса на главной', 1, 1549102845, 1549102845, 1, 1),
(4, 1, 'Фоны для Revolution Slider', 'fony-dla-revolution-slider', 'На главной слайдер', 1, 1549102911, 1549102911, 1, 1),
(5, 2, 'Фото Посты Therapy Travel', 'therapy-travel', '', 1, 1550693909, 1552636919, 2, 2),
(6, 2, 'Фото Посты Artterapy', 'artterapy', '', 1, 1550694246, 1552636907, 2, 2),
(7, 2, 'Фото Посты Psychology', 'psychology', '', 1, 1550694348, 1552636895, 2, 2),
(8, 2, 'Фото Программ и Занятий', 'foto_programmy_zanyatiya', '', 1, 1550699183, 1552392259, 2, 2),
(12, 2, 'Фото Техник и Практик', 'foto_tehnik _praktik', '', 1, 1552392136, 1552392168, 2, 2),
(13, 2, 'Миниатюра Видео', 'miniatyura_video', '', 1, 1552636838, 1552637002, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `media_album_lang`
--

CREATE TABLE `media_album_lang` (
  `id` int(11) NOT NULL,
  `media_album_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_album_lang`
--

INSERT INTO `media_album_lang` (`id`, `media_album_id`, `language`, `title`, `description`) VALUES
(1, 1, 'ru', 'Личное фото', ''),
(2, 2, 'ru', 'Фото на главной', 'Карусель на главной'),
(3, 3, 'ru', 'Фоны для УТП', 'Для параллакса на главной'),
(4, 4, 'ru', 'Фоны для Revolution Slider', 'На главной слайдер'),
(5, 5, 'ru', 'Фото Посты Therapy Travel', ''),
(6, 6, 'ru', 'Фото Посты Artterapy', ''),
(7, 7, 'ru', 'Фото Посты Psychology', ''),
(8, 8, 'ru', 'Фото Программ и Занятий', ''),
(10, 12, 'ru', 'Фото Техник и Практик', ''),
(11, 13, 'ru', 'Миниатюра Видео', '');

-- --------------------------------------------------------

--
-- Структура таблицы `media_category`
--

CREATE TABLE `media_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_category`
--

INSERT INTO `media_category` (`id`, `slug`, `title`, `description`, `visible`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'fony-dla-sajta', 'Фоны для сайта', '', 1, 1549102647, 1549102647, 1, 1),
(2, 'kartinki-dla-sajta', 'Картинки для сайта', '', 1, 1549102677, 1549102677, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `media_category_lang`
--

CREATE TABLE `media_category_lang` (
  `id` int(11) NOT NULL,
  `media_category_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_category_lang`
--

INSERT INTO `media_category_lang` (`id`, `media_category_id`, `language`, `title`, `description`) VALUES
(1, 1, 'ru', 'Фоны для сайта', ''),
(2, 2, 'ru', 'Картинки для сайта', '');

-- --------------------------------------------------------

--
-- Структура таблицы `media_lang`
--

CREATE TABLE `media_lang` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_lang`
--

INSERT INTO `media_lang` (`id`, `media_id`, `language`, `title`, `alt`, `description`) VALUES
(1, 1, 'ru', 'solar-eclipse.jpg', 'solar-eclipse.jpg', ''),
(2, 2, 'ru', 'forest.jpg', 'forest.jpg', ''),
(4, 4, 'ru', 'textslider.jpg', 'textslider.jpg', ''),
(5, 5, 'ru', 'tree-cat.jpg', 'tree-cat.jpg', ''),
(14, 14, 'ru', 'Рисунки песком', '101719.jpg', ''),
(15, 15, 'ru', 'Рисунки песком', '113012.jpg', ''),
(18, 18, 'ru', 'Рисунки песком', '114157.jpg', ''),
(19, 19, 'ru', 'Рисунки песком', '3101018.jpg', ''),
(20, 20, 'ru', 'Рисунки песком', '8798703.jpg', ''),
(21, 21, 'ru', 'Рисунки песком', '1101018.jpg', ''),
(25, 25, 'ru', 'Самореализация', '23598.jpg', ''),
(26, 26, 'ru', 'Как стать счастливым', '25894563.jpg', ''),
(28, 28, 'ru', 'Мысли и Эмоции', '568923547.jpg', ''),
(29, 29, 'ru', 'Ресурсы Энергии', '78563298.jpg', ''),
(30, 30, 'ru', 'Самореализация', '56238456.jpg', ''),
(32, 32, 'ru', 'Денежное мышление', '56897423.jpg', ''),
(33, 33, 'ru', 'Самореализация', '56284236.jpg', ''),
(34, 34, 'ru', 'Самореализация', '2569413.jpg', ''),
(35, 35, 'ru', 'Общество в миниатюре', '542983.jpg', ''),
(36, 36, 'ru', 'Доверительные взаимоотношения', '159874523.jpg', ''),
(37, 37, 'ru', 'Внутренний мир', '6512783.jpg', ''),
(38, 38, 'ru', 'Санторини', '1107190628.jpg', ''),
(39, 39, 'ru', 'Санторини', '1107190642.jpg', ''),
(40, 40, 'ru', 'Санторини', '1107190646.jpg', ''),
(41, 41, 'ru', 'Санторини', '1107190652.jpg', ''),
(42, 42, 'ru', 'Санторини', '1107190644.jpg', ''),
(43, 43, 'ru', 'Санторини', '1107190686.jpg', ''),
(44, 44, 'ru', 'Санторини', '1107190697.jpg', ''),
(45, 45, 'ru', 'Санторини', '1107190717.jpg', ''),
(46, 46, 'ru', 'Санторини', '1107190748.jpg', ''),
(47, 47, 'ru', 'Санторини', '1107190754.jpg', ''),
(48, 48, 'ru', 'Моменты времени', '20171075518.jpg', ''),
(52, 52, 'ru', 'Психология Мужчины & Женщины', '24536829.jpg', ''),
(53, 53, 'ru', 'Мандалатерапия', '56482397.jpg', ''),
(54, 54, 'ru', 'Здесь и Сейчас', '11125896.jpg', ''),
(55, 55, 'ru', 'Креативность', '4398616.jpg', ''),
(56, 56, 'ru', '1258886.jpg', '1258886.jpg', ''),
(57, 57, 'ru', '3590536.jpg', '3590536.jpg', ''),
(58, 58, 'ru', '2589569.jpg', '2589569.jpg', ''),
(59, 59, 'ru', '445690639.jpg', '445690639.jpg', ''),
(60, 60, 'ru', '35689444.jpg', '35689444.jpg', ''),
(61, 61, 'ru', '1107110107.jpg', '1107110107.jpg', ''),
(62, 62, 'ru', '1107231053.jpg', '1107231053.jpg', ''),
(63, 63, 'ru', '2225880591.jpg', '2225880591.jpg', ''),
(64, 64, 'ru', 'Франция', '456843.jpg', ''),
(65, 65, 'ru', 'Франция', '1234501.jpg', ''),
(67, 67, 'ru', 'Франция', '1234509.jpg', ''),
(68, 68, 'ru', 'Франция', '456807.jpg', ''),
(69, 69, 'ru', 'Франция', '1234502.jpg', ''),
(71, 71, 'ru', 'Франция', '4568141.jpg', ''),
(72, 72, 'ru', 'Франция', '12459011.jpg', ''),
(74, 74, 'ru', 'Парапланеризм', '124593.jpg', ''),
(75, 75, 'ru', 'Парапланеризм', '124586.jpg', ''),
(76, 76, 'ru', 'Парапланеризм', '123467.jpg', ''),
(77, 77, 'ru', 'Парапланеризм', '1234561.jpg', ''),
(78, 78, 'ru', 'Парапланеризм', '124594.jpg', ''),
(79, 79, 'ru', 'Парапланеризм', '124599.jpg', ''),
(80, 80, 'ru', 'Парапланеризм', '4562385.jpg', ''),
(81, 81, 'ru', 'Парапланеризм', '4567898.jpg', ''),
(82, 82, 'ru', 'Парапланеризм', '4578810.jpg', ''),
(83, 83, 'ru', 'Парапланеризм', '7856292.jpg', ''),
(84, 84, 'ru', 'Прага', '2.jpg', ''),
(85, 85, 'ru', 'Прага', '1.jpg', ''),
(86, 86, 'ru', 'Прага', '3.jpg', ''),
(88, 88, 'ru', 'Прага', '6.jpg', ''),
(89, 89, 'ru', 'Прага', '4.jpg', ''),
(91, 91, 'ru', 'Прага', '8.jpg', ''),
(93, 93, 'ru', 'Прага', '10.jpg', ''),
(94, 94, 'ru', 'Таллин', '2258960.jpg', ''),
(95, 95, 'ru', 'Франция', '45689503.jpg', ''),
(96, 96, 'ru', 'Имиджтерапия', 'img20181126165121.jpg', ''),
(97, 97, 'ru', 'Мысли и Эмоции', '259874.jpg', ''),
(98, 98, 'ru', 'Ресурсы Энергии', '1482222.jpg', ''),
(100, 100, 'ru', 'Франция', '02584444.jpg', ''),
(101, 101, 'ru', 'Франция', 'img0120.jpg', ''),
(102, 102, 'ru', 'work-hobbies.jpg', 'work-hobbies.jpg', ''),
(103, 103, 'ru', 'Поиск Себя', '2983.jpg', ''),
(104, 104, 'ru', 'Поиск Себя', '25986.jpg', ''),
(106, 106, 'ru', 'Поиск Себя', '58965.jpg', ''),
(107, 107, 'ru', 'Мысли и Эмоции', '54448999.jpeg', ''),
(109, 109, 'ru', 'Искусство прощения', '555444333.jpg', ''),
(111, 111, 'ru', 'Общество в миниатюре', '45568.jpg', ''),
(112, 112, 'ru', 'Уникальный внутренний мир', '15899.jpg', ''),
(114, 114, 'ru', 'Слайд', '88888.jpg', ''),
(122, 122, 'ru', 'Слайд', '11111.jpg', ''),
(130, 130, 'ru', 'Слайд', '33333.jpg', ''),
(131, 131, 'ru', 'Слайд', '225894.jpg', ''),
(132, 132, 'ru', 'Слайд', '5890571.jpg', ''),
(137, 137, 'ru', 'Слайд', '920641386.jpg', ''),
(138, 138, 'ru', 'Слайд', '5896.png', ''),
(139, 139, 'ru', 'УТП', '22559.jpg', ''),
(141, 141, 'ru', 'Мир детства', '100210933.jpg', ''),
(145, 145, 'ru', 'Женская привлекательность', '77777.jpg', ''),
(146, 146, 'ru', 'Креативность', '555992873.jpg', ''),
(149, 149, 'ru', 'Общество в миниатюре', '445598237.jpg', ''),
(150, 150, 'ru', 'Общество в миниатюре', '2255886633.jpg', ''),
(151, 151, 'ru', 'Искусство прощения', '2.jpg', ''),
(156, 156, 'ru', 'Акватипия', '2589657.jpg', ''),
(157, 157, 'ru', 'Акватипия', '53338777.jpg', ''),
(160, 160, 'ru', 'Акватипия', '55588834.jpg', ''),
(161, 161, 'ru', 'Акватипия', '99851114.jpg', ''),
(162, 162, 'ru', 'Акватипия', '55544422.jpg', ''),
(163, 163, 'ru', 'Креативность', '589655.jpg', ''),
(166, 166, 'ru', 'Коллаж', '8529632.jpg', ''),
(168, 168, 'ru', 'Мир мечтаний', '598746.jpg', ''),
(169, 169, 'ru', 'Страх', '2003687.jpg', ''),
(170, 170, 'ru', 'Страх', '25000661.jpg', ''),
(171, 171, 'ru', 'Эмоциональный интеллект', '25897.jpg', ''),
(172, 172, 'ru', 'Мир детства', '2885521.jpg', ''),
(173, 173, 'ru', 'Визуализация будущего', '2000136.jpg', ''),
(174, 174, 'ru', 'Семья', '12.jpg', ''),
(176, 176, 'ru', 'Семья', 'schastlivaya-semya-2.jpeg', ''),
(180, 180, 'ru', 'Уникальный внутренний мир', '2890660.jpg', ''),
(181, 181, 'ru', 'Настроение', '5890653.jpg', ''),
(183, 183, 'ru', 'Настроение', '5870659.jpg', ''),
(184, 184, 'ru', 'Мысли и Эмоции', '258964.jpg', ''),
(188, 188, 'ru', 'Акватипия', '5548333.jpg', ''),
(189, 189, 'ru', 'Семья', '5890658.jpg', ''),
(190, 190, 'ru', 'поток и отдача', '2017021.jpg', ''),
(191, 191, 'ru', 'Ресурсы Энергии', 'img0665.jpg', ''),
(192, 192, 'ru', 'Страх', '2589366.jpg', ''),
(193, 193, 'ru', 'свет и тень', '5689994.jpg', ''),
(194, 194, 'ru', 'Психология Мужчины & Женщины', '55588877.jpg', ''),
(195, 195, 'ru', 'Ресурсы Энергии', '25894.jpg', ''),
(196, 196, 'ru', 'Здесь и Сейчас', '201555889.jpg', ''),
(197, 197, 'ru', 'кто я', '258884.jpg', ''),
(198, 198, 'ru', 'свет и тень', '258946.jpg', ''),
(199, 199, 'ru', 'Психология Мужчины & Женщины', '180510000.jpg', ''),
(200, 200, 'ru', 'Коллаж', '480371340.jpg', ''),
(201, 201, 'ru', 'Сказкатерапия', 'maxresdefault.jpg', ''),
(202, 202, 'ru', 'Сказкатерапия', 'orig461571.jpg', ''),
(204, 204, 'ru', 'мир вокруг меня', 'wp20160731103135pro.jpg', ''),
(205, 205, 'ru', 'Ресурсы Энергии', '259936.jpg', ''),
(207, 207, 'ru', 'Моменты времени', '2518946.jpg', ''),
(208, 208, 'ru', 'мир вокруг меня', '55000298.jpg', ''),
(209, 209, 'ru', 'Визуализация будущего', '230089.jpg', ''),
(210, 210, 'ru', 'Мандалатерапия', '2557789.jpg', ''),
(211, 211, 'ru', 'Актерская мастерская', '2589977.jpg', ''),
(212, 212, 'ru', 'Ресурсы Энергии', '693856.jpg', ''),
(213, 213, 'ru', 'Благодарность и любовь', '2005936.jpg', ''),
(216, 216, 'ru', 'Актерская мастерская', '20185050.jpg', ''),
(217, 217, 'ru', 'Мандалатерапия', '4555598.jpg', ''),
(218, 218, 'ru', 'Мандалатерапия', '253894.jpg', ''),
(220, 220, 'ru', 'Имиджтерапия', '25896.jpg', ''),
(221, 221, 'ru', 'Достижение цели', '928308.jpg', ''),
(222, 222, 'ru', 'Маскотерапия', '2599777.jpg', ''),
(223, 223, 'ru', 'Достижение цели', '2588885.jpg', ''),
(224, 224, 'ru', 'Сказкатерапия', '170053.jpg', ''),
(225, 225, 'ru', 'Внутренние установки', '247778.jpg', ''),
(227, 227, 'ru', 'Имиджтерапия', '255889.jpg', ''),
(228, 228, 'ru', 'Достижение цели', '224887.jpg', ''),
(229, 229, 'ru', 'Визуализация будущего', '58955.jpg', ''),
(230, 230, 'ru', 'Изотерапия', '258947.jpg', ''),
(231, 231, 'ru', 'мир вокруг меня', '258971.jpg', ''),
(232, 232, 'ru', 'Изотерапия', '258974.jpg', ''),
(233, 233, 'ru', 'Здесь и Сейчас', '258996.jpg', ''),
(234, 234, 'ru', 'Достижение цели', '555897.jpg', ''),
(235, 235, 'ru', 'Изотерапия', '589764.jpg', ''),
(236, 236, 'ru', 'Сказкатерапия', '876692.jpg', ''),
(237, 237, 'ru', 'Изотерапия', '2000895.jpg', ''),
(238, 238, 'ru', 'Здесь и Сейчас', '2336987.jpg', ''),
(239, 239, 'ru', 'мир вокруг меня', '2499963.jpg', ''),
(241, 241, 'ru', 'Креативность', '8887744.jpg', ''),
(244, 244, 'ru', 'Моменты времени', '25845633.jpg', ''),
(245, 245, 'ru', '54628300.jpg', '54628300.jpg', NULL),
(246, 246, 'ru', 'Достижение цели', '224931873.jpg', ''),
(247, 247, 'ru', 'Мандалатерапия', '256489.jpg', ''),
(248, 248, 'ru', 'Эмоциональный интеллект', '1005937.jpg', ''),
(249, 249, 'ru', 'Благодарность и любовь', '300985.jpg', ''),
(250, 250, 'ru', '2558946.jpg', '2558946.jpg', ''),
(251, 251, 'ru', 'Креативность', '1805939.jpg', ''),
(253, 253, 'ru', 'Маскотерапия', '2590468.jpg', ''),
(254, 254, 'ru', 'Имиджтерапия', '3658991.jpg', ''),
(255, 255, 'ru', 'Креативность', '5548787.jpg', ''),
(256, 256, 'ru', 'Женская привлекательность', '5984231.jpg', ''),
(257, 257, 'ru', 'Доверительные взаимоотношения', '6638847.jpg', ''),
(258, 258, 'ru', 'Мандалатерапия', '07042589.jpg', ''),
(259, 259, 'ru', 'Ресурсы Энергии', '13013045.jpg', ''),
(260, 260, 'ru', 'Уникальный внутренний мир', '22584001.jpg', ''),
(261, 261, 'ru', 'Управление настроением', '23598009.jpg', ''),
(262, 262, 'ru', 'Мир мечтаний', '25489963.jpg', ''),
(263, 263, 'ru', 'Женская привлекательность', '25899654.jpg', ''),
(264, 264, 'ru', 'Управление настроением', '30850651.jpg', ''),
(266, 266, 'ru', 'Изотерапия', '37000408.jpg', ''),
(267, 267, 'ru', 'Достижение цели', '53531634.jpg', ''),
(268, 268, 'ru', 'Мир будущей мамы', '80096512.jpg', ''),
(270, 270, 'ru', 'Искусство прощения', '99500357.jpg', ''),
(271, 271, 'ru', 'Креативность', '236210058.jpg', ''),
(272, 272, 'ru', 'Имиджтерапия', '16092194314.jpg', ''),
(273, 273, 'ru', 'Страх', '543096385223.jpg', ''),
(274, 274, 'ru', 'Изотерапия', 'img0508.jpg', ''),
(276, 276, 'ru', 'Изотерапия', '33500087.jpg', ''),
(277, 277, 'ru', 'Изотерапия', '92000148.jpg', ''),
(278, 278, 'ru', 'Глинотерапия', '2138954.jpg', ''),
(282, 282, 'ru', 'Денежное мышление', '95487326.jpg', ''),
(284, 284, 'ru', 'Поиск Себя', '3214563.jpg', ''),
(285, 285, 'ru', 'Доверительные взаимоотношения', '258951352.jpg', ''),
(286, 286, 'ru', 'Креативность', '212154.jpg', ''),
(287, 287, 'ru', 'Мандалатерапия', '2584545.jpg', ''),
(288, 288, 'ru', 'Мандалатерапия', '25852349.jpg', ''),
(289, 289, 'ru', 'Мандалатерапия', '25845458.jpg', ''),
(290, 290, 'ru', 'Моменты времени', '15110930.jpg', ''),
(291, 291, 'ru', 'Креативность', '2589436.jpg', ''),
(292, 292, 'ru', 'Мандалатерапия', '154524983.jpg', ''),
(294, 294, 'ru', 'Искусство прощения', '259847.jpg', ''),
(295, 295, 'ru', 'Мысли и Эмоции', '2588854.jpg', ''),
(296, 296, 'ru', 'Мир детства', '2642645.jpg', ''),
(297, 297, 'ru', 'Мир детства', '12121548.jpg', ''),
(298, 298, 'ru', 'Изотерапия', '5558477.jpg', ''),
(299, 299, 'ru', 'Фототерапия', '535287701.jpg', ''),
(300, 300, 'ru', 'Мир мечтаний', '146688136.jpg', ''),
(301, 301, 'ru', 'Мир детства', '34612795.jpg', ''),
(302, 302, 'ru', 'Мир мечтаний', 'happy-people-habits-happiness.jpg', ''),
(304, 304, 'ru', 'Мир детства', '55489959.jpg', ''),
(305, 305, 'ru', 'Денежное мышление', '2585852.jpg', ''),
(306, 306, 'ru', 'Моменты времени', '111400563.jpg', ''),
(307, 307, 'ru', 'Моменты времени', '1598516782.jpg', ''),
(309, 309, 'ru', 'Мир мечтаний', '2584447.jpg', ''),
(310, 310, 'ru', 'Изотерапия', '111477783.jpg', ''),
(311, 311, 'ru', 'Изотерапия', '2018021525.jpg', ''),
(312, 312, 'ru', 'Изотерапия', '2247771001.jpg', ''),
(313, 313, 'ru', 'Ресурсы Энергии', '1548542.jpg', ''),
(314, 314, 'ru', 'Достижение цели', '25489662.jpg', ''),
(315, 315, 'ru', 'Искусство прощения', '25486887.jpg', ''),
(316, 316, 'ru', 'Изотерапия', '33540808.jpg', ''),
(317, 317, 'ru', 'Изотерапия', '33480054.jpg', ''),
(319, 319, 'ru', 'Изотерапия', '11005408.jpg', ''),
(320, 320, 'ru', 'Искусство прощения', '787854201.jpg', ''),
(321, 321, 'ru', 'Искусство прощения', '447121501.jpg', ''),
(323, 323, 'ru', 'Искусство прощения', '55521801.jpg', ''),
(325, 325, 'ru', 'Как стать счастливым', '270018730.jpg', ''),
(327, 327, 'ru', 'Медитация ', '56487332.jpg', ''),
(328, 328, 'ru', 'Медитация ', '3578547.jpg', ''),
(329, 329, 'ru', 'Психология Мужчины & Женщины', '5051458.jpg', ''),
(330, 330, 'ru', 'Как стать счастливым', '55484871.jpg', ''),
(332, 332, 'ru', 'Искусство прощения', '258479.jpg', ''),
(334, 334, 'ru', 'Занятия Artterapy', '1.jpg', ''),
(335, 335, 'ru', 'Как стать счастливым', '55547778.jpg', ''),
(336, 336, 'ru', 'Travel Therapy', '250014730.jpg', ''),
(337, 337, 'ru', 'Изотерапия', '532500814.jpg', ''),
(339, 339, 'ru', 'Внутренние установки', '2144718.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `media_manager`
--

CREATE TABLE `media_manager` (
  `id` mediumint(8) NOT NULL,
  `class` varchar(256) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) NOT NULL,
  `sort` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `media_manager`
--

INSERT INTO `media_manager` (`id`, `class`, `item_id`, `media_id`, `sort`) VALUES
(4, 'backend\\modules\\post\\models\\Post', 2, 14, 3),
(5, 'backend\\modules\\post\\models\\Post', 2, 20, 4),
(7, 'backend\\modules\\post\\models\\Post', 2, 18, 6),
(8, 'backend\\modules\\post\\models\\Post', 2, 15, 7),
(10, 'backend\\modules\\post\\models\\Post', 2, 21, 0),
(13, 'backend\\modules\\post\\models\\Post', 4, 25, 0),
(14, 'backend\\modules\\post\\models\\Post', 5, 26, 0),
(16, 'backend\\modules\\post\\models\\Post', 6, 28, 0),
(17, 'backend\\modules\\post\\models\\Post', 7, 29, 0),
(18, 'backend\\modules\\post\\models\\Post', 8, 30, 0),
(20, 'backend\\modules\\post\\models\\Post', 9, 32, 0),
(21, 'backend\\modules\\post\\models\\Post', 10, 33, 0),
(22, 'backend\\modules\\post\\models\\Post', 11, 34, 0),
(23, 'backend\\modules\\post\\models\\Post', 12, 35, 0),
(24, 'backend\\modules\\post\\models\\Post', 13, 36, 0),
(25, 'backend\\modules\\post\\models\\Post', 14, 37, 0),
(26, 'backend\\modules\\post\\models\\Post', 15, 38, 0),
(27, 'backend\\modules\\post\\models\\Post', 15, 39, 1),
(28, 'backend\\modules\\post\\models\\Post', 15, 41, 2),
(29, 'backend\\modules\\post\\models\\Post', 15, 42, 3),
(30, 'backend\\modules\\post\\models\\Post', 15, 43, 4),
(31, 'backend\\modules\\post\\models\\Post', 15, 44, 5),
(32, 'backend\\modules\\post\\models\\Post', 15, 40, 6),
(33, 'backend\\modules\\post\\models\\Post', 15, 47, 7),
(34, 'backend\\modules\\post\\models\\Post', 15, 45, 8),
(35, 'backend\\modules\\post\\models\\Post', 15, 46, 9),
(36, 'backend\\modules\\post\\models\\Post', 16, 48, 0),
(44, 'backend\\modules\\section\\models\\Carousel', 2, 56, 1),
(45, 'backend\\modules\\section\\models\\Carousel', 2, 57, 2),
(46, 'backend\\modules\\section\\models\\Carousel', 2, 58, 0),
(47, 'backend\\modules\\section\\models\\Carousel', 2, 59, 3),
(48, 'backend\\modules\\section\\models\\Carousel', 2, 60, 4),
(49, 'backend\\modules\\section\\models\\Carousel', 2, 61, 5),
(50, 'backend\\modules\\section\\models\\Carousel', 2, 62, 6),
(51, 'backend\\modules\\section\\models\\Carousel', 2, 63, 7),
(53, 'backend\\modules\\post\\models\\Post', 18, 97, 0),
(56, 'backend\\modules\\post\\models\\Post', 19, 95, 1),
(57, 'backend\\modules\\post\\models\\Post', 19, 64, 3),
(58, 'backend\\modules\\post\\models\\Post', 19, 69, 2),
(60, 'backend\\modules\\post\\models\\Post', 19, 71, 5),
(61, 'backend\\modules\\post\\models\\Post', 19, 65, 6),
(62, 'backend\\modules\\post\\models\\Post', 19, 68, 7),
(63, 'backend\\modules\\post\\models\\Post', 19, 72, 8),
(64, 'backend\\modules\\post\\models\\Post', 19, 67, 9),
(65, 'backend\\modules\\post\\models\\Post', 19, 100, 0),
(66, 'backend\\modules\\post\\models\\Post', 19, 101, 4),
(67, 'backend\\modules\\post\\models\\Post', 20, 96, 0),
(68, 'backend\\modules\\post\\models\\Post', 21, 74, 0),
(69, 'backend\\modules\\post\\models\\Post', 21, 80, 1),
(70, 'backend\\modules\\post\\models\\Post', 21, 76, 2),
(71, 'backend\\modules\\post\\models\\Post', 21, 75, 3),
(72, 'backend\\modules\\post\\models\\Post', 21, 81, 4),
(74, 'backend\\modules\\post\\models\\Post', 21, 78, 5),
(75, 'backend\\modules\\post\\models\\Post', 21, 82, 6),
(76, 'backend\\modules\\post\\models\\Post', 21, 77, 7),
(77, 'backend\\modules\\post\\models\\Post', 21, 83, 8),
(78, 'backend\\modules\\post\\models\\Post', 21, 79, 9),
(79, 'backend\\modules\\post\\models\\Post', 22, 52, 0),
(80, 'backend\\modules\\post\\models\\Post', 23, 85, 0),
(81, 'backend\\modules\\post\\models\\Post', 23, 84, 3),
(82, 'backend\\modules\\post\\models\\Post', 23, 86, 1),
(83, 'backend\\modules\\post\\models\\Post', 23, 88, 4),
(84, 'backend\\modules\\post\\models\\Post', 23, 89, 2),
(86, 'backend\\modules\\post\\models\\Post', 23, 91, 5),
(87, 'backend\\modules\\post\\models\\Post', 23, 93, 6),
(88, 'backend\\modules\\post\\models\\Post', 24, 53, 0),
(89, 'backend\\modules\\post\\models\\Post', 25, 54, 0),
(91, 'backend\\modules\\post\\models\\Post', 27, 94, 0),
(92, 'backend\\modules\\post\\models\\Post', 3, 102, 0),
(103, 'backend\\modules\\event\\models\\EventItem', 7, 112, 0),
(104, 'backend\\modules\\event\\models\\EventItem', 10, 145, 0),
(105, 'backend\\modules\\event\\models\\EventItem', 12, 109, 0),
(106, 'backend\\modules\\event\\models\\EventItem', 14, 107, 0),
(109, 'backend\\modules\\event\\models\\EventItem', 2, 19, 4),
(113, 'backend\\modules\\event\\models\\EventItem', 18, 107, 0),
(117, 'backend\\modules\\event\\models\\EventItem', 39, 107, 0),
(119, 'backend\\modules\\event\\models\\EventItem', 39, 162, 3),
(120, 'backend\\modules\\event\\models\\EventItem', 39, 160, 4),
(121, 'backend\\modules\\event\\models\\EventItem', 39, 156, 5),
(122, 'backend\\modules\\event\\models\\EventItem', 39, 161, 6),
(123, 'backend\\modules\\event\\models\\EventItem', 39, 157, 7),
(124, 'backend\\modules\\event\\models\\EventItem', 53, 166, 6),
(127, 'backend\\modules\\event\\models\\EventItem', 53, 168, 1),
(129, 'backend\\modules\\event\\models\\EventItem', 56, 173, 0),
(130, 'backend\\modules\\event\\models\\EventItem', 4, 163, 0),
(131, 'backend\\modules\\event\\models\\EventItem', 38, 176, 0),
(137, 'backend\\modules\\event\\models\\EventItem', 3, 180, 2),
(138, 'backend\\modules\\event\\models\\EventItem', 39, 188, 2),
(139, 'backend\\modules\\event\\models\\EventItem', 39, 184, 1),
(140, 'backend\\modules\\event\\models\\EventItem', 38, 189, 3),
(142, 'backend\\modules\\event\\models\\EventItem', 49, 191, 0),
(145, 'backend\\modules\\event\\models\\EventItem', 45, 183, 2),
(146, 'backend\\modules\\event\\models\\EventItem', 2, 172, 0),
(147, 'backend\\modules\\event\\models\\EventItem', 41, 169, 0),
(148, 'backend\\modules\\event\\models\\EventItem', 41, 170, 2),
(149, 'backend\\modules\\event\\models\\EventItem', 41, 192, 1),
(150, 'backend\\modules\\event\\models\\EventItem', 42, 193, 1),
(151, 'backend\\modules\\event\\models\\EventItem', 36, 194, 1),
(155, 'backend\\modules\\event\\models\\EventItem', 57, 190, 4),
(156, 'backend\\modules\\event\\models\\EventItem', 58, 197, 0),
(157, 'backend\\modules\\event\\models\\EventItem', 52, 196, 0),
(158, 'backend\\modules\\event\\models\\EventItem', 42, 198, 0),
(159, 'backend\\modules\\event\\models\\EventItem', 36, 199, 2),
(160, 'backend\\modules\\event\\models\\EventItem', 53, 200, 5),
(161, 'backend\\modules\\event\\models\\EventItem', 64, 201, 0),
(164, 'backend\\modules\\event\\models\\EventItem', 62, 204, 1),
(165, 'backend\\modules\\event\\models\\EventItem', 49, 205, 2),
(166, 'backend\\modules\\event\\models\\EventItem', 47, 207, 4),
(167, 'backend\\modules\\event\\models\\EventItem', 62, 208, 0),
(169, 'backend\\modules\\event\\models\\EventItem', 33, 210, 3),
(170, 'backend\\modules\\event\\models\\EventItem', 43, 211, 0),
(174, 'backend\\modules\\event\\models\\EventItem', 43, 216, 2),
(175, 'backend\\modules\\event\\models\\EventItem', 52, 217, 1),
(177, 'backend\\modules\\event\\models\\EventItem', 37, 220, 2),
(179, 'backend\\modules\\event\\models\\EventItem', 63, 222, 0),
(187, 'backend\\modules\\event\\models\\EventProgramm', 1, 284, 0),
(189, 'backend\\modules\\event\\models\\EventItem', 63, 253, 1),
(190, 'backend\\modules\\event\\models\\EventItem', 3, 260, 1),
(191, 'backend\\modules\\event\\models\\EventItem', 1, 278, 2),
(194, 'backend\\modules\\event\\models\\EventItem', 62, 239, 2),
(196, 'backend\\modules\\event\\models\\EventItem', 1, 285, 1),
(199, 'backend\\modules\\event\\models\\EventItem', 62, 231, 3),
(200, 'backend\\modules\\event\\models\\EventItem', 4, 271, 1),
(201, 'backend\\modules\\event\\models\\EventItem', 33, 258, 0),
(203, 'backend\\modules\\event\\models\\EventItem', 33, 247, 1),
(206, 'backend\\modules\\event\\models\\EventItem', 39, 277, 8),
(207, 'backend\\modules\\event\\models\\EventItem', 39, 276, 9),
(208, 'backend\\modules\\event\\models\\EventItem', 4, 255, 2),
(209, 'backend\\modules\\event\\models\\EventItem', 4, 251, 4),
(211, 'backend\\modules\\event\\models\\EventItem', 37, 272, 3),
(214, 'backend\\modules\\event\\models\\EventItem', 37, 254, 1),
(216, 'backend\\modules\\event\\models\\EventItem', 37, 227, 0),
(220, 'backend\\modules\\event\\models\\EventProgramm', 3, 111, 0),
(223, 'backend\\modules\\event\\models\\EventItem', 3, 112, 0),
(224, 'backend\\modules\\event\\models\\EventProgramm', 4, 141, 0),
(225, 'backend\\modules\\event\\models\\EventItem', 3, 145, 3),
(226, 'backend\\modules\\event\\models\\EventItem', 1, 257, 0),
(228, 'backend\\modules\\event\\models\\EventItem', 38, 271, 2),
(229, 'backend\\modules\\event\\models\\EventItem', 33, 287, 2),
(236, 'backend\\modules\\event\\models\\EventItem', 33, 292, 4),
(237, 'backend\\modules\\event\\models\\EventProgramm', 9, 109, 0),
(239, 'backend\\modules\\event\\models\\EventProgramm', 14, 268, 0),
(240, 'backend\\modules\\event\\models\\EventProgramm', 12, 282, 1),
(242, 'backend\\modules\\event\\models\\EventItem', 47, 290, 3),
(243, 'backend\\modules\\event\\models\\EventItem', 45, 261, 1),
(244, 'backend\\modules\\event\\models\\EventItem', 45, 264, 0),
(246, 'backend\\modules\\event\\models\\EventItem', 41, 295, 4),
(256, 'backend\\modules\\event\\models\\EventItem', 53, 262, 0),
(258, 'backend\\modules\\event\\models\\EventItem', 2, 297, 3),
(259, 'backend\\modules\\event\\models\\EventItem', 2, 302, 6),
(260, 'backend\\modules\\event\\models\\EventItem', 2, 296, 5),
(262, 'backend\\modules\\event\\models\\EventItem', 2, 301, 1),
(263, 'backend\\modules\\event\\models\\EventItem', 2, 304, 2),
(264, 'backend\\modules\\event\\models\\EventItem', 48, 299, 0),
(265, 'backend\\modules\\event\\models\\EventItem', 48, 249, 1),
(266, 'backend\\modules\\event\\models\\EventItem', 53, 300, 2),
(267, 'backend\\modules\\event\\models\\EventItem', 53, 298, 4),
(271, 'backend\\modules\\event\\models\\EventItem', 51, 305, 0),
(272, 'backend\\modules\\event\\models\\EventItem', 47, 244, 2),
(273, 'backend\\modules\\event\\models\\EventItem', 47, 306, 0),
(274, 'backend\\modules\\event\\models\\EventItem', 47, 307, 1),
(275, 'backend\\modules\\event\\models\\EventItem', 53, 309, 3),
(276, 'backend\\modules\\event\\models\\EventItem', 56, 209, 1),
(277, 'backend\\modules\\event\\models\\EventProgramm', 7, 289, 0),
(278, 'backend\\modules\\event\\models\\EventItem', 57, 213, 3),
(279, 'backend\\modules\\event\\models\\EventItem', 57, 310, 0),
(280, 'backend\\modules\\event\\models\\EventItem', 64, 224, 3),
(281, 'backend\\modules\\event\\models\\EventItem', 64, 202, 1),
(282, 'backend\\modules\\event\\models\\EventItem', 64, 236, 2),
(284, 'backend\\modules\\event\\models\\EventItem', 62, 311, 4),
(285, 'backend\\modules\\event\\models\\EventItem', 57, 237, 2),
(286, 'backend\\modules\\event\\models\\EventItem', 52, 238, 3),
(289, 'backend\\modules\\event\\models\\EventItem', 54, 221, 0),
(290, 'backend\\modules\\event\\models\\EventItem', 52, 233, 2),
(291, 'backend\\modules\\event\\models\\EventItem', 60, 225, 0),
(295, 'backend\\modules\\event\\models\\EventItem', 55, 223, 0),
(296, 'backend\\modules\\event\\models\\EventItem', 59, 246, 0),
(297, 'backend\\modules\\event\\models\\EventItem', 58, 230, 2),
(299, 'backend\\modules\\event\\models\\EventItem', 56, 229, 2),
(300, 'backend\\modules\\event\\models\\EventItem', 59, 234, 1),
(302, 'backend\\modules\\event\\models\\EventItem', 54, 228, 3),
(304, 'backend\\modules\\event\\models\\EventItem', 49, 259, 3),
(305, 'backend\\modules\\event\\models\\EventItem', 49, 212, 4),
(308, 'backend\\modules\\event\\models\\EventItem', 49, 195, 1),
(309, 'backend\\modules\\event\\models\\EventItem', 54, 312, 2),
(310, 'backend\\modules\\event\\models\\EventItem', 58, 235, 1),
(311, 'backend\\modules\\event\\models\\EventProgramm', 10, 223, 0),
(312, 'backend\\modules\\event\\models\\EventProgramm', 11, 98, 0),
(314, 'backend\\modules\\event\\models\\EventProgramm', 8, 171, 0),
(315, 'backend\\modules\\post\\models\\Post', 26, 232, 1),
(316, 'backend\\modules\\event\\models\\EventProgramm', 13, 55, 0),
(317, 'backend\\modules\\event\\models\\EventItem', 46, 270, 1),
(318, 'backend\\modules\\event\\models\\EventItem', 41, 273, 3),
(320, 'backend\\modules\\post\\models\\Post', 17, 313, 0),
(321, 'backend\\modules\\event\\models\\EventItem', 4, 286, 6),
(322, 'backend\\modules\\event\\models\\EventItem', 62, 266, 5),
(323, 'backend\\modules\\event\\models\\EventItem', 54, 314, 1),
(324, 'backend\\modules\\event\\models\\EventItem', 46, 294, 3),
(325, 'backend\\modules\\event\\models\\EventItem', 46, 315, 0),
(326, 'backend\\modules\\event\\models\\EventItem', 46, 316, 2),
(327, 'backend\\modules\\event\\models\\EventItem', 4, 291, 3),
(329, 'backend\\modules\\event\\models\\EventItem', 1, 288, 3),
(330, 'backend\\modules\\event\\models\\EventItem', 36, 218, 3),
(331, 'backend\\modules\\event\\models\\EventProgramm', 6, 263, 0),
(332, 'backend\\modules\\event\\models\\EventProgramm', 9, 151, 1),
(333, 'backend\\modules\\event\\models\\EventProgramm', 6, 256, 1),
(334, 'backend\\modules\\event\\models\\EventItem', 52, 317, 4),
(335, 'backend\\modules\\event\\models\\EventItem', 57, 249, 1),
(336, 'backend\\modules\\event\\models\\EventProgramm', 8, 248, 1),
(337, 'backend\\modules\\event\\models\\EventProgramm', 3, 149, 1),
(340, 'backend\\modules\\event\\models\\EventItem', 4, 241, 5),
(342, 'backend\\modules\\event\\models\\EventProgramm', 15, 319, 1),
(343, 'backend\\modules\\post\\models\\Post', 28, 103, 0),
(344, 'backend\\modules\\post\\models\\Post', 29, 106, 0),
(345, 'backend\\modules\\post\\models\\Post', 30, 104, 0),
(346, 'backend\\modules\\post\\models\\Post', 31, 320, 0),
(348, 'backend\\modules\\post\\models\\Post', 32, 321, 0),
(349, 'backend\\modules\\event\\models\\EventItem', 36, 329, 0),
(350, 'backend\\modules\\post\\models\\Post', 33, 332, 0),
(351, 'backend\\modules\\post\\models\\Post', 34, 335, 0),
(352, 'backend\\modules\\event\\models\\EventProgramm', 2, 139, 1),
(353, 'backend\\modules\\event\\models\\EventProgramm', 15, 150, 0),
(355, 'backend\\modules\\event\\models\\EventItem', 60, 339, 1),
(356, 'backend\\modules\\section\\models\\Carousel', 1, 339, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `media_upload`
--

CREATE TABLE `media_upload` (
  `id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `owner_class` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('admin-menu', NULL, NULL, 1, NULL),
('main-menu', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_lang`
--

INSERT INTO `menu_lang` (`id`, `menu_id`, `language`, `title`) VALUES
(1, 'admin-menu', 'en-US', 'Control Panel Menu'),
(2, 'main-menu', 'en-US', 'Main Menu'),
(3, 'main-menu', 'ru', 'Главное Меню'),
(4, 'admin-menu', 'ru', 'Меню Панели Управления');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_link`
--

CREATE TABLE `menu_link` (
  `id` varchar(64) NOT NULL,
  `menu_id` varchar(64) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT '',
  `image` varchar(24) DEFAULT NULL,
  `alwaysVisible` int(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_link`
--

INSERT INTO `menu_link` (`id`, `menu_id`, `link`, `parent_id`, `image`, `alwaysVisible`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('about', 'main-menu', '/site/about', '', '', 1, 1, NULL, 1544698568, 1, 1),
('active_pages', 'admin-menu', '/section/default/index', 'landing-page', '', 0, 25, 1550236114, 1550236114, 1, 1),
('bd', 'admin-menu', '/db', 'settings', '', 0, 46, 1544790630, 1544790676, 1, 1),
('blog', 'main-menu', '/site/blog', '', '', 0, 4, 1544699051, 1544699051, 1, 1),
('calendar', 'admin-menu', '/event/schedule/fullcalendar', 'event', '', 0, 34, 1547119882, 1551945470, 1, 1),
('carousel', 'admin-menu', '/section/carousel/index', 'landing-page', '', 0, 28, 1548703398, 1548703398, 1, 1),
('comment', 'admin-menu', '/comment/default/index', '', 'comment', 0, 10, NULL, NULL, 1, NULL),
('consult', 'main-menu', '/consult', '', '', 0, 3, 1545151400, 1545151452, 1, 1),
('contact', 'main-menu', '/site/contact', '', NULL, 1, 6, NULL, NULL, 1, NULL),
('contact-users', 'admin-menu', '/contact/default/index', '', 'users', 0, 19, 1545854511, 1545854531, 1, 1),
('dashboard', 'admin-menu', '/', '', 'th', 0, 0, NULL, NULL, 1, NULL),
('eav-attribute', 'admin-menu', '/eav/attribute/index', 'eav', NULL, 0, 18, NULL, NULL, 1, NULL),
('eav-eav', 'admin-menu', '/eav/default/index', 'eav', NULL, 0, 17, NULL, NULL, 1, NULL),
('eav-model', 'admin-menu', '/eav/entity-model/index', 'eav', NULL, 0, 20, NULL, NULL, 1, NULL),
('eav-option', 'admin-menu', '/eav/attribute-option/index', 'eav', NULL, 0, 19, NULL, NULL, 1, NULL),
('eav-type', 'admin-menu', '/eav/attribute-type/index', 'eav', NULL, 0, 21, NULL, NULL, 1, NULL),
('event', 'admin-menu', '', '', 'calendar', 0, 30, 1546691552, 1551909593, 1, 1),
('event-item', 'admin-menu', '/event/default/index', 'event', '', 0, 36, 1546691606, 1547547597, 1, 1),
('event-methods', 'admin-menu', '/event/methods/index', 'event', '', 0, 40, 1546691818, 1546806941, 1, 1),
('event-place', 'admin-menu', '/event/place/index', 'event', '', 0, 38, 1546691945, 1546807290, 1, 1),
('event-practice', 'admin-menu', '/event/practice/index', 'event', '', 0, 39, 1546691867, 1546806955, 1, 1),
('event-programm', 'admin-menu', '/event/programm/index', 'event', '', 1, 35, 1546691999, 1552391686, 1, 1),
('event-schedule', 'admin-menu', '/event/schedule/index', 'event', '', 0, 33, 1546692074, 1546807163, 1, 1),
('event-vid', 'admin-menu', '/event/vid/index', 'event', '', 0, 37, 1546691902, 1546691902, 1, 1),
('feedback', 'admin-menu', '/section/feedback/index', 'landing-page', '', 0, 29, 1549635790, 1549635790, 1, 1),
('image-settings', 'admin-menu', '/media/default/settings', 'settings', NULL, 0, 44, NULL, NULL, 1, NULL),
('landing-page', 'admin-menu', '', '', 'sun-o', 0, 24, 1548271267, 1548365112, 1, 1),
('main', 'main-menu', '/', '', 'home', 1, 0, 1551293265, 1551293512, 1, 1),
('media', 'admin-menu', NULL, '', 'image', 0, 6, NULL, NULL, 1, NULL),
('media-album', 'admin-menu', '/media/album/index', 'media', NULL, 0, 8, NULL, NULL, 1, NULL),
('media-category', 'admin-menu', '/media/category/index', 'media', NULL, 0, 9, NULL, NULL, 1, NULL),
('media-media', 'admin-menu', '/media/default/index', 'media', NULL, 0, 7, NULL, NULL, 1, NULL),
('menu', 'admin-menu', '/menu/default/index', '', 'align-justify', 0, 11, NULL, NULL, 1, NULL),
('menu_portfolio', 'admin-menu', '/portfolio/menu/index', 'portfolio_main', '', 0, 22, 1548922544, 1548922544, 1, 1),
('page', 'admin-menu', '/page/default/index', '', 'file', 0, 1, NULL, NULL, 1, NULL),
('paralax', 'admin-menu', '/section/parallax/index', 'landing-page', '', 0, 27, 1548333227, 1548340198, 1, 1),
('plan', 'admin-menu', '/event/plan/index', 'event', '', 0, 31, 1551882526, 1551882568, 1, 1),
('plan_calendar', 'admin-menu', '/event/plan/plancalendar', 'event', '', 0, 32, 1551945528, 1551945620, 1, 1),
('portfolio', 'admin-menu', '/portfolio/default/index', 'portfolio_main', '', 0, 21, 1548880921, 1548923248, 1, 1),
('portfolio-front', 'main-menu', '/site/portfolio', '', '', 0, 5, 1552767780, 1552767780, 1, 1),
('portfolio_category', 'admin-menu', '/portfolio/category/index', 'portfolio_main', '', 0, 23, 1548880996, 1549574144, 1, 1),
('portfolio_main', 'admin-menu', '', '', 'film', 0, 20, 1548922592, 1552641080, 1, 1),
('post', 'admin-menu', '', '', 'pencil', 0, 2, NULL, 1545053615, 1, 1),
('post-category', 'admin-menu', '/post/category/index', 'post', NULL, 0, 5, NULL, NULL, 1, NULL),
('post-post', 'admin-menu', '/post/default/index', 'post', '', 0, 3, NULL, 1545053627, 1, 1),
('post-tag', 'admin-menu', '/post/tag/index', 'post', '', 0, 4, NULL, 1544638544, 1, 1),
('revolution-sliders', 'admin-menu', '/section/slides/index', 'landing-page', '', 0, 26, 1548269000, 1552641179, 1, 1),
('seo', 'admin-menu', '/seo/default/index', '', 'line-chart', 0, 18, NULL, NULL, 1, NULL),
('settings', 'admin-menu', NULL, '', 'cog', 0, 41, NULL, NULL, 1, NULL),
('settings-cache', 'admin-menu', '/settings/cache/flush', 'settings', NULL, 0, 47, NULL, NULL, 1, NULL),
('settings-general', 'admin-menu', '/settings/default/index', 'settings', NULL, 0, 42, NULL, NULL, 1, NULL),
('settings-reading', 'admin-menu', '/settings/reading/index', 'settings', NULL, 0, 43, NULL, NULL, 1, NULL),
('settings-translations', 'admin-menu', '/translation/default/index', 'settings', NULL, 0, 45, NULL, NULL, 1, NULL),
('test-page', 'main-menu', '/site/author-course', '', '', 1, 2, NULL, 1545840778, 1, 1),
('user', 'admin-menu', NULL, '', 'user', 0, 12, NULL, NULL, 1, NULL),
('user-groups', 'admin-menu', '/user/permission-groups/index', 'user', NULL, 0, 16, NULL, NULL, 1, NULL),
('user-log', 'admin-menu', '/user/visit-log/index', 'user', NULL, 0, 17, NULL, NULL, 1, NULL),
('user-permission', 'admin-menu', '/user/permission/index', 'user', NULL, 0, 15, NULL, NULL, 1, NULL),
('user-role', 'admin-menu', '/user/role/index', 'user', NULL, 0, 14, NULL, NULL, 1, NULL),
('user-user', 'admin-menu', '/user/default/index', 'user', NULL, 0, 13, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menu_link_lang`
--

CREATE TABLE `menu_link_lang` (
  `id` int(11) NOT NULL,
  `link_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu_link_lang`
--

INSERT INTO `menu_link_lang` (`id`, `link_id`, `language`, `label`) VALUES
(1, 'dashboard', 'en-US', 'Dashboard'),
(2, 'settings', 'en-US', 'Settings'),
(3, 'settings-general', 'en-US', 'General Settings'),
(4, 'settings-reading', 'en-US', 'Reading Settings'),
(5, 'settings-cache', 'en-US', 'Flush Cache'),
(6, 'menu', 'en-US', 'Menus'),
(7, 'comment', 'en-US', 'Comments'),
(8, 'user', 'en-US', 'Users'),
(9, 'user-groups', 'en-US', 'Permission groups'),
(10, 'user-log', 'en-US', 'Visit log'),
(11, 'user-permission', 'en-US', 'Permissions'),
(12, 'user-role', 'en-US', 'Roles'),
(13, 'user-user', 'en-US', 'Users'),
(14, 'post', 'en-US', 'Posts'),
(15, 'post-post', 'en-US', 'Posts'),
(16, 'post-category', 'en-US', 'Categories'),
(17, 'media', 'en-US', 'Media'),
(18, 'media-media', 'en-US', 'Media'),
(19, 'media-album', 'en-US', 'Albums'),
(20, 'media-category', 'en-US', 'Categories'),
(21, 'image-settings', 'en-US', 'Image Settings'),
(22, 'page', 'en-US', 'Pages'),
(23, 'settings-translations', 'en-US', 'Message Translation'),
(24, 'seo', 'en-US', 'SEO'),
(25, 'post-tag', 'en-US', 'Tags'),
(27, 'about', 'en-US', 'About'),
(28, 'test-page', 'en-US', 'Test Page'),
(29, 'contact', 'en-US', 'Contact'),
(31, 'eav-eav', 'en-US', 'Fields'),
(32, 'eav-attribute', 'en-US', 'Attributes'),
(33, 'eav-option', 'en-US', 'Options'),
(34, 'eav-model', 'en-US', 'Models'),
(35, 'eav-type', 'en-US', 'Types'),
(37, 'about', 'ru', 'Обо мне'),
(38, 'test-page', 'ru', 'Авторский курс'),
(39, 'contact', 'ru', 'Контакты'),
(40, 'comment', 'ru', 'Комментарии'),
(41, 'dashboard', 'ru', 'Главная'),
(42, 'media', 'ru', 'Медиа'),
(43, 'media-media', 'ru', 'Медиа'),
(44, 'media-album', 'ru', 'Альбомы'),
(45, 'media-category', 'ru', 'Категории'),
(46, 'image-settings', 'ru', 'Настройки Изображений'),
(47, 'menu', 'ru', 'Меню'),
(48, 'page', 'ru', 'Страницы'),
(49, 'post', 'ru', 'Посты'),
(50, 'post-post', 'ru', 'Посты'),
(51, 'post-category', 'ru', 'Категории'),
(52, 'settings', 'ru', 'Настройки'),
(53, 'settings-general', 'ru', 'Общие Настройки'),
(54, 'settings-reading', 'ru', 'Настройки Чтения'),
(55, 'settings-cache', 'ru', 'Очистить Кэш'),
(56, 'settings-translations', 'ru', 'Перевод Сообщений'),
(57, 'user', 'ru', 'Пользователи'),
(58, 'user-groups', 'ru', 'Группы Прав Доступа'),
(59, 'user-log', 'ru', 'Лог Посещений'),
(60, 'user-permission', 'ru', 'Права Доступа'),
(61, 'user-role', 'ru', 'Роли Пользователей'),
(62, 'user-user', 'ru', 'Пользователи'),
(63, 'seo', 'ru', 'SEO'),
(64, 'post-tag', 'ru', 'Тэги'),
(68, 'blog', 'ru', 'Блог'),
(70, 'bd', 'ru', 'База данных'),
(72, 'consult', 'ru', '30 встреч'),
(73, 'contact-users', 'ru', 'Контакты'),
(74, 'event', 'ru', 'Расписания занятий'),
(75, 'event-item', 'ru', 'Занятия'),
(77, 'event-methods', 'ru', 'Методы занятий'),
(78, 'event-practice', 'ru', 'Техники занятий'),
(79, 'event-vid', 'ru', 'Виды занятий'),
(80, 'event-place', 'ru', 'Места проведения'),
(81, 'event-programm', 'ru', 'Программы занятий'),
(82, 'event-schedule', 'ru', 'Расписание занятий'),
(84, 'calendar', 'ru', 'Календарь занятий'),
(85, 'revolution-sliders', 'ru', 'Суперслайдер'),
(86, 'landing-page', 'ru', 'Управление контентом'),
(87, 'paralax', 'ru', 'УТП Параллакс'),
(88, 'carousel', 'ru', 'Карусель'),
(89, 'portfolio', 'ru', 'Портфолио содержание'),
(90, 'portfolio_category', 'ru', 'Категория портфолио'),
(91, 'menu_portfolio', 'ru', 'Меню портфолио'),
(92, 'portfolio_main', 'ru', 'Портфолио'),
(93, 'feedback', 'ru', 'Отзывы клиентов'),
(94, 'active_pages', 'ru', 'Активные страницы'),
(96, 'main', 'ru', ' Главная'),
(97, 'plan', 'ru', 'Планирование занятий'),
(99, 'plan_calendar', 'ru', 'План-календарь '),
(100, 'portfolio-front', 'ru', 'Портфолио');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `source_id` int(11) DEFAULT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `source_id`, `language`, `translation`) VALUES
(130, 253, 'ru', 'Вы уверены, что желаете удалить изображение Вашего профиля?'),
(131, 254, 'ru', 'Вы уверены, что хотите отключить эту авторизацию?'),
(132, 255, 'ru', 'Ошибка авторизации.'),
(133, 256, 'ru', 'Авторизация'),
(134, 257, 'ru', 'Сервис авторизации.'),
(135, 258, 'ru', 'Captcha'),
(136, 259, 'ru', 'Изменить изображение профиля'),
(137, 260, 'ru', 'Проверьте ваш e-mail для дальнейших инструкций'),
(138, 261, 'ru', 'Проверьте ваш e-mail {email} для получения инструкций по активации аккаунта'),
(139, 262, 'ru', 'Нажмите, чтобы подключиться к службе '),
(140, 263, 'ru', 'Нажмите, чтобы отменить связь с сервисом '),
(141, 264, 'ru', 'Подтвердить E-mail '),
(142, 265, 'ru', 'Подтвердить '),
(143, 266, 'ru', 'Не удалось отправить подтверждение по электронной почте '),
(144, 267, 'ru', 'Текущий пароль'),
(145, 268, 'ru', 'Подтверждение по электронной почте для'),
(146, 269, 'ru', 'E-mail подтвержден'),
(147, 270, 'ru', 'Неверный адрес электронной почты '),
(148, 271, 'ru', 'Письмо со ссылкой активации отправлено на {email}. Срок действия этой ссылки истекает через {минут} мин. '),
(149, 272, 'ru', 'E-mail'),
(150, 273, 'ru', 'Забыли пароль?'),
(151, 274, 'ru', 'Неверное имя пользователя или пароль'),
(152, 275, 'ru', 'Логин занят'),
(153, 276, 'ru', 'Логин'),
(154, 277, 'ru', 'Выход'),
(155, 278, 'ru', 'Авторизация не доступна'),
(156, 279, 'ru', 'Пароль обновлен'),
(157, 280, 'ru', 'Восстановление пароля '),
(158, 281, 'ru', 'Сброс пароля для'),
(159, 282, 'ru', 'Пароль'),
(160, 283, 'ru', 'Регистрация - подтвердите ваш e-mail'),
(161, 284, 'ru', 'Регистрация'),
(162, 285, 'ru', 'Запомнить меня'),
(163, 286, 'ru', 'Удалить изображение профиля '),
(164, 287, 'ru', 'Повторите пароль'),
(165, 288, 'ru', 'Сбросить пароль'),
(166, 289, 'ru', 'Сбросить'),
(167, 290, 'ru', 'Сохранить профиль '),
(168, 291, 'ru', 'Сохранить изображение профиля '),
(169, 292, 'ru', 'Установить пароль '),
(170, 293, 'ru', 'Задать Имя Пользователя'),
(171, 294, 'ru', 'Регистрация'),
(172, 295, 'ru', 'Этот адрес электронной почты уже существует '),
(173, 296, 'ru', 'Токен не найден. Он может быть просрочен '),
(174, 297, 'ru', 'Токен не найден. Он может быть просрочен. Попробуйте сбросить пароль еще раз'),
(175, 298, 'ru', 'Слишком много попыток '),
(176, 299, 'ru', 'Не удается отправить сообщение по электронной почте'),
(177, 300, 'ru', 'Изменить пароль'),
(178, 301, 'ru', 'Профиль'),
(179, 302, 'ru', 'Пользователь с тем же адресом электронной почты, что и в учетной записи {client}, уже существует, но не связан с ним. Войдите, используя электронную почту, чтобы связать его.'),
(180, 303, 'ru', 'Логин должен содержать только латинские буквы, цифры и следующие символы: \"-\" и \"_\". '),
(181, 304, 'ru', 'Логин содержит недопустимые символы или слова.'),
(182, 305, 'ru', 'Неверный пароль '),
(183, 306, 'ru', 'Вы не можете войти с этого IP'),
(201, 1, 'ru', '--- С выбранным ---'),
(202, 2, 'ru', 'Активировать'),
(203, 3, 'ru', 'Активные'),
(204, 4, 'ru', 'Добавить'),
(205, 5, 'ru', 'Все'),
(206, 6, 'ru', 'Всегда Видимый'),
(207, 7, 'ru', 'Произошла неизвестная ошибка.'),
(208, 8, 'ru', 'Подтверждено'),
(209, 9, 'ru', 'Автор'),
(210, 10, 'ru', 'Заблокирован'),
(211, 11, 'ru', 'Привязка к IP'),
(212, 12, 'ru', 'Выбрать'),
(213, 13, 'ru', 'Браузер'),
(214, 14, 'ru', 'Отменить'),
(215, 15, 'ru', 'Категория'),
(216, 16, 'ru', 'Очистить Фильтры'),
(217, 17, 'ru', 'Закрыто'),
(218, 18, 'ru', 'Код'),
(219, 19, 'ru', 'Статус Комментариев'),
(220, 20, 'ru', 'Активность Комментариев'),
(221, 21, 'ru', 'Подтвердить'),
(222, 22, 'ru', 'Код Подтверждения'),
(223, 23, 'ru', 'Содержание'),
(224, 24, 'ru', 'Панель Управления'),
(225, 25, 'ru', 'Создать {item}'),
(226, 26, 'ru', 'Создать'),
(227, 27, 'ru', 'Создал'),
(228, 28, 'ru', 'Создано'),
(229, 29, 'ru', 'Панель Управления'),
(230, 30, 'ru', 'Данные'),
(231, 31, 'ru', 'Деактивировать'),
(232, 32, 'ru', 'Язык по умолчанию'),
(233, 33, 'ru', 'Значение по умолчанию'),
(234, 34, 'ru', 'Удалить'),
(235, 35, 'ru', 'Описание'),
(236, 36, 'ru', 'E-mail подтвержден'),
(237, 37, 'ru', 'E-mail'),
(238, 38, 'ru', 'Редактировать'),
(239, 39, 'ru', 'Ошибка'),
(240, 40, 'ru', 'Например'),
(241, 41, 'ru', 'Группа'),
(242, 42, 'ru', 'ID'),
(243, 43, 'ru', 'IP'),
(244, 44, 'ru', 'Иконка'),
(245, 45, 'ru', 'Неактивные'),
(246, 46, 'ru', 'Вставить'),
(247, 47, 'ru', 'Неверные настройки для виджетов панели управления'),
(248, 48, 'ru', 'Ключ'),
(249, 49, 'ru', 'Надпись'),
(250, 50, 'ru', 'Язык'),
(251, 51, 'ru', 'ID ссылки может содержать только строчные буквы, цифры, подчеркивание и тире.'),
(252, 52, 'ru', 'Ссылка'),
(253, 53, 'ru', 'Логин'),
(254, 54, 'ru', 'Выйти {username}'),
(255, 55, 'ru', 'ID меню может содержать только строчные буквы, цифры, подчеркивание и тире.'),
(256, 56, 'ru', 'Меню'),
(257, 57, 'ru', 'Название'),
(258, 58, 'ru', 'Нет Родительского Элемента'),
(259, 59, 'ru', 'Комментарии не найдены.'),
(260, 60, 'ru', 'Не Выбрано'),
(261, 61, 'ru', 'OK'),
(262, 62, 'ru', 'ОС'),
(263, 63, 'ru', 'Открыто'),
(264, 64, 'ru', 'Порядок'),
(265, 65, 'ru', 'Версия PHP'),
(266, 66, 'ru', 'Родительская Ссылка'),
(267, 67, 'ru', 'Пароль'),
(268, 68, 'ru', 'Не опубликовано'),
(269, 69, 'ru', 'Обработка данных'),
(270, 70, 'ru', 'Опубликовать'),
(271, 71, 'ru', 'Опубликовано'),
(272, 72, 'ru', 'Читать дальше...'),
(273, 73, 'ru', 'Записей на странице'),
(274, 74, 'ru', 'IP Регистрации'),
(275, 75, 'ru', 'Повторите пароль'),
(276, 76, 'ru', 'Обязательный'),
(277, 77, 'ru', 'Ревизия'),
(278, 78, 'ru', 'Роль'),
(279, 79, 'ru', 'Роли'),
(280, 80, 'ru', 'Правило'),
(281, 81, 'ru', 'Сохранить Все'),
(282, 82, 'ru', 'Сохранить'),
(283, 83, 'ru', 'Сохранено'),
(284, 84, 'ru', 'Настройки'),
(285, 85, 'ru', 'Размер'),
(286, 86, 'ru', 'Ссылка'),
(287, 87, 'ru', 'Спам'),
(288, 88, 'ru', 'Старт'),
(289, 89, 'ru', 'Статус'),
(290, 90, 'ru', 'Суперадмин'),
(291, 91, 'ru', 'Подробности Системы'),
(292, 92, 'ru', 'Изменения были успешно сохранены.'),
(293, 93, 'ru', 'Этот e-mail уже занят'),
(294, 94, 'ru', 'Заголовок'),
(295, 95, 'ru', 'Токен'),
(296, 96, 'ru', 'Корзина'),
(297, 97, 'ru', 'Тип'),
(298, 98, 'ru', 'URL'),
(299, 99, 'ru', 'Отменить Публикацию'),
(300, 100, 'ru', 'Обновить \"{item}\"'),
(301, 101, 'ru', 'Обновить'),
(302, 102, 'ru', 'Обновил'),
(303, 103, 'ru', 'Обновлено'),
(304, 104, 'ru', 'Загружено'),
(305, 105, 'ru', 'Данные Устройства'),
(306, 106, 'ru', 'Пользователь'),
(307, 107, 'ru', 'Имя пользователя'),
(308, 108, 'ru', 'Значение'),
(309, 109, 'ru', 'Просмотр'),
(310, 110, 'ru', 'Видимый'),
(311, 111, 'ru', 'Время Посещения'),
(312, 112, 'ru', 'Неправильный формат. Введите действительные IP-адреса через запятую'),
(313, 113, 'ru', 'Версия Yee CMS'),
(314, 114, 'ru', 'Версия Ядра Yee'),
(315, 115, 'ru', 'Версия Yii Framework'),
(316, 116, 'ru', 'Запись успешно обновлена.'),
(317, 117, 'ru', 'Запись успешно создана.'),
(318, 118, 'ru', 'Запись успешно удалена.'),
(319, 119, 'ru', 'Мужчина'),
(320, 120, 'ru', 'Женщина'),
(321, 121, 'ru', 'Имя'),
(322, 122, 'ru', 'Фамилия'),
(323, 123, 'ru', 'Skype'),
(324, 124, 'ru', 'Телефон'),
(325, 125, 'ru', 'Пол'),
(326, 126, 'ru', 'День рождения'),
(327, 127, 'ru', 'Месяц рождения'),
(328, 128, 'ru', 'Год рождения'),
(329, 129, 'ru', 'Краткая информация'),
(330, 130, 'ru', 'Добавить Источник Сообщения'),
(331, 131, 'ru', 'Категория'),
(332, 132, 'ru', 'Создать Сообщение'),
(333, 133, 'ru', 'Создать Новую Категори'),
(334, 134, 'ru', 'Неизменный'),
(335, 135, 'ru', 'Перевод Сообщений'),
(336, 136, 'ru', 'Название Новой Категории'),
(337, 137, 'ru', 'Выберите группу сообщений и язык для отображения переводов...'),
(338, 138, 'ru', 'Сообщение'),
(339, 139, 'ru', 'Обновить Сообщение'),
(340, 140, 'ru', '{n, plural, =1{1 запись} other{# записей}}'),
(341, 141, 'ru', 'Добавить файлы'),
(342, 142, 'ru', 'Альбом'),
(343, 143, 'ru', 'Альбомы'),
(344, 144, 'ru', 'Все Медиа Файлы'),
(345, 145, 'ru', 'Alt Текст'),
(346, 146, 'ru', 'Вернуться к файловому менеджеру'),
(347, 147, 'ru', 'Отменить загрузку'),
(348, 148, 'ru', 'Категории'),
(349, 149, 'ru', 'Категория'),
(350, 150, 'ru', 'Изменения были сохранены.'),
(351, 151, 'ru', 'Изменения не были сохранены.'),
(352, 152, 'ru', 'Создать Категорию'),
(353, 153, 'ru', 'Текущие размеры миниатюр'),
(354, 154, 'ru', 'Размер'),
(355, 155, 'ru', 'Перестроить изображения'),
(356, 156, 'ru', 'Размер файла'),
(357, 157, 'ru', 'Название файла'),
(358, 158, 'ru', 'Если вы измените размеры миниатюр, настоятельно рекомендуется перестроить их.'),
(359, 159, 'ru', 'Настройка изображений'),
(360, 160, 'ru', 'Большой размер'),
(361, 161, 'ru', 'Управление альбомами'),
(362, 162, 'ru', 'Управление Категориями'),
(363, 163, 'ru', 'Активность Медиа'),
(364, 164, 'ru', 'Детали'),
(365, 165, 'ru', 'Медиа'),
(366, 166, 'ru', 'Средний размер'),
(367, 167, 'ru', 'Изображения не найдены.'),
(368, 168, 'ru', 'Оригинал'),
(369, 169, 'ru', 'Пожалуйста, выберите файл для просмотра деталей.'),
(370, 170, 'ru', 'Выберите размер файла'),
(371, 171, 'ru', 'Малый размер'),
(372, 173, 'ru', 'Начать загрузку'),
(373, 174, 'ru', 'Настройка миниатюр'),
(374, 175, 'ru', 'Миниатюры успешно сохранены'),
(375, 176, 'ru', 'Миниатюры'),
(376, 177, 'ru', 'Обновить Категорию'),
(377, 178, 'ru', 'Обновил'),
(378, 179, 'ru', 'Загрузить файл'),
(379, 180, 'ru', 'Загрузил'),
(380, 181, 'ru', 'Меню'),
(381, 182, 'ru', 'Меню'),
(382, 183, 'ru', 'ID ссылки может содержать только строчные буквы, цифры, подчеркивание и тире.'),
(383, 184, 'ru', 'Родительская Ссылка'),
(384, 185, 'ru', 'Всегда Видимый'),
(385, 186, 'ru', 'Нет Родительской Ссылка'),
(386, 187, 'ru', 'Создать Ссылку'),
(387, 188, 'ru', 'Обновить Ссылка'),
(388, 189, 'ru', 'Ссылки'),
(389, 190, 'ru', 'Добавить Меню'),
(390, 191, 'ru', 'Добавить Ссылку'),
(391, 192, 'ru', 'Ошибка при сохранении меню!'),
(392, 193, 'ru', 'Изменения были успешно сохранены.'),
(393, 194, 'ru', 'Пожалуйста, выберите меню для просмотра списка ссылок...'),
(394, 195, 'ru', 'Выбранное меню не содержит ни одной ссылки. Нажмите кнопку \"Добавить Ссылку\", чтобы создать новую ссылку для этого меню.'),
(395, 196, 'ru', 'Страница'),
(396, 197, 'ru', 'Страницы'),
(397, 198, 'ru', 'Cоздать Страницу'),
(398, 202, 'ru', 'Пост'),
(399, 203, 'ru', 'Опубликировано в '),
(400, 204, 'ru', 'Активность Записей'),
(401, 205, 'ru', 'Посты'),
(402, 208, 'ru', 'Эскиз'),
(403, 307, 'ru', 'Создать SEO запись'),
(404, 308, 'ru', 'Следовать ссылке'),
(405, 309, 'ru', 'Индексировать'),
(406, 310, 'ru', 'Ключевые слова'),
(407, 311, 'ru', 'SEO'),
(408, 312, 'ru', 'Поисковая оптимизаци'),
(409, 313, 'ru', 'Обновить SEO запись'),
(410, 209, 'ru', 'Общие Настройки'),
(411, 210, 'ru', 'Настройки Чтения'),
(412, 211, 'ru', 'Название Сайта'),
(413, 212, 'ru', 'Описание Сайта'),
(414, 213, 'ru', 'E-mail Администратора'),
(415, 214, 'ru', 'Часовой Пояс'),
(416, 215, 'ru', 'Формат Даты'),
(417, 216, 'ru', 'Формат Времени'),
(418, 217, 'ru', 'Записей на странице'),
(419, 218, 'ru', 'Включенные права доступа'),
(420, 219, 'ru', 'Включенные роли'),
(421, 220, 'ru', 'Создать Группу Прав Доступа'),
(422, 221, 'ru', 'Создать Право Доступа'),
(423, 222, 'ru', 'Создать Роль'),
(424, 223, 'ru', 'Создать Пользователя'),
(425, 224, 'ru', 'Посещение №{id}'),
(426, 225, 'ru', 'Пользователей не найдено.'),
(427, 226, 'ru', 'Пароль'),
(428, 227, 'ru', 'Группы Прав Доступа'),
(429, 228, 'ru', 'Прав Доступа'),
(430, 229, 'ru', 'Права доступа для роли \"{role}\"'),
(431, 230, 'ru', 'Права доступа'),
(432, 231, 'ru', 'Обновить пути'),
(433, 232, 'ru', 'Дата регистрации'),
(434, 233, 'ru', 'Роль'),
(435, 234, 'ru', 'Роли и Права доступа для \"{user}\"'),
(436, 235, 'ru', 'Роли'),
(437, 236, 'ru', 'Маршруты'),
(438, 237, 'ru', 'Поиск маршрутов'),
(439, 238, 'ru', 'Показать все'),
(440, 239, 'ru', 'Показать только избранные'),
(441, 240, 'ru', 'Обновить Группу прав доступа'),
(442, 241, 'ru', 'Обновить право доступа'),
(443, 242, 'ru', 'Обновить Роль'),
(444, 243, 'ru', 'Обновить Пароль пользователя'),
(445, 244, 'ru', 'Обновить пользователя'),
(446, 245, 'ru', 'Пользователь не найден'),
(447, 246, 'ru', 'Пользователь'),
(448, 247, 'ru', 'Пользователи'),
(449, 248, 'ru', 'Лог Посещения'),
(450, 249, 'ru', 'Вы не можете изменить собственные права доступа'),
(451, 250, 'ru', 'Вы не можете изменить собственные права доступа!'),
(452, 251, 'ru', 'Настройки прав доступа \"{permission}\"'),
(453, 252, 'ru', 'Настройки роли \"{permission}\"'),
(454, 172, 'ru', 'Извините, [{filetype}] тип файла не разрешен!'),
(455, 199, 'ru', 'Создать тэг'),
(456, 200, 'ru', 'Изменить тэг'),
(457, 201, 'ru', 'Постов не найдено'),
(458, 206, 'ru', 'Тэг'),
(459, 207, 'ru', 'Тэги'),
(460, 314, 'ru', 'Пожалуйста подтвердите, что Вы не робот.'),
(462, 316, 'ru', 'Поиск блога'),
(463, 317, 'ru', 'Разделы блога'),
(464, 318, 'ru', 'Ключевые слова'),
(465, 319, 'ru', 'Самое популярное'),
(466, 320, 'ru', 'Последние комментарии'),
(467, 321, 'ru', 'Последние работы'),
(468, 322, 'ru', 'Развернуть Все'),
(469, 323, 'ru', 'Свернуть Все'),
(470, 324, 'ru', 'Благодарим Вас за обращение к нам. Мы ответим вам в кратчайшие сроки.'),
(471, 325, 'ru', 'Произошла ошибка при отправке электронной почты.'),
(472, 326, 'ru', 'Для сброса пароля перейдите по ссылке ниже:'),
(473, 327, 'ru', 'Здравствуйте:'),
(474, 328, 'ru', 'Полное имя'),
(475, 329, 'ru', 'Контакты'),
(476, 330, 'ru', 'Сообщение для'),
(477, 331, 'ru', 'Обо мне'),
(478, 332, 'ru', 'Блог'),
(479, 333, 'ru', 'Подписаться на новости'),
(480, 334, 'ru', 'Подписка'),
(481, 335, 'ru', 'Не подписан'),
(482, 336, 'ru', 'Подписан'),
(483, 337, 'ru', 'Узнать больше...'),
(484, 338, 'ru', 'Оставить отзыв...'),
(485, 339, 'ru', 'Подписаться'),
(486, 340, 'ru', 'Записаться на занятие'),
(487, 341, 'ru', 'Записаться на встречу'),
(488, 342, 'ru', 'Записаться...'),
(489, 343, 'ru', 'Контакты'),
(490, 344, 'ru', 'На главной'),
(491, 345, 'ru', 'На главной'),
(492, 346, 'ru', 'Перейдите по ссылке, чтобы подтвердить свой email:'),
(493, 347, 'ru', 'Для сброса пароля перейдите по ссылке ниже:'),
(494, 348, 'ru', 'Здравствуйте:'),
(495, 349, 'ru', 'Здравствуйте, вы зарегистрированы на'),
(496, 350, 'ru', 'Следуйте этой ссылке, чтобы подтвердить свой email и активировать аккаунт:'),
(497, 351, 'ru', 'E-mail {email} подтвержден'),
(498, 352, 'ru', 'Главная'),
(499, 353, 'ru', 'Вход'),
(502, 356, 'ru', 'Номер группы'),
(503, 357, 'ru', 'ID программы'),
(504, 358, 'ru', 'ID места'),
(505, 359, 'ru', 'Время начала'),
(506, 360, 'ru', 'Время окончания'),
(507, 361, 'ru', 'Стоимость'),
(508, 362, 'ru', 'Добавлено'),
(509, 363, 'ru', 'Обновлено'),
(510, 364, 'ru', 'ID метода'),
(511, 365, 'ru', 'Вид занятия'),
(512, 366, 'ru', 'Техники занятий'),
(513, 367, 'ru', 'Методы занятий'),
(514, 368, 'ru', 'Места занятий'),
(515, 369, 'ru', 'Программа занятий'),
(517, 371, 'ru', 'Расписание занятий'),
(518, 372, 'ru', 'Занятия'),
(520, 374, 'ru', 'Время проведения'),
(521, 375, 'ru', 'минут'),
(522, 376, 'ru', 'Выберите вид занятия...'),
(523, 377, 'ru', 'Выберите метод...'),
(524, 378, 'ru', 'Список техник'),
(525, 379, 'ru', 'Кэш очищен.'),
(526, 380, 'ru', 'Не удалось очистить кэш.'),
(527, 381, 'ru', 'Вставить адрес в форму'),
(528, 382, 'ru', 'Координаты места'),
(530, 384, 'ru', 'Адрес Карты'),
(531, 388, 'ru', 'Дополнительный телефон'),
(532, 389, 'ru', 'Контактное лицо'),
(533, 390, 'ru', 'Координаты'),
(534, 391, 'ru', 'Адрес'),
(535, 392, 'ru', 'Зум карты'),
(536, 393, 'ru', 'Нажмите на карту, чтобы узнать адрес и координаты, затем нажмите кнопку, чтобы вставить адрес в форму'),
(537, 385, 'ru', 'Маска даты'),
(538, 386, 'ru', 'Маска времени'),
(539, 387, 'ru', 'Маска даты и времени'),
(540, 394, 'ru', 'Маска телефона'),
(541, 395, 'ru', 'Виды занятий'),
(543, 397, 'ru', 'Выберите занятие...'),
(544, 398, 'ru', 'Список занятий'),
(545, 399, 'ru', 'Выберите программу...'),
(546, 400, 'ru', 'Программа'),
(547, 401, 'ru', 'Участники'),
(548, 402, 'ru', 'Выберите участников...'),
(549, 403, 'ru', 'Календарь расписаний'),
(550, 404, 'ru', 'Дата начала события должна быть больше даты окончания.'),
(551, 405, 'ru', 'Место'),
(553, 407, 'ru', 'Занятие'),
(554, 408, 'ru', 'Абревиатура'),
(555, 409, 'ru', 'Добавить'),
(556, 410, 'ru', 'Добавить занятие'),
(557, 411, 'ru', 'Личное'),
(558, 412, 'ru', 'Индивидуальные'),
(559, 413, 'ru', 'Групповые'),
(560, 414, 'ru', 'Вид занятий'),
(561, 415, 'ru', 'Комментарий к расписанию'),
(562, 416, 'ru', 'Описание занятия'),
(563, 417, 'ru', 'Описание программы'),
(564, 418, 'ru', 'Фоновое изображение'),
(565, 419, 'ru', 'Первый баннер'),
(566, 420, 'ru', 'Средний баннер'),
(567, 421, 'ru', 'Ссылка кнопки'),
(568, 422, 'ru', 'Иконка кнопки'),
(569, 423, 'ru', 'Название кнопки'),
(570, 424, 'ru', 'Класс кнопки'),
(571, 425, 'ru', 'Сортировка'),
(572, 426, 'ru', 'Иконка кнопки'),
(573, 427, 'ru', 'Текст кнопки'),
(574, 428, 'ru', 'Класс кнопки'),
(575, 431, 'ru', 'Изображение контента'),
(576, 432, 'ru', 'Обратный отсчет'),
(577, 433, 'ru', 'Подсказка обратного отсчета'),
(578, 429, 'ru', 'Главный баннер'),
(579, 430, 'ru', 'Средний баннер'),
(580, 434, 'ru', 'Цвет фона'),
(581, 435, 'ru', 'Фоновое изображение'),
(582, 436, 'ru', 'Изображение'),
(583, 437, 'ru', 'Данные сортировки сохранены'),
(584, 442, 'ru', 'Требуется AJAX параметр.'),
(585, 438, 'ru', 'Сохранить порядок'),
(586, 439, 'ru', 'Изображение не найдено'),
(587, 440, 'ru', 'Изображение удалено.'),
(588, 441, 'ru', 'Изображение успешно добавлено.'),
(589, 443, 'ru', 'Фоновое изображение'),
(590, 444, 'ru', 'Изображение контента'),
(591, 445, 'ru', 'Слайды'),
(592, 446, 'ru', 'Параллаксы'),
(593, 447, 'ru', 'Класс'),
(594, 448, 'ru', 'Коэффициент фона'),
(595, 449, 'ru', 'Карусель'),
(596, 450, 'ru', 'Кол-во слайдов в окне'),
(600, 454, 'ru', 'Категория портфолио'),
(601, 455, 'ru', 'Портфолио'),
(602, 456, 'ru', 'Меню портфолио'),
(603, 457, 'ru', 'Миниатюра'),
(604, 458, 'ru', 'Ссылка на действие'),
(606, 460, 'ru', 'Вид деятельности'),
(607, 461, 'ru', 'Отзывы'),
(608, 462, 'ru', 'Узнать больше...'),
(609, 463, 'ru', 'Отправить в корзину'),
(610, 464, 'ru', 'Назначение'),
(611, 465, 'ru', 'Главное фото'),
(612, 466, 'ru', 'Стоимость программы'),
(613, 467, 'ru', 'Итоговая сумма'),
(614, 468, 'ru', 'Кол-во занятий'),
(615, 469, 'ru', 'Копировать'),
(616, 470, 'ru', 'Элемент будет скопирован. Вы уверены?'),
(617, 471, 'ru', 'Связи'),
(618, 472, 'ru', 'Все права защищены.'),
(619, 473, 'ru', 'Телефон Администратора'),
(620, 474, 'ru', 'Facebook Администратора'),
(621, 475, 'ru', 'Instagram Администратора');

-- --------------------------------------------------------

--
-- Структура таблицы `message_source`
--

CREATE TABLE `message_source` (
  `id` int(11) NOT NULL,
  `category` varchar(32) NOT NULL,
  `message` text,
  `immutable` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message_source`
--

INSERT INTO `message_source` (`id`, `category`, `message`, `immutable`) VALUES
(1, 'yee', '--- With selected ---', 1),
(2, 'yee', 'Activate', 1),
(3, 'yee', 'Active', 1),
(4, 'yee', 'Add New', 1),
(5, 'yee', 'All', 1),
(6, 'yee', 'Always Visible', 1),
(7, 'yee', 'An unknown error occurred.', 1),
(8, 'yee', 'Approved', 1),
(9, 'yee', 'Author', 1),
(10, 'yee', 'Banned', 1),
(11, 'yee', 'Bind to IP', 1),
(12, 'yee', 'Browse', 1),
(13, 'yee', 'Browser', 1),
(14, 'yee', 'Cancel', 1),
(15, 'yee', 'Category', 1),
(16, 'yee', 'Clear filters', 1),
(17, 'yee', 'Closed', 1),
(18, 'yee', 'Code', 1),
(19, 'yee', 'Comment Status', 1),
(20, 'yee', 'Comments Activity', 1),
(21, 'yee', 'Confirm', 1),
(22, 'yee', 'Confirmation Token', 1),
(23, 'yee', 'Content', 1),
(24, 'yee', 'Control Panel', 1),
(25, 'yee', 'Create {item}', 1),
(26, 'yee', 'Create', 1),
(27, 'yee', 'Created By', 1),
(28, 'yee', 'Created', 1),
(29, 'yee', 'Dashboard', 1),
(30, 'yee', 'Data', 1),
(31, 'yee', 'Deactivate', 1),
(32, 'yee', 'Default Language', 1),
(33, 'yee', 'Default Value', 1),
(34, 'yee', 'Delete', 1),
(35, 'yee', 'Description', 1),
(36, 'yee', 'E-mail confirmed', 1),
(37, 'yee', 'E-mail', 1),
(38, 'yee', 'Edit', 1),
(39, 'yee', 'Error', 1),
(40, 'yee', 'For example', 1),
(41, 'yee', 'Group', 1),
(42, 'yee', 'ID', 1),
(43, 'yee', 'IP', 1),
(44, 'yee', 'Icon', 1),
(45, 'yee', 'Inactive', 1),
(46, 'yee', 'Insert', 1),
(47, 'yee', 'Invalid settings for dashboard widgets', 1),
(48, 'yee', 'Key', 1),
(49, 'yee', 'Label', 1),
(50, 'yee', 'Language', 1),
(51, 'yee', 'Link ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(52, 'yee', 'Link', 1),
(53, 'yee', 'Login', 1),
(54, 'yee', 'Logout {username}', 1),
(55, 'yee', 'Menu ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(56, 'yee', 'Menu', 1),
(57, 'yee', 'Name', 1),
(58, 'yee', 'No Parent', 1),
(59, 'yee', 'No comments found.', 1),
(60, 'yee', 'Not Selected', 1),
(61, 'yee', 'OK', 1),
(62, 'yee', 'OS', 1),
(63, 'yee', 'Open', 1),
(64, 'yee', 'Order', 1),
(65, 'yee', 'PHP Version', 1),
(66, 'yee', 'Parent Link', 1),
(67, 'yee', 'Password', 1),
(68, 'yee', 'Pending', 1),
(69, 'yee', 'Processing', 1),
(70, 'yee', 'Publish', 1),
(71, 'yee', 'Published', 1),
(72, 'yee', 'Read more...', 1),
(73, 'yee', 'Records per page', 1),
(74, 'yee', 'Registration IP', 1),
(75, 'yee', 'Repeat password', 1),
(76, 'yee', 'Required', 1),
(77, 'yee', 'Revision', 1),
(78, 'yee', 'Role', 1),
(79, 'yee', 'Roles', 1),
(80, 'yee', 'Rule', 1),
(81, 'yee', 'Save All', 1),
(82, 'yee', 'Save', 1),
(83, 'yee', 'Saved', 1),
(84, 'yee', 'Settings', 1),
(85, 'yee', 'Size', 1),
(86, 'yee', 'Slug', 1),
(87, 'yee', 'Spam', 1),
(88, 'yee', 'Start', 1),
(89, 'yee', 'Status', 1),
(90, 'yee', 'Superadmin', 1),
(91, 'yee', 'System Info', 1),
(92, 'yee', 'The changes have been saved.', 1),
(93, 'yee', 'This e-mail already exists', 1),
(94, 'yee', 'Title', 1),
(95, 'yee', 'Token', 1),
(96, 'yee', 'Trash', 1),
(97, 'yee', 'Type', 1),
(98, 'yee', 'URL', 1),
(99, 'yee', 'Unpublish', 1),
(100, 'yee', 'Update \"{item}\"', 1),
(101, 'yee', 'Update', 1),
(102, 'yee', 'Updated By', 1),
(103, 'yee', 'Updated', 1),
(104, 'yee', 'Uploaded', 1),
(105, 'yee', 'User agent', 1),
(106, 'yee', 'User', 1),
(107, 'yee', 'Username', 1),
(108, 'yee', 'Value', 1),
(109, 'yee', 'View', 1),
(110, 'yee', 'Visible', 1),
(111, 'yee', 'Visit Time', 1),
(112, 'yee', 'Wrong format. Enter valid IPs separated by comma', 1),
(113, 'yee', 'Yee CMS Version', 1),
(114, 'yee', 'Yee Core Version', 1),
(115, 'yee', 'Yii Framework Version', 1),
(116, 'yee', 'Your item has been updated.', 1),
(117, 'yee', 'Your item has been created.', 1),
(118, 'yee', 'Your item has been deleted.', 1),
(119, 'yee', 'Male', 1),
(120, 'yee', 'Female', 1),
(121, 'yee', 'First Name', 1),
(122, 'yee', 'Last Name', 1),
(123, 'yee', 'Skype', 1),
(124, 'yee', 'Phone', 1),
(125, 'yee', 'Gender', 1),
(126, 'yee', 'Birthday', 1),
(127, 'yee', 'Birth month', 1),
(128, 'yee', 'Birth year', 1),
(129, 'yee', 'Short Info', 1),
(130, 'yee/translation', 'Add New Source Message', 1),
(131, 'yee/translation', 'Category', 1),
(132, 'yee/translation', 'Create Message Source', 1),
(133, 'yee/translation', 'Create New Category', 1),
(134, 'yee/translation', 'Immutable', 1),
(135, 'yee/translation', 'Message Translation', 1),
(136, 'yee/translation', 'New Category Name', 1),
(137, 'yee/translation', 'Please, select message group and language to view translations...', 1),
(138, 'yee/translation', 'Source Message', 1),
(139, 'yee/translation', 'Update Message Source', 1),
(140, 'yee/translation', '{n, plural, =1{1 message} other{# messages}}', 1),
(141, 'yee/media', 'Add files', 1),
(142, 'yee/media', 'Album', 1),
(143, 'yee/media', 'Albums', 1),
(144, 'yee/media', 'All Media Items', 1),
(145, 'yee/media', 'Alt Text', 1),
(146, 'yee/media', 'Back to file manager', 1),
(147, 'yee/media', 'Cancel upload', 1),
(148, 'yee/media', 'Categories', 1),
(149, 'yee/media', 'Category', 1),
(150, 'yee/media', 'Changes have been saved.', 1),
(151, 'yee/media', 'Changes haven\'t been saved.', 1),
(152, 'yee/media', 'Create Category', 1),
(153, 'yee/media', 'Current thumbnail sizes', 1),
(154, 'yee/media', 'Dimensions', 1),
(155, 'yee/media', 'Do resize thumbnails', 1),
(156, 'yee/media', 'File Size', 1),
(157, 'yee/media', 'Filename', 1),
(158, 'yee/media', 'If you change the thumbnails sizes, it is strongly recommended resize image thumbnails.', 1),
(159, 'yee/media', 'Image Settings', 1),
(160, 'yee/media', 'Large size', 1),
(161, 'yee/media', 'Manage Albums', 1),
(162, 'yee/media', 'Manage Categories', 1),
(163, 'yee/media', 'Media Activity', 1),
(164, 'yee/media', 'Media Details', 1),
(165, 'yee/media', 'Media', 1),
(166, 'yee/media', 'Medium size', 1),
(167, 'yee/media', 'No images found.', 1),
(168, 'yee/media', 'Original', 1),
(169, 'yee/media', 'Please, select file to view details.', 1),
(170, 'yee/media', 'Select image size', 1),
(171, 'yee/media', 'Small size', 1),
(172, 'yee/media', 'Sorry, [{filetype}] file type is not permitted!', 1),
(173, 'yee/media', 'Start upload', 1),
(174, 'yee/media', 'Thumbnails settings', 1),
(175, 'yee/media', 'Thumbnails sizes has been resized successfully!', 1),
(176, 'yee/media', 'Thumbnails', 1),
(177, 'yee/media', 'Update Category', 1),
(178, 'yee/media', 'Updated By', 1),
(179, 'yee/media', 'Upload New File', 1),
(180, 'yee/media', 'Uploaded By', 1),
(181, 'yee/menu', 'Menu', 1),
(182, 'yee/menu', 'Menus', 1),
(183, 'yee/menu', 'Link ID can only contain lowercase alphanumeric characters, underscores and dashes.', 1),
(184, 'yee/menu', 'Parent Link', 1),
(185, 'yee/menu', 'Always Visible', 1),
(186, 'yee/menu', 'No Parent', 1),
(187, 'yee/menu', 'Create Menu Link', 1),
(188, 'yee/menu', 'Update Menu Link', 1),
(189, 'yee/menu', 'Menu Links', 1),
(190, 'yee/menu', 'Add New Menu', 1),
(191, 'yee/menu', 'Add New Link', 1),
(192, 'yee/menu', 'An error occurred during saving menu!', 1),
(193, 'yee/menu', 'The changes have been saved.', 1),
(194, 'yee/menu', 'Please, select menu to view menu links...', 1),
(195, 'yee/menu', 'Selected menu doesn\'t contain any link. Click \"Add New Link\" to create a link for this menu.', 1),
(196, 'yee/page', 'Page', 1),
(197, 'yee/page', 'Pages', 1),
(198, 'yee/page', 'Create Page', 1),
(199, 'yee/post', 'Create Tag', 1),
(200, 'yee/post', 'Update Tag', 1),
(201, 'yee/post', 'No posts found.', 1),
(202, 'yee/post', 'Post', 1),
(203, 'yee/post', 'Posted in', 1),
(204, 'yee/post', 'Posts Activity', 1),
(205, 'yee/post', 'Posts', 1),
(206, 'yee/post', 'Tag', 1),
(207, 'yee/post', 'Tags', 1),
(208, 'yee/post', 'Thumbnail', 1),
(209, 'yee/settings', 'General Settings', 1),
(210, 'yee/settings', 'Reading Settings', 1),
(211, 'yee/settings', 'Site Title', 1),
(212, 'yee/settings', 'Site Description', 1),
(213, 'yee/settings', 'Admin Email', 1),
(214, 'yee/settings', 'Timezone', 1),
(215, 'yee/settings', 'Date Format', 1),
(216, 'yee/settings', 'Time Format', 1),
(217, 'yee/settings', 'Page Size', 1),
(218, 'yee/user', 'Child permissions', 1),
(219, 'yee/user', 'Child roles', 1),
(220, 'yee/user', 'Create Permission Group', 1),
(221, 'yee/user', 'Create Permission', 1),
(222, 'yee/user', 'Create Role', 1),
(223, 'yee/user', 'Create User', 1),
(224, 'yee/user', 'Log №{id}', 1),
(225, 'yee/user', 'No users found.', 1),
(226, 'yee/user', 'Password', 1),
(227, 'yee/user', 'Permission Groups', 1),
(228, 'yee/user', 'Permission', 1),
(229, 'yee/user', 'Permissions for \"{role}\" role', 1),
(230, 'yee/user', 'Permissions', 1),
(231, 'yee/user', 'Refresh routes', 1),
(232, 'yee/user', 'Registration date', 1),
(233, 'yee/user', 'Role', 1),
(234, 'yee/user', 'Roles and Permissions for \"{user}\"', 1),
(235, 'yee/user', 'Roles', 1),
(236, 'yee/user', 'Routes', 1),
(237, 'yee/user', 'Search route', 1),
(238, 'yee/user', 'Show all', 1),
(239, 'yee/user', 'Show only selected', 1),
(240, 'yee/user', 'Update Permission Group', 1),
(241, 'yee/user', 'Update Permission', 1),
(242, 'yee/user', 'Update Role', 1),
(243, 'yee/user', 'Update User Password', 1),
(244, 'yee/user', 'Update User', 1),
(245, 'yee/user', 'User not found', 1),
(246, 'yee/user', 'User', 1),
(247, 'yee/user', 'Users', 1),
(248, 'yee/user', 'Visit Log', 1),
(249, 'yee/user', 'You can not change own permissions', 1),
(250, 'yee/user', 'You can\'t update own permissions!', 1),
(251, 'yee/user', '{permission} Permission Settings', 1),
(252, 'yee/user', '{permission} Role Settings', 1),
(253, 'yee/auth', 'Are you sure you want to delete your profile picture?', 1),
(254, 'yee/auth', 'Are you sure you want to unlink this authorization?', 1),
(255, 'yee/auth', 'Authentication error occurred.', 1),
(256, 'yee/auth', 'Authorization', 1),
(257, 'yee/auth', 'Authorized Services', 1),
(258, 'yee/auth', 'Captcha', 1),
(259, 'yee/auth', 'Change profile picture', 1),
(260, 'yee/auth', 'Check your E-mail for further instructions', 1),
(261, 'yee/auth', 'Check your e-mail {email} for instructions to activate account', 1),
(262, 'yee/auth', 'Click to connect with service', 1),
(263, 'yee/auth', 'Click to unlink service', 1),
(264, 'yee/auth', 'Confirm E-mail', 1),
(265, 'yee/auth', 'Confirm', 1),
(266, 'yee/auth', 'Could not send confirmation email', 1),
(267, 'yee/auth', 'Current password', 1),
(268, 'yee/auth', 'E-mail confirmation for', 1),
(269, 'yee/auth', 'E-mail confirmed', 1),
(270, 'yee/auth', 'E-mail is invalid', 1),
(271, 'yee/auth', 'E-mail with activation link has been sent to <b>{email}</b>. This link will expire in {minutes} min.', 1),
(272, 'yee/auth', 'E-mail', 1),
(273, 'yee/auth', 'Forgot password?', 1),
(274, 'yee/auth', 'Incorrect username or password', 1),
(275, 'yee/auth', 'Login has been taken', 1),
(276, 'yee/auth', 'Login', 1),
(277, 'yee/auth', 'Logout', 1),
(278, 'yee/auth', 'Non Authorized Services', 1),
(279, 'yee/auth', 'Password has been updated', 1),
(280, 'yee/auth', 'Password recovery', 1),
(281, 'yee/auth', 'Password reset for', 1),
(282, 'yee/auth', 'Password', 1),
(283, 'yee/auth', 'Registration - confirm your e-mail', 1),
(284, 'yee/auth', 'Registration', 1),
(285, 'yee/auth', 'Remember me', 1),
(286, 'yee/auth', 'Remove profile picture', 1),
(287, 'yee/auth', 'Repeat password', 1),
(288, 'yee/auth', 'Reset Password', 1),
(289, 'yee/auth', 'Reset', 1),
(290, 'yee/auth', 'Save Profile', 1),
(291, 'yee/auth', 'Save profile picture', 1),
(292, 'yee/auth', 'Set Password', 1),
(293, 'yee/auth', 'Set Username', 1),
(294, 'yee/auth', 'Signup', 1),
(295, 'yee/auth', 'This E-mail already exists', 1),
(296, 'yee/auth', 'Token not found. It may be expired', 1),
(297, 'yee/auth', 'Token not found. It may be expired. Try reset password once more', 1),
(298, 'yee/auth', 'Too many attempts', 1),
(299, 'yee/auth', 'Unable to send message for email provided', 1),
(300, 'yee/auth', 'Update Password', 1),
(301, 'yee/auth', 'User Profile', 1),
(302, 'yee/auth', 'User with the same email as in {client} account already exists but isn\'t linked to it. Login using email first to link it.', 1),
(303, 'yee/auth', 'The username should contain only Latin letters, numbers and the following characters: \"-\" and \"_\".', 1),
(304, 'yee/auth', 'Username contains not allowed characters or words.', 1),
(305, 'yee/auth', 'Wrong password', 1),
(306, 'yee/auth', 'You could not login from this IP', 1),
(307, 'yee/seo', 'Create SEO Record', 1),
(308, 'yee/seo', 'Follow', 1),
(309, 'yee/seo', 'Index', 1),
(310, 'yee/seo', 'Keywords', 1),
(311, 'yee/seo', 'SEO', 1),
(312, 'yee/seo', 'Search Engine Optimization', 1),
(313, 'yee/seo', 'Update SEO Record', 1),
(314, 'yee/auth', 'Please confirm that you are not a bot.', 0),
(316, 'yee/post', 'Blog search', 0),
(317, 'yee/post', 'Blog topics', 0),
(318, 'yee/post', 'Keywords', 0),
(319, 'yee/post', 'Most popular', 0),
(320, 'yee/post', 'Recent Comments', 0),
(321, 'yee/post', 'Recent works', 0),
(322, 'yee', 'Expand All', 0),
(323, 'yee', 'Collapse All', 0),
(324, 'yee', 'Thank you for contacting us. We will respond to you as soon as possible.', 0),
(325, 'yee', 'There was an error sending email.', 0),
(326, 'yee/auth', 'Follow the link below to reset your password:', 0),
(327, 'yee/auth', 'Hello:', 0),
(328, 'yee', 'Full Name', 0),
(329, 'yee', 'Contact', 0),
(330, 'yee', 'Message for', 0),
(331, 'yee', 'About', 0),
(332, 'yee', 'Blog', 0),
(333, 'yee', 'Subscribe to news', 0),
(334, 'yee', 'Subscribe', 0),
(335, 'yee', 'Subscribe Off', 0),
(336, 'yee', 'Subscribe On', 0),
(337, 'yee/section', 'Learn more...', 0),
(338, 'yee', 'Leave a review...', 0),
(339, 'yee', 'Subscribe to', 0),
(340, 'yee/section', 'Sign up for class', 0),
(341, 'yee/section', 'Make an appointment', 0),
(342, 'yee', 'Sign up...', 0),
(343, 'yee', 'Contacts', 0),
(344, 'yee/post', 'Main', 0),
(345, 'yee', 'Main On', 0),
(346, 'yee/mail', 'Follow the link below to confirm your email:', 0),
(347, 'yee/mail', 'Follow the link below to reset your password:', 0),
(348, 'yee/mail', 'Hello:', 0),
(349, 'yee/mail', 'Hello, you have been registered on:', 0),
(350, 'yee/mail', 'Follow this link to confirm your E-mail and activate account:', 0),
(351, 'yee/auth', 'E-mail {email} confirmed', 0),
(352, 'yee', 'Home', 0),
(353, 'yee/auth', 'Enter', 0),
(356, 'yee/event', 'Group Number', 0),
(357, 'yee/event', 'Programm ID', 0),
(358, 'yee/event', 'Place ID', 0),
(359, 'yee/event', 'Start Time', 0),
(360, 'yee/event', 'End Time', 0),
(361, 'yee/event', 'Price', 0),
(362, 'yee', 'Created At', 0),
(363, 'yee', 'Updated At', 0),
(364, 'yee/event', 'Methods ID', 0),
(365, 'yee/event', 'Event Vid', 0),
(366, 'yee/event', 'Event Practices', 0),
(367, 'yee/event', 'Event Methods', 0),
(368, 'yee/event', 'Event Places', 0),
(369, 'yee/event', 'Event Programms', 0),
(371, 'yee/event', 'Event Schedules', 0),
(372, 'yee/event', 'Events', 0),
(374, 'yee/event', 'Time Volume', 0),
(375, 'yee/event', 'min', 0),
(376, 'yee/event', 'Select Vid...', 0),
(377, 'yee/event', 'Select Methods...', 0),
(378, 'yee/event', 'Practice List', 0),
(379, 'yee', 'Cache has been flushed.', 0),
(380, 'yee', 'Failed to flush cache.', 0),
(381, 'yee', 'Paste address to form', 0),
(382, 'yee', 'The coordinates of the place', 0),
(384, 'yee', 'Map Address', 0),
(385, 'yee/settings', 'Date Mask', 0),
(386, 'yee/settings', 'Time Mask', 0),
(387, 'yee/settings', 'Date & Time Mask', 0),
(388, 'yee', 'Phone Optional', 0),
(389, 'yee', 'Contact Person', 0),
(390, 'yee', 'Coords', 0),
(391, 'yee', 'Address', 0),
(392, 'yee', 'Map Zoom', 0),
(393, 'yee', 'Click on the map to get the address and coordinates, then click the button to insert the address into the form', 0),
(394, 'yee/settings', 'Phone Mask', 0),
(395, 'yee/event', 'Vid Name', 0),
(397, 'yee/event', 'Select Events...', 0),
(398, 'yee/event', 'Events List', 0),
(399, 'yee/event', 'Select Programm...', 0),
(400, 'yee/event', 'Programm Name', 0),
(401, 'yee/event', 'Users List', 0),
(402, 'yee/event', 'Select Users...', 0),
(403, 'yee/event', 'Schedule Calendar', 0),
(404, 'yee/event', 'The event start date must be greater than the end date.', 0),
(405, 'yee/event', 'Place Name', 0),
(407, 'yee/event', 'Event Name', 0),
(408, 'yee/event', 'Name Short', 0),
(409, 'yee', 'Add', 0),
(410, 'yee/event', 'Add Events', 0),
(411, 'yee/event', 'Private', 0),
(412, 'yee/event', 'Individual', 0),
(413, 'yee/event', 'Group', 0),
(414, 'yee/event', 'Status Vid', 0),
(415, 'yee/event', 'Schedule Description', 0),
(416, 'yee/event', 'Event Description', 0),
(417, 'yee/event', 'Programm Description', 0),
(418, 'yee/block', 'Slide Image', 0),
(419, 'yee/block', 'Banner Top', 0),
(420, 'yee/block', 'Banner Middle', 0),
(421, 'yee/block', 'Banner Url', 0),
(422, 'yee/block', 'Btn Icon', 0),
(423, 'yee/block', 'Btn Name', 0),
(424, 'yee/block', 'Btn Class', 0),
(425, 'yee', 'Sort', 0),
(426, 'yee', 'Btn Icon', 0),
(427, 'yee', 'Btn Name', 0),
(428, 'yee', 'Btn Class', 0),
(429, 'yee/section', 'Banner Top', 0),
(430, 'yee/section', 'Banner Middle', 0),
(431, 'yee', 'Content Image', 0),
(432, 'yee/section', 'Countdown', 0),
(433, 'yee/section', 'Countdown Prompt', 0),
(434, 'yee', 'Bg Color', 0),
(435, 'yee', 'Bg Image', 0),
(436, 'yee', 'Image', 0),
(437, 'yee/media', 'Sort data saved.', 0),
(438, 'yee/media', 'To keep order', 0),
(439, 'yee/media', 'Photo not found.', 0),
(440, 'yee/media', 'Your photo has been removed.', 0),
(441, 'yee/media', 'Your photo was successfully added.', 0),
(442, 'yee', 'Requires a parameter with AJAX.', 0),
(443, 'yee/section', 'Img Src', 0),
(444, 'yee/section', 'Data Lazyload', 0),
(445, 'yee/section', 'Slides', 0),
(446, 'yee/section', 'Parallaxes', 0),
(447, 'yee/section', 'Parallax Class', 0),
(448, 'yee/section', 'Rackground Ratio', 0),
(449, 'yee/section', 'Carousel', 0),
(450, 'yee/section', 'Items Qty', 0),
(454, 'yee/section', 'Portfolio Category', 0),
(455, 'yee/section', 'Portfolio Items', 0),
(456, 'yee/section', 'Portfolio Menu', 0),
(457, 'yee/section', 'Thumbnail', 0),
(458, 'yee/section', 'Link Href', 0),
(460, 'yee', 'Business', 0),
(461, 'yee/section', 'Feedback', 0),
(462, 'yee', 'Learn more...', 0),
(463, 'yee', 'Move to Trash', 0),
(464, 'yee/event', 'Assignment', 0),
(465, 'yee/media', 'Media First', 0),
(466, 'yee/event', 'Programm Price', 0),
(467, 'yee/event', 'Price Summ', 0),
(468, 'yee/event', 'Count Item', 0),
(469, 'yee', 'Copy', 0),
(470, 'yee', 'The item will be copied. Are you sure?', 0),
(471, 'yee/media', 'Links', 0),
(472, 'yee', 'All rights reserved.', 0),
(473, 'yee/settings', 'Admin Phone', 0),
(474, 'yee/settings', 'Admin Facebook', 0),
(475, 'yee/settings', 'Admin Instagram', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `alias`, `apply_time`) VALUES
('m000000_000000_base', '@app/migrations', 1538934042),
('m130524_201442_init', '@app/migrations', 1538934050),
('m150319_150657_alter_user_table', '@yeesoft/yii2-yee-core/migrations/', 1538934051),
('m150319_155941_init_yee_core', '@yeesoft/yii2-yee-core/migrations/', 1538934051),
('m150319_184824_init_settings', '@yeesoft/yii2-yee-core/migrations/', 1538934051),
('m150319_194321_init_menus', '@yeesoft/yii2-yee-core/migrations/', 1538934052),
('m150320_102452_init_translations', '@yeesoft/yii2-yee-translation/migrations/', 1538934052),
('m150628_124401_create_media_table', '@yeesoft/yii2-yee-media/migrations/', 1538934053),
('m150630_121101_create_post_table', '@yeesoft/yii2-yee-post/migrations/', 1538934053),
('m150703_182055_create_auth_table', '@yeesoft/yii2-yee-auth/migrations/', 1538934054),
('m150706_175101_create_comment_table', '@yeesoft/yii2-comments/migrations/', 1538934054),
('m150719_154955_add_setting_menu_links', '@yeesoft/yii2-yee-settings/migrations/', 1538934054),
('m150719_182533_add_menu_and_links', '@yeesoft/yii2-yee-menu/migrations/', 1538934054),
('m150727_175300_add_comments_menu_links', '@yeesoft/yii2-yee-comment/migrations/', 1538934054),
('m150729_121634_add_user_menu_links', '@yeesoft/yii2-yee-user/migrations/', 1538934054),
('m150729_122614_add_post_menu_links', '@yeesoft/yii2-yee-post/migrations/', 1538934054),
('m150729_131014_add_media_menu_links', '@yeesoft/yii2-yee-media/migrations/', 1538934054),
('m150731_150101_create_page_table', '@yeesoft/yii2-yee-page/migrations/', 1538934054),
('m150731_150644_add_page_menu_links', '@yeesoft/yii2-yee-page/migrations/', 1538934054),
('m150821_140141_add_core_permissions', '@yeesoft/yii2-yee-core/migrations/', 1538934054),
('m150825_202231_add_post_permissions', '@yeesoft/yii2-yee-post/migrations/', 1538934054),
('m150825_205531_add_user_permissions', '@yeesoft/yii2-yee-user/migrations/', 1538934054),
('m150825_211322_add_menu_permissions', '@yeesoft/yii2-yee-menu/migrations/', 1538934054),
('m150825_212310_add_settings_permissions', '@yeesoft/yii2-yee-settings/migrations/', 1538934054),
('m150825_212941_add_comments_permissions', '@yeesoft/yii2-yee-comment/migrations/', 1538934054),
('m150825_213610_add_media_permissions', '@yeesoft/yii2-yee-media/migrations/', 1538934054),
('m150825_220620_add_page_permissions', '@yeesoft/yii2-yee-page/migrations/', 1538934054),
('m151116_212614_add_translations_menu_links', '@yeesoft/yii2-yee-translation/migrations/', 1538934054),
('m151121_091144_i18n_yee_source', '@yeesoft/yii2-yee-core/migrations/', 1538934054),
('m151121_131210_add_translation_permissions', '@yeesoft/yii2-yee-translation/migrations/', 1538934054),
('m151121_184634_i18n_yee_translation_source', '@yeesoft/yii2-yee-translation/migrations/', 1538934054),
('m151121_225504_i18n_yee_media_source', '@yeesoft/yii2-yee-media/migrations/', 1538934054),
('m151121_232115_i18n_yee_menu_source', '@yeesoft/yii2-yee-menu/migrations/', 1538934054),
('m151121_233615_i18n_yee_page_source', '@yeesoft/yii2-yee-page/migrations/', 1538934054),
('m151121_233715_i18n_yee_post_source', '@yeesoft/yii2-yee-post/migrations/', 1538934054),
('m151121_235015_i18n_yee_settings_source', '@yeesoft/yii2-yee-settings/migrations/', 1538934054),
('m151121_235512_i18n_yee_user_source', '@yeesoft/yii2-yee-user/migrations/', 1538934054),
('m151126_061233_i18n_yee_auth_source', '@yeesoft/yii2-yee-auth/migrations/', 1538934054),
('m151226_230101_create_seo_table', '@yeesoft/yii2-yee-seo/migrations/', 1538934055),
('m151226_231101_add_seo_menu_links', '@yeesoft/yii2-yee-seo/migrations/', 1538934055),
('m151226_233401_add_seo_permissions', '@yeesoft/yii2-yee-seo/migrations/', 1538934055),
('m151226_234401_i18n_yee_seo_source', '@yeesoft/yii2-yee-seo/migrations/', 1538934055),
('m160207_123123_add_super_parent_id', '@yeesoft/yii2-comments/migrations/', 1538934055),
('m160325_140543_init_eav', '@vendor/yeesoft/yii2-yee-eav/migrations/', 1539282725),
('m160325_142311_add_eav_menu_links', '@vendor/yeesoft/yii2-yee-eav/migrations/', 1539282725),
('m160325_143610_add_eav_permissions', '@vendor/yeesoft/yii2-yee-eav/migrations/', 1539282725),
('m160325_144849_i18n_yee_eav_source', '@vendor/yeesoft/yii2-yee-eav/migrations/', 1539282725),
('m160414_212551_add_view_page', '@yeesoft/yii2-yee-page/migrations/', 1538934055),
('m160414_212558_add_view_post', '@yeesoft/yii2-yee-post/migrations/', 1538934055),
('m160419_092310_i18n_ru_yee', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_122314_i18n_ru_init_demo', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_143242_i18n_ru_menu_comments', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_143310_i18n_ru_menu_core', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_143742_i18n_ru_menu_media', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_143915_i18n_ru_menu_menu', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_144310_i18n_ru_menu_page', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_144654_i18n_ru_menu_post', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_144710_i18n_ru_menu_setting', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_145050_i18n_ru_menu_translations', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_145301_i18n_ru_menu_user', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_210059_i18n_ru_yee_translation', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_225904_i18n_ru_yee_media', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_232223_i18n_ru_yee_menu', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_233713_i18n_ru_yee_page', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_233813_i18n_ru_yee_post', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_234401_i18n_ru_yee_seo', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_235120_i18n_ru_yee_settings', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_235601_i18n_ru_menu_seo', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160419_235643_i18n_ru_yee_user', '@vendor/yeesoft/yee-i18n/ru/', 1544637337),
('m160426_122854_create_uploader_images_table', '@yeesoft/yii2-yee-media/migrations/', 1538934055),
('m160530_224510_add_url_field', '@yeesoft/yii2-comments/migrations/', 1538934055),
('m160605_214907_create_tag_table', '@yeesoft/yii2-yee-post/migrations/', 1538934056),
('m160605_215105_init_tag_settings', '@yeesoft/yii2-yee-post/migrations/', 1538934056),
('m160610_120101_init_demo', '@app/migrations', 1538934056),
('m160831_224932_alter_user_table', '@yeesoft/yii2-yee-core/migrations/', 1538934056),
('m160903_113810_update_auth_foreign_key', '@yeesoft/yii2-yee-auth/migrations/', 1538934056);

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'page',
  `layout` varchar(255) NOT NULL DEFAULT 'main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `slug`, `status`, `comment_status`, `published_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `revision`, `view`, `layout`) VALUES
(1, 'author-course', 1, 0, 1440720000, 1440763228, 1549719177, 1, 1, 10, 'page', 'main'),
(2, 'consult', 1, 0, 1545782400, 1545840956, 1552321676, 1, 1, 8, 'page', 'main');

-- --------------------------------------------------------

--
-- Структура таблицы `page_lang`
--

CREATE TABLE `page_lang` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `page_lang`
--

INSERT INTO `page_lang` (`id`, `page_id`, `language`, `title`, `content`) VALUES
(1, 1, 'en-US', 'Test Page', '<p style=\"text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id ullamcorper nibh, id blandit ante. Suspendisse non ante commodo, finibus nibh at, sollicitudin felis. Aliquam interdum eros eget tempor porta. Quisque viverra velit magna, ac eleifend mi vehicula nec. Curabitur sollicitudin metus eget odio posuere pulvinar. Nullam vestibulum massa ac dolor mattis pharetra. Vestibulum finibus non massa ut cursus.</p><p style=\"text-align: justify;\">Proin eget ullamcorper elit, ac luctus ex. Pellentesque mattis nibh nec nunc fermentum lobortis. Cras malesuada ipsum eget massa pulvinar euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque, tortor in efficitur semper, tellus lorem blandit augue, sed euismod purus velit nec libero. Pellentesque dictum faucibus augue, ac rutrum velit. Quisque tristique neque sit amet turpis consectetur rutrum. Aliquam ac vulputate mauris.</p>'),
(2, 1, 'ru', 'Авторский курс', '<h4>Образование:</h4>\r\n<p style=\"font-weight: 400;\">Психологическое образование - Институт интенционально-синергетической психологии (ИИСП), специальность психолог арт-терапевт.</p>\r\n<h4>Опыт работы:</h4>\r\n<p style=\"font-weight: 400;\">Закончив по первому образованию Экономический институт с красным дипломом, успешно работала в Банке и доросла в должности от Экономиста до Начальника отдела Ликвидности, получив второе Психологическое образование и оставив финансово-экономическую сферу деятельности, организовала Студию Елены Ишановой «Арт-Горница». Сейчас провожу психологические консультации и тренинги, и эффективно применяю самостоятельно разработанный мной курс «30 встреч» - Путь к поиску Себя!</p>\r\n<h4>О себе:</h4>\r\n<p style=\"font-weight: 400;\">Много путешествую, люблю познавать мир, интересуюсь окружающими меня людьми. Много общаюсь с друзьями, совместно выезжаю на мероприятия – на полеты в компании друзей парапланеристов. Люблю подниматься в горы. Люблю лес и люблю собирать грибы. Люблю смотреть на звезды, на облака и на воду. Люблю дождь, люблю солнце, люблю золотую осень и снег. Люблю рисовать и фотографировать. Люблю дело, которым занимаюсь.</p>\r\n<h4>Каждый клиент – это целая книга!</h4>\r\n<p style=\"font-weight: 400;\">Имея большой опыт взаимодействия с клиентами, внимательно слушаю человека и ответственно подхожу к каждой встрече. Мои профессиональные знания и опыт работы в психологии, а также в экономике помогают мне анализировать и подбирать такие техники арт-терапии, которые оптимально раскрывают тему занятия и отвечают на волнующие вопросы участников курса «30 встреч».</p>'),
(3, 2, 'ru', '30 встреч', '<p>Proin eget ullamcorper elit, ac luctus ex. Suspendisse non ante commodo, finibus nibh at, sollicitudin felis. Pellentesque mattis nibh nec nunc fermentum lobortis. Cras malesuada ipsum eget massa pulvinar euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam pellentesque, tortor in efficitur semper, tellus lorem blandit augue, sed euismod purus velit nec libero. Pellentesque dictum faucibus augue, ac rutrum velit. Quisque tristique neque sit amet turpis consectetur rutrum. Aliquam ac vulputate mauris.<img src=\"/uploads/2019/03/876692-128x72.jpg\" alt=\"876692.jpg\" width=\"238\" height=\"134\" /></p>'),
(4, 3, 'ru', 'Политика конфиденциальности', '<p><span style=\"font-size: 14px;\">Политика конфиденциальности интернет-сайта</span></p>\r\n<p><span style=\"font-size: 14px;\">г. Москва</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">Настоящая Политика конфиденциальности персональных данных (далее - Политика конфиденциальности) действует в отношении всей информации, размещенной на сайте в сети Интернет по адресу: http://artgornica.ru и на всех субдоменах, созданных на его основе (далее - Сайт), которую посетители могут получить о Пользователе во время использования Сайта, его сервисов, программ и продуктов. Использование сервисов Сайта означает безоговорочное согласие Пользователя с настоящей Политикой и указанными в ней условиями обработки его персональной информации; в случае несогласия с этими условиями Пользователь должен воздержаться от использования сервисов.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">1. ОБЩИЕ ПОЛОЖЕНИЯ</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">1.1. В рамках настоящей Политики под персональной информацией Пользователя понимаются:</span></p>\r\n<p><span style=\"font-size: 14px;\">1.1.1. Персональная информация, которую Пользователь предоставляет о себе самостоятельно при регистрации (создании учетной записи) или в процессе использования Сервисов, включая персональные данные Пользователя. Обязательная для предоставления Сервисов информация помечена специальным образом. Иная информация предоставляется Пользователем на его усмотрение.</span></p>\r\n<p><span style=\"font-size: 14px;\">1.1.2. Данные, которые автоматически передаются сервисам Сайта в процессе их использования с помощью установленного на устройстве Пользователя программного обеспечения, в том числе IP-адрес, данные файлов cookie, информация о браузере Пользователя (или иной программе, с помощью которой осуществляется доступ к сервисам), технические характеристики оборудования и программного обеспечения, используемых Пользователем, дата и время доступа к сервисам, адреса запрашиваемых страниц и иная подобная информация.</span></p>\r\n<p><span style=\"font-size: 14px;\">1.1.3. Иная информация о Пользователе, обработка которой предусмотрена Соглашением об использовании Сайта.</span></p>\r\n<p><span style=\"font-size: 14px;\">1.1.4. Настоящая Политика конфиденциальности применяется только к Сайту http://artgornica.ru и ко всем субдоменам, созданным на его основе. Сайт http://artgornica.ru и все субдомены, созданные на его основе, не контролируют и не несут ответственности за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте http://artgornica.ru и на всех субдоменах, созданных на его основе.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">2. ЦЕЛИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ ПОЛЬЗОВАТЕЛЕЙ</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">2.1. Сайт собирает и хранит только ту персональную информацию, которая необходима для предоставления сервисов или исполнения соглашений и договоров с Пользователем, за исключением случаев, когда законодательством предусмотрено обязательное хранение персональной информации в течение определенного законом срока.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2. Персональную информацию Пользователя Сайт обрабатывает в следующих целях:</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.1. Идентификации Пользователя, зарегистрированного на Сайте, для оказания услуг по договору, заключенному с Пользователем.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.2. Предоставления Пользователю доступа к персонализированным ресурсам Сайта.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.3. Установления с Пользователем обратной связи, включая направление уведомлений, запросов, касающихся использования Сайта, оказания услуг, обработку запросов и заявок от Пользователя.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.4. Определения местонахождения Пользователя для обеспечения безопасности, предотвращения мошенничества.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.5. Подтверждения достоверности и полноты персональных данных, предоставленных Пользователем.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.6. Создания учетной записи для персонализации Пользователя при его намерении заключить договор, пользоваться иными услугами Сайта, если Пользователь дал согласие на создание учетной записи.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.7. Уведомления Пользователя Сайта об изменениях, дополнениях оказываемых по договору с Пользователем услуг, в том числе акциях, событиях и специальных предложениях.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.8. Предоставления Пользователю эффективной клиентской и технической поддержки при возникновении проблем, связанных с использованием Сайта.</span></p>\r\n<p><span style=\"font-size: 14px;\">2.2.9. Осуществления рекламной деятельности с согласия Пользователя.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">3. УСЛОВИЯ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ ПОЛЬЗОВАТЕЛЕЙ И ЕЕ ПЕРЕДАЧИ ТРЕТЬИМ ЛИЦАМ</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">3.1. Сайт хранит персональную информацию Пользователей в соответствии с внутренними регламентами конкретных сервисов.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.2. В отношении персональной информации Пользователя сохраняется ее конфиденциальность, кроме случаев добровольного предоставления Пользователем информации о себе для общего доступа неограниченному кругу лиц. При использовании отдельных сервисов Пользователь соглашается с тем, что определенная часть его персональной информации становится общедоступной.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.3. Сайт вправе передать персональную информацию Пользователя третьим лицам в следующих случаях:</span></p>\r\n<p><span style=\"font-size: 14px;\">3.3.1. Пользователь выразил согласие на такие действия.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.3.2. Передача необходима для использования Пользователем определенного сервиса либо для исполнения определенного соглашения или договора с Пользователем.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.3.3. Передача предусмотрена российским или иным применимым законодательством в рамках установленной законодательством процедуры.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.3.4. В случае продажи Сайта к приобретателю переходят все обязательства по соблюдению условий настоящей Политики применительно к полученной им персональной информации.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.4. Обработка персональных данных Пользователя осуществляется без ограничения срока любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств. Обработка персональных данных Пользователей осуществляется в соответствии с Федеральным законом от 27.07.2006 № 152-ФЗ «О персональных данных».</span></p>\r\n<p><span style=\"font-size: 14px;\">3.5. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.6. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.</span></p>\r\n<p><span style=\"font-size: 14px;\">3.7. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">4. ОБЯЗАТЕЛЬСТВА СТОРОН</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">4.1. Пользователь обязан:</span></p>\r\n<p><span style=\"font-size: 14px;\">4.1.1. Предоставить информацию о персональных данных, необходимую для пользования Сайтом.</span></p>\r\n<p><span style=\"font-size: 14px;\">4.1.2. Обновлять, дополнять предоставленную информацию о персональных данных в случае изменения данной информации.</span></p>\r\n<p><span style=\"font-size: 14px;\">4.2. Администрация Сайта обязана:</span></p>\r\n<p><span style=\"font-size: 14px;\">4.2.1. Использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности.</span></p>\r\n<p><span style=\"font-size: 14px;\">4.2.2. Обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением предусмотренных настоящей Политикой конфиденциальности.</span></p>\r\n<p><span style=\"font-size: 14px;\">4.2.3. Принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемому для защиты такого рода информации в существующем деловом обороте.</span></p>\r\n<p><span style=\"font-size: 14px;\">4.2.4. Осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки в случае выявления недостоверных персональных данных или неправомерных действий.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">5. ОТВЕТСТВЕННОСТЬ СТОРОН</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">5.1. Администрация Сайта, не исполнившая свои обязательства, несет ответственность за убытки, понесенные Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации.</span></p>\r\n<p><span style=\"font-size: 14px;\">5.2. В случае утраты или разглашения конфиденциальной информации Администрация Сайта не несет ответственности, если данная конфиденциальная информация:</span></p>\r\n<p><span style=\"font-size: 14px;\">5.2.1. Стала публичным достоянием до ее утраты или разглашения.</span></p>\r\n<p><span style=\"font-size: 14px;\">5.2.2. Была получена от третьей стороны до момента ее получения Администрацией Сайта.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">5.2.3. Была разглашена с согласия Пользователя.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">6. РАЗРЕШЕНИЕ СПОРОВ</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">6.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем Сайта и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о добровольном урегулировании спора).</span></p>\r\n<p><span style=\"font-size: 14px;\">6.2. Получатель претензии в течение 30 (тридцати) календарных дней со дня получения претензии письменно уведомляет заявителя претензии о результатах рассмотрения претензии.</span></p>\r\n<p><span style=\"font-size: 14px;\">6.3. При недостижении соглашения спор будет передан на рассмотрение в суд в соответствии с действующим законодательством Российской Федерации.</span></p>\r\n<p><span style=\"font-size: 14px;\">6.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">7. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ</span></p>\r\n<p><span style=\"font-size: 14px;\"> </span></p>\r\n<p><span style=\"font-size: 14px;\">7.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя.</span></p>\r\n<p><span style=\"font-size: 14px;\">7.2. Новая Политика конфиденциальности вступает в силу с момента ее размещения на Сайте, если иное не предусмотрено новой редакцией Политики конфиденциальности.</span></p>\r\n<p><span style=\"font-size: 14px;\">7.3. Действующая Политика конфиденциальности размещена на странице по адресу: </span>http://artgornica.ru<span style=\"font-size: 14px;\"> и на всех субдоменах, созданных на его основе.</span></p>\r\n<p><span style=\"font-size: 14px;\">7.4. Настоящая Политика конфиденциальности является неотъемлемой частью Соглашения об использовании Сайта, размещенного на странице по адресу: http://artgornica.ru и на всех субдоменах, созданных на его основе. </span></p>\r\n<p> </p>');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_category`
--

CREATE TABLE `portfolio_category` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `slug` varchar(127) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `description` mediumtext,
  `status` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio_category`
--

INSERT INTO `portfolio_category` (`id`, `name`, `slug`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Psychology фото', 'psychology-foto', 0, '', 1, 1548924270, 1552645740),
(4, 'Psychology видео ', 'psychology-video', 1, '', 1, 1548925777, 1552645589),
(6, 'Psychology блог', 'psychology-blog', 2, '', 1, 1549194646, 1552656989),
(7, 'Artterapy фото', 'artterapy-foto', 0, '', 1, 1552597534, 1552645437),
(8, 'Artterapy видео', 'artterapy-video', 1, '', 1, 1552598217, 1552645252),
(9, 'Artterapy блог', 'artterapy-blog', 2, '', 1, 1552643794, 1552657022),
(10, 'Travel Therapy фото', 'travel-therapy-foto', 0, '', 1, 1552645417, 1552646145),
(12, 'Travel Therapy видео', 'travel-therapy-video', 1, '', 1, 1552646213, 1552646221),
(13, 'Travel Therapy блог', 'travel-therapy-blog', 2, '', 1, 1552646270, 1552657057),
(14, 'Встречи и Проекты фото', 'vstrechi-proekt-foto', 0, '', 1, 1552646391, 1552649219),
(15, 'Встречи и Проекты видео', 'vstrechi-proekt-video', 1, '', 1, 1552646511, 1552649197),
(16, 'Встречи и Проекты ссылки', 'vstrechi-proekt-link', 2, '', 1, 1552646566, 1552655968),
(17, 'Искусство прощения фото', 'iskusstvo-prosheniya-foto', 0, '', 1, 1552649999, 1552650006),
(18, 'Искусство прощения видео', 'iskusstvo-prosheniya-video', 1, '', 1, 1552650054, 1552650069),
(19, 'Искусство прощения ссылки', 'iskusstvo-prosheniya-link', 2, '', 1, 1552650162, 1552656274);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_items`
--

CREATE TABLE `portfolio_items` (
  `id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL,
  `thumbnail` varchar(127) NOT NULL,
  `img_alt` varchar(127) DEFAULT NULL,
  `link_href` varchar(127) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `category_id`, `thumbnail`, `img_alt`, `link_href`, `status`, `created_at`, `updated_at`) VALUES
(4, 18, '/uploads/2019/03/55521801-832x468.jpg', NULL, 'https://www.youtube.com/watch?v=SUnK6bixRQI&feature=share', 1, 1552566251, 1552650284),
(5, 4, '/uploads/2019/03/55484871-832x468.jpg', NULL, 'https://www.youtube.com/watch?v=WMP_VAXkB-E&feature=share', 1, 1552571028, 1552575444),
(6, 4, '/uploads/2019/03/270018730-832x468.jpg', NULL, 'https://www.youtube-nocookie.com/embed/qXaobEIpO0w', 1, 1552572136, 1552668083),
(7, 8, '/uploads/2019/03/1-832x468.jpg', NULL, 'https://www.youtube-nocookie.com/embed/AaPfBPui_Sk', 1, 1552596202, 1552667963),
(8, 6, '/uploads/2019/02/58965-832x468.jpg', NULL, 'iskusstvo_malenkih_shagov', 1, 1552597120, 1552644158),
(10, 6, '/uploads/2019/03/55547778-832x468.jpg', NULL, 'magazin_schastya', 1, 1552647151, 1552647151),
(11, 9, '/uploads/2019/03/258974-832x468.jpg', NULL, 'art_objekt', 1, 1552647250, 1552647254),
(12, 9, '/uploads/2019/02/56482397-832x468.jpg', NULL, 'mandala', 1, 1552647500, 1552647505),
(13, 13, '/uploads/2019/02/1234561-832x468.jpg', NULL, 'paraplanerizm', 1, 1552647757, 1552647810),
(15, 6, '/uploads/2019/03/1548542-832x468.jpg', NULL, 'gde_nayti_energiyu', 1, 1552648351, 1552649925),
(16, 19, '/uploads/2019/03/447121501-832x468.jpg', NULL, 'http://artgornica.loc/pro_obidu', 1, 1552650643, 1552650643),
(17, 7, '/uploads/2019/03/2588854-832x468.jpg', NULL, '/uploads/2019/03/2588854-1280x720.jpg', 1, 1552650890, 1552685020),
(18, 16, '/uploads/2019/03/6638847-832x468.jpg', NULL, '/uploads/2019/03/6638847-1280x720.jpg', 1, 1552651055, 1552657149),
(19, 6, '/uploads/2019/02/25986-832x468.jpg', NULL, 'sohranenie_zhiznennoj_energii', 1, 1552651156, 1552651156),
(20, 10, '/uploads/2019/02/1258886-832x468.jpg', NULL, '/uploads/2019/02/1258886-1280x720.jpg', 1, 1552652417, 1552652417),
(21, 16, '/uploads/2019/03/5051458-832x468.jpg', NULL, '/uploads/2019/03/5051458-1280x720.jpg', 1, 1552652559, 1552657122),
(22, 7, '/uploads/2019/03/111477783-832x468.jpg', NULL, '/uploads/2019/03/111477783-1280x720.jpg', 1, 1552652627, 1552652816),
(23, 7, '/uploads/2019/03/2247771001-832x468.jpg', NULL, '/uploads/2019/03/2247771001-1280x720.jpg', 1, 1552652786, 1552652786),
(24, 7, '/uploads/2019/02/101719-832x468.jpg', NULL, '/uploads/2019/02/101719-1280x720.jpg', 1, 1552652907, 1552652907),
(25, 3, '/uploads/2019/03/258951352-832x468.jpg', NULL, '/uploads/2019/03/258951352-1280x720.jpg', 1, 1552652964, 1552653060),
(26, 7, '/uploads/2019/03/2890660-832x468.jpg', NULL, '/uploads/2019/03/2890660-1280x720.jpg', 1, 1552653099, 1552653099),
(27, 6, '/uploads/2019/02/159874523-832x468.jpg', NULL, 'perestat_kontrolirovat', 1, 1552653150, 1552653208),
(28, 17, '/uploads/2019/03/55588834-832x468.jpg', NULL, '/uploads/2019/03/55588834-1280x720.jpg', 1, 1552653255, 1552686478),
(29, 6, '/uploads/2019/02/11125896-832x468.jpg', NULL, '/zdes_seychas', 1, 1552653357, 1552653516),
(30, 6, '/uploads/2019/02/20171075518-832x468.jpg', NULL, 'vremya_dorozhe_deneg', 1, 1552653448, 1552653448),
(31, 19, '/uploads/2019/03/25486887-832x468.jpg', NULL, '/uploads/2019/03/25486887-1280x720.jpg', 1, 1552653586, 1552656071),
(32, 16, '/uploads/2019/02/54448999-832x468.jpeg', NULL, '/uploads/2019/02/54448999-1280x720.jpeg', 1, 1552653727, 1552656035),
(33, 7, '/uploads/2019/03/2018021525-832x468.jpg', NULL, '/uploads/2019/03/2018021525-1280x720.jpg', 1, 1552653777, 1552653777),
(34, 16, '/uploads/2019/03/111400563-832x468.jpg', NULL, '/uploads/2019/03/111400563-1280x720.jpg', 1, 1552653824, 1552655920),
(36, 13, '/uploads/2019/02/1107190652-832x468.jpg', NULL, 'puteshestvovat_zhit_vudovolstvie', 1, 1552654044, 1552654044),
(37, 16, '/uploads/2019/02/15899-832x468.jpg', NULL, '/uploads/2019/02/15899-1280x720.jpg', 1, 1552654137, 1552655894),
(38, 6, '/uploads/2019/02/6512783-832x468.jpg', NULL, 'pozitivnyy_mir', 1, 1552654209, 1552654209),
(39, 7, '/uploads/2019/03/33540808-832x468.jpg', NULL, '/uploads/2019/03/33540808-1280x720.jpg', 1, 1552654360, 1552654360),
(40, 9, '/uploads/2019/03/535287701-832x468.jpg', NULL, 'fotokollazh', 1, 1552654405, 1552659648),
(41, 7, '/uploads/2019/03/2000895-832x468.jpg', NULL, '/uploads/2019/03/2000895-1280x720.jpg', 1, 1552657206, 1552657254),
(43, 6, '/uploads/2019/02/56897423-832x468.jpg', NULL, 'otnosites_kdengam', 1, 1552657466, 1552657466),
(44, 12, '/uploads/2019/03/250014730-832x468.jpg', NULL, 'https://www.youtube.com/watch?v=oiZgSphH2fM&t=27s', 1, 1552657944, 1552659023),
(45, 19, '/uploads/2019/03/258479-832x468.jpg', NULL, 'dushevnyj_doktor', 1, 1552659097, 1552659228),
(46, 7, '/uploads/2019/03/259847-832x468.jpg', NULL, '/uploads/2019/03/259847-1280x720.jpg', 1, 1552659282, 1552686526),
(47, 16, '/uploads/2019/03/201555889-832x468.jpg', NULL, '/uploads/2019/03/201555889-1280x720.jpg', 1, 1552659397, 1552659397),
(48, 7, '/uploads/2019/03/5890658-832x468.jpg', NULL, '/uploads/2019/03/5890658-1280x720.jpg', 1, 1552659438, 1552659438),
(49, 6, '/uploads/2019/02/2569413-832x468.jpg', NULL, 'schastliv_narabote', 1, 1552659534, 1552659534),
(50, 16, '/uploads/2019/03/25897-832x468.jpg', NULL, '/uploads/2019/03/25897-1280x720.jpg', 1, 1552659731, 1552659731),
(51, 16, '/uploads/2019/02/100210933-832x468.jpg', NULL, '/uploads/2019/02/100210933-1280x720.jpg', 1, 1552659776, 1552659776),
(52, 19, '/uploads/2019/02/555444333-832x468.jpg', NULL, '/uploads/2019/02/555444333-1280x720.jpg', 1, 1552660014, 1552660050),
(53, 7, '/uploads/2019/02/8798703-832x468.jpg', NULL, '/uploads/2019/02/8798703-1280x720.jpg', 1, 1552660127, 1552660127),
(54, 7, '/uploads/2019/03/img0508-832x468.jpg', NULL, '/uploads/2019/03/img0508-1280x720.jpg', 1, 1552660206, 1552685334),
(55, 10, '/uploads/2019/02/1107190644-832x468.jpg', NULL, '/uploads/2019/02/1107190644-1280x720.jpg', 1, 1552660322, 1552660422),
(56, 6, '/uploads/2019/02/24536829-832x468.jpg', NULL, 'lyubov_klyudyam', 1, 1552660512, 1552660512),
(57, 7, '/uploads/2019/03/22584001-832x468.jpg', NULL, '/uploads/2019/03/22584001-1280x720.jpg', 1, 1552660608, 1552660608),
(58, 10, '/uploads/2019/03/259936-832x468.jpg', NULL, '/uploads/2019/03/259936-1280x720.jpg', 1, 1552660702, 1552660702),
(59, 16, '/uploads/2019/02/2255886633-832x468.jpg', NULL, '/uploads/2019/02/2255886633-1280x720.jpg', 1, 1552660940, 1552660940),
(60, 7, '/uploads/2019/03/33500087-832x468.jpg', NULL, '/uploads/2019/03/33500087-1280x720.jpg', 1, 1552660996, 1552661005),
(61, 7, '/uploads/2019/03/258971-832x468.jpg', NULL, '/uploads/2019/03/258971-1280x720.jpg', 1, 1552661101, 1552661101),
(62, 6, '/uploads/2019/02/2983-832x468.jpg', NULL, 'skazka_poteryannom_vremeni', 1, 1552661177, 1552661177),
(63, 7, '/uploads/2019/03/2017021-832x468.jpg', NULL, '/uploads/2019/03/2017021-1280x720.jpg', 1, 1552661245, 1552661245),
(64, 10, '/uploads/2019/02/1107190646-832x468.jpg', NULL, '/uploads/2019/02/1107190646-1280x720.jpg', 1, 1552661302, 1552661302),
(65, 6, '/uploads/2019/02/568923547-832x468.jpg', NULL, 'mysl_rech', 1, 1552661384, 1552661384),
(66, 7, '/uploads/2019/03/2589436-832x468.jpg', NULL, '/uploads/2019/03/2589436-1280x720.jpg', 1, 1552661428, 1552661464),
(67, 8, '/uploads/2019/03/480371340-832x468.jpg', NULL, '/uploads/2019/03/480371340-1280x720.jpg', 1, 1552661509, 1552662182),
(68, 9, '/uploads/2019/02/113012-832x468.jpg', NULL, 'risunki_iz_peska', 1, 1552661953, 1552661958),
(69, 6, '/uploads/2019/02/work-hobbies-832x468.jpg', NULL, 'rabota_lyubimoe_uvlechenie', 1, 1552662040, 1552662040),
(70, 7, '/uploads/2019/03/2499963-832x468.jpg', NULL, '/uploads/2019/03/2499963-1280x720.jpg', 1, 1552662081, 1552662081),
(71, 16, '/uploads/2019/03/2585852-832x468.jpg', NULL, '/uploads/2019/03/2585852-1280x720.jpg', 1, 1552662125, 1552662125),
(72, 7, '/uploads/2019/03/25845458-832x468.jpg', NULL, '/uploads/2019/03/25845458-1280x720.jpg', 1, 1552662273, 1552684868),
(73, 14, '/uploads/2019/03/30850651-832x468.jpg', NULL, '/uploads/2019/03/30850651-1280x720.jpg', 1, 1552662360, 1552662360),
(74, 6, '/uploads/2019/02/78563298-832x468.jpg', NULL, 'ochischenie_prostranstva', 1, 1552662447, 1552662447),
(75, 19, '/uploads/2019/03/787854201-832x468.jpg', NULL, 'molitva_prosheniya', 1, 1552662496, 1552662573),
(76, 7, '/uploads/2019/03/2599777-832x468.jpg', NULL, '/uploads/2019/03/2599777-1280x720.jpg', 1, 1552662617, 1552663425),
(77, 7, '/uploads/2019/03/2138954-832x468.jpg', NULL, '/uploads/2019/03/2138954-1280x720.jpg', 1, 1552662685, 1552662685),
(78, 16, '/uploads/2019/02/4398616-832x468.jpg', NULL, '/uploads/2019/02/4398616-1280x720.jpg', 1, 1552662730, 1552662730),
(79, 6, '/uploads/2019/02/23598-832x468.jpg', NULL, 'schastlivym_megapolise', 1, 1552662805, 1552662805),
(80, 6, '/uploads/2019/02/542983-832x468.jpg', NULL, 'khochesh_byt_khoroshim', 1, 1552663381, 1552663381),
(81, 7, '/uploads/2019/03/589655-832x468.jpg', NULL, '/uploads/2019/03/589655-1280x720.jpg', 1, 1552663474, 1552663474),
(82, 9, '/uploads/2019/03/255889-832x468.jpg', NULL, 'imidzhterapiya', 1, 1552663582, 1552663582),
(83, 16, '/uploads/2019/03/2589977-832x468.jpg', NULL, '/uploads/2019/03/2589977-1280x720.jpg', 1, 1552663661, 1552663723),
(84, 14, '/uploads/2019/03/5548787-832x468.jpg', NULL, '/uploads/2019/03/5548787-1280x720.jpg', 1, 1552663759, 1552663759),
(85, 10, '/uploads/2019/02/4562385-832x468.jpg', NULL, '/uploads/2019/02/4562385-1280x720.jpg', 1, 1552663831, 1552663831),
(86, 6, '/uploads/2019/02/259874-832x468.jpg', NULL, 'ybiraem_buduschee', 1, 1552664579, 1552664579),
(87, 7, '/uploads/2019/03/53338777-832x468.jpg', NULL, '/uploads/2019/03/53338777-1280x720.jpg', 1, 1552664677, 1552664677),
(88, 14, '/uploads/2019/03/25845633-832x468.jpg', NULL, '/uploads/2019/03/25845633-1280x720.jpg', 1, 1552664743, 1552664743),
(89, 16, '/uploads/2019/02/1482222-832x468.jpg', NULL, '/uploads/2019/02/1482222-1280x720.jpg', 1, 1552664779, 1552664779),
(90, 7, '/uploads/2019/03/589764-832x468.jpg', NULL, '/uploads/2019/03/589764-1280x720.jpg', 1, 1552664824, 1552664824),
(91, 14, '/uploads/2019/03/13013045-832x468.jpg', NULL, '/uploads/2019/03/13013045-1280x720.jpg', 1, 1552664888, 1552664929),
(92, 16, '/uploads/2019/02/445598237-832x468.jpg', NULL, '/uploads/2019/02/445598237-1280x720.jpg', 1, 1552664984, 1552665053),
(94, 14, '/uploads/2019/03/2584447-832x468.jpg', NULL, '/uploads/2019/03/2584447-1280x720.jpg', 1, 1552665232, 1552665696),
(95, 6, '/uploads/2019/02/56238456-832x468.jpg', NULL, '/tvorim_blagopoluchie', 1, 1552665277, 1552684745),
(96, 10, '/uploads/2019/02/img0120-832x468.jpg', NULL, '/uploads/2019/02/img0120-1280x720.jpg', 1, 1552665360, 1552666970),
(98, 7, '/uploads/2019/03/92000148-832x468.jpg', NULL, '/uploads/2019/03/92000148-1280x720.jpg', 1, 1552666115, 1552666115),
(99, 7, '/uploads/2019/03/2589366-832x468.jpg', NULL, '/uploads/2019/03/2589366-1280x720.jpg', 1, 1552666182, 1552666182),
(100, 16, '/uploads/2019/03/928308-832x468.jpg', NULL, '/uploads/2019/03/928308-1280x720.jpg', 1, 1552666328, 1552666328),
(101, 7, '/uploads/2019/03/1805939-832x468.jpg', NULL, '/uploads/2019/03/1805939-1280x720.jpg', 1, 1552666369, 1552666369),
(102, 7, '/uploads/2019/02/1101018-832x468.jpg', NULL, '/uploads/2019/02/1101018-1280x720.jpg', 1, 1552666431, 1552666431),
(103, 10, '/uploads/2019/02/02584444-832x468.jpg', NULL, '/uploads/2019/02/02584444-1280x720.jpg', 1, 1552666471, 1552666471),
(104, 7, '/uploads/2019/03/5870659-832x468.jpg', NULL, '/uploads/2019/03/5870659-1280x720.jpg', 1, 1552666567, 1552666567),
(105, 6, '/uploads/2019/02/56284236-832x468.jpg', NULL, 'smenit_professiyu', 1, 1552666623, 1552666623),
(106, 7, '/uploads/2019/03/img0665-832x468.jpg', NULL, '/uploads/2019/03/img0665-1280x720.jpg', 1, 1552666672, 1552666672),
(107, 7, '/uploads/2019/03/258947-832x468.jpg', NULL, '/uploads/2019/03/258947-1280x720.jpg', 1, 1552666713, 1552666807),
(108, 16, '/uploads/2019/03/25489963-832x468.jpg', NULL, '/uploads/2019/03/25489963-1280x720.jpg', 1, 1552666843, 1552666843),
(111, 14, '/uploads/2019/03/3578547-832x468.jpg', NULL, '/uploads/2019/03/3578547-1280x720.jpg', 1, 1552667026, 1552732825),
(112, 7, '/uploads/2019/03/2590468-832x468.jpg', NULL, '/uploads/2019/03/2590468-1280x720.jpg', 1, 1552667093, 1552667093),
(113, 14, '/uploads/2019/03/2885521-832x468.jpg', NULL, '/uploads/2019/03/2885521-1280x720.jpg', 1, 1552667141, 1552667141),
(114, 13, '/uploads/2019/02/1234501-832x468.jpg', NULL, 'vdokhnovlyaet_napolnyaet_energiey', 1, 1552667185, 1552667185),
(115, 16, '/uploads/2019/03/2003687-832x468.jpg', NULL, '/uploads/2019/03/2003687-1280x720.jpg', 1, 1552667244, 1552667244),
(116, 10, '/uploads/2019/02/2258960-832x468.jpg', NULL, '/uploads/2019/02/2258960-1280x720.jpg', 1, 1552667291, 1552667291),
(117, 7, '/uploads/2019/03/99851114-832x468.jpg', NULL, '/uploads/2019/03/99851114-1280x720.jpg', 1, 1552667358, 1552667358),
(118, 7, '/uploads/2019/02/3101018-832x468.jpg', NULL, '/uploads/2019/02/3101018-1280x720.jpg', 1, 1552667427, 1552667557),
(119, 10, '/uploads/2019/02/124599-832x468.jpg', NULL, '/uploads/2019/02/124599-1280x720.jpg', 1, 1552667599, 1552667599),
(120, 16, '/uploads/2019/03/2000136-832x468.jpg', NULL, '/uploads/2019/03/2000136-1280x720.jpg', 1, 1552667659, 1552668284),
(121, 16, '/uploads/2019/03/258946-832x468.jpg', NULL, '/uploads/2019/03/258946-1280x720.jpg', 1, 1552668317, 1552668317),
(122, 6, '/uploads/2019/02/25894563-832x468.jpg', NULL, 'schaste_est', 1, 1552668436, 1552684964),
(123, 7, '/uploads/2019/03/55544422-832x468.jpg', NULL, '/uploads/2019/03/55544422-1280x720.jpg', 1, 1552668515, 1552668515),
(124, 7, '/uploads/2019/03/33480054-832x468.jpg', NULL, '/uploads/2019/03/33480054-1280x720.jpg', 1, 1552668578, 1552668578),
(125, 14, '/uploads/2019/03/1598516782-832x468.jpg', NULL, '/uploads/2019/03/1598516782-1280x720.jpg', 1, 1552668651, 1552668651),
(126, 7, '/uploads/2019/03/5548333-832x468.jpg', NULL, '/uploads/2019/03/5548333-1280x720.jpg', 1, 1552668687, 1552668717),
(127, 10, '/uploads/2019/02/3-832x468.jpg', NULL, '/uploads/2019/02/3-1280x720.jpg', 1, 1552668798, 1552668798),
(128, 7, '/uploads/2019/03/37000408-832x468.jpg', NULL, '/uploads/2019/03/37000408-1280x720.jpg', 1, 1552668830, 1552668830),
(129, 14, '/uploads/2019/03/224887-832x468.jpg', NULL, '/uploads/2019/03/224887-1280x720.jpg', 1, 1552668865, 1552684184),
(130, 10, '/uploads/2019/02/124593-832x468.jpg', NULL, '/uploads/2019/02/124593-1280x720.jpg', 1, 1552668917, 1552668917),
(131, 14, '/uploads/2019/03/5689994-832x468.jpg', NULL, '/uploads/2019/03/5689994-1280x720.jpg', 1, 1552668956, 1552668990),
(132, 7, '/uploads/2019/03/532500814-832x468.jpg', NULL, '/uploads/2019/03/532500814-1280x720.jpg', 1, 1552669040, 1552672720),
(133, 10, '/uploads/2019/02/1107190686-832x468.jpg', NULL, '/uploads/2019/02/1107190686-1280x720.jpg', 1, 1552669081, 1552669081),
(134, 14, '/uploads/2019/03/wp20160731103135pro-832x468.jpg', NULL, '/uploads/2019/03/wp20160731103135pro-1280x720.jpg', 1, 1552669125, 1552669125),
(135, 7, '/uploads/2019/03/8529632-832x468.jpg', NULL, '/uploads/2019/03/8529632-1280x720.jpg', 1, 1552669203, 1552669203),
(137, 16, '/uploads/2019/03/maxresdefault-832x468.jpg', NULL, '/uploads/2019/03/maxresdefault-1280x720.jpg', 1, 1552669325, 1552669325),
(139, 7, '/uploads/2019/03/4555598-832x468.jpg', NULL, '/uploads/2019/03/4555598-1280x720.jpg', 1, 1552669514, 1552669514),
(140, 10, '/uploads/2019/02/1107190717-832x468.jpg', NULL, '/uploads/2019/02/1107190717-1280x720.jpg', 1, 1552669564, 1552669564),
(141, 14, '/uploads/2019/03/154524983-832x468.jpg', NULL, '/uploads/2019/03/154524983-1280x720.jpg', 1, 1552669603, 1552669603),
(142, 7, '/uploads/2019/03/2589657-832x468.jpg', NULL, '/uploads/2019/03/2589657-1280x720.jpg', 1, 1552669633, 1552669633),
(144, 7, '/uploads/2019/02/114157-832x468.jpg', NULL, '/uploads/2019/02/114157-1280x720.jpg', 1, 1552669764, 1552669764),
(145, 10, '/uploads/2019/02/1107190628-832x468.jpg', NULL, '/uploads/2019/02/1107190628-1280x720.jpg', 1, 1552669822, 1552669822),
(146, 7, '/uploads/2019/03/253894-832x468.jpg', NULL, '/uploads/2019/03/253894-1280x720.jpg', 1, 1552669858, 1552670529),
(147, 16, '/uploads/2019/03/598746-832x468.jpg', NULL, '/uploads/2019/03/598746-1280x720.jpg', 1, 1552669901, 1552669901),
(148, 16, '/uploads/2019/03/55000298-832x468.jpg', NULL, '/uploads/2019/03/55000298-1280x720.jpg', 1, 1552669937, 1552669937),
(149, 14, '/uploads/2019/03/258964-832x468.jpg', NULL, '/uploads/2019/03/258964-1280x720.jpg', 1, 1552670026, 1552684830),
(150, 10, '/uploads/2019/02/7856292-832x468.jpg', NULL, '/uploads/2019/02/7856292-1280x720.jpg', 1, 1552670079, 1552670079),
(152, 14, '/uploads/2019/03/12121548-832x468.jpg', NULL, '/uploads/2019/03/12121548-1280x720.jpg', 1, 1552670171, 1552732853),
(155, 19, '/uploads/2019/03/300985-832x468.jpg', NULL, 'https://www.youtube-nocookie.com/embed/XQIs0Eno2no', 1, 1552670443, 1552732887),
(158, 14, '/uploads/2019/03/5558477-832x468.jpg', NULL, '/uploads/2019/03/5558477-1280x720.jpg', 1, 1552670777, 1552685472),
(161, 14, '/uploads/2019/03/20185050-832x468.jpg', NULL, '/uploads/2019/03/20185050-1280x720.jpg', 1, 1552683975, 1552683975),
(162, 7, '/uploads/2019/02/33333-832x468.jpg', NULL, '/uploads/2019/02/33333-1280x720.jpg', 1, 1552684059, 1552684059),
(163, 16, '/uploads/2019/03/2588885-832x468.jpg', NULL, '/uploads/2019/03/2588885-1280x720.jpg', 1, 1552684370, 1552684370),
(164, 10, '/uploads/2019/02/1107190642-832x468.jpg', NULL, '/uploads/2019/02/1107190642-1280x720.jpg', 1, 1552684417, 1552684501),
(168, 14, '/uploads/2019/03/2144718-832x468.jpg', NULL, '/uploads/2019/03/2144718-1280x720.jpg', 1, 1552685989, 1552685989);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_items_category`
--

CREATE TABLE `portfolio_items_category` (
  `id` int(8) NOT NULL,
  `items_id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio_items_category`
--

INSERT INTO `portfolio_items_category` (`id`, `items_id`, `category_id`) VALUES
(1, 2, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_menu`
--

CREATE TABLE `portfolio_menu` (
  `id` int(8) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` mediumtext,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(8) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio_menu`
--

INSERT INTO `portfolio_menu` (`id`, `name`, `description`, `status`, `sort`, `created_at`, `updated_at`) VALUES
(2, 'Встречи и Проекты', '', 1, 0, 1548925719, 1552650539),
(5, 'Psychology', '', 1, 0, 1549194416, 1552646703),
(6, 'Занятия Artterapy', '', 1, 0, 1552597341, 1552646657),
(7, 'Travel Therapy', '', 1, 0, 1552643894, 1552646677),
(9, 'Искусство прощения', '', 1, 0, 1552650207, 1552650236);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_menu_category`
--

CREATE TABLE `portfolio_menu_category` (
  `id` int(8) NOT NULL,
  `menu_id` int(8) NOT NULL,
  `category_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `portfolio_menu_category`
--

INSERT INTO `portfolio_menu_category` (`id`, `menu_id`, `category_id`) VALUES
(9, 5, 6),
(12, 6, 7),
(13, 6, 8),
(17, 6, 9),
(18, 7, 10),
(19, 7, 12),
(20, 7, 13),
(21, 5, 3),
(22, 5, 4),
(23, 2, 14),
(24, 2, 15),
(25, 2, 16),
(26, 9, 17),
(27, 9, 18),
(28, 9, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `thumbnail` varchar(255) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'post',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  `main_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `slug`, `category_id`, `status`, `comment_status`, `thumbnail`, `published_at`, `created_at`, `updated_at`, `created_by`, `updated_by`, `revision`, `view`, `layout`, `main_flag`) VALUES
(2, 'risunki_iz_peska', 11, 1, 0, NULL, 1539129600, 1440763228, 1552662325, 2, 2, 13, 'post', 'main', 1),
(3, 'rabota_lyubimoe_uvlechenie', 2, 1, 0, NULL, 1539216000, 1544889352, 1550829151, 2, 2, 10, 'post', 'main', 0),
(4, 'schastlivym_megapolise', 2, 1, 0, NULL, 1539907200, 1544889352, 1550829165, 2, 2, 15, 'post', 'main', 1),
(5, 'schaste_est', 9, 1, 0, NULL, 1540425600, 1440763228, 1550829181, 2, 2, 9, 'post', 'main', 0),
(6, 'mysl_rech', 5, 1, 0, NULL, 1540857600, 1440763228, 1550829194, 2, 2, 2, 'post', 'main', 1),
(7, 'ochischenie_prostranstva', 3, 1, 0, NULL, 1541116800, 1440763228, 1550829212, 2, 2, 8, 'post', 'main', 0),
(8, 'tvorim_blagopoluchie', 2, 1, 0, NULL, 1541548800, 1440763228, 1550829226, 2, 2, 2, 'post', 'main', 0),
(9, 'otnosites_kdengam', 2, 1, 0, NULL, 1541635200, 1440763228, 1550835091, 2, 2, 10, 'post', 'main', 0),
(10, 'smenit_professiyu', 2, 1, 0, NULL, 1541980800, 1544889352, 1550829255, 2, 2, 3, 'post', 'main', 0),
(11, 'schastliv_narabote', 2, 1, 0, NULL, 1542067200, 1544889352, 1550829281, 2, 2, 4, 'post', 'main', 0),
(12, 'khochesh_byt_khoroshim', 6, 1, 0, NULL, 1542153600, 1440763228, 1550829295, 2, 2, 4, 'post', 'main', 0),
(13, 'perestat_kontrolirovat', 6, 1, 0, NULL, 1542672000, 1440763228, 1550829319, 2, 2, 15, 'post', 'main', 0),
(14, 'pozitivnyy_mir', 8, 1, 0, NULL, 1542931200, 1440763228, 1552654275, 2, 2, 34, 'post', 'main', 0),
(15, 'puteshestvovat_zhit_vudovolstvie', 17, 1, 0, NULL, 1545264000, 1440763228, 1550829348, 2, 2, 199, 'post', 'main', 0),
(16, 'vremya_dorozhe_deneg', 4, 1, 0, NULL, 1547596800, 1550763408, 1550772248, 2, 2, 3, 'post', 'main', 0),
(17, 'gde_nayti_energiyu', 3, 1, 0, NULL, 1548288000, 1550825723, 1552339732, 2, 2, 4, 'post', 'main', 0),
(18, 'vybiraem_buduschee', 5, 1, 0, NULL, 1548374400, 1550826764, 1550832036, 2, 2, 3, 'post', 'main', 0),
(19, 'vdokhnovlyaet_napolnyaet_energiey', 17, 1, 0, NULL, 1548460800, 1550827648, 1550830832, 2, 2, 4, 'post', 'main', 0),
(20, 'imidzhterapiya', 19, 1, 0, NULL, 1548460800, 1550830077, 1550941742, 2, 2, 3, 'post', 'main', 0),
(21, 'paraplanerizm', 17, 1, 0, NULL, 1548547200, 1550830930, 1550831416, 2, 2, 4, 'post', 'main', 0),
(22, 'lyubov_klyudyam', 19, 1, 0, NULL, 1548979200, 1550831706, 1550941724, 2, 2, 2, 'post', 'main', 0),
(23, 'fotokollazh', 17, 1, 0, NULL, 1549497600, 1550833518, 1550838060, 2, 2, 6, 'post', 'main', 0),
(24, 'mandala', 8, 1, 0, NULL, 1549497600, 1550834473, 1550834976, 2, 2, 2, 'post', 'main', 0),
(25, 'zdes_seychas', 4, 1, 0, NULL, 1549584000, 1550835766, 1550836282, 2, 2, 4, 'post', 'main', 0),
(26, 'art_objekt', 16, 1, 0, NULL, 1550534400, 1550836617, 1552339078, 2, 2, 5, 'post', 'main', 0),
(27, 'zhizn_puteshestvie', 17, 1, 0, NULL, 1550620800, 1550837498, 1550840276, 2, 2, 4, 'post', 'main', 0),
(28, 'skazka_poteryannom_vremeni', 4, 1, 0, NULL, 1548892800, 1552556474, 1552558810, 2, 2, 7, 'post', 'main', 0),
(29, 'iskusstvo_malenkih_shagov', 4, 1, 0, NULL, 1548633600, 1552557582, 1552582220, 2, 2, 14, 'post', 'main', 0),
(30, 'sohranenie_zhiznennoj_energii', 3, 1, 0, NULL, 1548892800, 1552558729, 1552641844, 2, 2, 5, 'post', 'main', 0),
(31, 'molitva_prosheniya', 18, 1, 0, NULL, 1547942400, 1552560260, 1552581497, 2, 2, 7, 'post', 'main', 0),
(32, 'pro_obidu', 18, 1, 0, NULL, 1547683200, 1552562391, 1552641440, 2, 2, 4, 'post', 'main', 0),
(33, 'dushevnyj_doktor', 18, 1, 0, NULL, 1547683200, 1552576347, 1552641420, 2, 2, 16, 'post', 'main', 0),
(34, 'magazin_schastya', 9, 1, 0, NULL, 1542672000, 1552638956, 1552641369, 2, 2, 6, 'post', 'main', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `left_border` int(11) NOT NULL,
  `right_border` int(11) NOT NULL,
  `depth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `visible`, `created_at`, `updated_at`, `created_by`, `updated_by`, `left_border`, `right_border`, `depth`) VALUES
(1, 'root', 0, 1538934053, 1545127573, NULL, 1, 1, 26, 0),
(2, 'celi_samorealizacia', 1, 1538934056, 1550604759, 1, 2, 4, 5, 1),
(3, 'resursy_motivatsiya', 1, 1544781484, 1551350887, 1, 2, 6, 7, 1),
(4, 'momenty_vremeni', 0, 1545053817, 1550604724, 1, 2, 8, 9, 1),
(5, 'mysli_emotsii', 0, 1550604077, 1550604370, 2, 2, 16, 17, 1),
(6, 'obschestvo_miniatyure', 0, 1550604652, 1551427407, 2, 2, 10, 11, 1),
(8, 'unikalnyy_vnutrenniy_mir', 0, 1550605001, 1550605001, 2, 2, 14, 15, 1),
(9, 'kak_stat_schastlivym', 0, 1550605089, 1550605089, 2, 2, 2, 3, 1),
(11, 'mir_detstva', 0, 1550605771, 1551427446, 2, 2, 12, 13, 1),
(16, 'artterapiya_21vek', 0, 1550607322, 1550607322, 2, 2, 22, 23, 1),
(17, 'travel_therapy', 0, 1550655363, 1550655363, 2, 2, 24, 25, 1),
(18, 'iskusstvo_proscheniya', 0, 1550941331, 1550941331, 2, 2, 18, 19, 1),
(19, 'muzhchina_zhenschina', 0, 1550941578, 1550941578, 2, 2, 20, 21, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `language`, `title`, `description`) VALUES
(2, 2, 'ru', 'Цели и Самореализация', ''),
(3, 3, 'ru', 'Ресурсы и Мотивация', ''),
(4, 4, 'ru', 'Моменты времени', ''),
(5, 1, 'ru', 'Корень', ''),
(6, 5, 'ru', 'Мысли и Эмоции', ''),
(7, 6, 'ru', 'Общество в миниатюре', ''),
(9, 8, 'ru', 'Уникальный внутренний мир', ''),
(10, 9, 'ru', 'Как стать счастливым', ''),
(12, 11, 'ru', 'Мир детства', ''),
(17, 16, 'ru', 'Арт-терапия 21 век', ''),
(18, 17, 'ru', 'Travel Therapy ', ''),
(19, 18, 'ru', 'Искусство прощения', ''),
(20, 19, 'ru', 'Психология М & Ж', '');

-- --------------------------------------------------------

--
-- Структура таблицы `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `language`, `title`, `content`) VALUES
(4, 2, 'ru', 'Рисунки из песка на морском берегу', '<p>Вы забыли, когда последний раз смеялись? Как вернуть привычку быть счастливым как в детстве? «Рисование песком» - техника арт-терапии, направленная на воспоминания мира детства и нахождения вдохновения  и радости, того что забыто и так не хватает. Кто из нас в детстве не играл в песочнице, не строил замки на морском берегу?</p>\r\n<p>Морские волны накатывают, смывают наши строения, а мы продолжаем строить вновь и вновь. Помните ощущение миллиардов песчинок на детских пальчиках? Помните как прятались в песок целиком и лишь голова оставалась на поверхности? А следы на песке, которые так быстро смывает морская волна? А чувство необыкновенного вдохновения после соприкосновения с песком? Думается, каждый ответит, что все это ему знакомо близко, но иногда неизмеримо далеко в прошлом.</p>\r\n<p>Песок — это известный естественный материал и неведомая вселенная, из которой можно создавать свой неповторимый мир. Традиционно песок использовался медиками Догонской медицины Мали для предсказания, тибетскими буддийскими монахами для созерцания и духовного посвящения, а также целителями Навахо для исцеления и продвижения равновесия и миропорядка.</p>\r\n<p>Когда можно применить технику «рисования песком» в арт-терапии? С какими проблемами она поможет справиться? – спросите Вы. Ответ - с любыми состояниями. Когда нет решения вопроса, когда внутреннее «солнышко» в душе почему-то не сияет, когда страшно, когда нет уверенности в себе или ситуации, когда просто хочется помечтать, отдохнуть, забыть или с благодарностью вспомнить.</p>\r\n<p>Вы сможете вернуть себе те самые первые, а потому бесценно прекрасные мгновения чистой радости.</p>'),
(5, 3, 'ru', 'Работа и любимое увлечение, как совместить?', '<p>Вы давно мечтаете совместить работу с любимым увлечением. Вы хотите заниматься тем, что доставляет удовольствие и получать за это деньги, но Вы не решаетесь сделать шаг навстречу своим желаниям и мечтам?</p>\r\n<p>ВОПЛОТИТЕ СВОИ МЕЧТЫ В РЕАЛЬНОСТЬ СЕЙЧАС!</p>\r\n<p>Мы находимся в состоянии между тем, кто мы есть и тем, кем мы может стать. Как построить мост, который соединит эти две стороны? Освободив силу нашей творческой жизненной силы, мы сможем это сделать. Как раскрыть наш творческий потенциал? Любой проект начинается с мечты и перемен. Но чаще всего мы не решаемся на перемены. Как изменить это? </p>\r\n<ul>\r\n<li>Начните радоваться и получать удовольствие от каждого мгновения жизни.</li>\r\n<li>Составьте список дел, от которых вы получаете удовольствие, список своих желаний.</li>\r\n<li>Мечтайте, стройте планы, ставьте цели. Чем больше и значительнее они будут, тем ярче станет Ваша жизнь!</li>\r\n<li>Перестаньте бояться, что у Вас ничего не получится, что Вас кто-то осудит, не сравнивайте себя с другими и не думайте, что кто-то талантливее чем вы. Начните действовать!</li>\r\n</ul>\r\n<p>Ответьте сейчас себе на главный вопрос: Если бы у меня было абсолютно все и не было бы надобности зарабатывать деньги, чем бы я занимался?</p>'),
(6, 4, 'ru', 'Как стать счастливым в Мегаполисе?', '<p>Вы, наверное, заметили такую закономерность, что большинство офисов крупных компаний находятся в центре Москвы, а доступное жилье на окраине мегаполиса. Редко можно подгадать и выгодную должность и расположение офиса рядом с домом. А когда уровень дохода в Москве увеличивается, мы стремимся пересесть из метро на машину. Частенько, чтобы поднять свой статус мы сначала оформляем кредит на машину, а потом и на квартиру. В результате мы попадаем в финансовую зависимость от своей работы.</p>\r\n<p>Драгоценное время мы тратим на дорогу, на пробки от 2х до 4х часов, постоянно недосыпаем, и времени не хватает ни на себя и на общение с семьей.</p>\r\n<p>ТАКОЙ РИТМ ЖИЗНИ ПРИВОДИТ К ПОТЕРЕ ЖИЗНЕННОЙ ЭНЕРГИИ! </p>\r\n<p>Но ведь проблемы большого города, пробки на дорогах были и раньше, сейчас по дорогам Москвы едут машины, а раньше ходили повозки с лошадьми переполненные трамваи. О жизни Москвы и москвичей очень хорошо описал в своей книге Владимир Гиляровский. Несмотря на все трудности жизни в мегаполисе, можно оставаться счастливыми и успешными! Жизнь нам дает такой шанс, возможность выбора, но иногда у нас не хватает сил и решительности сделать этот выбор.</p>\r\n<p>И возникает вопрос: КАК ИЗМЕНИТЬ ОБСТОЯТЕЛЬСТВА? КАК ЗАНИМАТЬСЯ ТЕМ, ЧТО ДОСТАВЛЯЕТ УДОВОЛЬСТВИЕ И ПРИ ЭТОМ ЗАРАБАТЫВАТЬ?</p>\r\n<p>Вы можете развить свой талант и стать востребованным в условиях конкурентных позиций на рынке труда, к сотрудничеству с Вами будет стремиться любой работодатель. Вы будете заниматься любимым делом и легко повысите свой доход, сможете жить в любой части города, сохраняя время и силы на собственное развитие. Для этого Вам потребуется: пересмотреть кардинально свое время, свою жизненную позицию, отношение к людям, познать свой уникальный внутренний мир, и наполнять себя - каждый свой день радостью и благодарностью.</p>\r\n<p>Вы можете открыть свое дело рядом с домом и заняться собой, реализовать свои намерения и мечты. Здесь очень важна вера в себя, в свои силы, важен настрой на успех и  желание постоянно развиваться, презентовать себя или свою деятельность.</p>\r\n<p>Важно знать, независимо какой Вы делаете выбор в своей жизни, когда человек счастлив он больше всего ценит:</p>\r\n<ul>\r\n<li>Время, осознанно распределяемое на сон, на отдых, на работу, на общение, на развитие, на мечты!</li>\r\n<li>Внутренний настрой, драйв, вкус к жизни! </li>\r\n</ul>'),
(7, 5, 'ru', 'Счастье есть!', '<p>Каждый человек от рождения наделен определенными способностями и качествами характера, неким стартовым капиталом, состоящим из набора умственных, физических и творческих способностей. Условия для дальнейшего роста даны нам изначально, от рождения. Очень важно развивать эти способности и выбрать правильное направление деятельности в своей жизни. Но выбирая профессию, мы часто ошибаемся, следуя современным и модным направлениям деятельности. Часто мы выбираем специальность исходя из пожеланий родителей, но не по велению своего сердца. Из-за этого не идут дела, не ладится личная жизнь, постепенно нарастает внутренний конфликт между желаемым и действительным. При этом не важно каков социальный статус, семейное положение или положение в обществе. Не развивая своих способностей и наклонностей, мы сами себя лишаем собственного счастья!</p>\r\n<p>Благодаря арт-терапии можно понять чувства и эмоциональные состояния, осознать и преодолеть внутренние конфликты. Только поняв себя и раскрыв свои способности, можно стать по-настоящему счастливым!</p>'),
(8, 6, 'ru', 'Мысль и речь определяет человека', '<p>В мире не существует двух одинаковых людей и речь, тембр голоса у каждого уникален. Особенно важно, как мы говорим, что вкладываем в свою речь. Мир, который мы представляем, является внешним отражением наших собственных мыслей, наших эмоций и переживаний. Позитивные мысли создают положительные переживания, они притягивают благоприятные события и увеличивают нашу энергию, негативные – привлекают события с отрицательной энергией, уменьшая жизненную силу. Что происходит, когда мы позволяем себе непочтительную речь, критикуем, осуждаем, выставляем претензии к кому-то? Древнеиндийская мудрость гласит - «за мыслью следует энергия». Когда мы подумали о ком-то плохо, мы направили негативную энергию, разрушая другого человека. Когда мы обрекли свои мысли в слова, мы еще более стали разрушителями. И в первую очередь мы разрушаем самих себя, так как исходящая негативная энергия притягивает подобную энергию, перекрывая потоки чистой позитивной энергии. В ведической культуре говориться: - «Человек, который сквернословит, быстро лишается всего, чего достиг в духовном и материальном плане». Наиболее успешными являются те люди, которые красиво говорят и умеют следить за своею речью, не говорят лишнего. Такие люди становятся источниками позитивной энергии, с ними приятно общаться и находиться рядом.</p>\r\n<p>Что мешает Вам радоваться своим успехам и успехам другого человека? </p>\r\n<p>Чтобы стать успешными и счастливыми нужно прямо сейчас дать себе обещания:</p>\r\n<ul>\r\n<li>Не думать и не говорить плохо о себе, не жаловаться на свою судьбу!</li>\r\n<li>Не отзываться плохо о других людях!</li>\r\n<li>Не говорить в гневе!</li>\r\n<li>Научиться выдерживать паузу, чтобы эмоции успокоились – «Утро вечера мудренее!»</li>\r\n<li>Искренне радоваться успехам других людей!</li>\r\n<li>Научиться радоваться своим успехам.</li>\r\n</ul>\r\n<p> </p>'),
(9, 7, 'ru', 'Очищение пространства', '<p>Очень часто к психологу обращаются с жалобой на отсутствие свободного времени, на отсутствие радости, что жизнь как будто стала серой и скучной. Но так никогда не бывает, всему есть объяснение!</p>\r\n<ul>\r\n<li>Может пришло время освободить Ваше время для Себя, очистив домашнее и рабочее пространство?</li>\r\n<li>Может быть у Вас скопилось много ненужных вещей и все пространство занято ими, а кажется, что не хватает вещей, денег?</li>\r\n<li>Задумайтесь, давно ли Вы покупали себе новые вещи, даже недорогие, просто новые?</li>\r\n</ul>\r\n<p>Если обратиться к восточным мудростям, то они говорят, что любая вещь имеет свой срок использования и предназначения. Сначала вещь питает человека положительной энергией, забирая отрицательную. Когда образуется хлам ненужных вещей, то вещи начинают разрушать человека, отдавая накопленную негативную энергию, особенно касаемо сломанных, рваных, треснутых вещей.</p>\r\n<p>Когда много ненужных вещей, они просто отвлекают Ваше внимание, загружая разум и мысли. Цепляясь за ненужные вещи, Вы держитесь за устаревшие принципы и идеи, не позволяя себе развиваться и познавать новое. Привычка копить вещи «на всякий случай» настраивает Вас на бедность, так как Вы допускаете, что такой случай когда-нибудь наступит. С другой стороны, если Вы думаете, что у Вас нет вещей, денег, то их и не будет!</p>\r\n<p>Начните прямо сегодня менять свою жизнь!</p>\r\n<p>Окружите себя только любимыми вещами. Очистите свой дом от ненужного и старого. Действуйте маленькими шажками: первый шаг разобрать сегодня один шкафчик или полочку, поблагодарить себя и порадоваться, на следующий день второй шаг и вторая полочка и так далее. Начните управлять своим временем и энергией! И в Ваш дом и Вашу жизнь постепенно вернется радость и счастье!</p>'),
(10, 8, 'ru', 'Творим благополучие!', '<p>Для каждого из нас РАБОТА является источником существования и занимает большую часть нашей жизни. Люди часто испытывают страх потери работы, чувствуют неуверенность, что не смогут найти работу лучше. Помните, что является основной темой Ваших бесед с знакомыми и родными? Что все плохо, вокруг одна безработица. Как часто Вас посещали мысли:</p>\r\n<ul>\r\n<li>«У меня ничего не получится!»</li>\r\n<li>«Это не для меня!»</li>\r\n<li>«Я с этим не справлюсь!»</li>\r\n<li>«Меня туда не возьмут!»</li>\r\n<li>«Меня уволят!»</li>\r\n</ul>\r\n<p>Если постоянно думать об этом и бояться, Вы легко можете заказать себе и безработицу, и бедность. Страх являет главной причиной настроя на бедность, заставляет нервничать, вызывая множество мыслей и эмоций, неосознанно притягивая к себе неприятности в будущем. С одной стороны страх заставляет Вас заботиться о будущем, приобретая профессию, создавая накопления, с другой стороны он же является источником неприятностей. Вы сами выбрали не устаивающую работу и доходы, а теперь не берете на себя ответственность! Признайтесь, что Вы являетесь источником того, что с Вами происходит! Я сам выбрал профессию! Я сам выбрал должность! Я сам выбрал уровень моих доходов! Все зависит только от меня! </p>\r\n<p>ВПУСТИТЕ В СВОЮ ЖИЗНЬ СЧАСТЬЕ! ИЗМЕНИТЕ СВОЮ ЖИЗНЬ!</p>\r\n<p>Если Вы хотите успеха, то приготовьтесь приложить усилия к внутренним изменениям, к открытиям относительно самого себя! Не держите страхи в своей голове! Осознайте, что Ваша Самооценка = (равна) = тем доходам, которые Вы имеете сейчас!</p>'),
(11, 9, 'ru', 'Как Вы относитесь к деньгам?', '<p>Что делать если при занятии любимым делом, своим бизнесом Вы зарабатываете мало, а хочется больше?</p>\r\n<p>Первое что нужно сделать, определить для себя, сколько Вы хотели бы получать за свои услуги, за свой труд, чтобы чувствовать себя комфортно. Нужно, чтобы мысль о деньгах стала для Вас естественной! Удивительным образом Вы начнете получать подсказки и варианты реализации Ваших идей! Далее все зависит от Вас, сумеете ли Вы сделать практические шаги.</p>\r\n<p>Часто внутренним барьером на пути к материальному благополучию являются неосознанные установки, которые мы получили от родителей, знакомых или которые выработали сами. В результате мы принимаем решения в соответствии с этими установками. Какие Ваши внутренние убеждения мешают Вам зарабатывать деньги и быть счастливыми?</p>\r\n<p>Знакомы ли Вам утверждения:</p>\r\n<ul>\r\n<li>«Деньги в жизни - не главное!»</li>\r\n<li>«Не в деньгах счастье!»</li>\r\n<li>«Будь как все!»</li>\r\n<li>«Довольствуйся тем, что есть!»</li>\r\n<li>«Все зло от денег!»</li>\r\n<li>«Деньги – источник зависти!»</li>\r\n<li>«Деньги надо копить, а не тратить!»</li>\r\n<li>«Я не достоин больших денег!»</li>\r\n</ul>\r\n<p>Все внутренние негативные установки необходимо постепенно выявить  и заменить их по смыслу на противоположные позитивные утверждения!</p>\r\n<p>Внутренним барьером на пути к благополучию является также низкая самооценка! Вы хотите зарабатывать больше, а в своем сознании уверены, что недостойны получить то, к чему вроде бы стремитесь! Пока Вы не повысите стоимость своего труда в своем сознании, Вы не заработаете больше!</p>'),
(12, 10, 'ru', 'Мечтаете сменить профессию?', '<p>Вы мечтаете  о творческой деятельности, о профессии художника или Вы мечтаете отрыть свое дело, свой ресторан, а работаете экономистом в офисе. Но Вы ничего не предпринимаете, боитесь сделать выбор и страдаете от внутренних сомнений. Мнение знакомых и близких Вам людей останавливает сделать первый шаг, чтобы начать свое дело. Ваших родных можно понять, они переживают за Вас, из чувства любви и заботы они не поддерживают Вас в новом начинании.</p>\r\n<p>Вы стремитесь к новым вершинам, чтобы вновь получить удовольствие и вдохновение, которое вероятно пропало на существующей работе?</p>\r\n<p>Как только Вы осознаете, что процесс занятия любимым делом Вам приносит удовольствие и радость, Ваше желание заниматься этим станет настолько сильное, что Вас уже не сможет остановить мнение окружающих людей и тогда Вы сможете сделать свои первые шаги к своей мечте.</p>\r\n<p>Задайте себе вопросы:</p>\r\n<ul>\r\n<li>Что я хочу на самом деле?</li>\r\n<li>Важно ли для меня мнение знакомых?</li>\r\n<li>Что меня не устраивает на существующей работе?</li>\r\n<li>Занимаюсь ли я самообразованием сегодня?</li>\r\n</ul>\r\n<p>Только в осознании себя счастливым можно реализовать себя, путем понимания своего внутреннего мира, проработки скрытых эмоциональных переживаний, страхов за прошлое, настоящее и тревоги за будущее.</p>'),
(13, 11, 'ru', 'Я счастлив на своей работе!', '<p>Многие ли из нас могут так сказать? Часто люди жалуются, что работать тяжело, что их не ценят и не повышают в должности! Но кто из этих людей регулярно занимается самообразованием?</p>\r\n<p>Учеными установлено, что образование и обучение чему-то новому, физическая и умственная активность являются инструментом восстановления нервных клеток или «нейрогенезом», что способствует сохранению качества жизни. В процессе занятия любимым делом, независимо от того, работаете ли Вы в офисе или у Вас свое дело, человек, в поиске новых знаний, получает наибольшее удовольствие,  чувство воодушевления и особую радость.Самообразование позволяет ощутить чувство радости и счастья!</p>\r\n<p>Ответьте себе на вопрос: КАК ЧАСТО Я ЗАНИМАЮСЬ САМООБРАЗОВАНИЕМ?</p>\r\n<p>Арт-терапия поможет осознать и преодолеть лень, страхи и сомнения, повысить уверенность в себе, развить креативность!  Вы сможете раскрыть свои творческие способности, развить способность радоваться! И как следствие Вы улучшите свою перспективу на работе, создадите предпосылки к повышению по службе или организации нового проекта! Сделайте шаг к переменам в своей жизни прямо сейчас!</p>'),
(14, 12, 'ru', 'Хочешь быть хорошим!', '<p>В жизни возникают ситуации, когда мы почему-то соглашаемся помочь, но при этом в душе мы не хотим выполнить просьбу или просьба расходится с нашими интересами.</p>\r\n<ul>\r\n<li>Почему нам так сложно сказать слово «нет»?</li>\r\n<li>Почему мы не ценим свое время?</li>\r\n<li>Почему, выполнив просьбу, мы задумываемся о том, насколько нас уважают и ценят другие люди?</li>\r\n<li>Почему для нас важно чувствовать себя востребованным и ценным?</li>\r\n<li>Почему о нас говорят: «Хочет быть Хорошим!»</li>\r\n</ul>\r\n<p>Если мы помогаем бескорыстно, не ожидая что-то взамен, мы получаем наслаждение и удовольствие от самого процесса отдачи, мы испытываем чувство радости и счастья!</p>\r\n<p>Если мы откликаемся на просьбы других людей, ожидая что-то взамен и при этом не ценим свои интересы и свое время, то другие люди замечают в нас эту неуверенность и заниженную самооценку к себе и наше стремление понравится. Так нас обычно эгоистично и используют в своих интересах другие люди.</p>\r\n<p>Помогая вновь и вновь, мы страдаем от непонимания причины отсутствия благодарности и наши действия не вызывают у нас чувства радости, возникает недовольство и претензии к жизни, ощущение что мы чего-то не дополучили.</p>\r\n<p>Это не значит, что нельзя совсем не помогать, можно и нужно помогать ничего не ожидая взамен, просто помочь, просто отдать!</p>\r\n<ul>\r\n<li>Когда мы научимся уважать свои интересы, у нас появится свободное время!</li>\r\n<li>Когда мы научимся уважать себя и других людей -  мир вокруг нас изменится!</li>\r\n<li>Когда мы сможем осознанно, не на эмоциях, не боясь, что подумают другие, сказать «нет», мы станем сильной личностью, с волевым характером активного человека, способного достигать своих целей!</li>\r\n</ul>\r\n<p>Благодаря взаимодействию через практики арт-терапии Вы узнаете: как научиться ценить свое время, как освободиться от негативных переживаний, как повысить самооценку, как достигать целей в согласии с собой и окружающим пространством.</p>'),
(15, 13, 'ru', 'Как перестать контролировать?', '<p>Многие из нас привыкли контролировать себя и своих близких, контролировать каждый шаг. Контроль начинается тогда, когда мы стремимся изменить мир, чтобы он соответствовал нашим желаниям. Контроль - это следствие недоверия к жизни и недоверия к людям. Мы злимся и раздражаемся, испытываем тревогу за ожидаемое событие будущего. В состоянии тревоги, обобщая предыдущий жизненный опыт с потенциальным будущим и пытаясь предугадать будущее событие, мы расходуем свою энергию.</p>\r\n<p>Событие может от нас никак не зависеть и возникает страх от контроля, например, при перелете на самолете. Контроль хорош, когда оберегает, когда необходимо остановиться на дороге перед красным светофором. Обычно мы либо делаем что-то не осознанно, а потом переживаем, выключили ли утюг, свет и закрыли ли дверь, выходя из дома.  Либо по несколько раз проверяем, и все равно переживаем.</p>\r\n<p>ХВАТИТ ПЕРЕЖИВАТЬ И КОНТРОЛИРОВАТЬ!</p>\r\n<p>Давайте начнем жить осознанно прямо сейчас!</p>\r\n<ul>\r\n<li>Говорите то, что хотите донести до человека, направьте свой взгляд и внимание на собеседника, в его глаза!</li>\r\n<li>Перестаньте ожидать, что мир будет жить по Вашим правилам, никто не обязан подчиняться Вашим интересам!</li>\r\n<li>Отпустите негативные мысли, не концентрируйтесь на них, перестаньте искать угрозы, начните замечать радостные моменты и события!</li>\r\n<li>Примиритесь с тем, на что повлиять невозможно, почувствуйте свободу без контроля, начните доверять жизни  и людям с малого, делая маленькие шаги!</li>\r\n<li>Больше отдыхайте, уделяйте себе время, расширьте свои интересы, занимайтесь любимым увлечением!</li>\r\n<li>Делитесь своей любовью и чаще обнимайте своих родных!</li>\r\n</ul>\r\n<p>Ответьте себе на вопрос: Что произойдет, если я перестану контролировать?</p>'),
(16, 14, 'ru', 'Позитивный мир начинается с себя!', '<p>Нам всегда хочется ощущать себя бодрыми, наполненными, все успевать и быть счастливыми! Часто мы сами ускоряем свою жизнь, все время спешим, заполняем свое время различной деятельностью, мы записываемся на множество курсов, активно занимаемся в спортзале, активно стремимся отдохнуть в отпуске и снова выходим на работу. Несмотря на скорость темпа жизни, нам не хватает времени прочувствовать событие, мы не задумываемся, какую проблему решает занятие, мы не успеваем ощутить единство своего внутреннего мира с окружающим миром.</p>\r\n<p>Чтобы ощущать себя счастливым в единстве со своим внутренним миром необходимо изменить свое отношение к жизни, изменить свои ценности!</p>\r\n<p>Для этого необходимо прислушаться к своим мыслям, страхам, обидам, признать их существование, освободить себя от лишних переживаний! Вместо переживаний и тревог за будущее нужно выработать в себе привычку замечать радость в мелочах! Проявлять интерес к жизни, интерес к окружающим людям!</p>'),
(17, 15, 'ru', 'Путешествовать и жить в удовольствие!', '<p>Как часто Вы путешествуете? Вы успеваете почувствовать тот момент, который происходит сейчас? Что наполняет Вас радостью до и во время путешествия?</p>\r\n<p>Часто мы планируем свой отпуск заранее и в ожидании будущего торопим события своей жизни, говоря: «Скорей бы отпуск!» Мы не живем в настоящем моменте, не успеваем почувствовать и ощутить все удовольствие жизни сейчас! Дождавшись отпуска и достигнув цели, мы не радуемся сбывшейся мечте, недостаток положительных эмоций вновь погружает нас в переживания!</p>\r\n<p>Если мы будем обращать внимание на мелочи, на то, что нас окружает, что вдохновляет и восхищает, тогда в наших глазах засияет маленький огонек радости. Путешествуя, мы познаем мир, проявляем интерес к другим людям, мы раскрашиваем свою жизнь разными красками и наполняем себя энергией! После поездки меняются вкусы, привычки, стиль одежды, меняется наш внутренний мир!</p>\r\n<p>Я люблю путешествовать, я встаю пораньше утром и иду фотографировать городок с его сонными, ленивыми песиками, приветствующими редких прохожих. Я наслаждаюсь утренним городом, когда хозяева многочисленных сувенирных лавок только открывают свои витрины, а в кафе выпекают пирожки и сладости к завтраку. Можно ходить по узким улочкам и вдыхать ароматы. Солнце освещает оранжевыми лучами белые строения, а синий от рассветной дымки воздух приобретает теплые оттенки. Счастье – это не конечная остановка, а путь к цели!</p>\r\n<p>Счастье - это наслаждение процессом и получение удовольствия в каждом мгновении жизни!</p>'),
(18, 16, 'ru', 'Время дороже денег!', '<p>МАРК ЛЕВИ в своей книге \"МЕЖДУ НЕБОМ И ЗЕМЛЕЙ\" говорил -представьте, что каждое утро, Вам дают 86400долларов с условием, чтобы Вы все их потратите в течение дня, неиспользованный остаток забирают, когда Вы отправляетесь спать. Такой волшебный банк доступен каждому из нас! Каждое утро мы получаем 86400 секунд! Банк может закрыть счет в любой момент без предупреждения, жизнь может остановиться в любую секунду!</p>\r\n<ul>\r\n<li>Что Вы делаете с 86400секундами?</li>\r\n<li>На что уходит Ваше драгоценное время?</li>\r\n<li>Сколько времени Вы уделяете Себе?</li>\r\n</ul>\r\n<p>ВРЕМЯ дороже денег, время - это сама жизнь! ВРЕМЯ нельзя купить ни за какие деньги! ВРЕМЯ – это самый невосполнимый ресурс! Если Вы потеряете деньги – их можно заработать, если Вы потеряете время – его уже не восполнить. Когда люди неуважительно относятся ко времени, не слышат себя, не заявляют о своей мечте, тогда возникают нереализованные планы и неудовлетворенность своей жизнью. Многие не ценят свое время потому что хотят быть хорошими или им мешает боязнь перемен, критики, собственная лень, пустое и бесцельное хождение по соц.сетям, бездумная пересылка различных сообщений и прочий спам интернета.</p>\r\n<p>Начните уже сейчас изменять свою жизнь!</p>\r\n<p>Каждое утро просыпаясь, начните радоваться жизни! Составьте план действий на день! Попробуйте ввести одну новую привычку, например такую как «делать зарядку по утрам» и дайте ей прижиться 3-7 дней, затем можете внедрять следующую! Если Вам сложно приступить к выполнению большого дела, разделите его на мелкие задачи и поощряйте себя за достижения! Замените утверждения «Я должен» на девиз «Я хочу» или «Я могу». И Вы удивитесь, как изменится Ваш мир!</p>\r\n<p>ЦЕНИТЕ И УВАЖАЙТЕ СВОЕ ВРЕМЯ И ВРЕМЯ ДРУГИХ ЛЮДЕЙ!</p>'),
(19, 17, 'ru', 'Где найти энергию и жизненные силы?', '<p>ЧТО НАПОЛНЯЕТ НАС ЭНЕРГИЕЙ?</p>\r\n<p>Еда, физический труд, спорт, сон, секс, солнце. Когда мы занимаемся любимым делом, мы находимся в потоке, мы наполнены энергией.</p>\r\n<p>КОГДА МЫ ОЩУЩАЕМ СПАД ЭНЕРГИИ?</p>\r\n<p>Недостаток жизненной энергии легко определить по нашему взгляду - он потухший и глаза не горят, когда нам не нравится то, чем мы занимаемся - наша работа. Мы теряем энергию когда много работаем, нерационально распределяем нагрузки и время и не планируем свой отдых.</p>\r\n<p>Застой и неприменение энергии происходит при недостатке умственных, эмоциональных и физических нагрузок, когда мы игнорируем наши желания, интересы и заботу о себе, когда мы чего-то хотим или мечтаем, например, сменить работу или начать заниматься спортом, но не делаем конкретных шагов.</p>\r\n<p>Энергия блокируется и подавляется при отсутствии положительных эмоций, когда длительное время преобладают негативные мысли, чувства и страхи, когда присутствует внутреннее напряжение. В этом случае энергия уходит на переработку наших переживаний.</p>\r\n<p>ГДЕ НАЙТИ ЭНЕРГИЮ?</p>\r\n<ul>\r\n<li>Высвободить, открепить энергию, будучи прежде связанную негативными мыслями! Осознанный настрой на позитивные мысли способен наполнить нас энергией! Когда мы освобождаемся от  переживаний прошлого и от страхов за будущее, мы обретаем способность концентрировать энергию в настоящем моменте!</li>\r\n<li>Реализовывать мечты и желания! Делая конкретные шаги к своей цели, мы можем почувствовать энергию воображаемой реальности!</li>\r\n<li>Стать открытым миру! Проявлять интерес к другим людям, чтобы ощутить позитивную энергию общения, насладиться энергией взаимодействия! Мы стремимся к людям с похожей энергией, с кем нам комфортно! Мы обмениваем энергию своих действий и чувств, объединяем наши энергии, создавая ее еще больше, преумножаем ее!</li>\r\n<li>Иметь интерес или вкус к жизни вообще, ко всей ее красоте!</li>\r\n</ul>'),
(20, 18, 'ru', 'Мы сами выбираем свое будущее!', '<p>Вероятно, Вы слышали такое высказывание – «Наши мысли материальны!» Наша энергия материализуется в событиях нашей жизни! Энергия мыслей и чувств создает образ будущего, который энергией действий воплощается в реальность!</p>\r\n<p>Основным препятствием на пути к материальному благополучию являются страхи и неосознанный заказ себе разного рода неприятностей! Мы транслируем в окружающее пространство множество мыслей и эмоций, в которых записано какие неприятности мы ожидает для себя в будущем. Негативные мысли, как рой большой стаи кружатся у нас в голове: «Я не знаю где взять денег, Я не смогу найти работу, Я не могу создать свой бизнес». Жизнь всегда стремится исполнить наши пожелания, какими бы они странными не были.  При переживании эмоций в организме возникают различные физиологические процессы. Организм постепенно привыкает к ним и возникает потребность в похожих эмоциях. Какими они будут, позитивными или негативными, выбирать Вам! Так каждый из нас выбирает, стакан наполовину полон или наполовину пуст! Наша энергия направляется на то, что мы сознательно или неосознанно выбираем, на что обращаем свое внимание. Мы сами выбираем свое будущее! Мы сами выбираем богатство или бедность, здоровье или болезни!</p>\r\n<p>«Склонность к радости и надежде – истинное счастье, склонность к опасению и к меланхолии – настоящее несчастье!» - так говорил, шотландский философ Дэвид Юм.</p>\r\n<p>Важным препятствием на пути к благополучию может быть непонимание самого себя и своих потребностей! Вы говорите, что Вам нужны деньги, а на самом деле Вам нужно совсем другое: творческое увлечение, развитие своего бизнеса, хорошие отношения в коллективе или счастливая семья!</p>\r\n<p>Какие Ваши ценности? Что Вас вдохновляет?</p>'),
(21, 19, 'ru', 'Что Вас вдохновляет и наполняет энергией?', '<p>У каждого из нас есть любимые увлечения, которые вдохновляют и наполняют энергией! Одним из моих увлечений является разработка маршрутов поездок и путешествия! Перед тем как спланировать очередную поездку я с мужем выбираю страну. Когда совместный выбор сделан, я собираю всю информацию о тех местах, где хочу побывать, изучаю местные сайты. Особенно привлекает информация о маленьких городках. Так однажды наш выбор остановился на юго–востоке Франции в горах Прованса. Чтобы насладиться всеми красотами местности, подышать чистым воздухом Альп и ароматами лаванды лучше путешествовать на авто. Просто захватывает дух прокатиться по серпантину Вердонского каньона с роскошными видами местности.</p>\r\n<p>Как добраться до Прованса? В Ницце арендовать авто, заехать в Cannes на морскую прогулку по Lerins островам. По дороге через Grasse посетить фабрику духов Flagonard с неповторимыми фантазиями запахов!</p>\r\n<p>Что меня особенно впечатлило в Провансе? Местечко MOUSTIERS-SAINTE-MARIE, на мой взгляд, лучшее место для проживания и знакомства с окрестностями Вердонского ущелья. Также стоит посетить расположенные рядом Водопад Sillanc-La-Cascade с бирюзовой водой, Озеро Sainte-Croix-du-Verdon и Лавандовые поля Valensole.</p>\r\n<p>Для тех, кто еще не был в Мустье-Сент-Мари – это отличное место для полетов на параплане, рядом с деревушкой есть место для посадки! Я люблю общаться с увлеченными людьми, проводить время в компании друзей, совместно выезжать на полеты с парапланеристами!</p>\r\n<p>Что Вас увлекает и делает счастливыми?</p>'),
(22, 20, 'ru', 'Что такое Имиджтерапия?', '<p>В жизни нам предоставлено множество ролей, весь мир – театр! Мы выбираем одну роль, один образ себя, выбираем «соответствовать образу». Когда у нас четкое соответствие своему образу, мы закрываем сами себя для изменений, как в своей внешности, так и во внутреннем мире. Мы не впускаем в свою жизнь новое и креативное. Мы не можем избавиться от негативных мыслей и эмоций, потому что закрыли двери для позитивных изменений.</p>\r\n<p>Имидж – это общее впечатление, образ человека, формируемый в сознании окружающих. Он складывается из двух основных компонентов: поведенческого образа, как человек говорит, жестикулирует, двигает мышцы лица, ходит, держит осанку и визуального образа или стиля. Стиль – это наша исключительная внешность: одежда и прическа! Имидж - это наша жизненная позиция, чувство собственного достоинства во всем, как в еде, так и в поступках!</p>\r\n<p>Действие имидж-терапии основано на эффекте мгновенного преображения. Например, в психотерапевтическом театре известного создателя новых методов в арт-терапии Андрея Гнездилова, костюм, как новый имидж, подсказывал человеку его дальнейшее поведение, где участники мини-спектаклей переодевшись, начинали жить жизнью нового образа.</p>\r\n<p>Для нового ощущения себя не годится старый костюм! Найдите свой имидж и стиль, измените себя, свои внутренние ощущения и внешний мир вокруг Вас изменится, в соответствии с Вашим внутренним миром, а это значит:</p>\r\n<ul>\r\n<li>Повышение самооценки и уверенности в себе: «Я знаю, чего хочу и к чему иду и как это делать!»</li>\r\n<li>Доверительные взаимоотношения с окружающими и как следствие новые знакомства, новые интересы и притяжение других людей к себе!</li>\r\n<li>Достижение желаемого результата и целей!</li>\r\n</ul>'),
(23, 21, 'ru', 'Парапланеризм - не просто экстремальный спорт, это...', '<ul>\r\n<li>Один из ресурсов жизненно важной энергии! Это удовольствие и красота жизни, и в тоже время это концентрация и ответственность!</li>\r\n<li>Общение с увлеченными людьми, совместные выезды на полеты и новые знакомства!</li>\r\n<li>Открытие новых мест и новые впечатления!</li>\r\n<li>В полете можно ощутить свободу, насладиться небом, когда ветер дует в лицо и ты летишь навстречу к новым открытиям!</li>\r\n<li>Преодоление себя и своих страхов!</li>\r\n<li>Развитие и движение вперед!</li>\r\n</ul>\r\n<p>Чтобы заниматься этим видом спорта, кроме хорошей физической подготовки необходимо в полете уметь быстро оценить ситуацию для принятия правильного решения. Также пилот должен обладать знаниями в области метеорологии  и других важных дисциплин. Свои профессиональные навыки необходимо постоянно повышать, обучаться, тренироваться, следить за безопасностью и следовательно, развиваться и совершенствоваться. Обучение чему-то новому, физическая и умственная активность являются инструментом восстановления нервных клеток, что способствует улучшению качества жизни!</p>\r\n<p>Большинство людей, независимо в какой стране они проживают, мечтают выезжать в отпуск, а парапланеристы на полеты как минимум 3-4 раза в год. Основные сложности возникают тогда, когда мы пытаемся совместить работу и любимое увлечение. Хотя многим это удается!</p>\r\n<p>Вы хотите заниматься тем, что доставляет удовольствие и получать за это деньги? Вам нужно сделать только первый шаг к своим целям!</p>'),
(24, 22, 'ru', 'Любовь к людям - это один из ресурсов жизненной энергии!', '<p>Любовь самая мощная в мире энергия и она постоянно обновляется. Когда Вы любите, Вы каждый день видите в своём спутнике что-то новое, что восхищает Вас и наполняет энергией. Общаясь, Вы обмениваете энергию Ваших чувств, преумножая её. Проявляя интерес к человеку, Вы наполняете себя позитивной энергией общения. Люди, наполненные жизненной энергией, просто светятся изнутри, ярким пламенем горят их сердца. Они отдают свою любовь миру и получают взамен еще больше любви и счастья, потому что на этот свет словно мотыльки слетаются удача и благополучие.</p>\r\n<p>Когда Вы сознательно отказываетесь от общения с окружающими Вас людьми, у Вас нет исходящего потока любви и входящий поток любви не может проникнуть в Ваше сердце. После причиненных Вам обид Вы защитили свое сердце панцирем так, что ни радость, ни любовь, ни солнце не смогут проникнуть внутрь. Отсутствие любви в Вашей жизни можно заметить даже по выражению лица и нахмуренным бровям, по зажатости Вашего тела и эмоциональному состоянию. Жизнь становится тусклой и теряет смысл, в ней пропадают краски жизни. Не проявляя интереса к другим людям, Вы также не имеете к себе интереса со стороны других людей. Подсознательно люди «считывают» Ваше внутреннее состояние и избегают общения. Когда Вы измените свое отношение к людям, то и окружающий Вас мир изменится.</p>\r\n<p>Как открыть свое серде?</p>\r\n<ul>\r\n<li>Начните выполнять практику «Дарить любовь». Каждому представителю противоположного пола мысленно говорите: «Я люблю этого человека!» И Вы даже не заметите, как Ваше тело начнет изменяться и застывшая «маска осуждения» уйдет с Вашего лица!</li>\r\n<li>Смотрите в глаза человеку, когда разговариваете и даже когда движетесь по эскалатору метро! Глаза, как известно, зеркало души!</li>\r\n<li>Влюбитесь в самого себя – человека, который не боится впускать в свою жизнь перемены! Только любовь изнутри способна растопить эти воздвигнутые стенки вокруг Вашего сердца!</li>\r\n<li>Начните радоваться каждому дню, каждому мгновению Вашей жизни!</li>\r\n</ul>'),
(25, 23, 'ru', 'Фотоколлаж и карта желаний!', '<p>Зимой мы чувствуем усталость, нам не хватает солнца и радости, энергии и жизненных сил. Нам ничего не хочется, и мы не можем приступить к работе и откладываем дела. Нам необходим «дружеский пинок», вдохновение, чтобы наполнить себя энергией и сделать шаг к своей цели. Одним из таких источников энергии может быть фототерапия. Это наши фотографии, которые связаны с какими-то событиями нашей жизни. Чтобы сохранить в своей памяти события из прошлого, где нам было хорошо, мы храним фото, связанные с этими событиями. Фотографии и наши воспоминания с положительными эмоциями могут нам помочь в моменты грусти, чтобы наполнить нас вновь теми позитивными эмоциями и энергией.</p>\r\n<p>Фотографии всегда таят в себе истории, независимо от их художественной ценности. Например, в путешествии можно испытать множество эмоций, все они случаются за короткий промежуток и потому особенно яркие. Вспомните одно из ярких событий своей жизни и просмотрите фотографии, связанные с этим событием. Перенеситесь мысленно в прошлое в тот день или несколько дней своей жизни. Вспомните все те эмоции, чувства, запахи, все-все что Вы ощутили в событиях Вашей жизни в тогда. Опишите, что Вы вспомнили?</p>\r\n<p>Когда я просматриваю свои фотографии, я наполняюсь энергией прошлого. Недавно я вспоминала своё путешествие в Прагу. Вроде все было как будто вчера, светило яркое солнце и «Старый город» с его уютными улочками, великолепными средневековыми башнями, соборами, музеями наполнял мое сердце тихой радостью. Я бродила по улочкам, осматривая достопримечательности, и заходила в магазинчики с местной обувью и сувенирами из стекла. Я поднималась на смотровую площадку Собора Святого Вита, откуда можно увидеть всю красоту «Старого города»  с высоты птичьего полета.</p>\r\n<p>Далее Вы можете составить фотоколлаж из своих фото. Фотоколлаж – это одна из практик Фототерапии. Тему выберите любую: «Я счастлив! Моя мечта! Мои цели на предстоящий год!» Отберите те фотографии, где Вы, Ваши друзья и близкие проживали радостные моменты своей жизни. Разместите эти фотографии на листе бумаги, так как Вам захочется. Можно дополнить фотоколлаж вырезками из журналов. Составляя фотоколлаж, Вы создаете свое визуальное выражение будущего! Посмотрите на готовую картину своего фотоколлажа и опишите, что Вы чувствуете? Хотите ли Вы сказать Себе что-то?</p>\r\n<p>Практики фототерапии помогают:</p>\r\n<ul>\r\n<li>Осознать себя в прошлом, настоящем и будущем времени.</li>\r\n<li>Обрести свое собственное видение мира.</li>\r\n<li>Понять себя, свои желания.</li>\r\n<li>Разобраться во взаимоотношениях с другими людьми.</li>\r\n<li>Осмыслить то, что происходит в жизни.</li>\r\n<li>Создать визуализацию своего будущего.</li>\r\n</ul>\r\n<p>Начните сейчас изменять свою жизнь, сделайте шаг к своим целям! Привнесите удовольствие и радость в свою жизнь!</p>'),
(26, 24, 'ru', 'Что такое Мандала?', '<p>Мандала - с санскрита означает «рисунок в круге». На Тибете создавались Мандалы из миллионов зёрен мраморного цветного песка или крашеного риса, при создании использовали металлические трубочки. Создание такой мандалы — это концентрация энергии и работа с ней. И созданию и разрушению её придавалось огромное значение. Уничтожение мандалы символизирует жизненный цикл, что ничего постоянного в мире нет.  После уничтожения песок становился священным — это позитивная энергия, которой необходимо поделиться со всем миром, верующие с радостью принимали его в дар от монахов.</p>\r\n<p>Мандалы существовали практически у всех народов: в Индии, Китае, Вавилоне, Египте, Южной Америке, у кельтов и славян.  Многие древние охранные амулеты имели форму круга. Вокруг нас везде присутствуют Мандалы - это солнце, цветы, спил дерева или круг на воде от брошенного камня. Яйцо, семя, наша планета круглая и атомы в клетках движутся по своим круговым орбитам.</p>\r\n<p>Как считал известный психолог Карл Юнг, при работе с мандалами, мы можем получить доступ к центру нашей личности, открыть свою уникальность. Мандала - это своеобразная «карта смысла и целей жизни человека». Мандалы относятся к трансперсональному направлению арт-терапии. В жизни такой опыт человек может получать во время медитаций, духовных практик, а также при внезапных переживаниях полноты существования, счастья, восторга, которые случаются в процессе творчества, близости с другим человеком или каких-то потрясений. Такие переживания помогают человеку почувствовать в себе ресурс, потенциал. Дают возможность увидеть трудные ситуации с другой точки зрения и найти им неожиданные решения.</p>\r\n<p>Когда арт-терапевт может использовать мандалы?</p>\r\n<p>Когда Вы не можете понять, что хотите, как поступить дальше. Когда ищете ответ на вопросы: «Кто Я? Что Я хочу? Какое направление мне выбрать?» Использование мандалатерапии на арт-занятиях позволяет Вам осознать свою уникальность и найти новые способы двигаться дальше по своему жизненному пути.</p>'),
(27, 25, 'ru', 'Счастье здесь и сейчас!', '<p>Есть моменты, когда человек ни о чем не думает и не размышляет. Это ощущение счастья, состояние влюбленности, покоя.</p>\r\n<p>В ритме современной жизни мы устремляемся от одной задачи и цели к другой, хотим максимально использовать свое время и стать «продуктивными». Однако, когда мы поглощены этим вихрем - так легко потерять осознание настоящего момента, чтобы потерять смысл и чувство цели и удивиться, как быстро пролетели дни, месяцы и годы.</p>\r\n<p>Например, Вы когда-нибудь замечали, что только развернули плитку шоколада, взяли пару кусочков и вдруг обнаружили, что все закончилось? Вы приходите в пункт назначения только для того, чтобы понять, что Вы не помните, как или зачем туда пришли? Знакомы ли Вам ощущения, только что был понедельник, а уже наступила пятница?</p>\r\n<p>Мы упускаем момент настоящего и наш разум легко отвлекается на мысли.</p>\r\n<p>Мы переживаем за прошлое, пытаемся планировать и контролировать будущее. Слишком много мыслей о прошлом может привести к депрессии и чувству вины. Слишком много размышлений о будущем может привести к чрезмерному беспокойству и тревоге. «Если ты цепляешься за прошлое и думаешь, что это сокровище, конечно, твоему уму захочется переживать его снова и снова в будущем»; «Мы всегда живём в завтра, которое никогда не приходит. То, что приходит, приходит всегда сегодня, а мы продолжаем жертвовать сегодня ради завтра, которого нигде нет». - Ошо</p>\r\n<p>Единственный «контроль», который у нас может быть, - это как вернуть мысли и внимание в настоящий момент. И решать соответственно только то, что происходит или может произойти сейчас, не грузясь проблемами будущего. Мы можем научиться практикам медитации и дыхания, а также практикам на присутствие, применяемые в Арт-терапии.</p>\r\n<p>Практики, направленные на присутствие в моменте «здесь и сейчас» - это практики изотерапии: «Рисуем точками», «Рисунок на воде» и другие. </p>\r\n<p>«У счастья нет завтрашнего дня, у него нет и вчерашнего, оно не помнит прошедшего, не думает о будущем, у него есть настоящее, - и то не день, а мгновение». - Иван Сергеевич Тургенев.</p>\r\n<p>Предлагаю Вам самостоятельно выполнить одну из практик Арт-терапии:</p>\r\n<ul>\r\n<li>Приготовьте лист белой бумаги и мягкие карандаши или пастель.</li>\r\n<li>Включите любую расслабляющую или медитативную музыку.</li>\r\n<li>Поставьте карандаш в центр листа и сосредоточьтесь на проблеме или задаче, которую давно решаете и не можете решить.</li>\r\n<li>Через несколько секунд начните движение рукой, расфокусируйте взгляд и рисуйте.</li>\r\n<li>Свободно водите карандашом, рисуйте столько сколько хотите.</li>\r\n<li>Можно взять второй карандаш и рисовать обеими руками.</li>\r\n<li>Наблюдайте за собой и будьте в процессе. Остановитесь, как только почувствуете, что пора это сделать.</li>\r\n<li>По желанию, дорисуйте рисунок, сделав более проявленным линии или образы.</li>\r\n<li>Почувствуйте и сравните свое состояние до и после выполнения практики.</li>\r\n</ul>\r\n<p>Начните сейчас изменять свою жизнь! Проживайте каждое мгновение, потому что его невозможно повторить!</p>'),
(28, 26, 'ru', 'Рисунок в арт-терапии - это арт-объект!', '<p>Иногда человеку сложно рассказать о своей проблеме психологу и выразить себя исключительно с помощью слов. Арт-терапевт предлагает клиенту нарисовать или изготовить какой-то арт-объект творчества в соответствии с алгоритмом практики.</p>\r\n<p>Арт-объект выступает посредником между внутренним миром клиента и внешней реальностью, позволяет проявить давно забытые чувства и эмоции из бессознательного, все наши прошлые переживания и вытесненные эмоции, травматические события. Проживая вновь весь непрожитый опыт, собранный в бессознательном, мы избегаем повторения старых ошибок, стереотипного поведения и освобождаемся от негативных переживаний.</p>\r\n<p>По результатам творческого процесса клиент создает образ и делится с арт-терапевтом своими ощущениями. Терапия происходит в живом контакте, в диалоге между клиентом и арт-терапевтом. Важна квалификация, опыт и интуиция арт-терапевта, чтобы правильно подобрать практику, цель и задачи которой будут соответствовать решаемой проблеме человека.</p>\r\n<p>Я как психолог и арт-терапевт не использую психодиагностические трактовки образов и не пишу заключение клиенту, а использую те методики и техники арт-терапии, которые поддерживают клиента в том, чтобы он сам интерпретировал созданные им образы. Моя задача как арт-терапевта состоит в том, чтобы почувствовать, какой задать вопрос клиенту и это будет «ювелирный» вопрос. Бывает достаточно одного такого вопроса или нескольких, чтобы человек сам осознал свою проблему, посмотрел на нее другим взглядом, нашел ответ на волнующий вопрос и выстроил путь решения проблемы.</p>\r\n<p>Техники изотерапии и рисование песком позволяют легко освободить образы в арт-объекте и вывести наружу воспоминания. На песке можно рисовать картины, при помощи песка можно разговаривать. Я часто в своей работе прибегаю к помощи песка. Во время игры с песком у человека возникают образы из детства, он мечтает и фантазирует. В процессе есть место и чувствам, грусти, печали или радости. Я использую практику рисование песком как возможность войти в диалог с клиентом.</p>'),
(29, 27, 'ru', 'Жизнь - это путешествие!', '<p>Таллин-Рига. Как просто организовать себе мини-путешествие и получить удовольствие от новых ощущений! Сесть на поезд из Москвы вечером в четверг, поспать в дороге под шум колес поезда и на следующий день приехать в Таллин. Вокзал в Таллине расположен рядом с Историческим центром и недалеко от гостиницы, в которую можно быстро заселится и пойти гулять. Пятница и пол-дня субботы в Вашем свободном распоряжении. А в субботу на автобусе luxexpress можно за 3,5 часа доехать до Риги, причем за совсем небольшие деньги. Там так-же заселившись в отель, отправляешься на прогулку по улочкам старой Риги. Вечером в воскресенье с багажом впечатлений и эмоций возвращаешься в Москву, но уже на другом поезде. Вы спросите, зачем такие дороги, а как же отдых? Отдых необыкновенный получается, без каких-либо планов просто гуляешь по улочкам и время останавливается, принося спокойствие и умиротворение. В центре Старого города располагаются ярмарки, где помимо сувенирной продукции можно купить разные сладости. В Риге случайным образом был выбран отель и он оказался на площади у «Бременских музыкантов». Сначала я наблюдала из окна номера как туристы веселятся, фотографируются на площади и конечно же сама не удержалась и сделала фото с известной всем четверкой музыкантов.</p>\r\n<p>Жизнь – это тоже путешествие! Всем нам знакома фраза «Идти своей дорогой!» Жизнь — это череда бесконечных новых начинаний. Как известно, начало чего-то нового — это всегда конец чего-то старого. Когда начинаешь новое, сожалеешь о завершении старого, и в тоже время боишься начинать новое. Страх перед неизвестностью останавливает нас осуществить свою мечту, открыть свое дело и зарабатывать любимым увлечением.</p>\r\n<p>Как сделать шаг на пути к своей цели? Отправляясь в отпуск, Вы чувствуете, что можете оставить все свои проблемы позади. Начиная новое дело, когда Вы только в начале пути, что Вы чувствуете? Задайте себе вопросы:</p>\r\n<ul>\r\n<li>Какие мои ощущения в начале пути?</li>\r\n<li>Что ожидает меня впереди?</li>\r\n<li>Кого я беру с собой в дорогу?</li>\r\n<li>Что мне нравится?</li>\r\n<li>Что я хочу получить в результате пути?</li>\r\n</ul>');
INSERT INTO `post_lang` (`id`, `post_id`, `language`, `title`, `content`) VALUES
(30, 28, 'ru', 'Сказка о потерянном времени', '<p>Жила-была на белом свете маленькая девочка. С розовыми бантиками на тонких косичках, мячиками, скакалками и красивыми куклами. Жила она вдвоем со своим Временем. Время было теплое и мягкое. Его можно было потрогать руками, обнять и поцеловать. Оно было светлым, пухлым и добрым, и его всегда было много. Так они жили вдвоем, играли, пели, шлепали по лужам босиком, разглядывали птичек, и им было хорошо и весело вместе.<br />Постепенно маленькая девочка выросла, превратилась во взрослую, и ее Время выросло тоже, ведь теперь она многое умела делать сама, не беспокоя и не тревожа других. Она сама распоряжалась собой и своим временем, а Время слушалось свою хозяйку и во всем ей помогало.</p>\r\n<p>Так продолжалось до тех пор, пока к ним в гости не пришла старая подруга девочки. Они обнялись, поцеловались и пошли на кухню. Большие девочки пили чай со сладкими пирожными, ели вкусные конфеты и, разумеется, болтали о всякой всячине, которая может быть интересна только девчонкам. Время за разговорами и сплетнями текло незаметно, оно попросту дремало, развалившись в кресле.</p>\r\n<p>На город опустились сумерки, на улице зажглись фонари, и подруга уже засобиралась домой, как вдруг девочка неожиданно предложила: «А давай, мы завтра пойдем куда-нибудь, может быть в кино?». Тут подруга сделала озабоченное, строгое лицо, вытащила из своей сумочки длинные дамские сигареты, закурила, и, выпустив дым через накрашенные губы, кокетливо произнесла: «Ты знаешь, у меня совершенно нет свободного времени»! Она красиво курила и рассказывала девочке о том, как тяжело ей живется, как трудно ей везде успеть, о том, что вся неделя у нее занята совершенно неотложными делами. Она рассказывала, а девочка, открыв рот, слушала ее, восхищалась и немножко завидовала. Ей казалось, что это так здорово, когда ну буквально ни на что не хватает времени, когда все только и ждут, когда у тебя появится свободная минутка, ведь это означает только одно – что без тебя никак нельзя обойтись на этом свете! Наконец, подруга закончила жаловаться, поднялась из-за стола, и небрежно поправив прическу, направилась к двери. Девочка поплелась следом – она ощущала себя никому ненужной бездельницей. А подруга, одевшись, похлопала по плечу и снисходительно улыбнулась: «Пока, бывай, подружка, будет время – позвоню»! Процокали стремительные каблучки, отшумел уехавший лифт.</p>\r\n<p>Девочка захлопнула дверь и снова прошла на кухню. Там пахло дорогими духами и дымом, на столе стояла недопитая чашка чая и лежала забытая пачка сигарет. Она задумчиво вытащила одну, закурила, и, глядя на себя в зеркало, томно произнесла: «У меня совершенно нет свободного времени…»</p>\r\n<p>Ее Время проснулось и беспокойно зашевелилось в кресле: «Как это нет? Вот оно я, причем совсем свободное!» Но девочка даже не взглянула на него. Целый час она с упоением рассказывала самой себе о делах, которые внезапно придумала. Это было ново, интересно, загадочно и совсем по-взрослому.</p>\r\n<p>Время долго пыталось обратить на себя внимание, дергало девочку за рукав, дуло ей в ухо, скакало перед ней и махало руками, но когда стало ясно, что его просто не видят, или не хотят видеть, оно обиделось: «Раз ей лучше без меня, пусть так и будет!» - решило она и спряталось за шкаф.</p>\r\n<p>Теперь у девочки началась другая жизнь, не похожая на прежнюю – жизнь, без свободного времени. Ей нравилось быть всегда занятой, везде чуть-чуть опаздывать, нетерпеливо притоптывать ножкой в ожидании троллейбуса, ловить заинтересованные взгляды прохожих и при случае рассказывать друзьям о том, как ей всегда не хватает времени, нет сил и времени совершать всякие глупости, ходить по театрам, и встречаться со старыми знакомыми. Она самой себе казалась такой нужной, такой занятой, такой успешной. Ей была приятна сама мысль о том, что без нее не справились бы там, что ее очень ждут здесь, что без нее многие дела были бы не сделаны. И, странное дело, чем больше дел она успевала переделать, тем больше их становилось. Абсолютно все дела казались ей важными и нужными, и не сделать их казалось совершенно невозможным. Они все росли и росли, пока не заняли все свободное пространство вокруг нашей девочки, и по сравнению с ними он опять была такой маленькой и беззащитной. Она уходила из дома рано утром, а приходила поздно вечером, день проходил стремительно, и казалось, сократился ровно наполовину. Ее дом приобрел одинокий и неухоженный вид, а за шкафом, в клубках давнишней пыли сидело ее мягкое, теплое Время и, вздыхая, ждало, когда наступит тот день, когда о нем вспомнят. И такой день наступил! Вернее это был не день, а вечер. Уставшая девочка пришла домой, скинула обувь и села на диван. Она почти уснула, когда нерешенные, запланированные дела и проблемы стали заглядывать ей в лицо, толкать в бок и беспокойными голосами говорить о том, что спать не нужно, что времени на это нет, иначе она ничего не успеет. Девочка открыла глаза, обвела взглядом пыльную комнату и горько-горько заплакала:</p>\r\n<p>- Как я устала! Мне срочно нужно отдохнуть, куда же подевалось мое время? Ведь я же точно помню, что оно было всегда рядом. Всегда… , пока я не стала говорить, что его нет. Может быть, оно обиделось?</p>\r\n<p>Она стала заглядывать во все углы и звать его.</p>\r\n<p>- Время, миленькое, вернись ко мне, я больше никогда тебя не обижу, никогда не скажу, что тебя нет. Я буду тебя любить, беречь и нам опять будет также хорошо, как и прежде.</p>\r\n<p>Тут время высунулось из-за пыльного шкафа:- Я тут, теперь ты меня видишь?</p>\r\n<p>- Вижу, - обрадовалась девочка, конечно, вижу, что теперь-то у меня точно хватит времени попить чаю, принять ванну, посмотреть фильм, почитать книжку, и еще…</p>\r\n<p>- Остановись, перестань тарахтеть, говори медленно и спокойно, а то голова начинает гудеть как медный чайник и даже мне начинает казаться, что на все твои дела меня не хватит. Не планируй сразу много, не придумывай ненужного. Пока пойдем, попьем чайку, а там видно будет. Может тебе просто захочется спать, а может, захочется помолчать и подумать. Я тут, рядом с тобой, у тебя на все есть Время! Меня не надо подгонять, нужно просто жить в согласии с собой, со мной, с теми, кто тебя окружает, и наслаждаться каждой прожитой минутой, ведь из этих минут и состоит твоя жизнь.</p>\r\n<p>Они пили чай с вареньем, болтали обо всем, рассматривали снежинки на окне, которые так и липли к стеклу в надежде, что у кого-нибудь все-таки хватит времени увидеть и оценить их неземную красоту.</p>\r\n<p>Автор Татьяна Ткачева</p>'),
(31, 29, 'ru', 'Искусство маленьких шагов', '<p>МОЛИТВА Антуан де Сент-Экзюпери</p>\r\n<p>Из книги «Citadelle» Saint-Exupéry 1936г., в переводе Марианны Кожевниковой:</p>\r\n<p>«Господи, я прошу не о чудесах и не о миражах, а о силе каждого дня. Научи меня искусству маленьких шагов.</p>\r\n<p>Сделай меня наблюдательным и находчивым, чтобы в пестроте будней вовремя останавливаться на открытиях и опыте, которые меня взволновали.</p>\r\n<p>Научи меня правильно распоряжаться временем моей жизни. Подари мне тонкое чутье, чтобы отличать первостепенное от второстепенного.</p>\r\n<p>Я прошу о силе воздержания и меры, чтобы я по жизни не порхал и не скользил, а разумно планировал течение дня, мог бы видеть вершины и дали, и хоть иногда находил бы время для наслаждения искусством.</p>\r\n<p>Помоги мне понять, что мечты не могут быть помощью. Ни мечты о прошлом, ни мечты о будущем. Помоги мне быть здесь и сейчас и воспринять эту минуту как самую важную.</p>\r\n<p>Убереги меня от наивной веры, что все в жизни должно быть гладко. Подари мне ясное сознание того, что сложности, поражения, падения и неудачи являются лишь естественной составной частью жизни, благодаря которой мы растем и зреем.</p>\r\n<p>Напоминай мне, что сердце часто спорит с рассудком.</p>\r\n<p>Пошли мне в нужный момент кого-то, у кого хватит мужества сказать мне правду, но сказать ее любя!</p>\r\n<p>Я знаю, что многие проблемы решаются, если ничего не предпринимать, так научи меня терпению.</p>\r\n<p>Ты знаешь, как сильно мы нуждаемся в дружбе. Дай мне быть достойным этого самого прекрасного и нежного Дара Судьбы.</p>\r\n<p>Дай мне богатую фантазию, чтобы в нужный момент, в нужное время, в нужном месте, молча или говоря, подарить кому-то необходимое тепло.</p>\r\n<p>Сделай меня человеком, умеющим достучаться до тех, кто совсем «внизу». Убереги меня от страха пропустить что-то в жизни.</p>\r\n<p>Дай мне не то, чего я себе желаю, а то, что мне действительно необходимо.</p>\r\n<p>Научи меня искусству маленьких шагов».</p>'),
(32, 30, 'ru', 'Законы сохранения жизненной энергии', '<p>1. Не обещайте что-либо, если вы не уверены в том, что захотите или сможете выполнить.</p>\r\n<p>2. Вовремя оказанная помощь и поддержка сберегут Вашу энергию. Не стоит навязывать свою помощь тем, кому она не нужна. Всё делайте только по просьбе.</p>\r\n<p>3. Научитесь говорить «нет». Не позволяйте себя уговаривать на действия, которые Вам неприятны или идут в ущерб с Вашими интересами.</p>\r\n<p>4. Ничего не ожидайте. Не предлагайте чувства, которых от Вас не ждут, и не ожидайте от других чувств, которые Вам не намерены давать.</p>\r\n<p>5. Не осуждайте и не критикуйте. Не говорите о людях того, что вы не могли бы сказать в их присутствии.</p>\r\n<p>6. Прощайте и не обижайтесь, не жалуйтесь и не раздражайтесь на других. Не говорите ничего в гневе, утро вечера мудренее.</p>\r\n<p>7. Не тратьте энергию на навязчивые мысли и пустые переживания. Находите положительную сторону в любой неприятности. Научитесь жить счастливым настоящим, не застревайте в мыслях о прошлом или будущем.</p>\r\n<p>8. Все, что вызывает негативные эмоции, необходимо сразу же исключить, убрать, изменить свое отношение. Необходимо сосредоточить внимание на благоприятных возможностях. Избегайте негативно настроенных людей. Чаще общайтесь с теми, кто смотрит на жизнь позитивно.</p>\r\n<p>9. Умейте рассчитывать свою энергию и время, правильно распределять и эффективно расходовать, не растрачивайте энергию и время по пустякам.</p>\r\n<p>10. Определите, какое дело является главным, не отвлекайтесь на менее значимые дела. Четко представляйте себе конечный результат. На чем вы сосредоточитесь, то и получите. Если вы стремитесь к положительному результату, он таким и будет.</p>\r\n<p>11. Решайте трудности по мере их поступления, сохраняя спокойствие. Большое дело разделите на небольшие задачи и маленькими шажками продвигайтесь к своей цели.</p>\r\n<p>12. Умейте отдыхать и переключаться от забот. Всегда имейте приятные занятия.</p>\r\n<p>13. Цените и умейте довольствоваться тем, что у Вас есть.</p>\r\n<p>14. За все надо платить, бесплатного ничего не бывает, за исключением подарков. Беря какую-то вещь, надо стараться заплатить, иначе бесплатно означает «бес платит». В жизни все как на весах, в одной сфере прибудет, в другой убудет. Если Вы отдаете какую-то вещь, то теряете энергию, когда ждете возврата, отдайте то, что можете подарить.</p>\r\n<p>15. За все надо благодарить, если нет благодарности, то энергетический поток останавливается. Исходящий поток определяет входящий. Вы не можете получить того, чего не отдаете.</p>\r\n<p>Не навязывайте другим свои правила и порядки!</p>'),
(33, 31, 'ru', 'Молитва о прощении Святого Франциска', '<p>Господи, сделай меня орудием Твоего мира,</p>\r\n<p>Там, где ненависть, дай мне приносить любовь,</p>\r\n<p>Там, где обида - приносить прощение,</p>\r\n<p>Там, где раздоры - приносить примирение,</p>\r\n<p>Там, где сомнения - приносить веру,</p>\r\n<p>Там, где заблуждения - приносить истину,</p>\r\n<p>Там, где отчаяние - приносить надежду,</p>\r\n<p>Там, где тьма - приносить свет,</p>\r\n<p>Там, где печаль - приносить радость.</p>\r\n<p>Дай мне, Господи, не ждать утешения, а утешать,</p>\r\n<p>Не ждать понимания, а понимать,</p>\r\n<p>Не ждать любви, а любить!</p>\r\n<p>Ибо, только кто дает, тот обретает,</p>\r\n<p>Только кто о себе забывает - тот находит себя,</p>\r\n<p>Только кто прощает - тот будет прощен,</p>\r\n<p>Только кто умирает - тот воскресает для жизни вечной!</p>\r\n<p>Иллюстрация: С.Н.Рерих. Святой Франциск Ассизский</p>'),
(34, 32, 'ru', 'Про обиду', '<p>Обида – это такой маленький зверёк. С виду он совсем безОбидный. И если с ним правильно обращаться, то вреда он вам не принесёт. Обида, если не пытаться её одомашнить, прекрасно живёт на воле и никогда никого не трогает. Но все попытки завладеть обидой, сделать её своей, кончаются всегда плачевно…Зверёк этот очень маленький и юркий. Он может случайно попасть в тело любого человека. Человек это сразу почувствует. Ему становится обидно. Это зверёк кричит человеку: - Я нечаянно попался! Выпусти меня! Мне здесь темно и страшно! Я хочу к маме!</p>\r\n<p>Но человеки давно разучились понимать языки тварей земных, особенно таких маленьких зверьков… Есть такие, которые сразу отпускают обиду. Но есть и такие, которые ни за что не хотят её отпускать. Они сразу называют её своею и носятся с ней, как с писаной торбой. Постоянно думают о ней, заботятся… А ей всё равно не нравится в человеке. Она крутится, ищет выход, но сама она никогда не найдёт пути… Такой вот непутёвый зверёк. Да и человек тоже непутёвый… Сжался весь и ни за что не выпускает свою обиду… Таит её в себе… А зверёк то голодный, кушать ему хочется… Вот и начинает он потихоньку кушать человека изнутри… И человек чувствует это. То там заболит, то здесь… Но не выпускает человек из себя обиду… Потому что привык он к ней… Да и она потихоньку привыкает к своему хозяину. Кушает, растёт, жиреет и перестаёт двигаться… Находит внутри человека что-нибудь вкусненькое, присасывается и сосёт и гложет… Так и говорят: “Обида гложет”.</p>\r\n<p>И в конце концов прирастает обида к чему-нибудь в теле человека и становится частью его… Слабеет человек, хворать начинает, а зверюга внутри всё толстеет…</p>\r\n<p>И невдомёк человеку, что только и надо – взять и отпустить обиду! Пусть себе живёт, в своё удовольствие! И ей без человека лучше и человеку без неё легче живётся.</p>\r\n<p>Обида – это такой маленький зверёк… Отпусти её, пусть себе бежит!</p>\r\n<p>Иллюстатор: Brian Froud</p>\r\n<p>Автор: blogoped, 2008</p>'),
(35, 33, 'ru', 'Душевный доктор', '<p>Рассказ - Притча </p>\r\n<p>- До свидания, душенька, и помните: прощать, прощать и еще раз прощать! Трижды в день, после еды! Будьте здоровы! Следующий!</p>\r\n<p>- Доктор, здравствуйте!</p>\r\n<p>- И вы будьте здоровы. На что жалуемся?</p>\r\n<p>- Да мне как-то неудобно…</p>\r\n<p>- А вы присядьте, присядьте! Так удобно?</p>\r\n<p>- Да…Нет…Не знаю. Наверное, удобно.</p>\r\n<p>- Наверное? Или действительно удобно?</p>\r\n<p>- Да не знаю я, доктор! Вроде ничего…</p>\r\n<p>- «Вроде ничего» — это значит никак. Но не может же вам быть «никак»? Вы же существуете?</p>\r\n<p>- Вот именно, доктор! Не живу, а существую. Это вы очень точно сказали. Я к вам поэтому и пришла.</p>\r\n<p>- Но что же вас тревожит, милочка? Что болит?</p>\r\n<p>- Душа болит. Вы ведь душевный доктор?</p>\r\n<p>- Душевный. Фамилия моя такая. И специализация – тоже. А вашу душу что-то ранило?</p>\r\n<p>- Не знаю. Может быть. Я ее как-то не чувствую. Я вообще плохо чувствую.</p>\r\n<p>- А в чем это выражается?</p>\r\n<p>- Ну… Например, я не умею говорить «люблю».</p>\r\n<p>- Да? Ну, это распространенное заболевание. Расскажите мне, каков ваш рацион питания.</p>\r\n<p>- Питания? Ах, да. Ну, супы, каши там. Овощи. Мясо – но не каждый день. Обычный, в общем.</p>\r\n<p>- А если вкусненькое – то что предпочтете?</p>\r\n<p>- Ну, я апельсины обожаю, мороженое, конфеты шоколадные тоже люблю.</p>\r\n<p>- Ага! Любите! Значит, умеете говорить «люблю»!</p>\r\n<p>- Нет, вы меня не поняли. Я людям не умею говорить «люблю».</p>\r\n<p>- А почему? Почему, как вы думаете?</p>\r\n<p>- Ну, не знаю. Я к вам за этим и пришла. Чтобы вы определили, почему.</p>\r\n<p>- Понятненько. Так, милочка. Дышите! Глубже дышите! Да что ж вы так напряглись?</p>\r\n<p>- Не могу я глубже дышать. У меня дыхание перехватывает.</p>\r\n<p>- Так и запишем: не позволяете себе дышать полной грудью. Теперь не дышите. Не дышите… Не дышите… Все, можно. Похоже, у вас это привычное состояние – не дышать?</p>\r\n<p>- Почему? Да я вроде дышу.</p>\r\n<p>- Вот именно, «вроде». А на самом деле – так, вид делаете. Вы ж боитесь открыться. Вы ж все чувства в себе зажимаете. Не даете им проявляться!</p>\r\n<p>- Ну, это же неприлично, когда чувства напоказ. Я вам что, «эмо», что ли? Девушка должна быть сдержанной, не показывать своих эмоций.</p>\r\n<p>- А как вы думаете, куда они деваются?</p>\r\n<p>- Кто?</p>\r\n<p>- Эмоции ваши? Гнев, обида, зависть? Они же бывают?</p>\r\n<p>- Нет! Нет! Это плохие чувства. Я их подавляю в самом зародыше.</p>\r\n<p>- Вот, милочка, и объяснились ваши проблемы с дыханием. Накопили, понимаешь ли, в себе зародышей. Вся грудь забита. То-то вам и не дышится глубоко.</p>\r\n<p>- Погодите, доктор! Вы что же, советуете на людях срываться?</p>\r\n<p>- Вовсе нет, милочка. Ничего я такого вам не советовал. Но чувства подавлять – это преступление по отношению к себе.</p>\r\n<p>- А как тогда, как с ними поступать?</p>\r\n<p>- Признавать, что они существуют. Называть их по именам. И разрешать им быть. Иногда этого достаточно, чтобы гнев тут же улегся, а обида испарилась.</p>\r\n<p>- Не может быть!</p>\r\n<p>- Это мой рецепт. Хотите применяйте, хотите – дальше обиды глотайте. Каждый пациент сам решает. Давайте-ка я вам живот пощупаю. Так больно? А вот так?</p>\r\n<p>- Ой, не то чтобы больно. Но неприятно как-то. Аж в позвоночник отдает.</p>\r\n<p>- Следовательно, у вас тут неприятности складированы.</p>\r\n<p>- Ой, а вот тут, под ложечкой, вообще тяжело! Будто камень какой-то.</p>\r\n<p>- Ну, это вы, как говорится, камень за пазухой носите. Небось затаили злобу на кого-то?</p>\r\n<p>- Ох, я и не знаю. Но тянет-то как!</p>\r\n<p>- Совершенно с вами согласен, тяжелый груз. Рекомендую с ним расстаться. С годами он только тяжелее становится – на него ведь всякий негатив налипает, свойство у него такое.</p>\r\n<p>- Ладно, спасибо. Я потом с камнем разберусь. Но сейчас я ведь не за этим. Я не умею говорить «люблю».</p>\r\n<p>- А что вам мешает?</p>\r\n<p>- Ох, не знаю. Что-то мешает. Я как-то… стесняюсь.</p>\r\n<p>- Стесняетесь! Значит, тесно вам. И не мудрено: у вас же все чувства зажаты! Любовь – она чувство свободное, вольное, как птица. А где же ему в вас развернуться?</p>\r\n<p>- Но почему? Почему у меня чувства зажаты, в чем дело?</p>\r\n<p>- Так мы и пытаемся определить, милочка! Дайте-ка я вас простучу.</p>\r\n<p>— Ай! Ой! Не надо! Пожалуйста, не стучите! Мне страшно!</p>\r\n<p>- Так, значит, и до страхов ваших достучались. Слава тебе, господи! Но ведь вам не больно? Чего боитесь?</p>\r\n<p>- Боли боюсь! Не хочу, чтобы больно!</p>\r\n<p>- Воооот… А от чего бывает больно?</p>\r\n<p>- Когда ушибешься. Когда обожжешься. Когда упадешь. Когда неосторожно себя ведешь. Когда задеваешь что-нибудь! От острых углов – очень больно.</p>\r\n<p>- Милочка вы моя! Так вы боитесь любить!</p>\r\n<p>- Я? Боюсь??? А при чем тут…</p>\r\n<p>- Да любовь же и есть – пламенный полет!!! Разве нет? Она состоит из взлетов и падений, из крутых виражей, из столкновений. И острых углов не избежать – надо просто научиться их сглаживать или обходить. Любовь не может быть осторожной! И если вы огня боитесь – ну как вы в себе любовь разожжете? «Огонь любви» — слышали такое?</p>\r\n<p>- Доктор… Я знаю. Было это все у меня. Случалось. И полет был, и огонь любви. И синяки, и шишки, и даже кровавые раны. Сначала такой взлет – что просто дух захватывало! Потом такое приземление, что еле в кучу себя собрала! В общем, обожгла меня любовь.</p>\r\n<p>- И теперь вы боитесь…</p>\r\n<p>- Да. Я боюсь. Боюсь, что не поймут. Отвергнут. Обманут. Обидят. Ранят. Я больше не вынесу. Это так больно! Сердце в клочья!</p>\r\n<p>- Вот вы и зажали свои чувства. Защитили себя со всех сторон от возможной боли. И поэтому вам трудно сказать «люблю»… Вы просто боитесь! Боитесь боли. И что сердце разорвется в клочья.</p>\r\n<p>- Да, да, да. Так оно и есть. Я хочу любить! Я очень хочу! Но очень боюсь! Помогите мне, доктор!</p>\r\n<p>- Не волнуйтесь, милочка. Ваша болезнь не смертельна, а очень даже излечима. И рецепт простой. Научитесь любить себя.</p>\r\n<p>- И?</p>\r\n<p>- И все. Если вы будете любить себя – вы никому не позволите себя ранить. И сами себе вреда не причините неосторожными действиями. Вы будете выбирать только самое лучшее, самое полезное для вас. Вы будете безошибочно находить то, что сделает вас еще счастливее. И никто, никто не сможет вас обидеть или задеть! Потому что вы будете выше этого.</p>\r\n<p>- Но… выходит, сейчас я себя не люблю? Так, что ли?</p>\r\n<p>- Уже начинаете! Иначе бы вы ко мне не пришли. Вы уже стали о себе заботиться – а это хороший признак.</p>\r\n<p>- А… как это – любить себя?</p>\r\n<p>- Для начала начните к себе прислушиваться. К своим желаниям, ощущениям. А то вас что ни спросишь – «не знаю», «не чувствую». Если вы сами так невнимательно к себе относитесь, почему же другие будут вас щадить?</p>\r\n<p>- Но я думала…</p>\r\n<p>- А вы думали, если вы такая ранимая-уязвимая, так вас щадить будут, жалеть, по головке гладить? Нет, милочка, ошибаетесь. И ранить будут, и уязвлять. Подобное притягивает подобное, медициной это давно установлено.</p>\r\n<p>- И что  же мне делать? Как научиться себя любить?</p>\r\n<p>- А вы сами себя щадите, хвалите, поощряйте. Себя надо время от времени поощрять – знаете об этом? Не перегружайте! Не делайте то, что не хочется! Не позволяйте себя обижать! И не позволяйте себе обижаться.</p>\r\n<p>- Но как это можно сделать, если тебе обидные вещи говорят?</p>\r\n<p>- А очень просто! Вам говорят – а вы в ответ: «Я этого не услышала!». Не можете вслух – про себя скажите. Конечно, если вы не имеете намерения опять все это внутрь складывать, обиды глотать и камни за пазухой носить.</p>\r\n<p>- Нет уж, я теперь знаю, я теперь ничем таким грузиться не буду. Я буду себя любить, щадить и гадостей не слушать.</p>\r\n<p>- Ну вот и славно. Пользуйтесь этим рецептом – и скоро вы почувствуете, что внутри освободилось место для любви. Думаю, на этом мы можем попрощаться. Медицина свое слово сказала, дело за вами.</p>\r\n<p>- Погодите, доктор! Но как же оно освободится, если там столько всего?</p>\r\n<p>- Да-да… Камни всякие… зародыши… обиды проглоченные… Накопили вы, накопили!</p>\r\n<p>- Да, что с этим делать?</p>\r\n<p>- А тут, милочка, рецепт один: прощать, прощать и еще раз прощать! Трижды в день, после еды! Будьте здоровы! Следующий!</p>\r\n<p> </p>\r\n<p>Иллюстрация: Виктория Кирдий</p>\r\n<p>Автор: Эльфика</p>'),
(36, 34, 'ru', 'Магазин Счастья', '<p>Понедельник – день тяжелый, и слава богу, что он когда-нибудь заканчивается. Я тащилась с работы, на душе было примерно так же, как и на небе – хмуро, пасмурно и слякотно. Моросил нужный мелкий дождик, который логично довершал безрадостный день. В довершение всего, когда я свернула на улицу, ведущую к родному дому, оказалось, что пройти невозможно – улица была перекрыта, там вовсю кипели ремонтные работы. Дорожники заботливо натянули цветную ленту и повесили табличку: «Выхода нет». Хотя, собственно, и входа тоже не наблюдалось. Это было жестоко: слева – длиннющий забор школы, справа – забор поликлиники. Оставалось только выбрать – налево или направо. Я мысленно чертыхнулась и поплелась вокруг школы.</p>\r\n<p>Никогда я не ходила такой кривой дорожкой. И поэтому никогда не видела этого магазинчика. Он был расположен в торце обычного жилого дома, а название его сразу поразило мое воображение: он назывался Магазин Счастья.</p>\r\n<p>«Интересно, что может продаваться в таком магазине?», — зачарованно подумала я. В это время дождик брызнул с удвоенной силой, поэтому я с облегчением нырнула в магазинчик. Дверь мягко закрылась за мной, и мелодичный звон колокольчика вызвал вибрацию где-то во мне, в самой глубине. Словно кто-то там засмеялся. И от этого родилось какое-то радостное волнение, будто вот-вот должно было случиться что-то приятное.</p>\r\n<p>Войдя, я невольно остановилась. Честно говоря, я оказалась в некотором замешательстве. Магазинчик был какой-то странный и больше всего напоминал запущенный склад, полный разного хлама. Между стеллажами и прилавками, трогая и рассматривая разный товар, бродили покупатели. И царило какое-то радостное оживление. К выходу спешила старушка, сияющая, как праздничный фонарик. Поравнявшись, она улыбнулась и подмигнула мне.</p>\r\n<p>- Простите, а что здесь продают? – спросила я.</p>\r\n<p>- Как что? – удивилась старушка. – Что написано, то и продают. Счастье, детка! Счастье!</p>\r\n<p>- А…в каком виде?</p>\r\n<p>- А в каком выберешь, дорогая! Метрами, килограммами и поштучно! – наверное, я выглядела глуповато, потому что старушка засмеялась. – Да ты не сомневайся, девочка, товар качественный! Я здесь постоянный покупатель. Тебе понравится!</p>\r\n<p>И старушка под звон колокольчика выскользнула из магазина. А ко мне уже спешил продавец в синей форменной одежде и с бейджиком на груди. На бейджике было написано: «Михаил, Продавец Счастья».</p>\r\n<p>;- Прошу простить за небольшую заминку, столько покупателей, море работы! – извинился продавец счастья Михаил. – Вы у нас, я смотрю, впервые?</p>\r\n<p>- А вы помните всех покупателей в лицо? – удивилась я.</p>\r\n<p>- Разумеется! Ведь решив однажды быть счастливым, человек обычно становится нашим Постоянным Покупателем, — объяснил Михаил.</p>\r\n<p>- А что в ваших товарах такого.. особо счастливого? – с некоторым сомнением спросила я.</p>\r\n<p>- Ах, я совсем вас заговорил! – спохватился Михаил. – Разрешите мне провести для вас небольшую экскурсию и показать, так сказать, товар лицом.</p>\r\n<p>Он подхватил меня под локоть и повлек к прилавкам.</p>\r\n<p>- Обратите внимание! Волшебные калейдоскопы! Придают яркость жизни! Постоянная смена впечатлений, феерия красок, множество разнообразных комбинаций!</p>\r\n<p>- Но это же просто игрушка! – запротестовала я.</p>\r\n<p>- А вы, разумеется, полагаете, что жизнь – серьезная штука? – спросил Михаил.</p>\r\n<p>- Еще какая серьезная! – подтвердила я. – Если бы взрослым можно было играть, как детям…</p>\r\n<p>- Так играйте! – предложил Михаил. – Кто же вам, взрослому человеку, может запретить?</p>\r\n<p>- Ну, у меня обязанности…работа. И все такое, — уныло возразила я.</p>\r\n<p>- А вы в это играйте! Для начала – положите в сумочку калейдоскоп. И когда скучно, грустно или совсем заработались – уделите ему минутку времени. И увидите, как жизнь заиграет яркими красками.</p>\r\n<p>- Я подумаю, — дипломатично сказала я.</p>\r\n<p>- Тогда продолжим! – предложил Михаил. – Я продемонстрирую вам в действии устройство для запуска мыльных пузырей. Посмотрите! Посмотрите! Какие они разные! И как они лопаются!</p>\r\n<p>- Ну и что? – не поняла я.</p>\r\n<p>- Да как же «ну и что»? – ликующе вскричал Михаил. – Все ваши проблемы лопаются как мыльные пузыри. Легко! Красиво! Радостно!</p>\r\n<p>- Если бы в жизни они так легко лопались, — вздохнула я.</p>\r\n<p>- Большинство наших проблем сильно раздуты. Прямо как эти пузыри. Научитесь относиться к проблеме, как к мыльному пузырю – посмотрите на нее, полюбуйтесь ее переливами, формой, размером – и позвольте ей лопнуть! Вот так! – и он выпустил еще серию радужных пузырей.</p>\r\n<p>Нет, этот Михаил говорил странные вещи. Но почему-то мне хотелось ему верить! Было в нем что-то такое…убедительное.</p>\r\n<p>- Ну хорошо, возможно, в этом что-то есть, — согласилась я. – Но поверить в то, что калейдоскоп и мыльные пузыри – и есть счастье, я не могу. Вы уж извините.</p>\r\n<p>- Тогда пойдемте в отдел тканей! У нас замечательный отдел тканей, — ничуть не огорчился Продавец Счастья. – Вперед, навстречу счастью!</p>\r\n<p>Я поспешила за ним к следующему прилавку. Там действительно наблюдалось немыслимое разнообразие тканей самых невероятных расцветок. Продавец отдела как раз обслуживал даму средних лет.</p>\r\n<p>- У вас есть какой-нибудь веселенький ситчик? – спрашивала она.</p>\r\n<p>- Разумеется, мадам! Вот, взгляните! — радостно сообщил продавец, раскидывая перед ней нежно-зеленый ситец, на котором были изображены смешные танцующие зайчики. Исключительно веселенький! Давайте вместе посмеемся!</p>\r\n<p>И засмеялся первым, а за ним – дама. Они заливались веселым смехом, явно довольные друг другом и жизнью. Я тоже невольно заулыбалась.</p>\r\n<p>- Я сошью себе веселенький фартучек и кухонные рукавички! И когда буду готовить обед, смешинки будут попадать в пищу. И вся моя семья будет веселиться! – решила дама.</p>\r\n<p>Я невольно залюбовалась ее лицом – оно было словно бы подсвечено изнутри, а в глазах в уголках губ все еще плясали смешинки.</p>\r\n<p>- Иногда достаточно окружить себя приятными вещами, чтобы жизнь стала такой же приятной, — пояснил Михаил.</p>\r\n<p>- Вот так просто? – не поверила я. – Но это же такие мелочи?</p>\r\n<p>- Ну, собственно, жизнь и состоит из мелочей, — доверительно сказал Михаил. – И счастье строится тоже из мелочей. Мы же говорим: «Мелочь, а приятно!». А представляете, что будет, когда приятных мелочей станет много?</p>\r\n<p>- Ну да, представляю! – заулыбалась я. – Это будет счастье!</p>\r\n<p>- Вы уже поняли суть нашего товара! – восхитился Продавец Счастья Михаил. – Но это еще не все! Идем те же, идемте! Я хочу показать вам нашу новинку! Большая Книга Счастья! Только что поступила!</p>\r\n<p>В книжном отделе было много всего, но Михаил не дал мне хорошенько рассмотреть книги. Он сразу сунул мне в руки симпатичный томик в яркой обложке. Я раскрыла его наугад – и очень удивилась. Там ничего не было! То есть почти ничего: наверху страницы было написано: «Сегодня был самый счастливый день в моей жизни!!!», а внизу страницы – «А завтра будет еще лучше!». А сама страница была чистой – просто разлинована, как тетрадь для первоклассника. Я листала страницу за страницей – вся книга была такой.</p>\r\n<p>- Ну как вам? – горделиво спросил Михаил./p&gt;</p>\r\n<p>- Но здесь же ничего не написано! – возмутилась я.</p>\r\n<p>- Ну конечно! – подтвердил Михаил. – В этом и суть! Вы будете писать ее сами.</p>\r\n<p>- Как сама? – опешила я. – Но я же не умею!</p>\r\n<p>- Сегодня это так. Завтра все может измениться, — загадочно сказал Михаил. – Вы разрешите прочитать вам небольшую лекцию?</p>\r\n<p>- Да, конечно, — я была совершенно заинтригована.</p>\r\n<p>- Каждый наш день наполнен разными событиями, и одни нам нравятся, а другие</p>\r\n<p>– нет. Как ни странно, мы почему-то запоминаем именно «плохие» события, а хорошие нет, потому что они нам кажутся в порядке вещей. В результате наше счастье очень омрачено! Вы со мной согласны?</p>\r\n<p>- Да, правда, — созналась я. – Иногда какая-нибудь мелочь может испортить целый день.</p>\r\n<p>- Большая Книга Счастья предлагает пойти прямо противоположным путем! Записывать в нее только счастливые события. Не менее пяти за день! Больше – можно, меньше – нет.</p>\r\n<p>- Да где же я наберу столько счастливых событий за день? – запротестовала я.</p>\r\n<p>- А вот позвольте не согласиться, на самом деле это легко, вы просто еще не пробовали, — возразил Продавец Счастья. – Конечно, в первые дни придется перестраивать свое мышление на новую волну. Но вы быстро войдете во вкус, это ведь так приятно! Вы попробуйте, попробуйте прямо сейчас! Что сегодня у вас было счастливого?</p>\r\n<p>- Я не знаю, — сникла я. – Какой-то тяжелый был день.</p>\r\n<p>- Вы сегодня получали травмы?</p>\r\n<p>- Нет, что вы, — испугалась я.</p>\r\n<p>- Ну вот, уже счастье! Так и запишем, – обрадовался Михаил. – Вы сегодня что-нибудь теряли?</p>\r\n<p>- Да, потеряла важный документ, но потом нашла среди бумаг, — подтвердила я.</p>\r\n<p>- О, но это же счастье! Ведь правда? – продолжал обучение Михаил.</p>\r\n<p>- Правда, — согласилась я. – Счастье, что он нашелся.</p>\r\n<p>- Ну, теперь сами, у вас уже получается, — подбодрил меня Михаил.</p>\r\n<p>- Ну…сегодня собачку смешную видела. Такая лохматая-лохматая, и в пальтишке! Как в цирке. И хозяйка у нее такая же! Тоже лохматая! Они похожи!</p>\r\n<p>- Ну вот! Замечательно! У вас прекрасно получается! – похвалил Михаил.</p>\r\n<p>- А еще я сегодня наконец-то доделала отчет. Устала – но закончила! – похвасталась я.</p>\r\n<p>- Это – четыре, — сосчитал Михаил. – Остался пятый эпизод. Итак?</p>\r\n<p>- Так, что же было потом? – соображала я. – Потом был дождь. И я шла домой, а там дорогу ремонтируют. И я пошла в обход… Да! Потом я зашла в ваш чудесный магазинчик! – воскликнула я. – Запишите!</p>\r\n<p>- Охотно, — застрочил Продавец Счастья. – Польщен тем, что вы сочли возможным включить это в список счастливых событий. Итак, пять эпизодов записаны! Ваша Большая Книга Счастья уже пишется!</p>\r\n<p>- И так каждый день? – спросила я. – А когда закончатся страницы?</p>\r\n<p>- К тому времени ваш разум уже привыкнет фиксировать счастливые события автоматически, и не по пять событий за день, а гораздо больше, - пообещал Михаил. – И ваша жизнь будет просто-таки наполнена счастьем!</p>\r\n<p>- Большое спасибо, — поблагодарила я. – Пожалуй, я возьму эту Книгу.</p>\r\n<p>- Примите ее в дар от нашего магазина, — изящно наклонил голову Михаил. – Мы всегда дарим что-нибудь новому покупателю.</p>\r\n<p>- Какое счастье! – обрадовалась я. – Спасибо вам!</p>\r\n<p>- Ну, вот уже и шестой пункт в вашем сегодняшнем Счастье, — улыбнулся Михаил.</p>\r\n<p>- Да, разумеется! И еще я приобрету устройство для лопанья проблем и калейдоскоп для увеличения яркости жизни! Это семь и восемь! – выпалила я.</p>\r\n<p>- Я очень рад! Вам упаковать в фирменный пакет</p>\r\n<p>- Да, пожалуйста, — попросила я, все еще улыбаясь.</p>\r\n<p>Пакет был тоже очень симпатичный – оранжевый, в крупный белый горох. На нем было написано: «Мы обречены быть счастливыми!». Надпись мне понравилась.</p>\r\n<p>Михаил провожал меня до выхода. На двери была большая красивая табличка: «Выход есть!». И табличка мне тоже понравилась.</p>\r\n<p>- У нас такие таблички на всех дверях, — сообщил Михаил. – Чтобы не забывать, что выход есть всегда! Спасибо за покупки. Заходите к нам еще.</p>\r\n<p>- Я обязательно зайду, — пообещала я. – Я хочу покопаться и в других товарах.</p>\r\n<p>- О, мы всегда рады постоянным покупателям! – восхитился Михаил.</p>\r\n<p>- К вам, наверное, ходит весь наш город? – поинтересовалась я.</p>\r\n<p>- К сожалению, нет! – огорченно сказал Продавец Счастья. – Как ни странно, все говорят, что хотят быть счастливыми, но далеко не каждый стремится хоть что-то для этого сделать. Но мы работаем над этим! Совершенствуем ассортимент, упаковку, рекламу. Так что вы всегда найдете для себя что-то новое и интересное. До свидания! И счастья вам!</p>\r\n<p>Мелодично звякнул колокольчик, и я вышла на улицу. Душа моя пела. Я шла домой, и люди задерживали на мне взгляды. Наверное, из-за моего оранжевого пакета. А может быть, потому, что я никак не могла расстаться с улыбкой. А может, я сейчас сияла, как та старушка, что встретилась мне у входа. И это тоже было счастье.</p>\r\n<p>&gt;- Девять, — машинально отметила я. – Надо не забыть записать в мою Большую Книгу.</p>\r\n<p> </p>\r\n<p>Автор: Эльфика</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `slug`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'interes_jizni', 1538934056, 1550655606, 1, 2),
(2, 'vkus_jizni', 1538934056, 1550655562, 1, 2),
(3, 'izmenit_jizn', 1550655701, 1550655701, 2, 2),
(4, 'energiia_jizni', 1550655797, 1550655797, 2, 2),
(5, 'jiznennaia_sila', 1550686323, 1550686902, 2, 2),
(6, 'schaste_est', 1550686441, 1550686889, 2, 2),
(7, 'vpustit_schaste', 1550686491, 1550686878, 2, 2),
(8, 'vernut_radost', 1550686535, 1550686867, 2, 2),
(9, 'radovatsia_jizni', 1550686578, 1550686857, 2, 2),
(10, 'istochnik_energii', 1550686623, 1550686843, 2, 2),
(11, 'resurs_energii', 1550686665, 1550686832, 2, 2),
(12, 'kak_stat_schastlivym', 1550686708, 1550686708, 2, 2),
(13, 'nadi_vdohnovenie', 1550686754, 1550686754, 2, 2),
(14, 'momenty_jizni', 1550686816, 1550686816, 2, 2),
(16, 'kak_ne_obijatsia', 1550687002, 1550687002, 2, 2),
(17, 'dostijenie_cele', 1550687043, 1550687043, 2, 2),
(18, 'liubimoe_uvlechenie', 1550687105, 1550687105, 2, 2),
(19, 'kak_nauchitsia_doveriat', 1550687163, 1550687163, 2, 2),
(20, 'doveritelnye_otnosheniia', 1550687206, 1550687206, 2, 2),
(21, 'poisk_sebia', 1550687251, 1550687251, 2, 2),
(22, 'poniat_sebia', 1550687304, 1550687304, 2, 2),
(23, 'osoznanie_sebia', 1550687338, 1550687338, 2, 2),
(24, 'nati_sebia', 1550687377, 1550687377, 2, 2),
(25, 'garmoniia_ssobo', 1550687420, 1550687420, 2, 2),
(26, 'znanie_osebe', 1550687459, 1550687459, 2, 2),
(27, 'motivaciia', 1550687517, 1550687517, 2, 2),
(28, 'vnutrenniy_mir', 1550687589, 1550687589, 2, 2),
(29, 'chuvstvo_obidy', 1550687633, 1552560355, 2, 2),
(31, 'vnutrenniy_rebenok', 1550687741, 1550687741, 2, 2),
(32, 'kreativnost', 1550687778, 1550687778, 2, 2),
(33, 'preodolet_strakhi', 1550687830, 1550687830, 2, 2),
(34, 'rabota_so_strakhom', 1550687876, 1550687876, 2, 2),
(35, 'negativnye_ustanovki', 1550687923, 1550687923, 2, 2),
(36, 'negativnye_mysli', 1550687962, 1550687973, 2, 2),
(37, 'pozitivnye_mysli', 1550688007, 1550688007, 2, 2),
(38, 'energiya_veschey', 1550688056, 1550688056, 2, 2),
(39, 'uchus_novomu', 1550688117, 1550688117, 2, 2),
(40, 'strakha_bolshe_net', 1550688169, 1550688169, 2, 2),
(41, 'trevoga_za_buduschee', 1550688217, 1550688217, 2, 2),
(42, 'zdes_seychas', 1550688260, 1550688260, 2, 2),
(43, 'kak_skazat_net', 1550688313, 1550688313, 2, 2),
(44, 'perestat_kontrolirovat', 1550688361, 1550688361, 2, 2),
(45, 'raspredelyaemoe_vremya', 1550688416, 1550688416, 2, 2),
(46, 'upravlenie_vremenem', 1550688474, 1550688474, 2, 2),
(47, 'bud_soboy', 1550688514, 1550688514, 2, 2),
(48, 'lyubov_ksebe', 1550688559, 1550688559, 2, 2),
(49, 'neyrogenez', 1550688608, 1550688608, 2, 2),
(50, 'izmenit_sebya', 1550688657, 1550688657, 2, 2),
(51, 'izmenit_tsennosti', 1550688696, 1550688696, 2, 2),
(52, 'samorealizatsiya', 1550688761, 1550688761, 2, 2),
(53, 'realizovat_sebya', 1550688803, 1550688803, 2, 2),
(54, 'vybor_professii', 1550688842, 1550688842, 2, 2),
(55, 'smenit_professiyu', 1550688889, 1550688889, 2, 2),
(56, 'otkryt_svoe_delo', 1550688927, 1550688927, 2, 2),
(57, 'lyubimaya_rabota', 1550688966, 1550688966, 2, 2),
(58, 'fototerapiya', 1550689005, 1550689005, 2, 2),
(60, 'travel_therapy', 1550689104, 1550689104, 2, 2),
(68, 'mandalaterapiya', 1550689464, 1550689464, 2, 2),
(69, 'imidzhterapiya', 1550689511, 1550689511, 2, 2),
(70, 'maskoterapiya', 1550689542, 1550689542, 2, 2),
(71, 'skazkoterapiya', 1550689571, 1550689571, 2, 2),
(72, 'izoterapiya', 1550689600, 1550689600, 2, 2),
(73, 'pesochnaya_terapiya', 1550689633, 1550689633, 2, 2),
(74, 'risovanie_peskom', 1550689667, 1550689667, 2, 2),
(75, 'risunok_vkruge', 1550689701, 1550689701, 2, 2),
(77, 'izmenit_samootsenku', 1550689823, 1550689823, 2, 2),
(78, 'tsenit_vremya', 1550689931, 1550689931, 2, 2),
(79, 'bessoznatelnoe', 1550690008, 1550690008, 2, 2),
(80, 'glinoterapiya', 1550690046, 1550690046, 2, 2),
(81, 'dengi', 1550690075, 1550690075, 2, 2),
(82, 'blagopoluchie', 1550690102, 1550690102, 2, 2),
(83, 'spontannyy_risunok', 1550690253, 1550690253, 2, 2),
(84, 'sposobnosti', 1550690965, 1550690965, 2, 2),
(85, 'tvorcheskiy_potentsial', 1550699612, 1550699612, 2, 2),
(86, 'vybor_professii', 1550738766, 1550738766, 2, 2),
(87, 'blagodarnost', 1550752290, 1550752290, 2, 2),
(88, 'artterapy', 1550836640, 1550836640, 2, 2),
(89, 'art_objekt', 1550836676, 1550857722, 2, 1),
(90, 'iskusstvo_prosheniya', 1552559236, 1552559236, 2, 2),
(91, 'iskusstvo_malenkih_shagov', 1552559305, 1552559305, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag_lang`
--

CREATE TABLE `post_tag_lang` (
  `id` int(11) NOT NULL,
  `post_tag_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_tag_lang`
--

INSERT INTO `post_tag_lang` (`id`, `post_tag_id`, `language`, `title`) VALUES
(3, 2, 'ru', 'Вкус жизни'),
(4, 1, 'ru', 'Интерес к жизни'),
(5, 3, 'ru', 'Изменить свою жизнь'),
(6, 4, 'ru', 'Энергия жизни'),
(7, 5, 'ru', 'Жизненная сила'),
(8, 6, 'ru', 'Счастье есть'),
(9, 7, 'ru', 'Впустить счастье'),
(10, 8, 'ru', 'Вернуть радость'),
(11, 9, 'ru', 'Радоваться жизни'),
(12, 10, 'ru', 'Источник энергии'),
(13, 11, 'ru', 'Ресурс энергии'),
(14, 12, 'ru', 'Как стать счастливым'),
(15, 13, 'ru', 'Найди вдохновение'),
(16, 14, 'ru', 'Моменты жизни'),
(18, 16, 'ru', 'Как не обижаться'),
(19, 17, 'ru', 'Достижение целей'),
(20, 18, 'ru', 'Любимое увлечение'),
(21, 19, 'ru', 'Как научиться доверять'),
(22, 20, 'ru', 'Доверительные отношения'),
(23, 21, 'ru', 'Поиск Себя'),
(24, 22, 'ru', 'Понять Себя'),
(25, 23, 'ru', 'Осознание себя'),
(26, 24, 'ru', 'Найти Себя'),
(27, 25, 'ru', 'Гармония с собой'),
(28, 26, 'ru', 'Знание о себе'),
(29, 27, 'ru', 'Мотивация'),
(30, 28, 'ru', 'Внутренний мир'),
(31, 29, 'ru', 'Чувство обиды'),
(33, 31, 'ru', 'Внутренний ребенок'),
(34, 32, 'ru', 'Креативность'),
(35, 33, 'ru', 'Преодолеть страхи'),
(36, 34, 'ru', 'Работа со страхом'),
(37, 35, 'ru', 'Негативные установки'),
(38, 36, 'ru', 'Негативные мысли'),
(39, 37, 'ru', 'Позитивные мысли'),
(40, 38, 'ru', 'Энергия вещей'),
(41, 39, 'ru', 'Учусь новому'),
(42, 40, 'ru', 'Страха больше нет'),
(43, 41, 'ru', 'Тревога за будущее'),
(44, 42, 'ru', 'Здесь и сейчас'),
(45, 43, 'ru', 'Как сказать нет'),
(46, 44, 'ru', 'Перестать контролировать'),
(47, 45, 'ru', 'Распределяемое время'),
(48, 46, 'ru', 'Управление временем'),
(49, 47, 'ru', 'Будь собой'),
(50, 48, 'ru', 'Любовь к себе'),
(51, 49, 'ru', 'Нейрогенез'),
(52, 50, 'ru', 'Изменить себя'),
(53, 51, 'ru', 'Изменить ценности'),
(54, 52, 'ru', 'Самореализация'),
(55, 53, 'ru', 'Реализовать себя'),
(56, 54, 'ru', 'Выбор профессии'),
(57, 55, 'ru', 'Сменить профессию'),
(58, 56, 'ru', 'Открыть свое дело'),
(59, 57, 'ru', 'Любимая работа'),
(60, 58, 'ru', 'Фототерапия'),
(62, 60, 'ru', 'Travel Therapy'),
(70, 68, 'ru', 'Мандалатерапия'),
(71, 69, 'ru', 'Имиджтерапия'),
(72, 70, 'ru', 'Маскотерапия'),
(73, 71, 'ru', 'Сказкотерапия'),
(74, 72, 'ru', 'Изотерапия'),
(75, 73, 'ru', 'Песочная терапия'),
(76, 74, 'ru', 'Рисование песком'),
(77, 75, 'ru', 'Рисунок в круге'),
(79, 77, 'ru', 'Изменить самооценку'),
(80, 78, 'ru', 'Ценить время'),
(81, 79, 'ru', 'Бессознательное'),
(82, 80, 'ru', 'Глинотерапия'),
(83, 81, 'ru', 'Деньги'),
(84, 82, 'ru', 'Благополучие'),
(85, 83, 'ru', 'Спонтанный рисунок'),
(86, 84, 'ru', 'Способности'),
(87, 85, 'ru', 'Творческий потенциал'),
(88, 86, 'ru', 'Выбор профессии'),
(89, 87, 'ru', 'Благодарность'),
(90, 88, 'ru', 'Artterapy'),
(91, 89, 'ru', 'Арт-объект'),
(92, 90, 'ru', 'Искусство прощения'),
(93, 91, 'ru', 'Искусство маленьких шагов');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag_post`
--

CREATE TABLE `post_tag_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_tag_post`
--

INSERT INTO `post_tag_post` (`id`, `post_id`, `tag_id`) VALUES
(3, 2, 1),
(10, 15, 1),
(11, 15, 2),
(14, 2, 2),
(15, 2, 9),
(16, 2, 11),
(17, 2, 31),
(18, 2, 73),
(19, 2, 74),
(20, 3, 3),
(21, 3, 12),
(22, 3, 17),
(23, 3, 52),
(24, 3, 85),
(25, 4, 4),
(26, 4, 24),
(27, 4, 52),
(28, 4, 82),
(29, 4, 12),
(30, 5, 6),
(31, 5, 54),
(32, 5, 84),
(33, 6, 36),
(34, 6, 37),
(35, 6, 12),
(36, 6, 82),
(37, 7, 4),
(38, 7, 11),
(39, 7, 25),
(40, 7, 38),
(41, 7, 45),
(42, 8, 33),
(43, 8, 35),
(45, 8, 50),
(46, 8, 77),
(47, 8, 7),
(48, 9, 35),
(49, 9, 77),
(50, 9, 81),
(51, 9, 82),
(53, 9, 18),
(54, 10, 8),
(56, 10, 13),
(57, 10, 17),
(58, 10, 39),
(59, 10, 55),
(60, 11, 17),
(61, 11, 25),
(62, 11, 49),
(63, 11, 51),
(64, 11, 57),
(65, 12, 20),
(68, 12, 43),
(69, 12, 48),
(70, 12, 87),
(71, 12, 46),
(72, 13, 44),
(73, 13, 4),
(74, 13, 23),
(75, 13, 33),
(76, 13, 36),
(78, 14, 12),
(79, 14, 22),
(80, 14, 28),
(81, 14, 51),
(82, 15, 4),
(84, 15, 60),
(85, 15, 14),
(86, 16, 4),
(87, 16, 7),
(89, 16, 46),
(90, 16, 78),
(91, 16, 3),
(92, 17, 1),
(93, 17, 4),
(94, 17, 5),
(95, 17, 8),
(96, 17, 11),
(97, 18, 8),
(98, 18, 10),
(99, 18, 13),
(101, 18, 33),
(102, 19, 2),
(103, 19, 4),
(104, 19, 6),
(105, 19, 9),
(106, 19, 60),
(107, 20, 8),
(109, 20, 48),
(110, 20, 50),
(111, 20, 69),
(112, 20, 17),
(113, 21, 2),
(114, 21, 4),
(115, 21, 11),
(116, 21, 33),
(117, 21, 60),
(118, 22, 3),
(119, 22, 7),
(120, 22, 10),
(121, 22, 47),
(122, 22, 48),
(123, 18, 37),
(124, 23, 14),
(125, 23, 27),
(126, 23, 28),
(127, 23, 58),
(128, 23, 60),
(130, 23, 85),
(131, 24, 68),
(132, 24, 17),
(133, 24, 21),
(134, 24, 28),
(135, 24, 86),
(136, 22, 20),
(137, 25, 42),
(138, 25, 14),
(139, 25, 22),
(140, 25, 25),
(141, 25, 37),
(142, 25, 46),
(143, 26, 72),
(144, 26, 88),
(145, 26, 89),
(146, 26, 73),
(147, 26, 74),
(148, 27, 60),
(149, 27, 17),
(150, 27, 18),
(151, 27, 22),
(152, 27, 33),
(153, 27, 39),
(155, 28, 3),
(156, 28, 11),
(158, 28, 46),
(159, 28, 78),
(160, 28, 7),
(161, 29, 12),
(162, 29, 14),
(163, 29, 42),
(164, 29, 78),
(165, 29, 23),
(166, 30, 4),
(167, 30, 5),
(168, 30, 10),
(169, 30, 11),
(170, 30, 25),
(171, 29, 91),
(172, 31, 90),
(173, 31, 29),
(174, 31, 87),
(175, 32, 5),
(176, 32, 16),
(177, 32, 23),
(178, 32, 29),
(179, 32, 90),
(180, 31, 16),
(181, 33, 3),
(182, 33, 16),
(183, 33, 26),
(184, 33, 29),
(185, 33, 40),
(186, 33, 90),
(187, 34, 6),
(188, 34, 7),
(189, 34, 8),
(190, 34, 9),
(191, 34, 12),
(192, 34, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `section_block`
--

CREATE TABLE `section_block` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `coll_num` smallint(3) NOT NULL,
  `row_num` smallint(3) NOT NULL,
  `coll_grid_size` smallint(3) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Блоки строки секции';

-- --------------------------------------------------------

--
-- Структура таблицы `section_carousel`
--

CREATE TABLE `section_carousel` (
  `id` int(8) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `slug` varchar(127) DEFAULT NULL,
  `items` smallint(2) NOT NULL,
  `single_item` tinyint(1) NOT NULL,
  `navigation` tinyint(1) NOT NULL,
  `pagination` tinyint(1) NOT NULL,
  `transition_style` varchar(127) NOT NULL,
  `auto_play` varchar(127) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `section_carousel`
--

INSERT INTO `section_carousel` (`id`, `name`, `slug`, `items`, `single_item`, `navigation`, `pagination`, `transition_style`, `auto_play`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Карусель главная', 'karousel-main', 1, 1, 1, 1, 'fadeUp', '9000', 1, 1548704519, 1552766836),
(2, 'Обо мне', 'karousel-about', 1, 0, 1, 1, 'fade', '9000', 1, 1549439547, 1550776354);

-- --------------------------------------------------------

--
-- Структура таблицы `section_feedback`
--

CREATE TABLE `section_feedback` (
  `id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `business` varchar(127) NOT NULL,
  `content` mediumtext NOT NULL,
  `published_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `main_flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='отзывы посетителей';

--
-- Дамп данных таблицы `section_feedback`
--

INSERT INTO `section_feedback` (`id`, `username`, `business`, `content`, `published_at`, `created_at`, `updated_at`, `status`, `main_flag`) VALUES
(3, 'Артур', 'Техник', '<p><strong>\"Быть счастливой каждый день\"</strong> </p>\r\n<p>Начинаю серию интервью с теми людьми, которые мне кажутся очень особенными в плане личной силы. Выбираю тех, кто много лет очень нравится, с кем я ощущаю себя «в унисон». Здесь будет моя личная коллекция людей, которые вызывают только тепло и восхищение.</p>', 1549238400, 1549656436, 1549811440, 1, 1),
(4, 'Елена Ишанова', 'Психолог', '<p><strong>И в первую очередь</strong>, — тех, кто достиг того, к чему все стремятся (то самое «приближаясь» в названии моего блога) — стабильной удовлетворенности от своей жизни, перманентного счастья и радости от всего, какие бы ситуации ни происходили.</p>', 1549670400, 1549711701, 1549804762, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `section_item`
--

CREATE TABLE `section_item` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Секции страницы';

-- --------------------------------------------------------

--
-- Структура таблицы `section_page`
--

CREATE TABLE `section_page` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `slug` varchar(127) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortOrder` int(8) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Страницы sms';

--
-- Дамп данных таблицы `section_page`
--

INSERT INTO `section_page` (`id`, `name`, `slug`, `status`, `sortOrder`, `created_at`, `updated_at`) VALUES
(1, 'Обо мне', 'about_me', 1, NULL, 1550235943, 1550241633);

-- --------------------------------------------------------

--
-- Структура таблицы `section_parallax`
--

CREATE TABLE `section_parallax` (
  `id` int(8) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `bg_color` varchar(127) DEFAULT NULL,
  `bg_image` varchar(127) NOT NULL,
  `parallax_class` varchar(127) DEFAULT NULL,
  `background_ratio` varchar(127) DEFAULT NULL,
  `content_image` varchar(127) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `countdown` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Включить счетчик',
  `countdown_prompt` varchar(127) NOT NULL,
  `start_timestamp` int(11) DEFAULT NULL,
  `url` varchar(127) NOT NULL,
  `btn_icon` varchar(127) NOT NULL,
  `btn_name` varchar(127) NOT NULL,
  `btn_class` varchar(127) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `section_parallax`
--

INSERT INTO `section_parallax` (`id`, `name`, `bg_color`, `bg_image`, `parallax_class`, `background_ratio`, `content_image`, `content`, `countdown`, `countdown_prompt`, `start_timestamp`, `url`, `btn_icon`, `btn_name`, `btn_class`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'rgb(0, 0, 0)', '/uploads/2019/02/tree-cat-1920x1080.jpg', 'parallax delayed', '0.8', '', '<h2>Позитивный мир  <strong>Начинается с себя!</strong></h2>\r\n<p class=\"lead\">\r\n      Сделайте шаг к переменам в своей жизни прямо сейчас!\r\n</p>\r\n<p>\r\nПочувствовать вкус к жизни и найти дорогу к Вашим целям поможет мой авторский курс<br />«30 встреч» -\r\nПуть к поиску Себя! Благодаря взаимодействию с арт-терапией Вы осознаете, что можно жить без\r\nлишних переживаний! Вы узнаете, как сохранить жизненные силы и где найти ресурсы!\r\n</p>', 0, 'До начала занятия осталось:', 1549798200, '/site/contact', 'fa fa-chevron-circle-right', 'Sign up for class', 'btn btn-primary btn-lg', 1, 1549371857, 1552659971);

-- --------------------------------------------------------

--
-- Структура таблицы `section_slides`
--

CREATE TABLE `section_slides` (
  `id` int(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `data_transition` varchar(32) DEFAULT NULL,
  `data_slotamount` mediumint(3) DEFAULT NULL,
  `data_masterspeed` mediumint(3) DEFAULT NULL,
  `data_delay` varchar(127) DEFAULT NULL,
  `img_src` varchar(127) DEFAULT NULL,
  `img_alt` varchar(127) DEFAULT NULL,
  `data_lazyload` varchar(127) DEFAULT NULL,
  `data_fullwidthcentering` varchar(127) DEFAULT NULL,
  `data_bgfit` varchar(32) DEFAULT NULL,
  `data_bgposition` varchar(32) DEFAULT NULL,
  `data_bgrepeat` varchar(32) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(8) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `section_slides`
--

INSERT INTO `section_slides` (`id`, `name`, `data_transition`, `data_slotamount`, `data_masterspeed`, `data_delay`, `img_src`, `img_alt`, `data_lazyload`, `data_fullwidthcentering`, `data_bgfit`, `data_bgposition`, `data_bgrepeat`, `status`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Слайд 2', 'fade', 7, 300, '', '', '', '/uploads/2019/02/225894-1920x1080.jpg', 'on', '', '', '', 1, 2, 1548582670, 1551034621),
(2, 'Слайд 3', 'fade', 7, 300, '', '', '', '/uploads/2019/02/33333-1920x1080.jpg', 'on', '', '', '', 1, 3, 1548582670, 1551048245),
(3, 'Слайд 1', 'fade', 7, 300, '', '', '', '/uploads/2019/02/88888-1920x1080.jpg', 'on', '', '', '', 1, 1, 1548582670, 1551034605),
(4, 'Слайд 4', 'fade', 7, 1000, '13000', '/uploads/2019/02/textslider-1920x1080.jpg', '', '/uploads/2019/02/920641386-1920x1080.jpg', 'center', 'cover', 'center top', 'no-repeat', 1, 4, 1548582670, 1551035442),
(5, 'Слайд 5', 'fade', 7, 300, '', '', '', '/uploads/2019/02/5896-1920x1080.png', 'on', '', '', '', 1, 5, 1548582670, 1551042729),
(6, 'Слайд 6', 'fade', 7, 300, '', '', '', '/uploads/2019/02/11111-1920x1080.jpg', 'on', '', '', '', 1, 6, 1548582670, 1551042771);

-- --------------------------------------------------------

--
-- Структура таблицы `section_slides_layers`
--

CREATE TABLE `section_slides_layers` (
  `id` int(8) NOT NULL,
  `slides_id` int(8) NOT NULL,
  `content` mediumtext NOT NULL,
  `class` varchar(127) DEFAULT NULL,
  `data_x` varchar(127) DEFAULT NULL,
  `data_y` varchar(127) DEFAULT NULL,
  `data_customin` varchar(512) DEFAULT NULL,
  `data_customout` varchar(512) DEFAULT NULL,
  `data_hoffset` smallint(3) DEFAULT NULL,
  `data_voffset` smallint(3) DEFAULT NULL,
  `data_speed` smallint(3) DEFAULT NULL,
  `data_start` smallint(3) DEFAULT NULL,
  `data_easing` varchar(127) DEFAULT NULL,
  `data_splitin` varchar(127) DEFAULT NULL,
  `data_splitout` varchar(127) DEFAULT NULL,
  `data_elementdelay` varchar(127) DEFAULT NULL,
  `data_endelementdelay` varchar(127) DEFAULT NULL,
  `data_end` varchar(127) DEFAULT NULL,
  `data_endspeed` smallint(3) DEFAULT NULL,
  `data_endeasing` varchar(127) DEFAULT NULL,
  `data_captionhidden` varchar(32) DEFAULT NULL,
  `style` varchar(127) DEFAULT NULL,
  `btn_flag` tinyint(1) NOT NULL DEFAULT '0',
  `btn_url` varchar(127) DEFAULT NULL,
  `btn_icon` varchar(127) DEFAULT NULL,
  `btn_name` varchar(127) DEFAULT NULL,
  `btn_class` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `section_slides_layers`
--

INSERT INTO `section_slides_layers` (`id`, `slides_id`, `content`, `class`, `data_x`, `data_y`, `data_customin`, `data_customout`, `data_hoffset`, `data_voffset`, `data_speed`, `data_start`, `data_easing`, `data_splitin`, `data_splitout`, `data_elementdelay`, `data_endelementdelay`, `data_end`, `data_endspeed`, `data_endeasing`, `data_captionhidden`, `style`, `btn_flag`, `btn_url`, `btn_icon`, `btn_name`, `btn_class`) VALUES
(1, 1, 'Где любовь, там жизнь! ', 'tp-caption medium_text lft', '90', '180', '', '', NULL, NULL, 300, 500, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(2, 1, 'Станьте творцом своей жизни. <br/> Любите и проявляйте себя!', 'tp-caption large_text lfb', '90', '222', '', '', NULL, NULL, 300, 800, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(3, 1, 'Кнопка', 'tp-caption lfb', '90', '330', '', '', NULL, NULL, 300, 1100, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 1, '/site/blog', '', 'Learn more...', 'btn btn-primary btn-lg'),
(4, 2, 'Никогда не поздно быть тем, <br/> кем ты мог быть!', 'tp-caption medium_text lft', '90', '180', '', '', NULL, NULL, 300, 500, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(5, 2, 'В нашем подсознании скрыта сила, <br/> способная перевернуть мир!', 'tp-caption large_text lfb', '90', '222', '', '', NULL, NULL, 300, 800, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(6, 2, 'Кнопка', 'tp-caption lfb', '90', '330', '', '', NULL, NULL, 300, 1100, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 1, '/site/contact', '', 'Make an appointment', 'btn btn-info btn-lg'),
(7, 3, 'Жизнь - это счастье!', 'tp-caption medium_text lft', '90', '180', '', '', NULL, NULL, 300, 500, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(8, 3, 'Любовь к жизни, осознанная жизнь <br/> дают ощущение счастья!', 'tp-caption large_text lfb', '90', '222', NULL, '', NULL, NULL, 300, 800, 'easeOutExpo', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, NULL, NULL, NULL, NULL),
(9, 3, 'Кнопка', 'tp-caption lfb', '90', '330', '', '', NULL, NULL, 300, 1100, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 1, '/site/contact', 'fa fa-chevron-circle-right', 'Sign up for class', 'btn btn-default btn-lg'),
(10, 4, 'Курс \"30 встреч\"', 'tp-caption finewide_large_white customin customout tp-resizeme', 'center', 'center', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 0, -40, 500, 500, 'Power3.easeInOut', 'chars', 'chars', '0.08', '0.08', '4000', 500, '', '', 'z-index: 2; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(11, 4, 'ПОПРОБУЙТЕ Новое', 'tp-caption finewide_medium_white randomrotate customout tp-resizeme', 'center', 'center', '', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 0, 30, 500, 500, 'Power3.easeInOut', 'chars', 'chars', '0.08', '0.08', '4000', 500, '', '', 'z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(12, 4, '<strong>Курс \"30 встреч\"</strong>', 'tp-caption boldwide_small_white customin customout tp-resizeme', '100', '120', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', NULL, NULL, 300, 5000, 'Power3.easeInOut', 'none', 'none', '0.08', '0.08', '', 300, '', '', 'z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(13, 4, '&nbsp;', 'tp-caption whitedivider3px_vertical customin tp-resizeme', '420', '110', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', '', NULL, NULL, 300, 5500, 'Power3.easeInOut', 'none', 'none', '0.1', '0.1', '', 300, '', '', 'z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(14, 4, 'Ждет тебя', 'tp-caption finewide_small_white randomrotate customout tp-resizeme', '460', '120', '', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', NULL, NULL, 500, 6400, 'Power3.easeInOut', 'chars', 'chars', '', '', '', 300, '', '', 'z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(15, 4, 'Всегда', 'tp-caption finewide_small_white customin customout tp-resizeme', '460', '160', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', NULL, NULL, 500, 7200, 'Power3.easeInOut', 'words', 'words', '0.12', '0.12', '', 300, '', '', 'z-index: 8; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(16, 4, 'Присоединяйся', 'tp-caption finewide_small_white customin customout tp-resizeme', '460', '200', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', NULL, NULL, 500, 8000, 'Power3.easeInOut', 'none', 'none', '0.08', '0.08', '', 300, '', '', 'z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(17, 4, 'Курс \"30 встреч\" помогает познать себя и окружающий мир, раскрыть в себе новые способности,  не бояться изменять свою жизнь,  осознать свою способность быть счастливым и делиться этим счастьем с другими!', 'tp-caption finewide_verysmall_white_mw customin customout tp-resizem', '460', '250', 'x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', NULL, NULL, 900, 8000, 'Power3.easeInOut', 'lines', 'lines', '0.2', '0.08', '', 300, '', '', 'z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;', 0, '', '', '', ''),
(18, 4, 'Кнопка', 'tp-caption lfb', '100', '320', '', 'x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;', -90, NULL, 500, 9000, 'Back.easeOut', '', '', '', '', '', 500, 'Power4.easeIn', 'off', 'z-index: 21', 1, '/site/contact', '', 'Sign up for class', 'btn btn-default btn-lg'),
(19, 5, 'Жизнь не в том, чтобы найти себя! ', 'tp-caption medium_text lft', '90', '180', '', '', NULL, NULL, 300, 500, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(20, 5, 'Жизнь - это создание себя!', 'tp-caption large_text lfb', '90', '222', '', '', NULL, NULL, 300, 800, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(21, 5, 'Кнопка', 'tp-caption lfb', '90', '330', '', '', NULL, NULL, 300, 1100, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 1, '/site/blog', '', 'Learn more...', 'btn btn-primary btn-lg'),
(22, 6, 'Самое важное - это наслаждаться жизнью!', 'tp-caption medium_text lft', '90', '180', '', '', NULL, NULL, 300, 500, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(23, 6, 'Быть счастливым - это все, <br/> что имеет значение! ', 'tp-caption large_text lfb', '90', '222', '', '', NULL, NULL, 300, 800, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 0, '', '', '', ''),
(24, 6, 'Кнопка', 'tp-caption lfb', '90', '330', '', '', NULL, NULL, 300, 1100, 'easeOutExpo', '', '', '', '', '', NULL, '', '', '', 1, '/site/blog', '', 'Learn more...', 'btn btn-primary btn-lg');

-- --------------------------------------------------------

--
-- Структура таблицы `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(127) NOT NULL DEFAULT '',
  `keywords` text,
  `description` text,
  `index` smallint(6) NOT NULL DEFAULT '1',
  `follow` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `group` varchar(64) DEFAULT 'general',
  `key` varchar(64) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `value` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting`
--

INSERT INTO `setting` (`id`, `group`, `key`, `language`, `value`, `description`) VALUES
(1, 'general', 'title', 'en-US', 'artgornica.ru', NULL),
(2, 'general', 'description', 'en-US', '', NULL),
(3, 'general', 'email', NULL, 'elenaishanova@mail.ru', 'dgfdfg'),
(4, 'general', 'timezone', NULL, 'Europe/Moscow', NULL),
(5, 'general', 'dateformat', NULL, 'dd.MM.yyyy', NULL),
(6, 'general', 'timeformat', NULL, 'HH:mm', NULL),
(7, 'general', 'title', 'ru', 'Artgornica.ru', NULL),
(8, 'general', 'description', 'ru', '', NULL),
(9, 'reading', 'page_size', NULL, '10', NULL),
(10, 'reading', 'phone_mask', NULL, '+7 (999) 999 99 99', NULL),
(11, 'reading', 'date_mask', NULL, '99.99.9999', NULL),
(12, 'reading', 'time_mask', NULL, '99:99', NULL),
(13, 'reading', 'date_time_mask', NULL, '99.99.9999 99:99', NULL),
(14, 'general', 'phone', NULL, '+7 (916) 786-23-28', NULL),
(15, 'general', 'facebook', NULL, 'https://www.facebook.com/artgornica/', NULL),
(16, 'general', 'instagram', NULL, 'https://www.instagram.com/elenaishanova/', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `count` tinyint(2) NOT NULL,
  `url` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `count`, `url`) VALUES
(1, '30 встреч', 'name-1', 40, '/1'),
(2, 'Арт-терапия', 'name-2', 20, '/2'),
(3, 'Счастье есть', 'name-3', 10, '/3'),
(4, 'Исполни свою мечту', 'name-4', 50, '/4');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `superadmin` int(6) DEFAULT '0',
  `registration_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bind_to_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_confirmed` int(1) DEFAULT '0',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `first_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_day` int(2) DEFAULT NULL,
  `birth_month` int(2) DEFAULT NULL,
  `birth_year` int(4) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `superadmin`, `registration_ip`, `bind_to_ip`, `email_confirmed`, `confirmation_token`, `avatar`, `first_name`, `last_name`, `birth_day`, `birth_month`, `birth_year`, `gender`, `phone`, `skype`, `info`) VALUES
(1, 'admin', '', '$2y$13$A1YDrmT5WvvcZDK2NXY/sO0Dz/SmIuZlsPuJy57sHKobW7haodi3W', NULL, 'artmarkov@mail.ru', 10, 0, 1550524675, 1, NULL, '', 1, NULL, '{\"small\":\"\\/uploads\\/avatar\\/avatar_1_1550493083-48x48.jpg\",\"medium \":\"\\/uploads\\/avatar\\/avatar_1_1550493083-96x96.jpg\",\"large\":\"\\/uploads\\/avatar\\/avatar_1_1550493083-144x144.jpg\"}', 'Артур', 'Марков', 1, 4, 1971, 1, '+79055400746', 'artmarkov_skype', '1111'),
(2, 'ishanova', 'yMdSVV0avEq9xO4p7uO4uCuAeAHpizQc', '$2y$13$GSLxxXg33//qMJUXtHfWpOrc7MMQakpSRAP/dLNDRRWaBj5EYBai6', NULL, 'elenaishanova@mail.ru', 10, 1545848489, 1550602351, 1, '::1', '', 1, NULL, NULL, 'Елена', 'Ишанова', 26, 11, 1978, 2, '', '', ''),
(6, 'markov_av', 'DB6oF4FiE-4ERlXTnclkgwN4xJYuUhNR', '$2y$13$MdRtxjBZYYDPuiblQ37xdug1eCZzGE.d4NbenwWhWJrNCf6TPvgNC', NULL, 'artmarkov-71@yandex.ru', 0, 1546109689, 1547066520, 0, '::1', '', 1, NULL, NULL, '', '', NULL, 1, NULL, 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user_setting`
--

CREATE TABLE `user_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `os` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `browser`, `os`, `user_id`, `visit_time`) VALUES
(1, '5c617a487775e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1549892168),
(2, '5c62c9a6390f1', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1549978022),
(3, '5c642ace615d7', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550068430),
(4, '5c6aab56c556e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550494550),
(5, '5c6ab8050412b', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550497797),
(6, '5c6b17d2a2a22', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'mac', 1, 1550522322),
(7, '5c6b1c126152a', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'mac', 1, 1550523410),
(8, '5c6b1c921cc61', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'mac', 1, 1550523538),
(9, '5c6b1c9e05f0b', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'mac', 1, 1550523550),
(10, '5c6b1d1461217', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'mac', 1, 1550523668),
(11, '5c6bcb833a5fb', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550568323),
(12, '5c6bdfa850e97', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550573480),
(13, '5c6be178d2b7e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550573944),
(14, '5c6be20c24c32', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550574092),
(15, '5c6be2a2c0563', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550574242),
(16, '5c6be391e214d', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550574481),
(17, '5c6be46c5692a', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550574700),
(18, '5c6be61db6034', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550575133),
(19, '5c6be705249ea', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550575365),
(20, '5c6c10a476991', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550586020),
(21, '5c6c5037369f6', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 2, 1550602295),
(22, '5c6e5f1759a9c', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'Windows', 2, 1550737175),
(23, '5c702d326a583', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 2, 1550855474),
(24, '5c703e9367876', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550859923),
(25, '5c71161987534', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550915097),
(26, '5c712afe10dd6', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1550920446),
(27, '5c712b7bed5f7', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36', 'Chrome', 'Windows', 2, 1550920571),
(28, '5c712cf3e62bf', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 2, 1550920947),
(29, '5c712db2c1c63', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 2, 1550921138),
(30, '5c712ea297398', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 2, 1550921378),
(31, '5c763f870caad', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1551253383),
(32, '5c76424574ab6', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1551254085),
(33, '5c767928f057b', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1551268136),
(34, '5c76cff85dfd3', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551290360),
(35, '5c76daf9b86d7', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551293177),
(36, '5c76db159b063', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551293205),
(37, '5c76f7ca995ea', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551300554),
(38, '5c7bcd94dca87', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551617428),
(39, '5c7ccfb54be63', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1551683509),
(40, '5c7d21685af9e', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1551704424),
(41, '5c7eb0938ba91', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551806611),
(42, '5c802393e61b0', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'mac', 1, 1551901587),
(43, '5c854318937ff', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552237336),
(44, '5c855b2861ef5', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552243496),
(45, '5c876896e0329', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 'Chrome', 'Windows', 1, 1552378006),
(46, '5c881f6ccd5d7', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552424812),
(47, '5c88d7392ace3', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552471865),
(48, '5c88f229165ea', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552478761),
(49, '5c890650b5c8a', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552483920),
(50, '5c8a4e54866be', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552567892),
(51, '5c8a6a0c46385', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552574988),
(52, '5c8a6bd9bcef7', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552575449),
(53, '5c8b6fad43ad6', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552641965),
(54, '5c8b7cada6725', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552645293),
(55, '5c8b96d9d0a20', '127.0.0.1', 'ru', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'Chrome', 'Windows', 1, 1552651993),
(56, '5c8bcd982735f', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552666009),
(57, '5c8bd33863f58', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552667448),
(58, '5c8bdf0a20d1f', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552670474),
(59, '5c8c078a7bfe4', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552680842),
(60, '5c8cb7c2e1a2e', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552725954),
(61, '5c8cc10e63852', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552728334),
(62, '5c8cc9ac454f0', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552730540),
(63, '5c8cd78d8848d', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552734093),
(64, '5c8cd8e2221d2', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552734434),
(65, '5c8d55858866c', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552766341),
(66, '5c8d575d3ec81', '::1', 'ru', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'Chrome', 'mac', 1, 1552766813);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_auth_user` (`user_id`);

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `fk_user_id_auth_assignment_table` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `auth_item_type` (`type`),
  ADD KEY `fk_auth_item_table_rule_name` (`rule_name`),
  ADD KEY `fk_auth_item_table_group_code` (`group_code`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `fk_child_auth_item_child_table` (`child`);

--
-- Индексы таблицы `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_model` (`model`),
  ADD KEY `comment_model_id` (`model`,`model_id`),
  ADD KEY `comment_status` (`status`),
  ADD KEY `comment_reply` (`parent_id`),
  ADD KEY `comment_super_parent_id` (`super_parent_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_item`
--
ALTER TABLE `event_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_item_practice`
--
ALTER TABLE `event_item_practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `practice_id` (`practice_id`);

--
-- Индексы таблицы `event_item_programm`
--
ALTER TABLE `event_item_programm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `prigramm_id` (`programm_id`);

--
-- Индексы таблицы `event_item_programm_practice`
--
ALTER TABLE `event_item_programm_practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_programm_id`),
  ADD KEY `practice_id` (`practice_id`);

--
-- Индексы таблицы `event_methods`
--
ALTER TABLE `event_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_place`
--
ALTER TABLE `event_place`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `event_plan`
--
ALTER TABLE `event_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`programm_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Индексы таблицы `event_practice`
--
ALTER TABLE `event_practice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `methods_id` (`methods_id`);

--
-- Индексы таблицы `event_programm`
--
ALTER TABLE `event_programm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vid_id` (`vid_id`);

--
-- Индексы таблицы `event_schedule`
--
ALTER TABLE `event_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`programm_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `item_id` (`item_programm_id`);

--
-- Индексы таблицы `event_schedule_users`
--
ALTER TABLE `event_schedule_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `event_vid`
--
ALTER TABLE `event_vid`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image_manager`
--
ALTER TABLE `image_manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_media_album` (`album_id`),
  ADD KEY `fk_media_created_by` (`created_by`),
  ADD KEY `fk_media_updated_by` (`updated_by`);

--
-- Индексы таблицы `media_album`
--
ALTER TABLE `media_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_album_slug` (`slug`),
  ADD KEY `media_album_visible` (`visible`),
  ADD KEY `fk_album_category` (`category_id`),
  ADD KEY `fk_media_album_created_by` (`created_by`),
  ADD KEY `fk_media_album_updated_by` (`updated_by`);

--
-- Индексы таблицы `media_album_lang`
--
ALTER TABLE `media_album_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_album_lang_language` (`language`),
  ADD KEY `fk_media_album_lang` (`media_album_id`);

--
-- Индексы таблицы `media_category`
--
ALTER TABLE `media_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_category_slug` (`slug`),
  ADD KEY `media_category_visible` (`visible`),
  ADD KEY `fk_media_category_created_by` (`created_by`),
  ADD KEY `fk_media_category_updated_by` (`updated_by`);

--
-- Индексы таблицы `media_category_lang`
--
ALTER TABLE `media_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_category_lang_language` (`language`),
  ADD KEY `fk_media_category_lang` (`media_category_id`);

--
-- Индексы таблицы `media_lang`
--
ALTER TABLE `media_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_lang_language` (`language`),
  ADD KEY `fk_media_lang` (`media_id`);

--
-- Индексы таблицы `media_manager`
--
ALTER TABLE `media_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`);

--
-- Индексы таблицы `media_upload`
--
ALTER TABLE `media_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_upload_owner_class` (`owner_class`),
  ADD KEY `media_upload_owner_id` (`owner_id`),
  ADD KEY `fk_media_upload_media_id` (`media_id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_created_by` (`created_by`),
  ADD KEY `fk_menu_updated_by` (`updated_by`);

--
-- Индексы таблицы `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_lang_post_id` (`menu_id`),
  ADD KEY `menu_lang_language` (`language`);

--
-- Индексы таблицы `menu_link`
--
ALTER TABLE `menu_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_menu_id` (`menu_id`),
  ADD KEY `link_parent_id` (`parent_id`),
  ADD KEY `fk_menu_link_created_by` (`created_by`),
  ADD KEY `fk_menu_link_updated_by` (`updated_by`);

--
-- Индексы таблицы `menu_link_lang`
--
ALTER TABLE `menu_link_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_link_lang_link_id` (`link_id`),
  ADD KEY `menu_link_lang_language` (`language`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_index` (`source_id`,`language`);

--
-- Индексы таблицы `message_source`
--
ALTER TABLE `message_source`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_slug` (`slug`),
  ADD KEY `page_status` (`status`);

--
-- Индексы таблицы `page_lang`
--
ALTER TABLE `page_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_lang_post_id` (`page_id`),
  ADD KEY `page_lang_language` (`language`);

--
-- Индексы таблицы `portfolio_category`
--
ALTER TABLE `portfolio_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_items`
--
ALTER TABLE `portfolio_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `portfolio_items_category`
--
ALTER TABLE `portfolio_items_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_items_category_ibfk_1` (`items_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `portfolio_menu`
--
ALTER TABLE `portfolio_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_menu_category`
--
ALTER TABLE `portfolio_menu_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_items_category_ibfk_1` (`menu_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_slug` (`slug`),
  ADD KEY `post_category_id` (`category_id`),
  ADD KEY `post_status` (`status`),
  ADD KEY `fk_page_created_by` (`created_by`),
  ADD KEY `fk_page_updated_by` (`updated_by`);

--
-- Индексы таблицы `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_slug` (`slug`),
  ADD KEY `post_category_visible` (`visible`),
  ADD KEY `left_border` (`left_border`,`right_border`),
  ADD KEY `right_border` (`right_border`),
  ADD KEY `fk_post_category_created_by` (`created_by`),
  ADD KEY `fk_post_category_updated_by` (`updated_by`);

--
-- Индексы таблицы `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_lang_id` (`post_category_id`),
  ADD KEY `post_category_lang_language` (`language`);

--
-- Индексы таблицы `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_lang_post_id` (`post_id`),
  ADD KEY `post_lang_language` (`language`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_slug` (`slug`),
  ADD KEY `fk_post_tag_created_by` (`created_by`),
  ADD KEY `fk_post_tag_updated_by` (`updated_by`);

--
-- Индексы таблицы `post_tag_lang`
--
ALTER TABLE `post_tag_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_lang_id` (`post_tag_id`),
  ADD KEY `post_tag_lang_language` (`language`);

--
-- Индексы таблицы `post_tag_post`
--
ALTER TABLE `post_tag_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_tag_post_id` (`post_id`),
  ADD KEY `fk_post_tag_tag_id` (`tag_id`);

--
-- Индексы таблицы `section_block`
--
ALTER TABLE `section_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Индексы таблицы `section_carousel`
--
ALTER TABLE `section_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `section_feedback`
--
ALTER TABLE `section_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `section_item`
--
ALTER TABLE `section_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_item_ibfk_1` (`page_id`);

--
-- Индексы таблицы `section_page`
--
ALTER TABLE `section_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `section_parallax`
--
ALTER TABLE `section_parallax`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `section_slides`
--
ALTER TABLE `section_slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `section_slides_layers`
--
ALTER TABLE `section_slides_layers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_id` (`slides_id`);

--
-- Индексы таблицы `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`),
  ADD UNIQUE KEY `seo_url` (`url`),
  ADD KEY `seo_created_by` (`created_by`),
  ADD KEY `seo_author` (`created_by`),
  ADD KEY `fk_seo_updated_by` (`updated_by`);

--
-- Индексы таблицы `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_group_lang` (`group`,`key`,`language`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_setting_user_key` (`user_id`,`key`);

--
-- Индексы таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_log_user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `event_item`
--
ALTER TABLE `event_item`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `event_item_practice`
--
ALTER TABLE `event_item_practice`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `event_item_programm`
--
ALTER TABLE `event_item_programm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT для таблицы `event_item_programm_practice`
--
ALTER TABLE `event_item_programm_practice`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `event_methods`
--
ALTER TABLE `event_methods`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `event_place`
--
ALTER TABLE `event_place`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `event_plan`
--
ALTER TABLE `event_plan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `event_practice`
--
ALTER TABLE `event_practice`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `event_programm`
--
ALTER TABLE `event_programm`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `event_schedule`
--
ALTER TABLE `event_schedule`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `event_schedule_users`
--
ALTER TABLE `event_schedule_users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `event_vid`
--
ALTER TABLE `event_vid`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `image_manager`
--
ALTER TABLE `image_manager`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT для таблицы `media_album`
--
ALTER TABLE `media_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `media_album_lang`
--
ALTER TABLE `media_album_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `media_category`
--
ALTER TABLE `media_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `media_category_lang`
--
ALTER TABLE `media_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `media_lang`
--
ALTER TABLE `media_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT для таблицы `media_manager`
--
ALTER TABLE `media_manager`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT для таблицы `media_upload`
--
ALTER TABLE `media_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menu_link_lang`
--
ALTER TABLE `menu_link_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT для таблицы `message_source`
--
ALTER TABLE `message_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `page_lang`
--
ALTER TABLE `page_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `portfolio_category`
--
ALTER TABLE `portfolio_category`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `portfolio_items`
--
ALTER TABLE `portfolio_items`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT для таблицы `portfolio_items_category`
--
ALTER TABLE `portfolio_items_category`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `portfolio_menu`
--
ALTER TABLE `portfolio_menu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `portfolio_menu_category`
--
ALTER TABLE `portfolio_menu_category`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT для таблицы `post_tag_lang`
--
ALTER TABLE `post_tag_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `post_tag_post`
--
ALTER TABLE `post_tag_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT для таблицы `section_block`
--
ALTER TABLE `section_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `section_carousel`
--
ALTER TABLE `section_carousel`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `section_feedback`
--
ALTER TABLE `section_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `section_item`
--
ALTER TABLE `section_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `section_page`
--
ALTER TABLE `section_page`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `section_parallax`
--
ALTER TABLE `section_parallax`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `section_slides`
--
ALTER TABLE `section_slides`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `section_slides_layers`
--
ALTER TABLE `section_slides_layers`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_setting`
--
ALTER TABLE `user_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `fk_item_name_auth_assignment_table` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id_auth_assignment_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `fk_auth_item_table_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_table_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `fk_child_auth_item_child_table` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_parent_auth_item_child_table` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `event_item_practice`
--
ALTER TABLE `event_item_practice`
  ADD CONSTRAINT `event_item_practice_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `event_item` (`id`),
  ADD CONSTRAINT `event_item_practice_ibfk_2` FOREIGN KEY (`practice_id`) REFERENCES `event_practice` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_item_programm`
--
ALTER TABLE `event_item_programm`
  ADD CONSTRAINT `event_item_programm_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `event_item` (`id`),
  ADD CONSTRAINT `event_item_programm_ibfk_2` FOREIGN KEY (`programm_id`) REFERENCES `event_programm` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_item_programm_practice`
--
ALTER TABLE `event_item_programm_practice`
  ADD CONSTRAINT `event_item_programm_practice_ibfk_1` FOREIGN KEY (`item_programm_id`) REFERENCES `event_item_programm` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_item_programm_practice_ibfk_2` FOREIGN KEY (`practice_id`) REFERENCES `event_practice` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_plan`
--
ALTER TABLE `event_plan`
  ADD CONSTRAINT `event_plan_ibfk_1` FOREIGN KEY (`programm_id`) REFERENCES `event_programm` (`id`),
  ADD CONSTRAINT `event_plan_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `event_place` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_practice`
--
ALTER TABLE `event_practice`
  ADD CONSTRAINT `event_practice_ibfk_1` FOREIGN KEY (`methods_id`) REFERENCES `event_methods` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_programm`
--
ALTER TABLE `event_programm`
  ADD CONSTRAINT `event_programm_ibfk_1` FOREIGN KEY (`vid_id`) REFERENCES `event_vid` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_schedule`
--
ALTER TABLE `event_schedule`
  ADD CONSTRAINT `event_schedule_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `event_place` (`id`),
  ADD CONSTRAINT `event_schedule_ibfk_3` FOREIGN KEY (`programm_id`) REFERENCES `event_programm` (`id`),
  ADD CONSTRAINT `event_schedule_ibfk_4` FOREIGN KEY (`item_programm_id`) REFERENCES `event_item_programm` (`id`);

--
-- Ограничения внешнего ключа таблицы `event_schedule_users`
--
ALTER TABLE `event_schedule_users`
  ADD CONSTRAINT `event_schedule_users_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `event_schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_schedule_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `fk_media_album` FOREIGN KEY (`album_id`) REFERENCES `media_album` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `media_manager`
--
ALTER TABLE `media_manager`
  ADD CONSTRAINT `media_manager_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;