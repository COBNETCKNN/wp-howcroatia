-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://howcroatia.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://howcroatia.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','HowCroatia','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:226:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"medical/?$\";s:27:\"index.php?post_type=medical\";s:40:\"medical/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=medical&feed=$matches[1]\";s:35:\"medical/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=medical&feed=$matches[1]\";s:27:\"medical/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=medical&paged=$matches[1]\";s:8:\"legal/?$\";s:25:\"index.php?post_type=legal\";s:38:\"legal/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=legal&feed=$matches[1]\";s:33:\"legal/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=legal&feed=$matches[1]\";s:25:\"legal/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=legal&paged=$matches[1]\";s:12:\"financial/?$\";s:29:\"index.php?post_type=financial\";s:42:\"financial/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=financial&feed=$matches[1]\";s:37:\"financial/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=financial&feed=$matches[1]\";s:29:\"financial/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=financial&paged=$matches[1]\";s:9:\"estate/?$\";s:26:\"index.php?post_type=estate\";s:39:\"estate/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=estate&feed=$matches[1]\";s:34:\"estate/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=estate&feed=$matches[1]\";s:26:\"estate/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=estate&paged=$matches[1]\";s:8:\"hotel/?$\";s:25:\"index.php?post_type=hotel\";s:38:\"hotel/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=hotel&feed=$matches[1]\";s:33:\"hotel/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=hotel&feed=$matches[1]\";s:25:\"hotel/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=hotel&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"medical/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"medical/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"medical/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"medical/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"medical/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"medical/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"medical/([^/]+)/embed/?$\";s:40:\"index.php?medical=$matches[1]&embed=true\";s:28:\"medical/([^/]+)/trackback/?$\";s:34:\"index.php?medical=$matches[1]&tb=1\";s:48:\"medical/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?medical=$matches[1]&feed=$matches[2]\";s:43:\"medical/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?medical=$matches[1]&feed=$matches[2]\";s:36:\"medical/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?medical=$matches[1]&paged=$matches[2]\";s:43:\"medical/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?medical=$matches[1]&cpage=$matches[2]\";s:32:\"medical/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?medical=$matches[1]&page=$matches[2]\";s:24:\"medical/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"medical/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"medical/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"medical/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"medical/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"medical/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"legal/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"legal/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"legal/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"legal/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"legal/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"legal/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"legal/([^/]+)/embed/?$\";s:38:\"index.php?legal=$matches[1]&embed=true\";s:26:\"legal/([^/]+)/trackback/?$\";s:32:\"index.php?legal=$matches[1]&tb=1\";s:46:\"legal/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?legal=$matches[1]&feed=$matches[2]\";s:41:\"legal/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?legal=$matches[1]&feed=$matches[2]\";s:34:\"legal/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?legal=$matches[1]&paged=$matches[2]\";s:41:\"legal/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?legal=$matches[1]&cpage=$matches[2]\";s:30:\"legal/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?legal=$matches[1]&page=$matches[2]\";s:22:\"legal/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"legal/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"legal/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"legal/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"legal/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"legal/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"financial/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"financial/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"financial/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"financial/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"financial/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"financial/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"financial/([^/]+)/embed/?$\";s:42:\"index.php?financial=$matches[1]&embed=true\";s:30:\"financial/([^/]+)/trackback/?$\";s:36:\"index.php?financial=$matches[1]&tb=1\";s:50:\"financial/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?financial=$matches[1]&feed=$matches[2]\";s:45:\"financial/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?financial=$matches[1]&feed=$matches[2]\";s:38:\"financial/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?financial=$matches[1]&paged=$matches[2]\";s:45:\"financial/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?financial=$matches[1]&cpage=$matches[2]\";s:34:\"financial/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?financial=$matches[1]&page=$matches[2]\";s:26:\"financial/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"financial/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"financial/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"financial/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"financial/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"financial/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"estate/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"estate/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"estate/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"estate/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"estate/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"estate/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"estate/([^/]+)/embed/?$\";s:39:\"index.php?estate=$matches[1]&embed=true\";s:27:\"estate/([^/]+)/trackback/?$\";s:33:\"index.php?estate=$matches[1]&tb=1\";s:47:\"estate/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?estate=$matches[1]&feed=$matches[2]\";s:42:\"estate/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?estate=$matches[1]&feed=$matches[2]\";s:35:\"estate/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?estate=$matches[1]&paged=$matches[2]\";s:42:\"estate/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?estate=$matches[1]&cpage=$matches[2]\";s:31:\"estate/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?estate=$matches[1]&page=$matches[2]\";s:23:\"estate/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"estate/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"estate/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"estate/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"estate/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"estate/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"hotel/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"hotel/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"hotel/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"hotel/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"hotel/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"hotel/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"hotel/([^/]+)/embed/?$\";s:38:\"index.php?hotel=$matches[1]&embed=true\";s:26:\"hotel/([^/]+)/trackback/?$\";s:32:\"index.php?hotel=$matches[1]&tb=1\";s:46:\"hotel/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?hotel=$matches[1]&feed=$matches[2]\";s:41:\"hotel/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?hotel=$matches[1]&feed=$matches[2]\";s:34:\"hotel/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?hotel=$matches[1]&paged=$matches[2]\";s:41:\"hotel/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?hotel=$matches[1]&cpage=$matches[2]\";s:30:\"hotel/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?hotel=$matches[1]&page=$matches[2]\";s:22:\"hotel/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"hotel/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"hotel/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"hotel/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"hotel/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"hotel/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"restaurants/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"restaurants/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"restaurants/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"restaurants/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"restaurants/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"restaurants/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"restaurants/([^/]+)/embed/?$\";s:44:\"index.php?restaurants=$matches[1]&embed=true\";s:32:\"restaurants/([^/]+)/trackback/?$\";s:38:\"index.php?restaurants=$matches[1]&tb=1\";s:40:\"restaurants/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?restaurants=$matches[1]&paged=$matches[2]\";s:47:\"restaurants/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?restaurants=$matches[1]&cpage=$matches[2]\";s:36:\"restaurants/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?restaurants=$matches[1]&page=$matches[2]\";s:28:\"restaurants/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"restaurants/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"restaurants/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"restaurants/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"restaurants/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"restaurants/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:2;s:35:\"crop-thumbnails/crop-thumbnails.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','wp-howcroatia','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','wp-howcroatia','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','9','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1629892140','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (99,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (100,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (101,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (107,'cron','a:6:{i:1615423742;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1615463342;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1615464295;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615464296;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615636142;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','^@axLN8((hy<ln6FO62[%8sK7RDU,21F#+.E0dN~e|a.3GlO0(A}c.R9/&0:q HK','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','U3hiuYuv4@f0&J-g~0b/5kR;`UVO<7]%0K6c2=LU=5x**k`-mA<v:s(h-hDyK3RV','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1615420229;s:15:\"version_checked\";s:5:\"5.6.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615420231;s:7:\"checked\";a:1:{s:13:\"wp-howcroatia\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614341228;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (145,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (148,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (149,'current_theme','HowCroatia','yes');
INSERT INTO `wp_options` VALUES (150,'theme_mods_wp-howcroatia','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:6:\"Navbar\";i:4;s:16:\"business-listing\";i:5;s:8:\"nav-menu\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614341856;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (151,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (153,'theme_mods_twentynineteen','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614341859;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (160,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (173,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"6\",\"critical\":\"2\"}','yes');
INSERT INTO `wp_options` VALUES (174,'recently_activated','a:2:{s:33:\"classic-editor/classic-editor.php\";i:1615384697;s:26:\"wp-clone-template/main.php\";i:1614958798;}','yes');
INSERT INTO `wp_options` VALUES (179,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (202,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (250,'location_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (269,'_site_transient_timeout_browser_0dfb3ef9c1b48f7db77c2e3064864c91','1615563470','no');
INSERT INTO `wp_options` VALUES (270,'_site_transient_browser_0dfb3ef9c1b48f7db77c2e3064864c91','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.190\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (271,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1615563470','no');
INSERT INTO `wp_options` VALUES (272,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (299,'recovery_mode_email_last_sent','1615243356','yes');
INSERT INTO `wp_options` VALUES (302,'service_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (306,'location-financial_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (326,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1615395280','no');
INSERT INTO `wp_options` VALUES (327,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4753;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4751;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2712;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2585;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1995;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1849;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1822;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1504;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1503;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1496;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1479;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1474;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1463;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1250;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1220;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1217;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1152;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1119;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1041;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:935;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:923;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:900;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:884;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:861;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:813;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:809;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:802;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:795;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:776;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:759;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:738;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:726;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:716;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:710;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:706;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:661;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:656;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:654;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:652;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:646;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:644;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:614;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:594;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:588;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:586;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:584;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:571;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:564;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:562;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:559;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:557;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:553;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:540;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:539;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:537;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:530;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:513;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:504;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:497;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:494;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:490;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:486;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:483;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:479;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:478;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:469;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:455;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:453;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:449;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:445;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:442;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:440;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:438;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:437;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:433;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:421;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:419;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:404;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:404;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:402;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:390;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:390;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:384;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:380;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:368;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:363;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:361;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:355;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:351;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:346;}}','no');
INSERT INTO `wp_options` VALUES (358,'_transient_timeout_acf_plugin_updates','1615593030','no');
INSERT INTO `wp_options` VALUES (359,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";}}','no');
INSERT INTO `wp_options` VALUES (360,'_site_transient_timeout_theme_roots','1615422031','no');
INSERT INTO `wp_options` VALUES (361,'_site_transient_theme_roots','a:1:{s:13:\"wp-howcroatia\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (362,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615420232;s:7:\"checked\";a:4:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:5:\"1.3.0\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";}s:8:\"response\";a:2:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"crop-thumbnails/crop-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/crop-thumbnails\";s:4:\"slug\";s:15:\"crop-thumbnails\";s:6:\"plugin\";s:35:\"crop-thumbnails/crop-thumbnails.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/crop-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/crop-thumbnails.1.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";s:3:\"svg\";s:60:\"https://ps.w.org/crop-thumbnails/assets/icon.svg?rev=1228698\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/crop-thumbnails/assets/banner-1544x500.jpg?rev=626571\";s:2:\"1x\";s:69:\"https://ps.w.org/crop-thumbnails/assets/banner-772x250.jpg?rev=626571\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1615041205:1');
INSERT INTO `wp_postmeta` VALUES (10,9,'_edit_lock','1614959861:1');
INSERT INTO `wp_postmeta` VALUES (11,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (12,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (13,11,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (14,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (15,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (16,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (17,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (18,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (19,11,'_menu_item_orphaned','1614360676');
INSERT INTO `wp_postmeta` VALUES (20,12,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (21,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (22,12,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (23,12,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (24,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (25,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (27,12,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (28,12,'_menu_item_orphaned','1614360676');
INSERT INTO `wp_postmeta` VALUES (29,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (30,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (31,13,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (32,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (33,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (34,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (36,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,13,'_menu_item_orphaned','1614360695');
INSERT INTO `wp_postmeta` VALUES (38,14,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (39,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (40,14,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (41,14,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (42,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (43,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (44,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (45,14,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (46,14,'_menu_item_orphaned','1614360695');
INSERT INTO `wp_postmeta` VALUES (65,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (66,20,'_edit_lock','1614370928:1');
INSERT INTO `wp_postmeta` VALUES (76,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,22,'_edit_lock','1614372357:1');
INSERT INTO `wp_postmeta` VALUES (78,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (79,23,'_edit_lock','1614372361:1');
INSERT INTO `wp_postmeta` VALUES (80,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (81,24,'_edit_lock','1614372397:1');
INSERT INTO `wp_postmeta` VALUES (118,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,29,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (121,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (128,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (129,30,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (130,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (131,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (132,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (133,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (134,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (172,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (173,35,'_edit_lock','1614374813:1');
INSERT INTO `wp_postmeta` VALUES (185,39,'_wp_attached_file','2021/02/free-to-use-sounds-vuU18e2gs8-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (186,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2021/02/free-to-use-sounds-vuU18e2gs8-unsplash-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"free-to-use-sounds-vuU18e2gs8-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"free-to-use-sounds-vuU18e2gs8-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"free-to-use-sounds-vuU18e2gs8-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:51:\"free-to-use-sounds-vuU18e2gs8-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"free-to-use-sounds-vuU18e2gs8-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (187,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (188,7,'_thumbnail_id','67');
INSERT INTO `wp_postmeta` VALUES (189,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,41,'_edit_lock','1614540702:1');
INSERT INTO `wp_postmeta` VALUES (201,7,'about_us_text','We are an online business lifestyle magazine and business directory. We cover topics all-around living, doing business, and spending holidays in Croatia.\r\n\r\nAt HOW!CROATIA, we believe that people visiting Croatia deserve the best insider knowledge, support, and tips for a great vacation or business experience.\r\n\r\nTherefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\n\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.\r\n');
INSERT INTO `wp_postmeta` VALUES (202,7,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (203,44,'about_us_text','We are an online business lifestyle magazine and business directory. We cover topics all-around living, doing business, and spending holidays in Croatia.\r\nAt HOW!CROATIA, we believe that people visiting Croatia deserve the best insider knowledge, support, and tips for a great vacation or business experience.\r\nTherefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.');
INSERT INTO `wp_postmeta` VALUES (204,44,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (205,45,'about_us_text','We are an online business lifestyle magazine and business directory. We cover topics all-around living, doing business, and spending holidays in Croatia.\r\n\r\nAt HOW!CROATIA, we believe that people visiting Croatia deserve the best insider knowledge, support, and tips for a great vacation or business experience.\r\n\r\nTherefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\n\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.');
INSERT INTO `wp_postmeta` VALUES (206,45,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (211,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (212,46,'_edit_lock','1615385153:1');
INSERT INTO `wp_postmeta` VALUES (213,47,'_wp_attached_file','2021/03/blog-article-img.png');
INSERT INTO `wp_postmeta` VALUES (214,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:728;s:6:\"height\";i:502;s:4:\"file\";s:28:\"2021/03/blog-article-img.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"blog-article-img-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"blog-article-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (215,46,'_thumbnail_id','47');
INSERT INTO `wp_postmeta` VALUES (218,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (219,49,'_edit_lock','1615384856:1');
INSERT INTO `wp_postmeta` VALUES (220,50,'_wp_attached_file','2021/03/blog-article-img2.png');
INSERT INTO `wp_postmeta` VALUES (221,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:728;s:6:\"height\";i:502;s:4:\"file\";s:29:\"2021/03/blog-article-img2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"blog-article-img2-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"blog-article-img2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"singlePost\";a:5:{s:4:\"file\";s:30:\"blog-article-img2-1920x700.png\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:95;s:2:\"x2\";i:728;s:2:\"y2\";i:361;s:14:\"original_width\";i:728;s:15:\"original_height\";i:502;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (222,49,'_thumbnail_id','50');
INSERT INTO `wp_postmeta` VALUES (225,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,52,'_edit_lock','1615385153:1');
INSERT INTO `wp_postmeta` VALUES (227,53,'_wp_attached_file','2021/03/blog-article-img3.png');
INSERT INTO `wp_postmeta` VALUES (228,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:728;s:6:\"height\";i:502;s:4:\"file\";s:29:\"2021/03/blog-article-img3.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"blog-article-img3-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"blog-article-img3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"singlePost\";a:5:{s:4:\"file\";s:30:\"blog-article-img3-1920x700.png\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";s:22:\"cpt_last_cropping_data\";a:6:{s:1:\"x\";i:0;s:1:\"y\";i:55;s:2:\"x2\";i:728;s:2:\"y2\";i:321;s:14:\"original_width\";i:728;s:15:\"original_height\";i:502;}}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (229,52,'_thumbnail_id','53');
INSERT INTO `wp_postmeta` VALUES (239,57,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,57,'_edit_lock','1614879974:1');
INSERT INTO `wp_postmeta` VALUES (241,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (242,59,'_edit_lock','1614959858:1');
INSERT INTO `wp_postmeta` VALUES (243,60,'_wp_attached_file','2021/03/20190705_204850.jpg');
INSERT INTO `wp_postmeta` VALUES (244,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:408;s:6:\"height\";i:306;s:4:\"file\";s:27:\"2021/03/20190705_204850.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"20190705_204850-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"20190705_204850-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (245,59,'_thumbnail_id','60');
INSERT INTO `wp_postmeta` VALUES (246,59,'restaurant_google_maps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/hEYisSEQ93Pt9pE48\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (247,59,'_restaurant_google_maps_link','field_603e598b0266b');
INSERT INTO `wp_postmeta` VALUES (248,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,61,'_edit_lock','1614699382:1');
INSERT INTO `wp_postmeta` VALUES (250,62,'_wp_attached_file','2021/03/D3S_5978-Edit.jpg');
INSERT INTO `wp_postmeta` VALUES (251,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:408;s:6:\"height\";i:271;s:4:\"file\";s:25:\"2021/03/D3S_5978-Edit.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"D3S_5978-Edit-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"D3S_5978-Edit-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:16:\"Marko Marinkovic\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:36:\"All rights reserved +385 98 60 22 20\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (252,61,'_thumbnail_id','62');
INSERT INTO `wp_postmeta` VALUES (253,61,'restaurant_google_maps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/87MuRrhgQTY4qjn87\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (254,61,'_restaurant_google_maps_link','field_603e598b0266b');
INSERT INTO `wp_postmeta` VALUES (255,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (256,63,'_edit_lock','1614699837:1');
INSERT INTO `wp_postmeta` VALUES (257,64,'_wp_attached_file','2021/03/2020-07-03.jpg');
INSERT INTO `wp_postmeta` VALUES (258,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:408;s:6:\"height\";i:306;s:4:\"file\";s:22:\"2021/03/2020-07-03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2020-07-03-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2020-07-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (259,63,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (260,63,'restaurant_google_maps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/FrUMBZWtHLa7tzw47\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (261,63,'_restaurant_google_maps_link','field_603e598b0266b');
INSERT INTO `wp_postmeta` VALUES (262,59,'restaurant_location','DUBROVNIK, OLD TOWN');
INSERT INTO `wp_postmeta` VALUES (263,59,'_restaurant_location','field_603e5bd600746');
INSERT INTO `wp_postmeta` VALUES (264,61,'restaurant_location','DUBROVNIK, OLD TOWN');
INSERT INTO `wp_postmeta` VALUES (265,61,'_restaurant_location','field_603e5bd600746');
INSERT INTO `wp_postmeta` VALUES (266,63,'restaurant_location','DUBROVNIK, OLD TOWN');
INSERT INTO `wp_postmeta` VALUES (267,63,'_restaurant_location','field_603e5bd600746');
INSERT INTO `wp_postmeta` VALUES (270,66,'_wp_attached_file','2021/03/magazine-featured-article-bg.png');
INSERT INTO `wp_postmeta` VALUES (271,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1432;s:4:\"file\";s:40:\"2021/03/magazine-featured-article-bg.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"magazine-featured-article-bg-300x149.png\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"magazine-featured-article-bg-1024x509.png\";s:5:\"width\";i:1024;s:6:\"height\";i:509;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"magazine-featured-article-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"magazine-featured-article-bg-768x382.png\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"magazine-featured-article-bg-1536x764.png\";s:5:\"width\";i:1536;s:6:\"height\";i:764;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:42:\"magazine-featured-article-bg-2048x1018.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1018;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:41:\"magazine-featured-article-bg-1920x700.png\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:41:\"magazine-featured-article-bg-1920x700.png\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (272,67,'_wp_attached_file','2021/03/free-to-use-sounds-vuU18e2gs8-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (273,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2021/03/free-to-use-sounds-vuU18e2gs8-unsplash-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"free-to-use-sounds-vuU18e2gs8-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"free-to-use-sounds-vuU18e2gs8-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"free-to-use-sounds-vuU18e2gs8-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"free-to-use-sounds-vuU18e2gs8-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:51:\"free-to-use-sounds-vuU18e2gs8-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:51:\"free-to-use-sounds-vuU18e2gs8-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"free-to-use-sounds-vuU18e2gs8-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (274,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,68,'_edit_lock','1614860386:1');
INSERT INTO `wp_postmeta` VALUES (276,69,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (277,69,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (278,69,'_menu_item_object_id','-12');
INSERT INTO `wp_postmeta` VALUES (279,69,'_menu_item_object','hotel');
INSERT INTO `wp_postmeta` VALUES (280,69,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (281,69,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (282,69,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (283,69,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (285,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (286,70,'_edit_lock','1614860552:1');
INSERT INTO `wp_postmeta` VALUES (287,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (288,71,'_edit_lock','1614860556:1');
INSERT INTO `wp_postmeta` VALUES (293,74,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (294,74,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (295,74,'_menu_item_object_id','-12');
INSERT INTO `wp_postmeta` VALUES (296,74,'_menu_item_object','medical');
INSERT INTO `wp_postmeta` VALUES (297,74,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (298,74,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (299,74,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (300,74,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (302,75,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (303,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (304,75,'_menu_item_object_id','-16');
INSERT INTO `wp_postmeta` VALUES (305,75,'_menu_item_object','legal');
INSERT INTO `wp_postmeta` VALUES (306,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (307,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (308,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (309,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (311,76,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (312,76,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (313,76,'_menu_item_object_id','-20');
INSERT INTO `wp_postmeta` VALUES (314,76,'_menu_item_object','financial');
INSERT INTO `wp_postmeta` VALUES (315,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (316,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (317,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (318,76,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (320,77,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (321,77,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (322,77,'_menu_item_object_id','-24');
INSERT INTO `wp_postmeta` VALUES (323,77,'_menu_item_object','estate');
INSERT INTO `wp_postmeta` VALUES (324,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (325,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (326,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (327,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (329,70,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (330,70,'_wp_trash_meta_time','1614861362');
INSERT INTO `wp_postmeta` VALUES (331,70,'_wp_desired_post_slug','asd');
INSERT INTO `wp_postmeta` VALUES (332,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (333,71,'_wp_trash_meta_time','1614861366');
INSERT INTO `wp_postmeta` VALUES (334,71,'_wp_desired_post_slug','asd');
INSERT INTO `wp_postmeta` VALUES (343,79,'_wp_attached_file','2021/03/DJI_0020_Detailed.jpg');
INSERT INTO `wp_postmeta` VALUES (344,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:426;s:6:\"height\";i:240;s:4:\"file\";s:29:\"2021/03/DJI_0020_Detailed.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"DJI_0020_Detailed-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"DJI_0020_Detailed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (345,68,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (346,68,'_wp_trash_meta_time','1614878750');
INSERT INTO `wp_postmeta` VALUES (347,68,'_wp_desired_post_slug','asd');
INSERT INTO `wp_postmeta` VALUES (348,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (349,83,'_edit_lock','1615238574:1');
INSERT INTO `wp_postmeta` VALUES (353,83,'restaurant_location','DUBROVNIK, OLD TOWN');
INSERT INTO `wp_postmeta` VALUES (354,83,'_restaurant_location','field_603e5bd600746');
INSERT INTO `wp_postmeta` VALUES (355,83,'restaurant_google_maps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:30:\"https://g.page/icy-house?share\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (356,83,'_restaurant_google_maps_link','field_603e598b0266b');
INSERT INTO `wp_postmeta` VALUES (357,83,'_thumbnail_id','88');
INSERT INTO `wp_postmeta` VALUES (358,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (359,84,'_edit_lock','1615386799:1');
INSERT INTO `wp_postmeta` VALUES (360,85,'_wp_attached_file','2021/03/unnamed.jpg');
INSERT INTO `wp_postmeta` VALUES (361,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:406;s:6:\"height\";i:270;s:4:\"file\";s:19:\"2021/03/unnamed.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (362,84,'_thumbnail_id','85');
INSERT INTO `wp_postmeta` VALUES (363,84,'restaurant_location','DUBROVNIK, OLD TOWN');
INSERT INTO `wp_postmeta` VALUES (364,84,'_restaurant_location','field_603e5bd600746');
INSERT INTO `wp_postmeta` VALUES (365,84,'restaurant_google_maps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/X9MXUKnw9UG1Mkdt9\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (366,84,'_restaurant_google_maps_link','field_603e598b0266b');
INSERT INTO `wp_postmeta` VALUES (367,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (368,86,'_edit_lock','1615384628:1');
INSERT INTO `wp_postmeta` VALUES (369,83,'hotel_googlemaps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:30:\"https://g.page/icy-house?share\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (370,83,'_hotel_googlemaps_link','field_60411d8434214');
INSERT INTO `wp_postmeta` VALUES (371,84,'hotel_googlemaps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/ztsaU4gEaq77pJJV8\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (372,84,'_hotel_googlemaps_link','field_60411d8434214');
INSERT INTO `wp_postmeta` VALUES (373,88,'_wp_attached_file','2021/03/edvin-johansson-rlwE8f8anOc-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (374,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:48:\"2021/03/edvin-johansson-rlwE8f8anOc-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"edvin-johansson-rlwE8f8anOc-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"edvin-johansson-rlwE8f8anOc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:48:\"edvin-johansson-rlwE8f8anOc-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (375,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (376,89,'_edit_lock','1614882495:1');
INSERT INTO `wp_postmeta` VALUES (377,90,'_wp_attached_file','2021/03/ciudad-maderas-MXbM1NrRqtI-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (378,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:47:\"2021/03/ciudad-maderas-MXbM1NrRqtI-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"ciudad-maderas-MXbM1NrRqtI-unsplash-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"ciudad-maderas-MXbM1NrRqtI-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:47:\"ciudad-maderas-MXbM1NrRqtI-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (379,89,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (380,89,'hotel_googlemaps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/bEV266bVnduVmzrJ6\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (381,89,'_hotel_googlemaps_link','field_60411d8434214');
INSERT INTO `wp_postmeta` VALUES (382,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (383,91,'_edit_lock','1615386856:1');
INSERT INTO `wp_postmeta` VALUES (384,92,'_wp_attached_file','2021/03/markus-spiske-g5ZIXjzRGds-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (385,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:46:\"2021/03/markus-spiske-g5ZIXjzRGds-unsplash.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"markus-spiske-g5ZIXjzRGds-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"markus-spiske-g5ZIXjzRGds-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:46:\"markus-spiske-g5ZIXjzRGds-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (386,91,'_thumbnail_id','92');
INSERT INTO `wp_postmeta` VALUES (387,91,'hotel_googlemaps_link','a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:37:\"https://goo.gl/maps/R3nBYHEUNNQxFbFQ6\";s:6:\"target\";s:6:\"_blank\";}');
INSERT INTO `wp_postmeta` VALUES (388,91,'_hotel_googlemaps_link','field_60411d8434214');
INSERT INTO `wp_postmeta` VALUES (389,94,'about_us_text','We are an online business lifestyle magazine and business directory. We cover topics all-around living, doing business, and spending holidays in Croatia.\r\n\r\nAt HOW!CROATIA, we believe that people visiting Croatia deserve the best insider knowledge, support, and tips for a great vacation or business experience.\r\n\r\nTherefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\n\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.\r\n\r\nasd');
INSERT INTO `wp_postmeta` VALUES (390,94,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (391,95,'about_us_text','Therefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\n\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.\r\n');
INSERT INTO `wp_postmeta` VALUES (392,95,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (409,101,'about_us_text','We are an online business lifestyle magazine and business directory. We cover topics all-around living, doing business, and spending holidays in Croatia.\r\n\r\nAt HOW!CROATIA, we believe that people visiting Croatia deserve the best insider knowledge, support, and tips for a great vacation or business experience.\r\n\r\nTherefore In addition to our Magazine content, our Business Directory is offering a wide range of experts which will help you to get things done in Croatia.\r\n\r\nOur selection of Croatia\'s finest hotels and Luxury Rentals will satisfy even those with the highest demands. After all, life is too short not to enjoy a bit of luxury.\r\n');
INSERT INTO `wp_postmeta` VALUES (410,101,'_about_us_text','field_603beadf23f8f');
INSERT INTO `wp_postmeta` VALUES (428,114,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (429,114,'_edit_lock','1615385494:1');
INSERT INTO `wp_postmeta` VALUES (434,52,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (435,52,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (436,116,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (437,116,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (442,49,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (443,49,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (444,117,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (445,117,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (450,46,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (451,46,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (452,119,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (453,119,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (456,120,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (457,121,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (458,120,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (459,121,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (464,122,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (465,122,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (468,123,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (469,123,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (470,124,'_edit_lock','1615387507:1');
INSERT INTO `wp_postmeta` VALUES (471,125,'_wp_attached_file','2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (472,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:47:\"2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:48:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1050x700.jpg\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:48:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:47:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (475,124,'_thumbnail_id','125');
INSERT INTO `wp_postmeta` VALUES (476,124,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (479,124,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (480,124,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (481,126,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (482,126,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (483,127,'_edit_lock','1615387501:1');
INSERT INTO `wp_postmeta` VALUES (484,128,'_wp_attached_file','2021/03/nine-koepfer-m0oeEBwpmWw-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (485,128,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1440;s:4:\"file\";s:45:\"2021/03/nine-koepfer-m0oeEBwpmWw-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"nine-koepfer-m0oeEBwpmWw-unsplash-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"nine-koepfer-m0oeEBwpmWw-unsplash-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"nine-koepfer-m0oeEBwpmWw-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"nine-koepfer-m0oeEBwpmWw-unsplash-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"nine-koepfer-m0oeEBwpmWw-unsplash-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:45:\"nine-koepfer-m0oeEBwpmWw-unsplash-933x700.jpg\";s:5:\"width\";i:933;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:46:\"nine-koepfer-m0oeEBwpmWw-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:45:\"nine-koepfer-m0oeEBwpmWw-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (488,127,'_thumbnail_id','128');
INSERT INTO `wp_postmeta` VALUES (489,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (492,127,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (493,127,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (494,129,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (495,129,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (496,130,'_edit_lock','1615387496:1');
INSERT INTO `wp_postmeta` VALUES (497,131,'_wp_attached_file','2021/03/docusign-gwEo4ziNFYk-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (498,131,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:41:\"2021/03/docusign-gwEo4ziNFYk-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"docusign-gwEo4ziNFYk-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"docusign-gwEo4ziNFYk-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"docusign-gwEo4ziNFYk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"docusign-gwEo4ziNFYk-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"docusign-gwEo4ziNFYk-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:42:\"docusign-gwEo4ziNFYk-unsplash-1050x700.jpg\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:42:\"docusign-gwEo4ziNFYk-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:41:\"docusign-gwEo4ziNFYk-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (501,130,'_thumbnail_id','131');
INSERT INTO `wp_postmeta` VALUES (502,130,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (505,130,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (506,130,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (507,132,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (508,132,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (511,133,'featured_article','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (512,133,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (513,134,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (514,134,'_edit_lock','1615391677:1');
INSERT INTO `wp_postmeta` VALUES (515,84,'show_in_featured_hotel','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (516,84,'_show_in_featured_hotel','field_6048d8fb3bece');
INSERT INTO `wp_postmeta` VALUES (517,91,'show_in_featured_hotel','a:1:{i:0;s:3:\"Yes\";}');
INSERT INTO `wp_postmeta` VALUES (518,91,'_show_in_featured_hotel','field_6048d8fb3bece');
INSERT INTO `wp_postmeta` VALUES (519,136,'_edit_lock','1615387486:1');
INSERT INTO `wp_postmeta` VALUES (520,137,'_wp_attached_file','2021/03/docusign-D8VouHW5CGU-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (521,137,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:41:\"2021/03/docusign-D8VouHW5CGU-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"docusign-D8VouHW5CGU-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"docusign-D8VouHW5CGU-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"docusign-D8VouHW5CGU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"docusign-D8VouHW5CGU-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"docusign-D8VouHW5CGU-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:42:\"docusign-D8VouHW5CGU-unsplash-1050x700.jpg\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:42:\"docusign-D8VouHW5CGU-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:41:\"docusign-D8VouHW5CGU-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (524,136,'_thumbnail_id','137');
INSERT INTO `wp_postmeta` VALUES (525,136,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (528,136,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (529,136,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (530,138,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (531,138,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (532,139,'_edit_lock','1615387481:1');
INSERT INTO `wp_postmeta` VALUES (533,140,'_wp_attached_file','2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash-1.jpg');
INSERT INTO `wp_postmeta` VALUES (534,140,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:49:\"2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash-1.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:50:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-1050x700.jpg\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:50:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:49:\"lerone-pieters-Vf7Y6XrcjoU-unsplash-1-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (537,139,'_thumbnail_id','140');
INSERT INTO `wp_postmeta` VALUES (538,139,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (541,139,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (542,139,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (543,141,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (544,141,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (545,142,'_edit_lock','1615387471:1');
INSERT INTO `wp_postmeta` VALUES (546,143,'_wp_attached_file','2021/03/jakob-owens-CTflmHHVrBM-unsplash.jpg');
INSERT INTO `wp_postmeta` VALUES (547,143,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:44:\"2021/03/jakob-owens-CTflmHHVrBM-unsplash.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"jakob-owens-CTflmHHVrBM-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"jakob-owens-CTflmHHVrBM-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"jakob-owens-CTflmHHVrBM-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"jakob-owens-CTflmHHVrBM-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"jakob-owens-CTflmHHVrBM-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"heroSection\";a:4:{s:4:\"file\";s:45:\"jakob-owens-CTflmHHVrBM-unsplash-1050x700.jpg\";s:5:\"width\";i:1050;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"singlePost\";a:4:{s:4:\"file\";s:45:\"jakob-owens-CTflmHHVrBM-unsplash-1920x700.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"postsThumbnail\";a:4:{s:4:\"file\";s:44:\"jakob-owens-CTflmHHVrBM-unsplash-540x350.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (550,142,'_thumbnail_id','143');
INSERT INTO `wp_postmeta` VALUES (551,142,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (554,142,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (555,142,'_featured_article','field_6048cf5d3ec30');
INSERT INTO `wp_postmeta` VALUES (556,144,'featured_article','');
INSERT INTO `wp_postmeta` VALUES (557,144,'_featured_article','field_6048cf5d3ec30');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (7,1,'2021-02-26 16:57:34','2021-02-26 16:57:34','Find top locations to visit while at Croatia sea side','Home','','publish','closed','closed','','home','','','2021-03-06 14:33:25','2021-03-06 14:33:25','',0,'http://howcroatia.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-02-26 16:57:34','2021-02-26 16:57:34','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-02-26 16:57:34','2021-02-26 16:57:34','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-02-26 16:58:00','2021-02-26 16:58:00','','Magazine','','publish','closed','closed','','magazine','','','2021-02-26 16:58:00','2021-02-26 16:58:00','',0,'http://howcroatia.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-02-26 16:58:00','2021-02-26 16:58:00','','Magazine','','inherit','closed','closed','','9-revision-v1','','','2021-02-26 16:58:00','2021-02-26 16:58:00','',9,'http://howcroatia.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-02-26 17:31:16','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-26 17:31:16','0000-00-00 00:00:00','',0,'http://howcroatia.local/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-02-26 17:31:16','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-26 17:31:16','0000-00-00 00:00:00','',0,'http://howcroatia.local/?p=12',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-02-26 17:31:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-26 17:31:35','0000-00-00 00:00:00','',0,'http://howcroatia.local/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-02-26 17:31:35','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-02-26 17:31:35','0000-00-00 00:00:00','',0,'http://howcroatia.local/?p=14',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-02-26 20:24:27','2021-02-26 20:24:27','','asd','','publish','closed','closed','','asd','','','2021-02-26 20:24:27','2021-02-26 20:24:27','',0,'http://howcroatia.local/?post_type=medical_services&#038;p=20',0,'medical_services','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-02-26 20:48:21','2021-02-26 20:48:21','','asd','','publish','closed','closed','','asd','','','2021-02-26 20:48:21','2021-02-26 20:48:21','',0,'http://howcroatia.local/?post_type=legal_services&#038;p=22',0,'legal_services','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-02-26 20:48:24','2021-02-26 20:48:24','','asd','','publish','closed','closed','','asd','','','2021-02-26 20:48:24','2021-02-26 20:48:24','',0,'http://howcroatia.local/?post_type=financial_services&#038;p=23',0,'financial_services','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-02-26 20:48:27','2021-02-26 20:48:27','','asd','','publish','closed','closed','','24','','','2021-02-26 20:48:30','2021-02-26 20:48:30','',0,'http://howcroatia.local/?post_type=real_estate_services&#038;p=24',0,'real_estate_services','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-02-26 20:51:19','2021-02-26 20:51:19',' ','','','publish','closed','closed','','29','','','2021-03-04 12:22:31','2021-03-04 12:22:31','',0,'http://howcroatia.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-02-26 20:51:19','2021-02-26 20:51:19',' ','','','publish','closed','closed','','30','','','2021-03-04 12:22:31','2021-03-04 12:22:31','',0,'http://howcroatia.local/?p=30',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-02-26 21:29:15','2021-02-26 21:29:15','','asd','','publish','closed','closed','','asd','','','2021-02-26 21:29:15','2021-02-26 21:29:15','',0,'http://howcroatia.local/?post_type=hotels_rentals&#038;p=35',0,'hotels_rentals','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-02-28 19:04:27','2021-02-28 19:04:27','','free-to-use-sounds--vuU18e2gs8-unsplash','','inherit','open','closed','','free-to-use-sounds-vuu18e2gs8-unsplash','','','2021-02-28 19:04:27','2021-02-28 19:04:27','',7,'http://howcroatia.local/wp-content/uploads/2021/02/free-to-use-sounds-vuU18e2gs8-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-02-28 19:04:37','2021-02-28 19:04:37','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-02-28 19:04:37','2021-02-28 19:04:37','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-02-28 19:14:20','2021-02-28 19:14:20','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','About Us Text','about-us-text','publish','closed','closed','','group_603beace6f6bd','','','2021-02-28 19:34:05','2021-02-28 19:34:05','',0,'http://howcroatia.local/?post_type=acf-field-group&#038;p=41',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-02-28 19:14:20','2021-02-28 19:14:20','a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:13:\"acf_paragraph\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}','About Us Text','about_us_text','publish','closed','closed','','field_603beadf23f8f','','','2021-02-28 19:34:05','2021-02-28 19:34:05','',41,'http://howcroatia.local/?post_type=acf-field&#038;p=42',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-02-28 19:22:26','2021-02-28 19:22:26','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-02-28 19:22:26','2021-02-28 19:22:26','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-02-28 19:34:15','2021-02-28 19:34:15','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-02-28 19:34:15','2021-02-28 19:34:15','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-03-01 16:01:01','2021-03-01 16:01:01','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','publish','open','open','','experience-an-unique-taste-of-mediterranean-diet','','','2021-03-10 14:05:53','2021-03-10 14:05:53','',0,'http://howcroatia.local/?p=46',0,'post','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-03-01 16:00:39','2021-03-01 16:00:39','','blog-article-img','','inherit','open','closed','','blog-article-img','','','2021-03-01 16:00:39','2021-03-01 16:00:39','',46,'http://howcroatia.local/wp-content/uploads/2021/03/blog-article-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-03-01 16:01:01','2021-03-01 16:01:01','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','inherit','closed','closed','','46-revision-v1','','','2021-03-01 16:01:01','2021-03-01 16:01:01','',46,'http://howcroatia.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-03-01 16:01:59','2021-03-01 16:01:59','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Where to find the most romantic places in Dubrovnik Old City','','publish','open','open','','where-to-find-the-most-romantic-places-in-dubrovnik-old-city','','','2021-03-10 14:00:56','2021-03-10 14:00:56','',0,'http://howcroatia.local/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-03-01 16:01:45','2021-03-01 16:01:45','','blog-article-img2','','inherit','open','closed','','blog-article-img2','','','2021-03-01 16:01:45','2021-03-01 16:01:45','',49,'http://howcroatia.local/wp-content/uploads/2021/03/blog-article-img2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-03-01 16:01:59','2021-03-01 16:01:59','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Where to find the most romantic places in Dubrovnik Old City','','inherit','closed','closed','','49-revision-v1','','','2021-03-01 16:01:59','2021-03-01 16:01:59','',49,'http://howcroatia.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-03-01 16:02:36','2021-03-01 16:02:36','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Buying a boat for your family (Tips)','','publish','open','open','','buying-a-boat-for-your-family-tips','','','2021-03-10 14:05:53','2021-03-10 14:05:53','',0,'http://howcroatia.local/?p=52',0,'post','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-03-01 16:02:32','2021-03-01 16:02:32','','blog-article-img3','','inherit','open','closed','','blog-article-img3','','','2021-03-01 16:02:32','2021-03-01 16:02:32','',52,'http://howcroatia.local/wp-content/uploads/2021/03/blog-article-img3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-03-01 16:02:36','2021-03-01 16:02:36','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Buying a boat for your family (Tips)','','inherit','closed','closed','','52-revision-v1','','','2021-03-01 16:02:36','2021-03-01 16:02:36','',52,'http://howcroatia.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-03-02 15:28:27','2021-03-02 15:28:27','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"restaurants\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Restaurant Location and Google Maps Link','restaurant-location-and-google-maps-link','publish','closed','closed','','group_603e5982a4f43','','','2021-03-04 17:48:37','2021-03-04 17:48:37','',0,'http://howcroatia.local/?post_type=acf-field-group&#038;p=57',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-03-02 15:28:27','2021-03-02 15:28:27','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Restaurant Google Maps Link','restaurant_google_maps_link','publish','closed','closed','','field_603e598b0266b','','','2021-03-02 15:38:24','2021-03-02 15:38:24','',57,'http://howcroatia.local/?post_type=acf-field&#038;p=58',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-03-02 15:28:56','2021-03-02 15:28:56','','Orka Restaurant','','publish','closed','closed','','orka-restaurant','','','2021-03-02 15:38:40','2021-03-02 15:38:40','',0,'http://howcroatia.local/?post_type=restaurants&#038;p=59',0,'restaurants','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-03-02 15:28:54','2021-03-02 15:28:54','','20190705_204850','','inherit','open','closed','','20190705_204850','','','2021-03-02 15:28:54','2021-03-02 15:28:54','',59,'http://howcroatia.local/wp-content/uploads/2021/03/20190705_204850.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-03-02 15:29:48','2021-03-02 15:29:48','','Pantarul','','publish','closed','closed','','pantarul','','','2021-03-02 15:38:46','2021-03-02 15:38:46','',0,'http://howcroatia.local/?post_type=restaurants&#038;p=61',0,'restaurants','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-03-02 15:29:34','2021-03-02 15:29:34','','D3S_5978-Edit','','inherit','open','closed','','d3s_5978-edit','','','2021-03-02 15:29:34','2021-03-02 15:29:34','',61,'http://howcroatia.local/wp-content/uploads/2021/03/D3S_5978-Edit.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-03-02 15:30:37','2021-03-02 15:30:37','','Fish Bar El Pulpo','','publish','closed','closed','','fish-bar-el-pulpo','','','2021-03-02 15:38:50','2021-03-02 15:38:50','',0,'http://howcroatia.local/?post_type=restaurants&#038;p=63',0,'restaurants','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-03-02 15:30:24','2021-03-02 15:30:24','','2020-07-03','','inherit','open','closed','','2020-07-03','','','2021-03-02 15:30:24','2021-03-02 15:30:24','',63,'http://howcroatia.local/wp-content/uploads/2021/03/2020-07-03.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-03-02 15:38:24','2021-03-02 15:38:24','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Restaurant Location','restaurant_location','publish','closed','closed','','field_603e5bd600746','','','2021-03-02 15:38:24','2021-03-02 15:38:24','',57,'http://howcroatia.local/?post_type=acf-field&p=65',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-03-02 16:09:46','2021-03-02 16:09:46','','magazine-featured-article-bg','','inherit','open','closed','','magazine-featured-article-bg','','','2021-03-02 16:09:46','2021-03-02 16:09:46','',0,'http://howcroatia.local/wp-content/uploads/2021/03/magazine-featured-article-bg.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-03-03 13:49:50','2021-03-03 13:49:50','','free-to-use-sounds--vuU18e2gs8-unsplash','','inherit','open','closed','','free-to-use-sounds-vuu18e2gs8-unsplash-2','','','2021-03-03 13:49:50','2021-03-03 13:49:50','',7,'http://howcroatia.local/wp-content/uploads/2021/03/free-to-use-sounds-vuU18e2gs8-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-03-04 12:21:01','2021-03-04 12:21:01','','asd','','trash','closed','closed','','asd__trashed','','','2021-03-04 17:25:50','2021-03-04 17:25:50','',0,'http://howcroatia.local/?post_type=hotel&#038;p=68',0,'hotel','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-03-04 12:22:31','2021-03-04 12:22:31','','Hotels & Luxury Rentals','','publish','closed','closed','','hotels-luxury-rentals-2','','','2021-03-04 12:22:31','2021-03-04 12:22:31','',0,'http://howcroatia.local/?p=69',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-03-04 12:24:55','2021-03-04 12:24:55','','asd','','trash','closed','closed','','asd__trashed','','','2021-03-04 12:36:02','2021-03-04 12:36:02','',0,'http://howcroatia.local/?post_type=medical&#038;p=70',0,'medical','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-03-04 12:24:59','2021-03-04 12:24:59','','asd','','trash','closed','closed','','asd__trashed','','','2021-03-04 12:36:06','2021-03-04 12:36:06','',0,'http://howcroatia.local/?post_type=legal&#038;p=71',0,'legal','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-03-04 12:25:48','2021-03-04 12:25:48','','Medical Services','','publish','closed','closed','','medical-services-2','','','2021-03-04 12:25:48','2021-03-04 12:25:48','',0,'http://howcroatia.local/?p=74',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-03-04 12:25:48','2021-03-04 12:25:48','','Legal Services','','publish','closed','closed','','legal-services-2','','','2021-03-04 12:25:48','2021-03-04 12:25:48','',0,'http://howcroatia.local/?p=75',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-03-04 12:25:48','2021-03-04 12:25:48','','Financial Services','','publish','closed','closed','','financial-services-2','','','2021-03-04 12:25:48','2021-03-04 12:25:48','',0,'http://howcroatia.local/?p=76',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-03-04 12:25:48','2021-03-04 12:25:48','','Real Estate Services','','publish','closed','closed','','real-estate-services-2','','','2021-03-04 12:25:48','2021-03-04 12:25:48','',0,'http://howcroatia.local/?p=77',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-03-04 17:22:20','2021-03-04 17:22:20','','DJI_0020_Detailed','','inherit','open','closed','','dji_0020_detailed','','','2021-03-04 17:22:20','2021-03-04 17:22:20','',0,'http://howcroatia.local/wp-content/uploads/2021/03/DJI_0020_Detailed.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-03-04 17:23:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-04 17:23:36','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=estate&p=80',0,'estate','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-03-04 17:23:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-04 17:23:53','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=estate&p=81',0,'estate','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-03-04 17:24:03','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-04 17:24:03','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=estate&p=82',0,'estate','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-03-04 17:27:04','2021-03-04 17:27:04','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','Icy House','','publish','closed','closed','','icy-house','','','2021-03-04 18:26:26','2021-03-04 18:26:26','',0,'http://howcroatia.local/?post_type=hotel&#038;p=83',0,'hotel','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-03-04 17:28:19','2021-03-04 17:28:19','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','Hotel LЕRО','','publish','closed','closed','','hotel-l%d0%b5r%d0%be','','','2021-03-10 14:35:42','2021-03-10 14:35:42','',0,'http://howcroatia.local/?post_type=hotel&#038;p=84',0,'hotel','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-03-04 17:27:59','2021-03-04 17:27:59','','unnamed','','inherit','open','closed','','unnamed','','','2021-03-04 17:27:59','2021-03-04 17:27:59','',84,'http://howcroatia.local/wp-content/uploads/2021/03/unnamed.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-03-04 17:49:14','2021-03-04 17:49:14','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"hotel\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Hotel or Luxury Rental GoogleMaps Link','hotel-or-luxury-rental-googlemaps-link','publish','closed','closed','','group_60411d78f1eaa','','','2021-03-04 18:29:01','2021-03-04 18:29:01','',0,'http://howcroatia.local/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-03-04 17:49:14','2021-03-04 17:49:14','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Hotel GoogleMaps Link','hotel_googlemaps_link','publish','closed','closed','','field_60411d8434214','','','2021-03-04 18:29:01','2021-03-04 18:29:01','',86,'http://howcroatia.local/?post_type=acf-field&#038;p=87',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-03-04 18:26:24','2021-03-04 18:26:24','','edvin-johansson-rlwE8f8anOc-unsplash','','inherit','open','closed','','edvin-johansson-rlwe8f8anoc-unsplash','','','2021-03-04 18:26:24','2021-03-04 18:26:24','',83,'http://howcroatia.local/wp-content/uploads/2021/03/edvin-johansson-rlwE8f8anOc-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-03-04 18:30:38','2021-03-04 18:30:38','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','Apartments in Villa Azra','','publish','closed','closed','','apartments-in-villa-azra','','','2021-03-04 18:30:38','2021-03-04 18:30:38','',0,'http://howcroatia.local/?post_type=hotel&#038;p=89',0,'hotel','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-03-04 18:30:36','2021-03-04 18:30:36','','ciudad-maderas-MXbM1NrRqtI-unsplash','','inherit','open','closed','','ciudad-maderas-mxbm1nrrqti-unsplash','','','2021-03-04 18:30:36','2021-03-04 18:30:36','',89,'http://howcroatia.local/wp-content/uploads/2021/03/ciudad-maderas-MXbM1NrRqtI-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-03-04 18:31:27','2021-03-04 18:31:27','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s','Hotel Kukuriku','','publish','closed','closed','','hotel-kukuriku','','','2021-03-10 14:35:49','2021-03-10 14:35:49','',0,'http://howcroatia.local/?post_type=hotel&#038;p=91',0,'hotel','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-03-04 18:31:15','2021-03-04 18:31:15','','markus-spiske-g5ZIXjzRGds-unsplash','','inherit','open','closed','','markus-spiske-g5zixjzrgds-unsplash','','','2021-03-04 18:31:15','2021-03-04 18:31:15','',91,'http://howcroatia.local/wp-content/uploads/2021/03/markus-spiske-g5ZIXjzRGds-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-03-05 15:37:50','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-03-05 15:37:50','0000-00-00 00:00:00','',0,'http://howcroatia.local/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-03-05 15:51:47','2021-03-05 15:51:47','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-03-05 15:51:47','2021-03-05 15:51:47','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-03-05 15:52:02','2021-03-05 15:52:02','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-03-05 15:52:02','2021-03-05 15:52:02','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-03-05 16:01:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-05 16:01:22','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=restaurants&p=99',0,'restaurants','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-03-06 14:33:25','2021-03-06 14:33:25','Find top locations to visit while at Croatia sea side','Home','','inherit','closed','closed','','7-revision-v1','','','2021-03-06 14:33:25','2021-03-06 14:33:25','',7,'http://howcroatia.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-03-08 22:38:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:38:41','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=102',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-03-08 22:41:51','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:41:51','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=103',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-03-08 22:43:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:43:29','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=104',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-03-08 22:45:36','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:45:36','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=105',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-03-08 22:46:33','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:46:33','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=106',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-03-08 22:46:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:46:57','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=107',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-03-08 22:50:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:50:42','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=109',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-03-08 22:52:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:52:28','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=110',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-03-08 22:52:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:52:53','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=111',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-03-08 22:53:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:53:55','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=112',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-03-08 22:54:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-03-08 22:54:07','0000-00-00 00:00:00','',0,'http://howcroatia.local/?post_type=financial&p=113',0,'financial','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-03-10 13:53:57','2021-03-10 13:53:57','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Featured Article','featured-article','publish','closed','closed','','group_6048cf5663a22','','','2021-03-10 14:13:55','2021-03-10 14:13:55','',0,'http://howcroatia.local/?post_type=acf-field-group&#038;p=114',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-03-10 13:53:57','2021-03-10 13:53:57','a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Yes\";s:3:\"Yes\";s:2:\"No\";s:2:\"No\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}','Show this post in featured articles?','featured_article','publish','closed','closed','','field_6048cf5d3ec30','','','2021-03-10 14:13:55','2021-03-10 14:13:55','',114,'http://howcroatia.local/?post_type=acf-field&#038;p=115',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-03-10 13:58:28','2021-03-10 13:58:28','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Buying a boat for your family (Tips)','','inherit','closed','closed','','52-revision-v1','','','2021-03-10 13:58:28','2021-03-10 13:58:28','',52,'http://howcroatia.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-03-10 14:00:56','2021-03-10 14:00:56','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','Where to find the most romantic places in Dubrovnik Old City','','inherit','closed','closed','','49-revision-v1','','','2021-03-10 14:00:56','2021-03-10 14:00:56','',49,'http://howcroatia.local/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-03-10 14:01:07','2021-03-10 14:01:07','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','inherit','closed','closed','','46-revision-v1','','','2021-03-10 14:01:07','2021-03-10 14:01:07','',46,'http://howcroatia.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-03-10 14:01:08','2021-03-10 14:01:08','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','inherit','closed','closed','','46-revision-v1','','','2021-03-10 14:01:08','2021-03-10 14:01:08','',46,'http://howcroatia.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-03-10 14:05:41','2021-03-10 14:05:41','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Buying a boat for your family (Tips)','','inherit','closed','closed','','52-revision-v1','','','2021-03-10 14:05:41','2021-03-10 14:05:41','',52,'http://howcroatia.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-03-10 14:05:41','2021-03-10 14:05:41','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','inherit','closed','closed','','46-revision-v1','','','2021-03-10 14:05:41','2021-03-10 14:05:41','',46,'http://howcroatia.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-03-10 14:05:53','2021-03-10 14:05:53','<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Experience an unique taste of mediterranean diet','','inherit','closed','closed','','46-revision-v1','','','2021-03-10 14:05:53','2021-03-10 14:05:53','',46,'http://howcroatia.local/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-03-10 14:05:53','2021-03-10 14:05:53','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Buying a boat for your family (Tips)','','inherit','closed','closed','','52-revision-v1','','','2021-03-10 14:05:53','2021-03-10 14:05:53','',52,'http://howcroatia.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-03-10 14:08:10','2021-03-10 14:08:10','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','What is Lorem Ipsum?','','publish','open','open','','what-is-lorem-ipsum','','','2021-03-10 14:45:07','2021-03-10 14:45:07','',0,'http://howcroatia.local/?p=124',0,'post','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-03-10 14:08:05','2021-03-10 14:08:05','','lerone-pieters-Vf7Y6XrcjoU-unsplash','','inherit','open','closed','','lerone-pieters-vf7y6xrcjou-unsplash','','','2021-03-10 14:08:05','2021-03-10 14:08:05','',124,'http://howcroatia.local/wp-content/uploads/2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-03-10 14:08:10','2021-03-10 14:08:10','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','What is Lorem Ipsum?','','inherit','closed','closed','','124-revision-v1','','','2021-03-10 14:08:10','2021-03-10 14:08:10','',124,'http://howcroatia.local/124-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-03-10 14:08:47','2021-03-10 14:08:47','<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\n<!-- /wp:paragraph -->','Where does it come from?','','publish','open','open','','where-does-it-come-from','','','2021-03-10 14:45:01','2021-03-10 14:45:01','',0,'http://howcroatia.local/?p=127',0,'post','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-03-10 14:08:43','2021-03-10 14:08:43','','nine-koepfer-m0oeEBwpmWw-unsplash','','inherit','open','closed','','nine-koepfer-m0oeebwpmww-unsplash','','','2021-03-10 14:08:43','2021-03-10 14:08:43','',127,'http://howcroatia.local/wp-content/uploads/2021/03/nine-koepfer-m0oeEBwpmWw-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (129,1,'2021-03-10 14:08:47','2021-03-10 14:08:47','<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>\n<!-- /wp:paragraph -->','Where does it come from?','','inherit','closed','closed','','127-revision-v1','','','2021-03-10 14:08:47','2021-03-10 14:08:47','',127,'http://howcroatia.local/127-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2021-03-10 14:09:39','2021-03-10 14:09:39','<!-- wp:paragraph -->\n<p>Reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->','The standard chunk of Lorem Ipsum used since the 1500s','','publish','open','open','','the-standard-chunk-of-lorem-ipsum-used-since-the-1500s','','','2021-03-10 14:44:56','2021-03-10 14:44:56','',0,'http://howcroatia.local/?p=130',0,'post','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2021-03-10 14:09:34','2021-03-10 14:09:34','','docusign-gwEo4ziNFYk-unsplash','','inherit','open','closed','','docusign-gweo4zinfyk-unsplash','','','2021-03-10 14:09:34','2021-03-10 14:09:34','',130,'http://howcroatia.local/wp-content/uploads/2021/03/docusign-gwEo4ziNFYk-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (132,1,'2021-03-10 14:09:39','2021-03-10 14:09:39','<!-- wp:paragraph -->\n<p>Reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->','The standard chunk of Lorem Ipsum used since the 1500s','','inherit','closed','closed','','130-revision-v1','','','2021-03-10 14:09:39','2021-03-10 14:09:39','',130,'http://howcroatia.local/130-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2021-03-10 14:09:48','2021-03-10 14:09:48','<!-- wp:paragraph -->\n<p>Reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n<!-- /wp:paragraph -->','The standard chunk of Lorem Ipsum used since the 1500s','','inherit','closed','closed','','130-revision-v1','','','2021-03-10 14:09:48','2021-03-10 14:09:48','',130,'http://howcroatia.local/130-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2021-03-10 14:35:35','2021-03-10 14:35:35','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"hotel\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Featured Hotel & Luxury Rental','featured-hotel-luxury-rental','publish','closed','closed','','group_6048d8ee94529','','','2021-03-10 14:35:35','2021-03-10 14:35:35','',0,'http://howcroatia.local/?post_type=acf-field-group&#038;p=134',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2021-03-10 14:35:35','2021-03-10 14:35:35','a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"Yes\";s:3:\"Yes\";s:2:\"No\";s:2:\"No\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}','Show in Featured Hotel & Luxury Rental?','show_in_featured_hotel','publish','closed','closed','','field_6048d8fb3bece','','','2021-03-10 14:35:35','2021-03-10 14:35:35','',134,'http://howcroatia.local/?post_type=acf-field&p=135',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2021-03-10 14:43:07','2021-03-10 14:43:07','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. </p>\n<!-- /wp:paragraph -->','Where can I get some?','','publish','open','open','','where-can-i-get-some','','','2021-03-10 14:44:46','2021-03-10 14:44:46','',0,'http://howcroatia.local/?p=136',0,'post','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2021-03-10 14:43:03','2021-03-10 14:43:03','','docusign-D8VouHW5CGU-unsplash','','inherit','open','closed','','docusign-d8vouhw5cgu-unsplash','','','2021-03-10 14:43:03','2021-03-10 14:43:03','',136,'http://howcroatia.local/wp-content/uploads/2021/03/docusign-D8VouHW5CGU-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (138,1,'2021-03-10 14:43:07','2021-03-10 14:43:07','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. </p>\n<!-- /wp:paragraph -->','Where can I get some?','','inherit','closed','closed','','136-revision-v1','','','2021-03-10 14:43:07','2021-03-10 14:43:07','',136,'http://howcroatia.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2021-03-10 14:43:37','2021-03-10 14:43:37','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<!-- /wp:paragraph -->','Does it come from?','','publish','open','open','','does-it-come-from','','','2021-03-10 14:44:41','2021-03-10 14:44:41','',0,'http://howcroatia.local/?p=139',0,'post','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2021-03-10 14:43:32','2021-03-10 14:43:32','','lerone-pieters-Vf7Y6XrcjoU-unsplash (1)','','inherit','open','closed','','lerone-pieters-vf7y6xrcjou-unsplash-1','','','2021-03-10 14:43:32','2021-03-10 14:43:32','',139,'http://howcroatia.local/wp-content/uploads/2021/03/lerone-pieters-Vf7Y6XrcjoU-unsplash-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (141,1,'2021-03-10 14:43:37','2021-03-10 14:43:37','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</p>\n<!-- /wp:paragraph -->','Does it come from?','','inherit','closed','closed','','139-revision-v1','','','2021-03-10 14:43:37','2021-03-10 14:43:37','',139,'http://howcroatia.local/139-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2021-03-10 14:44:07','2021-03-10 14:44:07','<!-- wp:paragraph -->\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes,</p>\n<!-- /wp:paragraph -->','1914 translation by H. Rackham','','publish','open','open','','1914-translation-by-h-rackham','','','2021-03-10 14:44:31','2021-03-10 14:44:31','',0,'http://howcroatia.local/?p=142',0,'post','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2021-03-10 14:44:03','2021-03-10 14:44:03','','jakob-owens-CTflmHHVrBM-unsplash','','inherit','open','closed','','jakob-owens-ctflmhhvrbm-unsplash','','','2021-03-10 14:44:03','2021-03-10 14:44:03','',142,'http://howcroatia.local/wp-content/uploads/2021/03/jakob-owens-CTflmHHVrBM-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (144,1,'2021-03-10 14:44:07','2021-03-10 14:44:07','<!-- wp:paragraph -->\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes,</p>\n<!-- /wp:paragraph -->','1914 translation by H. Rackham','','inherit','closed','closed','','142-revision-v1','','','2021-03-10 14:44:07','2021-03-10 14:44:07','',142,'http://howcroatia.local/142-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (29,4,0);
INSERT INTO `wp_term_relationships` VALUES (30,4,0);
INSERT INTO `wp_term_relationships` VALUES (46,6,0);
INSERT INTO `wp_term_relationships` VALUES (49,7,0);
INSERT INTO `wp_term_relationships` VALUES (52,7,0);
INSERT INTO `wp_term_relationships` VALUES (69,4,0);
INSERT INTO `wp_term_relationships` VALUES (74,5,0);
INSERT INTO `wp_term_relationships` VALUES (75,5,0);
INSERT INTO `wp_term_relationships` VALUES (76,5,0);
INSERT INTO `wp_term_relationships` VALUES (77,5,0);
INSERT INTO `wp_term_relationships` VALUES (83,8,0);
INSERT INTO `wp_term_relationships` VALUES (84,8,0);
INSERT INTO `wp_term_relationships` VALUES (89,9,0);
INSERT INTO `wp_term_relationships` VALUES (91,9,0);
INSERT INTO `wp_term_relationships` VALUES (124,7,0);
INSERT INTO `wp_term_relationships` VALUES (127,6,0);
INSERT INTO `wp_term_relationships` VALUES (130,7,0);
INSERT INTO `wp_term_relationships` VALUES (136,6,0);
INSERT INTO `wp_term_relationships` VALUES (139,7,0);
INSERT INTO `wp_term_relationships` VALUES (142,6,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'location','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'location','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'service','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'service','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'location-financial','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'location-financial','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'location-financial','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'location-financial','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (4,'Navbar','navbar',0);
INSERT INTO `wp_terms` VALUES (5,'Business Listings','business-listings',0);
INSERT INTO `wp_terms` VALUES (6,'Food &amp; Drinks','food-drinks',0);
INSERT INTO `wp_terms` VALUES (7,'Lifestyle','lifestyle',0);
INSERT INTO `wp_terms` VALUES (8,'Dubrovnik','dubrovnik',0);
INSERT INTO `wp_terms` VALUES (9,'Rijeka','rijeka',0);
INSERT INTO `wp_terms` VALUES (10,'Banking','banking',0);
INSERT INTO `wp_terms` VALUES (11,'Professional Advisory','professional-advisory',0);
INSERT INTO `wp_terms` VALUES (12,'Dubrovnik','dubrovnik',0);
INSERT INTO `wp_terms` VALUES (13,'Rijeka','rijeka',0);
INSERT INTO `wp_terms` VALUES (14,'Zagreb','zagreb',0);
INSERT INTO `wp_terms` VALUES (15,'Split','split',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"afeaf27746d0fb6c363e945eaa2160a42f509eb668aca7f8ee0fc130d2f1b228\";a:4:{s:10:\"expiration\";i:1615409208;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1615236408;}s:64:\"3e2383bdcf9620b54dd81ba3e7d0f5817a9880cd29f3dd240691e8f444fbb373\";a:4:{s:10:\"expiration\";i:1615477799;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1615304999;}s:64:\"92bd095a06ea446117017ac4379730171feebfd117f74dafee31c92e69badc13\";a:4:{s:10:\"expiration\";i:1615557200;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1615384400;}s:64:\"855764c387a6c22331cb35a44336d2b34945f02a318715aa6b9500bf95cfa33c\";a:4:{s:10:\"expiration\";i:1615557297;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1615384497;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1614341091');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','93');
INSERT INTO `wp_usermeta` VALUES (20,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'meta-box-order_hotel','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:34:\"submitdiv,locationdiv,postimagediv\";s:6:\"normal\";s:31:\"acf-group_60411d78f1eaa,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (29,1,'screen_layout_hotel','2');
INSERT INTO `wp_usermeta` VALUES (30,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'metaboxhidden_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'meta-box-order_post','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:63:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv,postexcerpt\";s:6:\"normal\";s:84:\"acf-group_6048cf5663a22,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (33,1,'screen_layout_post','2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BpOwT2gg8OUdFaGZIQcoGvtg/pmiY3/','admin','dev-email@flywheel.local','http://howcroatia.local','2021-02-26 11:49:01','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-11  1:00:25
