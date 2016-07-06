-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2016 a las 01:22:52
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dream_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_commentmeta`
--

CREATE TABLE IF NOT EXISTS `dl_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_comments`
--

CREATE TABLE IF NOT EXISTS `dl_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dl_comments`
--

INSERT INTO `dl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr WordPress', '', 'https://wordpress.org/', '', '2016-06-24 22:07:50', '2016-06-24 22:07:50', 'Hola, esto es un comentario.\nPara borrar un comentario simplemente accede y revisa los comentarios de la entrada. Ahí tendrás la opción de editarlo o borrarlo.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_links`
--

CREATE TABLE IF NOT EXISTS `dl_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_options`
--

CREATE TABLE IF NOT EXISTS `dl_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=462 ;

--
-- Volcado de datos para la tabla `dl_options`
--

INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://seven.com/dream', 'yes'),
(2, 'home', 'http://seven.com/dream', 'yes'),
(3, 'blogname', 'Dreamlopers', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jheancg@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:21:"polylang/polylang.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '4', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:61:"C:\\xampp\\htdocs\\dream/wp-content/themes/dreamlopers/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'dreamlopers', 'yes'),
(41, 'stylesheet', 'dreamlopers', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '29', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'dl_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'es_ES', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1467837290;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1467842873;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1467843105;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(114, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:17:"jheancg@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1466806090;}', 'yes'),
(117, '_site_transient_timeout_browser_cc3e81f38bdedf75fc40dbcb80756926', '1467410898', 'yes'),
(118, '_site_transient_browser_cc3e81f38bdedf75fc40dbcb80756926', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(120, 'can_compress_scripts', '1', 'yes'),
(131, '_transient_twentysixteen_categories', '1', 'yes'),
(135, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1466809494;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(136, 'current_theme', 'Dreamlopers', 'yes'),
(137, 'theme_mods_dreamlopers', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:4:"main";i:2;s:8:"menu_bot";i:15;s:8:"menu_top";i:19;}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(149, '_site_transient_timeout_browser_29a5550ff032b122d0db2bedcaa3df2c', '1467459841', 'yes'),
(150, '_site_transient_browser_29a5550ff032b122d0db2bedcaa3df2c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'core_updater.lock', '1466884769', 'no'),
(173, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1466895659', 'yes'),
(174, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5926";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3671";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3617";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3136";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2807";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2399";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2226";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2052";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2039";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1995";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1938";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1875";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1756";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1694";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1591";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1547";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1402";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1320";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1232";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1117";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1093";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"997";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"987";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"927";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"918";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"917";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"914";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"842";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"836";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"799";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"782";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"776";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"763";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"762";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"758";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"754";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"745";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"712";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"704";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"695";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"693";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"692";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"667";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"653";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"647";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"617";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"614";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"606";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"599";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"598";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"591";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"583";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"579";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"571";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"565";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"557";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"556";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"538";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"525";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"517";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"515";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"511";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"508";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"486";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"470";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"465";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"464";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"463";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"447";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"445";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"424";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"423";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"410";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"405";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"403";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"395";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"395";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"394";}}', 'yes'),
(177, '_site_transient_timeout_available_translations', '1466895998', 'yes');
INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(178, '_site_transient_available_translations', 'a:81:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 14:49:09";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-17 11:01:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-12 17:20:10";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 05:39:37";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-14 00:07:52";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 06:41:57";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-09 10:11:54";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 18:57:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 09:40:08";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-11 06:46:15";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 22:14:55";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 15:13:48";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 12:36:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 05:52:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 17:52:25";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 13:40:41";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 07:40:08";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(186, 'polylang', 'a:14:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:0;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"1.9.2";s:12:"default_lang";s:2:"en";s:9:"nav_menus";a:1:{s:11:"dreamlopers";a:3:{s:4:"main";a:2:{s:2:"en";i:2;s:2:"es";i:11;}s:8:"menu_bot";a:2:{s:2:"en";i:15;s:2:"es";i:18;}s:8:"menu_top";a:2:{s:2:"en";i:19;s:2:"es";i:20;}}}}', 'yes'),
(187, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(188, 'rewrite_rules', 'a:149:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:55:"(en|es)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:50:"(en|es)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]";s:31:"(en|es)/category/(.+?)/embed/?$";s:63:"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true";s:43:"(en|es)/category/(.+?)/page/?([0-9]{1,})/?$";s:70:"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]";s:25:"(en|es)/category/(.+?)/?$";s:52:"index.php?lang=$matches[1]&category_name=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:52:"(en|es)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:47:"(en|es)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]";s:28:"(en|es)/tag/([^/]+)/embed/?$";s:53:"index.php?lang=$matches[1]&tag=$matches[2]&embed=true";s:40:"(en|es)/tag/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]";s:22:"(en|es)/tag/([^/]+)/?$";s:42:"index.php?lang=$matches[1]&tag=$matches[2]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:53:"(en|es)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:48:"(en|es)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]";s:29:"(en|es)/type/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true";s:41:"(en|es)/type/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]";s:23:"(en|es)/type/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&post_format=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:40:"(en|es)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:35:"(en|es)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?lang=$matches[1]&&feed=$matches[2]";s:16:"(en|es)/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:28:"(en|es)/page/?([0-9]{1,})/?$";s:45:"index.php?lang=$matches[1]&&paged=$matches[2]";s:35:"(en|es)/comment-page-([0-9]{1,})/?$";s:55:"index.php?lang=$matches[1]&&page_id=2&cpage=$matches[2]";s:10:"(en|es)/?$";s:26:"index.php?lang=$matches[1]";s:49:"(en|es)/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:44:"(en|es)/comments/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1";s:25:"(en|es)/comments/embed/?$";s:38:"index.php?lang=$matches[1]&&embed=true";s:52:"(en|es)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:47:"(en|es)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]";s:28:"(en|es)/search/(.+)/embed/?$";s:51:"index.php?lang=$matches[1]&s=$matches[2]&embed=true";s:40:"(en|es)/search/(.+)/page/?([0-9]{1,})/?$";s:58:"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]";s:22:"(en|es)/search/(.+)/?$";s:40:"index.php?lang=$matches[1]&s=$matches[2]";s:55:"(en|es)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:50:"(en|es)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]";s:31:"(en|es)/author/([^/]+)/embed/?$";s:61:"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true";s:43:"(en|es)/author/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]";s:25:"(en|es)/author/([^/]+)/?$";s:50:"index.php?lang=$matches[1]&author_name=$matches[2]";s:77:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:72:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]";s:53:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:91:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true";s:65:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:98:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]";s:47:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:80:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]";s:64:"(en|es)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:59:"(en|es)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:40:"(en|es)/([0-9]{4})/([0-9]{1,2})/embed/?$";s:75:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true";s:52:"(en|es)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:82:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]";s:34:"(en|es)/([0-9]{4})/([0-9]{1,2})/?$";s:64:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]";s:51:"(en|es)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:46:"(en|es)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:60:"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]";s:27:"(en|es)/([0-9]{4})/embed/?$";s:54:"index.php?lang=$matches[1]&year=$matches[2]&embed=true";s:39:"(en|es)/([0-9]{4})/page/?([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]";s:21:"(en|es)/([0-9]{4})/?$";s:43:"index.php?lang=$matches[1]&year=$matches[2]";s:66:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:76:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:96:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:91:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:91:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:72:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:61:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:108:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true";s:65:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:102:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1";s:85:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]";s:80:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]";s:73:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:115:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]";s:80:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:115:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]";s:69:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:114:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]";s:55:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:65:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:85:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:80:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:80:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:61:"(en|es)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:72:"(en|es)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:98:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]";s:59:"(en|es)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:82:"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]";s:46:"(en|es)/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:61:"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:35:"(en|es)/.?.+?/attachment/([^/]+)/?$";s:49:"index.php?lang=$matches[1]&attachment=$matches[2]";s:45:"(en|es)/.?.+?/attachment/([^/]+)/trackback/?$";s:54:"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1";s:65:"(en|es)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:60:"(en|es)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:66:"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]";s:60:"(en|es)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:67:"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]";s:41:"(en|es)/.?.+?/attachment/([^/]+)/embed/?$";s:60:"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true";s:24:"(en|es)/(.?.+?)/embed/?$";s:58:"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true";s:28:"(en|es)/(.?.+?)/trackback/?$";s:52:"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1";s:48:"(en|es)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:43:"(en|es)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]";s:36:"(en|es)/(.?.+?)/page/?([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]";s:43:"(en|es)/(.?.+?)/comment-page-([0-9]{1,})/?$";s:65:"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]";s:32:"(en|es)/(.?.+?)(?:/([0-9]+))?/?$";s:64:"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(189, 'widget_polylang', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(406, '_transient_timeout_plugin_slugs', '1467812426', 'no'),
(407, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:21:"polylang/polylang.php";}', 'no'),
(408, '_transient_timeout_dash_c05853b002c443ec8e57ff884f56cdde', '1467769226', 'no'),
(409, '_transient_dash_c05853b002c443ec8e57ff884f56cdde', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: es.wordpress.org</p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(432, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(440, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:"term_id";i:3;s:4:"name";s:7:"English";s:4:"slug";s:2:"en";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:3;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"en_GB";s:6:"parent";i:0;s:5:"count";i:10;s:10:"tl_term_id";i:4;s:19:"tl_term_taxonomy_id";i:4;s:8:"tl_count";i:4;s:6:"locale";R:9;s:6:"is_rtl";i:0;s:8:"flag_url";s:63:"http://seven.com/dream/wp-content/plugins/polylang/flags/gb.png";s:4:"flag";s:866:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAflJREFUeNpinDRzn5qN3uFDt16+YWBg+Pv339+KGN0rbVP+//2rW5tf0Hfy/2+mr99+yKpyOl3Ydt8njEWIn8f9zj639NC7j78eP//8739GVUUhNUNuhl8//ysKeZrJ/v7z10Zb2PTQTIY1XZO2Xmfad+f7XgkXxuUrVB6cjPVXef78JyMjA8PFuwyX7gAZj97+T2e9o3d4BWNp84K1NzubTjAB3fH0+fv6N3qP/ir9bW6ozNQCijB8/8zw/TuQ7r4/ndvN5mZgkpPXiis3Pv34+ZPh5t23//79Rwehof/9/NDEgMrOXHvJcrllgpoRN8PFOwy/fzP8+gUlgZI/f/5xcPj/69e/37//AUX+/mXRkN555gsOG2xt/5hZQMwF4r9///75++f3nz8nr75gSms82jfvQnT6zqvXPjC8e/srJQHo9P9fvwNtAHmG4f8zZ6dDc3bIyM2LTNlsbtfM9OPHH3FhtqUz3eXX9H+cOy9ZMB2o6t/Pn0DHMPz/b+2wXGTvPlPGFxdcD+mZyjP8+8MUE6sa7a/xo6Pykn1s4zdzIZ6///8zMGpKM2pKAB0jqy4UE7/msKat6Jw5mafrsxNtWZ6/fjvNLW29qv25pQd///n+5+/fxDDVbcc//P/zx/36m5Ub9zL8+7t66yEROcHK7q5bldMBAgwADcRBCuVLfoEAAAAASUVORK5CYII=" title="English" alt="English" />";s:8:"home_url";s:31:"http://seven.com/dream/en/home/";s:10:"search_url";s:26:"http://seven.com/dream/en/";s:4:"host";N;s:5:"mo_id";s:2:"11";s:13:"page_on_front";s:1:"2";s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"gb";}i:1;a:24:{s:7:"term_id";i:6;s:4:"name";s:8:"Español";s:4:"slug";s:2:"es";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:6;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"es_VE";s:6:"parent";i:0;s:5:"count";i:5;s:10:"tl_term_id";i:7;s:19:"tl_term_taxonomy_id";i:7;s:8:"tl_count";i:3;s:6:"locale";R:33;s:6:"is_rtl";i:0;s:8:"flag_url";s:63:"http://seven.com/dream/wp-content/plugins/polylang/flags/ve.png";s:4:"flag";s:772:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGiSURBVHjaYvz7mmHXCwYGJgYPIYZ//xhA4B8I/YMjIO8PmPEHhAACiMVlDcOmz/WcRX/XXuMN0nnHwPD3//+/DAx/GP//YWb4w/T/9///f/7DyC+nNgEEEAvTP4YJv+Kf5P4KKpzIwPABKArW8xsJ/QKj34yMskAbAAKIZY8Hw3/F2QwMjyHqwOQvmKlQpRCSgeE3UANAAAAxAM7/AQAAwXZ2I+Li+fz8APz7/vv8/56eHQkJAv////X1/EpK3fv7/vr6/vv7/x8fB8HBvgKICeSlPyA+UAJIAlXv2fPZ0/OOq+vtbds+bd6sCFQNQUBlQL8BBBALEP/9y/Dnz/9fv/8vmA9SPW3aq1+//gNV9PW9/Pnz767dylaWNyEmAhUDBBCjM4N1dlb+2/tv/wI1/vrz9/ffPxDy95+/QFNBJNABf//8+SuiJFJ6rgoggFi2MRxl/qP97/c9BrAh/8GGQxlwkT+/ge5g/KsSwsAAEEAsQGuYfv9hkJQEygFFgR4H6mQEsf8wQEggAjoajICKAQKI8Ss0ZqGIAZWLJgUEAAEGAH/0WnST1zi/AAAAAElFTkSuQmCC" title="Español" alt="Español" />";s:8:"home_url";s:33:"http://seven.com/dream/es/inicio/";s:10:"search_url";s:26:"http://seven.com/dream/es/";s:4:"host";N;s:5:"mo_id";s:2:"12";s:13:"page_on_front";i:13;s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"ve";}}', 'yes'),
(442, '_site_transient_timeout_browser_bc5bf2385512f2fbb9c7481bce116923', '1468356456', 'yes'),
(443, '_site_transient_browser_bc5bf2385512f2fbb9c7481bce116923', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"49.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(456, '_site_transient_timeout_theme_roots', '1467817143', 'yes'),
(457, '_site_transient_theme_roots', 'a:4:{s:11:"dreamlopers";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(459, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.5.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.3-partial-2.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.2";}i:2;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.5.3.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-4.5.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:12:"notify_email";s:1:"1";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1467815348;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 06:41:57";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(460, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1467815352;s:7:"checked";a:4:{s:11:"dreamlopers";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:5:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:5:"en_GB";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2015-07-06 07:49:27";s:7:"package";s:77:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.5/en_GB.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentyfifteen";s:8:"language";s:5:"es_VE";s:7:"version";s:3:"1.5";s:7:"updated";s:19:"2015-10-29 16:42:00";s:7:"package";s:77:"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.5/es_VE.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentyfourteen";s:8:"language";s:5:"en_GB";s:7:"version";s:3:"1.7";s:7:"updated";s:19:"2015-03-30 10:11:51";s:7:"package";s:78:"https://downloads.wordpress.org/translation/theme/twentyfourteen/1.7/en_GB.zip";s:10:"autoupdate";b:1;}i:3;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:14:"twentyfourteen";s:8:"language";s:5:"es_VE";s:7:"version";s:3:"1.7";s:7:"updated";s:19:"2015-10-29 16:34:29";s:7:"package";s:78:"https://downloads.wordpress.org/translation/theme/twentyfourteen/1.7/es_VE.zip";s:10:"autoupdate";b:1;}i:4;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:13:"twentysixteen";s:8:"language";s:5:"en_GB";s:7:"version";s:3:"1.2";s:7:"updated";s:19:"2015-11-21 11:55:23";s:7:"package";s:77:"https://downloads.wordpress.org/translation/theme/twentysixteen/1.2/en_GB.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(461, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1467815350;s:8:"response";a:1:{s:21:"polylang/polylang.php";O:8:"stdClass":8:{s:2:"id";s:5:"25780";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"1.9.3";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/polylang.1.9.3.zip";s:6:"tested";s:5:"4.5.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"en_GB";s:7:"version";s:6:"3.1.11";s:7:"updated";s:19:"2016-05-12 18:04:18";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/en_GB.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"es_VE";s:7:"version";s:6:"3.1.11";s:7:"updated";s:19:"2016-05-29 13:02:27";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/es_VE.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"es_ES";s:7:"version";s:6:"3.1.11";s:7:"updated";s:19:"2016-05-12 18:06:17";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/es_ES.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_postmeta`
--

