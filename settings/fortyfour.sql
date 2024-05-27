-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 27, 2024 at 07:49 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fortyfour`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPressa', 'wapuu@wordpress.example', 'https://pl.wordpress.org/', '', '2024-05-13 20:50:53', '2024-05-13 18:50:53', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran komentarzy w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com/\">Gravatara</a>.', 0, '1', '', 'comment', 0, 0),
(2, 191, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:23:09', '2024-05-24 19:23:09', 'To jest testowy komentarz', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 0, 1),
(3, 191, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:24:21', '2024-05-24 19:24:21', 'A to jest odpowiedź.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 2, 1),
(4, 191, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:36:35', '2024-05-24 19:36:35', 'A to jest odpowiedź 2', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 2, 1),
(5, 191, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:36:54', '2024-05-24 19:36:54', 'A to kolejny komentarz', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 0, 1),
(6, 174, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:59:28', '2024-05-24 19:59:28', 'First comment!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 0, 1),
(7, 174, 'admin', 'wp1@example.com', 'http://localhost/wp1', '::1', '2024-05-24 21:59:40', '2024-05-24 19:59:40', 'reply comment!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'comment', 6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp1', 'yes'),
(2, 'home', 'http://localhost/wp1', 'yes'),
(3, 'blogname', 'WP1', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wp1@example.com', 'yes'),
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
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:21:\"polylang/polylang.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:33:\"w3-total-cache/w3-total-cache.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";i:7;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fortyfour', 'yes'),
(41, 'stylesheet', 'fortyfour', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', 'Europe/Warsaw', 'yes'),
(81, 'page_for_posts', '162', 'yes'),
(82, 'page_on_front', '31', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1731178252', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:98:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"newsletters_welcome\";b:1;s:24:\"newsletters_submitserial\";b:1;s:16:\"newsletters_gdpr\";b:1;s:17:\"newsletters_forms\";b:1;s:16:\"newsletters_send\";b:1;s:26:\"newsletters_autoresponders\";b:1;s:31:\"newsletters_autoresponderemails\";b:1;s:17:\"newsletters_lists\";b:1;s:18:\"newsletters_groups\";b:1;s:23:\"newsletters_subscribers\";b:1;s:18:\"newsletters_fields\";b:1;s:24:\"newsletters_importexport\";b:1;s:18:\"newsletters_themes\";b:1;s:21:\"newsletters_templates\";b:1;s:26:\"newsletters_templates_save\";b:1;s:17:\"newsletters_queue\";b:1;s:19:\"newsletters_history\";b:1;s:18:\"newsletters_emails\";b:1;s:17:\"newsletters_links\";b:1;s:18:\"newsletters_clicks\";b:1;s:18:\"newsletters_orders\";b:1;s:20:\"newsletters_settings\";b:1;s:32:\"newsletters_settings_subscribers\";b:1;s:30:\"newsletters_settings_templates\";b:1;s:27:\"newsletters_settings_system\";b:1;s:26:\"newsletters_settings_tasks\";b:1;s:28:\"newsletters_settings_updates\";b:1;s:24:\"newsletters_settings_api\";b:1;s:22:\"newsletters_extensions\";b:1;s:31:\"newsletters_extensions_settings\";b:1;s:19:\"newsletters_support\";b:1;s:21:\"newsletters_view_logs\";b:1;s:34:\"newsletters_admin_send_sendtoroles\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'pl_PL', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:14:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Ostatnie wpisy</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:232:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnowsze komentarze</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archiwa</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:9;a:1:{s:7:\"content\";s:23:\"<!-- wp:categories /-->\";}i:10;a:1:{s:7:\"content\";s:84:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Kategorie</h2>\n<!-- /wp:heading -->\";}i:11;a:1:{s:7:\"content\";s:81:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Szukaj</h2>\n<!-- /wp:heading -->\";}i:12;a:1:{s:7:\"content\";s:107:\"<!-- wp:search {\"label\":\"Szukaj\",\"showLabel\":false,\"buttonText\":\"Szukaj\",\"buttonPosition\":\"no-button\"} /-->\";}i:13;a:1:{s:7:\"content\";s:81:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Szukaj</h2>\n<!-- /wp:heading -->\";}i:14;a:1:{s:7:\"content\";s:107:\"<!-- wp:search {\"label\":\"Szukaj\",\"showLabel\":false,\"buttonText\":\"Szukaj\",\"buttonPosition\":\"no-button\"} /-->\";}i:15;a:1:{s:7:\"content\";s:84:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Kategorie</h2>\n<!-- /wp:heading -->\";}i:16;a:1:{s:7:\"content\";s:23:\"<!-- wp:categories /-->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:8:\"block-11\";i:1;s:8:\"block-12\";i:2;s:8:\"block-10\";i:3;s:7:\"block-9\";i:4;s:7:\"block-2\";i:5;s:7:\"block-3\";i:6;s:7:\"block-4\";i:7;s:7:\"block-5\";i:8;s:7:\"block-6\";}s:11:\"blog-widget\";a:4:{i:0;s:8:\"block-13\";i:1;s:8:\"block-14\";i:2;s:8:\"block-15\";i:3;s:8:\"block-16\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:17:{i:1716832253;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716834388;a:2:{s:19:\"wpml_autoresponders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:25:\"newsletters_countrieshook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716834392;a:1:{s:19:\"wpml_captchacleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716834731;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716835853;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716835856;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716835889;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716835893;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716906388;a:2:{s:24:\"newsletters_optimizehook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:28:\"newsletters_emailarchivehook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716922253;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716992716;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716992788;a:1:{s:23:\"newsletters_upgradehook\";a:1:{s:32:\"d63aca0b7e6237c7964320bd7fc95644\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:7;}}}}i:1717597588;a:1:{s:23:\"newsletters_upgradehook\";a:1:{s:32:\"78525e41f5c2848ff7e1a2337fb96361\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:14;}}}}i:1718979988;a:1:{s:26:\"newsletters_ratereviewhook\";a:1:{s:32:\"b81956e4bb4ba571b1678549dbe90e2a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:30;}}}}i:1721571988;a:1:{s:26:\"newsletters_ratereviewhook\";a:1:{s:32:\"1f2017e1ed51c7e11ca55ed0583ac79c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:60;}}}}i:1724163988;a:1:{s:26:\"newsletters_ratereviewhook\";a:1:{s:32:\"d6f7b985c4364f8847c90b2d464e2479\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:90;}}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(127, 'theme_mods_twentytwentyfour', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716831641;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:8:\"block-11\";i:1;s:8:\"block-12\";i:2;s:8:\"block-10\";i:3;s:7:\"block-9\";}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'no'),
(149, 'can_compress_scripts', '1', 'yes'),
(156, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(157, 'recently_activated', 'a:3:{s:23:\"wordfence/wordfence.php\";i:1716831603;s:27:\"wp-paginate/wp-paginate.php\";i:1716572252;s:35:\"newsletters-lite/wp-mailinglist.php\";i:1716388013;}', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(179, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Weryfikacja SSLa nie powiodła się.\";}}', 'yes'),
(180, '_transient_health-check-site-status-result', '{\"good\":\"20\",\"recommended\":\"4\",\"critical\":\"2\"}', 'yes'),
(187, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1715797653;s:7:\"version\";s:5:\"5.9.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(191, 'polylang', 'a:15:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.6.1\";s:16:\"first_activation\";i:1715797672;s:12:\"default_lang\";s:2:\"pl\";s:9:\"nav_menus\";a:1:{s:10:\"fourtyfour\";a:2:{s:11:\"header-menu\";a:2:{s:2:\"pl\";i:11;s:2:\"en\";i:12;}s:11:\"footer-menu\";a:2:{s:2:\"pl\";i:13;s:2:\"en\";i:14;}}}}', 'yes'),
(192, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(193, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'acf_first_activated_version', '6.2.9', 'yes'),
(202, 'acf_version', '6.3.0', 'yes'),
(214, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(220, 'current_theme', 'Forty Four', 'yes'),
(221, 'theme_mods_fourtyfour', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:11;s:11:\"footer-menu\";i:13;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:50;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1716831638;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:11:\"blog-widget\";a:4:{i:0;s:8:\"block-11\";i:1;s:8:\"block-12\";i:2;s:8:\"block-10\";i:3;s:7:\"block-9\";}}}}', 'no'),
(222, 'theme_switched', '', 'yes'),
(230, 'cptui_new_install', 'false', 'yes'),
(231, 'cptui_post_types', 'a:2:{s:9:\"slider-pl\";a:34:{s:4:\"name\";s:9:\"slider-pl\";s:5:\"label\";s:9:\"Slider PL\";s:14:\"singular_label\";s:9:\"slider-pl\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:9:\"slider-en\";a:34:{s:4:\"name\";s:9:\"slider-en\";s:5:\"label\";s:9:\"Slider EN\";s:14:\"singular_label\";s:9:\"slider-en\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(243, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo4OiIqKioqKioqKiI7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9sb2NhbGhvc3Qvd3AxIjt9', 'yes'),
(244, 'acf_pro_license_status', 'a:2:{s:6:\"status\";s:6:\"active\";s:10:\"next_check\";i:15442944732;}', 'yes'),
(401, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(410, 'opcje_szablonu_option_name', 'a:13:{s:20:\"footer_menu_title_pl\";s:13:\"Szybkie linki\";s:20:\"footer_menu_title_en\";s:11:\"Quick Links\";s:21:\"contact_data_title_pl\";s:15:\"Dane kontaktowe\";s:21:\"contact_data_title_en\";s:12:\"Contact Info\";s:8:\"motto_pl\";s:94:\"Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym.\";s:8:\"motto_en\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:7:\"place_1\";s:30:\"2489 Locust Court, Los Angeles\";s:7:\"place_2\";s:33:\"3927 Red Maple Drive, Los Angeles\";s:5:\"phone\";s:16:\"+63 667 341 3463\";s:5:\"email\";s:19:\"Contact@Example.Com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:7:\"youtube\";s:0:\"\";}', 'yes'),
(454, 'site_logo', '50', 'yes'),
(459, 'theme_options_option_name', 'a:13:{s:20:\"footer_menu_title_pl\";s:13:\"Szybkie Linki\";s:20:\"footer_menu_title_en\";s:11:\"Quick Links\";s:21:\"contact_data_title_pl\";s:15:\"Dane Kontaktowe\";s:21:\"contact_data_title_en\";s:12:\"Contact Info\";s:8:\"motto_pl\";s:94:\"Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym.\";s:8:\"motto_en\";s:66:\"Lorem Ipsum is a form of dummy text used in the printing industry.\";s:7:\"place_1\";s:32:\"222222 Locust Court, Los Angeles\";s:7:\"place_2\";s:33:\"3927 Red Maple Drive, Los Angeles\";s:5:\"phone\";s:16:\"+63 667 341 3463\";s:5:\"email\";s:19:\"contact@example.com\";s:8:\"facebook\";s:1:\"#\";s:7:\"twitter\";s:1:\"#\";s:7:\"youtube\";s:0:\"\";}', 'yes'),
(475, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1716836249', 'no'),
(476, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(493, 'mto_option_name', 'a:14:{s:24:\"mto_footer_menu_title_pl\";s:13:\"Szybkie linki\";s:24:\"mto_footer_menu_title_en\";s:11:\"Quick Links\";s:25:\"mto_contact_data_title_pl\";s:7:\"Kontakt\";s:25:\"mto_contact_data_title_en\";s:12:\"Contact Info\";s:12:\"mto_motto_pl\";s:102:\"Tristique lacus ullamcorper massa posuere nisl molestie. Nullam motes, tortor masa. Nisl tellus etiam.\";s:12:\"mto_motto_en\";s:102:\"Tristique lacus ullamcorper massa posuere nisl molestie. Nullam motes, tortor masa. Nisl tellus etiam.\";s:11:\"mto_place_1\";s:30:\"2489 Locust Court, Los Angeles\";s:11:\"mto_place_2\";s:33:\"1927 Red Maple Drive, Los Angeles\";s:9:\"mto_phone\";s:16:\"+63 667 341 3463\";s:9:\"mto_email\";s:19:\"Contact@Example.Com\";s:12:\"mto_facebook\";s:1:\"#\";s:11:\"mto_twitter\";s:1:\"#\";s:11:\"mto_youtube\";s:0:\"\";s:30:\"mto_display_default_post_thumb\";s:1:\"1\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(605, 'acf_site_health', '{\"version\":\"6.3.0\",\"plugin_type\":\"Free\",\"wp_version\":\"6.5.3\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Forty Four\",\"version\":\"1.1\",\"theme_uri\":\"https:\\/\\/netmotion.pl\\/wp-themes\\/fortyfour\\/\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.5\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-post-type-ui\\/custom-post-type-ui.php\":{\"name\":\"Custom Post Type UI\",\"version\":\"1.16.0\",\"plugin_uri\":\"https:\\/\\/github.com\\/WebDevStudios\\/custom-post-type-ui\\/\"},\"polylang\\/polylang.php\":{\"name\":\"Polylang\",\"version\":\"3.6.1\",\"plugin_uri\":\"https:\\/\\/polylang.pro\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"group\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"7\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1716387916}', 'no'),
(610, 'wpmlcountriesinserted', 'Y', 'yes'),
(615, 'wpmldbversion', '1.2.3', 'yes'),
(616, 'wpmlversion', '4.9.7', 'yes'),
(618, 'wpmlmanagementpost', '100', 'yes'),
(619, 'wpmldefaulttemplate', '1', 'yes'),
(620, 'wpmlold_folder_name', 'newsletters-lite', 'yes'),
(621, 'wpmlscreenoptions_subscribers_custom', 'a:2:{i:0;s:9:\"gravatars\";i:1;s:6:\"device\";}', 'yes'),
(622, 'wpmlimport_notification', '1', 'yes'),
(623, 'wpmlimport_createfieldoptions', '1', 'yes'),
(624, 'wpmlmanagementloginsubject', 'Authenticate Subscriber Account', 'yes'),
(625, 'wpmlauthenticatelinktext', 'Authenticate now', 'yes'),
(626, 'wpmlmanagementauthtype', '3', 'yes'),
(627, 'wpmlmanagementallowemailchange', 'Y', 'yes'),
(628, 'wpmlmanagementformatchange', 'Y', 'yes'),
(629, 'wpmlmanagementallownewsubscribes', 'Y', 'yes'),
(630, 'wpmlmanagementshowsubscriptions', 'Y', 'yes'),
(631, 'wpmlmanagementdelete', '1', 'yes'),
(632, 'wpmlmanagementcustomfields', 'Y', 'yes'),
(633, 'wpmlcookieformat', 'D, j M Y H:i:s', 'yes'),
(634, 'wpmldefaultlistcreated', 'Y', 'yes'),
(635, 'wpmlsubscriptionmessage', 'Subscription Successful', 'yes'),
(636, 'wpmlsendingprogress', 'N', 'yes'),
(637, 'wpmlcreatepreview', 'Y', 'yes'),
(638, 'wpmlcreatespamscore', 'Y', 'yes'),
(639, 'wpmlemailencoding', '8bit', 'yes'),
(640, 'wpmlclicktrack', 'Y', 'yes'),
(641, 'wpmlshortlinks', 'N', 'yes'),
(642, 'wpmltheme_folder', 'default2', 'yes'),
(643, 'wpmltheme_usestyle', 'Y', 'yes'),
(644, 'wpmlcustomcss', 'N', 'yes'),
(645, 'wpmlmultimime', 'N', 'yes'),
(646, 'wpmlvideoembed', '1', 'yes'),
(647, 'wpmlmailtype', 'mail', 'yes'),
(648, 'wpmlsmtphost', 'mail.domain.com', 'yes'),
(649, 'wpmlsmtpport', '25', 'yes'),
(650, 'wpmlsmtpsecure', 'N', 'yes'),
(651, 'wpmlsmtpauth', 'N', 'yes'),
(652, 'wpmlsmtpuser', 'username', 'yes'),
(653, 'wpmlsmtppass', 'password', 'yes'),
(654, 'wpmladminemail', 'wp1@example.com', 'yes'),
(655, 'wpmlsmtpfrom', 'wp1@example.com', 'yes'),
(656, 'wpmlsmtpreply', 'wp1@example.com', 'yes'),
(657, 'wpmlsmtpfromname', 'WP1', 'yes'),
(658, 'wpmldkim', 'N', 'yes'),
(659, 'wpmldkim_domain', 'domain.com', 'yes'),
(660, 'wpmldkim_selector', 'newsletters', 'yes'),
(661, 'wpmltracking', 'Y', 'yes'),
(662, 'wpmltracking_image', 'invisible', 'yes'),
(663, 'wpmltracking_image_alt', 'track', 'yes'),
(664, 'wpmlservertype', 'cpanel', 'yes'),
(665, 'wpmlmailpriority', '3', 'yes'),
(666, 'wpmlunsubscribeondelete', 'N', 'yes'),
(667, 'wpmlunsubscribeemails', 'single', 'yes'),
(668, 'wpmlunsubscribeconfirmation', 'Y', 'yes'),
(669, 'wpmlunsubscribecomments', 'Y', 'yes'),
(670, 'wpmlregistercheckbox', 'Y', 'yes'),
(671, 'wpmlregisterformlabel', 'Receive news updates via email from this site', 'yes'),
(672, 'wpmlcheckboxon', 'N', 'yes'),
(673, 'wpmlautosubscribelist', 'a:1:{i:0;i:1;}', 'yes'),
(674, 'wpmlsendonpublish', 'Y', 'yes'),
(675, 'wpmlsendonpublishef', 'ep', 'yes'),
(676, 'wpmlpostswpautop', '1', 'yes'),
(677, 'wpmlsendonpublishexcerptlength', '250', 'yes'),
(678, 'wpmlresubscribe', '1', 'yes'),
(679, 'wpmlresubscribetext', 'resubscribe', 'yes'),
(680, 'wpmlunsubscribetext', 'Unsubscribe from this newsletter', 'yes'),
(681, 'wpmlunsubscribealltext', 'Unsubscribe from all emails', 'yes'),
(682, 'wpmlunsubscribedelete', 'N', 'yes'),
(683, 'wpmlunsubscribewpuserdelete', 'N', 'yes'),
(684, 'wpmlunsubscribewpuserdeletebyuser', 'N', 'yes'),
(685, 'wpmlsaveipaddress', '1', 'yes'),
(686, 'wpmladminemailonsubscription', 'Y', 'yes'),
(687, 'wpmladminemailonunsubscription', 'Y', 'yes'),
(688, 'wpmlactivationlinktext', 'Confirm Subscription', 'yes'),
(689, 'wpmlcustomactivateredirect', 'N', 'yes'),
(690, 'wpmlactivateredirecturl', 'http://localhost/wp1', 'yes'),
(691, 'wpmlmanagelinktext', 'Manage Subscriptions', 'yes'),
(692, 'wpmlonlinelinktext', 'View in your browser', 'yes'),
(693, 'wpmlprintlinktext', 'Print Email', 'yes'),
(694, 'wpmlautoresponderscheduling', 'hourly', 'yes'),
(695, 'wpmltinymcebtn', 'Y', 'yes'),
(696, 'wpmlsendasnewsletterbox', 'Y', 'yes'),
(697, 'wpmlsubscriberegister', 'N', 'yes'),
(698, 'wpmlcustompostslug', 'newsletter', 'yes'),
(699, 'wpmlimportusers', 'N', 'yes'),
(700, 'wpmlimportusersscheduling', 'hourly', 'yes'),
(701, 'wpmlimportuserslists', 'a:1:{i:0;i:1;}', 'yes'),
(702, 'wpmlimportusersrequireactivate', 'N', 'yes'),
(703, 'wpmlsubscriptions', 'Y', 'yes'),
(704, 'wpmlpaidsubscriptionredirect', 'Y', 'yes'),
(705, 'wpmlrssfeed', 'N', 'yes'),
(706, 'wpmllanguage_location', 'langdir', 'yes'),
(707, 'wpmldeleteonbounce', 'Y', 'yes'),
(708, 'wpmlbouncecount', '3', 'yes'),
(709, 'wpmladminemailonbounce', 'Y', 'yes'),
(710, 'wpmlbounceemail', 'wp1@example.com', 'yes'),
(711, 'wpmlbouncemethod', 'off', 'yes'),
(712, 'wpmlbouncepop_interval', '3600', 'yes'),
(713, 'wpmlbouncepop_type', 'imap', 'yes'),
(714, 'wpmlbouncepop_host', 'localhost', 'yes'),
(715, 'wpmlbouncepop_user', 'bounce@domain.com', 'yes'),
(716, 'wpmlbouncepop_pass', 'mailboxpassword', 'yes'),
(717, 'wpmlbouncepop_port', '110', 'yes'),
(718, 'wpmlbouncepop_prot', 'normal', 'yes'),
(719, 'wpmlsubscriberexistsredirect', 'management', 'yes'),
(720, 'wpmlsubscriberexistsmessage', 'You are already subscribed, redirecting to the management page...', 'yes'),
(721, 'wpmlsubscriberexistsredirecturl', 'http://localhost/wp1/manage-subscriptions/', 'yes'),
(722, 'wpmlemailvalidationextended', '0', 'yes'),
(723, 'wpmlrequireactivate', 'Y', 'yes'),
(724, 'wpmlactivateaction', 'none', 'yes'),
(725, 'wpmlactivatereminder', '3', 'yes'),
(726, 'wpmlactivatedelete', '7', 'yes'),
(727, 'wpmlactivationemails', 'single', 'yes'),
(728, 'wpmltcodemo', 'N', 'yes'),
(729, 'wpmltcovendorid', '123456', 'yes'),
(730, 'wpmltcosecret', 'secretstring', 'yes'),
(731, 'wpmltcoaccount', 'live', 'yes'),
(732, 'wpmladminordernotify', 'Y', 'yes'),
(733, 'wpmlsubscriberedirect', 'N', 'yes'),
(734, 'wpmlsubscriberedirecturl', 'http://localhost/wp1/manage-subscriptions/', 'yes'),
(735, 'wpmlpaymentmethod', 'a:2:{i:0;s:3:\"2co\";i:1;s:6:\"paypal\";}', 'yes'),
(736, 'wpmlcsvdelimiter', ',', 'yes'),
(737, 'wpmlcaptcha_type', 'none', 'yes'),
(738, 'wpmlrecaptcha_type', 'robot', 'yes'),
(739, 'wpmlrecaptcha_theme', 'light', 'yes'),
(740, 'wpmlrecaptcha_language', 'en', 'yes'),
(741, 'wpmlrecaptcha_customcss', '.recaptcha_widget { margin: 10px 0 15px 0; }\n			.recaptcha_widget .recaptcha_image { margin: 10px 0 5px 0; }\n			.recaptcha_widget .recaptcha_image img { width: 250px; box-shadow: none; }\n			.recaptcha_widget .recaptcha_links { font-size: 85%; }\n			.recaptcha_widget .recaptcha_response { }', 'yes'),
(742, 'wpmlcaptcha_rgb', 'a:3:{i:0;i:255;i:1;i:255;i:2;i:255;}', 'yes'),
(743, 'wpmlcaptcha_bg', '#FFFFFF', 'yes'),
(744, 'wpmlcaptcha_fg', '#333333', 'yes'),
(745, 'wpmlfarbtastic_fg', '#000000', 'yes'),
(746, 'wpmlcaptcha_size', 'a:2:{s:1:\"w\";i:72;s:1:\"h\";i:24;}', 'yes'),
(747, 'wpmlcaptcha_chars', '4', 'yes'),
(748, 'wpmlcaptcha_font', '14', 'yes'),
(749, 'wpmlcaptchainterval', 'hourly', 'yes'),
(750, 'wpmlcommentformcheckbox', 'Y', 'yes'),
(751, 'wpmlcommentformlabel', 'Receive news updates via email from this site', 'yes'),
(752, 'wpmlcommentformautocheck', 'N', 'yes'),
(753, 'wpmlcommentformlist', '1', 'yes'),
(754, 'wpmlexcerpt_settings', '1', 'yes'),
(755, 'wpmlexcerpt_length', '55', 'yes'),
(756, 'wpmlexcerpt_more', 'Read more', 'yes'),
(757, 'wpmltimezone_set', '0', 'yes'),
(758, 'wpmlcroninterval', '5minutes', 'yes'),
(759, 'wpmlscheduleinterval', '1minute', 'yes'),
(760, 'wpmlscheduleintervalseconds', '60', 'yes'),
(761, 'wpmlemailsperinterval', '99', 'yes'),
(762, 'wpmlpaypalemail', 'wp1@example.com', 'yes'),
(763, 'wpmlpaypalsubscriptions', 'N', 'yes'),
(764, 'wpmlpaypalsandbox', 'N', 'yes'),
(765, 'wpmlpaypalliveurl', 'https://www.paypal.com/cgi-bin/webscr', 'yes'),
(766, 'wpmlpaypalsandurl', 'https://www.sandbox.paypal.com/cgi-bin/webscr', 'yes'),
(767, 'wpmlgeneralredirect', 'http://localhost/wp1/manage-subscriptions/', 'yes'),
(768, 'wpmloffsitetitle', 'WP1', 'yes'),
(769, 'wpmloffsitelist', 'checkboxes', 'yes'),
(770, 'wpmloffsitewidth', '400', 'yes'),
(771, 'wpmloffsiteheight', '300', 'yes'),
(772, 'wpmloffsitebutton', 'Subscribe Now', 'yes'),
(773, 'wpmlcurrency', 'USD', 'yes'),
(774, 'wpmlcurrencies', 'a:17:{s:3:\"AUD\";a:3:{s:4:\"name\";s:18:\"Australian Dollars\";s:6:\"symbol\";s:5:\"&#36;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"CAD\";a:3:{s:4:\"name\";s:16:\"Canadian Dollars\";s:6:\"symbol\";s:5:\"&#36;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"CHF\";a:3:{s:4:\"name\";s:12:\"Swiss Francs\";s:6:\"symbol\";s:3:\"CHF\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"DKK\";a:3:{s:4:\"name\";s:13:\"Danish Kroner\";s:6:\"symbol\";s:3:\"DKK\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"EUR\";a:3:{s:4:\"name\";s:5:\"Euros\";s:6:\"symbol\";s:7:\"&#8364;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"GBP\";a:3:{s:4:\"name\";s:14:\"British Pounds\";s:6:\"symbol\";s:6:\"&#163;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"HKD\";a:3:{s:4:\"name\";s:17:\"Hong Kong Dollars\";s:6:\"symbol\";s:8:\"&#20803;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"IDR\";a:3:{s:4:\"name\";s:18:\"Indonesian Rupiahs\";s:6:\"symbol\";s:2:\"Rp\";s:6:\"paypal\";s:1:\"N\";}s:3:\"JPY\";a:3:{s:4:\"name\";s:12:\"Japanese Yen\";s:6:\"symbol\";s:6:\"&#165;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"NOK\";a:3:{s:4:\"name\";s:16:\"Norwegian Kroner\";s:6:\"symbol\";s:6:\"&#107;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"NZD\";a:3:{s:4:\"name\";s:19:\"New Zealand Dollars\";s:6:\"symbol\";s:5:\"&#36;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"SEK\";a:3:{s:4:\"name\";s:14:\"Swedish Kroner\";s:6:\"symbol\";s:6:\"&#107;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"USD\";a:3:{s:4:\"name\";s:10:\"US Dollars\";s:6:\"symbol\";s:5:\"&#36;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"SGD\";a:3:{s:4:\"name\";s:17:\"Singapore Dollars\";s:6:\"symbol\";s:5:\"&#36;\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"ZAR\";a:3:{s:4:\"name\";s:19:\"South African Rands\";s:6:\"symbol\";s:1:\"R\";s:6:\"paypal\";s:1:\"N\";}s:3:\"BRL\";a:3:{s:4:\"name\";s:14:\"Brazilian Real\";s:6:\"symbol\";s:2:\"R$\";s:6:\"paypal\";s:1:\"Y\";}s:3:\"RON\";a:3:{s:4:\"name\";s:12:\"Romanian Leu\";s:6:\"symbol\";s:3:\"RON\";s:6:\"paypal\";s:1:\"N\";}}', 'yes'),
(775, 'wpmlintervals', 's:304:\"a:9:{s:5:\"daily\";s:5:\"Daily\";s:6:\"weekly\";s:6:\"Weekly\";s:7:\"monthly\";s:7:\"Monthly\";s:7:\"2months\";s:16:\"Every Two Months\";s:7:\"3months\";s:18:\"Every Three Months\";s:10:\"biannually\";s:25:\"Twice Yearly (Six Months)\";s:7:\"9months\";s:17:\"Every Nine Months\";s:6:\"yearly\";s:6:\"Yearly\";s:4:\"once\";s:8:\"Once Off\";}\";', 'yes'),
(776, 'wpmlembed', 'a:7:{s:15:\"acknowledgement\";a:1:{s:2:\"pl\";s:26:\"Thank you for subscribing.\";}s:8:\"subtitle\";a:1:{s:2:\"pl\";s:28:\"Subscribe to our newsletter.\";}s:14:\"subscribeagain\";a:1:{s:2:\"pl\";s:1:\"N\";}s:4:\"ajax\";a:1:{s:2:\"pl\";s:1:\"N\";}s:6:\"button\";a:1:{s:2:\"pl\";s:13:\"Subscribe Now\";}s:6:\"scroll\";a:1:{s:2:\"pl\";s:1:\"Y\";}s:7:\"captcha\";a:1:{s:2:\"pl\";s:1:\"N\";}}', 'yes'),
(777, 'wpmlpoststatuses', 'a:4:{s:7:\"publish\";s:9:\"Published\";s:7:\"pending\";s:7:\"Pending\";s:5:\"draft\";s:5:\"Draft\";s:7:\"private\";s:7:\"Private\";}', 'yes'),
(778, 'wpmlapi_key', '421AA90E079FA326B6494F812AD13E79', 'yes'),
(779, 'wpmlloadstyles', 'a:5:{i:0;s:21:\"newsletters-bootstrap\";i:1;s:20:\"bootstrap-datepicker\";i:2;s:11:\"fontawesome\";i:3;s:7:\"select2\";i:4;s:11:\"newsletters\";}', 'yes'),
(780, 'wpmlloadscripts', 'a:5:{i:0;s:9:\"bootstrap\";i:1;s:20:\"bootstrap-datepicker\";i:2;s:7:\"select2\";i:3;s:11:\"jquery-form\";i:4;s:9:\"recaptcha\";}', 'yes'),
(781, 'wpmlratereview_scheduled', '1', 'yes'),
(783, 'wpmlimagespost', '101', 'yes'),
(784, 'wpmlpermissions', 'a:33:{s:7:\"welcome\";a:1:{i:0;s:13:\"administrator\";}s:12:\"submitserial\";a:1:{i:0;s:13:\"administrator\";}s:4:\"gdpr\";a:1:{i:0;s:13:\"administrator\";}s:5:\"forms\";a:1:{i:0;s:13:\"administrator\";}s:4:\"send\";a:1:{i:0;s:13:\"administrator\";}s:14:\"autoresponders\";a:1:{i:0;s:13:\"administrator\";}s:19:\"autoresponderemails\";a:1:{i:0;s:13:\"administrator\";}s:5:\"lists\";a:1:{i:0;s:13:\"administrator\";}s:6:\"groups\";a:1:{i:0;s:13:\"administrator\";}s:11:\"subscribers\";a:1:{i:0;s:13:\"administrator\";}s:6:\"fields\";a:1:{i:0;s:13:\"administrator\";}s:12:\"importexport\";a:1:{i:0;s:13:\"administrator\";}s:6:\"themes\";a:1:{i:0;s:13:\"administrator\";}s:9:\"templates\";a:1:{i:0;s:13:\"administrator\";}s:14:\"templates_save\";a:1:{i:0;s:13:\"administrator\";}s:5:\"queue\";a:1:{i:0;s:13:\"administrator\";}s:7:\"history\";a:1:{i:0;s:13:\"administrator\";}s:6:\"emails\";a:1:{i:0;s:13:\"administrator\";}s:5:\"links\";a:1:{i:0;s:13:\"administrator\";}s:6:\"clicks\";a:1:{i:0;s:13:\"administrator\";}s:6:\"orders\";a:1:{i:0;s:13:\"administrator\";}s:8:\"settings\";a:1:{i:0;s:13:\"administrator\";}s:20:\"settings_subscribers\";a:1:{i:0;s:13:\"administrator\";}s:18:\"settings_templates\";a:1:{i:0;s:13:\"administrator\";}s:15:\"settings_system\";a:1:{i:0;s:13:\"administrator\";}s:14:\"settings_tasks\";a:1:{i:0;s:13:\"administrator\";}s:16:\"settings_updates\";a:1:{i:0;s:13:\"administrator\";}s:12:\"settings_api\";a:1:{i:0;s:13:\"administrator\";}s:10:\"extensions\";a:1:{i:0;s:13:\"administrator\";}s:19:\"extensions_settings\";a:1:{i:0;s:13:\"administrator\";}s:7:\"support\";a:1:{i:0;s:13:\"administrator\";}s:9:\"view_logs\";a:1:{i:0;s:13:\"administrator\";}s:34:\"newsletters_admin_send_sendtoroles\";a:3:{i:0;s:13:\"administrator\";i:1;s:13:\"administrator\";i:2;s:13:\"administrator\";}}', 'yes'),
(785, 'wpmlfieldtypes', 'a:11:{s:6:\"hidden\";s:6:\"Hidden\";s:7:\"special\";s:7:\"Special\";s:4:\"text\";s:10:\"Text Field\";s:8:\"textarea\";s:9:\"Text Area\";s:6:\"select\";s:16:\"Select Drop Down\";s:5:\"radio\";s:13:\"Radio Buttons\";s:8:\"checkbox\";s:10:\"Checkboxes\";s:4:\"file\";s:11:\"File Upload\";s:11:\"pre_country\";s:27:\"Predefined : Country Select\";s:8:\"pre_date\";s:37:\"Predefined : Date Picker (YYYY-MM-DD)\";s:10:\"pre_gender\";s:19:\"Predefined : Gender\";}', 'yes'),
(786, 'wpmletsubject_posts', '', 'yes'),
(787, 'wpmletmessage_posts', '<div class=\"wpmlposts\">\n		[newsletters_post_loop]\n			<div class=\"wpmlpost\">\n				<h3>[newsletters_post_anchor][newsletters_post_title][/newsletters_post_anchor]</h3>\n				[newsletters_post_date_wrapper]<p><small>Posted on [newsletters_post_date format=\"F jS, Y\"] by [newsletters_post_author]</small></p>[/newsletters_post_date_wrapper]\n				<div class=\"wpmlpost_content\">\n					[newsletters_post_thumbnail]\n					[newsletters_post_excerpt]\n				</div>\n			</div>\n			<hr style=\"visibility:hidden; clear:both;\" />\n		[/newsletters_post_loop]\n	</div>', 'yes'),
(788, 'wpmletsubject_latestposts', '', 'yes'),
(789, 'wpmletmessage_latestposts', '<div class=\"wpmlposts\">\n		[newsletters_post_loop]\n			<h2>[newsletters_category_heading]</h2>\n			<div class=\"wpmlpost\">\n				<h3>[newsletters_post_anchor][newsletters_post_title][/newsletters_post_anchor]</h3>\n				[newsletters_post_date_wrapper]<p><small>Posted on [newsletters_post_date format=\"F jS, Y\"] by [newsletters_post_author]</small></p>[/newsletters_post_date_wrapper]\n				<div class=\"wpmlpost_content\">\n					[newsletters_post_thumbnail]\n					[newsletters_post_excerpt]\n				</div>\n			</div>\n			<hr style=\"visibility:hidden; clear:both;\" />\n		[/newsletters_post_loop]\n	</div>', 'yes'),
(790, 'wpmletsubject_sendas', '', 'yes'),
(791, 'wpmletmessage_sendas', '<div class=\"newsletter_posts\">\n		[newsletters_post_loop]\n			<div class=\"newsletter_post newsletter_sendas\">\n				[newsletters_post_date_wrapper]<p><small>Posted on [newsletters_post_date format=\"F jS, Y\"] by [newsletters_post_author]</small></p>[/newsletters_post_date_wrapper]\n				<div class=\"newsletter_post_content\">\n					[newsletters_post_excerpt]\n				</div>\n			</div>\n		[/newsletters_post_loop]\n	</div>', 'yes'),
(792, 'wpmletsubject_confirm', 'Confirm Subscription', 'yes'),
(793, 'wpmletmessage_confirm', 'Good day,\r\n\r\nThank you for subscribing to the mailing list/s: [newsletters_mailinglist].\r\nPlease click the link below to activate/confirm your subscription.\r\n\r\n[newsletters_activate]\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(794, 'wpmletsubject_bounce', 'Email Bounced', 'yes'),
(795, 'wpmletmessage_bounce', 'Good day,\r\n\r\nAn email has bounced.\r\nThe email address is: [newsletters_email].\r\nTotal bounces for this email/subscriber: [newsletters_bouncecount].\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(796, 'wpmletsubject_unsubscribe', 'Unsubscription', 'yes'),
(797, 'wpmletmessage_unsubscribe', 'Good day Administrator,\r\n\r\nA subscriber has unsubscribed from a mailing list.\r\nThe mailing list is: [newsletters_mailinglist].\r\nThe subscriber email is: [newsletters_email].\r\n\r\n[newsletters_unsubscribecomments]\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(798, 'wpmletsubject_unsubscribeuser', 'You are unsubscribed', 'yes'),
(799, 'wpmletmessage_unsubscribeuser', 'Your e-mail has been removed from our database.\r\nYou will no longer receive communication from us.\r\nThanks for your readership, and we hope you\'ll visit us again!\r\n\r\nWas this a mistake? If it was, you can [newsletters_resubscribe]', 'yes'),
(800, 'wpmletsubject_unsubscribeconfirm', 'Confirm Unsubscribe', 'yes'),
(801, 'wpmletmessage_unsubscribeconfirm', 'Good day,\r\n\r\nPlease confirm your unsubscribe:\r\n\r\n[newsletters_unsubscribelink]\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(802, 'wpmletsubject_expire', 'Subscription Expired', 'yes'),
(803, 'wpmletmessage_expire', 'Good Day,\r\n\r\nYour subscription has expired.\r\nThe mailing list is: [newsletters_mailinglist].\r\nPlease click the link below to renew your subscription.\r\n\r\n[newsletters_activate]\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(804, 'wpmletsubject_order', 'Paid Subscription', 'yes'),
(805, 'wpmletmessage_order', 'Good day Administrator,\r\n\r\nYou have received a paid mailing list subscription order.\r\nThe mailing list is: [newsletters_mailinglist].\r\nThe subscriber email is: [newsletters_email].\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(806, 'wpmletsubject_schedule', 'Email Cron Fired', 'yes'),
(807, 'wpmletmessage_schedule', 'Good day Administrator,\r\n\r\nYour email cron has been fired as scheduled.\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(808, 'wpmletsubject_import_complete', 'Import Completed', 'yes'),
(809, 'wpmletmessage_import_complete', 'Good day,\r\n\r\nAll the subscribers you imported have finished importing in the background.\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(810, 'wpmletsubject_queue_complete', 'Queue Sending Completed', 'yes'),
(811, 'wpmletmessage_queue_complete', 'Good day,\r\n\r\nAll queued emails have been sent out.\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(812, 'wpmletsubject_subscribe', 'New Subscription', 'yes'),
(813, 'wpmletmessage_subscribe', 'Good day Administrator,\r\n\r\nA user/visitor has just subscribed to: [newsletters_mailinglist].\r\nThe email address of this subscriber is: [newsletters_email].\r\n\r\n[newsletters_customfields]\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(814, 'wpmletsubject_authenticate', 'Authenticate Email Address', 'yes'),
(815, 'wpmletmessage_authenticate', 'Please authenticate your subscriber account by clicking the link below.\r\n\r\n[newsletters_authenticate]\r\n\r\nOnce you authenticate, you can manage your subscriptions and additional subscriber information.\r\n\r\nAll the best,\r\n[newsletters_blogname]', 'yes'),
(817, 'widget_newsletters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(821, 'wpmlshowmessage_upgrade', '1', 'yes'),
(891, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(923, 'secret_key', ',IMnc_na6l?ueY~VJF^D_u3OV`%J.EC]<x$6C29bN:Rubq^%52C)mxDT1ilhOCrS', 'no'),
(1055, 'rewrite_rules', 'a:215:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:53:\"^(en)/wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:92:\"index.php?lang=$matches[1]&sitemap=$matches[2]&sitemap-subtype=$matches[3]&paged=$matches[4]\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:39:\"^(en)/wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:64:\"index.php?lang=$matches[1]&sitemap=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:52:\"(en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"(en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:49:\"(en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:44:\"(en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"(en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"(en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"(en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:50:\"(en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&post_format=$matches[1]&feed=$matches[2]\";s:45:\"(en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&post_format=$matches[1]&feed=$matches[2]\";s:26:\"(en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=pl&post_format=$matches[1]&embed=true\";s:38:\"(en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=pl&post_format=$matches[1]&paged=$matches[2]\";s:20:\"(en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=pl&post_format=$matches[1]\";s:37:\"slider-pl/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"slider-pl/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"slider-pl/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slider-pl/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slider-pl/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"slider-pl/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"slider-pl/([^/]+)/embed/?$\";s:42:\"index.php?slider-pl=$matches[1]&embed=true\";s:30:\"slider-pl/([^/]+)/trackback/?$\";s:36:\"index.php?slider-pl=$matches[1]&tb=1\";s:38:\"slider-pl/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?slider-pl=$matches[1]&paged=$matches[2]\";s:45:\"slider-pl/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?slider-pl=$matches[1]&cpage=$matches[2]\";s:34:\"slider-pl/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?slider-pl=$matches[1]&page=$matches[2]\";s:26:\"slider-pl/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"slider-pl/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"slider-pl/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slider-pl/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slider-pl/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"slider-pl/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"slider-en/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"slider-en/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"slider-en/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slider-en/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slider-en/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"slider-en/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"slider-en/([^/]+)/embed/?$\";s:42:\"index.php?slider-en=$matches[1]&embed=true\";s:30:\"slider-en/([^/]+)/trackback/?$\";s:36:\"index.php?slider-en=$matches[1]&tb=1\";s:38:\"slider-en/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?slider-en=$matches[1]&paged=$matches[2]\";s:45:\"slider-en/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?slider-en=$matches[1]&cpage=$matches[2]\";s:34:\"slider-en/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?slider-en=$matches[1]&page=$matches[2]\";s:26:\"slider-en/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"slider-en/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"slider-en/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slider-en/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slider-en/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"slider-en/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:37:\"(en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=pl&&feed=$matches[1]\";s:32:\"(en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=pl&&feed=$matches[1]\";s:13:\"(en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=pl&&embed=true\";s:25:\"(en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=pl&&paged=$matches[1]\";s:32:\"(en)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?lang=$matches[1]&&page_id=31&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:47:\"index.php?lang=pl&&page_id=31&cpage=$matches[1]\";s:7:\"(en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:46:\"(en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=pl&&feed=$matches[1]&withcomments=1\";s:41:\"(en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=pl&&feed=$matches[1]&withcomments=1\";s:22:\"(en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=pl&&embed=true\";s:49:\"(en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=pl&s=$matches[1]&feed=$matches[2]\";s:44:\"(en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=pl&s=$matches[1]&feed=$matches[2]\";s:25:\"(en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=pl&s=$matches[1]&embed=true\";s:37:\"(en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=pl&s=$matches[1]&paged=$matches[2]\";s:19:\"(en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=pl&s=$matches[1]\";s:52:\"(en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&author_name=$matches[1]&feed=$matches[2]\";s:47:\"(en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=pl&author_name=$matches[1]&feed=$matches[2]\";s:28:\"(en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=pl&author_name=$matches[1]&embed=true\";s:40:\"(en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=pl&author_name=$matches[1]&paged=$matches[2]\";s:22:\"(en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=pl&author_name=$matches[1]\";s:74:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"(en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"(en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"(en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"(en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"(en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"(en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"(en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"(en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"(en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:63:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:93:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:88:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:69:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:108:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:62:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:102:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&tb=1\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:82:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&feed=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:70:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&paged=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:77:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:115:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&cpage=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:66:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:114:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&name=$matches[5]&page=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:52:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"(en)/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"(en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&cpage=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:56:\"(en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:43:\"(en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:32:\"(en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"(en)/.?.+?/attachment/([^/]+)/trackback/?$\";s:54:\"index.php?lang=$matches[1]&attachment=$matches[2]&tb=1\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"(en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"(en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"(en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"(en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:25:\"(en)/(.?.+?)/trackback/?$\";s:52:\"index.php?lang=$matches[1]&pagename=$matches[2]&tb=1\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:45:\"(en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:40:\"(en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:33:\"(en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:40:\"(en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:29:\"(en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(1101, 'wp_paginate_options', 'a:22:{s:5:\"title\";s:6:\"Pages:\";s:8:\"nextpage\";s:7:\"&raquo;\";s:12:\"previouspage\";s:7:\"&laquo;\";s:3:\"css\";b:1;s:5:\"slash\";b:0;s:6:\"before\";s:24:\"<div class=\"navigation\">\";s:5:\"after\";s:6:\"</div>\";s:5:\"empty\";b:1;s:5:\"range\";i:3;s:6:\"anchor\";i:1;s:3:\"gap\";i:3;s:10:\"everywhere\";b:1;s:9:\"home-page\";b:0;s:9:\"blog-page\";b:0;s:11:\"search-page\";b:0;s:13:\"category-page\";b:0;s:12:\"archive-page\";b:0;s:8:\"position\";s:4:\"none\";s:24:\"hide-standard-pagination\";b:0;s:13:\"hide-ellipses\";b:0;s:4:\"font\";s:12:\"font-inherit\";s:6:\"preset\";s:15:\"wpp-modern-grey\";}', 'yes'),
(1108, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:37:\"Strona %CURRENT_PAGE% z %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:16:\"&laquo; Pierwsza\";s:9:\"last_text\";s:16:\"Ostatnia &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}', 'yes'),
(1187, '_site_transient_timeout_browser_c92baae71318dc81de51a663df2f8b4f', '1717350643', 'no'),
(1188, '_site_transient_browser_c92baae71318dc81de51a663df2f8b4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"125.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1189, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1716874753', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1190, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:24:\"WordCamp Kraków, Poland\";s:3:\"url\";s:33:\"https://krakow.wordcamp.org/2024/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2024-06-07 11:00:00\";s:8:\"end_date\";s:19:\"2024-06-09 00:00:00\";s:20:\"start_unix_timestamp\";i:1717750800;s:18:\"end_unix_timestamp\";i:1717884000;s:8:\"location\";a:4:{s:8:\"location\";s:24:\"Kraków (Cracow), Poland\";s:7:\"country\";s:2:\"PL\";s:8:\"latitude\";d:50.0717924;s:9:\"longitude\";d:19.9422407;}}i:1;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"Silesia WordPress MeetUp #23\";s:3:\"url\";s:63:\"https://www.meetup.com/silesia-wordpress-group/events/297279129\";s:6:\"meetup\";s:24:\"Silesia WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/silesia-wordpress-group/\";s:4:\"date\";s:19:\"2024-06-18 17:00:00\";s:8:\"end_date\";s:19:\"2024-06-18 20:00:00\";s:20:\"start_unix_timestamp\";i:1718722800;s:18:\"end_unix_timestamp\";i:1718733600;s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Gliwice, Poland\";s:7:\"country\";s:2:\"pl\";s:8:\"latitude\";d:50.29449;s:9:\"longitude\";d:18.671381;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:25:\"WordUp Kraków #lato 2024\";s:3:\"url\";s:53:\"https://www.meetup.com/wordup-krakow/events/300514399\";s:6:\"meetup\";s:14:\"WordUp Kraków\";s:10:\"meetup_url\";s:37:\"https://www.meetup.com/WordUp-Krakow/\";s:4:\"date\";s:19:\"2024-07-04 17:30:00\";s:8:\"end_date\";s:19:\"2024-07-04 21:00:00\";s:20:\"start_unix_timestamp\";i:1720107000;s:18:\"end_unix_timestamp\";i:1720119600;s:8:\"location\";a:4:{s:8:\"location\";s:42:\"Kraków, Województwo małopolskie, Poland\";s:7:\"country\";s:2:\"PL\";s:8:\"latitude\";d:50.06;s:9:\"longitude\";d:19.96;}}i:3;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Silesia WordPress MeetUp #24 - visibility & przyspieszanie stron\";s:3:\"url\";s:63:\"https://www.meetup.com/silesia-wordpress-group/events/297279139\";s:6:\"meetup\";s:24:\"Silesia WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/silesia-wordpress-group/\";s:4:\"date\";s:19:\"2024-09-28 11:00:00\";s:8:\"end_date\";s:19:\"2024-09-28 16:00:00\";s:20:\"start_unix_timestamp\";i:1727514000;s:18:\"end_unix_timestamp\";i:1727532000;s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Gliwice, Poland\";s:7:\"country\";s:2:\"pl\";s:8:\"latitude\";d:50.292618;s:9:\"longitude\";d:18.681587;}}i:4;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Silesia WordPress MeetUp #25 - SEO\";s:3:\"url\";s:63:\"https://www.meetup.com/silesia-wordpress-group/events/297279148\";s:6:\"meetup\";s:24:\"Silesia WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/silesia-wordpress-group/\";s:4:\"date\";s:19:\"2024-11-23 11:00:00\";s:8:\"end_date\";s:19:\"2024-11-23 16:00:00\";s:20:\"start_unix_timestamp\";i:1732356000;s:18:\"end_unix_timestamp\";i:1732374000;s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Gliwice, Poland\";s:7:\"country\";s:2:\"pl\";s:8:\"latitude\";d:50.292618;s:9:\"longitude\";d:18.681587;}}}}', 'no'),
(1202, 'category_children', 'a:0:{}', 'yes'),
(1214, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1716759041', 'no'),
(1215, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6364;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4831;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2787;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2684;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2072;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1948;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1915;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1710;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1580;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1571;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1547;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1513;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1510;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1506;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1402;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1314;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1294;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1170;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1167;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1163;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1102;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1034;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1010;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:988;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:950;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:913;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:909;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:893;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:890;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:888;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:884;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:884;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:883;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:800;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:798;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:793;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:793;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:779;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:767;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:745;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:743;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:737;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:729;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:704;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:693;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:691;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:644;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:633;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:632;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:622;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:614;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:610;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:601;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:599;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:599;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:599;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:593;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:579;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:579;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:578;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:577;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:576;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:574;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:553;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:550;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:545;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:540;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:540;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:531;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:528;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:525;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:521;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:515;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:514;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:513;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:507;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:489;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:477;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:458;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:457;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:453;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:449;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:447;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:447;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:440;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:438;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:433;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:429;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:428;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:427;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:426;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:416;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:414;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:411;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:410;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:408;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:396;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:389;}}', 'no'),
(1219, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"22.7\";}', 'yes'),
(1220, 'wpseo', 'a:110:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:0:\"\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"22.7\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:19:\"enable_ai_generator\";b:1;s:22:\"ai_enabled_pre_default\";b:0;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1716748331;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:36:\"/%year%/%monthnum%/%day%/%postname%/\";s:8:\"home_url\";s:20:\"http://localhost/wp1\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1716748442;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:20:\"deny_adsbot_crawling\";b:0;s:19:\"deny_ccbot_crawling\";b:0;s:29:\"deny_google_extended_crawling\";b:0;s:20:\"deny_gptbot_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:9:\"slider-pl\";i:3;s:9:\"slider-en\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}s:23:\"last_known_no_unindexed\";a:5:{s:40:\"wpseo_total_unindexed_post_type_archives\";i:1716748442;s:27:\"wpseo_total_unindexed_posts\";i:1716748600;s:27:\"wpseo_total_unindexed_terms\";i:1716748600;s:31:\"wpseo_unindexed_post_link_count\";i:1716748600;s:31:\"wpseo_unindexed_term_link_count\";i:1716748600;}s:14:\"new_post_types\";a:0:{}s:14:\"new_taxonomies\";a:0:{}s:34:\"show_new_content_type_notification\";b:0;}', 'yes'),
(1221, 'wpseo_titles', 'a:151:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:48:\"%%name%%, Autor w serwisie %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:68:\"Wyniki wyszukiwania \"%%searchphrase%%\" %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:51:\"Strona nie została znaleziona %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:54:\"Artykuł %%POSTLINK%% pochodzi z serwisu %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:33:\"Błąd 404: Strony nie znaleziono\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archiwum dla\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:15:\"Strona główna\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:19:\"Wyniki wyszukiwania\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:3:\"WP1\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:3:\"WP1\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:24:\"publishing_principles_id\";i:0;s:25:\"ownership_funding_info_id\";i:0;s:29:\"actionable_feedback_policy_id\";i:0;s:21:\"corrections_policy_id\";i:0;s:16:\"ethics_policy_id\";i:0;s:19:\"diversity_policy_id\";i:0;s:28:\"diversity_staffing_report_id\";i:0;s:15:\"org-description\";s:0:\"\";s:9:\"org-email\";s:0:\"\";s:9:\"org-phone\";s:0:\"\";s:14:\"org-legal-name\";s:0:\"\";s:17:\"org-founding-date\";s:0:\"\";s:20:\"org-number-employees\";s:0:\"\";s:10:\"org-vat-id\";s:0:\"\";s:10:\"org-tax-id\";s:0:\"\";s:7:\"org-iso\";s:0:\"\";s:8:\"org-duns\";s:0:\"\";s:11:\"org-leicode\";s:0:\"\";s:9:\"org-naics\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:52:\"Archiwa %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:22:\"Archiwa %%term_title%%\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:52:\"Archiwa %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:22:\"Archiwa %%term_title%%\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:52:\"Archiwa %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:22:\"Archiwa %%term_title%%\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:15:\"title-slider-pl\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-slider-pl\";s:0:\"\";s:17:\"noindex-slider-pl\";b:0;s:28:\"display-metabox-pt-slider-pl\";b:1;s:28:\"post_types-slider-pl-maintax\";i:0;s:26:\"schema-page-type-slider-pl\";s:7:\"WebPage\";s:29:\"schema-article-type-slider-pl\";s:4:\"None\";s:22:\"social-title-slider-pl\";s:9:\"%%title%%\";s:28:\"social-description-slider-pl\";s:0:\"\";s:26:\"social-image-url-slider-pl\";s:0:\"\";s:25:\"social-image-id-slider-pl\";i:0;s:15:\"title-slider-en\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-slider-en\";s:0:\"\";s:17:\"noindex-slider-en\";b:0;s:28:\"display-metabox-pt-slider-en\";b:1;s:28:\"post_types-slider-en-maintax\";i:0;s:26:\"schema-page-type-slider-en\";s:7:\"WebPage\";s:29:\"schema-article-type-slider-en\";s:4:\"None\";s:22:\"social-title-slider-en\";s:9:\"%%title%%\";s:28:\"social-description-slider-en\";s:0:\"\";s:26:\"social-image-url-slider-en\";s:0:\"\";s:25:\"social-image-id-slider-en\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(1222, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(1228, 'wfls_last_role_change', '1716748366', 'no'),
(1229, 'wordfence_version', '7.11.5', 'yes'),
(1230, 'wordfence_case', '1', 'yes'),
(1231, 'wordfence_installed', '1', 'yes'),
(1232, 'wordfenceActivated', '0', 'yes'),
(1233, 'wf_plugin_act_error', '', 'yes'),
(1238, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716831548;s:7:\"checked\";a:2:{s:9:\"fortyfour\";s:3:\"1.1\";s:16:\"twentytwentyfour\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1239, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-6.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716831546;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1248, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1716834842', 'no'),
(1249, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(1250, '_transient_timeout_wpseo_total_unindexed_general_items', '1716834956', 'no'),
(1251, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(1256, '_transient_timeout_wfRegistrationToken', '1716834882', 'no'),
(1257, '_transient_wfRegistrationToken', 'YUqixmTVqAY01dtUOEsrmxTKreQbTC_I4zjl6ihzCcw', 'no'),
(1260, '_transient_timeout_wpseo_total_unindexed_posts', '1716835000', 'no'),
(1261, '_transient_wpseo_total_unindexed_posts', '0', 'no'),
(1262, '_transient_timeout_wpseo_total_unindexed_terms', '1716835000', 'no'),
(1263, '_transient_wpseo_total_unindexed_terms', '0', 'no'),
(1264, '_transient_timeout_wpseo_unindexed_post_link_count', '1716835000', 'no'),
(1265, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(1266, '_transient_timeout_wpseo_unindexed_term_link_count', '1716835000', 'no'),
(1267, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(1270, '_transient_pll_languages_list', 'a:2:{i:0;a:22:{s:4:\"name\";s:6:\"Polski\";s:4:\"slug\";s:2:\"pl\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:2;s:6:\"locale\";s:5:\"pl_PL\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"pl-PL\";s:8:\"facebook\";s:5:\"pl_PL\";s:8:\"home_url\";s:21:\"http://localhost/wp1/\";s:10:\"search_url\";s:21:\"http://localhost/wp1/\";s:4:\"host\";N;s:13:\"page_on_front\";i:31;s:14:\"page_for_posts\";i:162;s:9:\"flag_code\";s:2:\"pl\";s:8:\"flag_url\";s:61:\"http://localhost/wp1/wp-content/plugins/polylang/flags/pl.png\";s:4:\"flag\";s:367:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAPFBMVEX/8fH67Ozz5ubt4OD+/v77+/v39/fo2Nj5AAD+jo79bW36X1/4T0/5QUHhAAD3MzP0Kir2ICDzERHtAACO5h0ZAAAAQUlEQVR4AQXBsRHDMAwAMTzNwvuvm5MVIECIZIEQZ4EQ7AAIGBABegsR+Z7VxChx7hCjhIwYJcTydcgQ1gv8Lhd/58kJTU6WtnIAAAAASUVORK5CYII=\" alt=\"Polski\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:1;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:2;s:16:\"term_taxonomy_id\";i:2;s:5:\"count\";i:17;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:3;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:2;}}}i:1;a:22:{s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:5;s:6:\"locale\";s:5:\"en_US\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"home_url\";s:29:\"http://localhost/wp1/en/home/\";s:10:\"search_url\";s:24:\"http://localhost/wp1/en/\";s:4:\"host\";N;s:13:\"page_on_front\";i:34;s:14:\"page_for_posts\";i:164;s:9:\"flag_code\";s:2:\"us\";s:8:\"flag_url\";s:61:\"http://localhost/wp1/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:576:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:5;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:9;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:6;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:1;}}}}', 'yes'),
(1273, 'w3tc_state', '{\"common.install\":1716748882,\"common.install_version\":\"2.7.2\",\"license.status\":\"no_key\",\"license.next_check\":1717180883,\"license.terms\":\"\",\"license.community_terms\":\"accept\",\"common.show_note.flush_statics_needed\":false,\"common.show_note.flush_statics_needed.timestamp\":1716749058,\"common.show_note.flush_posts_needed\":false,\"common.show_note.flush_posts_needed.timestamp\":1716749058,\"common.show_note.plugins_updated\":false,\"common.show_note.plugins_updated.timestamp\":1716749058}', 'no'),
(1275, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716831548;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=3079482\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=3079482\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:33:\"w3-total-cache/w3-total-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/w3-total-cache\";s:4:\"slug\";s:14:\"w3-total-cache\";s:6:\"plugin\";s:33:\"w3-total-cache/w3-total-cache.php\";s:11:\"new_version\";s:5:\"2.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/w3-total-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/w3-total-cache.2.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806\";s:2:\"1x\";s:67:\"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:6:\"7.11.5\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wordfence.7.11.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:6:\"2.94.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.94.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"22.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.22.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.4\";}}s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.3.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.16.0\";s:21:\"polylang/polylang.php\";s:5:\"3.6.1\";s:33:\"w3-total-cache/w3-total-cache.php\";s:5:\"2.7.2\";s:23:\"wordfence/wordfence.php\";s:6:\"7.11.5\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:6:\"2.94.1\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"22.7\";}}', 'no'),
(1678, 'w3tc_browsercache_flush_timestamp', '81517', 'yes'),
(1679, 'w3tc_setupguide_completed', '1716748996', 'no'),
(1680, 'w3tc_stats_hotspot_start', '1716749014', 'no'),
(1681, 'w3tc_stats_hotspot_end', '1716749074.7608', 'no'),
(1682, '_transient_timeout_w3tc_activation_wordpress-seo', '1716835443', 'no'),
(1683, '_transient_w3tc_activation_wordpress-seo', '1', 'no'),
(1685, '_transient_timeout_wpseo-statistics-totals', '1716835474', 'no'),
(1686, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:2:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"ok\";s:5:\"label\";s:41:\"Wpisy z wynikiem SEO: <strong>OK</strong>\";s:5:\"count\";i:1;s:4:\"link\";s:97:\"http://localhost/wp1/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=ok\";}i:1;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:42:\"Wpisy <strong>bez</strong> frazy kluczowej\";s:5:\"count\";i:8;s:4:\"link\";s:97:\"http://localhost/wp1/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";d:0.1111111111111111;s:4:\"good\";i:0;s:2:\"na\";d:0.8888888888888888;s:7:\"noindex\";i:0;}}}', 'no'),
(1691, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1716832444', 'no'),
(1692, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(1693, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1716832444', 'no'),
(1694, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(1695, '_site_transient_timeout_available_translations', '1716842346', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1696, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.8/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 04:58:23\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.4/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.25/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 09:17:56\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-20 07:52:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 06:53:44\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 08:56:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:05:05\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-07 05:56:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 14:48:34\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:47:17\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-26 13:44:37\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 14:21:47\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-03 13:12:29\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 20:08:02\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-24 17:26:23\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:15\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 03:31:51\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-10 06:30:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:22:48\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-23 14:33:39\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 13:30:32\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-08 03:22:25\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 15:08:30\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 17:55:40\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 01:40:49\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-11-08 20:42:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.9/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.15/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.20/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-26 19:16:27\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-01-12 17:31:37\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 17:07:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 18:38:28\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 13:45:51\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 13:13:32\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-27 10:52:27\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.5/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 23:22:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-01 06:52:39\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.32\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.32/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-16 07:24:01\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 11:52:45\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-22 14:20:40\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 09:04:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-04 16:29:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.25/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-24 07:16:04\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.25\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.25/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.20\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.20/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.6\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.6/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-13 16:06:43\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 01:03:51\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-26 16:49:07\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.5.3/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-09 18:37:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-17 13:37:48\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.8\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-02-23 19:36:11\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 08:56:54\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-24 10:30:01\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.14\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.14/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-09 17:40:16\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 08:49:16\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-05 08:03:59\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-15 09:47:39\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 21:12:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.24/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-21 13:57:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.33\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.33/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-16 23:10:57\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 10:39:37\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-29 14:17:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.5.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-06 19:04:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-02 19:26:39\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.15/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-17 11:21:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.4.2\";s:7:\"updated\";s:19:\"2023-11-12 10:29:16\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-02-14 12:47:33\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-03-25 15:04:50\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-03 15:29:12\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 11:29:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-14 05:23:13\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.37\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.37/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.9\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.9/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.24\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.24/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-18 15:04:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-20 12:38:20\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.4\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.15\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.15/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-04-21 03:44:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-19 09:07:33\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.5\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.5.3\";s:7:\"updated\";s:19:\"2024-05-12 07:23:41\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1698, '_site_transient_timeout_theme_roots', '1716833347', 'no'),
(1699, '_site_transient_theme_roots', 'a:2:{s:9:\"fortyfour\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";}', 'no'),
(1700, '_transient_timeout_wfcredentialstatus_1', '1716835149', 'no'),
(1701, '_transient_wfcredentialstatus_1', '137a242e0c1bfc614f21ea7dde2421a1c9d2c3b887b293ff41defd33d403cbbb3', 'no'),
(1702, '_transient_timeout_feed_a2a8f6ff8f129a81518b9f747f983e41', '1716874753', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1703, '_transient_feed_a2a8f6ff8f129a81518b9f747f983e41', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 May 2024 13:21:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.6-alpha-58184\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Blog | WordPress.org Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordCamp Gdynia, Polska 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 May 2024 21:15:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=33703\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:431:\"Zapraszamy na WordCamp Gdynia 2024, który odbędzie się w dniach 4-6 października 2024 roku w Gdyni (PL)! To wyjątkowa konferencja, która skupia społeczność WordPressa. Jest to wydarzenie dla każdego, od początkujących użytkowników, po zaawansowanych deweloperów. W tym roku będziemy zgłębiać tematy związane z najnowszymi trendami i technologiami w świecie WordPressa, w tym optymalizacją pracy oraz [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1596:\"\n<p><strong>Zapraszamy na <a href=\"https://gdynia.wordcamp.org/2024/\" data-type=\"link\" data-id=\"https://gdynia.wordcamp.org/2024/\">WordCamp Gdynia 2024</a>, który odbędzie się w dniach 4-6 października 2024 roku w Gdyni (PL)!</strong></p>\n\n\n\n<p>To wyjątkowa konferencja, która skupia społeczność WordPressa. Jest to wydarzenie dla każdego, od początkujących użytkowników, po zaawansowanych deweloperów. W tym roku będziemy zgłębiać tematy związane z najnowszymi trendami i technologiami w świecie WordPressa, w tym optymalizacją pracy oraz samej platformy.</p>\n\n\n\n<p>Na WordCamp Gdynia 2024 czeka na Was mnóstwo inspirujących prezentacji, warsztatów oraz sesji networkingowych. Spotkacie pasjonatów WordPressa, którzy podzielą się swoją wiedzą i doświadczeniem, a także poznacie nowe osoby, z którymi będziecie mogli wymienić się pomysłami i nawiązać cenne kontakty zawodowe.</p>\n\n\n\n<p>Podczas konferencji poruszymy szerokie spektrum tematów, od tworzenia stron internetowych, przez SEO i marketing, po projektowanie i zarządzanie treścią. To doskonała okazja, aby dowiedzieć się więcej o najnowszych trendach i narzędziach, które mogą pomóc w codziennej pracy z WordPressem.</p>\n\n\n\n<p>Nie przegapcie tej okazji! Już teraz dostępne są bilety early birds w cenie 50 zł. Zarezerwujcie swoje miejsce na stronie: <a href=\"https://gdynia.wordcamp.org/2024/\">https://gdynia.wordcamp.org/2024/</a></p>\n\n\n\n<p>Czekamy na Was w Gdyni na WordCamp 2024! Dołączcie do społeczności WordPressa i bądźcie częścią tego wyjątkowego wydarzenia.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"33703\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordUp Trójmiasto #21 – 11 maja 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 03 Mar 2024 18:04:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=22871\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Cześć! Właśnie skończyła się 20. edycja WordUp Trójmiasto 🎉, a my już nie możemy się doczekać kolejnej, 21. edycji, która odbędzie się 11 maja 2024 o godz. 12:00 📅. Poprzednia edycja, która miała miejsce 2 marca 2024 w Muzeum Miasta Gdyni 🏛, zgromadziła 120 pasjonatów WordPressa, oferując 11 merytorycznych prezentacji i dużą dawkę wiedzy na [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8872:\"\n<p>Cześć!</p>\n\n\n\n<p>Właśnie skończyła się 20. edycja WordUp Trójmiasto <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, a my już nie możemy się doczekać kolejnej, 21. edycji, która odbędzie się 11 maja 2024 o godz. 12:00 <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4c5.png\" alt=\"📅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. </p>\n\n\n\n<p>Poprzednia edycja, która miała miejsce 2 marca 2024 w Muzeum Miasta Gdyni <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3db.png\" alt=\"🏛\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, zgromadziła 120 pasjonatów WordPressa, oferując 11 merytorycznych prezentacji i dużą dawkę wiedzy na temat designu, SEO, marketingu i tworzenia treści <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f913.png\" alt=\"🤓\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Była to niepowtarzalna okazja do spotkania z ludźmi z branży, wymiany doświadczeń i nawet znalezienia przyszłego współpracownika czy klienta <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f465.png\" alt=\"👥\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Dlaczego warto już teraz zaplanować swoją obecność na <a href=\"https://wp.trojmiasto.us/#rejestracja\">WordUp Trójmiasto #21</a>? Jeśli poprzednia edycja jest jakimkolwiek wyznacznikiem, możemy się spodziewać jeszcze więcej inspirujących prezentacji <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3a4.png\" alt=\"🎤\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, spotkań z ekspertami i możliwości do networkingu <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f91d.png\" alt=\"🤝\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. To szansa nie tylko na zdobycie nowej wiedzy, ale również na spotkanie z innymi entuzjastami WordPressa, co jest bezcenne w naszej branży.</p>\n\n\n\n<p>Edycja #21 to kolejna okazja do zanurzenia się w świat WordPressa i poszerzenia swoich horyzontów <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f680.png\" alt=\"🚀\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Niezależnie od tego, czy jesteś deweloperem, projektantem, specjalistą SEO, czy pasjonatem tworzenia treści, znajdziesz coś dla siebie. Networking na steroidach, jak to było podczas poprzedniej edycji, zapewni możliwość nawiązania nowych kontaktów biznesowych i wymiany doświadczeń z innymi uczestnikami <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4bc.png\" alt=\"💼\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Zachęcamy do wcześniejszej rejestracji, aby lepiej zorganizować wydarzenie <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/2705.png\" alt=\"✅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Wszystkie szczegóły dotyczące rejestracji i więcej informacji na temat samego wydarzenia znajdziecie na naszej stronie na Facebooku oraz na oficjalnej stronie wydarzenia <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f310.png\" alt=\"🌐\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Nie przegap tej wyjątkowej okazji do spotkania z entuzjastami WordPressa, odkrywania nowych inspiracji i zgłębiania wiedzy! Do zobaczenia 11 maja! <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f388.png\" alt=\"🎈\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>Pozdrawiam serdecznie, <br>Mariusz Szatkowski Organizator WordUp Trójmiasto</p>\n\n\n\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped wp-block-gallery-1 is-layout-flex wp-block-gallery-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-scaled.jpg\"><img fetchpriority=\"high\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22876\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1024x768.jpg\" alt=\"\" class=\"wp-image-22876\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-scaled.jpg\"><img decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22877\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1024x768.jpg\" alt=\"\" class=\"wp-image-22877\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-scaled.jpg\"><img decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22872\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1024x768.jpg\" alt=\"\" class=\"wp-image-22872\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22873\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1024x768.jpg\" alt=\"\" class=\"wp-image-22873\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22875\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1024x768.jpg\" alt=\"\" class=\"wp-image-22875\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22874\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1024x768.jpg\" alt=\"\" class=\"wp-image-22874\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"22871\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordUp Trójmiasto #20 – 2 marca 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Dec 2023 08:21:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=18363\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:399:\"🗓️ Data: 2 marca 2024📍 Lokalizacja: Muzeum Miasta Gdyni Zaplanuj już dziś swoją wizytę nad morzem i dołącz do nas na 20. edycji WordUp Trójmiasto! Jeśli WordPress jest Twoją pasją, to to wydarzenie jest stworzone właśnie dla Ciebie!10 merytorycznych prezentacji i duża dawka wiedzy to powody dla którego powinieneś odwiedzić wczesną wiosną Gdynię. Dlaczego warto [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2949:\"\n<p><br><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f5d3.png\" alt=\"🗓\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Data: 2 marca 2024<br><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4cd.png\" alt=\"📍\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Lokalizacja: Muzeum Miasta Gdyni</p>\n\n\n\n<p>Zaplanuj już dziś swoją wizytę nad morzem i dołącz do nas na 20. edycji WordUp Trójmiasto! Jeśli WordPress jest Twoją pasją, to to wydarzenie jest stworzone właśnie dla Ciebie!<br>10 merytorycznych prezentacji i duża dawka wiedzy to powody dla którego powinieneś odwiedzić wczesną wiosną Gdynię.</p>\n\n\n\n<p><strong>Dlaczego warto przyjechać?</strong></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f465.png\" alt=\"👥\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Spotkanie z Ludźmi z Branży</strong>: To niepowtarzalna okazja, aby spotkać innych entuzjastów WordPressa, wymienić się doświadczeniami, a może nawet znaleźć przyszłego współpracownika czy klienta.</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3a4.png\" alt=\"🎤\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Wiedza prosto od Ekspertów</strong>: Przygotowaliśmy dla Was szereg inspirujących prezentacji, które obejmują różnorodne tematy – od designu, poprzez SEO, po marketing i tworzenie treści. Każdy, bez względu na swoje doświadczenie, znajdzie coś dla siebie.</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f91d.png\" alt=\"🤝\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Networking na Steroidach</strong>: Po prezentacjach zapraszamy do udziału w sesjach networkingowych. To czas, kiedy możecie porozmawiać z innymi uczestnikami, podzielić się swoimi doświadczeniami i dowiedzieć się, co nowego dzieje się w świecie WordPressa.</p>\n\n\n\n<p><strong>Jak się zapisać?</strong></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/2705.png\" alt=\"✅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Wstęp na wydarzenie jest darmowy, ale dla lepszej organizacji prosimy o wcześniejszą rejestrację. Zapisy można dokonać tutaj: <a href=\"https://wp.trojmiasto.us/#rejestracja\">Rejestracja na WordUp Trójmiasto #20</a></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f50d.png\" alt=\"🔍\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Więcej szczegółów znajdziecie na naszej stronie na Facebooku oraz na stronie wydarzenia: <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>.</p>\n\n\n\n<p>Nie przegap tej wyjątkowej okazji do spotkania z entuzjastami WordPressa, odkrywania nowych inspiracji i zgłębiania wiedzy!</p>\n\n\n\n<p>Do zobaczenia 2 marca 2024 o godz. 12.00 w Muzeum Miasta Gdyni!</p>\n\n\n\n<p>Pozdrawiam,<br>Mariusz Szatkowski<br>Organizator WordUp Trójmiasto</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"18363\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"WordUp Trójmiasto #19 – 2 grudnia 2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 06:05:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=17362\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:391:\"Już 2 grudnia 2023 roku w Muzeum Miasta Gdyni odbędzie się 19. edycja WordUp Trójmiasto. Jeśli jesteś fanem WordPressa, to musisz tam być! Dlaczego warto się wybrać? Jak się zapisać? Wstęp na wydarzenie jest darmowy, ale żebyśmy wiedzieli, ilu nas będzie, prosimy o wcześniejszą rejestrację. Możesz to zrobić tutaj: Rejestracja na WordUp Trójmiasto #19 Więcej [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1909:\"\n<p>Już 2 grudnia 2023 roku w Muzeum Miasta Gdyni odbędzie się 19. edycja WordUp Trójmiasto. Jeśli jesteś fanem WordPressa, to musisz tam być!</p>\n\n\n\n<p><strong>Dlaczego warto się wybrać?</strong></p>\n\n\n\n<ol>\n<li><strong>Spotkasz Ludzi z Branży</strong>: To idealne miejsce, żeby poznać innych pasjonatów WordPressa, wymienić się doświadczeniami i nawiązać nowe kontakty. Kto wie, może znajdziesz tu swojego przyszłego współpracownika lub klienta?</li>\n\n\n\n<li><strong>Wiedza prosto od Ekspertów</strong>: Na WordUp Trójmiasto będziemy mieli aż 10 różnorodnych prezentacji. Od designu, przez SEO, aż po marketing i tworzenie treści. Każdy znajdzie coś dla siebie.</li>\n\n\n\n<li><strong>Dla Każdego Coś Miłego</strong>: Niezależnie od tego, czy jesteś początkującym użytkownikiem WordPressa, czy zaawansowanym deweloperem, każdy znajdzie tu coś dla siebie.</li>\n\n\n\n<li><strong>Networking na Steroidach</strong>: Po prezentacjach nie zapomnijmy o networkingu. To czas, kiedy możesz porozmawiać z innymi uczestnikami, wymienić się doświadczeniami i dowiedzieć się, co nowego w świecie WordPressa.</li>\n</ol>\n\n\n\n<p><strong>Jak się zapisać?</strong></p>\n\n\n\n<p>Wstęp na wydarzenie jest darmowy, ale żebyśmy wiedzieli, ilu nas będzie, prosimy o wcześniejszą rejestrację. Możesz to zrobić tutaj: <a href=\"https://evenea.pl/pl/wydarzenie/wordup19\">Rejestracja na WordUp Trójmiasto #19</a></p>\n\n\n\n<p>Więcej szczegółów znajdziesz na naszej stronie na Facebooku oraz na stronie wydarzenia <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>.</p>\n\n\n\n<p>Nie przegap tej okazji i dołącz do nas 2 grudnia 2023 o godz. 12.00 w Muzeum Miasta Gdyni. Czekają na Ciebie ciekawe prezentacje, nowe znajomości i mnóstwo wiedzy do zgarnięcia!</p>\n\n\n\n<p>Do zobaczenia!</p>\n\n\n\n<p>Pozdrawiam, <br>Mariusz Szatkowski <br>Organizator WordUp Trójmiasto</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"17362\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordCamp Gdynia {NextGen} – 30.09.2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 22 May 2023 17:17:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=16179\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:423:\"Zapraszamy na najbliższe spotkanie WordCamp Gdynia 2023 NextGen, które odbędzie się w Gdyni 30 września 2023 w Gdyni. WordUp Gdynia 2023 to konferencja konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa. W tym roku będziemy rozmawiać o optymalizacji naszej pracy jak i samego WordPressa To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2922:\"\n<figure class=\"wp-block-image size-full\"><a href=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg\"><img loading=\"lazy\" decoding=\"async\" width=\"960\" height=\"720\" src=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg\" alt=\"\" class=\"wp-image-16180\" srcset=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg 960w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-300x225.jpeg 300w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-768x576.jpeg 768w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-440x330.jpeg 440w\" sizes=\"(max-width: 960px) 100vw, 960px\" /></a></figure>\n\n\n\n<p><br><br>Zapraszamy na najbliższe spotkanie <strong>WordCamp Gdynia 2023 NextGen</strong>, które odbędzie się w Gdyni 30 września 2023 w Gdyni. </p>\n\n\n\n<p>WordUp Gdynia 2023 to konferencja konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa. W tym roku będziemy rozmawiać o optymalizacji naszej pracy jak i samego WordPressa</p>\n\n\n\n<p>To wyjątkowa okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży.</p>\n\n\n\n<p>Podczas WordCamp Gdynia będziemy mieli okazję spotkać się z pasjonatami WordPressa, którzy podzielą się swoimi doświadczeniami i wiedzą na temat tej platformy. Będzie to doskonała okazja do zdobycia nowych kontaktów i poznania nowych wyzwań w życiu zawodowym.</p>\n\n\n\n<p>Podczas konferencji poruszone zostaną różne tematy związane bezpośrednio i pośrednio z WordPressem, w tym tworzenie stron internetowych, SEO, marketing, projektowanie i wiele innych.</p>\n\n\n\n<p>To również doskonała okazja dla uczestników, aby podzielić się swoją wiedzą i doświadczeniami z innymi miłośnikami WordPressa.</p>\n\n\n\n<p>Podczas tego wydarzenia, będziemy mieli okazję wysłuchać aż 12 ciekawych prezentacji dotyczących WordPressa, zarówno dla deweloperów, jak i dla osób korzystających z tej platformy na co dzień. Tematyka prezentacji będzie różnorodna, choć skupiona wokół optymalizacji, obejmująca takie zagadnienia, jak design, SEO, marketing czy tworzenie treści.</p>\n\n\n\n<p>Nie zabraknie również czasu na networking, czyli nawiązywanie kontaktów i rozmowy z innymi uczestnikami spotkania. Dzięki temu można poszerzyć swoje horyzonty, dowiedzieć się czegoś nowego oraz wymienić doświadczeniami z innymi pasjonatami WordPressa.</p>\n\n\n\n<p>Wszystkie informacje na temat tego wydarzenia znajdziecie pod adresem: <a href=\"https://gdynia.wordcamp.org/2023/\">https://gdynia.wordcamp.org/2023/</a></p>\n\n\n\n<p>Nie przegap okazji, aby wziąć udział w tym niezwykłym spotkaniu, zarezerwuj swój czas już teraz i dołącz do społeczności WordPressa w Gdyni!</p>\n\n\n\n<p></p>\n\n\n\n<p></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordUp Trójmiasto #18 już 22 kwietnia 2023 &lt;— ###\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Mar 2023 06:16:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=15586\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:421:\"Zapraszamy na kolejne spotkanie WordUp, które odbędzie się w Gdyni 22 kwietnia 2023 w Muzeum Miasta Gdyni. Będzie to doskonała okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży. WordUp Trójmiasto to już osiemnasta edycja tej konferencji, która skupia społeczność WordPressa. Jest to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3200:\"\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" src=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-1024x768.jpg\" alt=\"\" class=\"wp-image-15588\" srcset=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-1024x768.jpg 1024w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-300x225.jpg 300w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-768x576.jpg 768w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Zapraszamy na kolejne spotkanie WordUp, które odbędzie się w Gdyni 22 kwietnia 2023 w Muzeum Miasta Gdyni. Będzie to doskonała okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży.</p>\n\n\n\n<p>WordUp Trójmiasto to już osiemnasta edycja tej konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa.</p>\n\n\n\n<p>Podczas WordUp Trójmiasto będziemy mieli okazję spotkać się z pasjonatami WordPressa, którzy podzielą się swoimi doświadczeniami i wiedzą na temat tej platformy. Będzie to doskonała okazja do zdobycia nowych kontaktów i poznania nowych wyzwań w życiu zawodowym.</p>\n\n\n\n<p>Podczas konferencji poruszone zostaną różne tematy związane bezpośrednio i pośrednio z WordPressem, w tym tworzenie stron internetowych, SEO, marketing, projektowanie i wiele innych.</p>\n\n\n\n<p>To również doskonała okazja dla uczestników, aby podzielić się swoją wiedzą i doświadczeniami z innymi miłośnikami WordPressa.</p>\n\n\n\n<p>Podczas tego wydarzenia, będziemy mieli okazję wysłuchać aż 10 ciekawych prezentacji dotyczących WordPressa, zarówno dla deweloperów, jak i dla osób korzystających z tej platformy na co dzień. Tematyka prezentacji będzie różnorodna, obejmująca takie zagadnienia, jak design, SEO, marketing czy tworzenie treści.</p>\n\n\n\n<p>Nie zabraknie również czasu na networking, czyli nawiązywanie kontaktów i rozmowy z innymi uczestnikami spotkania. Dzięki temu można poszerzyć swoje horyzonty, dowiedzieć się czegoś nowego oraz wymienić doświadczeniami z innymi pasjonatami WordPressa.</p>\n\n\n\n<p>Wstęp na to wydarzenie jest wolny, jednak wymagana jest wcześniejsza rejestracja, którą można dokonać za pomocą poniższego linku: <a href=\"https://app.evenea.pl/event/wordup18/\">https://app.evenea.pl/event/wordup18/</a></p>\n\n\n\n<p>Nie przegap okazji, aby wziąć udział w tym niezwykłym spotkaniu, zarezerwuj swój czas już teraz i dołącz do społeczności WordPressa w Gdyni. Więcej informacji na temat wydarzenia znajdziesz na naszej stronie na Facebooku oraz na stronie wydarzenia <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>. </p>\n\n\n\n<p>Do zobaczenia 22 kwietnia w Muzeum Miasta Gdyni!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"15586\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3981\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Waclaw Jacek (a11n)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"2025\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"1945\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"1817\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://pl.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"13096068\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 27 May 2024 17:39:13 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:4:\"vary\";s:37:\"Accept-Encoding, accept, content-type\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 15 May 2024 13:21:51 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:7:\"alt-svc\";s:19:\"h3=\":443\"; ma=86400\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20211220193300\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1704, '_transient_timeout_feed_mod_a2a8f6ff8f129a81518b9f747f983e41', '1716874753', 'no'),
(1705, '_transient_feed_mod_a2a8f6ff8f129a81518b9f747f983e41', '1716831553', 'no'),
(1706, '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9', '1716874754', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1707, '_transient_feed_a421d6f32723068ab074a40017a9e1f9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:52:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:8:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress.org Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 May 2024 13:21:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=6.6-alpha-58184\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"image\";a:1:{i:0;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:3:\"url\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://s.w.org/favicon.ico?2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress.org Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"width\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:6:\"height\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"32\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordCamp Gdynia, Polska 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 May 2024 21:15:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=33703\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:431:\"Zapraszamy na WordCamp Gdynia 2024, który odbędzie się w dniach 4-6 października 2024 roku w Gdyni (PL)! To wyjątkowa konferencja, która skupia społeczność WordPressa. Jest to wydarzenie dla każdego, od początkujących użytkowników, po zaawansowanych deweloperów. W tym roku będziemy zgłębiać tematy związane z najnowszymi trendami i technologiami w świecie WordPressa, w tym optymalizacją pracy oraz [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1596:\"\n<p><strong>Zapraszamy na <a href=\"https://gdynia.wordcamp.org/2024/\" data-type=\"link\" data-id=\"https://gdynia.wordcamp.org/2024/\">WordCamp Gdynia 2024</a>, który odbędzie się w dniach 4-6 października 2024 roku w Gdyni (PL)!</strong></p>\n\n\n\n<p>To wyjątkowa konferencja, która skupia społeczność WordPressa. Jest to wydarzenie dla każdego, od początkujących użytkowników, po zaawansowanych deweloperów. W tym roku będziemy zgłębiać tematy związane z najnowszymi trendami i technologiami w świecie WordPressa, w tym optymalizacją pracy oraz samej platformy.</p>\n\n\n\n<p>Na WordCamp Gdynia 2024 czeka na Was mnóstwo inspirujących prezentacji, warsztatów oraz sesji networkingowych. Spotkacie pasjonatów WordPressa, którzy podzielą się swoją wiedzą i doświadczeniem, a także poznacie nowe osoby, z którymi będziecie mogli wymienić się pomysłami i nawiązać cenne kontakty zawodowe.</p>\n\n\n\n<p>Podczas konferencji poruszymy szerokie spektrum tematów, od tworzenia stron internetowych, przez SEO i marketing, po projektowanie i zarządzanie treścią. To doskonała okazja, aby dowiedzieć się więcej o najnowszych trendach i narzędziach, które mogą pomóc w codziennej pracy z WordPressem.</p>\n\n\n\n<p>Nie przegapcie tej okazji! Już teraz dostępne są bilety early birds w cenie 50 zł. Zarezerwujcie swoje miejsce na stronie: <a href=\"https://gdynia.wordcamp.org/2024/\">https://gdynia.wordcamp.org/2024/</a></p>\n\n\n\n<p>Czekamy na Was w Gdyni na WordCamp 2024! Dołączcie do społeczności WordPressa i bądźcie częścią tego wyjątkowego wydarzenia.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"33703\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordUp Trójmiasto #21 – 11 maja 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 03 Mar 2024 18:04:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=22871\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:384:\"Cześć! Właśnie skończyła się 20. edycja WordUp Trójmiasto 🎉, a my już nie możemy się doczekać kolejnej, 21. edycji, która odbędzie się 11 maja 2024 o godz. 12:00 📅. Poprzednia edycja, która miała miejsce 2 marca 2024 w Muzeum Miasta Gdyni 🏛, zgromadziła 120 pasjonatów WordPressa, oferując 11 merytorycznych prezentacji i dużą dawkę wiedzy na [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8872:\"\n<p>Cześć!</p>\n\n\n\n<p>Właśnie skończyła się 20. edycja WordUp Trójmiasto <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f389.png\" alt=\"🎉\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, a my już nie możemy się doczekać kolejnej, 21. edycji, która odbędzie się 11 maja 2024 o godz. 12:00 <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4c5.png\" alt=\"📅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. </p>\n\n\n\n<p>Poprzednia edycja, która miała miejsce 2 marca 2024 w Muzeum Miasta Gdyni <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3db.png\" alt=\"🏛\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, zgromadziła 120 pasjonatów WordPressa, oferując 11 merytorycznych prezentacji i dużą dawkę wiedzy na temat designu, SEO, marketingu i tworzenia treści <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f913.png\" alt=\"🤓\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Była to niepowtarzalna okazja do spotkania z ludźmi z branży, wymiany doświadczeń i nawet znalezienia przyszłego współpracownika czy klienta <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f465.png\" alt=\"👥\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Dlaczego warto już teraz zaplanować swoją obecność na <a href=\"https://wp.trojmiasto.us/#rejestracja\">WordUp Trójmiasto #21</a>? Jeśli poprzednia edycja jest jakimkolwiek wyznacznikiem, możemy się spodziewać jeszcze więcej inspirujących prezentacji <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3a4.png\" alt=\"🎤\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />, spotkań z ekspertami i możliwości do networkingu <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f91d.png\" alt=\"🤝\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. To szansa nie tylko na zdobycie nowej wiedzy, ale również na spotkanie z innymi entuzjastami WordPressa, co jest bezcenne w naszej branży.</p>\n\n\n\n<p>Edycja #21 to kolejna okazja do zanurzenia się w świat WordPressa i poszerzenia swoich horyzontów <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f680.png\" alt=\"🚀\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Niezależnie od tego, czy jesteś deweloperem, projektantem, specjalistą SEO, czy pasjonatem tworzenia treści, znajdziesz coś dla siebie. Networking na steroidach, jak to było podczas poprzedniej edycji, zapewni możliwość nawiązania nowych kontaktów biznesowych i wymiany doświadczeń z innymi uczestnikami <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4bc.png\" alt=\"💼\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Zachęcamy do wcześniejszej rejestracji, aby lepiej zorganizować wydarzenie <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/2705.png\" alt=\"✅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />. Wszystkie szczegóły dotyczące rejestracji i więcej informacji na temat samego wydarzenia znajdziecie na naszej stronie na Facebooku oraz na oficjalnej stronie wydarzenia <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f310.png\" alt=\"🌐\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" />.</p>\n\n\n\n<p>Nie przegap tej wyjątkowej okazji do spotkania z entuzjastami WordPressa, odkrywania nowych inspiracji i zgłębiania wiedzy! Do zobaczenia 11 maja! <img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f388.png\" alt=\"🎈\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>\n\n\n\n<p>Pozdrawiam serdecznie, <br>Mariusz Szatkowski Organizator WordUp Trójmiasto</p>\n\n\n\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped wp-block-gallery-1 is-layout-flex wp-block-gallery-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-scaled.jpg\"><img fetchpriority=\"high\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22876\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1024x768.jpg\" alt=\"\" class=\"wp-image-22876\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.04.40-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-scaled.jpg\"><img decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22877\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1024x768.jpg\" alt=\"\" class=\"wp-image-22877\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.20-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-scaled.jpg\"><img decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22872\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1024x768.jpg\" alt=\"\" class=\"wp-image-22872\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.09.57-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22873\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1024x768.jpg\" alt=\"\" class=\"wp-image-22873\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.22.06-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22875\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1024x768.jpg\" alt=\"\" class=\"wp-image-22875\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.10.38-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" data-id=\"22874\" src=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1024x768.jpg\" alt=\"\" class=\"wp-image-22874\" srcset=\"https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1024x768.jpg 1024w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-300x225.jpg 300w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-768x576.jpg 768w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2024/03/2024-03-02-12.08.50-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n</figure>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"22871\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordUp Trójmiasto #20 – 2 marca 2024\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 08 Dec 2023 08:21:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=18363\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:399:\"🗓️ Data: 2 marca 2024📍 Lokalizacja: Muzeum Miasta Gdyni Zaplanuj już dziś swoją wizytę nad morzem i dołącz do nas na 20. edycji WordUp Trójmiasto! Jeśli WordPress jest Twoją pasją, to to wydarzenie jest stworzone właśnie dla Ciebie!10 merytorycznych prezentacji i duża dawka wiedzy to powody dla którego powinieneś odwiedzić wczesną wiosną Gdynię. Dlaczego warto [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2949:\"\n<p><br><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f5d3.png\" alt=\"🗓\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Data: 2 marca 2024<br><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f4cd.png\" alt=\"📍\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Lokalizacja: Muzeum Miasta Gdyni</p>\n\n\n\n<p>Zaplanuj już dziś swoją wizytę nad morzem i dołącz do nas na 20. edycji WordUp Trójmiasto! Jeśli WordPress jest Twoją pasją, to to wydarzenie jest stworzone właśnie dla Ciebie!<br>10 merytorycznych prezentacji i duża dawka wiedzy to powody dla którego powinieneś odwiedzić wczesną wiosną Gdynię.</p>\n\n\n\n<p><strong>Dlaczego warto przyjechać?</strong></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f465.png\" alt=\"👥\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Spotkanie z Ludźmi z Branży</strong>: To niepowtarzalna okazja, aby spotkać innych entuzjastów WordPressa, wymienić się doświadczeniami, a może nawet znaleźć przyszłego współpracownika czy klienta.</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f3a4.png\" alt=\"🎤\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Wiedza prosto od Ekspertów</strong>: Przygotowaliśmy dla Was szereg inspirujących prezentacji, które obejmują różnorodne tematy – od designu, poprzez SEO, po marketing i tworzenie treści. Każdy, bez względu na swoje doświadczenie, znajdzie coś dla siebie.</p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f91d.png\" alt=\"🤝\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <strong>Networking na Steroidach</strong>: Po prezentacjach zapraszamy do udziału w sesjach networkingowych. To czas, kiedy możecie porozmawiać z innymi uczestnikami, podzielić się swoimi doświadczeniami i dowiedzieć się, co nowego dzieje się w świecie WordPressa.</p>\n\n\n\n<p><strong>Jak się zapisać?</strong></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/2705.png\" alt=\"✅\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Wstęp na wydarzenie jest darmowy, ale dla lepszej organizacji prosimy o wcześniejszą rejestrację. Zapisy można dokonać tutaj: <a href=\"https://wp.trojmiasto.us/#rejestracja\">Rejestracja na WordUp Trójmiasto #20</a></p>\n\n\n\n<p><img src=\"https://s.w.org/images/core/emoji/15.0.3/72x72/1f50d.png\" alt=\"🔍\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> Więcej szczegółów znajdziecie na naszej stronie na Facebooku oraz na stronie wydarzenia: <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>.</p>\n\n\n\n<p>Nie przegap tej wyjątkowej okazji do spotkania z entuzjastami WordPressa, odkrywania nowych inspiracji i zgłębiania wiedzy!</p>\n\n\n\n<p>Do zobaczenia 2 marca 2024 o godz. 12.00 w Muzeum Miasta Gdyni!</p>\n\n\n\n<p>Pozdrawiam,<br>Mariusz Szatkowski<br>Organizator WordUp Trójmiasto</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"18363\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"WordUp Trójmiasto #19 – 2 grudnia 2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2023 06:05:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=17362\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:391:\"Już 2 grudnia 2023 roku w Muzeum Miasta Gdyni odbędzie się 19. edycja WordUp Trójmiasto. Jeśli jesteś fanem WordPressa, to musisz tam być! Dlaczego warto się wybrać? Jak się zapisać? Wstęp na wydarzenie jest darmowy, ale żebyśmy wiedzieli, ilu nas będzie, prosimy o wcześniejszą rejestrację. Możesz to zrobić tutaj: Rejestracja na WordUp Trójmiasto #19 Więcej [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1909:\"\n<p>Już 2 grudnia 2023 roku w Muzeum Miasta Gdyni odbędzie się 19. edycja WordUp Trójmiasto. Jeśli jesteś fanem WordPressa, to musisz tam być!</p>\n\n\n\n<p><strong>Dlaczego warto się wybrać?</strong></p>\n\n\n\n<ol>\n<li><strong>Spotkasz Ludzi z Branży</strong>: To idealne miejsce, żeby poznać innych pasjonatów WordPressa, wymienić się doświadczeniami i nawiązać nowe kontakty. Kto wie, może znajdziesz tu swojego przyszłego współpracownika lub klienta?</li>\n\n\n\n<li><strong>Wiedza prosto od Ekspertów</strong>: Na WordUp Trójmiasto będziemy mieli aż 10 różnorodnych prezentacji. Od designu, przez SEO, aż po marketing i tworzenie treści. Każdy znajdzie coś dla siebie.</li>\n\n\n\n<li><strong>Dla Każdego Coś Miłego</strong>: Niezależnie od tego, czy jesteś początkującym użytkownikiem WordPressa, czy zaawansowanym deweloperem, każdy znajdzie tu coś dla siebie.</li>\n\n\n\n<li><strong>Networking na Steroidach</strong>: Po prezentacjach nie zapomnijmy o networkingu. To czas, kiedy możesz porozmawiać z innymi uczestnikami, wymienić się doświadczeniami i dowiedzieć się, co nowego w świecie WordPressa.</li>\n</ol>\n\n\n\n<p><strong>Jak się zapisać?</strong></p>\n\n\n\n<p>Wstęp na wydarzenie jest darmowy, ale żebyśmy wiedzieli, ilu nas będzie, prosimy o wcześniejszą rejestrację. Możesz to zrobić tutaj: <a href=\"https://evenea.pl/pl/wydarzenie/wordup19\">Rejestracja na WordUp Trójmiasto #19</a></p>\n\n\n\n<p>Więcej szczegółów znajdziesz na naszej stronie na Facebooku oraz na stronie wydarzenia <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>.</p>\n\n\n\n<p>Nie przegap tej okazji i dołącz do nas 2 grudnia 2023 o godz. 12.00 w Muzeum Miasta Gdyni. Czekają na Ciebie ciekawe prezentacje, nowe znajomości i mnóstwo wiedzy do zgarnięcia!</p>\n\n\n\n<p>Do zobaczenia!</p>\n\n\n\n<p>Pozdrawiam, <br>Mariusz Szatkowski <br>Organizator WordUp Trójmiasto</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2023/10/11/wordup-trojmiasto-19-2-grudnia-2023/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"17362\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordCamp Gdynia {NextGen} – 30.09.2023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 22 May 2023 17:17:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=16179\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:423:\"Zapraszamy na najbliższe spotkanie WordCamp Gdynia 2023 NextGen, które odbędzie się w Gdyni 30 września 2023 w Gdyni. WordUp Gdynia 2023 to konferencja konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa. W tym roku będziemy rozmawiać o optymalizacji naszej pracy jak i samego WordPressa To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2922:\"\n<figure class=\"wp-block-image size-full\"><a href=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg\"><img loading=\"lazy\" decoding=\"async\" width=\"960\" height=\"720\" src=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg\" alt=\"\" class=\"wp-image-16180\" srcset=\"https://pl.wordpress.org/files/2023/05/wordup-trojmiasto.jpeg 960w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-300x225.jpeg 300w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-768x576.jpeg 768w, https://pl.wordpress.org/files/2023/05/wordup-trojmiasto-440x330.jpeg 440w\" sizes=\"(max-width: 960px) 100vw, 960px\" /></a></figure>\n\n\n\n<p><br><br>Zapraszamy na najbliższe spotkanie <strong>WordCamp Gdynia 2023 NextGen</strong>, które odbędzie się w Gdyni 30 września 2023 w Gdyni. </p>\n\n\n\n<p>WordUp Gdynia 2023 to konferencja konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa. W tym roku będziemy rozmawiać o optymalizacji naszej pracy jak i samego WordPressa</p>\n\n\n\n<p>To wyjątkowa okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży.</p>\n\n\n\n<p>Podczas WordCamp Gdynia będziemy mieli okazję spotkać się z pasjonatami WordPressa, którzy podzielą się swoimi doświadczeniami i wiedzą na temat tej platformy. Będzie to doskonała okazja do zdobycia nowych kontaktów i poznania nowych wyzwań w życiu zawodowym.</p>\n\n\n\n<p>Podczas konferencji poruszone zostaną różne tematy związane bezpośrednio i pośrednio z WordPressem, w tym tworzenie stron internetowych, SEO, marketing, projektowanie i wiele innych.</p>\n\n\n\n<p>To również doskonała okazja dla uczestników, aby podzielić się swoją wiedzą i doświadczeniami z innymi miłośnikami WordPressa.</p>\n\n\n\n<p>Podczas tego wydarzenia, będziemy mieli okazję wysłuchać aż 12 ciekawych prezentacji dotyczących WordPressa, zarówno dla deweloperów, jak i dla osób korzystających z tej platformy na co dzień. Tematyka prezentacji będzie różnorodna, choć skupiona wokół optymalizacji, obejmująca takie zagadnienia, jak design, SEO, marketing czy tworzenie treści.</p>\n\n\n\n<p>Nie zabraknie również czasu na networking, czyli nawiązywanie kontaktów i rozmowy z innymi uczestnikami spotkania. Dzięki temu można poszerzyć swoje horyzonty, dowiedzieć się czegoś nowego oraz wymienić doświadczeniami z innymi pasjonatami WordPressa.</p>\n\n\n\n<p>Wszystkie informacje na temat tego wydarzenia znajdziecie pod adresem: <a href=\"https://gdynia.wordcamp.org/2023/\">https://gdynia.wordcamp.org/2023/</a></p>\n\n\n\n<p>Nie przegap okazji, aby wziąć udział w tym niezwykłym spotkaniu, zarezerwuj swój czas już teraz i dołącz do społeczności WordPressa w Gdyni!</p>\n\n\n\n<p></p>\n\n\n\n<p></p>\n\n\n\n<p></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://pl.wordpress.org/2023/05/22/30-09-2023-wordup-gdynia-19-andrzeju-nie-denerwuj-sie/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"16179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordUp Trójmiasto #18 już 22 kwietnia 2023 &lt;— ###\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Mar 2023 06:16:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"https://pl.wordpress.org/?p=15586\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:421:\"Zapraszamy na kolejne spotkanie WordUp, które odbędzie się w Gdyni 22 kwietnia 2023 w Muzeum Miasta Gdyni. Będzie to doskonała okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży. WordUp Trójmiasto to już osiemnasta edycja tej konferencji, która skupia społeczność WordPressa. Jest to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Mariusz Szatkowski\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3200:\"\n<figure class=\"wp-block-image size-large\"><a href=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-scaled.jpg\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"768\" src=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-1024x768.jpg\" alt=\"\" class=\"wp-image-15588\" srcset=\"https://pl.wordpress.org/files/2023/03/wordup-gdynia-1024x768.jpg 1024w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-300x225.jpg 300w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-768x576.jpg 768w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-1536x1152.jpg 1536w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-2048x1536.jpg 2048w, https://pl.wordpress.org/files/2023/03/wordup-gdynia-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></figure>\n\n\n\n<p>Zapraszamy na kolejne spotkanie WordUp, które odbędzie się w Gdyni 22 kwietnia 2023 w Muzeum Miasta Gdyni. Będzie to doskonała okazja dla użytkowników i miłośników WordPressa, aby spotkać się, wymienić doświadczeniami i poszerzyć swoją wiedzę na temat najnowszych trendów w branży.</p>\n\n\n\n<p>WordUp Trójmiasto to już osiemnasta edycja tej konferencji, która skupia społeczność WordPressa. Jest to wydarzenie dedykowane zarówno dla osób początkujących, jak i zaawansowanych użytkowników WordPressa.</p>\n\n\n\n<p>Podczas WordUp Trójmiasto będziemy mieli okazję spotkać się z pasjonatami WordPressa, którzy podzielą się swoimi doświadczeniami i wiedzą na temat tej platformy. Będzie to doskonała okazja do zdobycia nowych kontaktów i poznania nowych wyzwań w życiu zawodowym.</p>\n\n\n\n<p>Podczas konferencji poruszone zostaną różne tematy związane bezpośrednio i pośrednio z WordPressem, w tym tworzenie stron internetowych, SEO, marketing, projektowanie i wiele innych.</p>\n\n\n\n<p>To również doskonała okazja dla uczestników, aby podzielić się swoją wiedzą i doświadczeniami z innymi miłośnikami WordPressa.</p>\n\n\n\n<p>Podczas tego wydarzenia, będziemy mieli okazję wysłuchać aż 10 ciekawych prezentacji dotyczących WordPressa, zarówno dla deweloperów, jak i dla osób korzystających z tej platformy na co dzień. Tematyka prezentacji będzie różnorodna, obejmująca takie zagadnienia, jak design, SEO, marketing czy tworzenie treści.</p>\n\n\n\n<p>Nie zabraknie również czasu na networking, czyli nawiązywanie kontaktów i rozmowy z innymi uczestnikami spotkania. Dzięki temu można poszerzyć swoje horyzonty, dowiedzieć się czegoś nowego oraz wymienić doświadczeniami z innymi pasjonatami WordPressa.</p>\n\n\n\n<p>Wstęp na to wydarzenie jest wolny, jednak wymagana jest wcześniejsza rejestracja, którą można dokonać za pomocą poniższego linku: <a href=\"https://app.evenea.pl/event/wordup18/\">https://app.evenea.pl/event/wordup18/</a></p>\n\n\n\n<p>Nie przegap okazji, aby wziąć udział w tym niezwykłym spotkaniu, zarezerwuj swój czas już teraz i dołącz do społeczności WordPressa w Gdyni. Więcej informacji na temat wydarzenia znajdziesz na naszej stronie na Facebooku oraz na stronie wydarzenia <a href=\"https://wp.trojmiasto.us/\">https://WP.TROJMIASTO.US</a>. </p>\n\n\n\n<p>Do zobaczenia 22 kwietnia w Muzeum Miasta Gdyni!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://pl.wordpress.org/2023/03/17/trojmiejski-18-wordup-juz-w-kwietniu-2023/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"15586\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"14\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"3981\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:73:\"\n		\n		\n					\n		\n		\n		\n				\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Waclaw Jacek (a11n)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"2025\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"1945\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:76:\"\n		\n		\n					\n		\n		\n		\n				\n		\n		\n\n					\n										\n					\n					\n			\n		\n		\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"1817\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://pl.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"13096068\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:48:\"WpOrg\\Requests\\Utility\\CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 27 May 2024 17:39:14 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:4:\"vary\";s:37:\"Accept-Encoding, accept, content-type\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 15 May 2024 13:21:51 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:16:\"content-encoding\";s:4:\"gzip\";s:7:\"alt-svc\";s:19:\"h3=\":443\"; ma=86400\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20211220193300\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1708, '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1716874754', 'no'),
(1709, '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1716831554', 'no'),
(1710, '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '1716874754', 'no'),
(1711, '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/\'>WordCamp Gdynia, Polska 2024</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/\'>WordUp Trójmiasto #21 – 11 maja 2024</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2024/05/14/wordcamp-gdynia-2024/\'>WordCamp Gdynia, Polska 2024</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2024/03/03/wordup-trojmiasto-21-11-maja-2024/\'>WordUp Trójmiasto #21 – 11 maja 2024</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2023/12/08/wordup-trojmiasto-20-2-marca-2024/\'>WordUp Trójmiasto #20 – 2 marca 2024</a></li></ul></div>', 'no'),
(1712, 'w3tc_extensions_hooks', '{\"actions\":[],\"filters\":[],\"next_check_date\":1716918004}', 'yes'),
(1713, '_transient_timeout_w3tc.verify_plugins', '1717436404', 'no'),
(1714, '_transient_w3tc.verify_plugins', '1', 'no'),
(1717, 'theme_mods_fortyfour', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_form', '<div class=\"contact-form d-flex flex-wrap mt-4 w-100\">\n\n<label> Twoje imię i nazwisko*\n    [text* k-name class:mr-3 class:mb-3]\n</label>\n\n<label> Twój adres e-mail*\n    [email* k-email class:mb-3]\n</label>\n\n<label> Wiadomość*\n    [textarea* k-textarea minlength:5 maxlength:500]\n</label>\n\n[quiz quiz-72 \"Która liczba jest większa? 5 czy 2?*|5\"]\n\n[submit class:btn class:btn class:btn-full class:btn-rounded \"Wyślij wiadomość\"]\n\n</div>'),
(4, 6, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <wp1@example.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:189:\"Nadawca: <[k-email]>\n\nImię i nazwisko:  [k-name]\n\nTreść wiadomości:\n[k-textarea]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:19:\"Reply-To: [k-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <wp1@example.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:268:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość e-mail jest potwierdzeniem wysłania formularza kontaktowego na naszej stronie internetowej ([_site_title] [_site_url]), w którym użyto Twojego adresu e-mail. Jeśli to nie byłeś Ty, zignoruj tę wiadomość.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 6, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:49:\"Twoja wiadomość została wysłana. Dziękujemy!\";s:12:\"mail_sent_ng\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:16:\"validation_error\";s:99:\"Przynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\";s:4:\"spam\";s:80:\"Wystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\";s:12:\"accept_terms\";s:72:\"Musisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\";s:16:\"invalid_required\";s:27:\"Proszę wypełnić to pole.\";s:16:\"invalid_too_long\";s:38:\"W polu wprowadzono zbyt dużo znaków.\";s:17:\"invalid_too_short\";s:38:\"W polu wprowadzono zbyt mało znaków.\";s:13:\"upload_failed\";s:51:\"Podczas wgrywania pliku wystąpił nieznany błąd.\";s:24:\"upload_file_type_invalid\";s:39:\"Nie możesz wgrywać plików tego typu.\";s:21:\"upload_file_too_large\";s:30:\"Przesłany plik jest za duży.\";s:23:\"upload_failed_php_error\";s:42:\"Wystąpił błąd podczas wgrywania pliku.\";s:12:\"invalid_date\";s:38:\"Wprowadź datę w formacie RRRR-MM-DD.\";s:14:\"date_too_early\";s:42:\"Data wybrana w tym polu jest zbyt wczesna.\";s:13:\"date_too_late\";s:42:\"Data wybrana w tym polu jest zbyt późna.\";s:14:\"invalid_number\";s:18:\"Wprowadź liczbę.\";s:16:\"number_too_small\";s:16:\"Za mała liczba.\";s:16:\"number_too_large\";s:16:\"Za duża liczba.\";s:23:\"quiz_answer_not_correct\";s:40:\"Odpowiedź w quizie jest nieprawidłowa.\";s:13:\"invalid_email\";s:29:\"Proszę wpisać adres e-mail.\";s:11:\"invalid_url\";s:30:\"Proszę wprowadzić adres URL.\";s:11:\"invalid_tel\";s:30:\"Proszę podać numer telefonu.\";}'),
(7, 6, '_additional_settings', ''),
(8, 6, '_locale', 'pl_PL'),
(9, 6, '_hash', '114467caf9ec13175c1632f871a84cf550a4ebbe'),
(10, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1716315471:1'),
(12, 14, '_edit_lock', '1715882592:1'),
(13, 15, '_wp_attached_file', '2024/05/main-banner.jpg'),
(14, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:869;s:4:\"file\";s:23:\"2024/05/main-banner.jpg\";s:8:\"filesize\";i:1141635;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 15, '_wp_attachment_image_alt', 'main-banner'),
(16, 14, '_edit_last', '1'),
(17, 14, 'slider_content_title', 'Modern Designs'),
(18, 14, '_slider_content_title', 'field_6645136ec3804'),
(19, 14, 'slider_content_button_group_title', 'View Project'),
(20, 14, '_slider_content_button_group_title', 'field_664513bac3806'),
(21, 14, 'slider_content_button_group_url', ''),
(22, 14, '_slider_content_button_group_url', 'field_664513c4c3807'),
(23, 14, 'slider_content_button_group', ''),
(24, 14, '_slider_content_button_group', 'field_66451384c3805'),
(25, 14, 'slider_content_file', '15'),
(26, 14, '_slider_content_file', 'field_66451486c3808'),
(27, 14, 'slider_content', ''),
(28, 14, '_slider_content', 'field_6645132dc3803'),
(42, 22, '_edit_lock', '1715882836:1'),
(43, 23, '_wp_attached_file', '2024/05/main-banner1.jpg'),
(44, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:869;s:4:\"file\";s:24:\"2024/05/main-banner1.jpg\";s:8:\"filesize\";i:189679;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 23, '_wp_attachment_image_alt', 'main-banner1'),
(46, 22, '_edit_last', '1'),
(47, 22, 'slider_content_title', 'Clean & Minimal'),
(48, 22, '_slider_content_title', 'field_6645136ec3804'),
(49, 22, 'slider_content_button_group_title', 'View Project'),
(50, 22, '_slider_content_button_group_title', 'field_664513bac3806'),
(51, 22, 'slider_content_button_group_url', ''),
(52, 22, '_slider_content_button_group_url', 'field_664513c4c3807'),
(53, 22, 'slider_content_button_group', ''),
(54, 22, '_slider_content_button_group', 'field_66451384c3805'),
(55, 22, 'slider_content_file', '23'),
(56, 22, '_slider_content_file', 'field_66451486c3808'),
(57, 22, 'slider_content', ''),
(58, 22, '_slider_content', 'field_6645132dc3803'),
(61, 25, '_edit_lock', '1715969576:1'),
(62, 25, '_edit_last', '1'),
(63, 25, 'slider_content_title', 'Nowoczesny Design'),
(64, 25, '_slider_content_title', 'field_6645136ec3804'),
(65, 25, 'slider_content_button_group_title', 'Zobacz projekt'),
(66, 25, '_slider_content_button_group_title', 'field_664513bac3806'),
(67, 25, 'slider_content_button_group_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(68, 25, '_slider_content_button_group_url', 'field_664513c4c3807'),
(69, 25, 'slider_content_button_group', ''),
(70, 25, '_slider_content_button_group', 'field_66451384c3805'),
(71, 25, 'slider_content_file', '15'),
(72, 25, '_slider_content_file', 'field_66451486c3808'),
(73, 25, 'slider_content', ''),
(74, 25, '_slider_content', 'field_6645132dc3803'),
(75, 26, '_edit_lock', '1716493873:1'),
(76, 26, '_edit_last', '1'),
(77, 26, 'slider_content_title', 'Czysty & Minimalistyczny'),
(78, 26, '_slider_content_title', 'field_6645136ec3804'),
(79, 26, 'slider_content_button_group_title', 'Zobacz projekt'),
(80, 26, '_slider_content_button_group_title', 'field_664513bac3806'),
(81, 26, 'slider_content_button_group_url', ''),
(82, 26, '_slider_content_button_group_url', 'field_664513c4c3807'),
(83, 26, 'slider_content_button_group', ''),
(84, 26, '_slider_content_button_group', 'field_66451384c3805'),
(85, 26, 'slider_content_file', '23'),
(86, 26, '_slider_content_file', 'field_66451486c3808'),
(87, 26, 'slider_content', ''),
(88, 26, '_slider_content', 'field_6645132dc3803'),
(90, 28, '_edit_lock', '1715969679:1'),
(91, 28, '_edit_last', '1'),
(92, 28, 'slider_content_title', 'Modern Designs'),
(93, 28, '_slider_content_title', 'field_6645136ec3804'),
(94, 28, 'slider_content_button_group_title', 'View Project'),
(95, 28, '_slider_content_button_group_title', 'field_664513bac3806'),
(96, 28, 'slider_content_button_group_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(97, 28, '_slider_content_button_group_url', 'field_664513c4c3807'),
(98, 28, 'slider_content_button_group', ''),
(99, 28, '_slider_content_button_group', 'field_66451384c3805'),
(100, 28, 'slider_content_file', '15'),
(101, 28, '_slider_content_file', 'field_66451486c3808'),
(102, 28, 'slider_content', ''),
(103, 28, '_slider_content', 'field_6645132dc3803'),
(104, 29, '_edit_lock', '1715883542:1'),
(105, 29, '_edit_last', '1'),
(106, 29, 'slider_content_title', 'Clean & Minimal'),
(107, 29, '_slider_content_title', 'field_6645136ec3804'),
(108, 29, 'slider_content_button_group_title', 'View Project'),
(109, 29, '_slider_content_button_group_title', 'field_664513bac3806'),
(110, 29, 'slider_content_button_group_url', ''),
(111, 29, '_slider_content_button_group_url', 'field_664513c4c3807'),
(112, 29, 'slider_content_button_group', ''),
(113, 29, '_slider_content_button_group', 'field_66451384c3805'),
(114, 29, 'slider_content_file', '23'),
(115, 29, '_slider_content_file', 'field_66451486c3808'),
(116, 29, 'slider_content', ''),
(117, 29, '_slider_content', 'field_6645132dc3803'),
(121, 31, '_edit_lock', '1716575626:1'),
(122, 31, '_edit_last', '1'),
(124, 34, '_edit_lock', '1716575610:1'),
(125, 34, '_edit_last', '1'),
(126, 36, '_edit_lock', '1716494355:1'),
(127, 36, '_edit_last', '1'),
(128, 38, '_edit_lock', '1716399860:1'),
(129, 38, '_edit_last', '1'),
(130, 40, '_menu_item_type', 'post_type'),
(131, 40, '_menu_item_menu_item_parent', '0'),
(132, 40, '_menu_item_object_id', '36'),
(133, 40, '_menu_item_object', 'page'),
(134, 40, '_menu_item_target', ''),
(135, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 40, '_menu_item_xfn', ''),
(137, 40, '_menu_item_url', ''),
(139, 41, '_menu_item_type', 'post_type'),
(140, 41, '_menu_item_menu_item_parent', '0'),
(141, 41, '_menu_item_object_id', '34'),
(142, 41, '_menu_item_object', 'page'),
(143, 41, '_menu_item_target', ''),
(144, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 41, '_menu_item_xfn', ''),
(146, 41, '_menu_item_url', ''),
(147, 41, '_menu_item_orphaned', '1715885071'),
(148, 42, '_menu_item_type', 'post_type'),
(149, 42, '_menu_item_menu_item_parent', '0'),
(150, 42, '_menu_item_object_id', '31'),
(151, 42, '_menu_item_object', 'page'),
(152, 42, '_menu_item_target', ''),
(153, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 42, '_menu_item_xfn', ''),
(155, 42, '_menu_item_url', ''),
(157, 43, '_menu_item_type', 'post_type'),
(158, 43, '_menu_item_menu_item_parent', '0'),
(159, 43, '_menu_item_object_id', '38'),
(160, 43, '_menu_item_object', 'page'),
(161, 43, '_menu_item_target', ''),
(162, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 43, '_menu_item_xfn', ''),
(164, 43, '_menu_item_url', ''),
(166, 44, '_menu_item_type', 'post_type'),
(167, 44, '_menu_item_menu_item_parent', '0'),
(168, 44, '_menu_item_object_id', '34'),
(169, 44, '_menu_item_object', 'page'),
(170, 44, '_menu_item_target', ''),
(171, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 44, '_menu_item_xfn', ''),
(173, 44, '_menu_item_url', ''),
(175, 45, '_menu_item_type', 'post_type'),
(176, 45, '_menu_item_menu_item_parent', '0'),
(177, 45, '_menu_item_object_id', '31'),
(178, 45, '_menu_item_object', 'page'),
(179, 45, '_menu_item_target', ''),
(180, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 45, '_menu_item_xfn', ''),
(182, 45, '_menu_item_url', ''),
(184, 46, '_menu_item_type', 'post_type'),
(185, 46, '_menu_item_menu_item_parent', '0'),
(186, 46, '_menu_item_object_id', '36'),
(187, 46, '_menu_item_object', 'page'),
(188, 46, '_menu_item_target', ''),
(189, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 46, '_menu_item_xfn', ''),
(191, 46, '_menu_item_url', ''),
(193, 47, '_menu_item_type', 'post_type'),
(194, 47, '_menu_item_menu_item_parent', '0'),
(195, 47, '_menu_item_object_id', '38'),
(196, 47, '_menu_item_object', 'page'),
(197, 47, '_menu_item_target', ''),
(198, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 47, '_menu_item_xfn', ''),
(200, 47, '_menu_item_url', ''),
(202, 48, '_menu_item_type', 'post_type'),
(203, 48, '_menu_item_menu_item_parent', '0'),
(204, 48, '_menu_item_object_id', '34'),
(205, 48, '_menu_item_object', 'page'),
(206, 48, '_menu_item_target', ''),
(207, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 48, '_menu_item_xfn', ''),
(209, 48, '_menu_item_url', ''),
(213, 50, '_wp_attached_file', '2024/05/logo.png'),
(214, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:54;s:6:\"height\";i:47;s:4:\"file\";s:16:\"2024/05/logo.png\";s:8:\"filesize\";i:1131;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 50, '_wp_attachment_image_alt', 'logo'),
(216, 51, '_wp_trash_meta_status', 'publish'),
(217, 51, '_wp_trash_meta_time', '1715969404'),
(218, 1, '_edit_lock', '1716495119:1'),
(219, 53, '_wp_attached_file', '2024/05/tab3.jpg'),
(220, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:289;s:4:\"file\";s:16:\"2024/05/tab3.jpg\";s:8:\"filesize\";i:139934;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 53, '_wp_attachment_image_alt', 'tab3'),
(224, 1, '_thumbnail_id', '53'),
(225, 1, '_edit_last', '1'),
(235, 31, 'footnotes', ''),
(237, 64, 'footnotes', ''),
(239, 31, 'blog_small_title', 'Czytaj naszego bloga'),
(240, 31, '_blog_small_title', 'field_664cd9318b301'),
(241, 31, 'blog_main_title', 'Najnowszy blog'),
(242, 31, '_blog_main_title', 'field_664cd9428b302'),
(243, 31, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(244, 31, '_blog_button_read_more_text', 'field_664cd9638b304'),
(245, 31, 'blog_button_read_more_url', ''),
(246, 31, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(247, 31, 'blog_button_read_more', ''),
(248, 31, '_blog_button_read_more', 'field_664cd9508b303'),
(249, 31, 'blog', ''),
(250, 31, '_blog', 'field_664ce2d7e6369'),
(251, 64, 'blog_small_title', 'Czytaj naszego bloga'),
(252, 64, '_blog_small_title', 'field_664cd9318b301'),
(253, 64, 'blog_main_title', 'Najnowszy blog'),
(254, 64, '_blog_main_title', 'field_664cd9428b302'),
(255, 64, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(256, 64, '_blog_button_read_more_text', 'field_664cd9638b304'),
(257, 64, 'blog_button_read_more_url', ''),
(258, 64, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(259, 64, 'blog_button_read_more', ''),
(260, 64, '_blog_button_read_more', 'field_664cd9508b303'),
(261, 64, 'blog', ''),
(262, 64, '_blog', 'field_664cd8fa8b300'),
(267, 66, 'footnotes', ''),
(269, 31, 'blog_home_small_title', 'Czytaj naszego bloga'),
(270, 31, '_blog_home_small_title', 'field_664cd9318b301'),
(271, 31, 'blog_home_main_title', 'Najnowsze wpisy'),
(272, 31, '_blog_home_main_title', 'field_664cd9428b302'),
(273, 31, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(274, 31, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(275, 31, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(276, 31, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(277, 31, 'blog_home_button_read_more', ''),
(278, 31, '_blog_home_button_read_more', 'field_664cd9508b303'),
(279, 31, 'blog_home', ''),
(280, 31, '_blog_home', 'field_664cd8fa8b300'),
(281, 66, 'blog_small_title', 'Czytaj naszego bloga'),
(282, 66, '_blog_small_title', 'field_664cd9318b301'),
(283, 66, 'blog_main_title', 'Najnowszy blog'),
(284, 66, '_blog_main_title', 'field_664cd9428b302'),
(285, 66, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(286, 66, '_blog_button_read_more_text', 'field_664cd9638b304'),
(287, 66, 'blog_button_read_more_url', ''),
(288, 66, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(289, 66, 'blog_button_read_more', ''),
(290, 66, '_blog_button_read_more', 'field_664cd9508b303'),
(291, 66, 'blog', ''),
(292, 66, '_blog', 'field_664cd8fa8b300'),
(293, 66, 'blog_home_small_title', 'Czytaj naszego bloga'),
(294, 66, '_blog_home_small_title', 'field_664cd9318b301'),
(295, 66, 'blog_home_main_title', 'Najnowsze wpisy'),
(296, 66, '_blog_home_main_title', 'field_664cd9428b302'),
(297, 66, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(298, 66, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(299, 66, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(300, 66, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(301, 66, 'blog_home_button_read_more', ''),
(302, 66, '_blog_home_button_read_more', 'field_664cd9508b303'),
(303, 66, 'blog_home', ''),
(304, 66, '_blog_home', 'field_664cd8fa8b300'),
(306, 34, 'footnotes', ''),
(308, 67, 'footnotes', ''),
(310, 34, 'blog_home_small_title', 'READ OUR BLOG'),
(311, 34, '_blog_home_small_title', 'field_664cd9318b301'),
(312, 34, 'blog_home_main_title', 'Latest Blog'),
(313, 34, '_blog_home_main_title', 'field_664cd9428b302'),
(314, 34, 'blog_home_button_read_more_text', 'View all blog'),
(315, 34, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(316, 34, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(317, 34, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(318, 34, 'blog_home_button_read_more', ''),
(319, 34, '_blog_home_button_read_more', 'field_664cd9508b303'),
(320, 34, 'blog_home', ''),
(321, 34, '_blog_home', 'field_664cd8fa8b300'),
(322, 67, 'blog_home_small_title', 'READ OUR BLOG'),
(323, 67, '_blog_home_small_title', 'field_664cd9318b301'),
(324, 67, 'blog_home_main_title', 'Latest Blog'),
(325, 67, '_blog_home_main_title', 'field_664cd9428b302'),
(326, 67, 'blog_home_button_read_more_text', 'View all blog'),
(327, 67, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(328, 67, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(329, 67, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(330, 67, 'blog_home_button_read_more', ''),
(331, 67, '_blog_home_button_read_more', 'field_664cd9508b303'),
(332, 67, 'blog_home', ''),
(333, 67, '_blog_home', 'field_664cd8fa8b300'),
(340, 68, '_edit_last', '1'),
(341, 68, '_edit_lock', '1716315256:1'),
(344, 75, 'footnotes', ''),
(346, 31, 'home_content_small_title', 'asd'),
(347, 31, '_home_content_small_title', 'field_664cdda5a0489'),
(348, 31, 'home_content_main_title', 'asd'),
(349, 31, '_home_content_main_title', 'field_664cddaea048a'),
(350, 31, 'home_content_button_read_more_text', 'asd'),
(351, 31, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(352, 31, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(353, 31, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(354, 31, 'home_content_button_read_more', ''),
(355, 31, '_home_content_button_read_more', 'field_664cddb5a048b'),
(356, 31, 'home_content', ''),
(357, 31, '_home_content', 'field_664ce5e59fd73'),
(358, 75, 'blog_small_title', 'Czytaj naszego bloga'),
(359, 75, '_blog_small_title', 'field_664cd9318b301'),
(360, 75, 'blog_main_title', 'Najnowszy blog'),
(361, 75, '_blog_main_title', 'field_664cd9428b302'),
(362, 75, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(363, 75, '_blog_button_read_more_text', 'field_664cd9638b304'),
(364, 75, 'blog_button_read_more_url', ''),
(365, 75, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(366, 75, 'blog_button_read_more', ''),
(367, 75, '_blog_button_read_more', 'field_664cd9508b303'),
(368, 75, 'blog', ''),
(369, 75, '_blog', 'field_664cd8fa8b300'),
(370, 75, 'blog_home_small_title', 'Czytaj naszego bloga'),
(371, 75, '_blog_home_small_title', 'field_664cd9318b301'),
(372, 75, 'blog_home_main_title', 'Najnowsze wpisy'),
(373, 75, '_blog_home_main_title', 'field_664cd9428b302'),
(374, 75, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(375, 75, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(376, 75, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(377, 75, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(378, 75, 'blog_home_button_read_more', ''),
(379, 75, '_blog_home_button_read_more', 'field_664cd9508b303'),
(380, 75, 'blog_home', ''),
(381, 75, '_blog_home', 'field_664cd8fa8b300'),
(382, 75, 'home_content_small_title', 'asd'),
(383, 75, '_home_content_small_title', 'field_664cdda5a0489'),
(384, 75, 'home_content_main_title', 'asd'),
(385, 75, '_home_content_main_title', 'field_664cddaea048a'),
(386, 75, 'home_content_button_read_more_text', 'asd'),
(387, 75, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(388, 75, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(389, 75, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(390, 75, 'home_content_button_read_more', ''),
(391, 75, '_home_content_button_read_more', 'field_664cddb5a048b'),
(392, 75, 'home_content', ''),
(393, 75, '_home_content', 'field_664cdd82a0488'),
(396, 76, 'footnotes', ''),
(398, 34, 'home_content_small_title', 'qweqwe'),
(399, 34, '_home_content_small_title', 'field_664cdda5a0489'),
(400, 34, 'home_content_main_title', 'qweqwe'),
(401, 34, '_home_content_main_title', 'field_664cddaea048a'),
(402, 34, 'home_content_button_read_more_text', 'qweqewqw'),
(403, 34, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(404, 34, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(405, 34, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(406, 34, 'home_content_button_read_more', ''),
(407, 34, '_home_content_button_read_more', 'field_664cddb5a048b'),
(408, 34, 'home_content', ''),
(409, 34, '_home_content', 'field_664cdd82a0488'),
(410, 76, 'blog_home_small_title', 'READ OUR BLOG'),
(411, 76, '_blog_home_small_title', 'field_664cd9318b301'),
(412, 76, 'blog_home_main_title', 'Latest Blog'),
(413, 76, '_blog_home_main_title', 'field_664cd9428b302'),
(414, 76, 'blog_home_button_read_more_text', 'View all blog'),
(415, 76, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(416, 76, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(417, 76, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(418, 76, 'blog_home_button_read_more', ''),
(419, 76, '_blog_home_button_read_more', 'field_664cd9508b303'),
(420, 76, 'blog_home', ''),
(421, 76, '_blog_home', 'field_664cd8fa8b300'),
(422, 76, 'home_content_small_title', 'qweqwe'),
(423, 76, '_home_content_small_title', 'field_664cdda5a0489'),
(424, 76, 'home_content_main_title', 'qweqwe'),
(425, 76, '_home_content_main_title', 'field_664cddaea048a'),
(426, 76, 'home_content_button_read_more_text', 'qweqewqw'),
(427, 76, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(428, 76, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(429, 76, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(430, 76, 'home_content_button_read_more', ''),
(431, 76, '_home_content_button_read_more', 'field_664cddb5a048b'),
(432, 76, 'home_content', ''),
(433, 76, '_home_content', 'field_664cdd82a0488'),
(436, 79, 'footnotes', ''),
(438, 31, 'blog_title_small', 'dupa'),
(439, 31, '_blog_title_small', 'field_664ce2efe636a'),
(440, 79, 'blog_small_title', 'Czytaj naszego bloga'),
(441, 79, '_blog_small_title', 'field_664cd9318b301'),
(442, 79, 'blog_main_title', 'Najnowszy blog'),
(443, 79, '_blog_main_title', 'field_664cd9428b302'),
(444, 79, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(445, 79, '_blog_button_read_more_text', 'field_664cd9638b304'),
(446, 79, 'blog_button_read_more_url', ''),
(447, 79, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(448, 79, 'blog_button_read_more', ''),
(449, 79, '_blog_button_read_more', 'field_664cd9508b303'),
(450, 79, 'blog', ''),
(451, 79, '_blog', 'field_664ce2d7e6369'),
(452, 79, 'blog_home_small_title', 'Czytaj naszego bloga'),
(453, 79, '_blog_home_small_title', 'field_664cd9318b301'),
(454, 79, 'blog_home_main_title', 'Najnowsze wpisy'),
(455, 79, '_blog_home_main_title', 'field_664cd9428b302'),
(456, 79, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(457, 79, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(458, 79, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(459, 79, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(460, 79, 'blog_home_button_read_more', ''),
(461, 79, '_blog_home_button_read_more', 'field_664cd9508b303'),
(462, 79, 'blog_home', ''),
(463, 79, '_blog_home', 'field_664cd8fa8b300'),
(464, 79, 'home_content_small_title', 'asd'),
(465, 79, '_home_content_small_title', 'field_664cdda5a0489'),
(466, 79, 'home_content_main_title', 'asd'),
(467, 79, '_home_content_main_title', 'field_664cddaea048a'),
(468, 79, 'home_content_button_read_more_text', 'asd'),
(469, 79, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(470, 79, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(471, 79, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(472, 79, 'home_content_button_read_more', ''),
(473, 79, '_home_content_button_read_more', 'field_664cddb5a048b'),
(474, 79, 'home_content', ''),
(475, 79, '_home_content', 'field_664cdd82a0488'),
(476, 79, 'blog_title_small', 'dupa'),
(477, 79, '_blog_title_small', 'field_664ce2efe636a'),
(478, 68, '_wp_trash_meta_status', 'publish'),
(479, 68, '_wp_trash_meta_time', '1716315618'),
(480, 68, '_wp_desired_post_slug', 'group_664cdd81f0f11'),
(481, 77, '_wp_trash_meta_status', 'publish'),
(482, 77, '_wp_trash_meta_time', '1716315618'),
(483, 77, '_wp_desired_post_slug', 'field_664ce2d7e6369'),
(484, 80, '_edit_lock', '1716318400:1'),
(485, 80, '_edit_last', '1'),
(488, 87, 'footnotes', ''),
(490, 31, 'home_content_title', 'asdasdasasdasdasdasd'),
(491, 31, '_home_content_title', 'field_664ce5e5a4343'),
(492, 87, 'blog_small_title', 'Czytaj naszego bloga'),
(493, 87, '_blog_small_title', 'field_664cd9318b301'),
(494, 87, 'blog_main_title', 'Najnowszy blog'),
(495, 87, '_blog_main_title', 'field_664cd9428b302'),
(496, 87, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(497, 87, '_blog_button_read_more_text', 'field_664cd9638b304'),
(498, 87, 'blog_button_read_more_url', ''),
(499, 87, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(500, 87, 'blog_button_read_more', ''),
(501, 87, '_blog_button_read_more', 'field_664cd9508b303'),
(502, 87, 'blog', ''),
(503, 87, '_blog', 'field_664ce2d7e6369'),
(504, 87, 'blog_home_small_title', 'Czytaj naszego bloga'),
(505, 87, '_blog_home_small_title', 'field_664cd9318b301'),
(506, 87, 'blog_home_main_title', 'Najnowsze wpisy'),
(507, 87, '_blog_home_main_title', 'field_664cd9428b302'),
(508, 87, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(509, 87, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(510, 87, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(511, 87, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(512, 87, 'blog_home_button_read_more', ''),
(513, 87, '_blog_home_button_read_more', 'field_664cd9508b303'),
(514, 87, 'blog_home', ''),
(515, 87, '_blog_home', 'field_664cd8fa8b300'),
(516, 87, 'home_content_small_title', 'asd'),
(517, 87, '_home_content_small_title', 'field_664cdda5a0489'),
(518, 87, 'home_content_main_title', 'asd'),
(519, 87, '_home_content_main_title', 'field_664cddaea048a'),
(520, 87, 'home_content_button_read_more_text', 'asd'),
(521, 87, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(522, 87, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(523, 87, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(524, 87, 'home_content_button_read_more', ''),
(525, 87, '_home_content_button_read_more', 'field_664cddb5a048b'),
(526, 87, 'home_content', ''),
(527, 87, '_home_content', 'field_664ce5e59fd73'),
(528, 87, 'blog_title_small', 'dupa'),
(529, 87, '_blog_title_small', 'field_664ce2efe636a'),
(530, 87, 'home_content_title', 'asdasdasasdasdasdasd'),
(531, 87, '_home_content_title', 'field_664ce5e5a4343'),
(534, 89, 'footnotes', ''),
(536, 31, 'dupa', 'asdasdasdasd'),
(537, 31, '_dupa', 'field_664ce66271357'),
(538, 89, 'blog_small_title', 'Czytaj naszego bloga'),
(539, 89, '_blog_small_title', 'field_664cd9318b301'),
(540, 89, 'blog_main_title', 'Najnowszy blog'),
(541, 89, '_blog_main_title', 'field_664cd9428b302'),
(542, 89, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(543, 89, '_blog_button_read_more_text', 'field_664cd9638b304'),
(544, 89, 'blog_button_read_more_url', ''),
(545, 89, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(546, 89, 'blog_button_read_more', ''),
(547, 89, '_blog_button_read_more', 'field_664cd9508b303'),
(548, 89, 'blog', ''),
(549, 89, '_blog', 'field_664ce2d7e6369'),
(550, 89, 'blog_home_small_title', 'Czytaj naszego bloga'),
(551, 89, '_blog_home_small_title', 'field_664cd9318b301'),
(552, 89, 'blog_home_main_title', 'Najnowsze wpisy'),
(553, 89, '_blog_home_main_title', 'field_664cd9428b302'),
(554, 89, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(555, 89, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(556, 89, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(557, 89, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(558, 89, 'blog_home_button_read_more', ''),
(559, 89, '_blog_home_button_read_more', 'field_664cd9508b303'),
(560, 89, 'blog_home', ''),
(561, 89, '_blog_home', 'field_664cd8fa8b300'),
(562, 89, 'home_content_small_title', 'asd'),
(563, 89, '_home_content_small_title', 'field_664cdda5a0489'),
(564, 89, 'home_content_main_title', 'asd'),
(565, 89, '_home_content_main_title', 'field_664cddaea048a'),
(566, 89, 'home_content_button_read_more_text', 'asd'),
(567, 89, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(568, 89, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(569, 89, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(570, 89, 'home_content_button_read_more', ''),
(571, 89, '_home_content_button_read_more', 'field_664cddb5a048b'),
(572, 89, 'home_content', ''),
(573, 89, '_home_content', 'field_664ce5e59fd73'),
(574, 89, 'blog_title_small', 'dupa'),
(575, 89, '_blog_title_small', 'field_664ce2efe636a'),
(576, 89, 'home_content_title', 'asdasdasasdasdasdasd'),
(577, 89, '_home_content_title', 'field_664ce5e5a4343'),
(578, 89, 'dupa', 'asdasdasdasd'),
(579, 89, '_dupa', 'field_664ce66271357'),
(580, 31, 'blog_content_title_small', 'Czytaj naszego bloga'),
(581, 31, '_blog_content_title_small', 'field_664ce5e5a4343'),
(582, 31, 'blog_content', ''),
(583, 31, '_blog_content', 'field_664ce5e59fd73'),
(584, 89, 'blog_content_title_small', 'Test'),
(585, 89, '_blog_content_title_small', 'field_664ce5e5a4343'),
(586, 89, 'blog_content', ''),
(587, 89, '_blog_content', 'field_664ce5e59fd73'),
(592, 97, 'footnotes', ''),
(594, 31, 'blog_content_title_big', 'Ostatnio na blogu'),
(595, 31, '_blog_content_title_big', 'field_664cebab55ce1'),
(596, 31, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(597, 31, '_blog_content_title_none', 'field_664cebc255ce2'),
(598, 31, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(599, 31, '_blog_content_button_title', 'field_664cebd955ce4'),
(600, 31, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:4:\"Blog\";s:3:\"url\";s:26:\"http://localhost/wp1/blog/\";s:6:\"target\";s:0:\"\";}'),
(601, 31, '_blog_content_button_url', 'field_664cebe155ce5'),
(602, 31, 'blog_content_button', ''),
(603, 31, '_blog_content_button', 'field_664cebcd55ce3'),
(604, 97, 'blog_small_title', 'Czytaj naszego bloga'),
(605, 97, '_blog_small_title', 'field_664cd9318b301'),
(606, 97, 'blog_main_title', 'Najnowszy blog'),
(607, 97, '_blog_main_title', 'field_664cd9428b302'),
(608, 97, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(609, 97, '_blog_button_read_more_text', 'field_664cd9638b304'),
(610, 97, 'blog_button_read_more_url', ''),
(611, 97, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(612, 97, 'blog_button_read_more', ''),
(613, 97, '_blog_button_read_more', 'field_664cd9508b303'),
(614, 97, 'blog', ''),
(615, 97, '_blog', 'field_664ce2d7e6369'),
(616, 97, 'blog_home_small_title', 'Czytaj naszego bloga'),
(617, 97, '_blog_home_small_title', 'field_664cd9318b301'),
(618, 97, 'blog_home_main_title', 'Najnowsze wpisy'),
(619, 97, '_blog_home_main_title', 'field_664cd9428b302'),
(620, 97, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(621, 97, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(622, 97, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(623, 97, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(624, 97, 'blog_home_button_read_more', ''),
(625, 97, '_blog_home_button_read_more', 'field_664cd9508b303'),
(626, 97, 'blog_home', ''),
(627, 97, '_blog_home', 'field_664cd8fa8b300'),
(628, 97, 'home_content_small_title', 'asd'),
(629, 97, '_home_content_small_title', 'field_664cdda5a0489'),
(630, 97, 'home_content_main_title', 'asd'),
(631, 97, '_home_content_main_title', 'field_664cddaea048a'),
(632, 97, 'home_content_button_read_more_text', 'asd'),
(633, 97, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(634, 97, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(635, 97, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(636, 97, 'home_content_button_read_more', ''),
(637, 97, '_home_content_button_read_more', 'field_664cddb5a048b'),
(638, 97, 'home_content', ''),
(639, 97, '_home_content', 'field_664ce5e59fd73'),
(640, 97, 'blog_title_small', 'dupa'),
(641, 97, '_blog_title_small', 'field_664ce2efe636a'),
(642, 97, 'home_content_title', 'asdasdasasdasdasdasd'),
(643, 97, '_home_content_title', 'field_664ce5e5a4343'),
(644, 97, 'dupa', 'asdasdasdasd'),
(645, 97, '_dupa', 'field_664ce66271357'),
(646, 97, 'blog_content_title_small', 'Czytaj naszego bloga'),
(647, 97, '_blog_content_title_small', 'field_664ce5e5a4343'),
(648, 97, 'blog_content', ''),
(649, 97, '_blog_content', 'field_664ce5e59fd73'),
(650, 97, 'blog_content_title_big', 'Ostatnio na blogu'),
(651, 97, '_blog_content_title_big', 'field_664cebab55ce1'),
(652, 97, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(653, 97, '_blog_content_title_none', 'field_664cebc255ce2'),
(654, 97, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(655, 97, '_blog_content_button_title', 'field_664cebd955ce4'),
(656, 97, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(657, 97, '_blog_content_button_url', 'field_664cebe155ce5'),
(658, 97, 'blog_content_button', ''),
(659, 97, '_blog_content_button', 'field_664cebcd55ce3'),
(664, 99, 'footnotes', ''),
(666, 34, 'blog_content_title_small', 'READ OUR BLOG'),
(667, 34, '_blog_content_title_small', 'field_664ce5e5a4343'),
(668, 34, 'blog_content_title_big', 'Latest Blog'),
(669, 34, '_blog_content_title_big', 'field_664cebab55ce1'),
(670, 34, 'blog_content_title_none', 'No entries to display.'),
(671, 34, '_blog_content_title_none', 'field_664cebc255ce2'),
(672, 34, 'blog_content_button_title', 'View all blog'),
(673, 34, '_blog_content_button_title', 'field_664cebd955ce4'),
(674, 34, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:4:\"News\";s:3:\"url\";s:29:\"http://localhost/wp1/en/news/\";s:6:\"target\";s:0:\"\";}'),
(675, 34, '_blog_content_button_url', 'field_664cebe155ce5'),
(676, 34, 'blog_content_button', ''),
(677, 34, '_blog_content_button', 'field_664cebcd55ce3'),
(678, 34, 'blog_content', ''),
(679, 34, '_blog_content', 'field_664ce5e59fd73'),
(680, 99, 'blog_home_small_title', 'READ OUR BLOG'),
(681, 99, '_blog_home_small_title', 'field_664cd9318b301'),
(682, 99, 'blog_home_main_title', 'Latest Blog'),
(683, 99, '_blog_home_main_title', 'field_664cd9428b302'),
(684, 99, 'blog_home_button_read_more_text', 'View all blog'),
(685, 99, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(686, 99, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(687, 99, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(688, 99, 'blog_home_button_read_more', ''),
(689, 99, '_blog_home_button_read_more', 'field_664cd9508b303'),
(690, 99, 'blog_home', ''),
(691, 99, '_blog_home', 'field_664cd8fa8b300'),
(692, 99, 'home_content_small_title', 'qweqwe'),
(693, 99, '_home_content_small_title', 'field_664cdda5a0489'),
(694, 99, 'home_content_main_title', 'qweqwe'),
(695, 99, '_home_content_main_title', 'field_664cddaea048a'),
(696, 99, 'home_content_button_read_more_text', 'qweqewqw'),
(697, 99, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(698, 99, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(699, 99, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(700, 99, 'home_content_button_read_more', ''),
(701, 99, '_home_content_button_read_more', 'field_664cddb5a048b'),
(702, 99, 'home_content', ''),
(703, 99, '_home_content', 'field_664cdd82a0488'),
(704, 99, 'blog_content_title_small', 'READ OUR BLOG'),
(705, 99, '_blog_content_title_small', 'field_664ce5e5a4343'),
(706, 99, 'blog_content_title_big', 'Latest Blog'),
(707, 99, '_blog_content_title_big', 'field_664cebab55ce1'),
(708, 99, 'blog_content_title_none', 'No entries to display.'),
(709, 99, '_blog_content_title_none', 'field_664cebc255ce2'),
(710, 99, 'blog_content_button_title', 'View all blog'),
(711, 99, '_blog_content_button_title', 'field_664cebd955ce4'),
(712, 99, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(713, 99, '_blog_content_button_url', 'field_664cebe155ce5'),
(714, 99, 'blog_content_button', ''),
(715, 99, '_blog_content_button', 'field_664cebcd55ce3'),
(716, 99, 'blog_content', ''),
(717, 99, '_blog_content', 'field_664ce5e59fd73'),
(718, 102, 'footnotes', ''),
(719, 102, 'blog_small_title', 'Czytaj naszego bloga'),
(720, 102, '_blog_small_title', 'field_664cd9318b301'),
(721, 102, 'blog_main_title', 'Najnowszy blog'),
(722, 102, '_blog_main_title', 'field_664cd9428b302'),
(723, 102, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(724, 102, '_blog_button_read_more_text', 'field_664cd9638b304'),
(725, 102, 'blog_button_read_more_url', ''),
(726, 102, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(727, 102, 'blog_button_read_more', ''),
(728, 102, '_blog_button_read_more', 'field_664cd9508b303'),
(729, 102, 'blog', ''),
(730, 102, '_blog', 'field_664ce2d7e6369'),
(731, 102, 'blog_home_small_title', 'Czytaj naszego bloga'),
(732, 102, '_blog_home_small_title', 'field_664cd9318b301'),
(733, 102, 'blog_home_main_title', 'Najnowsze wpisy'),
(734, 102, '_blog_home_main_title', 'field_664cd9428b302'),
(735, 102, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(736, 102, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(737, 102, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(738, 102, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(739, 102, 'blog_home_button_read_more', ''),
(740, 102, '_blog_home_button_read_more', 'field_664cd9508b303'),
(741, 102, 'blog_home', ''),
(742, 102, '_blog_home', 'field_664cd8fa8b300'),
(743, 102, 'home_content_small_title', 'asd'),
(744, 102, '_home_content_small_title', 'field_664cdda5a0489'),
(745, 102, 'home_content_main_title', 'asd'),
(746, 102, '_home_content_main_title', 'field_664cddaea048a'),
(747, 102, 'home_content_button_read_more_text', 'asd'),
(748, 102, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(749, 102, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(750, 102, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(751, 102, 'home_content_button_read_more', ''),
(752, 102, '_home_content_button_read_more', 'field_664cddb5a048b'),
(753, 102, 'home_content', ''),
(754, 102, '_home_content', 'field_664ce5e59fd73'),
(755, 102, 'blog_title_small', 'dupa'),
(756, 102, '_blog_title_small', 'field_664ce2efe636a'),
(757, 102, 'home_content_title', 'asdasdasasdasdasdasd'),
(758, 102, '_home_content_title', 'field_664ce5e5a4343'),
(759, 102, 'dupa', 'asdasdasdasd'),
(760, 102, '_dupa', 'field_664ce66271357'),
(761, 102, 'blog_content_title_small', 'Czytaj naszego bloga'),
(762, 102, '_blog_content_title_small', 'field_664ce5e5a4343'),
(763, 102, 'blog_content', ''),
(764, 102, '_blog_content', 'field_664ce5e59fd73'),
(765, 102, 'blog_content_title_big', 'Ostatnio na blogu'),
(766, 102, '_blog_content_title_big', 'field_664cebab55ce1'),
(767, 102, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(768, 102, '_blog_content_title_none', 'field_664cebc255ce2'),
(769, 102, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(770, 102, '_blog_content_button_title', 'field_664cebd955ce4'),
(771, 102, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(772, 102, '_blog_content_button_url', 'field_664cebe155ce5'),
(773, 102, 'blog_content_button', ''),
(774, 102, '_blog_content_button', 'field_664cebcd55ce3'),
(775, 103, 'footnotes', ''),
(776, 103, 'blog_small_title', 'Czytaj naszego bloga'),
(777, 103, '_blog_small_title', 'field_664cd9318b301'),
(778, 103, 'blog_main_title', 'Najnowszy blog'),
(779, 103, '_blog_main_title', 'field_664cd9428b302'),
(780, 103, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(781, 103, '_blog_button_read_more_text', 'field_664cd9638b304'),
(782, 103, 'blog_button_read_more_url', ''),
(783, 103, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(784, 103, 'blog_button_read_more', ''),
(785, 103, '_blog_button_read_more', 'field_664cd9508b303'),
(786, 103, 'blog', ''),
(787, 103, '_blog', 'field_664ce2d7e6369'),
(788, 103, 'blog_home_small_title', 'Czytaj naszego bloga'),
(789, 103, '_blog_home_small_title', 'field_664cd9318b301'),
(790, 103, 'blog_home_main_title', 'Najnowsze wpisy'),
(791, 103, '_blog_home_main_title', 'field_664cd9428b302'),
(792, 103, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(793, 103, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(794, 103, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(795, 103, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(796, 103, 'blog_home_button_read_more', ''),
(797, 103, '_blog_home_button_read_more', 'field_664cd9508b303'),
(798, 103, 'blog_home', ''),
(799, 103, '_blog_home', 'field_664cd8fa8b300'),
(800, 103, 'home_content_small_title', 'asd'),
(801, 103, '_home_content_small_title', 'field_664cdda5a0489'),
(802, 103, 'home_content_main_title', 'asd'),
(803, 103, '_home_content_main_title', 'field_664cddaea048a'),
(804, 103, 'home_content_button_read_more_text', 'asd'),
(805, 103, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(806, 103, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(807, 103, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(808, 103, 'home_content_button_read_more', ''),
(809, 103, '_home_content_button_read_more', 'field_664cddb5a048b'),
(810, 103, 'home_content', ''),
(811, 103, '_home_content', 'field_664ce5e59fd73'),
(812, 103, 'blog_title_small', 'dupa'),
(813, 103, '_blog_title_small', 'field_664ce2efe636a'),
(814, 103, 'home_content_title', 'asdasdasasdasdasdasd'),
(815, 103, '_home_content_title', 'field_664ce5e5a4343'),
(816, 103, 'dupa', 'asdasdasdasd'),
(817, 103, '_dupa', 'field_664ce66271357'),
(818, 103, 'blog_content_title_small', 'Czytaj naszego bloga'),
(819, 103, '_blog_content_title_small', 'field_664ce5e5a4343'),
(820, 103, 'blog_content', ''),
(821, 103, '_blog_content', 'field_664ce5e59fd73'),
(822, 103, 'blog_content_title_big', 'Ostatnio na blogu'),
(823, 103, '_blog_content_title_big', 'field_664cebab55ce1'),
(824, 103, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(825, 103, '_blog_content_title_none', 'field_664cebc255ce2'),
(826, 103, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(827, 103, '_blog_content_button_title', 'field_664cebd955ce4'),
(828, 103, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(829, 103, '_blog_content_button_url', 'field_664cebe155ce5'),
(830, 103, 'blog_content_button', ''),
(831, 103, '_blog_content_button', 'field_664cebcd55ce3'),
(834, 105, 'footnotes', ''),
(835, 105, 'blog_small_title', 'Czytaj naszego bloga'),
(836, 105, '_blog_small_title', 'field_664cd9318b301'),
(837, 105, 'blog_main_title', 'Najnowszy blog'),
(838, 105, '_blog_main_title', 'field_664cd9428b302'),
(839, 105, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(840, 105, '_blog_button_read_more_text', 'field_664cd9638b304'),
(841, 105, 'blog_button_read_more_url', ''),
(842, 105, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(843, 105, 'blog_button_read_more', ''),
(844, 105, '_blog_button_read_more', 'field_664cd9508b303'),
(845, 105, 'blog', ''),
(846, 105, '_blog', 'field_664ce2d7e6369'),
(847, 105, 'blog_home_small_title', 'Czytaj naszego bloga'),
(848, 105, '_blog_home_small_title', 'field_664cd9318b301'),
(849, 105, 'blog_home_main_title', 'Najnowsze wpisy'),
(850, 105, '_blog_home_main_title', 'field_664cd9428b302'),
(851, 105, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(852, 105, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(853, 105, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(854, 105, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(855, 105, 'blog_home_button_read_more', ''),
(856, 105, '_blog_home_button_read_more', 'field_664cd9508b303'),
(857, 105, 'blog_home', ''),
(858, 105, '_blog_home', 'field_664cd8fa8b300'),
(859, 105, 'home_content_small_title', 'asd'),
(860, 105, '_home_content_small_title', 'field_664cdda5a0489'),
(861, 105, 'home_content_main_title', 'asd'),
(862, 105, '_home_content_main_title', 'field_664cddaea048a'),
(863, 105, 'home_content_button_read_more_text', 'asd'),
(864, 105, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(865, 105, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(866, 105, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(867, 105, 'home_content_button_read_more', ''),
(868, 105, '_home_content_button_read_more', 'field_664cddb5a048b'),
(869, 105, 'home_content', ''),
(870, 105, '_home_content', 'field_664ce5e59fd73'),
(871, 105, 'blog_title_small', 'dupa'),
(872, 105, '_blog_title_small', 'field_664ce2efe636a'),
(873, 105, 'home_content_title', 'asdasdasasdasdasdasd'),
(874, 105, '_home_content_title', 'field_664ce5e5a4343'),
(875, 105, 'dupa', 'asdasdasdasd'),
(876, 105, '_dupa', 'field_664ce66271357'),
(877, 105, 'blog_content_title_small', 'Czytaj naszego bloga'),
(878, 105, '_blog_content_title_small', 'field_664ce5e5a4343'),
(879, 105, 'blog_content', ''),
(880, 105, '_blog_content', 'field_664ce5e59fd73'),
(881, 105, 'blog_content_title_big', 'Ostatnio na blogu'),
(882, 105, '_blog_content_title_big', 'field_664cebab55ce1'),
(883, 105, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(884, 105, '_blog_content_title_none', 'field_664cebc255ce2'),
(885, 105, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(886, 105, '_blog_content_button_title', 'field_664cebd955ce4'),
(887, 105, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(888, 105, '_blog_content_button_url', 'field_664cebe155ce5'),
(889, 105, 'blog_content_button', ''),
(890, 105, '_blog_content_button', 'field_664cebcd55ce3'),
(893, 107, 'footnotes', ''),
(894, 107, 'blog_small_title', 'Czytaj naszego bloga'),
(895, 107, '_blog_small_title', 'field_664cd9318b301'),
(896, 107, 'blog_main_title', 'Najnowszy blog'),
(897, 107, '_blog_main_title', 'field_664cd9428b302'),
(898, 107, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(899, 107, '_blog_button_read_more_text', 'field_664cd9638b304'),
(900, 107, 'blog_button_read_more_url', ''),
(901, 107, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(902, 107, 'blog_button_read_more', ''),
(903, 107, '_blog_button_read_more', 'field_664cd9508b303'),
(904, 107, 'blog', ''),
(905, 107, '_blog', 'field_664ce2d7e6369'),
(906, 107, 'blog_home_small_title', 'Czytaj naszego bloga'),
(907, 107, '_blog_home_small_title', 'field_664cd9318b301'),
(908, 107, 'blog_home_main_title', 'Najnowsze wpisy');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(909, 107, '_blog_home_main_title', 'field_664cd9428b302'),
(910, 107, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(911, 107, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(912, 107, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(913, 107, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(914, 107, 'blog_home_button_read_more', ''),
(915, 107, '_blog_home_button_read_more', 'field_664cd9508b303'),
(916, 107, 'blog_home', ''),
(917, 107, '_blog_home', 'field_664cd8fa8b300'),
(918, 107, 'home_content_small_title', 'asd'),
(919, 107, '_home_content_small_title', 'field_664cdda5a0489'),
(920, 107, 'home_content_main_title', 'asd'),
(921, 107, '_home_content_main_title', 'field_664cddaea048a'),
(922, 107, 'home_content_button_read_more_text', 'asd'),
(923, 107, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(924, 107, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(925, 107, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(926, 107, 'home_content_button_read_more', ''),
(927, 107, '_home_content_button_read_more', 'field_664cddb5a048b'),
(928, 107, 'home_content', ''),
(929, 107, '_home_content', 'field_664ce5e59fd73'),
(930, 107, 'blog_title_small', 'dupa'),
(931, 107, '_blog_title_small', 'field_664ce2efe636a'),
(932, 107, 'home_content_title', 'asdasdasasdasdasdasd'),
(933, 107, '_home_content_title', 'field_664ce5e5a4343'),
(934, 107, 'dupa', 'asdasdasdasd'),
(935, 107, '_dupa', 'field_664ce66271357'),
(936, 107, 'blog_content_title_small', 'Czytaj naszego bloga'),
(937, 107, '_blog_content_title_small', 'field_664ce5e5a4343'),
(938, 107, 'blog_content', ''),
(939, 107, '_blog_content', 'field_664ce5e59fd73'),
(940, 107, 'blog_content_title_big', 'Ostatnio na blogu'),
(941, 107, '_blog_content_title_big', 'field_664cebab55ce1'),
(942, 107, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(943, 107, '_blog_content_title_none', 'field_664cebc255ce2'),
(944, 107, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(945, 107, '_blog_content_button_title', 'field_664cebd955ce4'),
(946, 107, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(947, 107, '_blog_content_button_url', 'field_664cebe155ce5'),
(948, 107, 'blog_content_button', ''),
(949, 107, '_blog_content_button', 'field_664cebcd55ce3'),
(950, 108, 'footnotes', ''),
(951, 108, 'blog_small_title', 'Czytaj naszego bloga'),
(952, 108, '_blog_small_title', 'field_664cd9318b301'),
(953, 108, 'blog_main_title', 'Najnowszy blog'),
(954, 108, '_blog_main_title', 'field_664cd9428b302'),
(955, 108, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(956, 108, '_blog_button_read_more_text', 'field_664cd9638b304'),
(957, 108, 'blog_button_read_more_url', ''),
(958, 108, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(959, 108, 'blog_button_read_more', ''),
(960, 108, '_blog_button_read_more', 'field_664cd9508b303'),
(961, 108, 'blog', ''),
(962, 108, '_blog', 'field_664ce2d7e6369'),
(963, 108, 'blog_home_small_title', 'Czytaj naszego bloga'),
(964, 108, '_blog_home_small_title', 'field_664cd9318b301'),
(965, 108, 'blog_home_main_title', 'Najnowsze wpisy'),
(966, 108, '_blog_home_main_title', 'field_664cd9428b302'),
(967, 108, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(968, 108, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(969, 108, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(970, 108, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(971, 108, 'blog_home_button_read_more', ''),
(972, 108, '_blog_home_button_read_more', 'field_664cd9508b303'),
(973, 108, 'blog_home', ''),
(974, 108, '_blog_home', 'field_664cd8fa8b300'),
(975, 108, 'home_content_small_title', 'asd'),
(976, 108, '_home_content_small_title', 'field_664cdda5a0489'),
(977, 108, 'home_content_main_title', 'asd'),
(978, 108, '_home_content_main_title', 'field_664cddaea048a'),
(979, 108, 'home_content_button_read_more_text', 'asd'),
(980, 108, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(981, 108, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(982, 108, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(983, 108, 'home_content_button_read_more', ''),
(984, 108, '_home_content_button_read_more', 'field_664cddb5a048b'),
(985, 108, 'home_content', ''),
(986, 108, '_home_content', 'field_664ce5e59fd73'),
(987, 108, 'blog_title_small', 'dupa'),
(988, 108, '_blog_title_small', 'field_664ce2efe636a'),
(989, 108, 'home_content_title', 'asdasdasasdasdasdasd'),
(990, 108, '_home_content_title', 'field_664ce5e5a4343'),
(991, 108, 'dupa', 'asdasdasdasd'),
(992, 108, '_dupa', 'field_664ce66271357'),
(993, 108, 'blog_content_title_small', 'Czytaj naszego bloga'),
(994, 108, '_blog_content_title_small', 'field_664ce5e5a4343'),
(995, 108, 'blog_content', ''),
(996, 108, '_blog_content', 'field_664ce5e59fd73'),
(997, 108, 'blog_content_title_big', 'Ostatnio na blogu'),
(998, 108, '_blog_content_title_big', 'field_664cebab55ce1'),
(999, 108, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(1000, 108, '_blog_content_title_none', 'field_664cebc255ce2'),
(1001, 108, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(1002, 108, '_blog_content_button_title', 'field_664cebd955ce4'),
(1003, 108, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(1004, 108, '_blog_content_button_url', 'field_664cebe155ce5'),
(1005, 108, 'blog_content_button', ''),
(1006, 108, '_blog_content_button', 'field_664cebcd55ce3'),
(1009, 110, 'footnotes', ''),
(1010, 110, 'blog_home_small_title', 'READ OUR BLOG'),
(1011, 110, '_blog_home_small_title', 'field_664cd9318b301'),
(1012, 110, 'blog_home_main_title', 'Latest Blog'),
(1013, 110, '_blog_home_main_title', 'field_664cd9428b302'),
(1014, 110, 'blog_home_button_read_more_text', 'View all blog'),
(1015, 110, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(1016, 110, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(1017, 110, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(1018, 110, 'blog_home_button_read_more', ''),
(1019, 110, '_blog_home_button_read_more', 'field_664cd9508b303'),
(1020, 110, 'blog_home', ''),
(1021, 110, '_blog_home', 'field_664cd8fa8b300'),
(1022, 110, 'home_content_small_title', 'qweqwe'),
(1023, 110, '_home_content_small_title', 'field_664cdda5a0489'),
(1024, 110, 'home_content_main_title', 'qweqwe'),
(1025, 110, '_home_content_main_title', 'field_664cddaea048a'),
(1026, 110, 'home_content_button_read_more_text', 'qweqewqw'),
(1027, 110, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(1028, 110, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(1029, 110, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(1030, 110, 'home_content_button_read_more', ''),
(1031, 110, '_home_content_button_read_more', 'field_664cddb5a048b'),
(1032, 110, 'home_content', ''),
(1033, 110, '_home_content', 'field_664cdd82a0488'),
(1034, 110, 'blog_content_title_small', 'READ OUR BLOG'),
(1035, 110, '_blog_content_title_small', 'field_664ce5e5a4343'),
(1036, 110, 'blog_content_title_big', 'Latest Blog'),
(1037, 110, '_blog_content_title_big', 'field_664cebab55ce1'),
(1038, 110, 'blog_content_title_none', 'No entries to display.'),
(1039, 110, '_blog_content_title_none', 'field_664cebc255ce2'),
(1040, 110, 'blog_content_button_title', 'View all blog'),
(1041, 110, '_blog_content_button_title', 'field_664cebd955ce4'),
(1042, 110, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(1043, 110, '_blog_content_button_url', 'field_664cebe155ce5'),
(1044, 110, 'blog_content_button', ''),
(1045, 110, '_blog_content_button', 'field_664cebcd55ce3'),
(1046, 110, 'blog_content', ''),
(1047, 110, '_blog_content', 'field_664ce5e59fd73'),
(1050, 112, '_wp_attached_file', '2024/05/singleimage.jpg'),
(1051, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:546;s:4:\"file\";s:23:\"2024/05/singleimage.jpg\";s:8:\"filesize\";i:228383;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1052, 36, '_thumbnail_id', '15'),
(1053, 115, '_wp_attached_file', '2024/05/singleimage-1.jpg'),
(1054, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:546;s:4:\"file\";s:25:\"2024/05/singleimage-1.jpg\";s:8:\"filesize\";i:228383;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1057, 118, '_wp_attached_file', '2024/05/main-banner-1.jpg'),
(1058, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:869;s:4:\"file\";s:25:\"2024/05/main-banner-1.jpg\";s:8:\"filesize\";i:1141635;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1059, 38, '_thumbnail_id', '118'),
(1063, 120, '_edit_lock', '1716495095:1'),
(1064, 120, '_edit_last', '1'),
(1065, 122, '_edit_lock', '1716403376:1'),
(1066, 122, '_edit_last', '1'),
(1067, 124, '_menu_item_type', 'post_type'),
(1068, 124, '_menu_item_menu_item_parent', '0'),
(1069, 124, '_menu_item_object_id', '120'),
(1070, 124, '_menu_item_object', 'page'),
(1071, 124, '_menu_item_target', ''),
(1072, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1073, 124, '_menu_item_xfn', ''),
(1074, 124, '_menu_item_url', ''),
(1076, 42, '_wp_old_date', '2024-05-16'),
(1077, 40, '_wp_old_date', '2024-05-16'),
(1078, 125, '_menu_item_type', 'post_type'),
(1079, 125, '_menu_item_menu_item_parent', '0'),
(1080, 125, '_menu_item_object_id', '122'),
(1081, 125, '_menu_item_object', 'page'),
(1082, 125, '_menu_item_target', ''),
(1083, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1084, 125, '_menu_item_xfn', ''),
(1085, 125, '_menu_item_url', ''),
(1087, 44, '_wp_old_date', '2024-05-16'),
(1088, 43, '_wp_old_date', '2024-05-16'),
(1098, 45, '_wp_old_date', '2024-05-17'),
(1099, 46, '_wp_old_date', '2024-05-17'),
(1100, 127, '_menu_item_type', 'post_type'),
(1101, 127, '_menu_item_menu_item_parent', '0'),
(1102, 127, '_menu_item_object_id', '120'),
(1103, 127, '_menu_item_object', 'page'),
(1104, 127, '_menu_item_target', ''),
(1105, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1106, 127, '_menu_item_xfn', ''),
(1107, 127, '_menu_item_url', ''),
(1109, 128, '_menu_item_type', 'post_type'),
(1110, 128, '_menu_item_menu_item_parent', '0'),
(1111, 128, '_menu_item_object_id', '122'),
(1112, 128, '_menu_item_object', 'page'),
(1113, 128, '_menu_item_target', ''),
(1114, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1115, 128, '_menu_item_xfn', ''),
(1116, 128, '_menu_item_url', ''),
(1118, 48, '_wp_old_date', '2024-05-17'),
(1119, 47, '_wp_old_date', '2024-05-17'),
(1122, 132, '_wp_attached_file', '2024/05/main-banner1-1.jpg'),
(1123, 132, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:869;s:4:\"file\";s:26:\"2024/05/main-banner1-1.jpg\";s:8:\"filesize\";i:189679;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1124, 122, '_thumbnail_id', '132'),
(1129, 120, '_thumbnail_id', '23'),
(1131, 143, '_form', '<div class=\"contact-form d-flex flex-wrap mt-4 w-100\">\n\n<label> Your Name*\n    [text* k-name class:mr-3 class:mb-3]\n</label>\n\n<label> Your E-mail*\n    [email* k-email class:mb-3]\n</label>\n\n<label> Message*\n    [textarea* k-textarea minlength:5 maxlength:500]\n</label>\n\n[quiz quiz-72 \"Which number is bigger? 5 or 2?*|5\"]\n\n[submit class:btn class:btn class:btn-full class:btn-rounded \"Send a message\"]\n\n</div>'),
(1132, 143, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <wp1@example.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:189:\"Nadawca: <[k-email]>\n\nImię i nazwisko:  [k-name]\n\nTreść wiadomości:\n[k-textarea]\n\n-- \nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\";s:18:\"additional_headers\";s:19:\"Reply-To: [k-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1133, 143, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] - \"[your-subject]\"\";s:6:\"sender\";s:31:\"[_site_title] <wp1@example.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:268:\"Treść wiadomości:\n[your-message]\n\n-- \nTa wiadomość e-mail jest potwierdzeniem wysłania formularza kontaktowego na naszej stronie internetowej ([_site_title] [_site_url]), w którym użyto Twojego adresu e-mail. Jeśli to nie byłeś Ty, zignoruj tę wiadomość.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1134, 143, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:38:\"Your message has been sent. Thank you!\";s:12:\"mail_sent_ng\";s:65:\"There was a problem sending your message. Please try again later.\";s:16:\"validation_error\";s:82:\"At least one field contains an error. Please check what you entered and try again.\";s:4:\"spam\";s:65:\"There was a problem sending your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must agree to the above provisions to be able to submit the form.\";s:16:\"invalid_required\";s:27:\"Please complete this field.\";s:16:\"invalid_too_long\";s:46:\"Too many characters were entered in the field.\";s:17:\"invalid_too_short\";s:45:\"Too few characters were entered in the field.\";s:13:\"upload_failed\";s:51:\"An unknown error occurred while uploading the file.\";s:24:\"upload_file_type_invalid\";s:37:\"You cannot upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:43:\"An error occurred while uploading the file.\";s:12:\"invalid_date\";s:40:\"Enter the date in the format RRRR-MM-DD.\";s:14:\"date_too_early\";s:45:\"The date selected in this field is too early.\";s:13:\"date_too_late\";s:44:\"The date selected in this field is too late.\";s:14:\"invalid_number\";s:15:\"Enter a number.\";s:16:\"number_too_small\";s:19:\"Too small a number.\";s:16:\"number_too_large\";s:9:\"Too many.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:32:\"Please enter your email address.\";s:11:\"invalid_url\";s:21:\"Please enter the URL.\";s:11:\"invalid_tel\";s:31:\"Please enter your phone number.\";}'),
(1135, 143, '_additional_settings', ''),
(1136, 143, '_locale', 'pl_PL'),
(1137, 143, '_hash', '137c40f74c3493231a7d98f0ac4f0f299c233098'),
(1140, 147, '_edit_lock', '1716403600:1'),
(1141, 148, '_edit_lock', '1716403604:1'),
(1192, 42, '_wp_old_date', '2024-05-22'),
(1193, 40, '_wp_old_date', '2024-05-22'),
(1194, 124, '_wp_old_date', '2024-05-22'),
(1195, 156, '_wp_attached_file', '2024/05/spacejoy.jpg'),
(1196, 156, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1536;s:4:\"file\";s:20:\"2024/05/spacejoy.jpg\";s:8:\"filesize\";i:506098;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1219, 162, '_edit_lock', '1716495758:1'),
(1220, 162, '_edit_last', '1'),
(1221, 164, '_edit_lock', '1716495366:1'),
(1222, 164, '_edit_last', '1'),
(1223, 167, '_menu_item_type', 'post_type'),
(1224, 167, '_menu_item_menu_item_parent', '0'),
(1225, 167, '_menu_item_object_id', '162'),
(1226, 167, '_menu_item_object', 'page'),
(1227, 167, '_menu_item_target', ''),
(1228, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1229, 167, '_menu_item_xfn', ''),
(1230, 167, '_menu_item_url', ''),
(1232, 168, '_menu_item_type', 'post_type'),
(1233, 168, '_menu_item_menu_item_parent', '0'),
(1234, 168, '_menu_item_object_id', '164'),
(1235, 168, '_menu_item_object', 'page'),
(1236, 168, '_menu_item_target', ''),
(1237, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1238, 168, '_menu_item_xfn', ''),
(1239, 168, '_menu_item_url', ''),
(1241, 44, '_wp_old_date', '2024-05-22'),
(1242, 43, '_wp_old_date', '2024-05-22'),
(1243, 125, '_wp_old_date', '2024-05-22'),
(1253, 45, '_wp_old_date', '2024-05-22'),
(1254, 46, '_wp_old_date', '2024-05-22'),
(1255, 127, '_wp_old_date', '2024-05-22'),
(1256, 170, '_menu_item_type', 'post_type'),
(1257, 170, '_menu_item_menu_item_parent', '0'),
(1258, 170, '_menu_item_object_id', '164'),
(1259, 170, '_menu_item_object', 'page'),
(1260, 170, '_menu_item_target', ''),
(1261, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1262, 170, '_menu_item_xfn', ''),
(1263, 170, '_menu_item_url', ''),
(1265, 48, '_wp_old_date', '2024-05-22'),
(1266, 47, '_wp_old_date', '2024-05-22'),
(1267, 128, '_wp_old_date', '2024-05-22'),
(1268, 171, '_edit_lock', '1716492969:1'),
(1277, 174, '_thumbnail_id', '53'),
(1278, 174, '_edit_lock', '1716495177:1'),
(1281, 174, '_edit_last', '1'),
(1284, 176, '_menu_item_type', 'post_type'),
(1285, 176, '_menu_item_menu_item_parent', '0'),
(1286, 176, '_menu_item_object_id', '162'),
(1287, 176, '_menu_item_object', 'page'),
(1288, 176, '_menu_item_target', ''),
(1289, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1290, 176, '_menu_item_xfn', ''),
(1291, 176, '_menu_item_url', ''),
(1293, 177, '_edit_lock', '1716493961:1'),
(1294, 162, '_thumbnail_id', '156'),
(1295, 179, '_wp_attached_file', '2024/05/spacejoy-1.jpg'),
(1296, 179, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1536;s:4:\"file\";s:22:\"2024/05/spacejoy-1.jpg\";s:8:\"filesize\";i:506098;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1297, 164, '_thumbnail_id', '179'),
(1298, 180, '_edit_lock', '1716495825:1'),
(1301, 180, '_edit_last', '1'),
(1304, 180, '_thumbnail_id', '156'),
(1309, 183, '_edit_lock', '1716572979:1'),
(1312, 183, '_edit_last', '1'),
(1315, 183, '_thumbnail_id', '112'),
(1320, 185, '_edit_lock', '1716573002:1'),
(1323, 185, '_thumbnail_id', '23'),
(1324, 185, '_edit_last', '1'),
(1327, 187, '_edit_lock', '1716746444:1'),
(1330, 187, '_thumbnail_id', '15'),
(1331, 187, '_edit_last', '1'),
(1334, 189, '_edit_lock', '1716747740:1'),
(1337, 189, '_thumbnail_id', '156'),
(1338, 189, '_edit_last', '1'),
(1341, 191, '_edit_lock', '1716574035:1'),
(1344, 191, '_edit_last', '1'),
(1349, 193, 'footnotes', ''),
(1351, 193, 'blog_home_small_title', 'READ OUR BLOG'),
(1352, 193, '_blog_home_small_title', 'field_664cd9318b301'),
(1353, 193, 'blog_home_main_title', 'Latest Blog'),
(1354, 193, '_blog_home_main_title', 'field_664cd9428b302'),
(1355, 193, 'blog_home_button_read_more_text', 'View all blog'),
(1356, 193, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(1357, 193, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(1358, 193, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(1359, 193, 'blog_home_button_read_more', ''),
(1360, 193, '_blog_home_button_read_more', 'field_664cd9508b303'),
(1361, 193, 'blog_home', ''),
(1362, 193, '_blog_home', 'field_664cd8fa8b300'),
(1363, 193, 'home_content_small_title', 'qweqwe'),
(1364, 193, '_home_content_small_title', 'field_664cdda5a0489'),
(1365, 193, 'home_content_main_title', 'qweqwe'),
(1366, 193, '_home_content_main_title', 'field_664cddaea048a'),
(1367, 193, 'home_content_button_read_more_text', 'qweqewqw'),
(1368, 193, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(1369, 193, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:33:\"http://localhost/wp1/en/about-us/\";s:6:\"target\";s:0:\"\";}'),
(1370, 193, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(1371, 193, 'home_content_button_read_more', ''),
(1372, 193, '_home_content_button_read_more', 'field_664cddb5a048b'),
(1373, 193, 'home_content', ''),
(1374, 193, '_home_content', 'field_664cdd82a0488'),
(1375, 193, 'blog_content_title_small', 'READ OUR BLOG'),
(1376, 193, '_blog_content_title_small', 'field_664ce5e5a4343'),
(1377, 193, 'blog_content_title_big', 'Latest Blog'),
(1378, 193, '_blog_content_title_big', 'field_664cebab55ce1'),
(1379, 193, 'blog_content_title_none', 'No entries to display.'),
(1380, 193, '_blog_content_title_none', 'field_664cebc255ce2'),
(1381, 193, 'blog_content_button_title', 'View all blog'),
(1382, 193, '_blog_content_button_title', 'field_664cebd955ce4'),
(1383, 193, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:4:\"News\";s:3:\"url\";s:29:\"http://localhost/wp1/en/news/\";s:6:\"target\";s:0:\"\";}'),
(1384, 193, '_blog_content_button_url', 'field_664cebe155ce5'),
(1385, 193, 'blog_content_button', ''),
(1386, 193, '_blog_content_button', 'field_664cebcd55ce3'),
(1387, 193, 'blog_content', ''),
(1388, 193, '_blog_content', 'field_664ce5e59fd73'),
(1391, 194, 'footnotes', ''),
(1393, 194, 'blog_small_title', 'Czytaj naszego bloga'),
(1394, 194, '_blog_small_title', 'field_664cd9318b301'),
(1395, 194, 'blog_main_title', 'Najnowszy blog'),
(1396, 194, '_blog_main_title', 'field_664cd9428b302'),
(1397, 194, 'blog_button_read_more_text', 'Wyświetl całego bloga'),
(1398, 194, '_blog_button_read_more_text', 'field_664cd9638b304'),
(1399, 194, 'blog_button_read_more_url', ''),
(1400, 194, '_blog_button_read_more_url', 'field_664cd96f8b305'),
(1401, 194, 'blog_button_read_more', ''),
(1402, 194, '_blog_button_read_more', 'field_664cd9508b303'),
(1403, 194, 'blog', ''),
(1404, 194, '_blog', 'field_664ce2d7e6369'),
(1405, 194, 'blog_home_small_title', 'Czytaj naszego bloga'),
(1406, 194, '_blog_home_small_title', 'field_664cd9318b301'),
(1407, 194, 'blog_home_main_title', 'Najnowsze wpisy'),
(1408, 194, '_blog_home_main_title', 'field_664cd9428b302'),
(1409, 194, 'blog_home_button_read_more_text', 'Przejdź do bloga'),
(1410, 194, '_blog_home_button_read_more_text', 'field_664cd9638b304'),
(1411, 194, 'blog_home_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(1412, 194, '_blog_home_button_read_more_url', 'field_664cd96f8b305'),
(1413, 194, 'blog_home_button_read_more', ''),
(1414, 194, '_blog_home_button_read_more', 'field_664cd9508b303'),
(1415, 194, 'blog_home', ''),
(1416, 194, '_blog_home', 'field_664cd8fa8b300'),
(1417, 194, 'home_content_small_title', 'asd'),
(1418, 194, '_home_content_small_title', 'field_664cdda5a0489'),
(1419, 194, 'home_content_main_title', 'asd'),
(1420, 194, '_home_content_main_title', 'field_664cddaea048a'),
(1421, 194, 'home_content_button_read_more_text', 'asd'),
(1422, 194, '_home_content_button_read_more_text', 'field_664cddc9a048c'),
(1423, 194, 'home_content_button_read_more_url', 'a:3:{s:5:\"title\";s:5:\"O nas\";s:3:\"url\";s:27:\"http://localhost/wp1/o-nas/\";s:6:\"target\";s:0:\"\";}'),
(1424, 194, '_home_content_button_read_more_url', 'field_664cdddaa048d'),
(1425, 194, 'home_content_button_read_more', ''),
(1426, 194, '_home_content_button_read_more', 'field_664cddb5a048b'),
(1427, 194, 'home_content', ''),
(1428, 194, '_home_content', 'field_664ce5e59fd73'),
(1429, 194, 'blog_title_small', 'dupa'),
(1430, 194, '_blog_title_small', 'field_664ce2efe636a'),
(1431, 194, 'home_content_title', 'asdasdasasdasdasdasd'),
(1432, 194, '_home_content_title', 'field_664ce5e5a4343'),
(1433, 194, 'dupa', 'asdasdasdasd'),
(1434, 194, '_dupa', 'field_664ce66271357'),
(1435, 194, 'blog_content_title_small', 'Czytaj naszego bloga'),
(1436, 194, '_blog_content_title_small', 'field_664ce5e5a4343'),
(1437, 194, 'blog_content', ''),
(1438, 194, '_blog_content', 'field_664ce5e59fd73'),
(1439, 194, 'blog_content_title_big', 'Ostatnio na blogu'),
(1440, 194, '_blog_content_title_big', 'field_664cebab55ce1'),
(1441, 194, 'blog_content_title_none', 'Brak postów do wyświetlenia.'),
(1442, 194, '_blog_content_title_none', 'field_664cebc255ce2'),
(1443, 194, 'blog_content_button_title', 'Zobacz więcej wpisów'),
(1444, 194, '_blog_content_button_title', 'field_664cebd955ce4'),
(1445, 194, 'blog_content_button_url', 'a:3:{s:5:\"title\";s:4:\"Blog\";s:3:\"url\";s:26:\"http://localhost/wp1/blog/\";s:6:\"target\";s:0:\"\";}'),
(1446, 194, '_blog_content_button_url', 'field_664cebe155ce5'),
(1447, 194, 'blog_content_button', ''),
(1448, 194, '_blog_content_button', 'field_664cebcd55ce3'),
(1449, 195, '_edit_lock', '1716748692:1'),
(1450, 196, '_wp_attached_file', '2024/05/tab2.jpg'),
(1451, 196, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:289;s:4:\"file\";s:16:\"2024/05/tab2.jpg\";s:8:\"filesize\";i:118051;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1454, 195, '_thumbnail_id', '196'),
(1455, 195, '_edit_last', '1'),
(1468, 195, '_pingme', '1'),
(1469, 195, '_encloseme', '1'),
(1470, 195, '_yoast_wpseo_primary_category', '20'),
(1471, 195, '_yoast_wpseo_focuskw', 'Wpis na WordPress'),
(1472, 195, '_yoast_wpseo_metadesc', 'Mój wpis na Wordpress'),
(1473, 195, '_yoast_wpseo_linkdex', '44'),
(1474, 195, '_yoast_wpseo_content_score', '90'),
(1475, 195, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(1476, 195, '_yoast_wpseo_wordproof_timestamp', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-05-13 20:50:53', '2024-05-13 18:50:53', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2024-05-20 21:53:07', '2024-05-20 19:53:07', '', 0, 'http://localhost/wp1/?p=1', 0, 'post', '', 1),
(3, 1, '2024-05-13 20:50:53', '2024-05-13 18:50:53', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Kim jesteśmy</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost/wp1.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Komentarze</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Ciasteczka</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli skomentujesz coś w witrynie, będzie można wybrać opcję zapisu nazwy, adresu e-mail i witryny internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Osadzone treści z innych witryn</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Z kim dzielimy się danymi</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Jak długo przechowujemy twoje dane</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Jakie masz prawa do swoich danych</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gdzie wysłamy twoje dane</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p>\n<!-- /wp:paragraph -->\n', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2024-05-23 21:57:48', '2024-05-23 19:57:48', '', 0, 'http://localhost/wp1/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-05-13 20:50:54', '2024-05-13 18:50:54', '<!-- wp:page-list /-->', 'Nawigacja', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-05-13 20:50:54', '2024-05-13 18:50:54', '', 0, 'http://localhost/wp1/2024/05/13/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-05-15 20:27:33', '2024-05-15 18:27:33', '<div class=\"contact-form d-flex flex-wrap mt-4 w-100\">\r\n\r\n<label> Twoje imię i nazwisko*\r\n    [text* k-name class:mr-3 class:mb-3]\r\n</label>\r\n\r\n<label> Twój adres e-mail*\r\n    [email* k-email class:mb-3]\r\n</label>\r\n\r\n<label> Wiadomość*\r\n    [textarea* k-textarea minlength:5 maxlength:500]\r\n</label>\r\n\r\n[quiz quiz-72 \"Która liczba jest większa? 5 czy 2?*|5\"]\r\n\r\n[submit class:btn class:btn class:btn-full class:btn-rounded \"Wyślij wiadomość\"]\r\n\r\n</div>\n1\n[_site_title] - \"[your-subject]\"\n[_site_title] <wp1@example.com>\n[_site_admin_email]\nNadawca: <[k-email]>\r\n\r\nImię i nazwisko:  [k-name]\r\n\r\nTreść wiadomości:\r\n[k-textarea]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [k-email]\n\n\n\n\n[_site_title] - \"[your-subject]\"\n[_site_title] <wp1@example.com>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość e-mail jest potwierdzeniem wysłania formularza kontaktowego na naszej stronie internetowej ([_site_title] [_site_url]), w którym użyto Twojego adresu e-mail. Jeśli to nie byłeś Ty, zignoruj tę wiadomość.\nReply-To: [_site_admin_email]\n\n\n\nTwoja wiadomość została wysłana. Dziękujemy!\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nPrzynajmniej jedno pole zawiera błąd. Proszę sprawdzić wpisaną treść i spróbować ponownie.\nWystąpił problem z wysłaniem twojej wiadomości. Spróbuj ponownie później.\nMusisz wyrazić zgodę na powyższe zapisy, aby móc wysłać formularz.\nProszę wypełnić to pole.\nW polu wprowadzono zbyt dużo znaków.\nW polu wprowadzono zbyt mało znaków.\nPodczas wgrywania pliku wystąpił nieznany błąd.\nNie możesz wgrywać plików tego typu.\nPrzesłany plik jest za duży.\nWystąpił błąd podczas wgrywania pliku.\nWprowadź datę w formacie RRRR-MM-DD.\nData wybrana w tym polu jest zbyt wczesna.\nData wybrana w tym polu jest zbyt późna.\nWprowadź liczbę.\nZa mała liczba.\nZa duża liczba.\nOdpowiedź w quizie jest nieprawidłowa.\nProszę wpisać adres e-mail.\nProszę wprowadzić adres URL.\nProszę podać numer telefonu.', 'Formularz 1', '', 'publish', 'closed', 'closed', '', 'formularz-1', '', '', '2024-05-22 20:40:34', '2024-05-22 18:40:34', '', 0, 'http://localhost/wp1/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"slider-pl\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"slider-en\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'group_6645132cc0ee7', '', '', '2024-05-17 20:15:23', '2024-05-17 18:15:23', '', 0, 'http://localhost/wp1/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Slider content', 'slider_content', 'publish', 'closed', 'closed', '', 'field_6645132dc3803', '', '', '2024-05-16 20:04:46', '2024-05-16 18:04:46', '', 7, 'http://localhost/wp1/?post_type=acf-field&#038;p=8', 0, 'acf-field', '', 0),
(9, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Podaj tekst wyświetlany na sliderze.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6645136ec3804', '', '', '2024-05-15 22:03:11', '2024-05-15 20:03:11', '', 8, 'http://localhost/wp1/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Button Group', 'button_group', 'publish', 'closed', 'closed', '', 'field_66451384c3805', '', '', '2024-05-15 22:03:11', '2024-05-15 20:03:11', '', 8, 'http://localhost/wp1/?post_type=acf-field&p=10', 1, 'acf-field', '', 0),
(11, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"Podaj tekst wyświetlany na przycisku.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_664513bac3806', '', '', '2024-05-15 22:03:11', '2024-05-15 20:03:11', '', 10, 'http://localhost/wp1/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(12, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:62:\"Podaj link prowadzący z przycisku wyświetlanego na sliderze.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Url', 'url', 'publish', 'closed', 'closed', '', 'field_664513c4c3807', '', '', '2024-05-17 20:15:23', '2024-05-17 18:15:23', '', 10, 'http://localhost/wp1/?post_type=acf-field&#038;p=12', 1, 'acf-field', '', 0),
(13, 1, '2024-05-15 22:03:11', '2024-05-15 20:03:11', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:44:\"Podaj adres obrazka wyświetlanego w siderze\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'File', 'file', 'publish', 'closed', 'closed', '', 'field_66451486c3808', '', '', '2024-05-15 22:03:11', '2024-05-15 20:03:11', '', 8, 'http://localhost/wp1/?post_type=acf-field&p=13', 2, 'acf-field', '', 0),
(14, 1, '2024-05-15 22:09:26', '2024-05-15 20:09:26', '', 'Slider ONE', '', 'publish', 'closed', 'closed', '', 'slider-one', '', '', '2024-05-15 22:09:26', '2024-05-15 20:09:26', '', 0, 'http://localhost/wp1/?post_type=slider&#038;p=14', 0, 'slider', '', 0),
(15, 1, '2024-05-15 22:08:38', '2024-05-15 20:08:38', 'main-banner', 'main-banner', 'main-banner', 'inherit', 'open', 'closed', '', 'main-banner', '', '', '2024-05-15 22:08:56', '2024-05-15 20:08:56', '', 14, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2024-05-16 20:08:15', '2024-05-16 18:08:15', '', 'Slider TWO', '', 'publish', 'closed', 'closed', '', 'slider-two', '', '', '2024-05-16 20:08:16', '2024-05-16 18:08:16', '', 0, 'http://localhost/wp1/?post_type=slider&#038;p=22', 0, 'slider', '', 0),
(23, 1, '2024-05-16 20:07:51', '2024-05-16 18:07:51', 'main-banner1', 'main-banner1', 'main-banner1', 'inherit', 'open', 'closed', '', 'main-banner1', '', '', '2024-05-16 20:08:10', '2024-05-16 18:08:10', '', 22, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2024-05-16 20:15:43', '2024-05-16 18:15:43', '', 'Slider PL 1', '', 'publish', 'closed', 'closed', '', 'slider-pl-1', '', '', '2024-05-17 20:12:56', '2024-05-17 18:12:56', '', 0, 'http://localhost/wp1/?post_type=slider-pl&#038;p=25', 0, 'slider-pl', '', 0),
(26, 1, '2024-05-16 20:16:11', '2024-05-16 18:16:11', '', 'Slider PL 2', '', 'publish', 'closed', 'closed', '', 'slider-pl-2', '', '', '2024-05-16 20:25:03', '2024-05-16 18:25:03', '', 0, 'http://localhost/wp1/?post_type=slider-pl&#038;p=26', 0, 'slider-pl', '', 0),
(28, 1, '2024-05-16 20:18:22', '2024-05-16 18:18:22', '', 'Slider EN 1', '', 'publish', 'closed', 'closed', '', 'slider-en-1', '', '', '2024-05-17 20:13:13', '2024-05-17 18:13:13', '', 0, 'http://localhost/wp1/?post_type=slider-en&#038;p=28', 0, 'slider-en', '', 0),
(29, 1, '2024-05-16 20:19:00', '2024-05-16 18:19:00', '', 'Slider EN 2', '', 'publish', 'closed', 'closed', '', 'slider-en-2', '', '', '2024-05-16 20:19:01', '2024-05-16 18:19:01', '', 0, 'http://localhost/wp1/?post_type=slider-en&#038;p=29', 0, 'slider-en', '', 0),
(31, 1, '2024-05-16 20:36:20', '2024-05-16 18:36:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'publish', 'closed', 'closed', '', 'strona-glowna', '', '', '2024-05-24 20:33:45', '2024-05-24 18:33:45', '', 0, 'http://localhost/wp1/?page_id=31', 0, 'page', '', 0),
(32, 1, '2024-05-16 20:36:20', '2024-05-16 18:36:20', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-16 20:36:20', '2024-05-16 18:36:20', '', 31, 'http://localhost/wp1/?p=32', 0, 'revision', '', 0),
(34, 1, '2024-05-16 20:38:36', '2024-05-16 18:38:36', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-05-24 20:33:29', '2024-05-24 18:33:29', '', 0, 'http://localhost/wp1/?page_id=34', 0, 'page', '', 0),
(35, 1, '2024-05-16 20:38:25', '2024-05-16 18:38:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-16 20:38:25', '2024-05-16 18:38:25', '', 34, 'http://localhost/wp1/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-05-16 20:40:54', '2024-05-16 18:40:54', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":112,\"width\":\"416px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg\" alt=\"\" class=\"wp-image-112\" style=\"width:416px;height:auto\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Czym jest Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O nas', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2024-05-22 19:34:45', '2024-05-22 17:34:45', '', 0, 'http://localhost/wp1/?page_id=36', 0, 'page', '', 0),
(37, 1, '2024-05-16 20:40:54', '2024-05-16 18:40:54', '', 'O nas', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2024-05-16 20:40:54', '2024-05-16 18:40:54', '', 36, 'http://localhost/wp1/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-05-16 20:41:20', '2024-05-16 18:41:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":115,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wp1/wp-content/uploads/2024/05/singleimage-1.jpg\" alt=\"\" class=\"wp-image-115\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2024-05-22 19:43:27', '2024-05-22 17:43:27', '', 0, 'http://localhost/wp1/?page_id=38', 0, 'page', '', 0),
(39, 1, '2024-05-16 20:41:11', '2024-05-16 18:41:11', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2024-05-16 20:41:11', '2024-05-16 18:41:11', '', 38, 'http://localhost/wp1/?p=39', 0, 'revision', '', 0),
(40, 1, '2024-05-23 21:35:09', '2024-05-16 18:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2024-05-23 21:35:09', '2024-05-23 19:35:09', '', 0, 'http://localhost/wp1/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2024-05-16 20:44:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-05-16 20:44:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2024-05-23 21:35:09', '2024-05-16 18:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2024-05-23 21:35:09', '2024-05-23 19:35:09', '', 0, 'http://localhost/wp1/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2024-05-23 21:35:21', '2024-05-16 18:45:25', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2024-05-23 21:35:21', '2024-05-23 19:35:21', '', 0, 'http://localhost/wp1/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2024-05-23 21:35:21', '2024-05-16 18:45:25', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2024-05-23 21:35:21', '2024-05-23 19:35:21', '', 0, 'http://localhost/wp1/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2024-05-23 21:43:55', '2024-05-17 17:58:15', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2024-05-23 21:43:55', '2024-05-23 19:43:55', '', 0, 'http://localhost/wp1/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2024-05-23 21:43:55', '2024-05-17 17:58:15', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2024-05-23 21:43:55', '2024-05-23 19:43:55', '', 0, 'http://localhost/wp1/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2024-05-23 21:35:40', '2024-05-17 17:58:36', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2024-05-23 21:35:40', '2024-05-23 19:35:40', '', 0, 'http://localhost/wp1/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2024-05-23 21:35:40', '2024-05-17 17:58:36', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2024-05-23 21:35:40', '2024-05-23 19:35:40', '', 0, 'http://localhost/wp1/?p=48', 1, 'nav_menu_item', '', 0),
(50, 1, '2024-05-17 20:09:51', '2024-05-17 18:09:51', 'logo', 'logo', 'logo', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-05-17 20:09:56', '2024-05-17 18:09:56', '', 0, 'http://localhost/wp1/wp-content/uploads/2024/05/logo.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2024-05-17 20:10:04', '2024-05-17 18:10:04', '{\n    \"fourtyfour::custom_logo\": {\n        \"value\": 50,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-05-17 18:10:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6cda4c75-e236-4b84-baf0-6182c64d27aa', '', '', '2024-05-17 20:10:04', '2024-05-17 18:10:04', '', 0, 'http://localhost/wp1/2024/05/17/6cda4c75-e236-4b84-baf0-6182c64d27aa/', 0, 'customize_changeset', '', 0),
(52, 1, '2024-05-20 20:57:29', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-20 20:57:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?p=52', 0, 'post', '', 0),
(53, 1, '2024-05-20 21:48:45', '2024-05-20 19:48:45', 'tab3', 'tab3', 'tab3', 'inherit', 'open', 'closed', '', 'tab3', '', '', '2024-05-20 21:48:55', '2024-05-20 19:48:55', '', 1, 'http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2024-05-20 21:48:58', '2024-05-20 19:48:58', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-05-20 21:48:58', '2024-05-20 19:48:58', '', 1, 'http://localhost/wp1/?p=54', 0, 'revision', '', 0),
(55, 1, '2024-05-20 21:53:05', '2024-05-20 19:53:05', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-05-20 21:53:05', '2024-05-20 19:53:05', '', 1, 'http://localhost/wp1/?p=55', 0, 'revision', '', 0),
(64, 1, '2024-05-21 19:29:25', '2024-05-21 17:29:25', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 19:29:25', '2024-05-21 17:29:25', '', 31, 'http://localhost/wp1/?p=64', 0, 'revision', '', 0),
(66, 1, '2024-05-21 19:39:26', '2024-05-21 17:39:26', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 19:39:26', '2024-05-21 17:39:26', '', 31, 'http://localhost/wp1/?p=66', 0, 'revision', '', 0),
(67, 1, '2024-05-21 19:40:35', '2024-05-21 17:40:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-21 19:40:35', '2024-05-21 17:40:35', '', 34, 'http://localhost/wp1/?p=67', 0, 'revision', '', 0),
(68, 1, '2024-05-21 19:46:30', '2024-05-21 17:46:30', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home page', 'home-page', 'trash', 'closed', 'closed', '', 'group_664cdd81f0f11__trashed', '', '', '2024-05-21 20:20:18', '2024-05-21 18:20:18', '', 0, 'http://localhost/wp1/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(75, 1, '2024-05-21 19:47:22', '2024-05-21 17:47:22', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 19:47:22', '2024-05-21 17:47:22', '', 31, 'http://localhost/wp1/?p=75', 0, 'revision', '', 0),
(76, 1, '2024-05-21 19:57:08', '2024-05-21 17:57:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-21 19:57:08', '2024-05-21 17:57:08', '', 34, 'http://localhost/wp1/?p=76', 0, 'revision', '', 0),
(77, 1, '2024-05-21 20:08:04', '2024-05-21 18:08:04', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Blog', 'blog', 'trash', 'closed', 'closed', '', 'field_664ce2d7e6369__trashed', '', '', '2024-05-21 20:20:18', '2024-05-21 18:20:18', '', 68, 'http://localhost/wp1/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2024-05-21 20:08:04', '2024-05-21 18:08:04', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'title_small', 'title_small', 'publish', 'closed', 'closed', '', 'field_664ce2efe636a', '', '', '2024-05-21 20:12:19', '2024-05-21 18:12:19', '', 77, 'http://localhost/wp1/?post_type=acf-field&#038;p=78', 0, 'acf-field', '', 0),
(79, 1, '2024-05-21 20:08:16', '2024-05-21 18:08:16', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 20:08:16', '2024-05-21 18:08:16', '', 31, 'http://localhost/wp1/?p=79', 0, 'revision', '', 0),
(80, 1, '2024-05-21 20:20:21', '2024-05-21 18:20:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_664ce5e59439c', '', '', '2024-05-21 20:56:50', '2024-05-21 18:56:50', '', 0, 'http://localhost/wp1/?p=80', 0, 'acf-field-group', '', 0),
(81, 1, '2024-05-21 20:20:21', '2024-05-21 18:20:21', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:93:\"Podaj tłumaczenia dla sekcji ostatnich wpisów na blogu wyświetlanych na stronie głównej.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Blog', 'blog_content', 'publish', 'closed', 'closed', '', 'field_664ce5e59fd73', '', '', '2024-05-21 20:56:39', '2024-05-21 18:56:39', '', 80, 'http://localhost/wp1/?post_type=acf-field&#038;p=81', 0, 'acf-field', '', 0),
(82, 1, '2024-05-21 20:20:21', '2024-05-21 18:20:21', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title small', 'title_small', 'publish', 'closed', 'closed', '', 'field_664ce5e5a4343', '', '', '2024-05-21 20:56:50', '2024-05-21 18:56:50', '', 81, 'http://localhost/wp1/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(87, 1, '2024-05-21 20:21:37', '2024-05-21 18:21:37', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 20:21:37', '2024-05-21 18:21:37', '', 31, 'http://localhost/wp1/?p=87', 0, 'revision', '', 0),
(89, 1, '2024-05-21 20:22:42', '2024-05-21 18:22:42', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 20:22:42', '2024-05-21 18:22:42', '', 31, 'http://localhost/wp1/?p=89', 0, 'revision', '', 0),
(90, 1, '2024-05-21 20:32:43', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-05-21 20:32:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?post_type=acf-post-type&p=90', 0, 'acf-post-type', '', 0),
(91, 1, '2024-05-21 20:46:10', '2024-05-21 18:46:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title big', 'title_big', 'publish', 'closed', 'closed', '', 'field_664cebab55ce1', '', '', '2024-05-21 20:46:10', '2024-05-21 18:46:10', '', 81, 'http://localhost/wp1/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2024-05-21 20:46:10', '2024-05-21 18:46:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title none', 'title_none', 'publish', 'closed', 'closed', '', 'field_664cebc255ce2', '', '', '2024-05-21 20:46:10', '2024-05-21 18:46:10', '', 81, 'http://localhost/wp1/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 1, '2024-05-21 20:46:10', '2024-05-21 18:46:10', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_664cebcd55ce3', '', '', '2024-05-21 20:46:10', '2024-05-21 18:46:10', '', 81, 'http://localhost/wp1/?post_type=acf-field&p=93', 3, 'acf-field', '', 0),
(94, 1, '2024-05-21 20:46:10', '2024-05-21 18:46:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_664cebd955ce4', '', '', '2024-05-21 20:46:10', '2024-05-21 18:46:10', '', 93, 'http://localhost/wp1/?post_type=acf-field&p=94', 0, 'acf-field', '', 0),
(95, 1, '2024-05-21 20:46:10', '2024-05-21 18:46:10', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Url', 'url', 'publish', 'closed', 'closed', '', 'field_664cebe155ce5', '', '', '2024-05-21 20:46:10', '2024-05-21 18:46:10', '', 93, 'http://localhost/wp1/?post_type=acf-field&p=95', 1, 'acf-field', '', 0),
(97, 1, '2024-05-21 20:49:29', '2024-05-21 18:49:29', '', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-21 20:49:29', '2024-05-21 18:49:29', '', 31, 'http://localhost/wp1/?p=97', 0, 'revision', '', 0),
(99, 1, '2024-05-21 20:52:00', '2024-05-21 18:52:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-21 20:52:00', '2024-05-21 18:52:00', '', 34, 'http://localhost/wp1/?p=99', 0, 'revision', '', 0),
(102, 1, '2024-05-22 16:32:33', '2024-05-22 14:32:33', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>1</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>2</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>3</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-22 16:32:33', '2024-05-22 14:32:33', '', 31, 'http://localhost/wp1/?p=102', 0, 'revision', '', 0),
(103, 1, '2024-05-22 19:24:53', '2024-05-22 17:24:53', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><em>Sample Heading 1</em></h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><em>Sample Heading </em>2</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\"><em>Sample Heading </em>3</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-22 19:24:53', '2024-05-22 17:24:53', '', 31, 'http://localhost/wp1/?p=103', 0, 'revision', '', 0),
(105, 1, '2024-05-22 19:25:32', '2024-05-22 17:25:32', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 1</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 2</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 3</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-22 19:25:32', '2024-05-22 17:25:32', '', 31, 'http://localhost/wp1/?p=105', 0, 'revision', '', 0),
(107, 1, '2024-05-22 19:26:28', '2024-05-22 17:26:28', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Przykładowy nagłówek 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-22 19:26:28', '2024-05-22 17:26:28', '', 31, 'http://localhost/wp1/?p=107', 0, 'revision', '', 0),
(108, 1, '2024-05-22 19:27:21', '2024-05-22 17:27:21', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-22 19:27:21', '2024-05-22 17:27:21', '', 31, 'http://localhost/wp1/?p=108', 0, 'revision', '', 0),
(110, 1, '2024-05-22 19:29:14', '2024-05-22 17:29:14', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-22 19:29:14', '2024-05-22 17:29:14', '', 34, 'http://localhost/wp1/?p=110', 0, 'revision', '', 0),
(112, 1, '2024-05-22 19:33:21', '2024-05-22 17:33:21', '', 'singleimage', '', 'inherit', 'open', 'closed', '', 'singleimage', '', '', '2024-05-22 19:33:21', '2024-05-22 17:33:21', '', 36, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(113, 1, '2024-05-22 19:33:31', '2024-05-22 17:33:31', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":112,\"width\":\"398px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg\" alt=\"\" class=\"wp-image-112\" style=\"width:398px;height:auto\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Czym jest Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O nas', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2024-05-22 19:33:31', '2024-05-22 17:33:31', '', 36, 'http://localhost/wp1/?p=113', 0, 'revision', '', 0),
(114, 1, '2024-05-22 19:33:46', '2024-05-22 17:33:46', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":112,\"width\":\"416px\",\"height\":\"auto\",\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full is-resized\"><img src=\"http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg\" alt=\"\" class=\"wp-image-112\" style=\"width:416px;height:auto\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Czym jest Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'O nas', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2024-05-22 19:33:46', '2024-05-22 17:33:46', '', 36, 'http://localhost/wp1/?p=114', 0, 'revision', '', 0),
(115, 1, '2024-05-22 19:40:49', '2024-05-22 17:40:49', '', 'singleimage-1', '', 'inherit', 'open', 'closed', '', 'singleimage-1', '', '', '2024-05-22 19:40:49', '2024-05-22 17:40:49', '', 38, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2024-05-22 19:41:22', '2024-05-22 17:41:22', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":115,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/wp1/wp-content/uploads/2024/05/singleimage-1.jpg\" alt=\"\" class=\"wp-image-115\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2024-05-22 19:41:22', '2024-05-22 17:41:22', '', 38, 'http://localhost/wp1/?p=117', 0, 'revision', '', 0),
(118, 1, '2024-05-22 19:43:24', '2024-05-22 17:43:24', '', 'main-banner', '', 'inherit', 'open', 'closed', '', 'main-banner-2', '', '', '2024-05-22 19:43:24', '2024-05-22 17:43:24', '', 38, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2024-05-22 19:59:53', '2024-05-22 17:59:53', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Wyślij wiadomość!</h4>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"114467c\" title=\"Formularz 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2024-05-22 20:19:33', '2024-05-22 18:19:33', '', 0, 'http://localhost/wp1/?page_id=120', 0, 'page', '', 0),
(121, 1, '2024-05-22 19:59:53', '2024-05-22 17:59:53', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 19:59:53', '2024-05-22 17:59:53', '', 120, 'http://localhost/wp1/?p=121', 0, 'revision', '', 0),
(122, 1, '2024-05-22 20:02:58', '2024-05-22 18:02:58', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Social Links</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Send message!</h4>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"137c40f\" title=\"Formularz 2\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-05-22 20:42:55', '2024-05-22 18:42:55', '', 0, 'http://localhost/wp1/?page_id=122', 0, 'page', '', 0),
(123, 1, '2024-05-22 20:02:58', '2024-05-22 18:02:58', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;i class=\"icon icon-phone\">&lt;/i>+1650-243-0000</code></pre>\n<!-- /wp:code -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phones</h4>\n<!-- /wp:heading --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:02:58', '2024-05-22 18:02:58', '', 122, 'http://localhost/wp1/?p=123', 0, 'revision', '', 0),
(124, 1, '2024-05-23 21:35:09', '2024-05-22 18:03:18', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2024-05-23 21:35:09', '2024-05-23 19:35:09', '', 0, 'http://localhost/wp1/?p=124', 4, 'nav_menu_item', '', 0),
(125, 1, '2024-05-23 21:35:21', '2024-05-22 18:03:26', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2024-05-23 21:35:21', '2024-05-23 19:35:21', '', 0, 'http://localhost/wp1/?p=125', 4, 'nav_menu_item', '', 0),
(127, 1, '2024-05-23 21:43:55', '2024-05-22 18:03:50', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2024-05-23 21:43:55', '2024-05-23 19:43:55', '', 0, 'http://localhost/wp1/?p=127', 4, 'nav_menu_item', '', 0),
(128, 1, '2024-05-23 21:35:40', '2024-05-22 18:03:58', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2024-05-23 21:35:40', '2024-05-23 19:35:40', '', 0, 'http://localhost/wp1/?p=128', 4, 'nav_menu_item', '', 0),
(130, 1, '2024-05-22 20:06:05', '2024-05-22 18:06:05', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:06:05', '2024-05-22 18:06:05', '', 122, 'http://localhost/wp1/?p=130', 0, 'revision', '', 0),
(131, 1, '2024-05-22 20:07:13', '2024-05-22 18:07:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:07:13', '2024-05-22 18:07:13', '', 122, 'http://localhost/wp1/?p=131', 0, 'revision', '', 0),
(132, 1, '2024-05-22 20:07:34', '2024-05-22 18:07:34', '', 'main-banner1', '', 'inherit', 'open', 'closed', '', 'main-banner1-2', '', '', '2024-05-22 20:07:34', '2024-05-22 18:07:34', '', 122, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2024-05-22 20:10:12', '2024-05-22 18:10:12', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:10:12', '2024-05-22 18:10:12', '', 122, 'http://localhost/wp1/?p=134', 0, 'revision', '', 0),
(135, 1, '2024-05-22 20:10:28', '2024-05-22 18:10:28', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:10:28', '2024-05-22 18:10:28', '', 122, 'http://localhost/wp1/?p=135', 0, 'revision', '', 0),
(136, 1, '2024-05-22 20:11:09', '2024-05-22 18:11:09', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Social Links</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:11:09', '2024-05-22 18:11:09', '', 122, 'http://localhost/wp1/?p=136', 0, 'revision', '', 0),
(138, 1, '2024-05-22 20:15:46', '2024-05-22 18:15:46', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 20:15:46', '2024-05-22 18:15:46', '', 120, 'http://localhost/wp1/?p=138', 0, 'revision', '', 0),
(139, 1, '2024-05-22 20:17:29', '2024-05-22 18:17:29', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:shortcode -->\n[contact-form-7 id=\"114467c\" title=\"Formularz 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 20:17:29', '2024-05-22 18:17:29', '', 120, 'http://localhost/wp1/?p=139', 0, 'revision', '', 0),
(140, 1, '2024-05-22 20:18:43', '2024-05-22 18:18:43', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:shortcode -->\n[contact-form-7 id=\"114467c\" title=\"Formularz 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 20:18:43', '2024-05-22 18:18:43', '', 120, 'http://localhost/wp1/?p=140', 0, 'revision', '', 0),
(141, 1, '2024-05-22 20:19:20', '2024-05-22 18:19:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Wyślij wiadomość!</h3>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"114467c\" title=\"Formularz 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 20:19:20', '2024-05-22 18:19:20', '', 120, 'http://localhost/wp1/?p=141', 0, 'revision', '', 0),
(142, 1, '2024-05-22 20:19:32', '2024-05-22 18:19:32', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Skontaktuj się</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Telefon</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">E-mail</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@piekarnia.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Obserwuj na na</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Wyślij wiadomość!</h4>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"114467c\" title=\"Formularz 1\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2024-05-22 20:19:32', '2024-05-22 18:19:32', '', 120, 'http://localhost/wp1/?p=142', 0, 'revision', '', 0),
(143, 1, '2024-05-22 20:41:18', '2024-05-22 18:41:18', '<div class=\"contact-form d-flex flex-wrap mt-4 w-100\">\r\n\r\n<label> Your Name*\r\n    [text* k-name class:mr-3 class:mb-3]\r\n</label>\r\n\r\n<label> Your E-mail*\r\n    [email* k-email class:mb-3]\r\n</label>\r\n\r\n<label> Message*\r\n    [textarea* k-textarea minlength:5 maxlength:500]\r\n</label>\r\n\r\n[quiz quiz-72 \"Which number is bigger? 5 or 2?*|5\"]\r\n\r\n[submit class:btn class:btn class:btn-full class:btn-rounded \"Send a message\"]\r\n\r\n</div>\n1\n[_site_title] - \"[your-subject]\"\n[_site_title] <wp1@example.com>\n[_site_admin_email]\nNadawca: <[k-email]>\r\n\r\nImię i nazwisko:  [k-name]\r\n\r\nTreść wiadomości:\r\n[k-textarea]\r\n\r\n-- \r\nTa wiadomość została wysłana przez formularz kontaktowy na stronie [_site_title] ([_site_url]).\nReply-To: [k-email]\n\n\n\n\n[_site_title] - \"[your-subject]\"\n[_site_title] <wp1@example.com>\n[your-email]\nTreść wiadomości:\r\n[your-message]\r\n\r\n-- \r\nTa wiadomość e-mail jest potwierdzeniem wysłania formularza kontaktowego na naszej stronie internetowej ([_site_title] [_site_url]), w którym użyto Twojego adresu e-mail. Jeśli to nie byłeś Ty, zignoruj tę wiadomość.\nReply-To: [_site_admin_email]\n\n\n\nYour message has been sent. Thank you!\nThere was a problem sending your message. Please try again later.\nAt least one field contains an error. Please check what you entered and try again.\nThere was a problem sending your message. Please try again later.\nYou must agree to the above provisions to be able to submit the form.\nPlease complete this field.\nToo many characters were entered in the field.\nToo few characters were entered in the field.\nAn unknown error occurred while uploading the file.\nYou cannot upload files of this type.\nThe uploaded file is too large.\nAn error occurred while uploading the file.\nEnter the date in the format RRRR-MM-DD.\nThe date selected in this field is too early.\nThe date selected in this field is too late.\nEnter a number.\nToo small a number.\nToo many.\nThe answer to the quiz is incorrect.\nPlease enter your email address.\nPlease enter the URL.\nPlease enter your phone number.', 'Formularz 2', '', 'publish', 'closed', 'closed', '', 'formularz-1_copy', '', '', '2024-05-22 20:46:12', '2024-05-22 18:46:12', '', 0, 'http://localhost/wp1/?post_type=wpcf7_contact_form&#038;p=143', 0, 'wpcf7_contact_form', '', 0),
(144, 1, '2024-05-22 20:42:55', '2024-05-22 18:42:55', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Get In Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Phone</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>+1650-243-0000</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Email</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"mailto:info@bakery.com\">info@bakery.com</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Social Links</h4>\n<!-- /wp:heading -->\n\n<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"x\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:heading {\"level\":4} -->\n<h4 class=\"wp-block-heading\">Send message!</h4>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"137c40f\" title=\"Formularz 2\"]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2024-05-22 20:42:55', '2024-05-22 18:42:55', '', 122, 'http://localhost/wp1/?p=144', 0, 'revision', '', 0),
(147, 1, '2024-05-22 20:49:01', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-05-22 20:49:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?page_id=147', 0, 'page', '', 0),
(148, 1, '2024-05-22 20:49:05', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-05-22 20:49:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?page_id=148', 0, 'page', '', 0),
(156, 1, '2024-05-23 20:09:40', '2024-05-23 18:09:40', '', 'spacejoy', '', 'inherit', 'open', 'closed', '', 'spacejoy', '', '', '2024-05-23 20:09:40', '2024-05-23 18:09:40', '', 0, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2024-05-23 21:03:28', '2024-05-23 19:03:28', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Kim jesteśmy</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost/wp1.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Komentarze</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Ciasteczka</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli skomentujesz coś w witrynie, będzie można wybrać opcję zapisu nazwy, adresu e-mail i witryny internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Osadzone treści z innych witryn</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Z kim dzielimy się danymi</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Jak długo przechowujemy twoje dane</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Jakie masz prawa do swoich danych</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gdzie wysłamy twoje dane</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p>\n<!-- /wp:paragraph -->\n', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-05-23 21:03:28', '2024-05-23 19:03:28', '', 3, 'http://localhost/wp1/?p=161', 0, 'revision', '', 0),
(162, 1, '2024-05-23 21:10:45', '2024-05-23 19:10:45', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2024-05-23 22:15:38', '2024-05-23 20:15:38', '', 0, 'http://localhost/wp1/?page_id=162', 0, 'page', '', 0),
(163, 1, '2024-05-23 21:10:45', '2024-05-23 19:10:45', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2024-05-23 21:10:45', '2024-05-23 19:10:45', '', 162, 'http://localhost/wp1/?p=163', 0, 'revision', '', 0),
(164, 1, '2024-05-23 21:15:16', '2024-05-23 19:15:16', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2024-05-23 22:16:05', '2024-05-23 20:16:05', '', 0, 'http://localhost/wp1/?page_id=164', 0, 'page', '', 0),
(165, 1, '2024-05-23 21:15:16', '2024-05-23 19:15:16', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2024-05-23 21:15:16', '2024-05-23 19:15:16', '', 164, 'http://localhost/wp1/?p=165', 0, 'revision', '', 0),
(166, 1, '2024-05-23 21:15:54', '2024-05-23 19:15:54', '', 'News', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2024-05-23 21:15:54', '2024-05-23 19:15:54', '', 164, 'http://localhost/wp1/?p=166', 0, 'revision', '', 0),
(167, 1, '2024-05-23 21:35:09', '2024-05-23 19:35:09', ' ', '', '', 'publish', 'closed', 'closed', '', '167', '', '', '2024-05-23 21:35:09', '2024-05-23 19:35:09', '', 0, 'http://localhost/wp1/?p=167', 3, 'nav_menu_item', '', 0),
(168, 1, '2024-05-23 21:35:21', '2024-05-23 19:35:21', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2024-05-23 21:35:21', '2024-05-23 19:35:21', '', 0, 'http://localhost/wp1/?p=168', 3, 'nav_menu_item', '', 0),
(170, 1, '2024-05-23 21:35:40', '2024-05-23 19:35:40', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2024-05-23 21:35:40', '2024-05-23 19:35:40', '', 0, 'http://localhost/wp1/?p=170', 3, 'nav_menu_item', '', 0),
(171, 1, '2024-05-23 21:36:23', '2024-05-23 19:36:23', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker</p>\n<!-- /wp:paragraph -->', 'Wpis pierwszy', '', 'publish', 'closed', 'closed', '', 'wpis-pierwszy', '', '', '2024-05-23 21:36:23', '2024-05-23 19:36:23', '', 0, 'http://localhost/wp1/?post_type=blog_pl&#038;p=171', 0, 'blog_pl', '', 0),
(174, 1, '2024-05-23 21:43:05', '2024-05-23 19:43:05', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Hello World!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-05-23 21:43:07', '2024-05-23 19:43:07', '', 0, 'http://localhost/wp1/?p=174', 0, 'post', '', 2),
(175, 1, '2024-05-23 21:43:05', '2024-05-23 19:43:05', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Hello World!', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2024-05-23 21:43:05', '2024-05-23 19:43:05', '', 174, 'http://localhost/wp1/?p=175', 0, 'revision', '', 0),
(176, 1, '2024-05-23 21:43:55', '2024-05-23 19:43:55', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2024-05-23 21:43:55', '2024-05-23 19:43:55', '', 0, 'http://localhost/wp1/?p=176', 3, 'nav_menu_item', '', 0),
(177, 1, '2024-05-23 21:54:50', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-23 21:54:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp1/?p=177', 0, 'post', '', 0),
(178, 1, '2024-05-23 22:14:15', '2024-05-23 20:14:15', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-05-23 22:14:15', '2024-05-23 20:14:15', '', 0, 'http://localhost/wp1/2024/05/23/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(179, 1, '2024-05-23 22:16:02', '2024-05-23 20:16:02', '', 'spacejoy', '', 'inherit', 'open', 'closed', '', 'spacejoy-2', '', '', '2024-05-23 22:16:02', '2024-05-23 20:16:02', '', 164, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2024-05-23 22:16:35', '2024-05-23 20:16:35', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 2!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-2', '', '', '2024-05-23 22:22:51', '2024-05-23 20:22:51', '', 0, 'http://localhost/wp1/?p=180', 0, 'post', '', 0),
(181, 1, '2024-05-23 22:16:35', '2024-05-23 20:16:35', '<!-- wp:paragraph -->\n<p>abc</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 2!', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2024-05-23 22:16:35', '2024-05-23 20:16:35', '', 180, 'http://localhost/wp1/?p=181', 0, 'revision', '', 0),
(182, 1, '2024-05-23 22:22:50', '2024-05-23 20:22:50', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 2!', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2024-05-23 22:22:50', '2024-05-23 20:22:50', '', 180, 'http://localhost/wp1/?p=182', 0, 'revision', '', 0),
(183, 1, '2024-05-24 19:49:18', '2024-05-24 17:49:18', '<!-- wp:paragraph -->\n<p>qweqwe</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 3!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-3', '', '', '2024-05-24 19:49:38', '2024-05-24 17:49:38', '', 0, 'http://localhost/wp1/?p=183', 0, 'post', '', 0),
(184, 1, '2024-05-24 19:49:18', '2024-05-24 17:49:18', '<!-- wp:paragraph -->\n<p>qweqwe</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 3!', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2024-05-24 19:49:18', '2024-05-24 17:49:18', '', 183, 'http://localhost/wp1/?p=184', 0, 'revision', '', 0),
(185, 1, '2024-05-24 19:49:59', '2024-05-24 17:49:59', '<!-- wp:paragraph -->\n<p>asdasd</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 4!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-4', '', '', '2024-05-24 19:50:01', '2024-05-24 17:50:01', '', 0, 'http://localhost/wp1/?p=185', 0, 'post', '', 0),
(186, 1, '2024-05-24 19:49:59', '2024-05-24 17:49:59', '<!-- wp:paragraph -->\n<p>asdasd</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 4!', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2024-05-24 19:49:59', '2024-05-24 17:49:59', '', 185, 'http://localhost/wp1/?p=186', 0, 'revision', '', 0),
(187, 1, '2024-05-24 19:50:22', '2024-05-24 17:50:22', '<!-- wp:paragraph -->\n<p>zxczxc</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 5!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-5', '', '', '2024-05-24 19:50:24', '2024-05-24 17:50:24', '', 0, 'http://localhost/wp1/?p=187', 0, 'post', '', 0),
(188, 1, '2024-05-24 19:50:22', '2024-05-24 17:50:22', '<!-- wp:paragraph -->\n<p>zxczxc</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 5!', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2024-05-24 19:50:22', '2024-05-24 17:50:22', '', 187, 'http://localhost/wp1/?p=188', 0, 'revision', '', 0),
(189, 1, '2024-05-24 19:51:42', '2024-05-24 17:51:42', '<!-- wp:paragraph -->\n<p>qweqwe</p>\n<!-- /wp:paragraph -->', 'Witaj, test 6!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-6', '', '', '2024-05-26 20:11:07', '2024-05-26 18:11:07', '', 0, 'http://localhost/wp1/?p=189', 0, 'post', '', 0),
(190, 1, '2024-05-24 19:51:42', '2024-05-24 17:51:42', '<!-- wp:paragraph -->\n<p>qweqwe</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 6!', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2024-05-24 19:51:42', '2024-05-24 17:51:42', '', 189, 'http://localhost/wp1/?p=190', 0, 'revision', '', 0),
(191, 1, '2024-05-24 19:51:57', '2024-05-24 17:51:57', '<!-- wp:paragraph -->\n<p>ghjghjghj</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 7!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-7', '', '', '2024-05-24 19:51:58', '2024-05-24 17:51:58', '', 0, 'http://localhost/wp1/?p=191', 0, 'post', '', 4),
(192, 1, '2024-05-24 19:51:57', '2024-05-24 17:51:57', '<!-- wp:paragraph -->\n<p>ghjghjghj</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 7!', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2024-05-24 19:51:57', '2024-05-24 17:51:57', '', 191, 'http://localhost/wp1/?p=192', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(193, 1, '2024-05-24 20:33:28', '2024-05-24 18:33:28', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Sample Heading 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Home', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-05-24 20:33:28', '2024-05-24 18:33:28', '', 34, 'http://localhost/wp1/?p=193', 0, 'revision', '', 0),
(194, 1, '2024-05-24 20:33:45', '2024-05-24 18:33:45', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 1</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 2</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">Przykładowy nagłówek 3</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ogólnie znana teza głosi, iż użytkownika może rozpraszać zrozumiała zawartość strony, kiedy ten chce zobaczyć sam jej wygląd. Jedną z mocnych stron używania Lorem Ipsum jest to, że ma wiele różnych „kombinacji” zdań, słów i akapitów, w przeciwieństwie do zwykłego: „tekst, tekst, tekst”, sprawiającego, że wygląda to „zbyt czytelnie” po polsku.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-05-24 20:33:45', '2024-05-24 18:33:45', '', 31, 'http://localhost/wp1/?p=194', 0, 'revision', '', 0),
(195, 1, '2024-05-24 20:34:43', '2024-05-24 18:34:43', '<!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona. Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 8!', '', 'publish', 'open', 'open', '', 'witaj-swiecie-8', '', '', '2024-05-26 20:38:10', '2024-05-26 18:38:10', '', 0, 'http://localhost/wp1/?p=195', 0, 'post', '', 0),
(196, 1, '2024-05-24 20:34:39', '2024-05-24 18:34:39', '', 'tab2', '', 'inherit', 'open', 'closed', '', 'tab2', '', '', '2024-05-24 20:34:39', '2024-05-24 18:34:39', '', 195, 'http://localhost/wp1/wp-content/uploads/2024/05/tab2.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2024-05-24 20:34:43', '2024-05-24 18:34:43', '<!-- wp:paragraph -->\n<p>W przeciwieństwie do rozpowszechnionych opinii, Lorem Ipsum nie jest tylko przypadkowym tekstem. Ma ono korzenie w klasycznej łacińskiej literaturze z 45 roku przed Chrystusem, czyli ponad 2000 lat temu! Richard McClintock, wykładowca łaciny na uniwersytecie Hampden-Sydney w Virginii, przyjrzał się uważniej jednemu z najbardziej niejasnych słów w Lorem Ipsum – consectetur – i po wielu poszukiwaniach odnalazł niezaprzeczalne źródło: Lorem Ipsum pochodzi z fragmentów (1.10.32 i 1.10.33) „de Finibus Bonorum et Malorum”, czyli „O granicy dobra i zła”, napisanej właśnie w 45 p.n.e. przez Cycerona. Jest to bardzo popularna w czasach renesansu rozprawa na temat etyki. Pierwszy wiersz Lorem Ipsum, „Lorem ipsum dolor sit amet...” pochodzi właśnie z sekcji 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie 8!', '', 'inherit', 'closed', 'closed', '', '195-revision-v1', '', '', '2024-05-24 20:34:43', '2024-05-24 18:34:43', '', 195, 'http://localhost/wp1/?p=197', 0, 'revision', '', 0),
(198, 1, '2024-05-26 20:11:05', '2024-05-26 18:11:05', '<!-- wp:paragraph -->\n<p>qweqwe</p>\n<!-- /wp:paragraph -->', 'Witaj, test 6!', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2024-05-26 20:11:05', '2024-05-26 18:11:05', '', 189, 'http://localhost/wp1/?p=198', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_pll_strings_translations', 'a:1:{i:0;a:2:{i:0;s:3:\"WP1\";i:1;s:3:\"WP1\";}}'),
(2, 5, '_pll_strings_translations', 'a:1:{i:0;a:2:{i:0;s:3:\"WP1\";i:1;s:3:\"WP1\";}}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Polski', 'pl', 0),
(3, 'Polski', 'pll_pl', 0),
(4, 'pll_6645016830b18', 'pll_6645016830b18', 0),
(5, 'English', 'en', 0),
(6, 'English', 'pll_en', 0),
(7, 'Bez kategorii', 'bez-kategorii-en', 0),
(9, 'pll_664652c1c98b7', 'pll_664652c1c98b7', 0),
(10, 'pll_664653515db63', 'pll_664653515db63', 0),
(11, 'Menu główne PL', 'menu-glowne-pl', 0),
(12, 'Menu główne EN', 'menu-glowne-en', 0),
(13, 'Menu dolne PL', 'menu-dolne-pl', 0),
(14, 'Menu dolne EN', 'menu-dolne-en', 0),
(15, 'pll_664e335336577', 'pll_664e335336577', 0),
(17, 'pll_664f95c585a0b', 'pll_664f95c585a0b', 0),
(18, 'pll_664f9c4b981d7', 'pll_664f9c4b981d7', 0),
(19, 'twentytwentyfour', 'twentytwentyfour', 0),
(20, 'Nowa kategoria', 'nowa-kategoria', 0),
(21, 'pll_665378dc60d08', 'pll_665378dc60d08', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 18, 0),
(3, 2, 0),
(7, 4, 0),
(7, 6, 0),
(15, 2, 0),
(20, 3, 0),
(20, 21, 0),
(23, 2, 0),
(31, 2, 0),
(31, 9, 0),
(34, 5, 0),
(34, 9, 0),
(36, 2, 0),
(36, 10, 0),
(38, 5, 0),
(38, 10, 0),
(40, 11, 0),
(42, 11, 0),
(43, 12, 0),
(44, 12, 0),
(45, 13, 0),
(46, 13, 0),
(47, 14, 0),
(48, 14, 0),
(50, 2, 0),
(52, 2, 0),
(53, 2, 0),
(80, 1, 0),
(80, 2, 0),
(112, 2, 0),
(115, 5, 0),
(118, 5, 0),
(120, 2, 0),
(120, 15, 0),
(122, 5, 0),
(122, 15, 0),
(124, 11, 0),
(125, 12, 0),
(127, 13, 0),
(128, 14, 0),
(132, 5, 0),
(147, 2, 0),
(148, 5, 0),
(156, 2, 0),
(162, 2, 0),
(162, 17, 0),
(164, 5, 0),
(164, 17, 0),
(167, 11, 0),
(168, 12, 0),
(170, 14, 0),
(174, 5, 0),
(174, 7, 0),
(174, 18, 0),
(176, 13, 0),
(177, 2, 0),
(178, 19, 0),
(179, 5, 0),
(180, 1, 0),
(180, 2, 0),
(183, 1, 0),
(183, 2, 0),
(185, 1, 0),
(185, 2, 0),
(187, 1, 0),
(187, 2, 0),
(189, 1, 0),
(189, 2, 0),
(191, 1, 0),
(191, 2, 0),
(195, 2, 0),
(195, 20, 0),
(196, 2, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'language', 'a:3:{s:6:\"locale\";s:5:\"pl_PL\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"pl\";}', 0, 17),
(3, 3, 'term_language', '', 0, 2),
(4, 4, 'term_translations', 'a:2:{s:2:\"pl\";i:1;s:2:\"en\";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 9),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(9, 9, 'post_translations', 'a:2:{s:2:\"pl\";i:31;s:2:\"en\";i:34;}', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:38;s:2:\"pl\";i:36;}', 0, 2),
(11, 11, 'nav_menu', '', 0, 4),
(12, 12, 'nav_menu', '', 0, 4),
(13, 13, 'nav_menu', '', 0, 4),
(14, 14, 'nav_menu', '', 0, 4),
(15, 15, 'post_translations', 'a:2:{s:2:\"en\";i:122;s:2:\"pl\";i:120;}', 0, 2),
(17, 17, 'post_translations', 'a:2:{s:2:\"en\";i:164;s:2:\"pl\";i:162;}', 0, 2),
(18, 18, 'post_translations', 'a:2:{s:2:\"en\";i:174;s:2:\"pl\";i:1;}', 0, 2),
(19, 19, 'wp_theme', '', 0, 1),
(20, 20, 'category', '', 0, 1),
(21, 21, 'term_translations', 'a:1:{s:2:\"pl\";i:20;}', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '52'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1715803762'),
(20, 1, 'wp_persisted_preferences', 'a:5:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-26T18:37:16.515Z\";s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:23:\"isPublishSidebarEnabled\";b:1;}s:4:\"core\";a:2:{s:10:\"openPanels\";a:8:{i:0;s:14:\"featured-image\";i:1;s:12:\"post-excerpt\";i:2;s:23:\"taxonomy-panel-post_tag\";i:3;s:23:\"taxonomy-panel-category\";i:4;s:11:\"post-status\";i:5;s:15:\"page-attributes\";i:6;s:16:\"discussion-panel\";i:7;s:24:\"yoast-seo/document-panel\";}s:10:\"editorMode\";s:6:\"visual\";}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:19:\"pll_lang_switch_box\";i:1;s:23:\"add-post-type-slider-pl\";i:2;s:23:\"add-post-type-slider-en\";i:3;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '14'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(28, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(29, 1, 'acf_user_settings', 'a:4:{s:19:\"post-type-first-run\";b:1;s:15:\"show_field_keys\";s:1:\"1\";s:24:\"show_field_settings_tabs\";s:1:\"1\";s:20:\"taxonomies-first-run\";b:1;}'),
(30, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:0:\"\";s:6:\"normal\";s:54:\"acf-field-group-fields,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_acf-field-group', '2'),
(32, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(33, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(34, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(35, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}'),
(36, 1, 'wpp_review_notice', '2024-05-26'),
(38, 1, 'session_tokens', 'a:1:{s:64:\"8732fb5ee08a10083ab21abdc1b359ac0b84c7064e8ac066312f6bfe1cf143d3\";a:4:{s:10:\"expiration\";i:1717004349;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36\";s:5:\"login\";i:1716831549;}}'),
(39, 1, 'wfls-last-login', '1716831549'),
(40, 1, '_yoast_wpseo_profile_updated', '1716831642'),
(41, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.9\";}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BAVKVXYUuYUzakSpCegdRvun5bzioG/', 'admin', 'wp1@example.com', 'http://localhost/wp1', '2024-05-13 18:50:53', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3a3a31, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminNoticeQueue', 0x613a313a7b733a33363a2239313438313263392d313662342d343561352d383136342d323634323533646464633139223b613a343a7b733a383a227365766572697479223b733a383a22637269746963616c223b733a31313a226d65737361676548544d4c223b733a3538393a223c7374726f6e673e5741524e494e473a203c2f7374726f6e673e596f7572206c6f67696e20686173206265656e20616c6c6f776564206265636175736520796f7520686176652070726576696f75736c79206c6f6767656420696e2066726f6d207468652073616d652049502c2062757420796f752077696c6c20626520626c6f636b656420696620796f7572204950206368616e6765732e205468652070617373776f726420796f7520617265207573696e6720657869737473206f6e206c69737473206f662070617373776f726473206c65616b656420696e20646174612062726561636865732e2041747461636b657273207573652073756368206c6973747320746f20627265616b20696e746f20736974657320616e6420696e7374616c6c206d616c6963696f757320636f64652e20506c65617365203c6120687265663d22687474703a2f2f6c6f63616c686f73742f7770312f77702d61646d696e2f70726f66696c652e706870223e6368616e676520796f75722070617373776f72643c2f613e2e203c6120687265663d2268747470733a2f2f7777772e776f726466656e63652e636f6d2f68656c702f3f71756572793d7573696e672d6272656163682d70617373776f726422207461726765743d225f626c616e6b222072656c3d226e6f6f70656e6572206e6f7265666572726572223e4c6561726e204d6f72653c7370616e20636c6173733d2273637265656e2d7265616465722d74657874223e20286f747769657261207369c4992077206e6f77656a206b6172636965293c2f7370616e3e3c2f613e223b733a383a2263617465676f7279223b733a32343a2270726576696f7573495042726561636850617373776f7264223b733a353a227573657273223b613a313a7b693a303b693a313b7d7d7d, 'yes'),
('adminUserList', 0x623a303b, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', '', 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', 0x333030, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x36363533383035303365616131, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2232653730383131383164643961613932366566393337363962366332623234303336376565643238663133326539343832306537633536353363643762396431223b7d, 'no'),
('dbVersion', 0x31302e342e33322d4d617269614442, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', '', 'yes'),
('detectProxyNextCheck', 0x31373137333533313637, 'no'),
('detectProxyNonce', 0x65623165313439633337613266383333333637356539373339336331313132646564643131383361626264663137356266313337633639313161616537356265, 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x30, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('enableRemoteIpLookup', 0x31, 'yes'),
('encKey', 0x36383833373633646430653466383061, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('hasKeyConflict', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('howGetIPs_trusted_proxy_preset', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a313b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a32353a224d6f6e2032377468204d617920402030373a33393a3039504d223b733a323a224950223b733a333a223a3a31223b7d, 'yes'),
('lastBlockAggregation', 0x31373136373438333636, 'yes'),
('lastDailyCron', 0x31373136373438333934, 'yes'),
('lastPermissionsTemplateCheck', 0x31373136383331353431, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableApplicationPasswords', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', 0x63623631336535343465343237666537333164393130343233353264613434656432373861356536656237616437303534336564343663383831383735336335, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', 0x736b6970706564, 'yes'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x31, 'yes'),
('onboardingDelayedAt', 0x31373136373438343832, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('previousWflogsFileList', 0x5b222e6874616363657373222c2261747461636b2d646174612e706870222c22636f6e6669672d6c6976657761662e706870222c22636f6e6669672d73796e6365642e706870222c22636f6e6669672d7472616e7369656e742e706870222c22636f6e6669672e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c226970732e706870222c2272756c65732e706870222c2274656d706c6174652e706870225d, 'yes'),
('satisfactionPromptDismissed', 0x30, 'yes'),
('satisfactionPromptInstallDate', 0x31373136373438333636, 'yes'),
('satisfactionPromptOverride', 0x31, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_force_ipv4_start', 0x30, 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_max_resume_attempts', 0x32, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x34, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b7d, 'no'),
('supportHash', '', 'no'),
('timeoffset_wf', 0x30, 'yes'),
('timeoffset_wf_updated', 0x31373136373438333936, 'yes'),
('totalAlertsSent', 0x32, 'yes'),
('totalLoginHits', 0x37, 'yes'),
('totalLogins', 0x31, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', 0x31, 'yes'),
('vulnerabilities_plugin', 0x613a383a7b693a303b613a333a7b733a343a22736c7567223b733a32323a22616476616e6365642d637573746f6d2d6669656c6473223b733a31313a2266726f6d56657273696f6e223b733a353a22362e332e30223b733a31303a2276756c6e657261626c65223b623a303b7d693a313b613a333a7b733a343a22736c7567223b733a31343a22636f6e746163742d666f726d2d37223b733a31313a2266726f6d56657273696f6e223b733a353a22352e392e35223b733a31303a2276756c6e657261626c65223b623a303b7d693a323b613a333a7b733a343a22736c7567223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a31313a2266726f6d56657273696f6e223b733a363a22312e31362e30223b733a31303a2276756c6e657261626c65223b623a303b7d693a333b613a333a7b733a343a22736c7567223b733a383a22706f6c796c616e67223b733a31313a2266726f6d56657273696f6e223b733a353a22332e362e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a343b613a333a7b733a343a22736c7567223b733a31343a2277332d746f74616c2d6361636865223b733a31313a2266726f6d56657273696f6e223b733a353a22322e372e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a353b613a333a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a363a22372e31312e35223b733a31303a2276756c6e657261626c65223b623a303b7d693a363b613a333a7b733a343a22736c7567223b733a31313a2277702d706167656e617669223b733a31313a2266726f6d56657273696f6e223b733a363a22322e39342e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a373b613a333a7b733a343a22736c7567223b733a31333a22776f726470726573732d73656f223b733a31313a2266726f6d56657273696f6e223b733a343a2232322e37223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 0x6c6561726e696e672d6d6f6465, 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('whitelistHash', '', 'no'),
('whitelistPresets', 0x7b7d, 'no'),
('wordfenceI18n', 0x31, 'yes'),
('wordpressPluginVersions', 0x613a383a7b733a32323a22616476616e6365642d637573746f6d2d6669656c6473223b733a353a22362e332e30223b733a31343a22636f6e746163742d666f726d2d37223b733a353a22352e392e35223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a363a22312e31362e30223b733a383a22706f6c796c616e67223b733a353a22332e362e31223b733a31343a2277332d746f74616c2d6361636865223b733a353a22322e372e32223b733a393a22776f726466656e6365223b733a363a22372e31312e35223b733a31313a2277702d706167656e617669223b733a363a22322e39342e31223b733a31333a22776f726470726573732d73656f223b733a343a2232322e37223b7d, 'yes'),
('wordpressThemeVersions', 0x613a343a7b733a31303a22666f75727479666f7572223b733a333a22312e31223b733a31363a227477656e74797477656e7479666f7572223b733a333a22312e31223b733a31373a227477656e74797477656e74797468726565223b733a333a22312e34223b733a31353a227477656e74797477656e747974776f223b733a333a22312e37223b7d, 'yes'),
('wordpressVersion', 0x362e352e33, 'yes'),
('wp_home_url', 0x687474703a2f2f6c6f63616c686f73742f777031, 'yes'),
('wp_site_url', 0x687474703a2f2f6c6f63616c686f73742f777031, 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfhits`
--

INSERT INTO `wp_wfhits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1716751319.716263, 0x00000000000000000000000000000001, 1, 200, 0, 1, 0, 'http://localhost/wp1/wp-login.php?action=logout&_wpnonce=cbbaeb13fa', 'http://localhost/wp1/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(2, 0.000000, 1716831548.006723, 0x00000000000000000000000000000001, 0, 302, 0, 1, 0, 'http://localhost/wp1/wp-login.php', 'http://localhost/wp1/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'loginOK', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wflogins`
--

INSERT INTO `wp_wflogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, 1716751320.035353, 0, 'logout', 'admin', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36'),
(2, 2, 1716831549.533852, 0, 'loginOK', 'admin', 1, 0x00000000000000000000000000000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfls_role_counts`
--

CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('2fa-user-grace-period', 0x3130, 'yes'),
('allow-disabling-ntp', 0x31, 'yes'),
('allow-xml-rpc', 0x31, 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('disable-temporary-tables', 0x30, 'yes'),
('enable-auth-captcha', '', 'yes'),
('enable-login-history-columns', 0x31, 'yes'),
('enable-shortcode', '', 'yes'),
('enable-woocommerce-account-integration', '', 'yes'),
('enable-woocommerce-integration', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31373136373438333636, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('schema-version', 0x32, 'yes'),
('shared-hash-secret', 0x35363036616230626539323362663038613061623835386365306563613233333732303162393536616538633938633139336534616431643263346561643465, 'yes'),
('shared-symmetric-secret', 0x39653836303233343036313130366365633262383262393935346233663536613965343335343635646565663161366265333332376234646439306530343862, 'yes'),
('stack-ui-columns', 0x31, 'yes'),
('user-count-query-state', 0x30, 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfsecurityevents`
--

CREATE TABLE `wp_wfsecurityevents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `event_time` double(14,4) NOT NULL,
  `state` enum('new','sending','sent') NOT NULL DEFAULT 'new',
  `state_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wftrafficrates`
--

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wfwaffailures`
--

CREATE TABLE `wp_wfwaffailures` (
  `id` int(10) UNSIGNED NOT NULL,
  `throwable` text NOT NULL,
  `rule_id` int(10) UNSIGNED DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlautoresponderemails`
--

CREATE TABLE `wp_wpmlautoresponderemails` (
  `id` int(11) NOT NULL,
  `autoresponder_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `senddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('sent','unsent') NOT NULL DEFAULT 'unsent',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlautoresponders`
--

CREATE TABLE `wp_wpmlautoresponders` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `history_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `sendauto` int(1) NOT NULL DEFAULT 1,
  `delay` int(11) NOT NULL DEFAULT 0,
  `delayinterval` varchar(50) NOT NULL DEFAULT 'days',
  `applyexisting` enum('Y','N') NOT NULL DEFAULT 'N',
  `alwayssend` enum('Y','N') NOT NULL DEFAULT 'N',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlautorespondersforms`
--

CREATE TABLE `wp_wpmlautorespondersforms` (
  `id` int(11) NOT NULL,
  `autoresponder_id` int(11) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlautoresponderslists`
--

CREATE TABLE `wp_wpmlautoresponderslists` (
  `rel_id` int(11) NOT NULL,
  `autoresponder_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlbounces`
--

CREATE TABLE `wp_wpmlbounces` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `status` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlclicks`
--

CREATE TABLE `wp_wpmlclicks` (
  `id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL DEFAULT 0,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `history_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `device` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlcontents`
--

CREATE TABLE `wp_wpmlcontents` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlcountries`
--

CREATE TABLE `wp_wpmlcountries` (
  `id` int(11) NOT NULL,
  `value` varchar(150) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  `isocode` varchar(20) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmlcountries`
--

INSERT INTO `wp_wpmlcountries` (`id`, `value`, `code`, `isocode`, `created`, `modified`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '&Aring;land Islands', 'AX', 'ALA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Albania', 'AL', 'ALB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Algeria', 'DZ', 'DZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'American Samoa', 'AS', 'ASM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Andorra', 'AD', 'AND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', 'AGO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', 'AIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', 'ATA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', 'ATG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', 'ARG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', 'ARM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', 'ABW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', 'AUS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', 'AUT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', 'AZE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', 'BHS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', 'BHR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', 'BGD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', 'BRB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', 'BLR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', 'BEL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', 'BLZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', 'BEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', 'BMU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', 'BTN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia', 'BO', 'BOL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bosnia and Herzegovina', 'BA', 'BIH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Botswana', 'BW', 'BWA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Bouvet Island', 'BV', 'BVT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Brazil', 'BR', 'BRA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'British Indian Ocean territory', 'IO', 'IOT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Brunei Darussalam', 'BN', 'BRN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Bulgaria', 'BG', 'BGR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Burkina Faso', 'BF', 'BFA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burundi', 'BI', 'BDI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Cambodia', 'KH', 'KHM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cameroon', 'CM', 'CMR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Canada', 'CA', 'CAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cape Verde', 'CV', 'CPV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Cayman Islands', 'KY', 'CYM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Central African Republic', 'CF', 'CAF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Chad', 'TD', 'TCD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chile', 'CL', 'CHL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'China', 'CN', 'CHN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Christmas Island', 'CX', 'CXR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Cocos (Keeling) Islands', 'CC', 'CCK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Colombia', 'CO', 'COL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Comoros', 'KM', 'COM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Congo', 'CG', 'COG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo The Democratic Republic', 'CD', 'COD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', 'COK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', 'CRI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'C&ocirc;te d\'Ivoire (Ivory Coast)', 'CI', 'CIV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia (Hrvatska)', 'HR', 'HRV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', 'CUB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Cyprus', 'CY', 'CYP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Czech Republic', 'CZ', 'CZE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Denmark', 'DK', 'DNK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Djibouti', 'DJ', 'DJI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Dominica', 'DM', 'DMA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominican Republic', 'DO', 'DOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'East Timor', 'TL', 'ETL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', 'ECU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', 'EGY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', 'SLV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', 'GNQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', 'ERI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', 'EST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', 'ETH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands', 'FK', 'FLK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', 'FRO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', 'FJI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', 'FIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', 'FRA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', 'GUF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', 'PYF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', 'ATF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', 'GAB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', 'GMB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', 'GEO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', 'DEU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', 'GHA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', 'GIB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', 'GRC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', 'GRL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', 'GRD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', 'GLP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', 'GUA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', 'GTM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guinea', 'GN', 'GIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea-Bissau', 'GW', 'GNB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guyana', 'GY', 'GUY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Haiti', 'HY', 'HTI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Heard and McDonald Islands', 'HM', 'HMD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Honduras', 'HN', 'HND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Hong Kong', 'HK', 'HKG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Hungary', 'HU', 'HUN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Iceland', 'IS', 'ISL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'India', 'IN', 'IND', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Indonesia', 'ID', 'IDN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Iran', 'IR', 'IRN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Iraq', 'IQ', 'IRQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Ireland', 'IE', 'IRL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Israel', 'IL', 'ISR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Italy', 'IT', 'ITA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Jamaica', 'JM', 'JAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Japan', 'JP', 'JAP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Jordan', 'JO', 'JOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Kazakhstan', 'KZ', 'KAZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Kenya', 'KE', 'KEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Kiribati', 'KI', 'KIR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Korea (north)', 'KP', 'PRK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Korea (south)', 'KR', 'KOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kuwait', 'KW', 'KWT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kyrgyzstan', 'KG', 'KGZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Latvia', 'LV', 'LVA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Lebanon', 'LB', 'LBN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Lesotho', 'LS', 'LSO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Liberia', 'LR', 'LBR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Liechtenstein', 'LI', 'LIE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lithuania', 'LT', 'LTU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Luxembourg', 'LU', 'LUX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Macao', 'MO', 'MAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Macedonia', 'MK', 'MKD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Madagascar', 'MG', 'MDG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Malawi', 'MW', 'MWI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Malaysia', 'MY', 'MYS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Maldives', 'MV', 'MDV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Mali', 'ML', 'MLI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malta', 'MT', 'MLT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Marshall Islands', 'MH', 'MHL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Martinique', 'MQ', 'MTQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mauritania', 'MR', 'MRT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Mauritius', 'MU', 'MUS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Mayotte', 'YT', 'MYT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Mexico', 'MX', 'MEX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Micronesia', 'FM', 'FSM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Moldova', 'MD', 'MDA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Monaco', 'MC', 'MCO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mongolia', 'MN', 'MNG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Montserrat', 'MS', 'MSR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Morocco', 'MA', 'MAR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Mozambique', 'MZ', 'MOZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Myanmar', 'MM', 'MMR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Namibia', 'NA', 'NAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Nauru', 'NR', 'NAU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Nepal', 'NP', 'NPL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Netherlands', 'NL', 'NLD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Netherlands Antilles', 'AN', 'ANT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'New Caledonia', 'NC', 'NCL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'New Zealand', 'NZ', 'NZL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nicaragua', 'NI', 'NIC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Niger', 'NE', 'NER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Nigeria', 'NG', 'NGA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Niue', 'NU', 'NIU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Norfolk Island', 'NF', 'NFK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Northern Mariana Islands', 'MP', 'MNP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Norway', 'NO', 'NOR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Oman', 'OM', 'OMN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Pakistan', 'PK', 'PAK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Palau', 'PW', 'PLW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Palestinian Territories', 'PS', 'PSE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Panama', 'PA', 'PAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Papua New Guinea', 'PG', 'PNG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Paraguay', 'PY', 'PRY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Peru', 'PE', 'PER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Philippines', 'PH', 'PHL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Pitcairn', 'PN', 'PCN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Poland', 'PL', 'POL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Portugal', 'PT', 'PRT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Puerto Rico', 'PR', 'PRI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Qatar', 'QA', 'QAT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'R&eacute;union', 'RE', 'REU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Romania', 'RO', 'ROU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Russia', 'RU', 'RUS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Rwanda', 'RW', 'RWA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Saint Helena', 'SH', 'SHN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Saint Kitts and Nevis', 'KN', 'KNA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Saint Lucia', 'LC', 'LCA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Saint Pierre and Miquelon', 'PM', 'SPM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Samoa', 'WS', 'WSM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'San Marino', 'SM', 'SMR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Sao Tome and Principe', 'ST', 'STP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saudi Arabia', 'SA', 'SAU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Senegal', 'SN', 'SEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Serbia and Montenegro', 'RS', 'SRB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Seychelles', 'SC', 'SYC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Sierra Leone', 'SL', 'SLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Singapore', 'SG', 'SGP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Slovakia', 'SK', 'SVK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Slovenia', 'SI', 'SVN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Solomon Islands', 'SB', 'SLB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Somalia', 'SO', 'SOM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'South Africa', 'ZA', 'ZAF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Spain', 'ES', 'ESP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Sri Lanka', 'LK', 'LKA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Sudan', 'SD', 'SDN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Suriname', 'SR', 'SUR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Swaziland', 'SZ', 'SWZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Sweden', 'SE', 'SWE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Switzerland', 'CH', 'CHE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Syrian Arab Republic', 'SY', 'SYR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Taiwan', 'TW', 'TWN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Tajikistan', 'TJ', 'TJK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Tanzania', 'TZ', 'TZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Thailand', 'TH', 'THA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Togo', 'TG', 'TGO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Tokelau', 'TK', 'TKL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Tonga', 'TO', 'TON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Trinidad and Tobago', 'TT', 'TTO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Tunisia', 'TN', 'TUN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Turkey', 'TR', 'TUR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Turkmenistan', 'TM', 'TKM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Turks and Caicos Islands', 'TC', 'TCA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Tuvalu', 'TV', 'TUV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Uganda', 'UG', 'UGA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Ukraine', 'UA', 'UKR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'United Arab Emirates', 'AE', 'ARE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'United Kingdom', 'GB', 'GBR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'United States', 'US', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Uruguay', 'UY', 'URY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Uzbekistan', 'UZ', 'UZB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Vanuatu', 'VU', 'VUT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Vatican City', 'VA', 'VAT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Venezuela', 'VE', 'VEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Vietnam', 'VN', 'VNM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Virgin Islands (British)', 'VG', 'VGB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Virgin Islands (US)', 'VI', 'VIR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Wallis and Futuna Islands', 'WF', 'WLF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Western Sahara', 'EH', 'ESH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Yemen', 'YE', 'YEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Zambia', 'ZM', 'ZMB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Zimbabwe', 'ZW', 'ZWE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Jersey', 'JE', 'JEY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Guernsey', 'GG', 'GGY', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlemails`
--

CREATE TABLE `wp_wpmlemails` (
  `id` int(11) NOT NULL,
  `eunique` varchar(32) NOT NULL DEFAULT '',
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `mailinglist_id` int(11) NOT NULL DEFAULT 0,
  `mailinglists` text NOT NULL,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `owner_role` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `read` enum('Y','N') NOT NULL DEFAULT 'N',
  `read_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `device` varchar(100) NOT NULL DEFAULT '',
  `status` enum('sent','unsent') NOT NULL DEFAULT 'unsent',
  `messageid` varchar(255) NOT NULL DEFAULT '',
  `bounced` enum('Y','N') NOT NULL DEFAULT 'N',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlfields`
--

CREATE TABLE `wp_wpmlfields` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `caption` text NOT NULL,
  `watermark` text NOT NULL,
  `slug` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `hidden_type` varchar(100) NOT NULL DEFAULT '',
  `hidden_value` text NOT NULL,
  `fieldoptions` text NOT NULL,
  `filetypes` text NOT NULL,
  `filesizelimit` text NOT NULL,
  `required` enum('Y','N') NOT NULL DEFAULT 'Y',
  `errormessage` text NOT NULL,
  `invalidmessage` text NOT NULL,
  `display` enum('always','specific') NOT NULL DEFAULT 'specific',
  `validation` text NOT NULL,
  `regex` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmlfields`
--

INSERT INTO `wp_wpmlfields` (`id`, `title`, `caption`, `watermark`, `slug`, `type`, `hidden_type`, `hidden_value`, `fieldoptions`, `filetypes`, `filesizelimit`, `required`, `errormessage`, `invalidmessage`, `display`, `validation`, `regex`, `order`, `created`, `modified`) VALUES
(1, '[:pl]Email Address[:en]Email Address', '', '[:pl]email@domain.com[:en]email@domain.com', 'email', 'text', '', '', '', '', '', 'Y', '[:pl]Please fill in your email address[:en]Please fill in your email address', '', 'always', '', '', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(2, '[:pl]Mailing List[:en]Mailing List', '', '', 'list', 'special', '', '', '', '', '', 'Y', '[:pl]Please select a list[:en]Please select a list', '', 'always', '', '', 1, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(3, '[:pl]Consent[:en]Consent', '[:pl]Give consent that we may collect and use your data.[:en]Give consent that we may collect and use your data.', '', 'consent', 'checkbox', '', '', 'a:1:{i:0;s:154:\"[:pl]I give WP1 permission to collect and use my data submitted in this form.[:en]I give WP1 permission to collect and use my data submitted in this form.\";}', '', '', 'Y', '[:pl]Please give consent[:en]Please give consent', '', 'always', 'notempty', '', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlfieldsforms`
--

CREATE TABLE `wp_wpmlfieldsforms` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `caption` text NOT NULL,
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `required` int(1) NOT NULL DEFAULT 0,
  `errormessage` varchar(255) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlfieldslists`
--

CREATE TABLE `wp_wpmlfieldslists` (
  `rel_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `special` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmlfieldslists`
--

INSERT INTO `wp_wpmlfieldslists` (`rel_id`, `field_id`, `list_id`, `special`, `order`) VALUES
(1, 1, 0, '', 0),
(2, 1, 0, 'email', 0),
(3, 2, 0, '', 0),
(4, 2, 0, 'list', 0),
(5, 3, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlforms`
--

CREATE TABLE `wp_wpmlforms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ajax` int(1) NOT NULL DEFAULT 0,
  `scroll` int(1) NOT NULL DEFAULT 0,
  `buttontext` text NOT NULL,
  `confirmationtype` varchar(100) NOT NULL DEFAULT 'message',
  `confirmation_message` text NOT NULL,
  `confirmation_redirect` text NOT NULL,
  `styling` text NOT NULL,
  `styling_beforeform` text NOT NULL,
  `styling_afterform` text NOT NULL,
  `styling_customcss` text NOT NULL,
  `captcha` int(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlgroups`
--

CREATE TABLE `wp_wpmlgroups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlhistoriesattachments`
--

CREATE TABLE `wp_wpmlhistoriesattachments` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `history_id` int(11) NOT NULL DEFAULT 0,
  `filename` text NOT NULL,
  `subdir` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlhistorieslists`
--

CREATE TABLE `wp_wpmlhistorieslists` (
  `id` int(11) NOT NULL,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlhistory`
--

CREATE TABLE `wp_wpmlhistory` (
  `id` int(11) NOT NULL,
  `from` varchar(150) NOT NULL DEFAULT '',
  `fromname` varchar(150) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `text` longtext NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT '',
  `preheader` varchar(100) NOT NULL DEFAULT '',
  `spamscore` varchar(20) NOT NULL DEFAULT '',
  `mailinglists` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `state` varchar(50) NOT NULL DEFAULT 'created',
  `groups` text NOT NULL,
  `roles` text NOT NULL,
  `theme_id` int(11) NOT NULL DEFAULT 0,
  `condquery` text NOT NULL,
  `conditions` text NOT NULL,
  `conditionsscope` varchar(50) NOT NULL DEFAULT 'all',
  `daterange` enum('Y','N') NOT NULL DEFAULT 'N',
  `daterangefrom` varchar(50) NOT NULL DEFAULT '',
  `daterangeto` varchar(50) NOT NULL DEFAULT '',
  `countries` int(1) NOT NULL DEFAULT 0,
  `selectedcountries` text NOT NULL,
  `sent` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `p_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `senddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recurring` enum('Y','N') NOT NULL DEFAULT 'N',
  `recurringvalue` int(11) NOT NULL DEFAULT 0,
  `recurringinterval` varchar(20) NOT NULL DEFAULT '',
  `recurringdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recurringlimit` int(11) NOT NULL DEFAULT 0,
  `recurringsent` int(11) NOT NULL DEFAULT 0,
  `scheduled` enum('Y','N') NOT NULL DEFAULT 'N',
  `format` enum('html','text') NOT NULL DEFAULT 'html',
  `builderon` int(1) NOT NULL DEFAULT 0,
  `grapejs_content` longtext DEFAULT NULL,
  `using_grapeJS` int(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmllatestposts`
--

CREATE TABLE `wp_wpmllatestposts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `lps_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmllatestpostssubscriptions`
--

CREATE TABLE `wp_wpmllatestpostssubscriptions` (
  `id` int(11) NOT NULL,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `minnumber` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `preface` enum('Y','N') NOT NULL DEFAULT 'N',
  `language` varchar(20) NOT NULL DEFAULT '',
  `takefrom` varchar(100) NOT NULL DEFAULT 'categories',
  `posttypes` text NOT NULL,
  `categories` text NOT NULL,
  `groupbycategory` enum('Y','N') NOT NULL DEFAULT 'N',
  `exclude` text NOT NULL,
  `order` varchar(100) NOT NULL DEFAULT '',
  `orderby` varchar(100) NOT NULL DEFAULT '',
  `olderthan` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lists` text NOT NULL,
  `startdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `interval` varchar(50) NOT NULL DEFAULT '',
  `theme_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmllinks`
--

CREATE TABLE `wp_wpmllinks` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `hash` text NOT NULL,
  `used` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlmailinglists`
--

CREATE TABLE `wp_wpmlmailinglists` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `default` int(1) NOT NULL DEFAULT 0,
  `privatelist` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid` enum('Y','N') NOT NULL DEFAULT 'N',
  `price` float NOT NULL DEFAULT 0,
  `tcoproduct` int(11) NOT NULL DEFAULT 0,
  `interval` enum('daily','weekly','monthly','2months','3months','biannually','9months','yearly','once') NOT NULL DEFAULT 'monthly',
  `maxperinterval` int(11) NOT NULL DEFAULT 0,
  `group_id` int(11) NOT NULL DEFAULT 0,
  `doubleopt` enum('Y','N') NOT NULL DEFAULT 'Y',
  `adminemail` varchar(100) NOT NULL DEFAULT '',
  `subredirect` text NOT NULL,
  `redirect` text NOT NULL,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `owner_role` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmlmailinglists`
--

INSERT INTO `wp_wpmlmailinglists` (`id`, `title`, `slug`, `default`, `privatelist`, `paid`, `price`, `tcoproduct`, `interval`, `maxperinterval`, `group_id`, `doubleopt`, `adminemail`, `subredirect`, `redirect`, `owner_id`, `owner_role`, `created`, `modified`) VALUES
(1, '', '', 0, 'N', 'N', 0, 0, '', 0, 0, 'N', '', '', '', 1, 'administrator', '2024-05-22 16:26:33', '2024-05-22 16:26:33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmloptions`
--

CREATE TABLE `wp_wpmloptions` (
  `id` int(11) NOT NULL,
  `value` text NOT NULL,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmloptions`
--

INSERT INTO `wp_wpmloptions` (`id`, `value`, `field_id`, `order`, `created`, `modified`) VALUES
(1, '[:pl]I give WP1 permission to collect and use my data submitted in this form.[:en]I give WP1 permission to collect and use my data submitted in this form.', 3, 0, '2024-05-22 16:26:29', '2024-05-22 16:26:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlorders`
--

CREATE TABLE `wp_wpmlorders` (
  `id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `completed` enum('Y','N') NOT NULL DEFAULT 'N',
  `amount` float NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `pmethod` enum('pp','2co') NOT NULL DEFAULT 'pp',
  `reference` varchar(250) NOT NULL DEFAULT '',
  `subref` varchar(250) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlposts`
--

CREATE TABLE `wp_wpmlposts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `sent` enum('Y','N') NOT NULL DEFAULT 'N',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlsubscribermetas`
--

CREATE TABLE `wp_wpmlsubscribermetas` (
  `id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlsubscribers`
--

CREATE TABLE `wp_wpmlsubscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL DEFAULT '',
  `registered` enum('Y','N') NOT NULL DEFAULT 'N',
  `ip_address` varchar(20) NOT NULL DEFAULT '',
  `country` varchar(20) NOT NULL DEFAULT '',
  `referer` varchar(200) NOT NULL DEFAULT '',
  `is_active` enum('Y','N') NOT NULL DEFAULT 'N',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `owner_role` varchar(100) NOT NULL DEFAULT '',
  `emailssent` int(11) NOT NULL DEFAULT 0,
  `format` enum('html','text') NOT NULL DEFAULT 'html',
  `cookieauth` text NOT NULL,
  `authkey` varchar(32) NOT NULL DEFAULT '',
  `authinprog` enum('Y','N') NOT NULL DEFAULT 'N',
  `password` varchar(32) NOT NULL DEFAULT '',
  `bouncecount` int(1) NOT NULL DEFAULT 0,
  `mandatory` enum('Y','N') NOT NULL DEFAULT 'N',
  `device` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list` text NOT NULL,
  `consent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlsubscriberslists`
--

CREATE TABLE `wp_wpmlsubscriberslists` (
  `rel_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `list_id` int(11) NOT NULL DEFAULT 0,
  `active` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid` enum('Y','N') NOT NULL DEFAULT 'N',
  `authkey` varchar(32) NOT NULL DEFAULT '',
  `authinprog` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiry_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_id` int(11) NOT NULL DEFAULT 0,
  `ppsubscription` enum('Y','N') NOT NULL DEFAULT 'N',
  `paid_sent` int(11) NOT NULL DEFAULT 0,
  `reminded` int(11) NOT NULL DEFAULT 0,
  `form_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlsubscribersoptions`
--

CREATE TABLE `wp_wpmlsubscribersoptions` (
  `id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL DEFAULT 0,
  `field_id` int(11) NOT NULL DEFAULT 0,
  `option_id` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmltemplates`
--

CREATE TABLE `wp_wpmltemplates` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `theme_id` int(11) NOT NULL DEFAULT 0,
  `sent` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlthemes`
--

CREATE TABLE `wp_wpmlthemes` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `premade` enum('Y','N') NOT NULL DEFAULT 'N',
  `type` enum('upload','paste','builder') NOT NULL DEFAULT 'paste',
  `content` longtext NOT NULL,
  `def` enum('Y','N') NOT NULL DEFAULT 'N',
  `defsystem` enum('Y','N') NOT NULL DEFAULT 'N',
  `acolor` varchar(20) NOT NULL DEFAULT '#333333',
  `themestylesheet` int(1) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmlthemes`
--

INSERT INTO `wp_wpmlthemes` (`id`, `title`, `name`, `premade`, `type`, `content`, `def`, `defsystem`, `acolor`, `themestylesheet`, `created`, `modified`) VALUES
(1, 'Blue Retro', 'blueretro', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body {margin:0; padding:0;}\r\n			img {border:0; outline:none; text-decoration:none;}\r\n			table td {border-collapse:collapse;}\r\n			\r\n			h1, .h1{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			div{\r\n				color:#666666 !important;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n   </style>\r\n</head>\r\n    <body style=\"background-color:#E6E6E6;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" id=\"backgroundTable\" style=\"margin:  auto; background:#E6E6E6; width: 100%; max-width: 580px;\" >\r\n	<tbody>\r\n            	<tr>\r\n		<td align=\"center\" valign=\"top\"><!-- BEGIN TOP SECTION -->\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#F4EED8;width: 100%; max-width: 580px;\" >\r\n\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n						<table border=\"0\" cellspacing=\"0\" style=\"width: 100%; max-width: 580px; \">\r\n\r\n                                    	<tr>\r\n								<td valign=\"top\" style=\"padding: 15px;\">\r\n                                            	<div style=\"color:#333; font-size:11px; line-height:18px; font-family:Helvetica, Arial, sans-serif;\">\r\n                                                	<center>\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.<br />\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n													</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n						\r\n			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"background:#F4EED8; width: 100%; max-width: 580px;\" ><!-- BEGIN HEADER SECTION -->\r\n\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\" style=\"background:#4BABC5\">\r\n						<img src=\"[newsletters_pluginurl]/includes/themes/blueretro/images/header.gif\" style=\"width: 100%; max-width: 580px; object-fit:  contain; height: 90px;\"alt=\"ABC Widgets\" />\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\">\r\n						<table border=\"0\" cellpadding=\"۰\" cellspacing=\"0\" style=\"width: 100%; max-width: 580px;\">\r\n                                    	<tr>\r\n								<td valign=\"top\" style=\"padding: 20px;\">\r\n                                            	<div style=\"color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">\r\n													<p>[newsletters_date]</p>\r\n													<h3 style=\"color:#333; font-size:26px;\">[newsletters_subject]</h3>\r\n													[newsletters_main_content]\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							\r\n							<!-- BEGIN SEPARATOR IMAGE -->\r\n							<tr>\r\n								<td valign=\"top\">\r\n						<table border=\"0\" cellspacing=\"0\" style=\"width: 100%; max-width: 580px;\">\r\n										<tr>\r\n											<td align=\"center\" valign=\"bottom\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/blueretro/images/hr-big.gif\" style=\"width: 100%; max-width: 550px;\" />\r\n											</td>\r\n										</tr>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n							<!-- END SEPARATOR IMAGE -->\r\n							\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"   style=\"width: 100%; max-width: 580px;\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:11px; font-family:Helvetica, Arial, sans-serif; text-align:center;\">\r\n													<p>Copyright &copy; <span style=\"font-weight: bold;\">[newsletters_blogname]</span> [newsletters_date format=\"%Y\"].</p>\r\n													<p><a href=\"[newsletters_siteurl]\">[newsletters_blogname]</a></p>\r\n													<br />\r\n										&nbsp;</div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n                        </table>\r\n						<!-- END CONTENT SECTION -->\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(2, 'Getaway', 'getaway', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body {margin:0; padding:0;}\r\n			img {border:0; outline:none; text-decoration:none;}\r\n			table td {border-collapse:collapse;}\r\n			\r\n			h1, .h1{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			div{\r\n				color:#666666 !important;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n   </style>\r\n\r\n</head>\r\n    <body style=\"background-color:#D7CFB8;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#D7CFB8;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#F4EED8;\">\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:11px; line-height:18px; font-family:Helvetica, Arial, sans-serif;\">\r\n                                                	<center>\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.\r\n														</p>\r\n														<p>\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n													</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#F4EED8;\">\r\n						\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/getaway/images/header.gif\" width=\"550\" height=\"77\" alt=\"ABC Widgets\">\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">\r\n													<h4>[newsletters_date]</h4>\r\n													<br />\r\n													<img src=\"[newsletters_pluginurl]/includes/themes/getaway/images/hr-big.gif\" width=\"540\" height=\"29\" alt=\"Big Hr\">\r\n													<br />\r\n													<br />\r\n													<h3 style=\"color:#333; font-size:26px;\">[newsletters_subject]</h3>\r\n													[newsletters_main_content]\r\n													<br />\r\n													<br />\r\n													<img src=\"[newsletters_pluginurl]/includes/themes/getaway/images/hr-big.gif\" width=\"540\" height=\"29\" alt=\"Big Hr\">\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:11px; font-family:Helvetica, Arial, sans-serif; text-align:center;\">\r\n												   <p>Not interested anymore? [newsletters_unsubscribe]</p>\r\n												   <p>Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n													<br />\r\n													<br />\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n                        </table>\r\n						<!-- END CONTENT SECTION -->\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(3, 'Night Life', 'nightlife', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n	#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n	body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n	body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n	body {margin:0; padding:0;}\r\n	img {border:0; outline:none; text-decoration:none;}\r\n	table td {border-collapse:collapse;}\r\n	\r\n	h1, .h1{\r\n		color:#333333 !important;\r\n		display:block;\r\n		font-family:Arial;\r\n		font-size:34px;\r\n		font-weight:bold;\r\n		line-height:100%;\r\n		margin-top:0;\r\n		margin-right:0;\r\n		margin-bottom:10px;\r\n		margin-left:0;\r\n		text-align:left;\r\n	}\r\n\r\n	h2, .h2{\r\n		color:#333333 !important;\r\n		display:block;\r\n		font-family:Arial;\r\n		font-size:30px;\r\n		font-weight:bold;\r\n		line-height:100%;\r\n		margin-top:0;\r\n		margin-right:0;\r\n		margin-bottom:10px;\r\n		margin-left:0;\r\n		text-align:left;\r\n	}\r\n\r\n	h3, .h3{\r\n		color:#333333 !important;\r\n		display:block;\r\n		font-family:Arial;\r\n		font-size:26px;\r\n		font-weight:bold;\r\n		line-height:100%;\r\n		margin-top:0;\r\n		margin-right:0;\r\n		margin-bottom:10px;\r\n		margin-left:0;\r\n		text-align:left;\r\n	}\r\n\r\n	h4, .h4{\r\n		color:#333333 !important;\r\n		display:block;\r\n		font-family:Arial;\r\n		font-size:18px;\r\n		font-weight:bold;\r\n		line-height:100%;\r\n		margin-top:0;\r\n		margin-right:0;\r\n		margin-bottom:10px;\r\n		margin-left:0;\r\n		text-align:left;\r\n	}\r\n	\r\n	h5, .h5{\r\n		color:#333333 !important;\r\n		display:block;\r\n		font-family:Arial;\r\n		font-size:14px;\r\n		font-weight:bold;\r\n		line-height:100%;\r\n		margin-top:0;\r\n		margin-right:0;\r\n		margin-bottom:10px;\r\n		margin-left:0;\r\n		text-align:left;\r\n	}\r\n	\r\n	div{\r\n		color:#666666 !important;\r\n		font-family:Arial;\r\n		font-size:14px;\r\n		line-height:150%;\r\n		text-align:left;\r\n	}\r\n\r\n	@media screen and (max-width: 768px) {\r\n		img {max-width:  100% !important; height:  auto; }\r\n		.padded {padding-left:  10px; padding-right: 10px;}\r\n		.nav-inner td {\r\n			display: inline-block;\r\n		}\r\n	}\r\n\r\n	@media screen and (max-width: 320px) {\r\n		.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n	}\r\n\r\n	@media screen and (max-width: 610px) {\r\n		table.social > tbody > tr > td {\r\n			display: block;\r\n		}\r\n		.content {padding: 15px 0;}\r\n		table {width: 100%;}\r\n	}\r\n\r\n	@media screen and (max-width: 610px) {\r\n		img {\r\n			width: 100% !important;\r\n			object-fit: contain;\r\n		}\r\n\r\n		td {\r\n			width: 100% !important;\r\n		}\r\n\r\n		table#templateFooter {\r\n			width: 100% !important;\r\n		}\r\n	}\r\n\r\n   </style>\r\n\r\n</head>\r\n    <body style=\"background-color:#474333;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#474333;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#474333;\">\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#000 !important; font-size:11px; line-height:16px; font-family:Georgia, serif; font-style:italic;\">\r\n                                                	<center>\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.\r\n														</p>\r\n														<p>\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n													</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#FFFFFF;\">\r\n						\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td style=\"background-color:#181818; border:1px solid grey\" align=\"center\" valign=\"top\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/nightlife/images/header.gif\" width=\"580\" height=\"108\" alt=\"ABC Widgets\" />\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">\r\n													<h3 style=\"color:#333; font-size:26px;\">[newsletters_subject]</h3>\r\n													[newsletters_main_content]\r\n													<br />\r\n													<br />\r\n													<img src=\"[newsletters_pluginurl]/includes/themes/nightlife/images/hr-big.gif\" width=\"530\" height=\"19\">    \r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td height=\"88\"	align=\"center\" valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"108\" width=\"582\" style=\"background:#181818; border:1px solid gray;\">\r\n                                    	<tr>\r\n                                        	<td align=\"center\" valign=\"middle\">\r\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"88\" width=\"555\">\r\n													<tr>\r\n														<td style=\"color:#999; font-size:11px; font-family:Helvetica, Arial, sans-serif; text-align:center; height:88px; width:555px; border:1px solid gray;\">\r\n														   <p>Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n														</td>\r\n													</tr>\r\n												</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n                        </table>\r\n						<!-- END CONTENT SECTION -->\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n			<br />\r\n			<br />\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(4, 'Paper Phase', 'paperphase', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body {margin:0; padding:0;}\r\n			img {border:0; outline:none; text-decoration:none;}\r\n			table td {border-collapse:collapse;}\r\n			\r\n			h1, .h1{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			div{\r\n				color:#666666 !important;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n   </style>\r\n\r\n</head>\r\n    <body style=\"background-color:#ffffff;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#ffffff;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#ffffff;\">\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#000 !important; font-size:11px; line-height:16px; font-family:Arial, sans-serif;\">\r\n                                                	<center>\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.\r\n														</p>\r\n														<p>\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n													</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#F5F5F5;\">\r\n						\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td style=\"background-color:#F5F5F5;\" align=\"center\" valign=\"top\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/paperphase/images/header.jpg\" alt=\"ABC Widgets\" width=\"580\" height=\"130\" />\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">\r\n												   <p>[newsletters_date]</p>\r\n												   \r\n												   <h2 style=\"color:#A72323 !important;\">[newsletters_subject]</h2>\r\n												   [newsletters_main_content]\r\n													<br />\r\n													<br />\r\n													<img src=\"[newsletters_pluginurl]/includes/themes/nightlife/images/hr-big.gif\" width=\"530\" height=\"19\">    \r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td	align=\"center\" valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"582\">\r\n                                    	<tr>\r\n                                        	<td align=\"center\" valign=\"middle\">\r\n												<p>Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n						</table>\r\n						<!-- END CONTENT SECTION -->\r\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#F5F5F5;>\r\n							<tr>\r\n								<td height=\"87\" width=\"646\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/paperphase/images/footer-tail.jpg\" alt=\"Footer\" width=\"646\" height=\"87\" />\r\n								</td>\r\n							</tr>\r\n						</table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n			<br />\r\n			<br />\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(5, 'Red Ray', 'redray', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body {margin:0; padding:0;}\r\n			img {border:0; outline:none; text-decoration:none;}\r\n			table td {border-collapse:collapse;}\r\n			\r\n			h1, .h1{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:24px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:16px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			div{\r\n				color:#666666 !important;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n   </style>\r\n\r\n</head>\r\n    <body style=\"background-color:#EEEEEE;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#EEEEEE;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#EEEEEE;\">\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#000 !important; font-size:10px; line-height:16px; font-family:Arial, sans-serif;\">\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.<br />\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#FFFFFF;\">\r\n						\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td style=\"background-color:#FFFFFF;\" align=\"center\" valign=\"bottom\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/redray/images/header.gif\" alt=\"Header\" width=\"600\" height=\"150\" />\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\" align=\"center\">\r\n                                    <table border=\"0\" cellspacing=\"0\" width=\"560\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">												   \r\n												   <h2 style=\"color:#680606 !important;\">[newsletters_subject]</h2>\r\n												   [newsletters_main_content]\r\n												   <br />\r\n												   <br />\r\n												</div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n						</table>\r\n						<!-- END CONTENT SECTION -->\r\n						<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td	align=\"center\" valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\r\n                                    	<tr>\r\n                                        	<td align=\"left\" valign=\"middle\" style=\"background:#333333; padding: 20px 20px 0 20px;\">\r\n												<p style=\"color:#FFF !important; font-family:Arial, sans-serif; font-size:12px;\">Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n                                            </td>\r\n                                        </tr>\r\n										<tr>\r\n											<td>\r\n												<img src=\"[newsletters_pluginurl]/includes/themes/redray/images/footer-bg.gif\" alt=\"Footer\" height=\"61\" width=\"600\" />\r\n											</td>\r\n										</tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n						</table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n			<br />\r\n			<br />\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(6, 'Simply Elegant', 'simplyelegant', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html lang=\"en\">\r\n	<head>\r\n	   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n	   <title>[newsletters_subject]</title>\r\n	   <style type=\"text/css\" media=\"screen\">\r\n	      body {\r\n	         background-color: #ffffff;\r\n	         margin: 0;\r\n	         padding: 0;\r\n	      }\r\n	\r\n	      a img {\r\n	         border: none;\r\n	      }\r\n	\r\n	      a {\r\n	         border: none;\r\n	      }\r\n	\r\n	      td.permission {\r\n	         padding: 30px 0 10px 0;\r\n	      }\r\n	\r\n	      .permission {\r\n	         font-family: \'Lucida Grande\';\r\n	         font-size: 10px;\r\n	         color: #666666;\r\n	         padding: 4px 0 4px 0;\r\n	      }\r\n	\r\n	      .permission a {\r\n	         color: #333333;\r\n	      }\r\n	\r\n	      .permission p {\r\n	         margin: 0 0 4px 0;\r\n	      }\r\n	\r\n	      .header {\r\n	         background-color: #353535;\r\n	      }\r\n	\r\n	      .header h1 {\r\n	      	font-family: Georgia;\r\n	      	font-size: 32px;\r\n	      	font-weight: normal;\r\n	      	color: #bfbfbf;\r\n	      	display: inline;\r\n	      	text-align: left;}\r\n	\r\n	      .date h3 {\r\n	      	font-family: Georgia;\r\n	      	font-size: 14px;\r\n	      	color: #bfbfbf;\r\n	      	font-weight: normal;\r\n	      	text-align: right;\r\n	      	display: inline;\r\n	      	font-style: italic;\r\n	      }\r\n	\r\n	      .body {\r\n	         background-color: #ffffff;\r\n	      }\r\n	\r\n	      td.sidebar {\r\n	      	padding: 22px 0 0 0;\r\n	      }\r\n	\r\n	      .sidebar h2 {\r\n	         font-family: Georgia;\r\n	         font-size: 18px;\r\n	         font-weight: bold;\r\n	         color: #808080;\r\n	         margin: 0 0 6px 4px;\r\n	         padding: 0;\r\n	         text-align: left;\r\n	      }\r\n	\r\n	      .sidebar h2.issue {\r\n	         color: #000000;\r\n	         margin: 0 0 10px 10px;\r\n	      }\r\n	\r\n	      .sidebar ul {\r\n	         font-family: Georgia;\r\n	         font-size: 12px;\r\n	         color: #2679b9;\r\n	         margin: 0 0 0 24px;\r\n	         padding: 0;\r\n	         text-align: left;\r\n	      }\r\n	\r\n	      .sidebar ul a {\r\n	      	font-family: Georgia;\r\n	      	font-size: 12px;\r\n	      	color: #2679b9;\r\n	      	font-style: italic;\r\n	      }\r\n	      .sidebar ul li {\r\n	      	margin: 0 0 10px 0;\r\n	      }\r\n	      .sidebar p {\r\n	         font-family: \'Lucida Grande\';\r\n	         font-size: 11px;\r\n	         color: #5f5f5f;\r\n	         padding: 0;\r\n	         margin: 0 0 10px 0;\r\n	         text-align: left;\r\n	      }\r\n	\r\n	      td.sidebg {\r\n	         background-color: #f1f1f1;\r\n	         padding: 10px 16px 10px 16px;\r\n	      }\r\n	\r\n	      td.mainbar {\r\n	      	padding: 20px 10px 20px 10px;\r\n			width: 580px;\r\n			max-width: 580px;\r\n			text-align: left;\r\n	      }\r\n	      \r\n	      .mainbar img {\r\n		      max-width: 100%;\r\n		      height: auto;\r\n	      }\r\n	\r\n	      .mainbar p {\r\n	      	font-family: \'Lucida Grande\';\r\n	      	font-size: 12px;\r\n	      	color: #333333;\r\n	      	margin: 10px 0 20px 0;\r\n	      	text-align: left;\r\n	      }\r\n	\r\n	      .mainbar p.first {\r\n	      	margin-top: 10px;\r\n	      }\r\n	\r\n	      .mainbar h2 {\r\n	      	font-family: \'Lucida Grande\';\r\n	      	font-size: 16px;\r\n	      	color: #000000;\r\n	      	text-transform: uppercase;\r\n	      	margin: 10px 0 16px 0;\r\n	      }\r\n	\r\n	      .mainbar h2 a {\r\n	      	font-family: \'Lucida Grande\';\r\n	      	font-size: 16px;\r\n	      	color: #000000;\r\n	      	text-transform: uppercase;\r\n	      	text-decoration: none;\r\n	      	font-style: normal;\r\n	      }\r\n	\r\n	      .mainbar a {\r\n	      	font-family: Georgia;\r\n	      	font-size: 13px;\r\n	      	color: #2679b9;\r\n	      	font-style: italic;\r\n	      }\r\n	\r\n	      .mainbar a.center {\r\n	      	font-size: 12px;\r\n	      	text-align: center;\r\n	      	display: block;\r\n	      	color: #999999;\r\n	      	padding: 8px 0 12px 0;\r\n	      	text-decoration: none;\r\n	      }\r\n	\r\n	      .mainbar img.inline {\r\n	      	border: 1px solid #dedede;\r\n	      	padding: 4px;\r\n	      }\r\n	\r\n	      td.footer {\r\n	      	padding: 0 0 10px 0;\r\n	      	border-top: 2px solid #ededed;\r\n	      }\r\n	\r\n	      .footer p {\r\n	      	color: #a1a1a1;\r\n	      	font-size: 11px;\r\n	      	margin: 0;\r\n	      	padding: 0;\r\n	      }\r\n	\r\n	      .footer p.first {\r\n	      	margin: 14px 0 0 0;\r\n	      }\r\n	\r\n	      .footer a {\r\n	      	font-family: \'Lucida Grande\';\r\n	      	font-size: 11px;\r\n	      	color: #2679b9;\r\n	      }\r\n	   </style>\r\n	   \r\n   		<style type=\"text/css\" data-premailer=\"ignore\">\r\n		@media screen and (max-width: 660px) {\r\n			#maintable {\r\n				width: 100%; \r\n				max-width: 600px;\r\n			}\r\n			\r\n			#maintable img {\r\n				-ms-interpolation-mode: bicubic; \r\n				max-width: 100%; \r\n				height: auto;\r\n			}\r\n		}\r\n\r\n\r\n		@media screen and (max-width: 768px) {\r\n			img {max-width:  100% !important; height:  auto; }\r\n			.padded {padding-left:  10px; padding-right: 10px;}\r\n			.nav-inner td {\r\n				display: inline-block;\r\n			}\r\n		}\r\n\r\n		@media screen and (max-width: 320px) {\r\n			.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n		}\r\n\r\n		@media screen and (max-width: 610px) {\r\n			table.social > tbody > tr > td {\r\n				display: block;\r\n			}\r\n			.content {padding: 15px 0;}\r\n			table {width: 100%;}\r\n		}\r\n\r\n		@media screen and (max-width: 610px) {\r\n			img {\r\n				width: 100% !important;\r\n				object-fit: contain;\r\n			}\r\n\r\n			td {\r\n				width: 100% !important;\r\n			}\r\n\r\n			table#templateFooter {\r\n				width: 100% !important;\r\n			}\r\n		}\r\n\r\n		</style>\r\n	</head>\r\n	<body>\r\n		[newsletters_track]\r\n\r\n		<center>\r\n			<table align=\"center\" bgcolor=\"#ffffff\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n				<tr>\r\n					<td id=\"maintable\" width=\"600\" align=\"center\">\r\n						<!-- header -->\r\n						<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n							<tr>\r\n				               <td align=\"center\" class=\"permission\">\r\n				                  <p>You\'re receiving this newsletter because you subscribed to our mailing list.</p>\r\n				                  <p>Not interested anymore? [newsletters_unsubscribe]. <br/>Having trouble viewing this email? [newsletters_online].</p>\r\n				               </td>\r\n				            </tr>\r\n				            <tr>\r\n				               <td height=\"77\" align=\"left\" class=\"header\">\r\n				                  <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n				                     <tr>\r\n				                        <td><img src=\"https://newsletters.tribulant.co/wp-content/plugins/wp-mailinglist/includes/themes/simplyelegant/images/header.gif\" alt=\"header\"></td>\r\n				                     </tr>\r\n				                  </table>\r\n				               </td>\r\n				            </tr>\r\n						</table>\r\n						\r\n						<!-- content -->\r\n						<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n							<tr>               \r\n				               <td align=\"center\" valign=\"top\" class=\"mainbar\">\r\n				                  <h2>[newsletters_subject]</h2>\r\n				\r\n				                  [newsletters_main_content]\r\n				                  \r\n				                  <p><a href=\"#top\" class=\"center\">Back to top^</a></p>\r\n				                  <p><img src=\"https://newsletters.tribulant.co/wp-content/plugins/wp-mailinglist/includes/themes/simplyelegant/images/hr-large.gif\" alt=\"divider\"></p>\r\n				               </td>\r\n				            </tr>\r\n						</table>\r\n						\r\n						<!-- footer -->\r\n						<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n							<tr>\r\n		                        <td class=\"footer\" align=\"center\">\r\n		                           <p class=\"first\">Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n		                        </td>\r\n		                     </tr>\r\n						</table>\r\n					</td>\r\n				</tr>\r\n			</table>\r\n		</center>\r\n	</body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28');
INSERT INTO `wp_wpmlthemes` (`id`, `title`, `name`, `premade`, `type`, `content`, `def`, `defsystem`, `acolor`, `themestylesheet`, `created`, `modified`) VALUES
(7, 'Snazzy', 'snazzy', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n<head>\r\n   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n   <title>[newsletters_subject]</title>\r\n   <style type=\"text/css\" media=\"screen\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body {margin:0; padding:0;}\r\n			img {border:0; outline:none; text-decoration:none;}\r\n			table td {border-collapse:collapse;}\r\n			\r\n			h1, .h1{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:24px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:16px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#333333 !important;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			div{\r\n				color:#666666 !important;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n   </style>\r\n\r\n</head>\r\n    <body style=\"background-color:#FFFFFF;\" leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#FFFFFF;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#FFFFFF;\">\r\n                            <tr>\r\n                                <td valign=\"top\">\r\n                                    <table border=\"0\" cellpadding=\"15\" cellspacing=\"0\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#000 !important; font-size:11px; line-height:16px; font-family:Arial, sans-serif;\">\r\n													<center>\r\n														<p>\r\n															You\'re receiving this newsletter because you subscribed to our mailing list.<br />\r\n															Not interested anymore? [newsletters_unsubscribe]. <br/>\r\n															Having trouble viewing this email? [newsletters_online].\r\n														</p>\r\n													</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"580\" style=\"background:#FFFFFF;\">\r\n						\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td style=\"background-color:#FFFFFF;\" align=\"center\" valign=\"bottom\">\r\n									<img src=\"[newsletters_pluginurl]/includes/themes/snazzy/images/header.jpg\" width=\"580\" height=\"119\" />\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td valign=\"top\" align=\"center\">\r\n                                    <table border=\"0\" cellspacing=\"0\" cellpadding=\"20\" width=\"580\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"border-top:8px solid #ED5D9A; border-bottom:8px solid #ED5D9A; color:#333; font-size:14px; line-height:21px; font-family:Helvetica, Arial, sans-serif;\">												   \r\n												   <br />\r\n												   <h2 style=\"color:#ED5D9A !important;\">[newsletters_subject]</h2>\r\n												   [newsletters_main_content]\r\n												   <br />\r\n												   <br />\r\n												</div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n								<td valign=\"middle\" align=\"middle\">\r\n									<p style=\"color:#999 !important; font-family:Arial, sans-serif; font-size:12px;\">Copyright &copy; <strong>[newsletters_blogname]</strong> [newsletters_date format=\"%Y\"]</p>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n						</table>\r\n						<!-- END CONTENT SECTION -->\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n			<br />\r\n			<br />\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(8, 'Pro News', 'pronews', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n    <head>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />        \r\n        <title>[newsletters_subject]</title>\r\n		<style type=\"text/css\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body{margin:0; padding:0;}\r\n			img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}\r\n			table td{border-collapse:collapse;}\r\n			#backgroundTable{height:100% !important; margin:0; padding:0; width:100% !important;}\r\n\r\n			body, #backgroundTable{\r\n				background-color:#636363;\r\n			}\r\n\r\n			#templateContainer{\r\n				border: 6px solid #454545;\r\n			}\r\n\r\n			h1, .h1{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			#templatePreheader{\r\n				background-color:#636363;\r\n			}\r\n			\r\n			.preheaderContent div{\r\n				color:#FFF;\r\n				font-family:Arial;\r\n				font-size:11px;\r\n				line-height:100%;\r\n				text-align:left;\r\n			}\r\n\r\n			.preheaderContent div a:link, .preheaderContent div a:visited, .preheaderContent div a .yshortcuts{\r\n				color:#CCC;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#templateHeader{\r\n				background-color:#FFFFFF;\r\n				border-bottom:0;\r\n			}\r\n\r\n			.headerContent{\r\n				color:#4d4d4d;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				padding:0;\r\n				text-align:center;\r\n				vertical-align:middle;\r\n			}\r\n\r\n			.headerContent a:link, .headerContent a:visited, .headerContent a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#headerImage{\r\n				height:auto;\r\n				max-width:600px !important;\r\n			}\r\n\r\n			#templateContainer, .bodyContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.bodyContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.bodyContent div a:link, .bodyContent div a:visited, .bodyContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.bodyContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#headerBody a:link, #headerBody a:visited, #headerBody a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n				font-size:14px;\r\n				font-family:Helvetica, Arial, sans-serif;\r\n			}\r\n\r\n			.leftMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftMidColumnContent div a:link, .leftMidColumnContent div a:visited, .leftMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightMidColumnContent div a:link, .rightMidColumnContent div a:visited, .rightMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.leftLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftLowerColumnContent div a:link, .leftLowerColumnContent div a:visited, .leftLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.centerLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.centerLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n			\r\n			.centerLowerColumnContent div a:link, .centerLowerColumnContent div a:visited, .centerLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.centerLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightLowerColumnContent div a:link, .rightLowerColumnContent div a:visited, .rightLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#templateFooterSocial a, #templateFooterSocial a:visited, #templateFooterSocial a .yshortcuts {\r\n				color: #336699;\r\n				font-family: Helvetica,Arial,sans-serif;\r\n				font-size: 14px;\r\n				font-weight: normal;\r\n				text-decoration: underline;\r\n			}\r\n			\r\n			#templateFooter{\r\n				background-color:#eeeeee;\r\n				border-top:1px solid #dddddd;\r\n				line-height:155%;\r\n			}\r\n\r\n			.footerContent div{\r\n				color:#707070;\r\n				font-family:Arial;\r\n				font-size:12px;\r\n				line-height:185%;\r\n				text-align:left;\r\n			}\r\n\r\n			.footerContent div a:link, .footerContent div a:visited, .footerContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.footerContent img{\r\n				display:inline;\r\n			}\r\n\r\n			#social{\r\n				background-color:#FAFAFA;\r\n				border:0;\r\n			}\r\n\r\n			#social div{\r\n				text-align:center;\r\n			}\r\n\r\n			#utility{\r\n				background-color:#FFFFFF;\r\n				border:0;\r\n			}\r\n\r\n			#utility div{\r\n				text-align:center;\r\n			}\r\n\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n		</style>\r\n	</head>\r\n    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    \r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#636363;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"templatePreheader\">\r\n                            <tr>\r\n                                <td valign=\"top\" class=\"preheaderContent\">\r\n                                \r\n                                    <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#FFF; font-size:12px; font-family:Helvetica, Arial, sans-serif;\">\r\n                                                	<center>Trouble viewing this email? <span style=\"color:#999;\">[newsletters_online]</span></center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n									\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background:#FFF; border:6px solid #454545;\" id=\"templateContainer\">\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"headerBody\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\r\n                                                	<tr>\r\n                                                    	<td valign=\"top\" class=\"bodyContent\">\r\n                                                            <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n                                                                <tr>\r\n                                                                    <td width=\"270\" valign=\"top\">\r\n																		<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/logo.png\" width=\"270\" height=\"40\" />\r\n                                                                    </td>\r\n																	<td width=\"20\">&nbsp;</td>\r\n																	<td width=\"270\" valign=\"middle\" align=\"right\">\r\n																		<span style=\"font-size:12px; font-family:Helvetica, Arial, sans-serif;\">[newsletters_date]</span>\r\n                                                                    </td>\r\n                                                                </tr>\r\n                                                            </table>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							<!-- BEGIN BANNER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateHeader\">\r\n                                        <tr>\r\n                                            <td class=\"headerContent\">\r\n                                            	<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/banner.jpg\" style=\"max-width:600px;\" id=\"headerImage campaign-icon\" />\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END BANNER SECTION -->\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateBody\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\r\n                                                	<tr>\r\n                                                    	<td valign=\"top\" class=\"bodyContent\">\r\n                                                            <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n                                                                <tr>\r\n                                                                    <td valign=\"top\">\r\n 			                                                            <div style=\"color: #505050; font-family: Arial; font-size: 14px; line-height: 150%; text-align: left;\">\r\n			                                                                <h4 style=\"color: #4D4D4D; display: block; font-family: Arial; font-size: 18px; font-weight: bold; line-height: 100%; margin: 0 0 10px; text-align: left;\" class=\"h4\">[newsletters_subject]</h4>\r\n			                                                                [newsletters_main_content]\r\n																		</div>\r\n                                                                    </td>\r\n                                                                </tr>\r\n                                                            </table>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" style=\"background:#EEE; border:1px solid #DDD;\" id=\"templateFooter\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\" class=\"footerContent\">\r\n                                            \r\n                                                <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">\r\n                                                    <tr>\r\n                                                        <td width=\"270\" valign=\"top\">\r\n                                                            <div style=\"color: #707070; font-family: Arial; font-size: 12px; line-height: 185%;\">\r\n																<h5 style=\"font-size:14px; font-family:Helvetica, Arial, sans-serif; line-height:100%; margin:0 0 10px; color:#4d4d4d;\">Contact Us</h5>\r\n																<p>\r\n																	123 My Street<br/>\r\n																	My City<br/>\r\n																	My State<br/>\r\n																	My Country<br/>\r\n																	12345\r\n																</p>\r\n                                                            </div>\r\n                                                        </td>\r\n														<td width=\"150\">&nbsp;</td>\r\n														<td width=\"200\" valign=\"middle\">\r\n															<table align=\"right\" cellpadding=\"0\" cellspacing=\"0\" width=\"200\" id=\"templateFooterSocial\">\r\n																<tr>\r\n																	<td width=\"16\">\r\n																		<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/facebook-icon.png\" width=\"16\" height=\"16\" />\r\n																	</td>\r\n																	<td width=\"8\">&nbsp;</td>\r\n																	<td width=\"176\">\r\n																		<a href=\"#\">Be a fan on Facebook</a>\r\n																	</td>\r\n																</tr>\r\n																\r\n																<tr>\r\n																	<td width=\"16\">\r\n																		<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/twitter-icon.png\" width=\"16\" height=\"16\" />\r\n																	</td>\r\n																	<td width=\"8\">&nbsp;</td>\r\n																	<td width=\"176\">\r\n																		<a href=\"#\">Follow us on Twitter</a>\r\n																	</td>\r\n																</tr>\r\n																\r\n																<tr>\r\n																	<td width=\"16\">\r\n																		<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/feeds-icon.png\" width=\"16\" height=\"16\" />\r\n																	</td>\r\n																	<td width=\"8\">&nbsp;</td>\r\n																	<td width=\"176\">\r\n																		<a href=\"#\">RSS Feed</a>\r\n																	</td>\r\n																</tr>\r\n															</table>\r\n														</td>\r\n                                                    </tr>\r\n                                                </table>\r\n                                            \r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n                        </table>\r\n						<!-- END CONTENT SECTION -->\r\n						\r\n                        <br />\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(9, 'Lagoon', 'lagoon', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n    <head>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />        \r\n        <title>[newsletters_subject]</title>\r\n		<style type=\"text/css\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body{margin:0; padding:0;}\r\n			img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}\r\n			table td{border-collapse:collapse;}\r\n			#backgroundTable{height:100% !important; margin:0; padding:0; width:100% !important;}\r\n\r\n			body, #backgroundTable{\r\n				background-color:#ededed;\r\n			}\r\n\r\n			#templateContainer{\r\n				border: 6px solid #ededed;\r\n			}\r\n\r\n			h1, .h1{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:18px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			#templatePreheader{\r\n				background-color:#ededed;\r\n			}\r\n			\r\n			.preheaderContent div{\r\n				color:#FFF;\r\n				font-family:Arial;\r\n				font-size:11px;\r\n				line-height:100%;\r\n				text-align:left;\r\n			}\r\n\r\n			.preheaderContent div a:link, .preheaderContent div a:visited, .preheaderContent div a .yshortcuts{\r\n				color:#CCC;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#templateHeader{\r\n				background-color:#FFFFFF;\r\n				border-bottom:0;\r\n			}\r\n\r\n			.headerContent{\r\n				color:#4d4d4d;\r\n				font-family:Arial;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				padding:0;\r\n				text-align:center;\r\n				vertical-align:middle;\r\n			}\r\n\r\n			.headerContent a:link, .headerContent a:visited, .headerContent a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#headerImage{\r\n				height:auto;\r\n				max-width:600px !important;\r\n			}\r\n\r\n			#templateContainer, .bodyContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.bodyContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.bodyContent div a:link, .bodyContent div a:visited, .bodyContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.bodyContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#headerBody a:link, #headerBody a:visited, #headerBody a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n				font-size:14px;\r\n				font-family:Helvetica, Arial, sans-serif;\r\n			}\r\n			\r\n			#headerBody {\r\n				color:#FFF;\r\n				font-size:14px;\r\n				font-family:Helvetica, Arial, sans-serif;\r\n				background:#3695f7;\r\n			}\r\n\r\n			.leftMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftMidColumnContent div a:link, .leftMidColumnContent div a:visited, .leftMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightMidColumnContent div a:link, .rightMidColumnContent div a:visited, .rightMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.leftLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftLowerColumnContent div a:link, .leftLowerColumnContent div a:visited, .leftLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.centerLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.centerLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n			\r\n			.centerLowerColumnContent div a:link, .centerLowerColumnContent div a:visited, .centerLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.centerLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Arial;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightLowerColumnContent div a:link, .rightLowerColumnContent div a:visited, .rightLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#templateFooterSocial a, #templateFooterSocial a:visited, #templateFooterSocial a .yshortcuts {\r\n				color: #336699;\r\n				font-family: Helvetica,Arial,sans-serif;\r\n				font-size: 14px;\r\n				font-weight: normal;\r\n				text-decoration: underline;\r\n			}\r\n			\r\n			#templateFooter a, #templateFooter a:visited, #templateFooter a .yshortcuts {\r\n				color: #FFF;\r\n				font-family: Helvetica,Arial,sans-serif;\r\n				font-size: 14px;\r\n				font-weight: normal;\r\n				text-decoration: underline;\r\n			}\r\n			\r\n			#templateFooter{\r\n				background-color:#eeeeee;\r\n				border-top:1px solid #dddddd;\r\n				line-height:155%;\r\n			}\r\n\r\n			.footerContent div{\r\n				color:#707070;\r\n				font-family:Arial;\r\n				font-size:12px;\r\n				line-height:185%;\r\n				text-align:left;\r\n			}\r\n\r\n			.footerContent div a:link, .footerContent div a:visited, .footerContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.footerContent img{\r\n				display:inline;\r\n			}\r\n\r\n			#social{\r\n				background-color:#FAFAFA;\r\n				border:0;\r\n			}\r\n\r\n			#social div{\r\n				text-align:center;\r\n			}\r\n\r\n			#utility{\r\n				background-color:#FFFFFF;\r\n				border:0;\r\n			}\r\n\r\n			#utility div{\r\n				text-align:center;\r\n			}\r\n\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n		</style>\r\n	</head>\r\n    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    \r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#ededed;\" id=\"backgroundTable\">\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<!-- BEGIN TOP SECTION -->\r\n                        <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"600\" id=\"templatePreheader\">\r\n                            <tr>\r\n                                <td valign=\"top\" class=\"preheaderContent\">\r\n                                \r\n                                    <table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<div style=\"color:#666; font-size:12px; font-family:Helvetica, Arial, sans-serif;\">\r\n                                                	<center>Trouble viewing this email? [newsletters_online]</center>\r\n                                                </div>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n									\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n						<!-- END TOP SECTION -->\r\n						\r\n						<!-- BEGIN CONTENT SECTION -->\r\n                    	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"background:#ededed; border:0;\" id=\"templateContainer\">\r\n							<!-- BEGIN HEADER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"headerBody\">\r\n										<tr>\r\n											<td valign=\"bottom\">\r\n												<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/blue-rounded-top.png\" width=\"600\" height=\"10\" />\r\n											</td>\r\n										</tr>\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<table border=\"0\" cellpadding=\"0\" style=\"background:#3695f7;\" cellspacing=\"0\" width=\"600\">\r\n                                                	<tr>\r\n                                                    	<td valign=\"top\">\r\n                                                            <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n                                                                <tr>\r\n                                                                    <td width=\"166\" valign=\"middle\">\r\n																		<img src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/logo.png\" width=\"166\" height=\"60\" />\r\n                                                                    </td>\r\n																	<td width=\"20\">&nbsp;</td>\r\n																	<td width=\"270\" valign=\"middle\" align=\"right\" style=\"color:#FFF; font-family:Helvetica, Arial, sans-serif;\">\r\n																		Issue #[newsletters_historyid]<br />\r\n																		[newsletters_date]\r\n                                                                    </td>\r\n                                                                </tr>\r\n                                                            </table>\r\n                                                        </td>\r\n                                                    </tr>\r\n                                                </table>\r\n                                            </td>\r\n                                        </tr>\r\n										<tr>\r\n											<td valign=\"bottom\">\r\n												<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/blue-rounded-bottom.png\" width=\"600\" height=\"10\" />\r\n											</td>\r\n										</tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END HEADER SECTION -->\r\n							\r\n							<!-- BEGIN SEPARATOR -->\r\n							<tr>\r\n								<td valign=\"top\" height=\"20\">\r\n									&nbsp;\r\n								</td>\r\n							</tr>\r\n							<!-- END SEPARATOR -->\r\n							\r\n							<!-- BEGIN BANNER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateHeader\">\r\n                                        <tr>\r\n                                            <td valign=\"bottom\" class=\"headerContent\">\r\n                                            	<img src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/banner.jpg\" style=\"display:block;margin:0;padding:0;max-width:600px;\" id=\"headerImage campaign-icon\" />\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END BANNER SECTION -->\r\n							\r\n							<!-- BEGIN SEPARATOR -->\r\n							<tr>\r\n								<td valign=\"top\" height=\"20\">\r\n									&nbsp;\r\n								</td>\r\n							</tr>\r\n							<!-- END SEPARATOR -->\r\n							\r\n							<!-- BEGIN TEXT SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" id=\"templateBody\">\r\n                                    	<tr>\r\n                                        	<td valign=\"top\">\r\n                                            	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\r\n													<tr>\r\n														<td valign=\"bottom\">\r\n															<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/white-rounded-top.png\" height=\"10\" width=\"600\" />\r\n														</td>\r\n													</tr>\r\n                                                	<tr>\r\n                                                    	<td valign=\"top\" class=\"bodyContent\">\r\n                                                            <table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n\r\n                                                                <tr>\r\n                                                                    <td valign=\"top\" style=\"background:#FFF\">\r\n 			                                                            <div style=\"color: #505050; font-family: Arial; font-size: 14px; line-height: 150%; text-align: left;\">\r\n			                                                                <h4 style=\"color: #4D4D4D; display: block; font-family: Arial; font-size: 18px; font-weight: bold; line-height: 100%; margin: 0 0 10px; text-align: left;\" class=\"h4\">[newsletters_subject]</h4>\r\n			                                                                [newsletters_main_content]\r\n																		</div>\r\n                                                                    </td>\r\n                                                                </tr>\r\n                                                            </table>\r\n                                                        </td>\r\n                                                    </tr>\r\n													<tr>\r\n														<td valign=\"bottom\">\r\n															<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/white-rounded-bottom.png\" height=\"10\" width=\"600\" />\r\n														</td>\r\n													</tr>\r\n                                                </table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END TEXT SECTION -->\r\n							<!-- BEGIN SEPARATOR -->\r\n							<tr>\r\n								<td valign=\"top\" height=\"20\">\r\n									&nbsp;\r\n								</td>\r\n							</tr>\r\n							<!-- END SEPARATOR -->\r\n							<!-- BEGIN FOOTER SECTION -->\r\n                        	<tr>\r\n                            	<td align=\"center\" valign=\"top\">\r\n                                	<table border=\"0\" cellspacing=\"0\" width=\"600\" style=\"background:#ededed; border:0;\" id=\"templateFooter\">\r\n										<tr>\r\n											<td valign=\"top\" class=\"footerContent\">\r\n													\r\n												<table border=\"0\" cellspacing=\"0\" width=\"100%\">\r\n													<tr>\r\n														<td valign=\"top\">\r\n															<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\">\r\n																<tr>\r\n																	<td valign=\"bottom\">\r\n																		<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/blue-rounded-top.png\" width=\"600\" height=\"10\" />\r\n																	</td>\r\n																</tr>\r\n																<tr>\r\n																	<td valign=\"top\" style=\"background:#3695f7;\">\r\n																		<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n																			<tr>\r\n																				<td width=\"600\" valign=\"middle\" align=\"center\" style=\"color:#FFF; font-family:Helvetica, Arial, sans-serif; font-size:14px; line-height:140%;\">\r\n																					[newsletters_lagoon_address]<br />\r\n																					<a href=\"[newsletters_siteurl]\">[newsletters_blogname]</a> | <a href=\"mailto:<?php echo get_bloginfo(\'admin_email\'); ?>\"><?php echo get_bloginfo(\'admin_email\'); ?></a><br />\r\n																					Sales and Support: +1 (555) 555-5555 \r\n																				</td>\r\n																			</tr>\r\n																		</table>\r\n																	</td>\r\n																</tr>\r\n																<tr>\r\n																	<td valign=\"bottom\">\r\n																		<img style=\"display:block;margin:0;padding:0;\" src=\"[newsletters_pluginurl]/includes/themes/lagoon/images/blue-rounded-bottom.png\" width=\"600\" height=\"10\" />\r\n																	</td>\r\n																</tr>\r\n															</table>\r\n														</td>\r\n													</tr>\r\n												</table>\r\n                                            \r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n                                </td>\r\n                            </tr>\r\n							<!-- END FOOTER SECTION -->\r\n                        </table>\r\n						<!-- END CONTENT SECTION -->\r\n						\r\n                        <br />\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28');
INSERT INTO `wp_wpmlthemes` (`id`, `title`, `name`, `premade`, `type`, `content`, `def`, `defsystem`, `acolor`, `themestylesheet`, `created`, `modified`) VALUES
(10, 'The Mailer', 'themailer', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html>\r\n    <head>\r\n        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />        \r\n        <title>[newsletters_subject]</title>\r\n		<style type=\"text/css\">\r\n			#outlook a{padding:0;} /* Force Outlook to provide a \"view in browser\" button. */\r\n			body{width:100% !important;} .ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */\r\n			body{-webkit-text-size-adjust:none;} /* Prevent Webkit platforms from changing default text sizes. */\r\n\r\n			body{margin:0; padding:0;}\r\n			img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}\r\n			table td{border-collapse:collapse;}\r\n			#backgroundTable{height:100% !important; margin:0; padding:0; width:100% !important;}\r\n\r\n			body, #backgroundTable{\r\n				background-color:#FFF;\r\n			}\r\n\r\n			#templateContainer{\r\n				border: 6px solid #454545;\r\n			}\r\n\r\n			h1, .h1{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Georgia;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h2, .h2{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Georgia;\r\n				font-size:30px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h3, .h3{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Georgia;\r\n				font-size:26px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n\r\n			h4, .h4{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Georgia;\r\n				font-size:18px;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			h5, .h5{\r\n				color:#4d4d4d;\r\n				display:block;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				margin-top:0;\r\n				margin-right:0;\r\n				margin-bottom:10px;\r\n				margin-left:0;\r\n				text-align:left;\r\n			}\r\n			\r\n			#templatePreheader{\r\n				background-color:#FFF;\r\n			}\r\n			\r\n			.preheaderContent div{\r\n				color:#FFF;\r\n				font-family:Georgia;\r\n				font-size:11px;\r\n				line-height:100%;\r\n				text-align:left;\r\n			}\r\n\r\n			.preheaderContent div a:link, .preheaderContent div a:visited, .preheaderContent div a .yshortcuts{\r\n				color:#999;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#templateHeader{\r\n				background-color:#FFFFFF;\r\n				border-bottom:0;\r\n			}\r\n\r\n			.headerContent{\r\n				color:#4d4d4d;\r\n				font-family:Georgia;\r\n				font-size:34px;\r\n				font-weight:bold;\r\n				line-height:100%;\r\n				padding:0;\r\n				text-align:center;\r\n				vertical-align:middle;\r\n			}\r\n\r\n			.headerContent a:link, .headerContent a:visited, .headerContent a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			#headerImage{\r\n				height:auto;\r\n				max-width:600px !important;\r\n			}\r\n\r\n			#templateContainer, .bodyContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.bodyContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.bodyContent div a:link, .bodyContent div a:visited, .bodyContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.bodyContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#headerBody a:link, #headerBody a:visited, #headerBody a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n				font-size:14px;\r\n				font-family:Helvetica, Georgia, sans-serif;\r\n			}\r\n\r\n			.leftMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftMidColumnContent div a:link, .leftMidColumnContent div a:visited, .leftMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightMidColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightMidColumnContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightMidColumnContent div a:link, .rightMidColumnContent div a:visited, .rightMidColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightMidColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.leftLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.leftLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.leftLowerColumnContent div a:link, .leftLowerColumnContent div a:visited, .leftLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.leftLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.centerLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.centerLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n			\r\n			.centerLowerColumnContent div a:link, .centerLowerColumnContent div a:visited, .centerLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.centerLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n\r\n			.rightLowerColumnContent{\r\n				background-color:#FFFFFF;\r\n			}\r\n\r\n			.rightLowerColumnContent div{\r\n				color:#505050;\r\n				font-family:Georgia;\r\n				font-size:14px;\r\n				line-height:150%;\r\n				text-align:left;\r\n			}\r\n\r\n			.rightLowerColumnContent div a:link, .rightLowerColumnContent div a:visited, .rightLowerColumnContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.rightLowerColumnContent img{\r\n				display:inline;\r\n				height:auto;\r\n			}\r\n			\r\n			#templateFooterSocial a, #templateFooterSocial a:visited, #templateFooterSocial a .yshortcuts {\r\n				color: #336699;\r\n				font-family: Helvetica,Georgia,sans-serif;\r\n				font-size: 14px;\r\n				font-weight: normal;\r\n				text-decoration: underline;\r\n			}\r\n			\r\n			#templateFooter{\r\n				line-height:155%;\r\n				font-family:Helvetica, Arial, sans-serif;\r\n			}\r\n\r\n			.footerContent div{\r\n				color:#707070;\r\n				font-family:Georgia;\r\n				font-size:12px;\r\n				line-height:185%;\r\n				text-align:left;\r\n			}\r\n\r\n			.footerContent div a:link, .footerContent div a:visited, .footerContent div a .yshortcuts {\r\n				color:#336699;\r\n				font-weight:normal;\r\n				text-decoration:underline;\r\n			}\r\n\r\n			.footerContent img{\r\n				display:inline;\r\n			}\r\n\r\n			#social{\r\n				background-color:#FAFAFA;\r\n				border:0;\r\n			}\r\n\r\n			#social div{\r\n				text-align:center;\r\n			}\r\n\r\n			#utility{\r\n				background-color:#FFFFFF;\r\n				border:0;\r\n			}\r\n\r\n			#utility div{\r\n				text-align:center;\r\n			}\r\n\r\n			@media screen and (max-width: 768px) {\r\n				img {max-width:  100% !important; height:  auto; }\r\n				.padded {padding-left:  10px; padding-right: 10px;}\r\n				.nav-inner td {\r\n					display: inline-block;\r\n				}\r\n			}\r\n\r\n			@media screen and (max-width: 320px) {\r\n				.inner {padding-left: 0px !important;padding-right: 0px !important;}\r\n\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				table.social > tbody > tr > td {\r\n					display: block;\r\n				}\r\n				.content {padding: 15px 0;}\r\n				table {width: 100%;}\r\n			}\r\n\r\n			@media screen and (max-width: 610px) {\r\n				img {\r\n					width: 100% !important;\r\n					object-fit: contain;\r\n				}\r\n\r\n				td {\r\n					width: 100% !important;\r\n				}\r\n\r\n				table#templateFooter {\r\n					width: 100% !important;\r\n				}\r\n			}\r\n\r\n		</style>\r\n	</head>\r\n    <body leftmargin=\"0\" marginwidth=\"0\" topmargin=\"0\" marginheight=\"0\" offset=\"0\">\r\n    	[newsletters_track]\r\n    \r\n    	<center>\r\n        	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"background:#FFF;\" id=\"backgroundTable\">\r\n				<tr>\r\n					<td align=\"center\" valign=\"top\">\r\n						<!-- BEGIN TOP SECTION -->\r\n						<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"560\" id=\"templatePreheader\">\r\n							<tr>\r\n								<td valign=\"top\" class=\"preheaderContent\">\r\n								\r\n									<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">\r\n										<tr>\r\n											<td valign=\"top\">\r\n												<div style=\"color:#666; font-size:12px; font-family:Helvetica, Georgia, sans-serif;\">\r\n													<center>Trouble viewing this email? <span style=\"color:#999;\">[newsletters_online]</span></center>\r\n												</div>\r\n											</td>\r\n										</tr>\r\n									</table>\r\n									\r\n								</td>\r\n							</tr>\r\n						</table>\r\n						<!-- END TOP SECTION -->\r\n					</td>\r\n				</tr>\r\n            	<tr>\r\n                	<td align=\"center\" valign=\"top\">\r\n					\r\n						<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"560\" style=\"background:url([newsletters_pluginurl]/includes/themes/themailer/images/bg.png);\">\r\n							<tr>\r\n								<td>									\r\n									<!-- BEGIN CONTENT SECTION -->\r\n									<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"560\" style=\"background:#FFF; border:0;\" id=\"templateContainer\">\r\n										<!-- BEGIN HEADER SECTION -->\r\n										<tr>\r\n											<td align=\"center\" valign=\"top\">\r\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"560\" id=\"headerBody\">\r\n													<tr>\r\n														<td valign=\"top\">\r\n															<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"560\">\r\n																<tr>\r\n																	<td valign=\"top\" class=\"bodyContent\">\r\n																		<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n																			<tr>\r\n																				<td width=\"560\" valign=\"top\">\r\n																					<img src=\"[newsletters_pluginurl]/includes/themes/themailer/images/logo.png\" width=\"560\" height=\"110\" />\r\n																				</td>\r\n																			</tr>\r\n																		</table>\r\n																	</td>\r\n																</tr>\r\n															</table>\r\n														</td>\r\n													</tr>\r\n												</table>\r\n											</td>\r\n										</tr>\r\n										<!-- END HEADER SECTION -->\r\n										<!-- BEGIN BANNER SECTION -->\r\n										<tr>\r\n											<td align=\"center\" valign=\"top\">\r\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"560\" id=\"templateHeader\">\r\n													<tr>\r\n														<td align=\"center\" class=\"headerContent\">\r\n															<img src=\"[newsletters_pluginurl]/includes/themes/themailer/images/banner.jpg\" style=\"max-width:600px;\" id=\"headerImage campaign-icon\" />\r\n														</td>\r\n													</tr>\r\n												</table>\r\n											</td>\r\n										</tr>\r\n										<!-- END BANNER SECTION -->\r\n										<!-- BEGIN TEXT SECTION -->\r\n										<tr>\r\n											<td align=\"center\" valign=\"top\">\r\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"520\" id=\"templateBody\">\r\n													<tr>\r\n														<td valign=\"top\">\r\n															<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"560\">\r\n																<tr>\r\n																	<td valign=\"top\" class=\"bodyContent\">\r\n																		<table border=\"0\" cellpadding=\"20\" cellspacing=\"0\" width=\"100%\">\r\n																			<tr>\r\n																				<td valign=\"top\">\r\n																					<div style=\"color: #505050; font-family: Arial; font-size: 14px; line-height: 150%; text-align: left;\">\r\n																						<h4 style=\"color: #4D4D4D; display: block; font-family: Georgia; font-size: 18px; line-height: 100%; margin: 0 0 10px; text-align: left;\" class=\"h4\">[newsletters_subject]</h4>\r\n																						[newsletters_main_content]\r\n																					</div>\r\n																				</td>\r\n																			</tr>\r\n																		</table>\r\n																	</td>\r\n																</tr>\r\n															</table>\r\n														</td>\r\n													</tr>\r\n												</table>\r\n											</td>\r\n										</tr>\r\n										<!-- END TEXT SECTION -->\r\n										<!-- BEGIN FOOTER SECTION -->\r\n										<tr>\r\n											<td align=\"center\" valign=\"top\">\r\n												<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"560\" id=\"templateFooter\">\r\n													<tr>\r\n														<td valign=\"top\" class=\"footerContent\">\r\n														\r\n															<table border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"100%\">\r\n																<tr>\r\n																	<td width=\"310\" valign=\"top\">\r\n																		<div style=\"color: #666; font-family: Arial; font-size: 12px; line-height: 185%;\">\r\n																			<h5 style=\"font-size:14px; font-family:Georgia; line-height:100%; margin:0 0 10px; color:#4d4d4d;\">Contact Us</h5>\r\n																			<p>\r\n																				123 My Street<br/>\r\n																				My City<br/>\r\n																				My State<br/>\r\n																				My Country<br/>\r\n																				12345\r\n																			</p>\r\n																		</div>\r\n																	</td>\r\n																	<td width=\"110\">&nbsp;</td>\r\n																	<td width=\"200\" valign=\"middle\">\r\n																		<table align=\"right\" cellpadding=\"0\" cellspacing=\"0\" width=\"200\" id=\"templateFooterSocial\">\r\n																			<tr>\r\n																				<td width=\"16\">\r\n																					<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/facebook-icon.png\" width=\"16\" height=\"16\" />\r\n																				</td>\r\n																				<td width=\"8\">&nbsp;</td>\r\n																				<td width=\"176\">\r\n																					<a href=\"#\">Be a fan on Facebook</a>\r\n																				</td>\r\n																			</tr>\r\n																			\r\n																			<tr>\r\n																				<td width=\"16\">\r\n																					<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/twitter-icon.png\" width=\"16\" height=\"16\" />\r\n																				</td>\r\n																				<td width=\"8\">&nbsp;</td>\r\n																				<td width=\"176\">\r\n																					<a href=\"#\">Follow us on Twitter</a>\r\n																				</td>\r\n																			</tr>\r\n																			\r\n																			<tr>\r\n																				<td width=\"16\">\r\n																					<img src=\"[newsletters_pluginurl]/includes/themes/pronews/images/feeds-icon.png\" width=\"16\" height=\"16\" />\r\n																				</td>\r\n																				<td width=\"8\">&nbsp;</td>\r\n																				<td width=\"176\">\r\n																					<a href=\"#\">RSS Feed</a>\r\n																				</td>\r\n																			</tr>\r\n																		</table>\r\n																	</td>\r\n																</tr>\r\n															</table>\r\n														\r\n														</td>\r\n													</tr>\r\n												</table>\r\n											</td>\r\n										</tr>\r\n										<!-- END FOOTER SECTION -->\r\n									</table>\r\n									<!-- END CONTENT SECTION -->\r\n								</td>\r\n							</tr>\r\n						</table>\r\n						\r\n                        <br />\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n        </center>\r\n    </body>\r\n</html>', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28'),
(11, 'Creator', 'creator', 'Y', 'paste', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"https://www.w3.org/1999/xhtml\">\n<head><!-- If you delete this tag, the sky will fall on your head --><meta name=\"viewport\" content=\"width=device-width\" /><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n	<title>Creator</title>\n	<style type=\"text/css\">/* ------------------------------------- \n		GLOBAL \n------------------------------------- */\n* { \n	margin:0;\n	padding:0;\n}\n* { font-family: \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif; }\n\nimg { \n	max-width: 100%; \n}\n.collapse {\n	margin:0;\n	padding:0;\n}\nbody {\n	-webkit-font-smoothing:antialiased; \n	-webkit-text-size-adjust:none; \n	width: 100%!important; \n	height: 100%;\n}\n\n\n/* ------------------------------------- \n		ELEMENTS \n------------------------------------- */\na { color: #2BA6CB;}\n\ncode {\n	font-family: Courier, \'New Courier\', monospace;\n}\n\n.btn {\n	text-decoration:none;\n	color: #FFF;\n	background-color: #666;\n	padding:10px 16px;\n	font-weight:bold;\n	margin-right:10px;\n	text-align:center;\n	cursor:pointer;\n	display: inline-block;\n}\n\np.callout {\n	padding:15px;\n	background-color:#ECF8FF;\n	margin-bottom: 15px;\n}\n.callout a {\n	font-weight:bold;\n	color: #2BA6CB;\n}\n\ntable.social {\n/* 	padding:15px; */\n	background-color: #ebebeb;\n	\n}\n.social .soc-btn {\n	padding: 3px 7px;\n	font-size:12px;\n	margin-bottom:10px;\n	text-decoration:none;\n	color: #FFF;font-weight:bold;\n	display:block;\n	text-align:center;\n}\na.fb { background-color: #3B5998!important; }\na.tw { background-color: #1daced!important; }\na.gp { background-color: #DB4A39!important; }\na.ms { background-color: #000!important; }\n\n.sidebar .soc-btn { \n	display:block;\n	width:100%;\n}\n\n/* ------------------------------------- \n		HEADER \n------------------------------------- */\ntable.head-wrap { width: 100%;}\n\n.header.container table td.logo { padding: 15px; }\n.header.container table td.label { padding: 15px; padding-left:0px;}\n\n\n/* ------------------------------------- \n		BODY \n------------------------------------- */\ntable.body-wrap { width: 100%;}\n\n\n/* ------------------------------------- \n		FOOTER \n------------------------------------- */\ntable.footer-wrap { width: 100%;	clear:both!important;\n}\n.footer-wrap .container td.content  p { border-top: 1px solid rgb(215,215,215); padding-top:15px;}\n.footer-wrap .container td.content p {\n	font-size:10px;\n	font-weight: bold;\n	\n}\n\n\n/* ------------------------------------- \n		TYPOGRAPHY \n------------------------------------- */\nh1,h2,h3,h4,h5,h6 {\nfont-family: \"HelveticaNeue-Light\", \"Helvetica Neue Light\", \"Helvetica Neue\", Helvetica, Arial, \"Lucida Grande\", sans-serif; line-height: 1.1; margin-bottom:15px; color:#000;\n}\nh1 small, h2 small, h3 small, h4 small, h5 small, h6 small { font-size: 60%; color: #6f6f6f; line-height: 0; text-transform: none; }\n\nh1 { font-weight:200; font-size: 44px;}\nh2 { font-weight:200; font-size: 37px;}\nh3 { font-weight:500; font-size: 27px;}\nh4 { font-weight:500; font-size: 23px;}\nh5 { font-weight:900; font-size: 17px;}\nh6 { font-weight:900; font-size: 14px; text-transform: uppercase; color:#444;}\n\n.collapse { margin:0!important;}\n\np, ul { \n	margin-bottom: 10px; \n	font-weight: normal; \n	font-size:14px; \n	line-height:1.6;\n}\np.lead { font-size:17px; }\np.last { margin-bottom:0px;}\n\nul li {\n	margin-left:5px;\n	list-style-position: inside;\n}\n\n/* ------------------------------------- \n		SIDEBAR \n------------------------------------- */\nul.sidebar {\n	background:#ebebeb;\n	display:block;\n	list-style-type: none;\n}\nul.sidebar li { display: block; margin:0;}\nul.sidebar li a {\n	text-decoration:none;\n	color: #666;\n	padding:10px 16px;\n/* 	font-weight:bold; */\n	margin-right:10px;\n/* 	text-align:center; */\n	cursor:pointer;\n	border-bottom: 1px solid #777777;\n	border-top: 1px solid #FFFFFF;\n	display:block;\n	margin:0;\n}\nul.sidebar li a.last { border-bottom-width:0px;}\nul.sidebar li a h1,ul.sidebar li a h2,ul.sidebar li a h3,ul.sidebar li a h4,ul.sidebar li a h5,ul.sidebar li a h6,ul.sidebar li a p { margin-bottom:0!important;}\n\n\n\n/* --------------------------------------------------- \n		RESPONSIVENESS\n		Nuke it from orbit. It\'s the only way to be sure. \n------------------------------------------------------ */\n\n/* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\n.container {\n	display:block!important;\n	max-width:600px!important;\n	margin:0 auto!important; /* makes it centered */\n	clear:both!important;\n}\n\n/* This should also be a block element, so that it will fill 100% of the .container */\n.content {\n	padding:15px;\n	max-width:600px;\n	margin:0 auto;\n	display:block; \n}\n\n/* Let\'s make sure tables in the content area are 100% wide */\n.content table { width: 100%; }\n\n\n/* Odds and ends */\n.column {\n	width: 300px;\n	float:left;\n}\n.column tr td { padding: 15px; }\n.column-wrap { \n	padding:0!important; \n	margin:0 auto; \n	max-width:600px!important;\n}\n.column table { width:100%;}\n.social .column {\n	width: 280px;\n	min-width: 279px;\n	float:left;\n}\n\n/* Be sure to place a .clear element after each set of columns, just to be safe */\n.clear { display: block; clear: both; }\n\n\n/* ------------------------------------------- \n		PHONE\n		For clients that support media queries.\n		Nothing fancy. \n-------------------------------------------- */\n@media only screen and (max-width: 600px) {\n	\n	a[class=\"btn\"] { display:block!important; margin-bottom:10px!important; background-image:none!important; margin-right:0!important;}\n\n	div[class=\"column\"] { width: auto!important; float:none!important;}\n	\n	table.social div[class=\"column\"] {\n		width:auto!important;\n	}\n\n}\n\n\n\n	@media screen and (max-width: 768px) {\n		img {max-width:  100% !important; height:  auto; }\n		.padded {padding-left:  10px; padding-right: 10px;}\n		.nav-inner td {\n			display: inline-block;\n		}\n	}\n\n	@media screen and (max-width: 320px) {\n		.inner {padding-left: 0px !important;padding-right: 0px !important;}\n\n	}\n\n	@media screen and (max-width: 600px) {\n		table.social > tbody > tr > td {\n			display: block;\n		}\n		.content {padding: 15px 0;}\n	}\n\n	</style>\n</head>\n<body bgcolor=\"#FFFFFF\" style=\"cursor: auto;\"><!-- HEADER -->\n\n[newsletters_track]\n\n<table bgcolor=\"#999999\" class=\"head-wrap\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td class=\"header container\">\n			<div class=\"content\">\n			<table bgcolor=\"#999999\">\n				<tbody>\n					<tr>\n						<td><img alt=\"\" src=\"https://placehold.it/200x50/\" /></td>\n						<td align=\"right\">\n						<h6 class=\"collapse\">CATCHY SLOGAN HERE</h6>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n<!-- /HEADER --><!-- BODY -->\n\n<table class=\"body-wrap\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td bgcolor=\"#FFFFFF\" class=\"container\">\n			<div class=\"content\">\n			<table>\n				<tbody>\n					<tr>\n						<td>\n						<h3>[newsletters_subject]</h3>\n\n						<p class=\"lead\">Put an introduction or summary of your newsletter here. Entice your readers to continue reading the rest of the newsletter.</p>\n						<!-- A Real Hero (and a real human being) -->\n\n						<p><img alt=\"\" src=\"https://placehold.it/600x300\" /></p>\n						<!-- /hero --><!-- Callout Panel -->\n\n						<p class=\"callout\">A call to action or business highlight goes here for your readers to click on. Link to a product,&nbsp;new service or limited offer you have right now. <a href=\"#\">Do it Now! »</a></p>\n						<!-- /Callout Panel -->\n\n						<div>[newsletters_main_content]</div>\n						\n						<p>The shortcode above is replaced with the content that you type into the editor. Use headings, paragraphs and other formatting in your newsletters to make them beautiful. Below is an example of how you can create beautiful newsletters. Use class <code>.btn</code> on any link to style it as a button.</p>\n\n						<h3>Title Ipsum <small>This is a note.</small></h3>\n\n						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n						<a class=\"btn\">Click Me!</a><br />\n						<br />\n						<!-- social & contact -->\n						<table class=\"social\" width=\"100%\">\n							<tbody>\n								<tr>\n									<td><!--- column 1 -->\n									<table align=\"left\" class=\"column\">\n										<tbody>\n											<tr>\n												<td>\n												<h5>Connect with Us:</h5>\n\n												<p><a class=\"soc-btn fb\" href=\"#\">Facebook</a> <a class=\"soc-btn tw\" href=\"#\">Twitter</a> <a class=\"soc-btn gp\" href=\"#\">Google+</a></p>\n												</td>\n											</tr>\n										</tbody>\n									</table>\n									<!-- /column 1 --></td>\n									<td><!--- column 2 -->\n									<table align=\"left\" class=\"column\">\n										<tbody>\n											<tr>\n												<td>\n												<h5>Contact Info:</h5>\n\n												<p>Phone: <strong>123.456.0600</strong><br />\n												Email: <strong><a href=\"emailto:email@domain.com\">email@domain.com</a></strong></p>\n												</td>\n											</tr>\n										</tbody>\n									</table>\n									<!-- /column 2 --></td>\n								</tr>\n							</tbody>\n						</table>\n						<!-- /social & contact --></td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n<!-- /BODY --><!-- FOOTER -->\n\n<table class=\"footer-wrap\">\n	<tbody>\n		<tr>\n			<td>&nbsp;</td>\n			<td class=\"container\"><!-- content -->\n			<div class=\"content\">\n			<table>\n				<tbody>\n					<tr>\n						<td align=\"center\">\n						<p><a href=\"#\">Terms</a> | <a href=\"#\">Privacy</a> | <a href=\"[newsletters_unsubscribeurl]\"><unsubscribe>Unsubscribe</unsubscribe></a></p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n			</div>\n			<!-- /content --></td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n<!-- /FOOTER --></body>\n</html>\n', 'N', 'N', '#333333', 0, '2024-05-22 16:26:28', '2024-05-22 16:26:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_wpmlunsubscribes`
--

CREATE TABLE `wp_wpmlunsubscribes` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `mailinglist_id` int(11) NOT NULL DEFAULT 0,
  `history_id` int(11) NOT NULL DEFAULT 0,
  `comments` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'http://localhost/wp1/', '21:7cc76660eccc0a05855c5719cf0b8893', 31, 'post', 'page', 1, 0, NULL, NULL, 'Strona główna', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:34:05', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 18:33:45', '2024-05-16 18:36:20', 0),
(2, 'http://localhost/wp1/author/admin/', '34:175bc38ae08670bfd20ec5b6b534815d', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://0.gravatar.com/avatar/389b2132c8bc1545c2bc9d0a61f7eaa6?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://0.gravatar.com/avatar/389b2132c8bc1545c2bc9d0a61f7eaa6?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2024-05-26 18:34:05', '2024-05-26 16:38:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 20:37:17', '2024-05-13 18:50:53', NULL),
(3, 'http://localhost/wp1/', '21:7cc76660eccc0a05855c5719cf0b8893', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Strona główna', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2024-05-26 18:34:05', '2024-05-26 16:38:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 18:38:10', '2024-05-13 18:50:53', NULL),
(4, 'http://localhost/wp1/category/bez-kategorii/', '44:91fd77bf1f79af44336c85b7cddad5e8', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Bez kategorii', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:54', '2024-05-26 16:36:01', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 18:11:07', '2024-05-13 18:50:53', NULL),
(5, 'http://localhost/wp1/en/category/bez-kategorii-en/', '50:e8f92a5c955e757b910b0558492788a1', 7, 'term', 'category', NULL, NULL, NULL, NULL, 'Bez kategorii', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:54', '2024-05-26 16:36:01', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 19:43:07', '2024-05-23 19:43:05', NULL),
(6, 'http://localhost/wp1/category/nowa-kategoria/', '45:60584289738df83f5e0368f5a0a6d7a8', 20, 'term', 'category', NULL, NULL, NULL, NULL, 'Nowa kategoria', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:54', '2024-05-26 16:38:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 18:38:10', '2024-05-24 18:34:43', NULL),
(7, 'http://localhost/wp1/?page_id=3', '31:540c6321b24b101dcb52fcf7fec8b561', 3, 'post', 'page', 1, 0, NULL, NULL, 'Polityka prywatności', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:55', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 19:57:48', '2024-05-13 18:50:53', 0),
(8, 'http://localhost/wp1/en/home/', '29:2a23c954c5d509c43fcf652ae529a336', 34, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 18:33:29', '2024-05-16 18:38:36', 0),
(9, 'http://localhost/wp1/o-nas/', '27:06afbb2d68093eab87dccbc527a463a1', 36, 'post', 'page', 1, 0, NULL, NULL, 'O nas', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg', NULL, '15', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg', '15', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 1141635,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner.jpg\",\n    \"size\": \"full\",\n    \"id\": 15,\n    \"alt\": \"main-banner\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-22 17:34:45', '2024-05-16 18:40:54', 0),
(10, 'http://localhost/wp1/en/about-us/', '33:18745308e2fadb73eda227734d3ca18f', 38, 'post', 'page', 1, 0, NULL, NULL, 'About Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner-1.jpg', NULL, '118', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner-1.jpg', '118', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 1141635,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 118,\n    \"alt\": \"\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-22 17:43:27', '2024-05-16 18:41:20', 0),
(11, 'http://localhost/wp1/kontakt/', '29:2fb96b282ee17571a7af3b4a8df559b6', 120, 'post', 'page', 1, 0, NULL, NULL, 'Kontakt', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg', NULL, '23', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg', '23', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 189679,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner1.jpg\",\n    \"size\": \"full\",\n    \"id\": 23,\n    \"alt\": \"main-banner1\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 2, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-22 18:19:33', '2024-05-22 17:59:53', 0),
(12, 'http://localhost/wp1/en/contact/', '32:79fb0d913caccb47139871c8c830c447', 122, 'post', 'page', 1, 0, NULL, NULL, 'Contact', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1-1.jpg', NULL, '132', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1-1.jpg', '132', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 189679,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner1-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner1-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 132,\n    \"alt\": \"\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 2, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-22 18:42:55', '2024-05-22 18:02:58', 0),
(13, 'http://localhost/wp1/blog/', '26:3180d561529e2cb34630b30c9b2b20c2', 162, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', NULL, '156', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', '156', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1536,\n    \"filesize\": 506098,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"size\": \"full\",\n    \"id\": 156,\n    \"alt\": \"\",\n    \"pixels\": 2949120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 20:15:38', '2024-05-23 19:10:45', 0),
(14, 'http://localhost/wp1/en/news/', '29:53a8fe6a3772de4bda3d22b96e6149b1', 164, 'post', 'page', 1, 0, NULL, NULL, 'News', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy-1.jpg', NULL, '179', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy-1.jpg', '179', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1536,\n    \"filesize\": 506098,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/spacejoy-1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/spacejoy-1.jpg\",\n    \"size\": \"full\",\n    \"id\": 179,\n    \"alt\": \"\",\n    \"pixels\": 2949120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 20:16:05', '2024-05-23 19:15:16', 0),
(15, 'http://localhost/wp1/2024/05/13/witaj-swiecie/', '46:90edeeecc5175f4725e39637dbfc36c5', 1, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg', NULL, '53', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg', '53', 'featured-image', '{\n    \"width\": 384,\n    \"height\": 289,\n    \"filesize\": 139934,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/tab3.jpg\",\n    \"size\": \"full\",\n    \"id\": 53,\n    \"alt\": \"tab3\",\n    \"pixels\": 110976,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-20 19:53:07', '2024-05-13 18:50:53', 0),
(16, 'http://localhost/wp1/en/2024/05/23/hello-world/', '47:d65d2d5af4990366e646f7847bb396d3', 174, 'post', 'post', 1, 0, NULL, NULL, 'Hello World!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg', NULL, '53', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg', '53', 'featured-image', '{\n    \"width\": 384,\n    \"height\": 289,\n    \"filesize\": 139934,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/tab3.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/tab3.jpg\",\n    \"size\": \"full\",\n    \"id\": 53,\n    \"alt\": \"tab3\",\n    \"pixels\": 110976,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:58', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 19:43:07', '2024-05-23 19:43:05', 0),
(17, 'http://localhost/wp1/2024/05/23/witaj-swiecie-2/', '48:e70fc6584cf87b9771af4f54a00e14ca', 180, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie 2!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', NULL, '156', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', '156', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1536,\n    \"filesize\": 506098,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"size\": \"full\",\n    \"id\": 156,\n    \"alt\": \"\",\n    \"pixels\": 2949120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-23 20:22:51', '2024-05-23 20:16:35', 0),
(18, 'http://localhost/wp1/2024/05/24/witaj-swiecie-3/', '48:42d3b07bf9ba6f6bda9b130d3d5ff3c9', 183, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie 3!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg', NULL, '112', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg', '112', 'featured-image', '{\n    \"width\": 512,\n    \"height\": 546,\n    \"filesize\": 228383,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/singleimage.jpg\",\n    \"size\": \"full\",\n    \"id\": 112,\n    \"alt\": \"\",\n    \"pixels\": 279552,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 17:49:38', '2024-05-24 17:49:18', 0),
(19, 'http://localhost/wp1/2024/05/24/witaj-swiecie-4/', '48:801b8dadc3d8c3f63ac96bb8446fddd9', 185, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie 4!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg', NULL, '23', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg', '23', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 189679,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner1.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner1.jpg\",\n    \"size\": \"full\",\n    \"id\": 23,\n    \"alt\": \"main-banner1\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 17:50:01', '2024-05-24 17:49:59', 0),
(20, 'http://localhost/wp1/2024/05/24/witaj-swiecie-5/', '48:cb2f97cc79cc1291b4b6ef2898f3a58b', 187, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie 5!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg', NULL, '15', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg', '15', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 869,\n    \"filesize\": 1141635,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/main-banner.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/main-banner.jpg\",\n    \"size\": \"full\",\n    \"id\": 15,\n    \"alt\": \"main-banner\",\n    \"pixels\": 1668480,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 17:50:24', '2024-05-24 17:50:22', 0),
(21, 'http://localhost/wp1/2024/05/24/witaj-swiecie-6/', '48:00c12772e2b0b64924ae58eb9b21c22a', 189, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, test 6!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', NULL, '156', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg', '156', 'featured-image', '{\n    \"width\": 1920,\n    \"height\": 1536,\n    \"filesize\": 506098,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/spacejoy.jpg\",\n    \"size\": \"full\",\n    \"id\": 156,\n    \"alt\": \"\",\n    \"pixels\": 2949120,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:35:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-26 18:11:07', '2024-05-24 17:51:42', 0),
(22, 'http://localhost/wp1/2024/05/24/witaj-swiecie-7/', '48:bc3764dacfaa2b560fbcffbaf565cbbf', 191, 'post', 'post', 1, 0, NULL, NULL, 'Witaj, świecie 7!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-24 17:51:58', '2024-05-24 17:51:57', 0),
(23, 'http://localhost/wp1/2024/05/24/witaj-swiecie-8/', '48:ed30a7bf0ba7480029d35a255ecaa54b', 195, 'post', 'post', 1, 0, NULL, 'Mój wpis na Wordpress', 'Witaj, świecie 8!', 'publish', NULL, 0, NULL, NULL, NULL, 'Wpis na WordPress', 44, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab2.jpg', NULL, '196', 'featured-image', NULL, NULL, 'http://localhost/wp1/wp-content/uploads/2024/05/tab2.jpg', '196', 'featured-image', '{\n    \"width\": 384,\n    \"height\": 289,\n    \"filesize\": 118051,\n    \"url\": \"http://localhost/wp1/wp-content/uploads/2024/05/tab2.jpg\",\n    \"path\": \"C:\\\\xampp\\\\htdocs\\\\wp1/wp-content/uploads/2024/05/tab2.jpg\",\n    \"size\": \"full\",\n    \"id\": 196,\n    \"alt\": \"\",\n    \"pixels\": 110976,\n    \"type\": \"image/jpeg\"\n}', 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:38:10', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2024-05-26 18:38:10', '2024-05-24 18:34:43', 0),
(24, 'http://localhost/wp1/slider-en/slider-en-1/', '43:28f946e93fab0f542656927dd083512b', 28, 'post', 'slider-en', 1, 0, NULL, NULL, 'Slider EN 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-17 18:13:13', '2024-05-16 18:18:22', 0),
(25, 'http://localhost/wp1/slider-en/slider-en-2/', '43:9d2dee48905c816a592a9ed238358f7d', 29, 'post', 'slider-en', 1, 0, NULL, NULL, 'Slider EN 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-16 18:19:01', '2024-05-16 18:19:00', 0),
(26, 'http://localhost/wp1/slider-pl/slider-pl-1/', '43:1b138788998c261a1065d0861b51fc4a', 25, 'post', 'slider-pl', 1, 0, NULL, NULL, 'Slider PL 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-17 18:12:56', '2024-05-16 18:15:43', 0),
(27, 'http://localhost/wp1/slider-pl/slider-pl-2/', '43:4156f18896d11f3c0026d1888572816b', 26, 'post', 'slider-pl', 1, 0, NULL, NULL, 'Slider PL 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2024-05-26 18:35:55', '2024-05-26 16:36:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-05-16 18:25:03', '2024-05-16 18:16:11', 0),
(28, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Strona nie została znaleziona %%sep%% %%sitename%%', NULL, 'Błąd 404: Strony nie znaleziono', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-26 18:35:56', '2024-05-26 16:35:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(29, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'Wyniki wyszukiwania \"%%searchphrase%%\" %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-26 18:35:56', '2024-05-26 16:35:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(30, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-26 18:35:56', '2024-05-26 16:35:56', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_primary_term`
--

INSERT INTO `wp_yoast_primary_term` (`id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 195, 20, 'category', '2024-05-26 18:38:10', '2024-05-26 16:38:10', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage.jpg', 36, 112, 'image-in', 9, NULL, 546, 512, 228383, NULL, NULL),
(2, 'http://localhost/wp1/wp-content/uploads/2024/05/singleimage-1.jpg', 38, 115, 'image-in', 10, NULL, 546, 512, 228383, NULL, NULL),
(3, 'mailto:info@bakery.com', 120, NULL, 'external', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'https://#', 120, NULL, 'internal', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'https://#', 120, NULL, 'internal', 11, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'mailto:info@bakery.com', 122, NULL, 'external', 12, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'https://#', 122, NULL, 'internal', 12, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'https://#', 122, NULL, 'internal', 12, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeksy dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeksy dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeksy dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeksy dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeksy dla tabeli `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeksy dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeksy dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indeksy dla tabeli `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Indeksy dla tabeli `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Indeksy dla tabeli `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Indeksy dla tabeli `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Indeksy dla tabeli `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Indeksy dla tabeli `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Indeksy dla tabeli `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Indeksy dla tabeli `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indeksy dla tabeli `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Indeksy dla tabeli `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Indeksy dla tabeli `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Indeksy dla tabeli `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `wp_wfls_role_counts`
--
ALTER TABLE `wp_wfls_role_counts`
  ADD PRIMARY KEY (`serialized_roles`,`two_factor_inactive`);

--
-- Indeksy dla tabeli `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Indeksy dla tabeli `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Indeksy dla tabeli `wp_wfsecurityevents`
--
ALTER TABLE `wp_wfsecurityevents`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Indeksy dla tabeli `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Indeksy dla tabeli `wp_wftrafficrates`
--
ALTER TABLE `wp_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- Indeksy dla tabeli `wp_wfwaffailures`
--
ALTER TABLE `wp_wfwaffailures`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wpmlautoresponderemails`
--
ALTER TABLE `wp_wpmlautoresponderemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoresponder_id` (`autoresponder_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `status` (`status`);

--
-- Indeksy dla tabeli `wp_wpmlautoresponders`
--
ALTER TABLE `wp_wpmlautoresponders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `status` (`status`),
  ADD KEY `delay` (`delay`),
  ADD KEY `alwayssend` (`alwayssend`);

--
-- Indeksy dla tabeli `wp_wpmlautorespondersforms`
--
ALTER TABLE `wp_wpmlautorespondersforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoresponder_id` (`autoresponder_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indeksy dla tabeli `wp_wpmlautoresponderslists`
--
ALTER TABLE `wp_wpmlautoresponderslists`
  ADD PRIMARY KEY (`rel_id`),
  ADD KEY `autoresponder_id` (`autoresponder_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indeksy dla tabeli `wp_wpmlbounces`
--
ALTER TABLE `wp_wpmlbounces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `history_id` (`history_id`);

--
-- Indeksy dla tabeli `wp_wpmlclicks`
--
ALTER TABLE `wp_wpmlclicks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber_id` (`subscriber_id`);

--
-- Indeksy dla tabeli `wp_wpmlcontents`
--
ALTER TABLE `wp_wpmlcontents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_id` (`history_id`);

--
-- Indeksy dla tabeli `wp_wpmlcountries`
--
ALTER TABLE `wp_wpmlcountries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `value` (`value`);

--
-- Indeksy dla tabeli `wp_wpmlemails`
--
ALTER TABLE `wp_wpmlemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eunique` (`eunique`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `read` (`read`),
  ADD KEY `status` (`status`),
  ADD KEY `bounced` (`bounced`),
  ADD KEY `messageid` (`messageid`(250));

--
-- Indeksy dla tabeli `wp_wpmlfields`
--
ALTER TABLE `wp_wpmlfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `type` (`type`(250)),
  ADD KEY `required` (`required`);

--
-- Indeksy dla tabeli `wp_wpmlfieldsforms`
--
ALTER TABLE `wp_wpmlfieldsforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `order` (`order`),
  ADD KEY `form_id` (`form_id`);

--
-- Indeksy dla tabeli `wp_wpmlfieldslists`
--
ALTER TABLE `wp_wpmlfieldslists`
  ADD PRIMARY KEY (`rel_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indeksy dla tabeli `wp_wpmlforms`
--
ALTER TABLE `wp_wpmlforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`(250));

--
-- Indeksy dla tabeli `wp_wpmlgroups`
--
ALTER TABLE `wp_wpmlgroups`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wpmlhistoriesattachments`
--
ALTER TABLE `wp_wpmlhistoriesattachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_id` (`history_id`);

--
-- Indeksy dla tabeli `wp_wpmlhistorieslists`
--
ALTER TABLE `wp_wpmlhistorieslists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indeksy dla tabeli `wp_wpmlhistory`
--
ALTER TABLE `wp_wpmlhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `sent` (`sent`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `wp_wpmllatestposts`
--
ALTER TABLE `wp_wpmllatestposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `lps_id` (`lps_id`);

--
-- Indeksy dla tabeli `wp_wpmllatestpostssubscriptions`
--
ALTER TABLE `wp_wpmllatestpostssubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_id` (`history_id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- Indeksy dla tabeli `wp_wpmllinks`
--
ALTER TABLE `wp_wpmllinks`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wp_wpmlmailinglists`
--
ALTER TABLE `wp_wpmlmailinglists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paid` (`paid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indeksy dla tabeli `wp_wpmloptions`
--
ALTER TABLE `wp_wpmloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indeksy dla tabeli `wp_wpmlorders`
--
ALTER TABLE `wp_wpmlorders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_number` (`order_number`);

--
-- Indeksy dla tabeli `wp_wpmlposts`
--
ALTER TABLE `wp_wpmlposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `sent` (`sent`);

--
-- Indeksy dla tabeli `wp_wpmlsubscribermetas`
--
ALTER TABLE `wp_wpmlsubscribermetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `meta_key` (`meta_key`(250));

--
-- Indeksy dla tabeli `wp_wpmlsubscribers`
--
ALTER TABLE `wp_wpmlsubscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `email` (`email`),
  ADD KEY `registered` (`registered`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `format` (`format`),
  ADD KEY `device` (`device`);

--
-- Indeksy dla tabeli `wp_wpmlsubscriberslists`
--
ALTER TABLE `wp_wpmlsubscriberslists`
  ADD PRIMARY KEY (`rel_id`),
  ADD UNIQUE KEY `subscriber_id_list_id` (`subscriber_id`,`list_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `active` (`active`),
  ADD KEY `paid` (`paid`);

--
-- Indeksy dla tabeli `wp_wpmlsubscribersoptions`
--
ALTER TABLE `wp_wpmlsubscribersoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indeksy dla tabeli `wp_wpmltemplates`
--
ALTER TABLE `wp_wpmltemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- Indeksy dla tabeli `wp_wpmlthemes`
--
ALTER TABLE `wp_wpmlthemes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `def` (`def`),
  ADD KEY `defsystem` (`defsystem`);

--
-- Indeksy dla tabeli `wp_wpmlunsubscribes`
--
ALTER TABLE `wp_wpmlunsubscribes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mailinglist_id` (`mailinglist_id`),
  ADD KEY `history_id` (`history_id`);

--
-- Indeksy dla tabeli `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indeksy dla tabeli `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indeksy dla tabeli `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indeksy dla tabeli `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indeksy dla tabeli `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1719;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1477;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsecurityevents`
--
ALTER TABLE `wp_wfsecurityevents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wfwaffailures`
--
ALTER TABLE `wp_wfwaffailures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlautoresponderemails`
--
ALTER TABLE `wp_wpmlautoresponderemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlautoresponders`
--
ALTER TABLE `wp_wpmlautoresponders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlautorespondersforms`
--
ALTER TABLE `wp_wpmlautorespondersforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlautoresponderslists`
--
ALTER TABLE `wp_wpmlautoresponderslists`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlbounces`
--
ALTER TABLE `wp_wpmlbounces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlclicks`
--
ALTER TABLE `wp_wpmlclicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlcontents`
--
ALTER TABLE `wp_wpmlcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlcountries`
--
ALTER TABLE `wp_wpmlcountries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `wp_wpmlemails`
--
ALTER TABLE `wp_wpmlemails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlfields`
--
ALTER TABLE `wp_wpmlfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wpmlfieldsforms`
--
ALTER TABLE `wp_wpmlfieldsforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlfieldslists`
--
ALTER TABLE `wp_wpmlfieldslists`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wpmlforms`
--
ALTER TABLE `wp_wpmlforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlgroups`
--
ALTER TABLE `wp_wpmlgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlhistoriesattachments`
--
ALTER TABLE `wp_wpmlhistoriesattachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlhistorieslists`
--
ALTER TABLE `wp_wpmlhistorieslists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlhistory`
--
ALTER TABLE `wp_wpmlhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmllatestposts`
--
ALTER TABLE `wp_wpmllatestposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmllatestpostssubscriptions`
--
ALTER TABLE `wp_wpmllatestpostssubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmllinks`
--
ALTER TABLE `wp_wpmllinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlmailinglists`
--
ALTER TABLE `wp_wpmlmailinglists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmloptions`
--
ALTER TABLE `wp_wpmloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmlorders`
--
ALTER TABLE `wp_wpmlorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlposts`
--
ALTER TABLE `wp_wpmlposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlsubscribermetas`
--
ALTER TABLE `wp_wpmlsubscribermetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlsubscribers`
--
ALTER TABLE `wp_wpmlsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlsubscriberslists`
--
ALTER TABLE `wp_wpmlsubscriberslists`
  MODIFY `rel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlsubscribersoptions`
--
ALTER TABLE `wp_wpmlsubscribersoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmltemplates`
--
ALTER TABLE `wp_wpmltemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpmlthemes`
--
ALTER TABLE `wp_wpmlthemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_wpmlunsubscribes`
--
ALTER TABLE `wp_wpmlunsubscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
