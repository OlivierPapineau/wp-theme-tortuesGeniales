-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 01 mars 2019 à 13:49
-- Version du serveur :  5.7.22
-- Version de PHP :  7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lesTortuesGeniales`
--

-- --------------------------------------------------------

--
-- Structure de la table `tg_commentmeta`
--

CREATE TABLE `tg_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tg_comments`
--

CREATE TABLE `tg_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_comments`
--

INSERT INTO `tg_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-01 14:41:48', '2019-02-01 13:41:48', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tg_links`
--

CREATE TABLE `tg_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tg_options`
--

CREATE TABLE `tg_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_options`
--

INSERT INTO `tg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales', 'yes'),
(2, 'home', 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales', 'yes'),
(3, 'blogname', 'Les Tortues Géniales', 'yes'),
(4, 'blogdescription', 'Nous aimons les tortues!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'olivier.12.papineau@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lesTortuesGeniales', 'yes'),
(41, 'stylesheet', 'lesTortuesGeniales', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '23', 'yes'),
(84, 'page_on_front', '19', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'tg_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:22:\"Recherche dans le site\";}i:4;a:1:{s:5:\"title\";s:9:\"Recherche\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:16:\"Articles recents\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:20:\"Commentaires recents\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:7:\"Achives\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:17:\"unique-sidebar-id\";a:1:{i:0;s:8:\"search-3\";}s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"gauche\";a:2:{i:0;s:17:\"recent-comments-3\";i:1;s:10:\"archives-3\";}s:6:\"droite\";a:2:{i:0;s:8:\"search-4\";i:1;s:14:\"recent-posts-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1551447709;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1551447722;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1551452683;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549030775;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(140, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Tortek', 'yes'),
(144, 'theme_mods_lesTortuesGeniales', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"change_image\";s:150:\"http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg\";s:12:\"charge_image\";s:150:\"http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg\";}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'new_admin_email', 'olivier.12.papineau@gmail.com', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(195, '_site_transient_timeout_browser_99300bd9d945f12d1e467c9ba917389b', '1551446379', 'no'),
(196, '_site_transient_browser_99300bd9d945f12d1e467c9ba917389b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"72.0.3626.109\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(229, '_site_transient_timeout_theme_roots', '1551447828', 'no'),
(230, '_site_transient_theme_roots', 'a:4:{s:18:\"lesTortuesGeniales\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(233, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.1.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1551446029;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-02-25 17:15:52\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(234, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1551446029;s:7:\"checked\";a:4:{s:18:\"lesTortuesGeniales\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(235, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1551446029;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `tg_postmeta`
--

CREATE TABLE `tg_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_postmeta`
--

INSERT INTO `tg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1550844051:1'),
(6, 8, '_edit_lock', '1549034603:1'),
(7, 10, '_menu_item_type', 'custom'),
(8, 10, '_menu_item_menu_item_parent', '0'),
(9, 10, '_menu_item_object_id', '10'),
(10, 10, '_menu_item_object', 'custom'),
(11, 10, '_menu_item_target', ''),
(12, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 10, '_menu_item_xfn', ''),
(14, 10, '_menu_item_url', 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/'),
(15, 10, '_menu_item_orphaned', '1549034779'),
(16, 11, '_menu_item_type', 'post_type'),
(17, 11, '_menu_item_menu_item_parent', '0'),
(18, 11, '_menu_item_object_id', '8'),
(19, 11, '_menu_item_object', 'page'),
(20, 11, '_menu_item_target', ''),
(21, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 11, '_menu_item_xfn', ''),
(23, 11, '_menu_item_url', ''),
(24, 11, '_menu_item_orphaned', '1549034779'),
(25, 12, '_menu_item_type', 'post_type'),
(26, 12, '_menu_item_menu_item_parent', '0'),
(27, 12, '_menu_item_object_id', '2'),
(28, 12, '_menu_item_object', 'page'),
(29, 12, '_menu_item_target', ''),
(30, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 12, '_menu_item_xfn', ''),
(32, 12, '_menu_item_url', ''),
(33, 12, '_menu_item_orphaned', '1549034779'),
(34, 13, '_menu_item_type', 'post_type'),
(35, 13, '_menu_item_menu_item_parent', '0'),
(36, 13, '_menu_item_object_id', '2'),
(37, 13, '_menu_item_object', 'page'),
(38, 13, '_menu_item_target', ''),
(39, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 13, '_menu_item_xfn', ''),
(41, 13, '_menu_item_url', ''),
(42, 13, '_menu_item_orphaned', '1549034809'),
(43, 14, '_menu_item_type', 'custom'),
(44, 14, '_menu_item_menu_item_parent', '0'),
(45, 14, '_menu_item_object_id', '14'),
(46, 14, '_menu_item_object', 'custom'),
(47, 14, '_menu_item_target', ''),
(48, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 14, '_menu_item_xfn', ''),
(50, 14, '_menu_item_url', 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/'),
(52, 15, '_menu_item_type', 'post_type'),
(53, 15, '_menu_item_menu_item_parent', '0'),
(54, 15, '_menu_item_object_id', '8'),
(55, 15, '_menu_item_object', 'page'),
(56, 15, '_menu_item_target', ''),
(57, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 15, '_menu_item_xfn', ''),
(59, 15, '_menu_item_url', ''),
(61, 16, '_menu_item_type', 'post_type'),
(62, 16, '_menu_item_menu_item_parent', '0'),
(63, 16, '_menu_item_object_id', '2'),
(64, 16, '_menu_item_object', 'page'),
(65, 16, '_menu_item_target', ''),
(66, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 16, '_menu_item_xfn', ''),
(68, 16, '_menu_item_url', ''),
(69, 18, '_wp_attached_file', '2019/02/point_exclamation.png'),
(70, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:195;s:6:\"height\";i:258;s:4:\"file\";s:29:\"2019/02/point_exclamation.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"point_exclamation-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 18, '_edit_lock', '1550841734:1'),
(73, 19, '_customize_changeset_uuid', '40cd5f00-b264-44b7-bff4-5706001c750a'),
(74, 20, '_wp_trash_meta_status', 'publish'),
(75, 20, '_wp_trash_meta_time', '1550842916'),
(76, 19, '_edit_lock', '1550850558:1'),
(77, 19, '_wp_page_template', 'page-accueil.php'),
(79, 23, '_customize_changeset_uuid', '4b3c04ab-fe81-4a84-9bf7-de64ffc6912a'),
(80, 24, '_wp_trash_meta_status', 'publish'),
(81, 24, '_wp_trash_meta_time', '1550843052'),
(82, 26, '_menu_item_type', 'post_type'),
(83, 26, '_menu_item_menu_item_parent', '0'),
(84, 26, '_menu_item_object_id', '23'),
(85, 26, '_menu_item_object', 'page'),
(86, 26, '_menu_item_target', ''),
(87, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 26, '_menu_item_xfn', ''),
(89, 26, '_menu_item_url', ''),
(91, 27, '_edit_lock', '1550843254:1'),
(92, 28, '_wp_attached_file', '2019/02/istockphoto-621921512-2048x2048.jpg'),
(93, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:43:\"2019/02/istockphoto-621921512-2048x2048.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"istockphoto-621921512-2048x2048-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"istockphoto-621921512-2048x2048-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"istockphoto-621921512-2048x2048-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"istockphoto-621921512-2048x2048-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:87:\"futuristic earth map technology abstract background represent global connection concept\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 5, '_thumbnail_id', '28'),
(98, 30, '_wp_trash_meta_status', 'publish'),
(99, 30, '_wp_trash_meta_time', '1550844247'),
(100, 31, '_wp_trash_meta_status', 'publish'),
(101, 31, '_wp_trash_meta_time', '1550844526'),
(102, 32, '_wp_trash_meta_status', 'publish'),
(103, 32, '_wp_trash_meta_time', '1550844570'),
(104, 19, '_thumbnail_id', '28'),
(105, 34, '_wp_trash_meta_status', 'publish'),
(106, 34, '_wp_trash_meta_time', '1550849364'),
(107, 35, '_wp_trash_meta_status', 'publish'),
(108, 35, '_wp_trash_meta_time', '1550850645');

-- --------------------------------------------------------

--
-- Structure de la table `tg_posts`
--

CREATE TABLE `tg_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_posts`
--

INSERT INTO `tg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-01 14:41:48', '2019-02-01 13:41:48', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-02-01 14:41:48', '2019-02-01 13:41:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-01 14:41:48', '2019-02-01 13:41:48', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-02-01 14:41:48', '2019-02-01 13:41:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-01 14:41:48', '2019-02-01 13:41:48', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-02-01 14:41:48', '2019-02-01 13:41:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-02-01 16:04:53', '2019-02-01 15:04:53', '<!-- wp:paragraph -->\n<p>Ceci est un article bidon pour faire le test de wordpress</p>\n<!-- /wp:paragraph -->', 'Mon deuxieme article', '', 'publish', 'open', 'open', '', 'mon-deuxieme-article', '', '', '2019-02-22 15:02:43', '2019-02-22 14:02:43', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=5', 0, 'post', '', 0),
(6, 1, '2019-02-01 16:04:53', '2019-02-01 15:04:53', '', 'Mon deuxieme article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-01 16:04:53', '2019-02-01 15:04:53', '', 5, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/01/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-02-01 16:05:24', '2019-02-01 15:05:24', '<!-- wp:paragraph -->\n<p>Ceci est un article bidon pour faire le test de wordpress</p>\n<!-- /wp:paragraph -->', 'Mon deuxieme article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-02-01 16:05:24', '2019-02-01 15:05:24', '', 5, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/01/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-02-01 16:25:42', '2019-02-01 15:25:42', '<!-- wp:paragraph -->\n<p>Voici le texte de ma premiere page</p>\n<!-- /wp:paragraph -->', 'Ma premiere page', '', 'publish', 'closed', 'closed', '', 'ma-premiere-page', '', '', '2019-02-01 16:25:42', '2019-02-01 15:25:42', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-02-01 16:25:42', '2019-02-01 15:25:42', '<!-- wp:paragraph -->\n<p>Voici le texte de ma premiere page</p>\n<!-- /wp:paragraph -->', 'Ma premiere page', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-01 16:25:42', '2019-02-01 15:25:42', '', 8, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-01 16:26:19', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-01 16:26:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2019-02-01 16:26:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-01 16:26:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-02-01 16:26:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-01 16:26:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-02-01 16:26:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-01 16:26:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2019-02-01 16:28:34', '2019-02-01 15:28:34', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-02-22 14:44:48', '2019-02-22 13:44:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2019-02-01 16:28:34', '2019-02-01 15:28:34', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-02-22 14:44:48', '2019-02-22 13:44:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2019-02-01 16:28:34', '2019-02-01 15:28:34', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-02-22 14:44:48', '2019-02-22 13:44:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2019-02-22 14:19:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-22 14:19:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=17', 0, 'post', '', 0),
(18, 1, '2019-02-22 14:21:34', '2019-02-22 13:21:34', '', 'point_exclamation', '', 'inherit', 'open', 'closed', '', 'point_exclamation', '', '', '2019-02-22 14:21:34', '2019-02-22 13:21:34', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/point_exclamation.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-02-22 14:41:56', '2019-02-22 13:41:56', '<!-- wp:paragraph -->\n<p>Voici ma page d\'accueil statique!</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-02-22 15:10:04', '2019-02-22 14:10:04', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-02-22 14:41:56', '2019-02-22 13:41:56', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 13:41:56\"\n    },\n    \"page_on_front\": {\n        \"value\": \"19\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 13:41:56\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            19\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 13:41:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40cd5f00-b264-44b7-bff4-5706001c750a', '', '', '2019-02-22 14:41:56', '2019-02-22 13:41:56', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/40cd5f00-b264-44b7-bff4-5706001c750a/', 0, 'customize_changeset', '', 0),
(21, 1, '2019-02-22 14:41:56', '2019-02-22 13:41:56', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-22 14:41:56', '2019-02-22 13:41:56', '', 19, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-02-22 14:42:47', '2019-02-22 13:42:47', '<!-- wp:paragraph -->\n<p>Voici ma page d\'accueil statique!</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-02-22 14:42:47', '2019-02-22 13:42:47', '', 19, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/19-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-02-22 14:44:12', '2019-02-22 13:44:12', '', 'Blogue', '', 'publish', 'closed', 'closed', '', 'blogue', '', '', '2019-02-22 14:44:12', '2019-02-22 13:44:12', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-02-22 14:44:12', '2019-02-22 13:44:12', '{\n    \"page_for_posts\": {\n        \"value\": \"23\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 13:44:12\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            23\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 13:44:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4b3c04ab-fe81-4a84-9bf7-de64ffc6912a', '', '', '2019-02-22 14:44:12', '2019-02-22 13:44:12', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/4b3c04ab-fe81-4a84-9bf7-de64ffc6912a/', 0, 'customize_changeset', '', 0),
(25, 1, '2019-02-22 14:44:12', '2019-02-22 13:44:12', '', 'Blogue', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-02-22 14:44:12', '2019-02-22 13:44:12', '', 23, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-02-22 14:44:48', '2019-02-22 13:44:48', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-02-22 14:44:48', '2019-02-22 13:44:48', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2019-02-22 14:49:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-22 14:49:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/?p=27', 0, 'post', '', 0),
(28, 1, '2019-02-22 14:50:36', '2019-02-22 13:50:36', '', 'istockphoto-621921512-2048x2048', 'futuristic earth map technology abstract background represent global connection concept', 'inherit', 'open', 'closed', '', 'istockphoto-621921512-2048x2048', '', '', '2019-02-22 14:50:36', '2019-02-22 13:50:36', '', 5, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-02-22 15:04:07', '2019-02-22 14:04:07', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 14:04:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '031da43d-b900-41cb-be42-1fca63e5ced7', '', '', '2019-02-22 15:04:07', '2019-02-22 14:04:07', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/031da43d-b900-41cb-be42-1fca63e5ced7/', 0, 'customize_changeset', '', 0),
(31, 1, '2019-02-22 15:08:46', '2019-02-22 14:08:46', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 14:08:46\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"23\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 14:08:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07f7bc54-1de7-405c-ba48-8f434993cdc4', '', '', '2019-02-22 15:08:46', '2019-02-22 14:08:46', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/07f7bc54-1de7-405c-ba48-8f434993cdc4/', 0, 'customize_changeset', '', 0),
(32, 1, '2019-02-22 15:09:30', '2019-02-22 14:09:30', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 14:09:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2f40b10-b690-49d8-84da-0bf031a64442', '', '', '2019-02-22 15:09:30', '2019-02-22 14:09:30', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/d2f40b10-b690-49d8-84da-0bf031a64442/', 0, 'customize_changeset', '', 0),
(33, 1, '2019-02-22 15:10:04', '2019-02-22 14:10:04', '<!-- wp:paragraph -->\n<p>Voici ma page d\'accueil statique!</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2019-02-22 15:10:04', '2019-02-22 14:10:04', '', 19, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/19-autosave-v1/', 0, 'revision', '', 0),
(34, 1, '2019-02-22 16:29:24', '2019-02-22 15:29:24', '{\n    \"lesTortuesGeniales::change_image\": {\n        \"value\": \"http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 15:29:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5918e8e-e464-450a-b8ed-e3def35381ac', '', '', '2019-02-22 16:29:24', '2019-02-22 15:29:24', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/e5918e8e-e464-450a-b8ed-e3def35381ac/', 0, 'customize_changeset', '', 0),
(35, 1, '2019-02-22 16:50:45', '2019-02-22 15:50:45', '{\n    \"lesTortuesGeniales::charge_image\": {\n        \"value\": \"http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-02-22 15:50:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97456261-6dfa-47c4-ae0a-8dc15b8bd115', '', '', '2019-02-22 16:50:45', '2019-02-22 15:50:45', '', 0, 'http://localhost/~olivierpapineau/HIVER%202019/RPNI2/RPNI2_WORDPRESS/lesTortuesGeniales/index.php/2019/02/22/97456261-6dfa-47c4-ae0a-8dc15b8bd115/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tg_termmeta`
--

CREATE TABLE `tg_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tg_terms`
--

CREATE TABLE `tg_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_terms`
--

INSERT INTO `tg_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tg_term_relationships`
--

CREATE TABLE `tg_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_term_relationships`
--

INSERT INTO `tg_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(26, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tg_term_taxonomy`
--

CREATE TABLE `tg_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_term_taxonomy`
--

INSERT INTO `tg_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `tg_usermeta`
--

CREATE TABLE `tg_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_usermeta`
--

INSERT INTO `tg_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'olivier'),
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
(12, 1, 'tg_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tg_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'tg_dashboard_quick_press_last_post_id', '17'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"a3d3b21afbd0ddb6260800321e3128adb61bd1bcc5a99956c4ce8659ab85c900\";a:4:{s:10:\"expiration\";i:1551014379;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36\";s:5:\"login\";i:1550841579;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'tg_user-settings', 'libraryContent=browse'),
(23, 1, 'tg_user-settings-time', '1550843732');

-- --------------------------------------------------------

--
-- Structure de la table `tg_users`
--

CREATE TABLE `tg_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `tg_users`
--

INSERT INTO `tg_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'olivier', '$P$BKLBFrmbfbmEXL76jk6W5HBUNKCIZH/', 'olivier', 'olivier.12.papineau@gmail.com', '', '2019-02-01 13:41:48', '', 0, 'olivier');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tg_commentmeta`
--
ALTER TABLE `tg_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `tg_comments`
--
ALTER TABLE `tg_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `tg_links`
--
ALTER TABLE `tg_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `tg_options`
--
ALTER TABLE `tg_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `tg_postmeta`
--
ALTER TABLE `tg_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `tg_posts`
--
ALTER TABLE `tg_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `tg_termmeta`
--
ALTER TABLE `tg_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `tg_terms`
--
ALTER TABLE `tg_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `tg_term_relationships`
--
ALTER TABLE `tg_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `tg_term_taxonomy`
--
ALTER TABLE `tg_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `tg_usermeta`
--
ALTER TABLE `tg_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `tg_users`
--
ALTER TABLE `tg_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tg_commentmeta`
--
ALTER TABLE `tg_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tg_comments`
--
ALTER TABLE `tg_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tg_links`
--
ALTER TABLE `tg_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tg_options`
--
ALTER TABLE `tg_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT pour la table `tg_postmeta`
--
ALTER TABLE `tg_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `tg_posts`
--
ALTER TABLE `tg_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `tg_termmeta`
--
ALTER TABLE `tg_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tg_terms`
--
ALTER TABLE `tg_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tg_term_taxonomy`
--
ALTER TABLE `tg_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tg_usermeta`
--
ALTER TABLE `tg_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `tg_users`
--
ALTER TABLE `tg_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