CREATE TABLE IF NOT EXISTS `dl_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=542 ;

--
-- Volcado de datos para la tabla `dl_postmeta`
--

INSERT INTO `dl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-frontpage.php'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://seven.com/dream/'),
(10, 4, '_menu_item_orphaned', '1466809650'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(19, 5, '_menu_item_orphaned', '1466809651'),
(20, 2, '_edit_lock', '1466892088:1'),
(21, 2, '_edit_last', '1'),
(32, 13, '_wp_page_template', 'page-frontpage-es.php'),
(33, 13, '_edit_last', '1'),
(34, 13, '_edit_lock', '1467128428:1'),
(35, 15, '_menu_item_type', 'custom'),
(36, 15, '_menu_item_menu_item_parent', '0'),
(37, 15, '_menu_item_object_id', '15'),
(38, 15, '_menu_item_object', 'custom'),
(39, 15, '_menu_item_target', ''),
(40, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 15, '_menu_item_xfn', ''),
(42, 15, '_menu_item_url', '#pll_switcher'),
(44, 15, '_pll_menu_item', 'a:5:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:1;s:10:"force_home";i:0;s:10:"show_flags";i:1;s:10:"show_names";i:0;}'),
(45, 16, '_menu_item_type', 'post_type'),
(46, 16, '_menu_item_menu_item_parent', '0'),
(47, 16, '_menu_item_object_id', '13'),
(48, 16, '_menu_item_object', 'page'),
(49, 16, '_menu_item_target', ''),
(50, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 16, '_menu_item_xfn', ''),
(52, 16, '_menu_item_url', ''),
(54, 17, '_menu_item_type', 'custom'),
(55, 17, '_menu_item_menu_item_parent', '0'),
(56, 17, '_menu_item_object_id', '17'),
(57, 17, '_menu_item_object', 'custom'),
(58, 17, '_menu_item_target', ''),
(59, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 17, '_menu_item_xfn', ''),
(61, 17, '_menu_item_url', '#pll_switcher'),
(63, 17, '_pll_menu_item', 'a:5:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:1;s:10:"force_home";i:0;s:10:"show_flags";i:1;s:10:"show_names";i:0;}'),
(64, 19, '_menu_item_type', 'custom'),
(65, 19, '_menu_item_menu_item_parent', '0'),
(66, 19, '_menu_item_object_id', '19'),
(67, 19, '_menu_item_object', 'custom'),
(68, 19, '_menu_item_target', ''),
(69, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 19, '_menu_item_xfn', ''),
(71, 19, '_menu_item_url', '#home'),
(72, 19, '_menu_item_orphaned', '1466892305'),
(82, 21, '_menu_item_type', 'custom'),
(83, 21, '_menu_item_menu_item_parent', '0'),
(84, 21, '_menu_item_object_id', '21'),
(85, 21, '_menu_item_object', 'custom'),
(86, 21, '_menu_item_target', ''),
(87, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 21, '_menu_item_xfn', ''),
(89, 21, '_menu_item_url', '#why'),
(91, 22, '_menu_item_type', 'custom'),
(92, 22, '_menu_item_menu_item_parent', '0'),
(93, 22, '_menu_item_object_id', '22'),
(94, 22, '_menu_item_object', 'custom'),
(95, 22, '_menu_item_target', ''),
(96, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 22, '_menu_item_xfn', ''),
(98, 22, '_menu_item_url', '#how'),
(100, 23, '_menu_item_type', 'custom'),
(101, 23, '_menu_item_menu_item_parent', '0'),
(102, 23, '_menu_item_object_id', '23'),
(103, 23, '_menu_item_object', 'custom'),
(104, 23, '_menu_item_target', ''),
(105, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 23, '_menu_item_xfn', ''),
(107, 23, '_menu_item_url', '#what'),
(119, 26, '_wp_attached_file', '2016/06/img-favicon.png'),
(120, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:513;s:6:"height";i:513;s:4:"file";s:23:"2016/06/img-favicon.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"img-favicon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"img-favicon-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 27, '_wp_attached_file', '2016/06/cropped-img-favicon.png'),
(122, 27, '_wp_attachment_context', 'site-icon'),
(123, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:31:"2016/06/cropped-img-favicon.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-img-favicon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"cropped-img-favicon-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:31:"cropped-img-favicon-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:31:"cropped-img-favicon-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:31:"cropped-img-favicon-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:29:"cropped-img-favicon-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 28, '_wp_attached_file', '2016/06/img-favicon-grd.png'),
(125, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:27:"2016/06/img-favicon-grd.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"img-favicon-grd-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"img-favicon-grd-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 29, '_wp_attached_file', '2016/06/cropped-img-favicon-grd.png'),
(127, 29, '_wp_attachment_context', 'site-icon'),
(128, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:35:"2016/06/cropped-img-favicon-grd.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"cropped-img-favicon-grd-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"cropped-img-favicon-grd-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:35:"cropped-img-favicon-grd-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:35:"cropped-img-favicon-grd-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:35:"cropped-img-favicon-grd-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:33:"cropped-img-favicon-grd-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 30, '_edit_last', '1'),
(130, 30, '_edit_lock', '1467123503:1'),
(131, 30, '_wp_page_template', 'page-news.php'),
(132, 32, '_wp_page_template', 'default'),
(133, 32, '_edit_last', '1'),
(134, 32, '_edit_lock', '1467069636:1'),
(144, 1, '_edit_lock', '1467206247:1'),
(145, 1, '_edit_last', '1'),
(148, 36, '_edit_last', '1'),
(149, 36, '_edit_lock', '1467206159:1'),
(150, 39, '_edit_last', '1'),
(151, 39, '_edit_lock', '1467206414:1'),
(154, 41, '_edit_last', '1'),
(155, 41, '_edit_lock', '1467159038:1'),
(158, 43, '_menu_item_type', 'post_type'),
(159, 43, '_menu_item_menu_item_parent', '0'),
(160, 43, '_menu_item_object_id', '30'),
(161, 43, '_menu_item_object', 'page'),
(162, 43, '_menu_item_target', ''),
(163, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 43, '_menu_item_xfn', ''),
(165, 43, '_menu_item_url', ''),
(167, 44, '_menu_item_type', 'post_type'),
(168, 44, '_menu_item_menu_item_parent', '0'),
(169, 44, '_menu_item_object_id', '2'),
(170, 44, '_menu_item_object', 'page'),
(171, 44, '_menu_item_target', ''),
(172, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 44, '_menu_item_xfn', ''),
(174, 44, '_menu_item_url', ''),
(194, 47, '_menu_item_type', 'custom'),
(195, 47, '_menu_item_menu_item_parent', '0'),
(196, 47, '_menu_item_object_id', '47'),
(197, 47, '_menu_item_object', 'custom'),
(198, 47, '_menu_item_target', ''),
(199, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 47, '_menu_item_xfn', ''),
(201, 47, '_menu_item_url', 'http://seven.com/dream/en/home/#home'),
(202, 49, '_wp_attached_file', '2016/06/amilcar_sonriendo.jpg'),
(203, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:480;s:4:"file";s:29:"2016/06/amilcar_sonriendo.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"amilcar_sonriendo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"amilcar_sonriendo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:29:"amilcar_sonriendo-480x372.jpg";s:5:"width";i:480;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(204, 50, '_wp_attached_file', '2016/06/jesus_sonriendo.jpg'),
(205, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:340;s:6:"height";i:340;s:4:"file";s:27:"2016/06/jesus_sonriendo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"jesus_sonriendo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"jesus_sonriendo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(206, 1, '_thumbnail_id', '50'),
(209, 39, '_thumbnail_id', '49'),
(210, 51, '_edit_last', '1'),
(211, 51, '_edit_lock', '1467241139:1'),
(212, 51, '_thumbnail_id', '50'),
(215, 53, '_edit_last', '1'),
(216, 53, '_edit_lock', '1467426054:1'),
(217, 53, '_thumbnail_id', '49'),
(224, 55, '_menu_item_type', 'custom'),
(225, 55, '_menu_item_menu_item_parent', '0'),
(226, 55, '_menu_item_object_id', '55'),
(227, 55, '_menu_item_object', 'custom'),
(228, 55, '_menu_item_target', ''),
(229, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 55, '_menu_item_xfn', ''),
(231, 55, '_menu_item_url', 'http://seven.com/dream/wp-login.php'),
(233, 56, '_menu_item_type', 'custom'),
(234, 56, '_menu_item_menu_item_parent', '0'),
(235, 56, '_menu_item_object_id', '56'),
(236, 56, '_menu_item_object', 'custom'),
(237, 56, '_menu_item_target', ''),
(238, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 56, '_menu_item_xfn', ''),
(240, 56, '_menu_item_url', 'http://seven.com/dream/login'),
(245, 59, '_menu_item_type', 'post_type'),
(246, 59, '_menu_item_menu_item_parent', '0'),
(247, 59, '_menu_item_object_id', '2'),
(248, 59, '_menu_item_object', 'page'),
(249, 59, '_menu_item_target', ''),
(250, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 59, '_menu_item_xfn', ''),
(252, 59, '_menu_item_url', ''),
(254, 60, '_menu_item_type', 'post_type'),
(255, 60, '_menu_item_menu_item_parent', '0'),
(256, 60, '_menu_item_object_id', '13'),
(257, 60, '_menu_item_object', 'page'),
(258, 60, '_menu_item_target', ''),
(259, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(260, 60, '_menu_item_xfn', ''),
(261, 60, '_menu_item_url', ''),
(263, 61, '_menu_item_type', 'custom'),
(264, 61, '_menu_item_menu_item_parent', '0'),
(265, 61, '_menu_item_object_id', '61'),
(266, 61, '_menu_item_object', 'custom'),
(267, 61, '_menu_item_target', ''),
(268, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(269, 61, '_menu_item_xfn', ''),
(270, 61, '_menu_item_url', '#pll_switcher'),
(272, 61, '_pll_menu_item', 'a:5:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:1;s:10:"force_home";i:0;s:10:"show_flags";i:1;s:10:"show_names";i:0;}'),
(273, 62, '_menu_item_type', 'custom'),
(274, 62, '_menu_item_menu_item_parent', '0'),
(275, 62, '_menu_item_object_id', '62'),
(276, 62, '_menu_item_object', 'custom'),
(277, 62, '_menu_item_target', ''),
(278, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(279, 62, '_menu_item_xfn', ''),
(280, 62, '_menu_item_url', '#pll_switcher'),
(282, 62, '_pll_menu_item', 'a:5:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:1;s:10:"force_home";i:0;s:10:"show_flags";i:1;s:10:"show_names";i:0;}'),
(319, 67, '_menu_item_type', 'taxonomy'),
(320, 67, '_menu_item_menu_item_parent', '0'),
(321, 67, '_menu_item_object_id', '8'),
(322, 67, '_menu_item_object', 'category'),
(323, 67, '_menu_item_target', ''),
(324, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(325, 67, '_menu_item_xfn', ''),
(326, 67, '_menu_item_url', ''),
(328, 68, '_menu_item_type', 'post_type'),
(329, 68, '_menu_item_menu_item_parent', '0'),
(330, 68, '_menu_item_object_id', '13'),
(331, 68, '_menu_item_object', 'page'),
(332, 68, '_menu_item_target', ''),
(333, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(334, 68, '_menu_item_xfn', ''),
(335, 68, '_menu_item_url', ''),
(364, 72, '_menu_item_type', 'custom'),
(365, 72, '_menu_item_menu_item_parent', '0'),
(366, 72, '_menu_item_object_id', '72'),
(367, 72, '_menu_item_object', 'custom'),
(368, 72, '_menu_item_target', ''),
(369, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(370, 72, '_menu_item_xfn', ''),
(371, 72, '_menu_item_url', '#why'),
(373, 73, '_menu_item_type', 'custom'),
(374, 73, '_menu_item_menu_item_parent', '0'),
(375, 73, '_menu_item_object_id', '73'),
(376, 73, '_menu_item_object', 'custom'),
(377, 73, '_menu_item_target', ''),
(378, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(379, 73, '_menu_item_xfn', ''),
(380, 73, '_menu_item_url', '#how'),
(382, 74, '_menu_item_type', 'custom'),
(383, 74, '_menu_item_menu_item_parent', '0'),
(384, 74, '_menu_item_object_id', '74'),
(385, 74, '_menu_item_object', 'custom'),
(386, 74, '_menu_item_target', ''),
(387, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(388, 74, '_menu_item_xfn', ''),
(389, 74, '_menu_item_url', '#what'),
(417, 79, '_edit_last', '1'),
(418, 79, '_edit_lock', '1467727441:1'),
(419, 80, '_menu_item_type', 'taxonomy'),
(420, 80, '_menu_item_menu_item_parent', '0'),
(421, 80, '_menu_item_object_id', '26'),
(422, 80, '_menu_item_object', 'category'),
(423, 80, '_menu_item_target', ''),
(424, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(425, 80, '_menu_item_xfn', ''),
(426, 80, '_menu_item_url', ''),
(428, 81, '_menu_item_type', 'taxonomy'),
(429, 81, '_menu_item_menu_item_parent', '0'),
(430, 81, '_menu_item_object_id', '24'),
(431, 81, '_menu_item_object', 'category'),
(432, 81, '_menu_item_target', ''),
(433, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(434, 81, '_menu_item_xfn', ''),
(435, 81, '_menu_item_url', ''),
(441, 84, '_edit_last', '1'),
(442, 84, '_edit_lock', '1467727463:1'),
(445, 86, '_menu_item_type', 'taxonomy'),
(446, 86, '_menu_item_menu_item_parent', '0'),
(447, 86, '_menu_item_object_id', '24'),
(448, 86, '_menu_item_object', 'category'),
(449, 86, '_menu_item_target', ''),
(450, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(451, 86, '_menu_item_xfn', ''),
(452, 86, '_menu_item_url', ''),
(454, 87, '_menu_item_type', 'taxonomy'),
(455, 87, '_menu_item_menu_item_parent', '0'),
(456, 87, '_menu_item_object_id', '26'),
(457, 87, '_menu_item_object', 'category'),
(458, 87, '_menu_item_target', ''),
(459, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(460, 87, '_menu_item_xfn', ''),
(461, 87, '_menu_item_url', ''),
(463, 88, '_menu_item_type', 'taxonomy'),
(464, 88, '_menu_item_menu_item_parent', '0'),
(465, 88, '_menu_item_object_id', '24'),
(466, 88, '_menu_item_object', 'category'),
(467, 88, '_menu_item_target', ''),
(468, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(469, 88, '_menu_item_xfn', ''),
(470, 88, '_menu_item_url', ''),
(472, 89, '_menu_item_type', 'taxonomy'),
(473, 89, '_menu_item_menu_item_parent', '0'),
(474, 89, '_menu_item_object_id', '26'),
(475, 89, '_menu_item_object', 'category'),
(476, 89, '_menu_item_target', ''),
(477, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(478, 89, '_menu_item_xfn', ''),
(479, 89, '_menu_item_url', ''),
(481, 90, '_edit_last', '1'),
(482, 90, '_edit_lock', '1467728459:1'),
(485, 92, '_edit_last', '1'),
(488, 92, '_edit_lock', '1467728473:1'),
(489, 94, '_menu_item_type', 'taxonomy'),
(490, 94, '_menu_item_menu_item_parent', '0'),
(491, 94, '_menu_item_object_id', '31'),
(492, 94, '_menu_item_object', 'category'),
(493, 94, '_menu_item_target', ''),
(494, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(495, 94, '_menu_item_xfn', ''),
(496, 94, '_menu_item_url', ''),
(498, 95, '_menu_item_type', 'taxonomy'),
(499, 95, '_menu_item_menu_item_parent', '0'),
(500, 95, '_menu_item_object_id', '29'),
(501, 95, '_menu_item_object', 'category'),
(502, 95, '_menu_item_target', ''),
(503, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(504, 95, '_menu_item_xfn', ''),
(505, 95, '_menu_item_url', ''),
(507, 96, '_menu_item_type', 'taxonomy'),
(508, 96, '_menu_item_menu_item_parent', '0'),
(509, 96, '_menu_item_object_id', '31'),
(510, 96, '_menu_item_object', 'category'),
(511, 96, '_menu_item_target', ''),
(512, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(513, 96, '_menu_item_xfn', ''),
(514, 96, '_menu_item_url', ''),
(516, 97, '_menu_item_type', 'taxonomy'),
(517, 97, '_menu_item_menu_item_parent', '0'),
(518, 97, '_menu_item_object_id', '31'),
(519, 97, '_menu_item_object', 'category'),
(520, 97, '_menu_item_target', ''),
(521, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(522, 97, '_menu_item_xfn', ''),
(523, 97, '_menu_item_url', ''),
(525, 98, '_menu_item_type', 'taxonomy'),
(526, 98, '_menu_item_menu_item_parent', '0'),
(527, 98, '_menu_item_object_id', '29'),
(528, 98, '_menu_item_object', 'category'),
(529, 98, '_menu_item_target', ''),
(530, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(531, 98, '_menu_item_xfn', ''),
(532, 98, '_menu_item_url', ''),
(534, 99, '_menu_item_type', 'taxonomy'),
(535, 99, '_menu_item_menu_item_parent', '0'),
(536, 99, '_menu_item_object_id', '29'),
(537, 99, '_menu_item_object', 'category'),
(538, 99, '_menu_item_target', ''),
(539, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(540, 99, '_menu_item_xfn', ''),
(541, 99, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_posts`
--

CREATE TABLE IF NOT EXISTS `dl_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `dl_posts`
--

INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-06-24 22:07:50', '2016-06-24 22:07:50', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', '¡Hello World!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2016-06-29 17:19:38', '2016-06-29 13:19:38', '', 0, 'http://seven.com/dream/?p=1', 0, 'post', '', 1),
(2, 1, '2016-06-24 22:07:50', '2016-06-24 22:07:50', '', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2016-06-26 01:12:55', '2016-06-25 21:12:55', '', 0, 'http://seven.com/dream/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-06-24 23:07:29', '0000-00-00 00:00:00', '', 'Inicio', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 23:07:29', '0000-00-00 00:00:00', '', 0, 'http://seven.com/dream/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2016-06-24 23:07:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-24 23:07:31', '0000-00-00 00:00:00', '', 0, 'http://seven.com/dream/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2016-06-24 23:45:38', '2016-06-24 23:45:38', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\r\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n...o algo así:\r\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href="http://seven.com/dream/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-24 23:45:38', '2016-06-24 23:45:38', '', 2, 'http://seven.com/dream/2016/06/24/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-06-24 23:48:05', '2016-06-24 23:48:05', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\r\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\r\n...o algo así:\r\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\r\nSi eres nuevo en WordPress deberías ir a <a href="http://seven.com/dream/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-24 23:48:05', '2016-06-24 23:48:05', '', 2, 'http://seven.com/dream/2016/06/24/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-06-25 12:58:59', '2016-06-25 12:58:59', '<!-- Top content -->\r\n<div class=''parallax top-content'' data-stellar-background-ratio=''0.3'' id=''home''>\r\n	<div class=''inner-bg''>\r\n		<div class=''container''>\r\n			<div class=''row''>\r\n				<div class=''col-md-12 top-description''>\r\n					<img width="600" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dreamlopers_blanco.png" alt="" />\r\n					<div class=''top-button''>\r\n						<a class=''btn btn-top btn-lg'' href=''#portfolio-section''>Our Portfolio</a>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Features -->\r\n<div class=''features-container'' id=''features-section''>\r\n	<div class=''container''>\r\n		<div class=''row''>\r\n			<div class=''col-sm-12 features''>\r\n				<h1>\r\n					WHY?\r\n				</h1>\r\n			</div>\r\n		</div>\r\n		<div class=''row''>\r\n			<div class=''col-sm-4 features-box1''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-earth''></i>\r\n				</div>\r\n				<h4>En el mundo...</h4>\r\n				<p>\r\n					No todo esta hecho.\r\n				</p>\r\n			</div>\r\n			<div class=''col-sm-4 features-box2''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-lightbulb''></i>\r\n				</div>\r\n				<h4>Todos tenemos buenas ideas...</h4>\r\n				<p>\r\n					Solo tenemos que encontrar el camino para hacerlas realidad.\r\n				</p>\r\n			</div>\r\n			<div class=''col-sm-4 features-box3''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-clipboard''></i>\r\n				</div>\r\n				<h4>Nosotros...</h4>\r\n				<p>\r\n					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.\r\n				</p>\r\n			</div>\r\n			<div class=''col-sm-4 features-box4''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-earth''></i>\r\n				</div>\r\n				<h4>Lorem Ipsum</h4>\r\n				<p>\r\n					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.\r\n				</p>\r\n			</div>\r\n			<div class=''col-sm-4 features-box5''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-flash-off''></i>\r\n				</div>\r\n				<h4>Lorem Ipsum</h4>\r\n				<p>\r\n					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.\r\n				</p>\r\n			</div>\r\n			<div class=''col-sm-4 features-box6''>\r\n				<div class=''icon''>\r\n					<i class=''icon ion-levels''></i>\r\n				</div>\r\n				<h4>Lorem Ipsum</h4>\r\n				<p>\r\n					Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl. Ut aliquet dolor mi, vitae varius felis elementum.\r\n				</p>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Product -->\r\n<div class=''product-container product-bg1''>\r\n	<div class=''container''>\r\n		<div class=''row''>\r\n			<div class=''col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1''>\r\n				<div class=''product''>\r\n					<h1>\r\n						HOW?\r\n					</h1>\r\n					<img width="100" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/rocket.png" alt="Rocket 00ff77b727a38686a891152333a2efc8ee71d78330a274c111b1aae3851f0634" />\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Product -->\r\n<div class=''product-container product-bg2''>\r\n	<div class=''container''>\r\n		<div class=''row''>\r\n			<div class=''col-lg-6 col-sm-6''>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-erlenmeyer-flask''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-android-boat''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-android-archive''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n			</div>\r\n			<div class=''col-lg-6 col-sm-6''>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-ios-speedometer''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-pie-graph''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n				<div class=''productbox''>\r\n					<div>\r\n						<i class=''icon ion-trophy''></i>\r\n					</div>\r\n					<h5>Lorem Ipsum</h5>\r\n					Nulla fringilla dapibus nisieu accumsan arcu convallis tincidunt donec mauris libero laciniade mollis malesuade odio interdum. Integer sed magna vel velit dignissim luctus eu in urna. Dapibus egestas turpis. Praesent faucibus nisl sit amet nulla sollicitudin.\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Callaction -->\r\n<div class=''callaction-container'' id=''callaction-container''>\r\n	<div class=''inner-callaction''>\r\n		<div class=''container''>\r\n			<div class=''row''>\r\n				<h4>"El peor fracaso en la vida es cometer la equivocación de jamás haberlo intentado."</h4>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Pricing -->\r\n<div class=''pricing-container'' id=''pricing-section''>\r\n	<div class=''container''>\r\n		<div class=''row''>\r\n			<div class=''col-sm-12 pricing''>\r\n				<h1>\r\n					WHAT?\r\n				</h1>\r\n				<p>\r\n					We are a group of developers willing to facilitate the creation of your web pages and your web applications.\r\n					<br>\r\n					<b>\r\n						Dreamlopes,\r\n					</b>\r\n					born from the need for a community that can develop web applications, give instruction and advise in the latest technologies and create new social paradigms.\r\n					<b>\r\n						Dreamlopers,\r\n					</b>\r\n					then becomes the basis of a community of developers. finding new technologies, and aimed at those dreamers who want quick solutions to their needs.\r\n					<br>\r\n					Our vision is to create a community that allows for Venezuela and the world, seek new technologies promoted by removing barriers and Traditional Paradigms of companies old rigid and bureaucratic.\r\n					<b>\r\n						Dreamlopers\r\n					</b>\r\n					seeks to create the foundation for a company that not only satisfies the customer and their needs, also their community members letting them being happy and excited about new targets and new sensations.\r\n				</p>\r\n			</div>\r\n		</div>\r\n		<div class=''row''>\r\n			<div class=''col-md-4 toLeft''>\r\n				<div class=''price-column''>\r\n					<h2>DreamSchool</h2>\r\n					<ul>\r\n						<li>A place where we can learn from the experience of others and helping each other .</li>\r\n						<li>In DreamSchool we allow you to guide your dreams, improve it and give it start</li>\r\n						<li>It is our kinder to the community. Learn programming languages​​, styles, views, UX, databases, bootstrap, marketing, customer management , user management, web systems architecture and more...</li>\r\n						<li>DreamSchool allows participants to join a community of entrepreneurs supported by members DreamLab and DreamBuilder</li>\r\n						<li>\r\n							<i class=''fa fa-comments red''></i>\r\n							Share with us the experience of enjoying the development\r\n						</li>\r\n						<li>\r\n							<i class=''fa fa-graduation-cap blue fa-4x''></i>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n			<div class=''col-md-4 toIn''>\r\n				<div class=''price-column large''>\r\n					<h2>DreamLabs</h2>\r\n					<ul>\r\n						<li>Our factory</li>\r\n						<li>From our imagination, wishes and ideas, we built our dreams from the ground up.</li>\r\n						<li>We add the material from the fleeting dreams to make them own businesses, own entrepreneurships.</li>\r\n						<li>We love what we do. That''s why we spend much to achieve the goals of the members of dreamlabs</li>\r\n						<li>\r\n							<i class=''fa fa-heart red''></i>\r\n							Dreamlabs is the heart of Dreamlopers\r\n						</li>\r\n						<li>\r\n							<i class=''fa fa-rocket blue fa-4x''></i>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n			<div class=''col-md-4 toRight''>\r\n				<div class=''price-column''>\r\n					<h2>DreamBuilder</h2>\r\n					<ul>\r\n						<li>Our customers are part of what we do, so for them and their dreams we have created this section.</li>\r\n						<li>We seek to achieve the best with the best tools.</li>\r\n						<li>As we move forward and learn each new client gives us a challenge that we like to achieve.</li>\r\n						<li>Small and steady steps to achieve great goals. Dreambuilder helps anyone who wants to realize their dreams.</li>\r\n						<li>\r\n							<i class=''fa fa-support red''></i>\r\n							We developed it and you help us to achieve this.\r\n						</li>\r\n						<li>\r\n							<i class=''fa fa-paper-plane blue fa-4x''></i>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=''portfolio-container'' id=''portfolio-section''>\r\n		<div class=''container''>\r\n			<div class=''row''>\r\n				<div class=''col-sm-12 portfolio''>\r\n					<h1>Portfolio</h1>\r\n					<p>Ut lobortis auctor est, quis ornare orci tristique vel. Pellentesque sit amet ultricies nisl.</p>\r\n				</div>\r\n			</div>\r\n			<div class=''cbp-panel''>\r\n				<div class=''cbp-l-filters-work'' id=''filters-container''>\r\n					<div class=''cbp-filter-item-active cbp-filter-item'' data-filter=''*''>\r\n						show all\r\n					</div>\r\n					<div class=''cbp-filter-item'' data-filter=''.identity''>\r\n						identity\r\n					</div>\r\n					<div class=''cbp-filter-item'' data-filter=''.web-design''>\r\n						web design\r\n					</div>\r\n					<div class=''cbp-filter-item'' data-filter=''.graphic''>\r\n						graphic\r\n					</div>\r\n					<div class=''cbp-filter-item'' data-filter=''.logos''>\r\n						logo\r\n					</div>\r\n				</div>\r\n				<div class=''cbp cbp-l-grid-work'' id=''grid-container''>\r\n					<div class=''cbp-item identity''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project1.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/1a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project1.html''>Dashboard</a>\r\n						<div class=''cbp-l-grid-work-desc''>Web Design / Graphic</div>\r\n					</div>\r\n					<div class=''cbp-item web-design logos''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project2.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/2a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project2.html''>World Clock Widget</a>\r\n						<div class=''cbp-l-grid-work-desc''>Logo / Web Design</div>\r\n					</div>\r\n					<div class=''cbp-item graphic logos''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project3.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/3a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project3.html''>To-Do Dashboard</a>\r\n						<div class=''cbp-l-grid-work-desc''>Graphic / Logo</div>\r\n					</div>\r\n					<div class=''cbp-item web-design graphic''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project4.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/4a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project4.html''>Events and More</a>\r\n						<div class=''cbp-l-grid-work-desc''>Web Design / Graphic</div>\r\n					</div>\r\n					<div class=''cbp-item identity web-design''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project5.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/5a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project5.html''>WhereTO App</a>\r\n						<div class=''cbp-l-grid-work-desc''>Web Design / Identity</div>\r\n					</div>\r\n					<div class=''cbp-item identity web-design''>\r\n						<a class=''cbp-caption cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project6.html''>\r\n							<div class=''cbp-caption-defaultWrap''>\r\n								<img alt='''' src=''portfolio/6a.jpg''>\r\n							</div>\r\n							<div class=''cbp-caption-activeWrap''></div>\r\n						</a>\r\n						<a class=''cbp-l-grid-work-title cbp-singlePage'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/project6.html''>Ski * Buddy</a>\r\n						<div class=''cbp-l-grid-work-desc''>Identity / Web Design</div>\r\n					</div>\r\n				</div>\r\n				<div class=''cbp-l-loadMore-button'' id=''loadMore-container''>\r\n					<a class=''cbp-l-loadMore-link'' href=''http://themebootstrap.net/primes-v1.5.1/template-08/ajax/loadMore.html''>\r\n						<span class=''cbp-l-loadMore-defaultText''>load more</span>\r\n						<span class=''cbp-l-loadMore-loadingText''>loading...</span>\r\n						<span class=''cbp-l-loadMore-noMoreLoading''>no more works</span>\r\n					</a>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Testimonials -->\r\n<div class=''container''>\r\n	<div class=''row''>\r\n		<div class=''col-sm-12 testimonials''>\r\n			<h1>Who we are?...</h1>\r\n			<div class=''col-md-12 text-center''>\r\n				<div class=''owl-carousel owl-spaced'' id=''testimonial-carousel''>\r\n					<div>\r\n						<div class=''row''>\r\n							<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/jesus_sonriendo.jpg" alt="Jesus sonriendo 82360ac8569491580d92ed59542dd84367312ce33465ab71b04903f93a9be3e3" />\r\n							<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/amilcar_sonriendo.jpg" alt="Amilcar sonriendo 1ef9d1948a2ec3948a42b3ff6a0ccfe26480074cb96e893343b94ccd4cdd883b" />\r\n						</div>\r\n						<h4>\r\n							Un equipo de ingenieros de sistemas graduados en la Universidad de los Andes, Mérida (ULA). Con altas capacidades en el desarrollo de software y complementadas con agilidad mental y facilidad para resolver problemas.\r\n						</h4>\r\n						<p>Ing. Jesus Salcedo | Ing. Amilcar Erazo</p>\r\n					</div>\r\n					<div>\r\n						<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/jesus_medio.jpg" alt="Jesus medio ef3e2a51edb689bc42532a133592f83560209d2749d0fde5c42baedfca6abc3b" />\r\n						<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/amilcar_sonriendo.jpg" alt="Amilcar sonriendo 1ef9d1948a2ec3948a42b3ff6a0ccfe26480074cb96e893343b94ccd4cdd883b" />\r\n						<h4>\r\n							Un grupo de compañeros que se consolida desde el comienzo de los estudios profesionales hasta estos tiempos. Pasando desde la amistad hasta la dedicacion profesional.\r\n						</h4>\r\n						<p>Jesus | Amilcar</p>\r\n					</div>\r\n					<div>\r\n						<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/jesus_loco.jpg" alt="Jesus loco e6608071c59ee78dd04cf1b0e5337ceb170078569f9d47b440389edd3acd7533" />\r\n						<img class="img-responsive img-thumbnail" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/who_we_are/amilcar_sonriendo.jpg" alt="Amilcar sonriendo 1ef9d1948a2ec3948a42b3ff6a0ccfe26480074cb96e893343b94ccd4cdd883b" />\r\n						<h4>\r\n							Buenas caras a los problemas. Gusto por resolverlos.\r\n						</h4>\r\n						<p>Jesu | Amilcar</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Contact us -->\r\n<div class=''contact-container'' id=''contact-section''>\r\n	<div class=''inner-contact''>\r\n		<div class=''container''>\r\n			<div class=''row''>\r\n				<div class=''col-sm-12 contact''>\r\n					<h3>Contact Us</h3>\r\n					<p>\r\n						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra odio ac felis iaculis cursus aliquet quis orci. Nunc id lorem ut mi euismod accumsan.\r\n					</p>\r\n				</div>\r\n			</div>\r\n			<div class=''row''>\r\n				<div class=''col-sm-7 form-group contact-form''>\r\n					<h4>Send Message</h4>\r\n					<form action=''http://themebootstrap.net/primes-v1.5.1/template-08/assets/contact.php'' method=''post''>\r\n						<input class=''form-control contact-email'' name=''email'' placeholder=''Email'' type=''text''>\r\n						<input class=''form-control contact-subject'' name=''subject'' placeholder=''Subject'' type=''text''>\r\n						<textarea class=''form-control'' name=''message'' placeholder=''Message''></textarea>\r\n						<button class=''btn btn-contact'' type=''submit''>Submit</button>\r\n					</form>\r\n				</div>\r\n				<div class=''col-sm-5 contact-address contact-about''>\r\n					<h4>About Us</h4>\r\n					<p>Fusce at leo eros. Morbi mauris arcu, eleifend sit amet turpis ac, porta luctus neque. Etiam ultricies ac augue a venenatis. Quisque aliquam odio eu magna sodales, vel interdum erat suscipit. Mauris ut porttitor tellus. Integer ac bibendum lectus. Quisque interdum aliquam felis vel volutpat. Vivamus commodo felis quis dui pharetra, ac venenatis magna lacinia. Vestibulum quis dignissim nibh. Duis vitae felis orci. Aliquam porta interdum feugiat. Ut ac varius nibh. Nullam est nisl, sagittis sed risus vel, facilisis commodo tortor. Suspendisse suscipit tellus vitae tellus porta rutrum. Proin ac orci auctor, consequat dolor nec, scelerisque nisl.</p>\r\n					<h4>Address</h4>\r\n					<p><i class=''fa fa-map-marker''></i>13 Brant Street, Burlington, Ontario, Canada\r\n					</p>\r\n					<p><i class=''fa fa-phone''></i>Phone: 0011 222 335 7773\r\n					</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div id=''tips'' style=''margin-top: 50px;''>\r\n	<div class=''container''>\r\n		<div class=''row''>\r\n			<div class=''col-xs-12 text-center''>\r\n				<h1>Tips</h1>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=''listados'' id=''talleres''>\r\n		<a class=''item'' href=''http://lionessmagazine.com/5-quick-strategies-to-help-entrepreneurs-shift-from-hobbyists-to-business-owners/'' target=''blank'' title=''How to Transition from Hobbyist to Business Owner''>\r\n			<div class=''tapita'' style=" background-image:url(''http://lionessmagazine.com/wp-content/uploads/2015/05/hobby.jpg'')">\r\n				<h4>5 Quick Strategies To Help Entrepreneurs Shift From Hobbyists To Business Owners</h4>\r\n			</div>\r\n			<img alt=''How to Transition from Hobbyist to Business Owner'' src=''http://lionessmagazine.com/wp-content/uploads/2015/05/hobby.jpg''>\r\n			<div id=''info''>\r\n				<div id=''titulo''>5 Quick Strategies To Help Entrepreneurs Shift From Hobbyists To Business Owners</div>\r\n				<div id=''resumen''>Making money from your hobby is not synonymous with having a business. Unfortunately, far too many people don’t understand that...</div>\r\n			</div>\r\n		</a>\r\n		<a class=''item'' href=''http://www.creativebloq.com/mobile/25-web-development-tips-boost-your-skills-10126001'' target=''blank'' title=''5 web development tips to boost your skills''>\r\n			<div class=''tapita'' style=" background-image:url(''http://media.creativebloq.futurecdn.net/sites/creativebloq.com/files/images/2012/10/gitlab.jpg'')">\r\n				<h4>25 web development tips to boost your skills</h4>\r\n			</div>\r\n			<img alt=''5 web development tips to boost your skills'' src=''http://media.creativebloq.futurecdn.net/sites/creativebloq.com/files/images/2012/10/gitlab.jpg''>\r\n			<div id=''info''>\r\n				<div id=''titulo''>25 web development tips to boost your skills</div>\r\n				<div id=''resumen''>Professional developers share tips and tricks from an accumulated century of hard won experience</div>\r\n			</div>\r\n		</a>\r\n		<a class=''item'' href=''http://smallbusiness.chron.com/team-leading-35635.html'' target=''blank'' title=''How to Get to Know the Team You Are Leading''>\r\n			<div class=''tapita'' style=" background-image:url(''http://undercdn.under30media.netdna-cdn.com/wp-content/uploads/2013/04/Overcome-Obstacles-to-Be-A-Business-Leader.jpg?f7e559'')">\r\n				<h4>How to Get to Know the Team You Are Leading</h4>\r\n			</div>\r\n			<img alt=''How to Get to Know the Team You Are Leading'' src=''http://undercdn.under30media.netdna-cdn.com/wp-content/uploads/2013/04/Overcome-Obstacles-to-Be-A-Business-Leader.jpg?f7e559''>\r\n			<div id=''info''>\r\n				<div id=''titulo''>How to Get to Know the Team You Are Leading</div>\r\n				<div id=''resumen''>A team leader’s ability to manage his team and make certain that projects are completed on time requires...</div>\r\n			</div>\r\n		</a>\r\n		<a class=''item'' href=''http://www.sitepoint.com/8-essential-skills-developers-can-learn-in-a-weekend/'' target=''blank'' title=''8 Essential Skills Developers Can Learn in a Weekend''>\r\n			<div class=''tapita'' style=" background-image:url(''http://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406858208terminal.png'')">\r\n				<h4>8 Essential Skills Developers Can Learn in a Weekend</h4>\r\n			</div>\r\n			<img alt=''8 Essential Skills Developers Can Learn in a Weekend'' src=''http://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2014/07/1406858208terminal.png''>\r\n			<div id=''info''>\r\n				<div id=''titulo''>8 Essential Skills Developers Can Learn in a Weekend</div>\r\n				<div id=''resumen''>Comprende el proceso global de marketing y publicidad para poder gestionar la promocion de tu emprendimiento</div>\r\n			</div>\r\n		</a>\r\n	</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-25 12:58:59', '2016-06-25 12:58:59', '', 2, 'http://seven.com/dream/2016/06/25/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-06-26 00:31:39', '2016-06-25 20:31:39', 'a:4:{i:0;a:2:{i:0;s:11:"Dreamlopers";i:1;s:11:"Dreamlopers";}i:1;a:2:{i:0;s:34:"Otro sitio realizado con WordPress";i:1;s:16:"Follow the dream";}i:2;a:2:{i:0;s:6:"j F, Y";i:1;s:6:"j F, Y";}i:3;a:2:{i:0;s:5:"g:i a";i:1;s:5:"g:i a";}}', 'polylang_mo_3', '', 'private', 'closed', 'closed', '', 'polylang_mo_3', '', '', '2016-06-26 00:36:10', '2016-06-25 20:36:10', '', 0, 'http://seven.com/dream/?post_type=polylang_mo&#038;p=11', 0, 'polylang_mo', '', 0),
(12, 1, '2016-06-26 00:32:52', '2016-06-25 20:32:52', 'a:4:{i:0;a:2:{i:0;s:11:"Dreamlopers";i:1;s:11:"Dreamlopers";}i:1;a:2:{i:0;s:34:"Otro sitio realizado con WordPress";i:1;s:15:"Sigue el sueño";}i:2;a:2:{i:0;s:6:"j F, Y";i:1;s:6:"j F, Y";}i:3;a:2:{i:0;s:5:"g:i a";i:1;s:5:"g:i a";}}', 'polylang_mo_6', '', 'private', 'closed', 'closed', '', 'polylang_mo_6', '', '', '2016-06-26 00:36:10', '2016-06-25 20:36:10', '', 0, 'http://seven.com/dream/?post_type=polylang_mo&#038;p=12', 0, 'polylang_mo', '', 0),
(13, 1, '2016-06-26 00:35:08', '2016-06-25 20:35:08', '', 'Inicio', '', 'publish', 'closed', 'open', '', 'inicio', '', '', '2016-06-28 19:37:46', '2016-06-28 15:37:46', '', 0, 'http://seven.com/dream/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-06-26 00:35:08', '2016-06-25 20:35:08', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-06-26 00:35:08', '2016-06-25 20:35:08', '', 13, 'http://seven.com/dream/2016/06/26/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-06-26 00:37:01', '2016-06-25 20:37:01', '', 'Language switcher', '', 'publish', 'closed', 'closed', '', 'language-switcher', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=15', 7, 'nav_menu_item', '', 0),
(16, 1, '2016-06-26 00:38:12', '2016-06-25 20:38:12', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-06-26 00:38:12', '2016-06-25 20:38:12', '', 'Language switcher', '', 'publish', 'closed', 'closed', '', 'language-switcher-2', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=17', 7, 'nav_menu_item', '', 0),
(18, 1, '2016-06-26 01:12:08', '2016-06-25 21:12:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-06-26 01:12:08', '2016-06-25 21:12:08', '', 2, 'http://seven.com/dream/2016/06/26/2-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-06-26 02:05:04', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-26 02:05:04', '0000-00-00 00:00:00', '', 0, 'http://seven.com/dream/?p=19', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-06-26 02:07:47', '2016-06-25 22:07:47', '', 'Why?', '', 'publish', 'closed', 'closed', '', 'why', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2016-06-26 02:08:19', '2016-06-25 22:08:19', '', 'How?', '', 'publish', 'closed', 'closed', '', 'how', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2016-06-26 02:09:24', '2016-06-25 22:09:24', '', 'What?', '', 'publish', 'closed', 'closed', '', 'what', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=23', 4, 'nav_menu_item', '', 0),
(26, 1, '2016-06-26 02:32:55', '2016-06-25 22:32:55', '', 'img-favicon', '', 'inherit', 'open', 'closed', '', 'img-favicon', '', '', '2016-06-26 02:32:55', '2016-06-25 22:32:55', '', 0, 'http://seven.com/dream/wp-content/uploads/2016/06/img-favicon.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2016-06-26 02:33:06', '2016-06-25 22:33:06', 'http://seven.com/dream/wp-content/uploads/2016/06/cropped-img-favicon.png', 'cropped-img-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-img-favicon-png', '', '', '2016-06-26 02:33:06', '2016-06-25 22:33:06', '', 0, 'http://seven.com/dream/wp-content/uploads/2016/06/cropped-img-favicon.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2016-06-26 02:35:06', '2016-06-25 22:35:06', '', 'img-favicon-grd', '', 'inherit', 'open', 'closed', '', 'img-favicon-grd', '', '', '2016-06-26 02:35:06', '2016-06-25 22:35:06', '', 0, 'http://seven.com/dream/wp-content/uploads/2016/06/img-favicon-grd.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2016-06-26 02:35:45', '2016-06-25 22:35:45', 'http://seven.com/dream/wp-content/uploads/2016/06/cropped-img-favicon-grd.png', 'cropped-img-favicon-grd.png', '', 'inherit', 'open', 'closed', '', 'cropped-img-favicon-grd-png', '', '', '2016-06-26 02:35:45', '2016-06-25 22:35:45', '', 0, 'http://seven.com/dream/wp-content/uploads/2016/06/cropped-img-favicon-grd.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2016-06-28 03:35:02', '2016-06-27 23:35:02', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2016-06-28 03:35:02', '2016-06-27 23:35:02', '', 0, 'http://seven.com/dream/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-06-28 03:22:41', '2016-06-27 23:22:41', '', 'News', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-06-28 03:22:41', '2016-06-27 23:22:41', '', 30, 'http://seven.com/dream/2016/06/28/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-06-28 03:22:55', '0000-00-00 00:00:00', '', 'Noticias', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-06-28 03:22:55', '2016-06-27 23:22:55', '', 0, 'http://seven.com/dream/?page_id=32', 0, 'page', '', 0),
(33, 1, '2016-06-28 03:22:55', '2016-06-27 23:22:55', '', 'Noticias', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-06-28 03:22:55', '2016-06-27 23:22:55', '', 32, 'http://seven.com/dream/2016/06/28/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-06-28 18:08:29', '2016-06-28 14:08:29', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hello World!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-06-28 18:08:29', '2016-06-28 14:08:29', '', 1, 'http://seven.com/dream/2016/06/28/1-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-06-28 18:09:02', '2016-06-28 14:09:02', 'Entrada en espanol', 'Hola Mundo', '', 'publish', 'open', 'open', '', 'hola-mundo-2', '', '', '2016-06-28 18:09:02', '2016-06-28 14:09:02', '', 0, 'http://seven.com/dream/?p=36', 0, 'post', '', 0),
(37, 1, '2016-06-28 18:09:02', '2016-06-28 14:09:02', 'Entrada en espanol', 'Hola Mundo', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-06-28 18:09:02', '2016-06-28 14:09:02', '', 36, 'http://seven.com/dream/2016/06/28/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-06-28 20:00:52', '2016-06-28 16:00:52', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', '¡Hello World!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-06-28 20:00:52', '2016-06-28 16:00:52', '', 1, 'http://seven.com/dream/2016/06/28/1-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-06-29 04:10:25', '2016-06-29 00:10:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem nulla dignissimos perferendis explicabo ex, quae quibusdam incidunt! Odio, voluptates velit assumenda, hic recusandae in quisquam. Perspiciatis beatae nulla facilis minus?', 'News second', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', 'publish', 'open', 'open', '', 'news-second', '', '', '2016-06-29 17:20:11', '2016-06-29 13:20:11', '', 0, 'http://seven.com/dream/?p=39', 0, 'post', '', 0),
(40, 1, '2016-06-29 04:10:25', '2016-06-29 00:10:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem nulla dignissimos perferendis explicabo ex, quae quibusdam incidunt! Odio, voluptates velit assumenda, hic recusandae in quisquam. Perspiciatis beatae nulla facilis minus?', 'News second', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-06-29 04:10:25', '2016-06-29 00:10:25', '', 39, 'http://seven.com/dream/2016/06/29/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-06-29 04:10:49', '2016-06-29 00:10:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem nulla dignissimos perferendis explicabo ex, quae quibusdam incidunt! Odio, voluptates velit assumenda, hic recusandae in quisquam. Perspiciatis beatae nulla facilis minus?', 'Segunda noticia', '', 'publish', 'open', 'open', '', 'segunda-noticia', '', '', '2016-06-29 04:10:49', '2016-06-29 00:10:49', '', 0, 'http://seven.com/dream/?p=41', 0, 'post', '', 0),
(42, 1, '2016-06-29 04:10:49', '2016-06-29 00:10:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem nulla dignissimos perferendis explicabo ex, quae quibusdam incidunt! Odio, voluptates velit assumenda, hic recusandae in quisquam. Perspiciatis beatae nulla facilis minus?', 'Segunda noticia', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-06-29 04:10:49', '2016-06-29 00:10:49', '', 41, 'http://seven.com/dream/2016/06/29/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-06-29 04:18:57', '2016-06-29 00:18:57', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2016-07-05 18:26:55', '2016-07-05 14:26:55', '', 0, 'http://seven.com/dream/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2016-06-29 04:18:57', '2016-06-29 00:18:57', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2016-07-05 18:26:55', '2016-07-05 14:26:55', '', 0, 'http://seven.com/dream/?p=44', 2, 'nav_menu_item', '', 0),
(47, 1, '2016-06-29 06:45:30', '2016-06-29 02:45:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2016-06-29 06:56:25', '2016-06-29 02:56:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Autem nulla dignissimos perferendis explicabo ex, quae quibusdam incidunt! Odio, voluptates velit assumenda, hic recusandae in quisquam. Perspiciatis beatae nulla facilis minus?', 'News second', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum enim, tenetur porro aspernatur corporis minus voluptas ipsum dolores, nisi, molestias consequatur unde facilis. Suscipit porro, eius soluta omnis esse. Accusamus.', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-06-29 06:56:25', '2016-06-29 02:56:25', '', 39, 'http://seven.com/dream/2016/06/29/39-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-06-29 17:19:19', '2016-06-29 13:19:19', '', 'amilcar_sonriendo', '', 'inherit', 'open', 'closed', '', 'amilcar_sonriendo', '', '', '2016-06-29 17:19:19', '2016-06-29 13:19:19', '', 1, 'http://seven.com/dream/wp-content/uploads/2016/06/amilcar_sonriendo.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-06-29 17:19:26', '2016-06-29 13:19:26', '', 'jesus_sonriendo', '', 'inherit', 'open', 'closed', '', 'jesus_sonriendo', '', '', '2016-06-29 17:19:26', '2016-06-29 13:19:26', '', 1, 'http://seven.com/dream/wp-content/uploads/2016/06/jesus_sonriendo.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2016-06-30 03:01:16', '2016-06-29 23:01:16', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>', 'Third News', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>', 'publish', 'open', 'open', '', 'third-news', '', '', '2016-06-30 03:01:16', '2016-06-29 23:01:16', '', 0, 'http://seven.com/dream/?p=51', 0, 'post', '', 0),
(52, 1, '2016-06-30 03:01:16', '2016-06-29 23:01:16', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>', 'Third News', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-06-30 03:01:16', '2016-06-29 23:01:16', '', 51, 'http://seven.com/dream/2016/06/30/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-06-30 03:01:52', '2016-06-29 23:01:52', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!', 'Fourth news', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!', 'publish', 'open', 'open', '', 'fourth-news', '', '', '2016-07-02 06:15:37', '2016-07-02 02:15:37', '', 0, 'http://seven.com/dream/?p=53', 0, 'post', '', 0),
(54, 1, '2016-06-30 03:01:52', '2016-06-29 23:01:52', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>', 'Fourth news', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-06-30 03:01:52', '2016-06-29 23:01:52', '', 53, 'http://seven.com/dream/2016/06/30/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-06-30 04:50:20', '2016-06-30 00:50:20', '', 'Access', '', 'publish', 'closed', 'closed', '', 'acceder', '', '', '2016-07-05 18:26:55', '2016-07-05 14:26:55', '', 0, 'http://seven.com/dream/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2016-06-30 05:30:09', '2016-06-30 01:30:09', '', 'Acceder', '', 'publish', 'closed', 'closed', '', 'acceder-2', '', '', '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 0, 'http://seven.com/dream/?p=56', 1, 'nav_menu_item', '', 0);
INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2016-07-02 06:15:23', '2016-07-02 02:15:23', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!', 'Fourth news', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-07-02 06:15:23', '2016-07-02 02:15:23', '', 53, 'http://seven.com/dream/2016/07/02/53-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-07-02 06:15:37', '2016-07-02 02:15:37', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?</div>\r\n<div>Doloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.</div>\r\n<div>Tenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!</div>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!', 'Fourth news', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, pariatur voluptates ullam molestias tempora ex modi expedita, vero perferendis maxime voluptas, dolorum maiores, nisi nemo rerum numquam id aliquam atque?\r\nDoloremque ex neque incidunt sapiente dolore voluptatum animi culpa nihil fugit. Incidunt ipsam, illo quo blanditiis necessitatibus distinctio quaerat tenetur, dicta quos cupiditate cumque commodi maiores velit enim nostrum id.\r\nTenetur neque illum consequatur magnam placeat quo deserunt, consectetur doloremque ea velit maxime asperiores qui dicta perspiciatis molestias cum labore, modi facere cumque culpa. Iure est minus officia eius animi!', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2016-07-02 06:15:37', '2016-07-02 02:15:37', '', 53, 'http://seven.com/dream/2016/07/02/53-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-07-02 06:25:01', '2016-07-02 02:25:01', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2016-07-05 18:24:12', '2016-07-05 14:24:12', '', 0, 'http://seven.com/dream/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2016-07-02 06:25:35', '2016-07-02 02:25:35', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2016-07-05 18:25:52', '2016-07-05 14:25:52', '', 0, 'http://seven.com/dream/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2016-07-02 06:29:32', '2016-07-02 02:29:32', '', 'Language switcher', '', 'publish', 'closed', 'closed', '', 'language-switcher-3', '', '', '2016-07-05 18:24:13', '2016-07-05 14:24:13', '', 0, 'http://seven.com/dream/?p=61', 4, 'nav_menu_item', '', 0),
(62, 1, '2016-07-02 06:30:19', '2016-07-02 02:30:19', '', 'Language switcher', '', 'publish', 'closed', 'closed', '', 'language-switcher-4', '', '', '2016-07-05 18:25:52', '2016-07-05 14:25:52', '', 0, 'http://seven.com/dream/?p=62', 4, 'nav_menu_item', '', 0),
(67, 1, '2016-07-02 21:48:51', '2016-07-02 17:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 0, 'http://seven.com/dream/?p=67', 3, 'nav_menu_item', '', 0),
(68, 1, '2016-07-02 21:48:51', '2016-07-02 17:48:51', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 0, 'http://seven.com/dream/?p=68', 2, 'nav_menu_item', '', 0),
(72, 1, '2016-07-02 21:51:33', '2016-07-02 17:51:33', '', '¿Por qué?', '', 'publish', 'closed', 'closed', '', 'por-que', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2016-07-02 21:51:33', '2016-07-02 17:51:33', '', '¿Como?', '', 'publish', 'closed', 'closed', '', 'como', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2016-07-02 21:52:44', '2016-07-02 17:52:44', '', '¿Qué?', '', 'publish', 'closed', 'closed', '', 'que', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2016-07-05 17:40:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-07-05 17:40:24', '0000-00-00 00:00:00', '', 0, 'http://seven.com/dream/?p=75', 0, 'post', '', 0),
(79, 1, '2016-07-05 18:06:05', '2016-07-05 14:06:05', '', 'Team', '', 'publish', 'open', 'open', '', 'equipo', '', '', '2016-07-05 18:06:20', '2016-07-05 14:06:20', '', 0, 'http://seven.com/dream/?p=79', 0, 'post', '', 0),
(80, 1, '2016-07-05 18:03:14', '2016-07-05 14:03:14', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-07-05 18:25:52', '2016-07-05 14:25:52', '', 0, 'http://seven.com/dream/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2016-07-05 18:03:37', '2016-07-05 14:03:37', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-07-05 18:24:12', '2016-07-05 14:24:12', '', 0, 'http://seven.com/dream/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2016-07-05 18:06:05', '2016-07-05 14:06:05', '', 'equipo', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-07-05 18:06:05', '2016-07-05 14:06:05', '', 79, 'http://seven.com/dream/2016/07/05/79-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-07-05 18:06:20', '2016-07-05 14:06:20', '', 'Team', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2016-07-05 18:06:20', '2016-07-05 14:06:20', '', 79, 'http://seven.com/dream/2016/07/05/79-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-07-05 18:06:37', '2016-07-05 14:06:37', '', 'equipo', '', 'publish', 'open', 'open', '', 'equipo-2', '', '', '2016-07-05 18:06:37', '2016-07-05 14:06:37', '', 0, 'http://seven.com/dream/?p=84', 0, 'post', '', 0),
(85, 1, '2016-07-05 18:06:37', '2016-07-05 14:06:37', '', 'equipo', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2016-07-05 18:06:37', '2016-07-05 14:06:37', '', 84, 'http://seven.com/dream/2016/07/05/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2016-07-05 18:09:23', '2016-07-05 14:09:23', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=86', 5, 'nav_menu_item', '', 0),
(87, 1, '2016-07-05 18:09:53', '2016-07-05 14:09:53', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=87', 5, 'nav_menu_item', '', 0),
(88, 1, '2016-07-05 18:10:13', '2016-07-05 14:10:13', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2016-07-05 18:26:55', '2016-07-05 14:26:55', '', 0, 'http://seven.com/dream/?p=88', 4, 'nav_menu_item', '', 0),
(89, 1, '2016-07-05 18:10:25', '2016-07-05 14:10:25', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 0, 'http://seven.com/dream/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2016-07-05 18:23:17', '2016-07-05 14:23:17', '', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2016-07-05 18:23:17', '2016-07-05 14:23:17', '', 0, 'http://seven.com/dream/?p=90', 0, 'post', '', 0),
(91, 1, '2016-07-05 18:23:17', '2016-07-05 14:23:17', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2016-07-05 18:23:17', '2016-07-05 14:23:17', '', 90, 'http://seven.com/dream/2016/07/05/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-07-05 18:23:31', '2016-07-05 14:23:31', '', 'Contacto', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2016-07-05 18:23:31', '2016-07-05 14:23:31', '', 0, 'http://seven.com/dream/?p=92', 0, 'post', '', 0),
(93, 1, '2016-07-05 18:23:31', '2016-07-05 14:23:31', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-07-05 18:23:31', '2016-07-05 14:23:31', '', 92, 'http://seven.com/dream/2016/07/05/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-07-05 18:23:56', '2016-07-05 14:23:56', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', '94', '', '', '2016-07-05 18:25:52', '2016-07-05 14:25:52', '', 0, 'http://seven.com/dream/?p=94', 3, 'nav_menu_item', '', 0),
(95, 1, '2016-07-05 18:24:13', '2016-07-05 14:24:13', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2016-07-05 18:24:13', '2016-07-05 14:24:13', '', 0, 'http://seven.com/dream/?p=95', 3, 'nav_menu_item', '', 0),
(96, 1, '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos', '', '', '2016-07-05 18:25:38', '2016-07-05 14:25:38', '', 0, 'http://seven.com/dream/?p=96', 6, 'nav_menu_item', '', 0),
(97, 1, '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 'Contáctenos', '', 'publish', 'closed', 'closed', '', 'contactenos-2', '', '', '2016-07-05 18:26:12', '2016-07-05 14:26:12', '', 0, 'http://seven.com/dream/?p=97', 5, 'nav_menu_item', '', 0),
(98, 1, '2016-07-05 18:26:39', '2016-07-05 14:26:39', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2016-07-05 18:26:39', '2016-07-05 14:26:39', '', 0, 'http://seven.com/dream/?p=98', 6, 'nav_menu_item', '', 0),
(99, 1, '2016-07-05 18:26:56', '2016-07-05 14:26:56', ' ', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2016-07-05 18:26:56', '2016-07-05 14:26:56', '', 0, 'http://seven.com/dream/?p=99', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_termmeta`
--

CREATE TABLE IF NOT EXISTS `dl_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_terms`
--

CREATE TABLE IF NOT EXISTS `dl_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `dl_terms`
--

INSERT INTO `dl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'News', 'news', 0),
(2, 'main', 'main', 0),
(3, 'English', 'en', 0),
(4, 'English', 'pll_en', 0),
(5, 'pll_576eea2ac8348', 'pll_576eea2ac8348', 0),
(6, 'Español', 'es', 0),
(7, 'Español', 'pll_es', 0),
(8, 'Noticias', 'noticias-es', 0),
(10, 'pll_576eeafceba4e', 'pll_576eeafceba4e', 0),
(11, 'Principal', 'principal', 0),
(12, 'pll_5771b54feb927', 'pll_5771b54feb927', 0),
(13, 'pll_577284fea0a22', 'pll_577284fea0a22', 0),
(14, 'pll_57731209d7510', 'pll_57731209d7510', 0),
(15, 'footer', 'footer', 0),
(16, 'test', 'test', 0),
(17, 'pll_5774653758cd1', 'pll_5774653758cd1', 0),
(18, 'Pie', 'pie', 0),
(19, 'seccion', 'seccion', 0),
(20, 'secciones', 'secciones', 0),
(24, 'Team', 'team', 0),
(25, 'pll_577bbda2c0bcf', 'pll_577bbda2c0bcf', 0),
(26, 'Equipo', 'equipo', 0),
(28, 'pll_577bbeee48d79', 'pll_577bbeee48d79', 0),
(29, 'Contact', 'contact', 0),
(30, 'pll_577bc25dc74ac', 'pll_577bc25dc74ac', 0),
(31, 'Contacto', 'contacto', 0),
(33, 'pll_577bc2e45fa87', 'pll_577bc2e45fa87', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_relationships`
--

CREATE TABLE IF NOT EXISTS `dl_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dl_term_relationships`
--

INSERT INTO `dl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 13, 0),
(2, 3, 0),
(2, 10, 0),
(8, 5, 0),
(8, 7, 0),
(13, 6, 0),
(13, 10, 0),
(15, 2, 0),
(16, 4, 0),
(16, 11, 0),
(16, 17, 0),
(17, 11, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 4, 0),
(24, 25, 0),
(26, 3, 0),
(26, 7, 0),
(26, 25, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(29, 4, 0),
(29, 30, 0),
(30, 3, 0),
(30, 12, 0),
(31, 7, 0),
(31, 30, 0),
(32, 6, 0),
(32, 12, 0),
(36, 6, 0),
(36, 8, 0),
(36, 13, 0),
(39, 1, 0),
(39, 3, 0),
(39, 14, 0),
(41, 6, 0),
(41, 8, 0),
(41, 14, 0),
(43, 15, 0),
(44, 15, 0),
(47, 2, 0),
(49, 3, 0),
(50, 3, 0),
(51, 1, 0),
(51, 3, 0),
(53, 1, 0),
(53, 3, 0),
(55, 15, 0),
(56, 18, 0),
(59, 19, 0),
(60, 20, 0),
(61, 19, 0),
(62, 20, 0),
(67, 18, 0),
(68, 18, 0),
(72, 11, 0),
(73, 11, 0),
(74, 11, 0),
(75, 3, 0),
(79, 3, 0),
(79, 24, 0),
(79, 28, 0),
(80, 20, 0),
(81, 19, 0),
(84, 6, 0),
(84, 26, 0),
(84, 28, 0),
(86, 2, 0),
(87, 11, 0),
(88, 15, 0),
(89, 18, 0),
(90, 3, 0),
(90, 29, 0),
(90, 33, 0),
(92, 6, 0),
(92, 31, 0),
(92, 33, 0),
(94, 20, 0),
(95, 19, 0),
(96, 11, 0),
(97, 18, 0),
(98, 2, 0),
(99, 15, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `dl_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `dl_term_taxonomy`
--

INSERT INTO `dl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'language', 'a:3:{s:6:"locale";s:5:"en_GB";s:3:"rtl";i:0;s:9:"flag_code";s:2:"gb";}', 0, 10),
(4, 4, 'term_language', '', 0, 4),
(5, 5, 'term_translations', 'a:2:{s:2:"en";i:1;s:2:"es";i:8;}', 0, 2),
(6, 6, 'language', 'a:3:{s:6:"locale";s:5:"es_VE";s:3:"rtl";i:0;s:9:"flag_code";s:2:"ve";}', 0, 5),
(7, 7, 'term_language', '', 0, 3),
(8, 8, 'category', '', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:"es";i:13;s:2:"en";i:2;}', 0, 2),
(11, 11, 'nav_menu', '', 0, 7),
(12, 12, 'post_translations', 'a:2:{s:2:"en";i:30;s:2:"es";i:32;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:"en";i:1;s:2:"es";i:36;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:"en";i:39;s:2:"es";i:41;}', 0, 2),
(15, 15, 'nav_menu', '', 0, 5),
(16, 16, 'category', '', 0, 0),
(17, 17, 'term_translations', 'a:1:{s:2:"en";i:16;}', 0, 1),
(18, 18, 'nav_menu', '', 0, 5),
(19, 19, 'nav_menu', '', 0, 4),
(20, 20, 'nav_menu', '', 0, 4),
(24, 24, 'category', '', 0, 1),
(25, 25, 'term_translations', 'a:2:{s:2:"es";i:26;s:2:"en";i:24;}', 0, 2),
(26, 26, 'category', '', 0, 1),
(28, 28, 'post_translations', 'a:2:{s:2:"es";i:84;s:2:"en";i:79;}', 0, 2),
(29, 29, 'category', '', 0, 1),
(30, 30, 'term_translations', 'a:2:{s:2:"en";i:29;s:2:"es";i:31;}', 0, 2),
(31, 31, 'category', '', 0, 1),
(33, 33, 'post_translations', 'a:2:{s:2:"es";i:92;s:2:"en";i:90;}', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_usermeta`
--

CREATE TABLE IF NOT EXISTS `dl_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `dl_usermeta`
--

INSERT INTO `dl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'dl_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'dl_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'pll_lgt'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"d8e751b72f959fc75d8d0fd216afe05085e76a0bb249701c463e912a92a557e5";a:4:{s:10:"expiration";i:1467898823;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0";s:5:"login";i:1467726023;}s:64:"a936b5a8ae21ecb81333a26dab8f86eac6242cda0b50967f69d67c7759fe399c";a:4:{s:10:"expiration";i:1467924454;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0";s:5:"login";i:1467751654;}}'),
(15, 1, 'dl_dashboard_quick_press_last_post_id', '75'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '15'),
(19, 1, 'dl_user-settings', 'editor=html&libraryContent=browse'),
(20, 1, 'dl_user-settings-time', '1466893855'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:9:"authordiv";}'),
(23, 1, 'meta-box-order_page', 'a:3:{s:4:"side";s:38:"slugdiv,ml_box,submitdiv,pageparentdiv";s:6:"normal";s:62:"revisionsdiv,postcustom,commentstatusdiv,commentsdiv,authordiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_page', '2'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_users`
--

CREATE TABLE IF NOT EXISTS `dl_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `dl_users`
--

INSERT INTO `dl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bjnm1IFIL/0tH4tWYUAg6y9TCMG/MN.', 'admin', 'jheancg@gmail.com', '', '2016-06-24 22:07:49', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `dl_links`
--
ALTER TABLE `dl_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `dl_options`
--
ALTER TABLE `dl_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `dl_term_relationships`
--
ALTER TABLE `dl_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_users`
--
ALTER TABLE `dl_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dl_links`
--
ALTER TABLE `dl_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_options`
--
ALTER TABLE `dl_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=462;
--
-- AUTO_INCREMENT de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=542;
--
-- AUTO_INCREMENT de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `dl_users`
--
ALTER TABLE `dl_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
