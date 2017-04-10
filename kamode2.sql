-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 01:38 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamode2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-04-07 08:18:33', '2017-04-07 08:18:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress3', 'yes'),
(2, 'home', 'http://localhost/wordpress3', 'yes'),
(3, 'blogname', 'Kairiene Primary Kamode', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bkangogo39@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, '_transient_is_multi_author', '0', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:1:{i:0;s:10:"calendar-2";}s:8:"footer-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1491855514;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491898768;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491899886;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491553768;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(119, '_site_transient_timeout_wporg_theme_feature_list', '1491564114', 'no'),
(115, '_site_transient_timeout_browser_0d54a2374dc7afef060befd128308548', '1492157970', 'no'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1491828772;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(111, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491828806;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(157, '_site_transient_timeout_theme_roots', '1491830581', 'no'),
(158, '_site_transient_theme_roots', 'a:4:{s:6:"sydney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(116, '_site_transient_browser_0d54a2374dc7afef060befd128308548', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(120, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(121, '_transient_timeout_plugin_slugs', '1491639628', 'no'),
(122, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(123, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1491596428', 'no'),
(124, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 33825 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 32559 bytes received</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(126, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491828822;s:7:"checked";a:4:{s:6:"sydney";s:4:"1.37";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(127, 'current_theme', 'Sydney', 'yes'),
(128, 'theme_mods_sydney', 'a:13:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:14:"slider_image_1";s:78:"http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0016.jpg";s:13:"mobile_slider";s:10:"fullscreen";s:14:"slider_image_2";s:78:"http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0020.jpg";s:14:"slider_title_2";s:0:"";s:18:"slider_button_text";s:0:"";s:14:"slider_title_1";s:0:"";s:17:"slider_subtitle_1";s:0:"";s:17:"slider_subtitle_2";s:0:"";s:14:"slider_image_3";s:78:"http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0018.jpg";s:14:"slider_image_4";s:78:"http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0019.jpg";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/04/IMG-20170319-WA0019.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:380;s:6:"height";i:380;s:4:"file";s:31:"2017/04/IMG-20170319-WA0019.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20170319-WA0019-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20170319-WA0019-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0019-230x230.jpg";s:5:"width";i:230;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0019-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 6, '_wp_attached_file', '2017/04/IMG-20170319-WA0016.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:685;s:4:"file";s:31:"2017/04/IMG-20170319-WA0016.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-768x514.jpg";s:5:"width";i:768;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20170319-WA0016-1024x685.jpg";s:5:"width";i:1024;s:6:"height";i:685;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-830x555.jpg";s:5:"width";i:830;s:6:"height";i:555;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-230x154.jpg";s:5:"width";i:230;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-350x234.jpg";s:5:"width";i:350;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0016-480x321.jpg";s:5:"width";i:480;s:6:"height";i:321;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2017/04/IMG-20170319-WA0018.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:816;s:6:"height";i:612;s:4:"file";s:31:"2017/04/IMG-20170319-WA0018.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-350x263.jpg";s:5:"width";i:350;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0018-480x360.jpg";s:5:"width";i:480;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 8, '_wp_attached_file', '2017/04/IMG-20170319-WA0020.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:31:"2017/04/IMG-20170319-WA0020.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20170319-WA0020-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-830x623.jpg";s:5:"width";i:830;s:6:"height";i:623;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-350x263.jpg";s:5:"width";i:350;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0020-480x360.jpg";s:5:"width";i:480;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 9, '_wp_attached_file', '2017/04/IMG-20170319-WA0022.jpg'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:960;s:4:"file";s:31:"2017/04/IMG-20170319-WA0022.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG-20170319-WA0022-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-830x623.jpg";s:5:"width";i:830;s:6:"height";i:623;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-350x263.jpg";s:5:"width";i:350;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:31:"IMG-20170319-WA0022-480x360.jpg";s:5:"width";i:480;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 5, '_wp_trash_meta_status', 'publish'),
(13, 5, '_wp_trash_meta_time', '1491554134'),
(14, 10, '_menu_item_type', 'custom'),
(15, 10, '_menu_item_menu_item_parent', '0'),
(16, 10, '_menu_item_object_id', '10'),
(17, 10, '_menu_item_object', 'custom'),
(18, 10, '_menu_item_target', ''),
(19, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 10, '_menu_item_xfn', ''),
(21, 10, '_menu_item_url', 'http://localhost/wordpress3/'),
(22, 10, '_menu_item_orphaned', '1491554230'),
(23, 11, '_menu_item_type', 'post_type'),
(24, 11, '_menu_item_menu_item_parent', '0'),
(25, 11, '_menu_item_object_id', '2'),
(26, 11, '_menu_item_object', 'page'),
(27, 11, '_menu_item_target', ''),
(28, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 11, '_menu_item_xfn', ''),
(30, 11, '_menu_item_url', ''),
(31, 11, '_menu_item_orphaned', '1491554230'),
(32, 2, '_wp_trash_meta_status', 'publish'),
(33, 2, '_wp_trash_meta_time', '1491554282'),
(34, 2, '_wp_desired_post_slug', 'sample-page'),
(35, 14, '_edit_last', '1'),
(36, 14, '_wp_page_template', 'default'),
(37, 14, '_edit_lock', '1491554231:1'),
(38, 16, '_edit_last', '1'),
(39, 16, '_wp_page_template', 'default'),
(40, 16, '_edit_lock', '1491554246:1'),
(41, 18, '_edit_last', '1'),
(42, 18, '_wp_page_template', 'default'),
(43, 18, '_edit_lock', '1491554290:1'),
(44, 20, '_edit_last', '1'),
(45, 20, '_wp_page_template', 'default'),
(46, 20, '_edit_lock', '1491554314:1'),
(47, 22, '_edit_last', '1'),
(48, 22, '_wp_page_template', 'default'),
(49, 22, '_edit_lock', '1491554353:1'),
(50, 24, '_edit_last', '1'),
(51, 24, '_wp_page_template', 'default'),
(52, 24, '_edit_lock', '1491554371:1'),
(53, 26, '_edit_last', '1'),
(54, 26, '_wp_page_template', 'default'),
(55, 26, '_edit_lock', '1491554406:1'),
(56, 28, '_edit_last', '1'),
(57, 28, '_wp_page_template', 'default'),
(58, 28, '_edit_lock', '1491554428:1'),
(59, 30, '_edit_last', '1'),
(60, 30, '_wp_page_template', 'default'),
(61, 30, '_edit_lock', '1491554447:1'),
(62, 32, '_wp_trash_meta_status', 'publish'),
(63, 32, '_wp_trash_meta_time', '1491554674'),
(64, 33, '_menu_item_type', 'custom'),
(65, 33, '_menu_item_menu_item_parent', '0'),
(66, 33, '_menu_item_object_id', '33'),
(67, 33, '_menu_item_object', 'custom'),
(68, 33, '_menu_item_target', ''),
(69, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 33, '_menu_item_xfn', ''),
(71, 33, '_menu_item_url', 'http://localhost/wordpress3/'),
(73, 34, '_menu_item_type', 'post_type'),
(74, 34, '_menu_item_menu_item_parent', '0'),
(75, 34, '_menu_item_object_id', '16'),
(76, 34, '_menu_item_object', 'page'),
(77, 34, '_menu_item_target', ''),
(78, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 34, '_menu_item_xfn', ''),
(80, 34, '_menu_item_url', ''),
(82, 35, '_menu_item_type', 'post_type'),
(83, 35, '_menu_item_menu_item_parent', '0'),
(84, 35, '_menu_item_object_id', '26'),
(85, 35, '_menu_item_object', 'page'),
(86, 35, '_menu_item_target', ''),
(87, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 35, '_menu_item_xfn', ''),
(89, 35, '_menu_item_url', ''),
(91, 36, '_menu_item_type', 'post_type'),
(92, 36, '_menu_item_menu_item_parent', '0'),
(93, 36, '_menu_item_object_id', '30'),
(94, 36, '_menu_item_object', 'page'),
(95, 36, '_menu_item_target', ''),
(96, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 36, '_menu_item_xfn', ''),
(98, 36, '_menu_item_url', ''),
(157, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(156, 1, '_wp_desired_post_slug', 'hello-world'),
(155, 1, '_wp_trash_meta_time', '1491555877'),
(154, 1, '_wp_trash_meta_status', 'publish'),
(109, 38, '_menu_item_type', 'post_type'),
(110, 38, '_menu_item_menu_item_parent', '0'),
(111, 38, '_menu_item_object_id', '22'),
(112, 38, '_menu_item_object', 'page'),
(113, 38, '_menu_item_target', ''),
(114, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 38, '_menu_item_xfn', ''),
(116, 38, '_menu_item_url', ''),
(118, 39, '_menu_item_type', 'post_type'),
(119, 39, '_menu_item_menu_item_parent', '0'),
(120, 39, '_menu_item_object_id', '20'),
(121, 39, '_menu_item_object', 'page'),
(122, 39, '_menu_item_target', ''),
(123, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 39, '_menu_item_xfn', ''),
(125, 39, '_menu_item_url', ''),
(127, 40, '_menu_item_type', 'post_type'),
(128, 40, '_menu_item_menu_item_parent', '0'),
(129, 40, '_menu_item_object_id', '18'),
(130, 40, '_menu_item_object', 'page'),
(131, 40, '_menu_item_target', ''),
(132, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 40, '_menu_item_xfn', ''),
(134, 40, '_menu_item_url', ''),
(136, 41, '_menu_item_type', 'post_type'),
(137, 41, '_menu_item_menu_item_parent', '0'),
(138, 41, '_menu_item_object_id', '28'),
(139, 41, '_menu_item_object', 'page'),
(140, 41, '_menu_item_target', ''),
(141, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 41, '_menu_item_xfn', ''),
(143, 41, '_menu_item_url', ''),
(145, 42, '_menu_item_type', 'post_type'),
(146, 42, '_menu_item_menu_item_parent', '0'),
(147, 42, '_menu_item_object_id', '24'),
(148, 42, '_menu_item_object', 'page'),
(149, 42, '_menu_item_target', ''),
(150, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 42, '_menu_item_xfn', ''),
(152, 42, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-04-07 08:18:33', '2017-04-07 08:18:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-04-07 09:04:37', '2017-04-07 09:04:37', '', 0, 'http://localhost/wordpress3/?p=1', 0, 'post', '', 1),
(2, 1, '2017-04-07 08:18:33', '2017-04-07 08:18:33', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress3/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-04-07 08:38:02', '2017-04-07 08:38:02', '', 0, 'http://localhost/wordpress3/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-04-07 08:19:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-07 08:19:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=3', 0, 'post', '', 0),
(4, 1, '2017-04-07 08:31:34', '2017-04-07 08:31:34', '', 'IMG-20170319-WA0019', '', 'inherit', 'open', 'closed', '', 'img-20170319-wa0019', '', '', '2017-04-07 08:31:34', '2017-04-07 08:31:34', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0019.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-04-07 08:35:34', '2017-04-07 08:35:34', '{\n    "sydney::slider_image_1": {\n        "value": "http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0016.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::mobile_slider": {\n        "value": "fullscreen",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_image_2": {\n        "value": "http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0020.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_title_2": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_button_text": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_title_1": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_subtitle_1": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_subtitle_2": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_image_3": {\n        "value": "http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0018.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    },\n    "sydney::slider_image_4": {\n        "value": "http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0019.jpg",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c0256211-2c3b-4e30-91ce-bb32ce9828a7', '', '', '2017-04-07 08:35:34', '2017-04-07 08:35:34', '', 0, 'http://localhost/wordpress3/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2017-04-07 08:33:43', '2017-04-07 08:33:43', '', 'IMG-20170319-WA0016', '', 'inherit', 'open', 'closed', '', 'img-20170319-wa0016', '', '', '2017-04-07 08:33:43', '2017-04-07 08:33:43', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0016.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-04-07 08:33:45', '2017-04-07 08:33:45', '', 'IMG-20170319-WA0018', '', 'inherit', 'open', 'closed', '', 'img-20170319-wa0018', '', '', '2017-04-07 08:33:45', '2017-04-07 08:33:45', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0018.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-04-07 08:33:46', '2017-04-07 08:33:46', '', 'IMG-20170319-WA0020', '', 'inherit', 'open', 'closed', '', 'img-20170319-wa0020', '', '', '2017-04-07 08:33:46', '2017-04-07 08:33:46', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0020.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-04-07 08:33:48', '2017-04-07 08:33:48', '', 'IMG-20170319-WA0022', '', 'inherit', 'open', 'closed', '', 'img-20170319-wa0022', '', '', '2017-04-07 08:33:48', '2017-04-07 08:33:48', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2017/04/IMG-20170319-WA0022.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2017-04-07 08:37:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-04-07 08:37:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2017-04-07 08:37:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-04-07 08:37:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-04-07 08:38:02', '2017-04-07 08:38:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress3/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-04-07 08:38:02', '2017-04-07 08:38:02', '', 2, 'http://localhost/wordpress3/2017/04/07/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-04-07 08:38:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-07 08:38:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-04-07 08:39:31', '2017-04-07 08:39:31', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-07 08:39:31', '2017-04-07 08:39:31', '', 0, 'http://localhost/wordpress3/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-04-07 08:39:31', '2017-04-07 08:39:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-04-07 08:39:31', '2017-04-07 08:39:31', '', 14, 'http://localhost/wordpress3/2017/04/07/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-04-07 08:39:44', '2017-04-07 08:39:44', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-04-07 08:39:44', '2017-04-07 08:39:44', '', 0, 'http://localhost/wordpress3/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-04-07 08:39:44', '2017-04-07 08:39:44', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-04-07 08:39:44', '2017-04-07 08:39:44', '', 16, 'http://localhost/wordpress3/2017/04/07/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-04-07 08:40:14', '2017-04-07 08:40:14', '', 'Our Heritage', '', 'publish', 'closed', 'closed', '', 'our-heritage', '', '', '2017-04-07 08:40:14', '2017-04-07 08:40:14', '', 0, 'http://localhost/wordpress3/?page_id=18', 0, 'page', '', 0),
(19, 1, '2017-04-07 08:40:14', '2017-04-07 08:40:14', '', 'Our Heritage', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2017-04-07 08:40:14', '2017-04-07 08:40:14', '', 18, 'http://localhost/wordpress3/2017/04/07/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-04-07 08:40:55', '2017-04-07 08:40:55', '', 'Kamode Alumni', '', 'publish', 'closed', 'closed', '', 'kamode-alumni', '', '', '2017-04-07 08:40:55', '2017-04-07 08:40:55', '', 0, 'http://localhost/wordpress3/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-04-07 08:40:55', '2017-04-07 08:40:55', '', 'Kamode Alumni', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-04-07 08:40:55', '2017-04-07 08:40:55', '', 20, 'http://localhost/wordpress3/2017/04/07/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-04-07 08:41:26', '2017-04-07 08:41:26', '', 'Innovative Mentorship', '', 'publish', 'closed', 'closed', '', 'innovative-mentorship', '', '', '2017-04-07 08:41:26', '2017-04-07 08:41:26', '', 0, 'http://localhost/wordpress3/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-04-07 08:41:26', '2017-04-07 08:41:26', '', 'Innovative Mentorship', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-04-07 08:41:26', '2017-04-07 08:41:26', '', 22, 'http://localhost/wordpress3/2017/04/07/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-04-07 08:41:49', '2017-04-07 08:41:49', '', 'School Activities', '', 'publish', 'closed', 'closed', '', 'school-activities', '', '', '2017-04-07 08:41:49', '2017-04-07 08:41:49', '', 0, 'http://localhost/wordpress3/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-04-07 08:41:49', '2017-04-07 08:41:49', '', 'School Activities', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-04-07 08:41:49', '2017-04-07 08:41:49', '', 24, 'http://localhost/wordpress3/2017/04/07/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-04-07 08:42:10', '2017-04-07 08:42:10', '', 'Community Activities', '', 'publish', 'closed', 'closed', '', 'community-activities', '', '', '2017-04-07 08:42:10', '2017-04-07 08:42:10', '', 0, 'http://localhost/wordpress3/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-04-07 08:42:10', '2017-04-07 08:42:10', '', 'Community Activities', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-04-07 08:42:10', '2017-04-07 08:42:10', '', 26, 'http://localhost/wordpress3/2017/04/07/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-04-07 08:42:47', '2017-04-07 08:42:47', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2017-04-07 08:42:47', '2017-04-07 08:42:47', '', 0, 'http://localhost/wordpress3/?page_id=28', 0, 'page', '', 0),
(29, 1, '2017-04-07 08:42:47', '2017-04-07 08:42:47', '', 'Partners', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-04-07 08:42:47', '2017-04-07 08:42:47', '', 28, 'http://localhost/wordpress3/2017/04/07/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-04-07 08:43:01', '2017-04-07 08:43:01', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-04-07 08:43:01', '2017-04-07 08:43:01', '', 0, 'http://localhost/wordpress3/?page_id=30', 0, 'page', '', 0),
(31, 1, '2017-04-07 08:43:01', '2017-04-07 08:43:01', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-04-07 08:43:01', '2017-04-07 08:43:01', '', 30, 'http://localhost/wordpress3/2017/04/07/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-04-07 08:44:34', '2017-04-07 08:44:34', '{\n    "blogname": {\n        "value": "Kairiene Primary Kamode",\n        "type": "option",\n        "user_id": 1\n    },\n    "blogdescription": {\n        "value": "",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fa702981-7c1d-4b7a-a0a4-86f866f1dabb', '', '', '2017-04-07 08:44:34', '2017-04-07 08:44:34', '', 0, 'http://localhost/wordpress3/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2017-04-07 09:01:48', '2017-04-07 09:01:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-04-07 09:01:48', '2017-04-07 09:01:48', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2017-04-07 09:01:48', '2017-04-07 09:01:48', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=35', 7, 'nav_menu_item', '', 0),
(36, 1, '2017-04-07 09:01:48', '2017-04-07 09:01:48', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=36', 9, 'nav_menu_item', '', 0),
(43, 1, '2017-04-07 09:04:37', '2017-04-07 09:04:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-04-07 09:04:37', '2017-04-07 09:04:37', '', 1, 'http://localhost/wordpress3/2017/04/07/1-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-04-07 09:01:49', '2017-04-07 09:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=38', 5, 'nav_menu_item', '', 0),
(39, 1, '2017-04-07 09:01:49', '2017-04-07 09:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2017-04-07 09:01:49', '2017-04-07 09:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2017-04-07 09:01:49', '2017-04-07 09:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=41', 8, 'nav_menu_item', '', 0),
(42, 1, '2017-04-07 09:01:49', '2017-04-07 09:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-04-07 09:08:35', '2017-04-07 09:08:35', '', 0, 'http://localhost/wordpress3/?p=42', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kamode'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:"164d013d1add9d5894ec24766a239fd70f71ffcf343259b37c9f05527faf2a01";a:4:{s:10:"expiration";i:1492762715;s:2:"ip";s:3:"::1";s:2:"ua";s:149:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 OPR/43.0.2442.1144 (Edition Campaign 34)";s:5:"login";i:1491553115;}s:64:"1f0c75d42de8447b53fc8eaa1d680b79e2d9b8aee509b4deb9dc087eace97c07";a:4:{s:10:"expiration";i:1491725967;s:2:"ip";s:3:"::1";s:2:"ua";s:149:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 OPR/43.0.2442.1144 (Edition Campaign 34)";s:5:"login";i:1491553167;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1491554146'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kamode', '$P$BQ/d7LiZn.E8inc4Xc6RV6Yazkam5j0', 'kamode', 'bkangogo39@gmail.com', '', '2017-04-07 08:18:33', '', 0, 'kamode');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
