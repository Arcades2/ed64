-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 04 déc. 2019 à 21:28
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ed`
--

-- --------------------------------------------------------

--
-- Structure de la table `wpl_commentmeta`
--

DROP TABLE IF EXISTS `wpl_commentmeta`;
CREATE TABLE IF NOT EXISTS `wpl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpl_comments`
--

DROP TABLE IF EXISTS `wpl_comments`;
CREATE TABLE IF NOT EXISTS `wpl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_comments`
--

INSERT INTO `wpl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-03 11:24:30', '2019-05-03 09:24:30', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpl_links`
--

DROP TABLE IF EXISTS `wpl_links`;
CREATE TABLE IF NOT EXISTS `wpl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpl_options`
--

DROP TABLE IF EXISTS `wpl_options`;
CREATE TABLE IF NOT EXISTS `wpl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_options`
--

INSERT INTO `wpl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ed.test/wordpress', 'yes'),
(2, 'home', 'http://ed.test/wordpress', 'yes'),
(3, 'blogname', 'ED64', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'peret.etienne@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:39:\"disable-gutenberg/disable-gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ed64', 'yes'),
(41, 'stylesheet', 'ed64', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wpl_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1575498270;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575537065;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575537870;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575537880;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'active_mu_plugins', 'a:2:{i:0;s:15:\"plate/plate.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(114, 'theme_mods_wordplate', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1556877846;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(283, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1576099675', 'no'),
(278, '_site_transient_timeout_theme_roots', '1575496587', 'no'),
(279, '_site_transient_theme_roots', 'a:2:{s:4:\"ed64\";s:7:\"/themes\";s:9:\"wordplate\";s:7:\"/themes\";}', 'no'),
(280, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575494788;s:7:\"checked\";a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";s:5:\"1.8.1\";}s:8:\"response\";a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(284, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(166, 'acf_version', '5.8.0', 'yes'),
(272, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1575494787;s:15:\"version_checked\";s:5:\"5.1.3\";s:12:\"translations\";a:0:{}}', 'no'),
(273, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575494788;s:7:\"checked\";a:2:{s:4:\"ed64\";s:5:\"6.0.0\";s:9:\"wordplate\";s:5:\"6.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(275, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"peret.etienne@gmail.com\";s:7:\"version\";s:5:\"5.1.3\";s:9:\"timestamp\";i:1575385761;}', 'no'),
(133, 'recently_activated', 'a:1:{s:24:\"block-options/plugin.php\";i:1557654750;}', 'yes'),
(136, 'current_theme', 'ED64', 'yes'),
(137, 'theme_mods_ed64', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(281, '_site_transient_timeout_browser_2894fb4dbf964f58ccf3d2e4e372b316', '1576099675', 'no'),
(282, '_site_transient_browser_2894fb4dbf964f58ccf3d2e4e372b316', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wpl_postmeta`
--

DROP TABLE IF EXISTS `wpl_postmeta`;
CREATE TABLE IF NOT EXISTS `wpl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_postmeta`
--

