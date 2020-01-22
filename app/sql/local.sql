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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-01-02 13:31:58','2020-01-02 13:31:58','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','The best university in the world!','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','elena.korkeamaki19@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:177:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=54&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:39:\"manual-image-crop/manual-image-crop.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','56','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','54','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1593523910','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1579617134;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579656734;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579699932;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579700058;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579700060;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','jRRj8gB$k33r:q26D).o+wfpS-efXL)xix_[Xn)l*C@E_7I.R=2DRtf`mjx*ZI*=','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','Sna`}|]G4YcY<?=vf?g`l)$}>LbC*DIh>j[F ;+s(<S{391X/Q8l=1q0([qXs2zi','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579613560;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (117,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1577975771;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (118,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579611682;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (146,'theme_mods_Fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:6;s:17:\"footerLocationOne\";i:7;s:17:\"footerLocationTwo\";i:8;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (147,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (150,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (151,'new_admin_email','elena.korkeamaki19@gmail.com','yes');
INSERT INTO `wp_options` VALUES (173,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (207,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (229,'recovery_mode_email_last_sent','1578555718','yes');
INSERT INTO `wp_options` VALUES (252,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (304,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (376,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579611682;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (377,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (425,'_site_transient_timeout_theme_roots','1579615360','no');
INSERT INTO `wp_options` VALUES (426,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_lock','1578041064:1');
INSERT INTO `wp_postmeta` VALUES (9,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (10,11,'_edit_lock','1578645398:1');
INSERT INTO `wp_postmeta` VALUES (13,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (14,13,'_edit_lock','1578052570:1');
INSERT INTO `wp_postmeta` VALUES (15,2,'_edit_lock','1578329563:1');
INSERT INTO `wp_postmeta` VALUES (16,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (17,15,'_edit_lock','1578922444:1');
INSERT INTO `wp_postmeta` VALUES (18,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (19,17,'_edit_lock','1578327386:1');
INSERT INTO `wp_postmeta` VALUES (20,3,'_edit_lock','1578057285:1');
INSERT INTO `wp_postmeta` VALUES (21,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (22,3,'_wp_trash_meta_time','1578057433');
INSERT INTO `wp_postmeta` VALUES (23,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (24,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (25,20,'_edit_lock','1578058552:1');
INSERT INTO `wp_postmeta` VALUES (26,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (27,22,'_edit_lock','1578059123:1');
INSERT INTO `wp_postmeta` VALUES (28,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (29,24,'_edit_lock','1578059680:1');
INSERT INTO `wp_postmeta` VALUES (102,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (103,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (104,34,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (105,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (106,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (107,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_orphaned','1578332844');
INSERT INTO `wp_postmeta` VALUES (111,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (112,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (113,35,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (114,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (115,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_orphaned','1578332844');
INSERT INTO `wp_postmeta` VALUES (164,40,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (165,40,'_wp_trash_meta_time','1578385304');
INSERT INTO `wp_postmeta` VALUES (166,42,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (167,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (168,42,'_menu_item_object_id','42');
INSERT INTO `wp_postmeta` VALUES (169,42,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (170,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (171,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (172,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (173,42,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (175,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (176,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (177,43,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (178,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (179,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (180,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (181,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (182,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (184,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (185,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (186,44,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (187,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (188,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (189,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (190,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (191,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (193,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (194,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (195,45,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (196,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (197,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (198,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (199,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (200,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (202,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (203,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (204,46,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (205,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (206,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (207,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (208,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (209,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (211,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (212,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (213,47,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (214,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (215,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (216,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (217,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (218,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (238,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (239,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (240,50,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (241,50,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (242,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (243,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (244,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (245,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (247,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (248,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (249,51,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (250,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (251,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (252,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (253,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (254,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (256,52,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (257,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (258,52,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (259,52,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (260,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (261,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (262,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (263,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (265,53,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (266,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (267,53,'_menu_item_object_id','53');
INSERT INTO `wp_postmeta` VALUES (268,53,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (269,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (270,53,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (271,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (272,53,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (274,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,54,'_edit_lock','1578389237:1');
INSERT INTO `wp_postmeta` VALUES (276,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,56,'_edit_lock','1578389253:1');
INSERT INTO `wp_postmeta` VALUES (278,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (279,58,'_edit_lock','1578570501:1');
INSERT INTO `wp_postmeta` VALUES (282,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (283,60,'_edit_lock','1578576560:1');
INSERT INTO `wp_postmeta` VALUES (284,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,61,'_edit_lock','1578659097:1');
INSERT INTO `wp_postmeta` VALUES (286,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (287,62,'_edit_lock','1578990629:1');
INSERT INTO `wp_postmeta` VALUES (290,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (291,67,'_edit_lock','1578576212:1');
INSERT INTO `wp_postmeta` VALUES (292,62,'event_date','20200127');
INSERT INTO `wp_postmeta` VALUES (293,62,'_event_date','field_5e17199e995c3');
INSERT INTO `wp_postmeta` VALUES (294,61,'event_date','20200203');
INSERT INTO `wp_postmeta` VALUES (295,61,'_event_date','field_5e17199e995c3');
INSERT INTO `wp_postmeta` VALUES (296,60,'event_date','20200101');
INSERT INTO `wp_postmeta` VALUES (297,60,'_event_date','field_5e17199e995c3');
INSERT INTO `wp_postmeta` VALUES (298,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (299,70,'_edit_lock','1578643077:1');
INSERT INTO `wp_postmeta` VALUES (300,70,'event_date','20201109');
INSERT INTO `wp_postmeta` VALUES (301,70,'_event_date','field_5e17199e995c3');
INSERT INTO `wp_postmeta` VALUES (302,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (303,72,'_edit_lock','1578658314:1');
INSERT INTO `wp_postmeta` VALUES (304,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,74,'_edit_lock','1578644592:1');
INSERT INTO `wp_postmeta` VALUES (306,74,'event_date','20191231');
INSERT INTO `wp_postmeta` VALUES (307,74,'_event_date','field_5e17199e995c3');
INSERT INTO `wp_postmeta` VALUES (310,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (311,76,'_edit_lock','1579002478:1');
INSERT INTO `wp_postmeta` VALUES (312,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (313,77,'_edit_lock','1579017142:1');
INSERT INTO `wp_postmeta` VALUES (314,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (315,78,'_edit_lock','1578646067:1');
INSERT INTO `wp_postmeta` VALUES (316,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (317,79,'_edit_lock','1578653010:1');
INSERT INTO `wp_postmeta` VALUES (318,61,'related_programs','a:2:{i:0;s:2:\"77\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (319,61,'_related_programs','field_5e183eee5d7d2');
INSERT INTO `wp_postmeta` VALUES (320,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (321,81,'_edit_lock','1578919729:1');
INSERT INTO `wp_postmeta` VALUES (322,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (323,82,'_edit_lock','1578921101:1');
INSERT INTO `wp_postmeta` VALUES (324,82,'related_programs','a:1:{i:0;s:2:\"77\";}');
INSERT INTO `wp_postmeta` VALUES (325,82,'_related_programs','field_5e183eee5d7d2');
INSERT INTO `wp_postmeta` VALUES (326,83,'_wp_attached_file','2020/01/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (327,83,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/01/barksalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (328,82,'_thumbnail_id','83');
INSERT INTO `wp_postmeta` VALUES (329,84,'_wp_attached_file','2020/01/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (330,84,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/01/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"49\";s:1:\"y\";s:2:\"41\";s:1:\"w\";s:18:\"386.15384615383647\";s:1:\"h\";s:3:\"251\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"130\";s:1:\"y\";s:2:\"13\";s:1:\"w\";s:3:\"227\";s:1:\"h\";s:17:\"307.3958333333327\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (331,81,'_thumbnail_id','84');
INSERT INTO `wp_postmeta` VALUES (332,81,'related_programs','a:1:{i:0;s:2:\"77\";}');
INSERT INTO `wp_postmeta` VALUES (333,81,'_related_programs','field_5e183eee5d7d2');
INSERT INTO `wp_postmeta` VALUES (334,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (335,85,'_edit_lock','1579017128:1');
INSERT INTO `wp_postmeta` VALUES (336,86,'_wp_attached_file','2020/01/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (337,86,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2020/01/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (338,85,'_thumbnail_id','86');
INSERT INTO `wp_postmeta` VALUES (339,85,'related_programs','a:1:{i:0;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (340,85,'_related_programs','field_5e183eee5d7d2');
INSERT INTO `wp_postmeta` VALUES (341,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (342,87,'_edit_lock','1578920233:1');
INSERT INTO `wp_postmeta` VALUES (343,90,'_wp_attached_file','2020/01/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (344,90,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/01/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"83\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (345,82,'page_banner_subtitle','The leading voice on barking and biology.');
INSERT INTO `wp_postmeta` VALUES (346,82,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (347,82,'page_banner_background_image','90');
INSERT INTO `wp_postmeta` VALUES (348,82,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (349,91,'_wp_attached_file','2020/01/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (350,91,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2020/01/building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (351,15,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (352,15,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (353,15,'page_banner_background_image','91');
INSERT INTO `wp_postmeta` VALUES (354,15,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (355,92,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (356,92,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (357,92,'page_banner_background_image','91');
INSERT INTO `wp_postmeta` VALUES (358,92,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (359,93,'_wp_attached_file','2020/01/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (360,93,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2020/01/notebook-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (361,62,'page_banner_subtitle','The greatest day of the year.');
INSERT INTO `wp_postmeta` VALUES (362,62,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (363,62,'page_banner_background_image','93');
INSERT INTO `wp_postmeta` VALUES (364,62,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (365,62,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (366,62,'_related_programs','field_5e183eee5d7d2');
INSERT INTO `wp_postmeta` VALUES (367,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (368,94,'_edit_lock','1579017163:1');
INSERT INTO `wp_postmeta` VALUES (369,94,'page_banner_subtitle','A beautiful campus in the heart of downtown.');
INSERT INTO `wp_postmeta` VALUES (370,94,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (371,94,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (372,94,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (373,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (374,95,'_edit_lock','1578993135:1');
INSERT INTO `wp_postmeta` VALUES (375,95,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (376,95,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (377,95,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (378,95,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (379,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (380,96,'_edit_lock','1578993278:1');
INSERT INTO `wp_postmeta` VALUES (381,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (382,98,'_edit_lock','1579002461:1');
INSERT INTO `wp_postmeta` VALUES (383,76,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (384,76,'_page_banner_subtitle','field_5e1c693d3240c');
INSERT INTO `wp_postmeta` VALUES (385,76,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (386,76,'_page_banner_background_image','field_5e1c694f3240d');
INSERT INTO `wp_postmeta` VALUES (387,76,'related_campus','a:1:{i:0;s:2:\"94\";}');
INSERT INTO `wp_postmeta` VALUES (388,76,'_related_campus','field_5e1d9656843ce');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-01-02 13:31:58','2020-01-02 13:31:58','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-01-02 13:31:58','2020-01-02 13:31:58','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-01-02 13:31:58','2020-01-02 13:31:58','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-01-02 13:31:58','2020-01-02 13:31:58','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-01-02 13:31:58','2020-01-02 13:31:58','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://fictional-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-01-03 13:17:13','2020-01-03 13:17:13','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-01-03 08:46:46','2020-01-03 08:46:46','fsdlfknadb.dbzsjdgnd','Test post','','publish','open','open','','test-post','','','2020-01-03 08:46:46','2020-01-03 08:46:46','',0,'http://fictional-university.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-01-03 08:46:46','2020-01-03 08:46:46','fsdlfknadb.dbzsjdgnd','Test post','','inherit','closed','closed','','9-revision-v1','','','2020-01-03 08:46:46','2020-01-03 08:46:46','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-01-03 08:46:58','2020-01-03 08:46:58','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Second test post','','publish','open','open','','second-test-post','','','2020-01-10 08:39:00','2020-01-10 08:39:00','',0,'http://fictional-university.local/?p=11',0,'post','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-01-03 08:46:58','2020-01-03 08:46:58','asfksjn&lt;gök','Second test post','','inherit','closed','closed','','11-revision-v1','','','2020-01-03 08:46:58','2020-01-03 08:46:58','',11,'http://fictional-university.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-01-03 10:21:52','2020-01-03 10:21:52','qpöirhNWTGÄA PDSMGFXÄDV,','Test page 123','','publish','closed','closed','','test-page-123','','','2020-01-03 10:21:52','2020-01-03 10:21:52','',0,'http://fictional-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-01-03 10:21:52','2020-01-03 10:21:52','qpöirhNWTGÄA PDSMGFXÄDV,','Test page 123','','inherit','closed','closed','','13-revision-v1','','','2020-01-03 10:21:52','2020-01-03 10:21:52','',13,'http://fictional-university.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-01-03 12:55:05','2020-01-03 12:55:05','This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque sit amet magna sed mattis. Suspendisse tincidunt, diam quis condimentum mattis, sem nisl mattis risus, ac lacinia lorem dolor non tortor. Aenean sollicitudin vel purus at varius. Phasellus porttitor convallis iaculis. Pellentesque orci elit, lacinia vitae magna ut, fringilla ultricies diam. Sed ac mauris neque. Donec faucibus, felis id tristique luctus, tortor ligula condimentum quam, ut lacinia felis justo vehicula sapien. Fusce suscipit finibus arcu, vitae iaculis diam elementum et. Vestibulum accumsan blandit enim, id mollis mi pulvinar ut. Nulla euismod magna lorem, ac pulvinar mi hendrerit vitae.','About Us','','publish','closed','closed','','about-us','','','2020-01-13 13:36:27','2020-01-13 13:36:27','',0,'http://fictional-university.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-01-03 12:55:05','2020-01-03 12:55:05','This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque sit amet magna sed mattis. Suspendisse tincidunt, diam quis condimentum mattis, sem nisl mattis risus, ac lacinia lorem dolor non tortor. Aenean sollicitudin vel purus at varius. Phasellus porttitor convallis iaculis. Pellentesque orci elit, lacinia vitae magna ut, fringilla ultricies diam. Sed ac mauris neque. Donec faucibus, felis id tristique luctus, tortor ligula condimentum quam, ut lacinia felis justo vehicula sapien. Fusce suscipit finibus arcu, vitae iaculis diam elementum et. Vestibulum accumsan blandit enim, id mollis mi pulvinar ut. Nulla euismod magna lorem, ac pulvinar mi hendrerit vitae.','About Us','','inherit','closed','closed','','15-revision-v1','','','2020-01-03 12:55:05','2020-01-03 12:55:05','',15,'http://fictional-university.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-01-03 12:55:34','2020-01-03 12:55:34','This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque sit amet magna sed mattis. Suspendisse tincidunt, diam quis condimentum mattis, sem nisl mattis risus, ac lacinia lorem dolor non tortor. Aenean sollicitudin vel purus at varius. Phasellus porttitor convallis iaculis. Pellentesque orci elit, lacinia vitae magna ut, fringilla ultricies diam. Sed ac mauris neque. Donec faucibus, felis id tristique luctus, tortor ligula condimentum quam, ut lacinia felis justo vehicula sapien. Fusce suscipit finibus arcu, vitae iaculis diam elementum et. Vestibulum accumsan blandit enim, id mollis mi pulvinar ut. Nulla euismod magna lorem, ac pulvinar mi hendrerit vitae.','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2020-01-03 13:17:50','2020-01-03 13:17:50','',0,'http://fictional-university.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-01-03 12:55:34','2020-01-03 12:55:34','This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque sit amet magna sed mattis. Suspendisse tincidunt, diam quis condimentum mattis, sem nisl mattis risus, ac lacinia lorem dolor non tortor. Aenean sollicitudin vel purus at varius. Phasellus porttitor convallis iaculis. Pellentesque orci elit, lacinia vitae magna ut, fringilla ultricies diam. Sed ac mauris neque. Donec faucibus, felis id tristique luctus, tortor ligula condimentum quam, ut lacinia felis justo vehicula sapien. Fusce suscipit finibus arcu, vitae iaculis diam elementum et. Vestibulum accumsan blandit enim, id mollis mi pulvinar ut. Nulla euismod magna lorem, ac pulvinar mi hendrerit vitae.','Privacy Policy','','inherit','closed','closed','','17-revision-v1','','','2020-01-03 12:55:34','2020-01-03 12:55:34','',17,'http://fictional-university.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-01-03 13:17:13','2020-01-03 13:17:13','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://fictional-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-01-03 13:17:13','2020-01-03 13:17:13','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-01-03 13:38:13','2020-01-03 13:38:13','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Our History','','publish','closed','closed','','our-history','','','2020-01-03 13:38:13','2020-01-03 13:38:13','',15,'http://fictional-university.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-01-03 13:38:13','2020-01-03 13:38:13','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Our History','','inherit','closed','closed','','20-revision-v1','','','2020-01-03 13:38:13','2020-01-03 13:38:13','',20,'http://fictional-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-01-03 13:38:28','2020-01-03 13:38:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Our Goals','','publish','closed','closed','','our-goals','','','2020-01-03 13:38:28','2020-01-03 13:38:28','',15,'http://fictional-university.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-01-03 13:38:28','2020-01-03 13:38:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Our Goals','','inherit','closed','closed','','22-revision-v1','','','2020-01-03 13:38:28','2020-01-03 13:38:28','',22,'http://fictional-university.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-01-03 13:56:59','2020-01-03 13:56:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-01-03 13:56:59','2020-01-03 13:56:59','',17,'http://fictional-university.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-01-03 13:56:59','2020-01-03 13:56:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque a tincidunt nulla, vel rhoncus velit. Sed iaculis lectus dui, in dapibus neque rhoncus in. In posuere sem et turpis euismod, in scelerisque justo elementum. Nunc gravida ultricies tortor, sit amet scelerisque lorem hendrerit ac. In efficitur metus vel neque pellentesque fermentum. Maecenas fringilla commodo risus sit amet egestas. Praesent sit amet lacinia orci, sed cursus dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi eget euismod nibh, eget dignissim lacus. Praesent eleifend pharetra augue in accumsan. Integer magna diam, auctor eget metus a, molestie ornare ligula. Nulla quis euismod metus, eu facilisis ante. Suspendisse mattis, nisl sit amet eleifend vehicula, nunc quam tincidunt est, in eleifend mi leo et ante. Maecenas hendrerit, arcu nec iaculis elementum, ligula metus vestibulum quam, sed varius dolor lectus id mauris. Ut id sagittis quam, vitae rutrum tortor. Vivamus eu sapien vel lectus pulvinar egestas.','Cookie Policy','','inherit','closed','closed','','24-revision-v1','','','2020-01-03 13:56:59','2020-01-03 13:56:59','',24,'http://fictional-university.local/24-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-01-06 17:47:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-06 17:47:24','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-01-06 17:47:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-01-06 17:47:24','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-01-07 08:21:44','2020-01-07 08:21:44','{\n    \"nav_menu_item[-1610535264]\": {\n        \"value\": {\n            \"object_id\": 24,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Cookie Policy\",\n            \"url\": \"http://fictional-university.local/privacy-policy/cookie-policy/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Cookie Policy\",\n            \"nav_menu_term_id\": 4,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-07 08:21:44\"\n    }\n}','','','trash','closed','closed','','e203c22b-b42e-4788-b4c0-85e965184039','','','2020-01-07 08:21:44','2020-01-07 08:21:44','',0,'http://fictional-university.local/e203c22b-b42e-4788-b4c0-85e965184039/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-01-07 08:58:18','2020-01-07 08:58:18','','Home','','publish','closed','closed','','home','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',0,'http://fictional-university.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-01-07 08:58:18','2020-01-07 08:58:18',' ','','','publish','closed','closed','','43','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',0,'http://fictional-university.local/?p=43',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-01-07 08:58:18','2020-01-07 08:58:18',' ','','','publish','closed','closed','','44','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',15,'http://fictional-university.local/?p=44',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-01-07 08:58:18','2020-01-07 08:58:18',' ','','','publish','closed','closed','','45','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',15,'http://fictional-university.local/?p=45',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-01-07 08:58:18','2020-01-07 08:58:18',' ','','','publish','closed','closed','','46','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',0,'http://fictional-university.local/?p=46',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-01-07 08:58:18','2020-01-07 08:58:18',' ','','','publish','closed','closed','','47','','','2020-01-07 09:03:11','2020-01-07 09:03:11','',17,'http://fictional-university.local/?p=47',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-01-07 09:06:01','2020-01-07 09:06:01',' ','','','publish','closed','closed','','50','','','2020-01-07 09:06:01','2020-01-07 09:06:01','',0,'http://fictional-university.local/?p=50',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-01-07 09:06:01','2020-01-07 09:06:01',' ','','','publish','closed','closed','','51','','','2020-01-07 09:06:01','2020-01-07 09:06:01','',17,'http://fictional-university.local/?p=51',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-01-07 09:06:33','2020-01-07 09:06:33',' ','','','publish','closed','closed','','52','','','2020-01-07 09:06:33','2020-01-07 09:06:33','',0,'http://fictional-university.local/?p=52',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-01-07 09:06:33','2020-01-07 09:06:33','','Google','','publish','closed','closed','','google','','','2020-01-07 09:06:33','2020-01-07 09:06:33','',0,'http://fictional-university.local/?p=53',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-01-07 09:29:40','2020-01-07 09:29:40','','Home','','publish','closed','closed','','home','','','2020-01-07 09:29:40','2020-01-07 09:29:40','',0,'http://fictional-university.local/?page_id=54',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-01-07 09:29:40','2020-01-07 09:29:40','','Home','','inherit','closed','closed','','54-revision-v1','','','2020-01-07 09:29:40','2020-01-07 09:29:40','',54,'http://fictional-university.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-01-07 09:29:50','2020-01-07 09:29:50','','Blog','','publish','closed','closed','','blog','','','2020-01-07 09:29:50','2020-01-07 09:29:50','',0,'http://fictional-university.local/?page_id=56',0,'page','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-01-07 09:29:50','2020-01-07 09:29:50','','Blog','','inherit','closed','closed','','56-revision-v1','','','2020-01-07 09:29:50','2020-01-07 09:29:50','',56,'http://fictional-university.local/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-01-07 09:54:56','2020-01-07 09:54:56','<div class=\"page-section__generator page-section__generator--top g12-xs g11-md g10-lg g8-xl\">\r\n<div class=\"page-generator__text page-generator__text--top js-generator-text\">\r\n<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At elementum eu facilisis sed odio morbi quis commodo odio. Dui sapien eget mi proin sed libero enim sed. Dignissim diam quis enim lobortis. Ornare massa eget egestas purus. Vulputate sapien nec sagittis aliquam malesuada. Lorem ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Sollicitudin tempor id eu nisl nunc mi. Vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Cras sed felis eget velit aliquet sagittis id consectetur. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Turpis tincidunt id aliquet risus feugiat in ante metus. Gravida in fermentum et sollicitudin ac. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Quis ipsum suspendisse ultrices gravida dictum fusce ut.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"g12-xs g3-xl page-display s-half-page\">\r\n<div class=\"page-display__block\">\r\n<div id=\"waldo-tag-5040\" data-processed=\"true\" data-google-query-id=\"COnblZic8eYCFZ2LsgodFu4DDA\"></div>\r\n</div>\r\n</div>','We Won an Award!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2020-01-09 11:50:44','2020-01-09 11:50:44','',0,'http://fictional-university.local/?p=58',0,'post','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-01-07 09:54:56','2020-01-07 09:54:56','<div class=\"page-section__generator page-section__generator--top g12-xs g11-md g10-lg g8-xl\">\r\n<div class=\"page-generator__text page-generator__text--top js-generator-text\">\r\n<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At elementum eu facilisis sed odio morbi quis commodo odio. Dui sapien eget mi proin sed libero enim sed. Dignissim diam quis enim lobortis. Ornare massa eget egestas purus. Vulputate sapien nec sagittis aliquam malesuada. Lorem ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Sollicitudin tempor id eu nisl nunc mi. Vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Cras sed felis eget velit aliquet sagittis id consectetur. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Turpis tincidunt id aliquet risus feugiat in ante metus. Gravida in fermentum et sollicitudin ac. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Quis ipsum suspendisse ultrices gravida dictum fusce ut.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"g12-xs g3-xl page-display s-half-page\">\r\n<div class=\"page-display__block\">\r\n<div id=\"waldo-tag-5040\" data-processed=\"true\" data-google-query-id=\"COnblZic8eYCFZ2LsgodFu4DDA\"></div>\r\n</div>\r\n</div>','We Won an Award!','','inherit','closed','closed','','58-revision-v1','','','2020-01-07 09:54:56','2020-01-07 09:54:56','',58,'http://fictional-university.local/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-01-09 08:12:39','2020-01-09 08:12:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Math Meetup','','publish','closed','closed','','math-meetup','','','2020-01-09 13:31:43','2020-01-09 13:31:43','',0,'http://fictional-university.local/?post_type=event&#038;p=60',0,'event','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-01-09 08:12:55','2020-01-09 08:12:55','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2020-01-10 09:22:27','2020-01-10 09:22:27','',0,'http://fictional-university.local/?post_type=event&#038;p=61',0,'event','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-01-09 08:13:09','2020-01-09 08:13:09','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Poetry Day','Poetry day is going to be amazing.','publish','closed','closed','','poetry-day','','','2020-01-14 08:32:49','2020-01-14 08:32:49','',0,'http://fictional-university.local/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-01-09 11:50:44','2020-01-09 11:50:44','<div class=\"page-section__generator page-section__generator--top g12-xs g11-md g10-lg g8-xl\">\r\n<div class=\"page-generator__text page-generator__text--top js-generator-text\">\r\n<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At elementum eu facilisis sed odio morbi quis commodo odio. Dui sapien eget mi proin sed libero enim sed. Dignissim diam quis enim lobortis. Ornare massa eget egestas purus. Vulputate sapien nec sagittis aliquam malesuada. Lorem ipsum dolor sit amet consectetur adipiscing elit ut aliquam. Sollicitudin tempor id eu nisl nunc mi. Vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Cras sed felis eget velit aliquet sagittis id consectetur. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Turpis tincidunt id aliquet risus feugiat in ante metus. Gravida in fermentum et sollicitudin ac. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Quis ipsum suspendisse ultrices gravida dictum fusce ut.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"g12-xs g3-xl page-display s-half-page\">\r\n<div class=\"page-display__block\">\r\n<div id=\"waldo-tag-5040\" data-processed=\"true\" data-google-query-id=\"COnblZic8eYCFZ2LsgodFu4DDA\"></div>\r\n</div>\r\n</div>','We Won an Award!','Our school has won another award this year.','inherit','closed','closed','','58-revision-v1','','','2020-01-09 11:50:44','2020-01-09 11:50:44','',58,'http://fictional-university.local/2020/01/09/58-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-01-09 12:18:47','2020-01-09 12:18:47','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5e17198a98100','','','2020-01-09 12:29:44','2020-01-09 12:29:44','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-01-09 12:18:47','2020-01-09 12:18:47','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5e17199e995c3','','','2020-01-09 12:29:44','2020-01-09 12:29:44','',67,'http://fictional-university.local/?post_type=acf-field&#038;p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-01-10 08:00:20','2020-01-10 08:00:20','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2020-01-10 08:00:20','2020-01-10 08:00:20','',0,'http://fictional-university.local/?post_type=event&#038;p=70',0,'event','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-01-10 08:18:13','2020-01-10 08:18:13','','Past Events','','publish','closed','closed','','past-events','','','2020-01-10 08:18:13','2020-01-10 08:18:13','',0,'http://fictional-university.local/?page_id=72',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-01-10 08:18:13','2020-01-10 08:18:13','','Past Events','','inherit','closed','closed','','72-revision-v1','','','2020-01-10 08:18:13','2020-01-10 08:18:13','',72,'http://fictional-university.local/2020/01/10/72-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-01-10 08:25:35','2020-01-10 08:25:35','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','New Year 2019','','publish','closed','closed','','new-year-2019','','','2020-01-10 08:25:35','2020-01-10 08:25:35','',0,'http://fictional-university.local/?post_type=event&#038;p=74',0,'event','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-01-10 08:39:00','2020-01-10 08:39:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Second test post','','inherit','closed','closed','','11-revision-v1','','','2020-01-10 08:39:00','2020-01-10 08:39:00','',11,'http://fictional-university.local/2020/01/10/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-01-10 08:49:16','2020-01-10 08:49:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Math','','publish','closed','closed','','math','','','2020-01-14 11:50:19','2020-01-14 11:50:19','',0,'http://fictional-university.local/?post_type=program&#038;p=76',0,'program','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-01-10 08:49:28','2020-01-10 08:49:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Biology','','publish','closed','closed','','biology','','','2020-01-10 08:49:28','2020-01-10 08:49:28','',0,'http://fictional-university.local/?post_type=program&#038;p=77',0,'program','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-01-10 08:49:35','2020-01-10 08:49:35','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','English','','publish','closed','closed','','english','','','2020-01-10 08:49:35','2020-01-10 08:49:35','',0,'http://fictional-university.local/?post_type=program&#038;p=78',0,'program','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-01-10 09:15:25','2020-01-10 09:15:25','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5e183ee442d08','','','2020-01-10 10:45:52','2020-01-10 10:45:52','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=79',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-01-10 09:15:25','2020-01-10 09:15:25','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5e183eee5d7d2','','','2020-01-10 09:15:25','2020-01-10 09:15:25','',79,'http://fictional-university.local/?post_type=acf-field&p=80',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-01-10 10:41:24','2020-01-10 10:41:24','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Dr. Meawsolot','','publish','closed','closed','','dr-meawsolot','','','2020-01-13 09:28:07','2020-01-13 09:28:07','',0,'http://fictional-university.local/?post_type=professor&#038;p=81',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-01-10 10:41:41','2020-01-10 10:41:41','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2020-01-13 13:13:23','2020-01-13 13:13:23','',0,'http://fictional-university.local/?post_type=professor&#038;p=82',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-01-13 09:26:37','2020-01-13 09:26:37','','barksalot','','inherit','open','closed','','barksalot','','','2020-01-13 09:26:37','2020-01-13 09:26:37','',82,'http://fictional-university.local/wp-content/uploads/2020/01/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-01-13 09:27:43','2020-01-13 09:27:43','','meowsalot','','inherit','open','closed','','meowsalot','','','2020-01-13 09:27:43','2020-01-13 09:27:43','',81,'http://fictional-university.local/wp-content/uploads/2020/01/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-01-13 09:51:39','2020-01-13 09:51:39','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla vestibulum est eu euismod. Sed tellus odio, vulputate hendrerit ullamcorper et, feugiat id sapien. Maecenas faucibus est vel arcu accumsan sodales. Duis in suscipit tortor. Vivamus sed dolor quis orci bibendum hendrerit. Donec hendrerit non massa sit amet efficitur. Morbi convallis luctus nibh, sit amet pulvinar lectus cursus eget. Curabitur pretium nibh eu libero lacinia, nec egestas orci blandit. Sed vel aliquam lorem, quis pellentesque massa. Cras dapibus bibendum diam, eu luctus magna faucibus ac. Ut at aliquam justo. Aliquam erat volutpat.','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2020-01-13 09:51:39','2020-01-13 09:51:39','',0,'http://fictional-university.local/?post_type=professor&#038;p=85',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-01-13 09:50:50','2020-01-13 09:50:50','','frog-bio','','inherit','open','closed','','frog-bio','','','2020-01-13 09:50:50','2020-01-13 09:50:50','',85,'http://fictional-university.local/wp-content/uploads/2020/01/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-01-13 12:59:31','2020-01-13 12:59:31','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5e1c69339ce65','','','2020-01-13 12:59:31','2020-01-13 12:59:31','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-01-13 12:59:31','2020-01-13 12:59:31','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5e1c693d3240c','','','2020-01-13 12:59:31','2020-01-13 12:59:31','',87,'http://fictional-university.local/?post_type=acf-field&p=88',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-01-13 12:59:31','2020-01-13 12:59:31','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5e1c694f3240d','','','2020-01-13 12:59:31','2020-01-13 12:59:31','',87,'http://fictional-university.local/?post_type=acf-field&p=89',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-01-13 13:03:40','2020-01-13 13:03:40','','field','','inherit','open','closed','','field','','','2020-01-13 13:03:40','2020-01-13 13:03:40','',82,'http://fictional-university.local/wp-content/uploads/2020/01/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-01-13 13:35:56','2020-01-13 13:35:56','','building','','inherit','open','closed','','building','','','2020-01-13 13:35:56','2020-01-13 13:35:56','',15,'http://fictional-university.local/wp-content/uploads/2020/01/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-01-13 13:36:27','2020-01-13 13:36:27','This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris scelerisque sit amet magna sed mattis. Suspendisse tincidunt, diam quis condimentum mattis, sem nisl mattis risus, ac lacinia lorem dolor non tortor. Aenean sollicitudin vel purus at varius. Phasellus porttitor convallis iaculis. Pellentesque orci elit, lacinia vitae magna ut, fringilla ultricies diam. Sed ac mauris neque. Donec faucibus, felis id tristique luctus, tortor ligula condimentum quam, ut lacinia felis justo vehicula sapien. Fusce suscipit finibus arcu, vitae iaculis diam elementum et. Vestibulum accumsan blandit enim, id mollis mi pulvinar ut. Nulla euismod magna lorem, ac pulvinar mi hendrerit vitae.','About Us','','inherit','closed','closed','','15-revision-v1','','','2020-01-13 13:36:27','2020-01-13 13:36:27','',15,'http://fictional-university.local/2020/01/13/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-01-14 07:53:24','2020-01-14 07:53:24','','notebook','','inherit','open','closed','','notebook','','','2020-01-14 07:53:24','2020-01-14 07:53:24','',62,'http://fictional-university.local/wp-content/uploads/2020/01/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-01-14 09:14:16','2020-01-14 09:14:16','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod fermentum enim, porttitor ultrices dui consectetur ac. Fusce vel nisi et neque lacinia faucibus in sed ex. Ut vulputate massa a est dignissim, ut luctus justo lacinia. Sed rutrum, risus eu ullamcorper eleifend, orci nisl efficitur leo, eu luctus arcu metus eget risus. Duis eu ultrices mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse non nunc dictum, lobortis turpis ac, faucibus ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum nec feugiat libero. Fusce consequat, turpis in rutrum sollicitudin, massa risus imperdiet massa, non pulvinar magna lectus elementum ante. Aenean convallis in nisl scelerisque ornare. Sed quis scelerisque lectus. Nam auctor est et ante ultrices, ut auctor nunc consectetur. Aliquam ac neque tortor. Sed faucibus quam et est consequat, a gravida odio eleifend. Maecenas facilisis nunc in interdum tempus.','Downtown West','','publish','closed','closed','','downtown-west','','','2020-01-14 09:14:16','2020-01-14 09:14:16','',0,'http://fictional-university.local/?post_type=campus&#038;p=94',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-01-14 09:14:38','2020-01-14 09:14:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod fermentum enim, porttitor ultrices dui consectetur ac. Fusce vel nisi et neque lacinia faucibus in sed ex. Ut vulputate massa a est dignissim, ut luctus justo lacinia. Sed rutrum, risus eu ullamcorper eleifend, orci nisl efficitur leo, eu luctus arcu metus eget risus. Duis eu ultrices mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse non nunc dictum, lobortis turpis ac, faucibus ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum nec feugiat libero. Fusce consequat, turpis in rutrum sollicitudin, massa risus imperdiet massa, non pulvinar magna lectus elementum ante. Aenean convallis in nisl scelerisque ornare. Sed quis scelerisque lectus. Nam auctor est et ante ultrices, ut auctor nunc consectetur. Aliquam ac neque tortor. Sed faucibus quam et est consequat, a gravida odio eleifend. Maecenas facilisis nunc in interdum tempus.','Downtown East','','publish','closed','closed','','downtown-east','','','2020-01-14 09:14:38','2020-01-14 09:14:38','',0,'http://fictional-university.local/?post_type=campus&#038;p=95',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-01-14 09:16:58','2020-01-14 09:16:58','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','publish','closed','closed','','group_5e1d86c1a91a8','','','2020-01-14 09:16:58','2020-01-14 09:16:58','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=96',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-01-14 09:16:58','2020-01-14 09:16:58','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_5e1d86cbc44bb','','','2020-01-14 09:16:58','2020-01-14 09:16:58','',96,'http://fictional-university.local/?post_type=acf-field&p=97',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-01-14 11:49:59','2020-01-14 11:49:59','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Campus(es)','related-campuses','publish','closed','closed','','group_5e1d9643ae523','','','2020-01-14 11:49:59','2020-01-14 11:49:59','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=98',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-01-14 11:49:59','2020-01-14 11:49:59','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Campus(es)','related_campus','publish','closed','closed','','field_5e1d9656843ce','','','2020-01-14 11:49:59','2020-01-14 11:49:59','',98,'http://fictional-university.local/?post_type=acf-field&p=99',0,'acf-field','',0);
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
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (11,1,0);
INSERT INTO `wp_term_relationships` VALUES (42,6,0);
INSERT INTO `wp_term_relationships` VALUES (43,6,0);
INSERT INTO `wp_term_relationships` VALUES (44,6,0);
INSERT INTO `wp_term_relationships` VALUES (45,6,0);
INSERT INTO `wp_term_relationships` VALUES (46,6,0);
INSERT INTO `wp_term_relationships` VALUES (47,6,0);
INSERT INTO `wp_term_relationships` VALUES (50,7,0);
INSERT INTO `wp_term_relationships` VALUES (51,7,0);
INSERT INTO `wp_term_relationships` VALUES (52,8,0);
INSERT INTO `wp_term_relationships` VALUES (53,8,0);
INSERT INTO `wp_term_relationships` VALUES (58,9,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','We love to blog about our awards.',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (6,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (7,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (8,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (9,'Awards','awards',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Elena Korkeamäki');
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
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','69');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','8');
INSERT INTO `wp_usermeta` VALUES (21,1,'session_tokens','a:3:{s:64:\"cadd8ac8274f474aed3132584836de9a1785526831cb831aeab60088bc95498c\";a:4:{s:10:\"expiration\";i:1579079105;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578906305;}s:64:\"f546b629ebca4fe5f946ade047f2cfcb7032c615dcfc317924b77dfd045bb825\";a:4:{s:10:\"expiration\";i:1579082013;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578909213;}s:64:\"01332f8c5c8c53f141800eec71e12acb277eca06650efb08f63022ccafb337b1\";a:4:{s:10:\"expiration\";i:1579082020;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1578909220;}}');
INSERT INTO `wp_usermeta` VALUES (22,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_post','a:6:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings-time','1578907637');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
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
INSERT INTO `wp_users` VALUES (1,'elenakor','$P$BQNS9Y4QWXHFLZ3MBq.zVajtOQ8IfL1','elenakor','elena.korkeamaki19@gmail.com','','2020-01-02 13:31:57','',0,'Elena Korkeamäki');
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

-- Dump completed on 2020-01-21 21:34:05