INSERT INTO `wpl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1556876303:1'),
(7, 6, '_menu_item_type', 'custom'),
(6, 2, '_edit_lock', '1556877424:1'),
(8, 6, '_menu_item_menu_item_parent', '0'),
(9, 6, '_menu_item_object_id', '6'),
(10, 6, '_menu_item_object', 'custom'),
(11, 6, '_menu_item_target', ''),
(12, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 6, '_menu_item_xfn', ''),
(14, 6, '_menu_item_url', '//localhost:3000/'),
(15, 6, '_menu_item_orphaned', '1557213873'),
(16, 7, '_menu_item_type', 'post_type'),
(17, 7, '_menu_item_menu_item_parent', '0'),
(18, 7, '_menu_item_object_id', '2'),
(19, 7, '_menu_item_object', 'page'),
(20, 7, '_menu_item_target', ''),
(21, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 7, '_menu_item_xfn', ''),
(23, 7, '_menu_item_url', ''),
(24, 7, '_menu_item_orphaned', '1557213873'),
(25, 8, '_menu_item_type', 'custom'),
(26, 8, '_menu_item_menu_item_parent', '0'),
(27, 8, '_menu_item_object_id', '8'),
(28, 8, '_menu_item_object', 'custom'),
(29, 8, '_menu_item_target', ''),
(30, 8, '_menu_item_classes', 'a:1:{i:0;s:11:\"navbar-item\";}'),
(31, 8, '_menu_item_xfn', ''),
(32, 8, '_menu_item_url', '//localhost:3000/'),
(34, 9, '_menu_item_type', 'post_type'),
(35, 9, '_menu_item_menu_item_parent', '0'),
(36, 9, '_menu_item_object_id', '2'),
(37, 9, '_menu_item_object', 'page'),
(38, 9, '_menu_item_target', ''),
(39, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 9, '_menu_item_xfn', ''),
(41, 9, '_menu_item_url', ''),
(42, 9, '_menu_item_orphaned', '1557213942'),
(43, 10, '_menu_item_type', 'custom'),
(44, 10, '_menu_item_menu_item_parent', '0'),
(45, 10, '_menu_item_object_id', '10'),
(46, 10, '_menu_item_object', 'custom'),
(47, 10, '_menu_item_target', ''),
(48, 10, '_menu_item_classes', 'a:1:{i:0;s:11:\"navbar-item\";}'),
(49, 10, '_menu_item_xfn', ''),
(50, 10, '_menu_item_url', 'http://localhost:3000'),
(159, 44, 'projects_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(52, 11, '_menu_item_type', 'custom'),
(53, 11, '_menu_item_menu_item_parent', '0'),
(54, 11, '_menu_item_object_id', '11'),
(55, 11, '_menu_item_object', 'custom'),
(56, 11, '_menu_item_target', ''),
(57, 11, '_menu_item_classes', 'a:1:{i:0;s:11:\"navbar-item\";}'),
(58, 11, '_menu_item_xfn', ''),
(59, 11, '_menu_item_url', 'http://localhost:3000'),
(61, 12, '_menu_item_type', 'custom'),
(62, 12, '_menu_item_menu_item_parent', '0'),
(63, 12, '_menu_item_object_id', '12'),
(64, 12, '_menu_item_object', 'custom'),
(65, 12, '_menu_item_target', ''),
(66, 12, '_menu_item_classes', 'a:1:{i:0;s:11:\"navbar-item\";}'),
(67, 12, '_menu_item_xfn', ''),
(68, 12, '_menu_item_url', 'http://localhost:3000'),
(70, 13, '_edit_lock', '1560185173:1'),
(142, 44, '_gallery', 'field_5cfe87fbc7fb5'),
(141, 44, 'gallery', 'a:9:{i:0;s:2:\"31\";i:1;s:2:\"33\";i:2;s:2:\"21\";i:3;s:2:\"30\";i:4;s:2:\"39\";i:5;s:2:\"41\";i:6;s:2:\"51\";i:7;s:2:\"52\";i:8;s:2:\"53\";}'),
(140, 46, '_edit_lock', '1560265424:1'),
(139, 46, '_edit_last', '1'),
(138, 44, '_edit_lock', '1575494745:1'),
(137, 44, '_edit_last', '1'),
(82, 18, '_edit_last', '1'),
(83, 18, '_edit_lock', '1557655554:1'),
(84, 21, '_wp_attached_file', '2019/05/aa765614a37d.jpg'),
(85, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2019/05/aa765614a37d.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"aa765614a37d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"aa765614a37d-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"aa765614a37d-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"aa765614a37d-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 13, '_edit_last', '1'),
(87, 13, 'text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque mi enim, vel molestie tortor dapibus a. Nulla sollicitudin lectus eget odio ultricies ultrices. Nulla facilisi. Ut dapibus vitae sapien a molestie. Donec lobortis, magna vitae sagittis fermentum, lorem libero lobortis magna, quis rhoncus magna nisi et ante. Mauris ut lacus sapien. Sed porta ante purus, sagittis tristique odio vulputate ac.\r\n\r\nMauris quis ligula sit amet elit convallis mattis eu cursus elit. Aliquam laoreet ex eget nunc hendrerit vulputate. Maecenas a enim tincidunt felis dapibus congue et id mi. Aliquam porta turpis quis purus ultrices cursus. Proin mollis quis lacus quis tempor. In pretium magna nec nisi semper, sit amet interdum lacus posuere.'),
(95, 23, 'text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque mi enim, vel molestie tortor dapibus a. Nulla sollicitudin lectus eget odio ultricies ultrices. Nulla facilisi. Ut dapibus vitae sapien a molestie. Donec lobortis, magna vitae sagittis fermentum, lorem libero lobortis magna, quis rhoncus magna nisi et ante. Mauris ut lacus sapien. Sed porta ante purus, sagittis tristique odio vulputate ac.\r\n\r\nMauris quis ligula sit amet elit convallis mattis eu cursus elit. Aliquam laoreet ex eget nunc hendrerit vulputate. Maecenas a enim tincidunt felis dapibus congue et id mi. Aliquam porta turpis quis purus ultrices cursus. Proin mollis quis lacus quis tempor. In pretium magna nec nisi semper, sit amet interdum lacus posuere.'),
(88, 13, '_text', 'field_5cd7ec3a8fb0f'),
(89, 13, 'image', '21'),
(90, 13, '_image', 'field_5cd7ec4e8fb10'),
(91, 22, 'text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam scelerisque mi enim, vel molestie tortor dapibus a. Nulla sollicitudin lectus eget odio ultricies ultrices. Nulla facilisi. Ut dapibus vitae sapien a molestie. Donec lobortis, magna vitae sagittis fermentum, lorem libero lobortis magna, quis rhoncus magna nisi et ante. Mauris ut lacus sapien. Sed porta ante purus, sagittis tristique odio vulputate ac.\r\n\r\nMauris quis ligula sit amet elit convallis mattis eu cursus elit. Aliquam laoreet ex eget nunc hendrerit vulputate. Maecenas a enim tincidunt felis dapibus congue et id mi. Aliquam porta turpis quis purus ultrices cursus. Proin mollis quis lacus quis tempor. In pretium magna nec nisi semper, sit amet interdum lacus posuere. Phasellus ultricies ipsum a turpis suscipit, a semper ante sagittis. Morbi finibus magna eu viverra aliquam. Nam libero dui, imperdiet sit amet massa eget, ullamcorper aliquam lorem. Sed eget sem mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi feugiat risus odio, sed egestas erat tempor sit amet. Proin nisi nibh, ultricies quis risus non, tincidunt facilisis arcu. In est diam, vulputate gravida fringilla at, dictum nec diam.'),
(92, 22, '_text', 'field_5cd7ec3a8fb0f'),
(93, 22, 'image', '21'),
(94, 22, '_image', 'field_5cd7ec4e8fb10'),
(96, 23, '_text', 'field_5cd7ec3a8fb0f'),
(97, 23, 'image', '21'),
(98, 23, '_image', 'field_5cd7ec4e8fb10'),
(99, 24, '_edit_last', '1'),
(100, 24, '_edit_lock', '1557758774:1'),
(101, 28, '_edit_last', '1'),
(102, 28, '_edit_lock', '1575494892:1'),
(103, 30, '_wp_attached_file', '2019/05/01a67dbdf09d.jpeg'),
(104, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:25:\"2019/05/01a67dbdf09d.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"01a67dbdf09d-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"01a67dbdf09d-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"01a67dbdf09d-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"01a67dbdf09d-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 31, '_wp_attached_file', '2019/05/21fca3606d04.jpg'),
(106, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2019/05/21fca3606d04.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"21fca3606d04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"21fca3606d04-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"21fca3606d04-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"21fca3606d04-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 33, '_wp_attached_file', '2019/05/img_9908.jpg'),
(110, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:20:\"2019/05/img_9908.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_9908-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_9908-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_9908-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img_9908-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1361876837\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"59\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(111, 28, 'image_service', '30'),
(112, 28, '_image_service', 'field_5cd84cd511cdf'),
(113, 28, 'image_menuiserie', '31'),
(114, 28, '_image_menuiserie', 'field_5cd84d0211ce0'),
(115, 28, 'image_amenagement', '33'),
(116, 28, '_image_amenagement', 'field_5cd84d2911ce1'),
(117, 34, 'image_service', '30'),
(118, 34, '_image_service', 'field_5cd84cd511cdf'),
(119, 34, 'image_menuiserie', '31'),
(120, 34, '_image_menuiserie', 'field_5cd84d0211ce0'),
(121, 34, 'image_amenagement', '33'),
(122, 34, '_image_amenagement', 'field_5cd84d2911ce1'),
(123, 35, '_edit_last', '1'),
(124, 35, '_edit_lock', '1557758850:1'),
(125, 37, '_edit_last', '1'),
(126, 37, '_edit_lock', '1575494740:1'),
(127, 39, '_wp_attached_file', '2019/05/suivi-de-chantier-avec-logo.png'),
(128, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1333;s:6:\"height\";i:923;s:4:\"file\";s:39:\"2019/05/suivi-de-chantier-avec-logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"suivi-de-chantier-avec-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"suivi-de-chantier-avec-logo-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"suivi-de-chantier-avec-logo-768x532.png\";s:5:\"width\";i:768;s:6:\"height\";i:532;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"suivi-de-chantier-avec-logo-1024x709.png\";s:5:\"width\";i:1024;s:6:\"height\";i:709;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 37, 'section_background', '41'),
(130, 37, '_section_background', 'field_5cd983cdebc1d'),
(131, 40, 'section_background', '39'),
(132, 40, '_section_background', 'field_5cd983cdebc1d'),
(133, 41, '_wp_attached_file', '2019/05/plan-maison-architecte-100m2_6.jpg'),
(134, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2592;s:6:\"height\";i:1684;s:4:\"file\";s:42:\"2019/05/plan-maison-architecte-100m2_6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"plan-maison-architecte-100m2_6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"plan-maison-architecte-100m2_6-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"plan-maison-architecte-100m2_6-768x499.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"plan-maison-architecte-100m2_6-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:101:\"plan de maison moderne d architecte gratuit Inspirant Plan Maison 100m2 A Etage Menuiserie homewreckr\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:17:\"Delaartsplace.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:64:\"plan de maison moderne d architecte gratuit Inspirant Plan Maiso\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:2:{i:0;s:44:\"plan de maison moderne d architecte gratuit\r\";i:1;s:64:\"plan de maison moderne d architecte gratuit Inspirant Plan Maiso\";}}}'),
(135, 42, 'section_background', '41'),
(136, 42, '_section_background', 'field_5cd983cdebc1d'),
(155, 54, 'gallery', 'a:9:{i:0;s:2:\"31\";i:1;s:2:\"33\";i:2;s:2:\"21\";i:3;s:2:\"30\";i:4;s:2:\"39\";i:5;s:2:\"41\";i:6;s:2:\"51\";i:7;s:2:\"52\";i:8;s:2:\"53\";}'),
(158, 44, '_projects_0_title', 'field_5cffa3e6a0fab'),
(157, 44, 'projects_0_title', 'Projet 1'),
(149, 51, '_wp_attached_file', '2019/06/a191493bb3ba9e54b80834d895865c0a.png'),
(150, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:450;s:4:\"file\";s:44:\"2019/06/a191493bb3ba9e54b80834d895865c0a.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a191493bb3ba9e54b80834d895865c0a-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a191493bb3ba9e54b80834d895865c0a-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"a191493bb3ba9e54b80834d895865c0a-768x276.png\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"a191493bb3ba9e54b80834d895865c0a-1024x369.png\";s:5:\"width\";i:1024;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 52, '_wp_attached_file', '2019/06/d757bbb11aafb241ceec3f61f5265197.png'),
(152, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:450;s:4:\"file\";s:44:\"2019/06/d757bbb11aafb241ceec3f61f5265197.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"d757bbb11aafb241ceec3f61f5265197-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"d757bbb11aafb241ceec3f61f5265197-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"d757bbb11aafb241ceec3f61f5265197-768x276.png\";s:5:\"width\";i:768;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"d757bbb11aafb241ceec3f61f5265197-1024x369.png\";s:5:\"width\";i:1024;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 53, '_wp_attached_file', '2019/06/de61f3c1545246919e55f098_t.png'),
(154, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:405;s:6:\"height\";i:720;s:4:\"file\";s:38:\"2019/06/de61f3c1545246919e55f098_t.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"de61f3c1545246919e55f098_t-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"de61f3c1545246919e55f098_t-169x300.png\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 54, '_gallery', 'field_5cfe87fbc7fb5'),
(160, 44, '_projects_0_description', 'field_5cffa402a0fac'),
(161, 44, 'projects_0_image', '53'),
(162, 44, '_projects_0_image', 'field_5cffa41fa0fad'),
(163, 44, 'projects_1_title', 'Projet 2'),
(164, 44, '_projects_1_title', 'field_5cffa3e6a0fab'),
(165, 44, 'projects_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(166, 44, '_projects_1_description', 'field_5cffa402a0fac'),
(167, 44, 'projects_1_image', '41'),
(168, 44, '_projects_1_image', 'field_5cffa41fa0fad'),
(169, 44, 'projects_2_title', 'Projet 3'),
(170, 44, '_projects_2_title', 'field_5cffa3e6a0fab'),
(171, 44, 'projects_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(172, 44, '_projects_2_description', 'field_5cffa402a0fac'),
(173, 44, 'projects_2_image', '33'),
(174, 44, '_projects_2_image', 'field_5cffa41fa0fad'),
(175, 44, 'projects_3_title', 'Projet 4'),
(176, 44, '_projects_3_title', 'field_5cffa3e6a0fab'),
(177, 44, 'projects_3_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(178, 44, '_projects_3_description', 'field_5cffa402a0fac'),
(179, 44, 'projects_3_image', '52'),
(180, 44, '_projects_3_image', 'field_5cffa41fa0fad'),
(181, 44, 'projects', '4'),
(182, 44, '_projects', 'field_5cffa3caa0faa'),
(183, 59, 'gallery', 'a:9:{i:0;s:2:\"31\";i:1;s:2:\"33\";i:2;s:2:\"21\";i:3;s:2:\"30\";i:4;s:2:\"39\";i:5;s:2:\"41\";i:6;s:2:\"51\";i:7;s:2:\"52\";i:8;s:2:\"53\";}'),
(184, 59, '_gallery', 'field_5cfe87fbc7fb5'),
(185, 59, 'projects_0_title', 'Projet 1'),
(186, 59, '_projects_0_title', 'field_5cffa3e6a0fab'),
(187, 59, 'projects_0_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(188, 59, '_projects_0_description', 'field_5cffa402a0fac'),
(189, 59, 'projects_0_image', '53'),
(190, 59, '_projects_0_image', 'field_5cffa41fa0fad'),
(191, 59, 'projects_1_title', 'Projet 2'),
(192, 59, '_projects_1_title', 'field_5cffa3e6a0fab'),
(193, 59, 'projects_1_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(194, 59, '_projects_1_description', 'field_5cffa402a0fac'),
(195, 59, 'projects_1_image', '41'),
(196, 59, '_projects_1_image', 'field_5cffa41fa0fad'),
(197, 59, 'projects_2_title', 'Projet 3'),
(198, 59, '_projects_2_title', 'field_5cffa3e6a0fab'),
(199, 59, 'projects_2_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(200, 59, '_projects_2_description', 'field_5cffa402a0fac'),
(201, 59, 'projects_2_image', '33'),
(202, 59, '_projects_2_image', 'field_5cffa41fa0fad'),
(203, 59, 'projects_3_title', 'Projet 4'),
(204, 59, '_projects_3_title', 'field_5cffa3e6a0fab'),
(205, 59, 'projects_3_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc urna lorem, tristique a molestie ut, ultricies nec purus. Duis tempor orci sapien, sit amet suscipit nibh feugiat semper. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris aliquam condimentum ante in pellentesque. Fusce non ante vel velit ultricies imperdiet. Phasellus augue urna, pellentesque eget tristique quis, consectetur laoreet dui. Aenean in malesuada ipsum. Donec finibus sodales velit sed consectetur. Phasellus consequat placerat nunc vitae gravida. Pellentesque id eleifend diam. Proin accumsan nulla ac venenatis dignissim. Fusce metus odio, mollis et velit eget, rhoncus commodo nulla. Donec ut ante malesuada metus aliquet interdum.'),
(206, 59, '_projects_3_description', 'field_5cffa402a0fac'),
(207, 59, 'projects_3_image', '52'),
(208, 59, '_projects_3_image', 'field_5cffa41fa0fad'),
(209, 59, 'projects', '4'),
(210, 59, '_projects', 'field_5cffa3caa0faa');

-- --------------------------------------------------------

--
-- Structure de la table `wpl_posts`
--

DROP TABLE IF EXISTS `wpl_posts`;
CREATE TABLE IF NOT EXISTS `wpl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_posts`
--

INSERT INTO `wpl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-03 11:24:30', '2019-05-03 09:24:30', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-05-03 11:36:01', '2019-05-03 09:36:01', '', 0, 'http://ed.test/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-03 11:24:30', '2019-05-03 09:24:30', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://ed.test/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-05-03 11:24:30', '2019-05-03 09:24:30', '', 0, 'http://ed.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-03 11:24:30', '2019-05-03 09:24:30', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://ed.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-05-03 11:24:30', '2019-05-03 09:24:30', '', 0, 'http://ed.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-05-03 11:35:52', '2019-05-03 09:35:52', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-05-03 11:35:52', '2019-05-03 09:35:52', '', 1, 'http://ed.test/1-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2019-05-03 11:50:46', '2019-05-03 09:50:46', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page «&nbsp;À propos&nbsp;» qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela&nbsp;:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://ed.test/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien&nbsp;!</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-05-03 11:50:46', '2019-05-03 09:50:46', '', 2, 'http://ed.test/2-autosave-v1/', 0, 'revision', '', 0),
(6, 1, '2019-05-07 09:24:33', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-07 09:24:33', '0000-00-00 00:00:00', '', 0, 'http://ed.test/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2019-05-07 09:24:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-07 09:24:33', '0000-00-00 00:00:00', '', 0, 'http://ed.test/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-05-07 09:26:48', '2019-05-07 07:26:48', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-05-12 15:40:00', '2019-05-12 13:40:00', '', 0, 'http://ed.test/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-05-07 09:25:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-05-07 09:25:42', '0000-00-00 00:00:00', '', 0, 'http://ed.test/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-05-07 09:26:48', '2019-05-07 07:26:48', '', 'Aménagements', '', 'publish', 'closed', 'closed', '', 'amenagements', '', '', '2019-05-12 15:40:00', '2019-05-12 13:40:00', '', 0, 'http://ed.test/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2019-05-07 09:26:48', '2019-05-07 07:26:48', '', 'Menuiserie', '', 'publish', 'closed', 'closed', '', 'menuiserie', '', '', '2019-05-12 15:40:00', '2019-05-12 13:40:00', '', 0, 'http://ed.test/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2019-05-07 09:26:48', '2019-05-07 07:26:48', '', 'Prendre RDV', '', 'publish', 'closed', 'closed', '', 'prendre-rdv', '', '', '2019-05-12 15:40:00', '2019-05-12 13:40:00', '', 0, 'http://ed.test/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2019-05-12 12:15:53', '2019-05-12 10:15:53', '', 'Notre concept', '', 'publish', 'closed', 'closed', '', 'notre-concept', '', '', '2019-05-12 16:14:46', '2019-05-12 14:14:46', '', 0, 'http://ed.test/?page_id=13', 0, 'page', '', 0),
(51, 1, '2019-06-10 20:01:47', '2019-06-10 18:01:47', '', 'a191493bb3ba9e54b80834d895865c0a', '', 'inherit', 'open', 'closed', '', 'a191493bb3ba9e54b80834d895865c0a', '', '', '2019-06-10 20:01:47', '2019-06-10 18:01:47', '', 44, 'http://ed.test/uploads/2019/06/a191493bb3ba9e54b80834d895865c0a.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-06-10 18:40:11', '2019-06-10 16:40:11', '', 'Nos réalisations', '', 'publish', 'closed', 'closed', '', 'nos-realisations', '', '', '2019-06-11 14:57:32', '2019-06-11 12:57:32', '', 0, 'http://ed.test/?page_id=44', 0, 'page', '', 0),
(46, 1, '2019-06-10 18:41:44', '2019-06-10 16:41:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"44\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Slide 4', 'slide-4', 'publish', 'closed', 'closed', '', 'group_5cfe87f2e0a7d', '', '', '2019-06-11 14:57:23', '2019-06-11 12:57:23', '', 0, 'http://ed.test/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(59, 1, '2019-06-11 14:54:54', '2019-06-11 12:54:54', '', 'Nos réalisations', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-06-11 14:54:54', '2019-06-11 12:54:54', '', 44, 'http://ed.test/44-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-05-12 11:50:42', '2019-05-12 09:50:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Slide 2', 'slide-2', 'publish', 'closed', 'closed', '', 'group_5cd7ec34ec4af', '', '', '2019-05-12 12:08:17', '2019-05-12 10:08:17', '', 0, 'http://ed.test/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2019-05-12 11:50:42', '2019-05-12 09:50:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Texte', 'text', 'publish', 'closed', 'closed', '', 'field_5cd7ec3a8fb0f', '', '', '2019-05-12 12:08:17', '2019-05-12 10:08:17', '', 18, 'http://ed.test/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(20, 1, '2019-05-12 11:50:42', '2019-05-12 09:50:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5cd7ec4e8fb10', '', '', '2019-05-12 11:50:42', '2019-05-12 09:50:42', '', 18, 'http://ed.test/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2019-05-12 12:15:47', '2019-05-12 10:15:47', '', 'aa765614a37d', '', 'inherit', 'open', 'closed', '', 'aa765614a37d', '', '', '2019-06-10 18:46:55', '2019-06-10 16:46:55', '', 13, 'http://ed.test/uploads/2019/05/aa765614a37d.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-05-12 12:15:53', '2019-05-12 10:15:53', '', 'Notre concept', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-12 12:15:53', '2019-05-12 10:15:53', '', 13, 'http://ed.test/13-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-05-12 16:14:46', '2019-05-12 14:14:46', '', 'Notre concept', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-12 16:14:46', '2019-05-12 14:14:46', '', 13, 'http://ed.test/13-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-05-12 18:44:29', '2019-05-12 16:44:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"28\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Slide 3', 'slide-3', 'publish', 'closed', 'closed', '', 'group_5cd84cc628859', '', '', '2019-05-12 18:44:59', '2019-05-12 16:44:59', '', 0, 'http://ed.test/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2019-05-12 18:44:29', '2019-05-12 16:44:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image \"Nos Services\"', 'image_service', 'publish', 'closed', 'closed', '', 'field_5cd84cd511cdf', '', '', '2019-05-12 18:44:29', '2019-05-12 16:44:29', '', 24, 'http://ed.test/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 1, '2019-05-12 18:44:29', '2019-05-12 16:44:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image \"Menuiserie\"', 'image_menuiserie', 'publish', 'closed', 'closed', '', 'field_5cd84d0211ce0', '', '', '2019-05-12 18:44:29', '2019-05-12 16:44:29', '', 24, 'http://ed.test/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2019-05-12 18:44:29', '2019-05-12 16:44:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image \"Aménagement\"', 'image_amenagement', 'publish', 'closed', 'closed', '', 'field_5cd84d2911ce1', '', '', '2019-05-12 18:44:29', '2019-05-12 16:44:29', '', 24, 'http://ed.test/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2019-05-12 18:44:43', '2019-05-12 16:44:43', '', 'Nos Services', '', 'publish', 'closed', 'closed', '', 'nos-services', '', '', '2019-05-13 10:30:07', '2019-05-13 08:30:07', '', 0, 'http://ed.test/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-05-12 18:44:43', '2019-05-12 16:44:43', '', 'Nos Services', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-05-12 18:44:43', '2019-05-12 16:44:43', '', 28, 'http://ed.test/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-05-13 10:29:36', '2019-05-13 08:29:36', '', '01a67dbdf09d', '', 'inherit', 'open', 'closed', '', '01a67dbdf09d', '', '', '2019-05-13 10:29:38', '2019-05-13 08:29:38', '', 28, 'http://ed.test/uploads/2019/05/01a67dbdf09d.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-05-13 10:29:42', '2019-05-13 08:29:42', '', '21fca3606d04', '', 'inherit', 'open', 'closed', '', '21fca3606d04', '', '', '2019-05-13 10:29:44', '2019-05-13 08:29:44', '', 28, 'http://ed.test/uploads/2019/05/21fca3606d04.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-05-13 10:30:00', '2019-05-13 08:30:00', '', 'IMG_9908', '', 'inherit', 'open', 'closed', '', 'img_9908', '', '', '2019-05-13 10:30:02', '2019-05-13 08:30:02', '', 28, 'http://ed.test/uploads/2019/05/img_9908.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-05-13 10:30:07', '2019-05-13 08:30:07', '', 'Nos Services', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-05-13 10:30:07', '2019-05-13 08:30:07', '', 28, 'http://ed.test/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-05-13 16:49:29', '2019-05-13 14:49:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"37\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Slide 1', 'slide-1', 'publish', 'closed', 'closed', '', 'group_5cd983c9a4266', '', '', '2019-05-13 16:49:53', '2019-05-13 14:49:53', '', 0, 'http://ed.test/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2019-05-13 16:49:29', '2019-05-13 14:49:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image de fond', 'section_background', 'publish', 'closed', 'closed', '', 'field_5cd983cdebc1d', '', '', '2019-05-13 16:49:29', '2019-05-13 14:49:29', '', 35, 'http://ed.test/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2019-05-13 16:49:46', '2019-05-13 14:49:46', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-05-13 16:58:26', '2019-05-13 14:58:26', '', 0, 'http://ed.test/?page_id=37', 0, 'page', '', 0),
(39, 1, '2019-05-13 16:51:58', '2019-05-13 14:51:58', '', 'Suivi-de-chantier-avec-logo', '', 'inherit', 'open', 'closed', '', 'suivi-de-chantier-avec-logo', '', '', '2019-05-13 16:52:00', '2019-05-13 14:52:00', '', 37, 'http://ed.test/uploads/2019/05/suivi-de-chantier-avec-logo.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-05-13 16:52:02', '2019-05-13 14:52:02', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-05-13 16:52:02', '2019-05-13 14:52:02', '', 37, 'http://ed.test/37-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-05-13 16:58:22', '2019-05-13 14:58:22', '', 'plan de maison moderne d architecte gratuit Inspirant Plan Maiso', 'plan de maison moderne d architecte gratuit Inspirant Plan Maison 100m2 A Etage Menuiserie homewreckr', 'inherit', 'open', 'closed', '', 'plan-de-maison-moderne-d-architecte-gratuit-inspirant-plan-maiso', '', '', '2019-06-10 20:01:06', '2019-06-10 18:01:06', '', 37, 'http://ed.test/uploads/2019/05/plan-maison-architecte-100m2_6.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-05-13 16:58:26', '2019-05-13 14:58:26', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-05-13 16:58:26', '2019-05-13 14:58:26', '', 37, 'http://ed.test/37-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-06-11 14:53:34', '2019-06-11 12:53:34', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Réalisations', 'projects', 'publish', 'closed', 'closed', '', 'field_5cffa3caa0faa', '', '', '2019-06-11 14:56:18', '2019-06-11 12:56:18', '', 46, 'http://ed.test/?post_type=acf-field&#038;p=55', 0, 'acf-field', '', 0),
(52, 1, '2019-06-10 20:01:48', '2019-06-10 18:01:48', '', 'd757bbb11aafb241ceec3f61f5265197', '', 'inherit', 'open', 'closed', '', 'd757bbb11aafb241ceec3f61f5265197', '', '', '2019-06-10 20:01:48', '2019-06-10 18:01:48', '', 44, 'http://ed.test/uploads/2019/06/d757bbb11aafb241ceec3f61f5265197.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-06-10 20:01:48', '2019-06-10 18:01:48', '', 'de61f3c1545246919e55f098_t', '', 'inherit', 'open', 'closed', '', 'de61f3c1545246919e55f098_t', '', '', '2019-06-10 20:01:53', '2019-06-10 18:01:53', '', 44, 'http://ed.test/uploads/2019/06/de61f3c1545246919e55f098_t.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-06-10 20:01:55', '2019-06-10 18:01:55', '', 'Nos réalisations', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-06-10 20:01:55', '2019-06-10 18:01:55', '', 44, 'http://ed.test/44-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-06-11 14:53:34', '2019-06-11 12:53:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titre', 'title', 'publish', 'closed', 'closed', '', 'field_5cffa3e6a0fab', '', '', '2019-06-11 14:53:34', '2019-06-11 12:53:34', '', 55, 'http://ed.test/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2019-06-11 14:53:34', '2019-06-11 12:53:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5cffa3caa0faa\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5cffa402a0fac', '', '', '2019-06-11 14:57:23', '2019-06-11 12:57:23', '', 55, 'http://ed.test/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(58, 1, '2019-06-11 14:53:34', '2019-06-11 12:53:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5cffa41fa0fad', '', '', '2019-06-11 14:53:34', '2019-06-11 12:53:34', '', 55, 'http://ed.test/?post_type=acf-field&p=58', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpl_termmeta`
--

DROP TABLE IF EXISTS `wpl_termmeta`;
CREATE TABLE IF NOT EXISTS `wpl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wpl_terms`
--

DROP TABLE IF EXISTS `wpl_terms`;
CREATE TABLE IF NOT EXISTS `wpl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_terms`
--

INSERT INTO `wpl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'primary-menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpl_term_relationships`
--

DROP TABLE IF EXISTS `wpl_term_relationships`;
CREATE TABLE IF NOT EXISTS `wpl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_term_relationships`
--

INSERT INTO `wpl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wpl_term_taxonomy`
--

DROP TABLE IF EXISTS `wpl_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wpl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_term_taxonomy`
--

INSERT INTO `wpl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wpl_usermeta`
--

DROP TABLE IF EXISTS `wpl_usermeta`;
CREATE TABLE IF NOT EXISTS `wpl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_usermeta`
--

INSERT INTO `wpl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8d1b9caa2fa2c773244cd3b66dbf8a3da0bbe01a8bdbf769412ce8adcd358c7b\";a:4:{s:10:\"expiration\";i:1575667674;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575494874;}}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(19, 1, 'closedpostboxes_page', 'a:0:{}'),
(20, 1, 'metaboxhidden_page', 'a:7:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"postimagediv\";i:2;s:12:\"revisionsdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(21, 1, 'wpl_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=1&advImgDetails=show'),
(22, 1, 'wpl_user-settings-time', '1575494870'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wpl_users`
--

DROP TABLE IF EXISTS `wpl_users`;
CREATE TABLE IF NOT EXISTS `wpl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wpl_users`
--

INSERT INTO `wpl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$2y$10$K.ogd4UIryhs0m9LtbsacetGI2YCHPzue4MNQHHvPI0YkKd//C3lC', 'admin', 'peret.etienne@gmail.com', '', '2019-05-03 09:24:30', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
