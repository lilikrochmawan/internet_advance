/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.7.2-MariaDB, for Win64 (AMD64)
--
-- Host: 192.168.11.60    Database: casaos
-- ------------------------------------------------------
-- Server version	11.4.8-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'0001_01_01_000003_add_phone_to_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riwayat_backupdb`
--

DROP TABLE IF EXISTS `riwayat_backupdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `riwayat_backupdb` (
  `id_backup` int(11) NOT NULL AUTO_INCREMENT,
  `nama_db` text NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_backup`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riwayat_backupdb`
--

LOCK TABLES `riwayat_backupdb` WRITE;
/*!40000 ALTER TABLE `riwayat_backupdb` DISABLE KEYS */;
INSERT INTO `riwayat_backupdb` VALUES
(52,'casaos 2026-05-26.sql','2026-05-26');
/*!40000 ALTER TABLE `riwayat_backupdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('0BmObFnhO2p193eK2zidT8F8hIKYOzdgoveyhAyy',NULL,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOERWUHdRR2EwdHJqRWJCYkcwMU0xcVFYQm4wMDRxUjlHZEFEWTNSSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780838359),
('1V0Qqa2ec50rhpoSdTMXIXraDiSkGD8oOjHUrbmk',191,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT1N2SXdnZENObFZ0U2RXZnE4V0JjanNYUlhDWlUzbTlWOXNabG4yaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwL3BheW1lbnQvZGV0YWlsIjtzOjU6InJvdXRlIjtzOjE0OiJwYXltZW50LmRldGFpbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE5MTt9',1780854143),
('4EKu13x8tlfQ8wkgx77pfDAswfdRj8egh8osYYSj',156,'10.10.5.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoid2ZiTWp2N2tVWFcxZTVvSmR4R3lvMGhBdmp2UWhuZ0Q3blZTNVVjcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU2O30=',1780844145),
('4q2OWZkI5h9aPWCF773q7Ui9qiJGmwO5ZbaHepw0',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoidmNrcW1mV1NhS2hzV1pxNkpFeGhVbm5FOHlxUmNqMEdKcTJBRmhBRiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780850298),
('9C0f5OIjTgd0DPf0EnKRS3VzqFPGgSCYy4Dmwo3v',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoic243QlFPWFZiSnhhcVBaUEdmQ1lpdWYxdFQ0ZVN2elczY0tWN25kSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843199),
('9QuAE07vM1mDeNPpu2qnNhryPT4aBOSndYxK43AL',276,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicWxIcTduTU15ZTN3eXBhUmcyblBQZzhUMTFKYU9aU09tQTRZR2gzbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwL3BheW1lbnQvZGV0YWlsIjtzOjU6InJvdXRlIjtzOjE0OiJwYXltZW50LmRldGFpbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI3Njt9',1780850307),
('c4fD7BlVjpUmImNiXbnVpvOqJIzG8ZszMqkMHpJz',146,'10.10.5.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3QzZmM0SEZwR000TGQzUHBWQW8wTmN5eGtZbEtCcGlCbmlsamVENyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTQ2O30=',1780891451),
('Dktcv2JwAaI4v2Yj6LQRQGWOFdqzqmTzbcm1Wse7',159,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_3_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.3.1 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHUwSEFHSk1HcnV4R2Vna2VBZlpQbXJmTkVickpBVFNMbUxyUmhxSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwL3BheW1lbnQvZGV0YWlsIjtzOjU6InJvdXRlIjtzOjE0OiJwYXltZW50LmRldGFpbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE1OTt9',1780834277),
('HbUGMz6rP9NiVuFz4P8DkT7LlklDwf5TAncSI6Kd',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoidEtaSkd3WnZrMFBIMXNVNWtJUVRuWWdBVmN6UXh4WjJRSkNVcmE2ZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780850298),
('jJbSG1tOSsDUGPMPmwGKpsJTBHXBWXDPStkkGzyr',NULL,'10.10.5.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicFdRSFdFSk1oNzE4SmRaNGFEczZQYVg1ZVlKWEJFR1NERkNvMjZMbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843198),
('K6PkQD9PSQSIAn3ho5rl9TMaMQFA9O9qxcy2IFf4',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkh3eGdEck5xMlJTaDY4RnZpYm1MaXR1ejBLNHlhekF0eUYzVGQzaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843187),
('kNaz9OO4PaEkkkuAEmfu9ZjhJO41d3K2R4Qctmxy',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmluUm5ZQnhBNG9LaGM0WXhPN2JwNWRscGdrT1hWcG5paXd3eTlwZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843187),
('l5Xrw4F2Udy6MnDnODClBovKQHlv1x5iNbR71iic',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlY3NkpoaW02WUVQS2FSdTZObXVDV2pkYlA2YXNnNEhEUW9nd2ZTdiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843199),
('noVQbqxnRTtTGVUD74h9nQfh7LP8Nc2vnlX88QKG',NULL,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1RmYm9FOEs0bERaZUpXSTkzRFFEOVlzSWdMVGV5OFE1YUJVTFVuZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780877741),
('OxqOZuLh5nuHlthGOsR45JQW34y2rjB1pNxJzmf7',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVThnY1Y3bnFQZ0dzSWd3bmlVOUxQalRteWFod1NTN1ZZN2xPZVRVQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780850298),
('T53Fc2AX9UfsSNXM6gpZqbyR7pLGYcyU5WhfS7wi',NULL,'10.10.5.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDMxNFBLMHdSb1dsOUxkV0ZiTTVYaUhJZGlIS2l4QzAxckZWbFNITCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843204),
('tMzS0OyQYlEC0L4MfyzWWi6Uf8iI0pPOpAYrvbAW',NULL,'10.10.5.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGRhUjVQMDhEazZNNWhkMmZkbTFTdWNFN0xORnhkemJGSTFGbmlYSCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo2MDoiaHR0cDovL2luZG90ZWwubG90dXNjb21wdXRhbWEuY29tL3B1YmxpYy9pbmRleC5waHAvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843187),
('uDuKhgQ9r2kaBlUxLmNsiW5ddc7vlGxq5LHvSakb',NULL,'10.10.5.1','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXcyU2cybVF5ZFkzRTREVW1kMXZlOERqSjd2blFodXB6bU9WSWVtcyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780887645),
('uETO1p048rk9MhFFudc7oZClTFH64dQQc3hxkuB2',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHJDNGlGTWFWNHA0VnJFUE9SRGlBZ1hNeHRPRjdGcmVtSXhLbmFVTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843187),
('vPar95t0SgW2ovnL5CKlumHtCCVV7XnVKExoW5o3',NULL,'10.10.5.1','Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/146.0.7680.151 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0oyUE1zWnl4OGp6WFo4S0czTVpWYXVRcGxJelk4N1E3cnFRVFJrUiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780834624),
('WeS1RQupsTFLi9vEK1KwuPxJ9QpFPL3iSWyYDe7I',NULL,'10.10.5.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTJ6ZFoxbEhxNHJuYW1MSjVKUm02OWJJaTJyeXRoU3VkY0xHb2cyTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780881007),
('WVsu0jRQYPsGQDICwIoR4oU3corpmZ8KHNnZmqvP',NULL,'10.10.5.1','NetworkingExtension/8624.2.5.10.4 Network/5812.122.1 iOS/26.5','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnFpQXRvdGlQejNLaURNTHNNcWVWR2M3SXVDd2FnRHR3cEZmYzl2QiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9pbmRvdGVsLmxvdHVzY29tcHV0YW1hLmNvbS9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjU6ImxvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1780843199);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kas`
--

DROP TABLE IF EXISTS `tb_kas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kas` (
  `id_kas` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) DEFAULT NULL,
  `tgl_kas` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `penerimaan` int(11) DEFAULT NULL,
  `pengeluaran` int(11) DEFAULT NULL,
  `jenis_kas` varchar(15) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_tagihan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kas`)
) ENGINE=InnoDB AUTO_INCREMENT=1130 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kas`
--

LOCK TABLES `tb_kas` WRITE;
/*!40000 ALTER TABLE `tb_kas` DISABLE KEYS */;
INSERT INTO `tb_kas` VALUES
(2,0,'2025-09-05','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,0,'',0,4),
(3,0,'2025-09-05','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,5),
(4,0,'2025-09-05','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,0,'',0,10),
(5,0,'2025-09-05','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,0,'',0,20),
(6,0,'2025-09-05','Pembayaran Internet AN.&nbspAndi Prasetyo,&nbspPaket&nbsp10 Mb',100000,0,'',0,19),
(7,0,'2025-09-05','Pembayaran Internet AN.&nbspRosyid ,&nbspPaket&nbsp15 Mb',150000,0,'',0,24),
(8,0,'2025-09-05','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,0,'',0,31),
(9,0,'2025-09-05','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp20 Mb',175000,0,'',0,40),
(10,0,'2025-09-05','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,0,'',0,63),
(11,0,'2025-09-05','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,0,'',0,71),
(12,0,'2025-09-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius W.D,&nbspPaket&nbsp15 Mb',150000,0,'',0,74),
(13,0,'2025-09-05','Pembayaran Internet AN.&nbspAngga Budi P,&nbspPaket&nbsp15 Mb',150000,0,'',0,84),
(14,0,'2025-09-05','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,0,'',0,98),
(15,0,'2025-09-05','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,0,'',0,3),
(16,0,'2025-09-05','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,0,'',0,68),
(17,0,'2025-09-05','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,0,'',0,27),
(18,0,'2025-09-05','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,101),
(19,0,'2025-09-05','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,0,'',0,61),
(20,0,'2025-09-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,0,'',0,87),
(21,0,'2025-09-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,0,'',0,42),
(22,0,'2025-09-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,0,'',0,15),
(23,0,'2025-09-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,0,'',0,108),
(24,0,'2025-09-05','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,0,'',0,105),
(25,0,'2025-09-05','Pembayaran Internet AN.&nbspLabib A Falahi,&nbspPaket&nbsp15 Mb',150000,0,'',0,94),
(26,0,'2025-09-05','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,0,'',0,25),
(27,0,'2025-09-05','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,0,'',0,43),
(28,0,'2025-09-05','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,0,'',0,77),
(29,0,'2025-09-05','Pembayaran Internet AN.&nbspMaria Parama T D,&nbspPaket&nbsp15 Mb',150000,0,'',0,97),
(30,0,'2025-09-05','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,0,'',0,17),
(31,0,'2025-09-05','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,0,'',0,57),
(32,0,'2025-09-05','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,0,'',0,88),
(33,0,'2025-09-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,0,'',0,44),
(34,0,'2025-09-05','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,0,'',0,76),
(35,0,'2025-09-05','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,0,'',0,79),
(36,0,'2025-09-05','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,0,'',0,64),
(37,0,'2025-09-05','Pembayaran Internet AN.&nbspHandika Kurniajaya,&nbspPaket&nbsp10 Mb Khusus',75000,0,'',0,110),
(38,0,'2025-09-05','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,0,'',0,96),
(39,0,'2025-09-05','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,89),
(40,0,'2025-09-05','Bayar internet iksan bulan september 2025 ',0,4200000,'',1,0),
(41,0,'2025-09-05','Kas paguyuban  tahap 1 dan 2 ',0,400000,'',1,0),
(42,0,'2025-09-04','Kabel 1core ',0,539000,'',1,0),
(43,0,'2025-09-06','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,0,'',0,30),
(44,0,'2025-09-06','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,0,'',0,51),
(45,0,'2025-09-06','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,0,'',0,45),
(46,0,'2025-09-06','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,0,'',0,92),
(47,0,'2025-09-06','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,0,'',0,90),
(48,0,'2025-09-07','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,0,'',0,109),
(49,0,'2025-09-07','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,0,'',0,86),
(50,0,'2025-09-07','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,0,'',0,53),
(51,0,'2025-09-07','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,0,'',0,115),
(52,0,'2025-09-07','Pembayaran Internet AN.&nbspLorien Nurajay Oxa,&nbspPaket&nbsp20 Mb',175000,0,'',0,111),
(53,0,'2025-09-07','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,0,'',0,34),
(54,0,'2025-09-07','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,0,'',0,113),
(55,0,'2025-09-07','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,0,'',0,69),
(56,0,'2025-09-07','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,0,'',0,65),
(57,0,'2025-09-07','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,0,'',0,106),
(58,0,'2025-09-07','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,0,'',0,73),
(59,0,'2025-09-07','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,0,'',0,28),
(60,0,'2025-09-07','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,0,'',0,49),
(61,0,'2025-09-07','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,36),
(62,0,'2025-09-07','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,0,'',0,112),
(63,0,'2025-09-08','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,0,'',0,62),
(64,0,'2025-09-08','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,0,'',0,29),
(65,0,'2025-09-08','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,0,'',0,100),
(68,0,'2025-09-08','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,0,'',0,56),
(69,0,'2025-09-08','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,0,'',0,99),
(70,0,'2025-09-08','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,0,'',0,102),
(71,0,'2025-09-08','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,0,'',0,35),
(72,0,'2025-09-09','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,0,'',0,67),
(73,0,'2025-09-09','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,0,'',0,21),
(74,0,'2025-09-09','Pembayaran Internet AN.&nbspAldias Alif S,&nbspPaket&nbsp15 Mb',150000,0,'',0,59),
(75,0,'2025-09-09','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,0,'',0,13),
(76,0,'2025-09-08','beli perlengkapan ODP, Splitter box',0,485000,'',1,0),
(77,0,'2025-09-10','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,0,'',0,78),
(78,0,'2025-09-10','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,0,'',0,50),
(79,0,'2025-09-10','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,0,'',0,66),
(80,0,'2025-09-10','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,0,'',0,23),
(81,0,'2025-09-10','Pembayaran Internet AN.&nbspAchmad Jaenal Abid,&nbspPaket&nbsp15 Mb',150000,0,'',0,18),
(82,0,'2025-09-10','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,0,'',0,107),
(83,0,'2025-09-10','Pembayaran Internet AN.&nbspErina Ikawati,&nbspPaket&nbsp15 Mb',150000,0,'',0,103),
(84,0,'2025-09-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,0,'',0,55),
(85,0,'2025-09-10','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,33),
(86,0,'2025-09-10','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,26),
(87,0,'2025-09-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,0,'',0,14),
(88,0,'2025-09-10','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,39),
(89,0,'2025-09-10','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,58),
(90,0,'2025-09-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,0,'',0,32),
(91,0,'2025-09-10','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp15 Mb',150000,0,'',0,93),
(92,0,'2025-09-10','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,0,'',0,70),
(93,0,'2025-09-10','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,0,'',0,9),
(94,0,'2025-09-10','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,0,'',0,6),
(95,0,'2025-09-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,0,'',0,60),
(96,0,'2025-09-10','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,0,'',0,52),
(97,0,'2025-09-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,0,'',0,80),
(98,0,'2025-09-11','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,0,'',0,95),
(99,0,'2025-09-11','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,0,'',0,41),
(100,0,'2025-09-11','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,7),
(101,0,'2025-09-11','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,0,'',0,83),
(102,0,'2025-09-11','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,0,'',0,85),
(103,0,'2025-09-12','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,0,'',0,54),
(104,0,'2025-09-12','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,0,'',0,117),
(105,0,'2025-09-12','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,0,'',0,8),
(106,0,'2025-09-12','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,0,'',0,81),
(107,0,'2025-09-12','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,0,'',0,37),
(108,0,'2025-09-13','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,0,'',0,116),
(109,0,'2025-09-14','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,0,'',0,22),
(110,0,'2025-09-19','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,0,'',0,47),
(111,0,'2025-09-30','beli baterai Backup UPS',0,3246800,'',1,0),
(112,0,'2025-09-30','panel listrik',0,293753,'',1,0),
(113,0,'2025-09-30','Powmr Inverter',0,2016753,'',1,0),
(114,0,'2025-09-30','kabel listrik',0,541000,'',1,0),
(115,0,'2025-09-30','router mikrotik 4011',0,1991100,'',1,0),
(116,0,'2025-09-30','SFP BIDI',0,120000,'',1,0),
(117,0,'2025-09-30','Hutang Koperasi September 2025',0,1444700,'',1,0),
(118,0,'2025-10-01','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp20 Mb',175000,0,'',0,156),
(119,0,'2025-10-01','Pembayaran Internet AN.&nbspRosyid ,&nbspPaket&nbsp15 Mb',150000,0,'',0,140),
(120,0,'2025-10-01','Pembayaran Internet AN.&nbspPrassetya Adi Saputra,&nbspPaket&nbsp15 Mb',150000,0,'',0,225),
(121,0,'2025-10-01','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,0,'',0,187),
(122,0,'2025-10-01','Pembayaran Internet AN.&nbspAndi Prasetyo,&nbspPaket&nbsp10 Mb',100000,0,'',0,135),
(123,0,'2025-10-01','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,0,'',0,126),
(124,0,'2025-10-01','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,0,'',0,226),
(125,0,'2025-10-01','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,0,'',0,147),
(126,0,'2025-10-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,0,'',0,200),
(127,0,'2025-10-02','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,0,'',0,136),
(128,0,'2025-10-02','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,0,'',0,119),
(129,0,'2025-10-02','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,0,'',0,120),
(130,0,'2025-10-03','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,0,'',0,214),
(132,0,'2025-10-03','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,229),
(133,0,'2025-10-03','Pembayaran Internet AN.&nbspBonifasius Aprivilius W.D,&nbspPaket&nbsp15 Mb',150000,0,'',0,190),
(135,0,'2025-10-04','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,0,'',0,204),
(136,0,'2025-10-04','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,0,'',0,228),
(137,0,'2025-10-04','beli patchcore 30 biji',0,310500,'',1,0),
(138,0,'2025-10-04','bayar tenaga pasang',0,100000,'',1,0),
(139,0,'2025-10-04','bea pasang n3',100000,0,'',1,0),
(140,0,'2025-10-04','bea pasang i14',100000,0,'',1,0),
(141,0,'2025-10-04','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,121),
(142,0,'2025-10-04','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,0,'',0,193),
(143,0,'2025-10-05','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,0,'',0,159),
(144,0,'2025-10-05','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,0,'',0,208),
(145,0,'2025-10-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,0,'',0,131),
(146,0,'2025-10-05','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,0,'',0,173),
(147,0,'2025-10-05','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,0,'',0,223),
(148,0,'2025-10-05','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,0,'',0,146),
(149,0,'2025-10-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,0,'',0,158),
(150,0,'2025-10-05','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,0,'',0,221),
(151,0,'2025-10-05','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,0,'',0,167),
(152,0,'2025-10-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,0,'',0,191),
(153,0,'2025-10-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,0,'',0,224),
(154,0,'2025-10-05','Pembayaran Internet AN.&nbspMaria Parama T D,&nbspPaket&nbsp15 Mb',150000,0,'',0,213),
(155,0,'2025-10-05','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,0,'',0,180),
(156,0,'2025-10-05','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,217),
(157,0,'2025-10-05','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,0,'',0,188),
(158,0,'2025-10-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,0,'',0,210),
(159,0,'2025-10-05','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,0,'',0,179),
(160,0,'2025-10-05','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,0,'',0,202),
(161,0,'2025-10-05','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,0,'',0,215),
(162,0,'2025-10-05','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,0,'',0,220),
(163,0,'2025-10-05','Beli token listrik',0,201000,'',1,0),
(164,0,'2025-10-05','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,0,'',0,206),
(165,0,'2025-10-06','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,0,'',0,168),
(166,0,'2025-10-06','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,0,'',0,178),
(167,0,'2025-10-06','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,0,'',0,169),
(168,0,'2025-10-06','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,0,'',0,203),
(169,0,'2025-10-06','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,0,'',0,192),
(170,0,'2025-10-06','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,0,'',0,189),
(171,0,'2025-10-06','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,205),
(172,0,'2025-10-06','Bayar internet Oktober',0,5700000,'',1,0),
(173,0,'2025-10-06','Paguyuban tahap 2',0,100000,'',1,0),
(175,0,'2025-10-06','Hutang koperasi Oktober 2025',0,1444700,'',1,0),
(176,0,'2025-10-06','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,0,'',0,137),
(177,0,'2025-10-07','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,0,'',0,177),
(178,0,'2025-10-07','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,0,'',0,160),
(179,0,'2025-10-07','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,0,'',0,143),
(180,0,'2025-10-07','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,0,'',0,195),
(181,0,'2025-10-07','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,0,'',0,222),
(182,0,'2025-10-07','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,0,'',0,216),
(183,0,'2025-10-07','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,0,'',0,145),
(184,0,'2025-10-07','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,0,'',0,185),
(185,0,'2025-10-07','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,0,'',0,133),
(186,0,'2025-10-08','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,0,'',0,141),
(187,0,'2025-10-08','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,0,'',0,151),
(188,0,'2025-10-08','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,0,'',0,148),
(189,0,'2025-10-08','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,0,'',0,231),
(190,0,'2025-10-08','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,0,'',0,118),
(191,0,'2025-10-09','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,0,'',0,129),
(192,0,'2025-10-09','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,0,'',0,161),
(193,0,'2025-10-09','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,152),
(194,0,'2025-10-09','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,0,'',0,172),
(195,0,'2025-10-09','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,0,'',0,181),
(196,0,'2025-10-09','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,0,'',0,175),
(197,0,'2025-10-09','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,0,'',0,218),
(198,0,'2025-10-09','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,0,'',0,130),
(199,0,'2025-10-09','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,0,'',0,122),
(200,0,'2025-10-09','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,0,'',0,199),
(201,0,'2025-10-09','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,0,'',0,165),
(202,0,'2025-10-10','Pembayaran Internet AN.&nbspAchmad Jaenal Abid,&nbspPaket&nbsp15 Mb',150000,0,'',0,134),
(203,0,'2025-10-10','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,0,'',0,166),
(204,0,'2025-10-10','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,0,'',0,150),
(205,0,'2025-10-10','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,0,'',0,184),
(206,0,'2025-10-10','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,0,'',0,182),
(207,0,'2025-10-10','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,149),
(208,0,'2025-10-10','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,0,'',0,142),
(209,0,'2025-10-10','Pembayaran Internet AN.&nbspHandika Kurniajaya,&nbspPaket&nbsp10 Mb Khusus',75000,0,'',0,132),
(210,0,'2025-10-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,0,'',0,157),
(211,0,'2025-10-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,0,'',0,124),
(212,0,'2025-10-10','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,0,'',0,194),
(213,0,'2025-10-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,0,'',0,183),
(214,0,'2025-10-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,0,'',0,171),
(215,0,'2025-10-10','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp15 Mb',150000,0,'',0,209),
(216,0,'2025-10-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,0,'',0,176),
(217,0,'2025-10-10','Pembayaran Internet AN.&nbspLorien Nurajay Oxa,&nbspPaket&nbsp20 Mb',175000,0,'',0,128),
(218,0,'2025-10-10','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,0,'',0,125),
(219,0,'2025-10-10','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,0,'',0,139),
(220,0,'2025-10-10','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,0,'',0,186),
(221,0,'2025-10-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,0,'',0,196),
(222,0,'2025-10-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,0,'',0,170),
(223,0,'2025-10-10','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,0,'',0,144),
(224,0,'2025-10-11','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,0,'',0,197),
(225,0,'2025-10-11','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,0,'',0,163),
(226,0,'2025-10-11','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,0,'',0,201),
(227,0,'2025-10-11','Pembayaran Internet AN.&nbspErina Ikawati,&nbspPaket&nbsp15 Mb',150000,0,'',0,219),
(228,0,'2025-10-11','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,174),
(229,0,'2025-10-11','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,123),
(230,0,'2025-10-11','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,0,'',0,212),
(231,0,'2025-10-12','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,0,'',0,162),
(232,0,'2025-10-12','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,0,'',0,138),
(233,0,'2025-10-12','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,0,'',0,211),
(234,0,'2025-10-12','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,0,'',0,198),
(235,0,'2025-10-13','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,0,'',0,155),
(236,0,'2025-10-14','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,0,'',0,153),
(237,NULL,'2025-12-01','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,234),
(238,NULL,'2025-12-01','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,301),
(239,NULL,'2025-12-01','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,254),
(240,NULL,'2025-12-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,314),
(241,NULL,'2025-12-01','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,328),
(242,NULL,'2025-12-01','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,261),
(243,NULL,'2025-12-01','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,240),
(244,NULL,'2025-12-02','Pembayaran Internet AN.&nbspBonifasius Aprivilius W.D,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,304),
(245,NULL,'2025-12-03','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,233),
(246,NULL,'2025-12-03','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,235),
(247,NULL,'2025-12-04','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,250),
(248,NULL,'2025-12-04','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,268),
(249,NULL,'2025-12-05','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,326),
(250,NULL,'2025-12-05','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,309),
(251,NULL,'2025-12-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,274),
(252,NULL,'2025-12-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,272),
(253,NULL,'2025-12-05','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,348),
(254,NULL,'2025-12-05','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,302),
(255,NULL,'2025-12-05','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,281),
(256,NULL,'2025-12-05','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,306),
(257,NULL,'2025-12-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,245),
(258,NULL,'2025-12-05','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,260),
(259,NULL,'2025-12-05','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,336),
(260,NULL,'2025-12-05','Pembayaran Internet AN.&nbspJunet Aji Prabowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,346),
(261,NULL,'2025-12-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,305),
(262,NULL,'2025-12-05','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,287),
(263,NULL,'2025-12-05','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,333),
(264,NULL,'2025-12-05','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,352),
(265,NULL,'2025-12-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,317),
(266,NULL,'2025-12-05','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,320),
(267,NULL,'2025-12-05','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,276),
(268,NULL,'2025-12-05','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,343),
(269,NULL,'2025-12-05','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,327),
(270,NULL,'2025-12-05','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,329),
(271,NULL,'2025-12-05','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,247),
(272,NULL,'2025-12-05','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,255),
(273,NULL,'2025-12-05','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,251),
(274,NULL,'2025-12-05','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,318),
(275,NULL,'2025-12-05','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,345),
(276,NULL,'2025-12-05','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,294),
(277,NULL,'2025-12-05','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,342),
(278,NULL,'2025-12-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,337),
(279,NULL,'2025-12-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,324),
(280,NULL,'2025-12-06','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,257),
(281,NULL,'2025-12-06','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,232),
(282,NULL,'2025-12-06','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,319),
(283,NULL,'2025-12-06','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,283),
(284,NULL,'2025-12-06','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,279),
(285,NULL,'2025-12-07','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,322),
(286,NULL,'2025-12-07','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,347),
(288,NULL,'2025-12-07','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,299),
(289,NULL,'2025-12-07','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,355),
(290,NULL,'2025-12-07','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,259),
(291,NULL,'2025-12-07','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,293),
(292,NULL,'2025-12-07','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,291),
(293,NULL,'2025-12-07','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,303),
(294,NULL,'2025-12-07','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,344),
(295,NULL,'2025-12-07','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,273),
(296,NULL,'2025-12-07','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,315),
(297,NULL,'2025-12-08','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,335),
(298,NULL,'2025-12-08','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,265),
(299,NULL,'2025-12-08','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,357),
(300,NULL,'2025-12-08','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,331),
(301,NULL,'2025-12-08','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,334),
(302,NULL,'2025-12-08','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,243),
(303,NULL,'2025-12-08','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,308),
(304,NULL,'2025-12-08','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,316),
(305,NULL,'2025-12-08','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,253),
(306,NULL,'2025-12-08','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,341),
(307,NULL,'2025-12-09','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,275),
(308,NULL,'2025-12-09','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,236),
(309,NULL,'2025-12-09','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,289),
(310,NULL,'2025-12-09','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,330),
(311,NULL,'2025-12-09','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,280),
(312,NULL,'2025-12-09','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,292),
(313,NULL,'2025-12-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,332),
(314,NULL,'2025-12-10','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,307),
(315,NULL,'2025-12-10','Pembayaran Internet AN.&nbspAchmad Jaenal Abid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,248),
(316,NULL,'2025-12-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,290),
(317,NULL,'2025-12-10','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,296),
(318,NULL,'2025-12-10','Pembayaran Internet AN.&nbspHandika Kurniajaya,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,246),
(319,NULL,'2025-12-10','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,295),
(320,NULL,'2025-12-10','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,269),
(321,NULL,'2025-12-10','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,264),
(323,NULL,'2025-12-10','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,286),
(324,NULL,'2025-12-10','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,263),
(325,NULL,'2025-12-10','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,298),
(326,NULL,'2025-12-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,244),
(327,NULL,'2025-12-10','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,339),
(328,NULL,'2025-12-10','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,256),
(329,NULL,'2025-12-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,238),
(330,NULL,'2025-12-10','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,282),
(331,NULL,'2025-12-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,285),
(332,NULL,'2025-12-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,313),
(333,NULL,'2025-12-10','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,266),
(334,NULL,'2025-12-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,262),
(335,NULL,'2025-12-10','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,288),
(336,NULL,'2025-12-10','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,267),
(337,NULL,'2025-12-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,297),
(338,NULL,'2025-12-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,284),
(339,NULL,'2025-12-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,271),
(340,NULL,'2025-12-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,310),
(342,NULL,'2025-12-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,252),
(343,NULL,'2025-12-11','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,239),
(344,NULL,'2025-12-11','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,258),
(345,NULL,'2025-12-11','Pembayaran Internet AN.&nbspYanuar Alfiantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,349),
(346,NULL,'2025-12-11','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,277),
(347,NULL,'2025-12-11','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,311),
(348,NULL,'2025-12-11','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,325),
(349,NULL,'2025-12-11','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,300),
(350,NULL,'2025-12-11','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,237),
(351,NULL,'2025-12-12','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,360),
(352,NULL,'2025-12-12','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,358),
(353,NULL,'2025-12-12','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,312),
(354,NULL,'2025-12-19','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,323),
(355,NULL,'2026-01-01','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,430),
(356,NULL,'2026-01-01','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,369),
(357,NULL,'2026-01-01','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,481),
(358,NULL,'2026-01-01','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,363),
(359,NULL,'2026-01-01','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,383),
(360,NULL,'2026-01-01','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,456),
(361,NULL,'2026-01-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,443),
(362,NULL,'2026-01-01','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,390),
(363,NULL,'2026-01-01','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,470),
(364,NULL,'2026-01-04','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,464),
(365,NULL,'2026-01-04','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,379),
(366,NULL,'2026-01-04','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,473),
(367,NULL,'2026-01-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius Wisnu Denpamungkas,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,433),
(368,NULL,'2026-01-05','Pembayaran Internet AN.&nbspNovtri Sandera Putra Pamungkas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,486),
(369,NULL,'2026-01-05','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,362),
(370,NULL,'2026-01-05','Pembayaran Internet AN.&nbspAndri Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,488),
(371,NULL,'2026-01-05','Pembayaran Internet AN.&nbspNovita Wulandari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,483),
(372,NULL,'2026-01-06','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,449),
(373,NULL,'2026-01-06','Pembayaran Internet AN.&nbspCatur Pamungkas,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,375),
(374,NULL,'2026-01-06','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,364),
(375,NULL,'2026-01-06','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,405),
(376,NULL,'2026-01-06','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,389),
(377,NULL,'2026-01-06','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,410),
(378,NULL,'2026-01-06','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,397),
(379,NULL,'2026-01-06','Pembayaran Internet AN.&nbspDeny Agung Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,489),
(380,NULL,'2026-01-06','Pembayaran Internet AN.&nbspYodania Putri Kinasih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,484),
(381,NULL,'2026-01-06','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,480),
(382,NULL,'2026-01-06','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,384),
(383,NULL,'2026-01-06','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,453),
(384,NULL,'2026-01-06','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,438),
(385,NULL,'2026-01-06','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,402),
(386,NULL,'2026-01-06','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,401),
(387,NULL,'2026-01-06','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,434),
(388,NULL,'2026-01-06','Pembayaran Internet AN.&nbspWahyu Darmawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,482),
(389,NULL,'2026-01-06','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,431),
(390,NULL,'2026-01-06','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,435),
(391,NULL,'2026-01-06','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,374),
(392,NULL,'2026-01-06','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,388),
(393,NULL,'2026-01-06','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,423),
(394,NULL,'2026-01-06','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,404),
(395,NULL,'2026-01-06','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,416),
(396,NULL,'2026-01-06','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,471),
(397,NULL,'2026-01-06','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,460),
(398,NULL,'2026-01-06','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,420),
(399,NULL,'2026-01-06','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,476),
(400,NULL,'2026-01-06','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,475),
(401,NULL,'2026-01-06','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,462),
(402,NULL,'2026-01-06','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,432),
(403,NULL,'2026-01-06','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,392),
(404,NULL,'2026-01-06','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,446),
(405,NULL,'2026-01-06','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,412),
(406,NULL,'2026-01-07','Pembayaran Internet AN.&nbspMuhammad Nailul Faroh,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,485),
(407,NULL,'2026-01-07','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,451),
(408,NULL,'2026-01-07','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,448),
(409,NULL,'2026-01-07','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,395),
(410,NULL,'2026-01-07','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,478),
(411,NULL,'2026-01-07','Pembayaran Internet AN.&nbspAdi Buyu Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,491),
(412,NULL,'2026-01-07','Pembayaran Internet AN.&nbspHermawan Nur Ashari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,490),
(413,NULL,'2026-01-07','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,445),
(414,NULL,'2026-01-07','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,479),
(415,NULL,'2026-01-08','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,376),
(416,NULL,'2026-01-08','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,425),
(417,NULL,'2026-01-08','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,386),
(418,NULL,'2026-01-08','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,428),
(419,NULL,'2026-01-08','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,365),
(420,NULL,'2026-01-08','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,415),
(421,NULL,'2026-01-08','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,385),
(422,NULL,'2026-01-08','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,465),
(423,NULL,'2026-01-08','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,380),
(424,NULL,'2026-01-08','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,361),
(425,NULL,'2026-01-08','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,436),
(427,NULL,'2026-01-09','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,411),
(428,NULL,'2026-01-09','Pembayaran Internet AN.&nbspStefanus Rivaldo Nama Hada,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,492),
(429,NULL,'2026-01-09','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,394),
(430,NULL,'2026-01-09','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,447),
(431,NULL,'2026-01-10','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,424),
(432,NULL,'2026-01-10','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,399),
(433,NULL,'2026-01-10','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,418),
(434,NULL,'2026-01-10','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,457),
(435,NULL,'2026-01-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,413),
(436,NULL,'2026-01-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,419),
(437,NULL,'2026-01-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,414),
(438,NULL,'2026-01-10','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,409),
(439,NULL,'2026-01-10','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,437),
(440,NULL,'2026-01-10','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,408),
(441,NULL,'2026-01-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,391),
(442,NULL,'2026-01-10','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,458),
(443,NULL,'2026-01-10','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,422),
(444,NULL,'2026-01-10','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,387),
(445,NULL,'2026-01-10','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,421),
(446,NULL,'2026-01-10','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,472),
(447,NULL,'2026-01-10','Pembayaran Internet AN.&nbspNirwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,487),
(448,NULL,'2026-01-10','Pembayaran Internet AN.&nbspEddy Santoso,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,467),
(449,NULL,'2026-01-10','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,468),
(450,NULL,'2026-01-10','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,427),
(451,NULL,'2026-01-10','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,382),
(452,NULL,'2026-01-10','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,393),
(453,NULL,'2026-01-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,373),
(454,NULL,'2026-01-10','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,459),
(455,NULL,'2026-01-10','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,372),
(456,NULL,'2026-01-10','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,429),
(457,NULL,'2026-01-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,367),
(458,NULL,'2026-01-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,426),
(459,NULL,'2026-01-10','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,466),
(460,NULL,'2026-01-10','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,403),
(461,NULL,'2026-01-10','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,469),
(462,NULL,'2026-01-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,461),
(463,NULL,'2026-01-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,442),
(464,NULL,'2026-01-10','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,406),
(465,NULL,'2026-01-10','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,368),
(466,NULL,'2026-01-11','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,400),
(467,NULL,'2026-01-11','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,398),
(468,NULL,'2026-01-11','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,366),
(469,NULL,'2026-01-11','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,454),
(470,NULL,'2026-01-11','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,444),
(471,NULL,'2026-01-11','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,439),
(472,NULL,'2026-01-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,381),
(473,NULL,'2026-01-11','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,455),
(474,NULL,'2026-01-11','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,452),
(475,NULL,'2026-01-11','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,440),
(476,NULL,'2026-01-11','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,417),
(477,NULL,'2026-02-01','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,514),
(478,NULL,'2026-02-01','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,587),
(479,NULL,'2026-02-01','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,495),
(480,NULL,'2026-02-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,574),
(481,NULL,'2026-02-01','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,561),
(482,NULL,'2026-02-01','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,611),
(483,NULL,'2026-02-01','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,510),
(484,NULL,'2026-02-02','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,521),
(485,NULL,'2026-02-02','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,572),
(486,NULL,'2026-02-03','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,559),
(487,NULL,'2026-02-03','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,563),
(488,NULL,'2026-02-03','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,501),
(489,NULL,'2026-02-03','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,604),
(490,NULL,'2026-02-04','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,580),
(491,NULL,'2026-02-04','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,494),
(492,NULL,'2026-02-04','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,535),
(493,NULL,'2026-02-05','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,588),
(494,NULL,'2026-02-05','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,594),
(495,NULL,'2026-02-05','Pembayaran Internet AN.&nbspRetno Setia Ningsih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,623),
(496,NULL,'2026-02-05','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,496),
(497,NULL,'2026-02-05','Pembayaran Internet AN.&nbspCatur Pamungkas,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,507),
(498,NULL,'2026-02-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius Wisnu Denpamungkas,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,564),
(499,NULL,'2026-02-05','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,523),
(500,NULL,'2026-02-05','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,547),
(501,NULL,'2026-02-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,532),
(502,NULL,'2026-02-05','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,536),
(503,NULL,'2026-02-05','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,601),
(504,NULL,'2026-02-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,565),
(505,NULL,'2026-02-05','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,566),
(506,NULL,'2026-02-05','Pembayaran Internet AN.&nbspNirwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,617),
(507,NULL,'2026-02-05','Pembayaran Internet AN.&nbspDeny Agung Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,619),
(508,NULL,'2026-02-05','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,605),
(509,NULL,'2026-02-05','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,551),
(510,NULL,'2026-02-05','Pembayaran Internet AN.&nbspWahyu Darmawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,612),
(511,NULL,'2026-02-05','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,596),
(512,NULL,'2026-02-05','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,520),
(513,NULL,'2026-02-05','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,606),
(514,NULL,'2026-02-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,597),
(515,NULL,'2026-02-05','Pembayaran Internet AN.&nbspNovtri Sandera Putra Pamungkas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,616),
(516,NULL,'2026-02-05','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,602),
(517,NULL,'2026-02-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,577),
(518,NULL,'2026-02-05','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,562),
(519,NULL,'2026-02-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,534),
(520,NULL,'2026-02-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,506),
(521,NULL,'2026-02-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,584),
(522,NULL,'2026-02-05','Pembayaran Internet AN.&nbspEddy Santoso,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,598),
(523,NULL,'2026-02-05','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,569),
(524,NULL,'2026-02-05','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,542),
(525,NULL,'2026-02-05','Pembayaran Internet AN.&nbspNovita Wulandari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,613),
(526,NULL,'2026-02-06','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,508),
(527,NULL,'2026-02-06','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,586),
(528,NULL,'2026-02-06','Pembayaran Internet AN.&nbspAndri Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,618),
(529,NULL,'2026-02-06','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,579),
(530,NULL,'2026-02-06','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,575),
(531,NULL,'2026-02-06','Pembayaran Internet AN.&nbspYodania Putri Kinasih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,614),
(532,NULL,'2026-02-06','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,610),
(533,NULL,'2026-02-06','Pembayaran Internet AN.&nbspWinda Supriyatin,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,624),
(534,NULL,'2026-02-06','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,593),
(535,NULL,'2026-02-06','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,533),
(537,NULL,'2026-02-06','Pembayaran Internet AN.&nbspTeguh Andibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,625),
(538,NULL,'2026-02-06','Pembayaran Internet AN.&nbspAdi Buyu Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,621),
(539,NULL,'2026-02-07','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,541),
(540,NULL,'2026-02-07','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,558),
(541,NULL,'2026-02-07','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,554),
(542,NULL,'2026-02-07','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,591),
(543,NULL,'2026-02-07','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,552),
(544,NULL,'2026-02-07','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,528),
(545,NULL,'2026-02-07','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,560),
(546,NULL,'2026-02-08','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,511),
(547,NULL,'2026-02-08','Pembayaran Internet AN.&nbspOktavian Dwi Abriantara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,626),
(548,NULL,'2026-02-08','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,568),
(549,NULL,'2026-02-08','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,600),
(550,NULL,'2026-02-08','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,526),
(551,NULL,'2026-02-08','Pembayaran Internet AN.&nbspStefanus Rivaldo Nama Hada,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,622),
(552,NULL,'2026-02-08','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,556),
(553,NULL,'2026-02-08','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,567),
(554,NULL,'2026-02-08','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,603),
(555,NULL,'2026-02-08','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,553),
(556,NULL,'2026-02-09','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,525),
(557,NULL,'2026-02-09','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,539),
(558,NULL,'2026-02-09','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,582),
(559,NULL,'2026-02-09','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,519),
(560,NULL,'2026-02-09','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,493),
(561,NULL,'2026-02-09','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,543),
(562,NULL,'2026-02-09','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,590),
(563,NULL,'2026-02-09','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,518),
(564,NULL,'2026-02-09','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,576),
(565,NULL,'2026-02-09','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,555),
(566,NULL,'2026-02-09','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,589),
(567,NULL,'2026-02-09','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,609),
(568,NULL,'2026-02-09','Pembayaran Internet AN.&nbspMuhammad Nailul Faroh,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,615),
(569,NULL,'2026-02-09','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,504),
(570,NULL,'2026-02-10','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,513),
(571,NULL,'2026-02-10','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,540),
(572,NULL,'2026-02-10','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,516),
(573,NULL,'2026-02-10','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,517),
(574,NULL,'2026-02-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,505),
(575,NULL,'2026-02-10','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,595),
(576,NULL,'2026-02-10','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,527),
(577,NULL,'2026-02-10','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,599),
(578,NULL,'2026-02-10','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,515),
(579,NULL,'2026-02-10','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,549),
(580,NULL,'2026-02-10','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,578),
(581,NULL,'2026-02-10','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,524),
(582,NULL,'2026-02-10','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,548),
(583,NULL,'2026-02-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,545),
(584,NULL,'2026-02-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,522),
(585,NULL,'2026-02-10','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,537),
(586,NULL,'2026-02-10','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,608),
(587,NULL,'2026-02-10','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,497),
(588,NULL,'2026-02-10','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,530),
(589,NULL,'2026-02-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,499),
(590,NULL,'2026-02-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,531),
(591,NULL,'2026-02-10','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,498),
(592,NULL,'2026-02-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,573),
(593,NULL,'2026-02-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,570),
(594,NULL,'2026-02-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,592),
(595,NULL,'2026-02-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,544),
(596,NULL,'2026-02-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,557),
(597,NULL,'2026-02-11','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,546),
(598,NULL,'2026-02-11','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,571),
(599,NULL,'2026-02-11','Pembayaran Internet AN.&nbspYanuar Alfiantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,607),
(600,NULL,'2026-02-11','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,550),
(601,NULL,'2026-02-11','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,585),
(602,NULL,'2026-02-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,512),
(603,NULL,'2026-02-11','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,529),
(604,NULL,'2026-02-13','Pembayaran Internet AN.&nbspL Yosefine Lina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,628),
(605,NULL,'2026-02-13','Pembayaran Internet AN.&nbspWinda Charlina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,627),
(606,NULL,'2026-02-14','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,583),
(607,NULL,'2026-02-22','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,500),
(608,NULL,'2026-03-02','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,711),
(609,NULL,'2026-03-02','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,651),
(610,NULL,'2026-03-02','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,632),
(611,NULL,'2026-03-02','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,698),
(612,NULL,'2026-03-02','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,658),
(613,NULL,'2026-03-02','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,748),
(614,NULL,'2026-03-02','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,638),
(615,NULL,'2026-03-02','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,738),
(616,NULL,'2026-03-02','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,647),
(617,NULL,'2026-03-04','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,631),
(618,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,633),
(619,NULL,'2026-03-05','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,648),
(620,NULL,'2026-03-05','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,684),
(621,NULL,'2026-03-05','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,657),
(622,NULL,'2026-03-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,671),
(623,NULL,'2026-03-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius Wisnu Denpamungkas,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,701),
(624,NULL,'2026-03-05','Pembayaran Internet AN.&nbspCatur Pamungkas,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,644),
(625,NULL,'2026-03-05','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,661),
(626,NULL,'2026-03-05','Pembayaran Internet AN.&nbspTeguh Andibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,762),
(627,NULL,'2026-03-05','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,724),
(628,NULL,'2026-03-05','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,739),
(629,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,669),
(630,NULL,'2026-03-05','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,699),
(631,NULL,'2026-03-05','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,652),
(632,NULL,'2026-03-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,714),
(633,NULL,'2026-03-05','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,654),
(634,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,725),
(635,NULL,'2026-03-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,702),
(637,NULL,'2026-03-05','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,703),
(638,NULL,'2026-03-05','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,688),
(639,NULL,'2026-03-05','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,676),
(640,NULL,'2026-03-05','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,719),
(641,NULL,'2026-03-05','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,717),
(642,NULL,'2026-03-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,734),
(643,NULL,'2026-03-05','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,747),
(644,NULL,'2026-03-05','Pembayaran Internet AN.&nbspNovtri Sandera Putra Pamungkas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,753),
(645,NULL,'2026-03-05','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,709),
(646,NULL,'2026-03-05','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,660),
(647,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,731),
(648,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDeny Agung Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,756),
(649,NULL,'2026-03-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,643),
(650,NULL,'2026-03-05','Pembayaran Internet AN.&nbspYanuar Bagaskara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,645),
(651,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,683),
(652,NULL,'2026-03-05','Pembayaran Internet AN.&nbspAndri Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,755),
(653,NULL,'2026-03-05','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,715),
(654,NULL,'2026-03-05','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,741),
(655,NULL,'2026-03-05','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,695),
(656,NULL,'2026-03-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,721),
(657,NULL,'2026-03-05','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,733),
(658,NULL,'2026-03-05','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,689),
(659,NULL,'2026-03-06','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,732),
(660,NULL,'2026-03-06','Pembayaran Internet AN.&nbspNovita Wulandari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,750),
(661,NULL,'2026-03-06','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,740),
(662,NULL,'2026-03-06','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,691),
(663,NULL,'2026-03-06','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,743),
(664,NULL,'2026-03-06','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,716),
(665,NULL,'2026-03-06','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,696),
(666,NULL,'2026-03-06','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,670),
(667,NULL,'2026-03-06','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,679),
(668,NULL,'2026-03-06','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,672),
(669,NULL,'2026-03-06','Pembayaran Internet AN.&nbspWahyu Darmawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,749),
(670,NULL,'2026-03-06','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,745),
(671,NULL,'2026-03-07','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,722),
(672,NULL,'2026-03-07','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,641),
(673,NULL,'2026-03-07','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,678),
(674,NULL,'2026-03-07','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,730),
(675,NULL,'2026-03-07','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,706),
(676,NULL,'2026-03-07','Pembayaran Internet AN.&nbspNirwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,754),
(677,NULL,'2026-03-07','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,712),
(678,NULL,'2026-03-07','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,728),
(679,NULL,'2026-03-07','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,700),
(680,NULL,'2026-03-07','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,697),
(681,NULL,'2026-03-08','Pembayaran Internet AN.&nbspWinda Supriyatin,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,761),
(682,NULL,'2026-03-08','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,713),
(683,NULL,'2026-03-09','Pembayaran Internet AN.&nbspOktavian Dwi Abriantara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,763),
(684,NULL,'2026-03-09','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,693),
(685,NULL,'2026-03-09','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,742),
(686,NULL,'2026-03-09','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,704),
(687,NULL,'2026-03-09','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,705),
(688,NULL,'2026-03-09','Pembayaran Internet AN.&nbspRetno Setia Ningsih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,760),
(689,NULL,'2026-03-09','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,650),
(690,NULL,'2026-03-09','Pembayaran Internet AN.&nbspYodania Putri Kinasih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,751),
(691,NULL,'2026-03-09','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,653),
(692,NULL,'2026-03-09','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,635),
(693,NULL,'2026-03-09','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,746),
(694,NULL,'2026-03-09','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,677),
(695,NULL,'2026-03-09','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,634),
(696,NULL,'2026-03-10','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,690),
(697,NULL,'2026-03-10','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,665),
(698,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAdi Buyu Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,758),
(699,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,662),
(700,NULL,'2026-03-10','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,736),
(701,NULL,'2026-03-10','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,656),
(702,NULL,'2026-03-10','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,680),
(703,NULL,'2026-03-10','Pembayaran Internet AN.&nbspEdo Emerson,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,766),
(704,NULL,'2026-03-10','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,667),
(705,NULL,'2026-03-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,682),
(706,NULL,'2026-03-10','Pembayaran Internet AN.&nbspNuranisah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,640),
(707,NULL,'2026-03-10','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,726),
(708,NULL,'2026-03-10','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,663),
(709,NULL,'2026-03-10','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,727),
(710,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,686),
(711,NULL,'2026-03-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,642),
(712,NULL,'2026-03-10','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,664),
(713,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,710),
(714,NULL,'2026-03-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,668),
(715,NULL,'2026-03-10','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,673),
(716,NULL,'2026-03-10','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,655),
(717,NULL,'2026-03-10','Pembayaran Internet AN.&nbspStefanus Rivaldo Nama Hada,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,759),
(718,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,737),
(719,NULL,'2026-03-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,687),
(720,NULL,'2026-03-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,636),
(721,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,685),
(722,NULL,'2026-03-10','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,692),
(723,NULL,'2026-03-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,707),
(724,NULL,'2026-03-10','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,708),
(725,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,659),
(726,NULL,'2026-03-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,729),
(727,NULL,'2026-03-10','Pembayaran Internet AN.&nbspYanuar Alfiantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,744),
(728,NULL,'2026-03-10','Pembayaran Internet AN.&nbspMuhammad Nailul Faroh,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,752),
(729,NULL,'2026-03-10','Pembayaran Internet AN.&nbspWinda Charlina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,764),
(730,NULL,'2026-03-10','Pembayaran Internet AN.&nbspL Yosefine Lina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,765),
(731,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAgung Joko Santoso,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,767),
(732,NULL,'2026-03-10','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,630),
(733,NULL,'2026-03-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,694),
(734,NULL,'2026-03-11','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,666),
(735,NULL,'2026-03-11','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,723),
(736,NULL,'2026-03-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,649),
(737,NULL,'2026-03-11','Pembayaran Internet AN.&nbspAndi Dwi Tantaka,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,768),
(738,NULL,'2026-03-11','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,674),
(739,NULL,'2026-03-11','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,681),
(740,NULL,'2026-03-12','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,769),
(741,NULL,'2026-03-14','Pembayaran Internet AN.&nbspEddy Santoso,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,735),
(742,NULL,'2026-03-17','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,637),
(743,NULL,'2026-04-01','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,787),
(744,NULL,'2026-04-01','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,878),
(745,NULL,'2026-04-01','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,888),
(746,NULL,'2026-04-01','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,791),
(747,NULL,'2026-04-01','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,849),
(748,NULL,'2026-04-01','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,864),
(749,NULL,'2026-04-01','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,873),
(750,NULL,'2026-04-01','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,772),
(751,NULL,'2026-04-01','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,810),
(752,NULL,'2026-04-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,851),
(753,NULL,'2026-04-01','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,778),
(754,NULL,'2026-04-02','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,839),
(755,NULL,'2026-04-02','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,771),
(756,NULL,'2026-04-02','Pembayaran Internet AN.&nbspRajendra Deva Bramantya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,912),
(757,NULL,'2026-04-02','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,871),
(758,NULL,'2026-04-03','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,796),
(759,NULL,'2026-04-03','Pembayaran Internet AN.&nbspNovtri Sandera Putra Pamungkas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,893),
(760,NULL,'2026-04-04','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,798),
(761,NULL,'2026-04-05','Pembayaran Internet AN.&nbspBintang Boby Anggoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,913),
(762,NULL,'2026-04-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,783),
(763,NULL,'2026-04-05','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,773),
(764,NULL,'2026-04-05','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,856),
(765,NULL,'2026-04-05','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,770),
(766,NULL,'2026-04-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,874),
(767,NULL,'2026-04-05','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,800),
(768,NULL,'2026-04-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,811),
(769,NULL,'2026-04-05','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,868),
(770,NULL,'2026-04-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,861),
(771,NULL,'2026-04-05','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,835),
(772,NULL,'2026-04-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,842),
(773,NULL,'2026-04-05','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,843),
(774,NULL,'2026-04-05','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,813),
(775,NULL,'2026-04-05','Pembayaran Internet AN.&nbspNirwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,894),
(776,NULL,'2026-04-05','Pembayaran Internet AN.&nbspOktavian Dwi Abriantara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,903),
(777,NULL,'2026-04-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius Wisnu Denpamungkas,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,841),
(778,NULL,'2026-04-05','Pembayaran Internet AN.&nbspWahyu Darmawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,889),
(779,NULL,'2026-04-05','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,846),
(780,NULL,'2026-04-05','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,876),
(781,NULL,'2026-04-05','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,852),
(782,NULL,'2026-04-05','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,836),
(783,NULL,'2026-04-05','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,879),
(784,NULL,'2026-04-05','Pembayaran Internet AN.&nbspDodit Indarto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,910),
(785,NULL,'2026-04-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,854),
(786,NULL,'2026-04-05','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,828),
(787,NULL,'2026-04-05','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,881),
(788,NULL,'2026-04-05','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,857),
(789,NULL,'2026-04-05','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,870),
(790,NULL,'2026-04-05','Pembayaran Internet AN.&nbspNovita Wulandari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,890),
(791,NULL,'2026-04-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,809),
(792,NULL,'2026-04-06','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,797),
(793,NULL,'2026-04-06','Pembayaran Internet AN.&nbspTeguh Andibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,902),
(794,NULL,'2026-04-06','Pembayaran Internet AN.&nbspYoseph Khartiko Dwi Tandiono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,911),
(795,NULL,'2026-04-06','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,859),
(796,NULL,'2026-04-06','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,820),
(797,NULL,'2026-04-06','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,831),
(798,NULL,'2026-04-06','Pembayaran Internet AN.&nbspAdi Buyu Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,898),
(799,NULL,'2026-04-06','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,880),
(800,NULL,'2026-04-06','Pembayaran Internet AN.&nbspCatur Pamungkas,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,784),
(801,NULL,'2026-04-06','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,883),
(802,NULL,'2026-04-06','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,887),
(803,NULL,'2026-04-06','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,812),
(804,NULL,'2026-04-06','Pembayaran Internet AN.&nbspAndi Dwi Tantaka,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,908),
(805,NULL,'2026-04-06','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,840),
(806,NULL,'2026-04-06','Pembayaran Internet AN.&nbspSeptiana Eka Kurniawatie,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,914),
(807,NULL,'2026-04-06','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,803),
(808,NULL,'2026-04-06','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,862),
(809,NULL,'2026-04-07','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,792),
(810,NULL,'2026-04-07','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,794),
(811,NULL,'2026-04-07','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,824),
(812,NULL,'2026-04-07','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,865),
(813,NULL,'2026-04-08','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,790),
(814,NULL,'2026-04-08','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,793),
(815,NULL,'2026-04-08','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,845),
(816,NULL,'2026-04-08','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,802),
(817,NULL,'2026-04-08','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,872),
(818,NULL,'2026-04-08','Pembayaran Internet AN.&nbspYodania Putri Kinasih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,891),
(819,NULL,'2026-04-08','Pembayaran Internet AN.&nbspDeny Agung Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,896),
(820,NULL,'2026-04-08','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,818),
(821,NULL,'2026-04-08','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,885),
(822,NULL,'2026-04-08','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,775),
(823,NULL,'2026-04-08','Pembayaran Internet AN.&nbspYoseph Pacha Tantra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,915),
(824,NULL,'2026-04-08','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,853),
(825,NULL,'2026-04-09','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,834),
(826,NULL,'2026-04-09','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,832),
(827,NULL,'2026-04-09','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,801),
(828,NULL,'2026-04-09','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,844),
(829,NULL,'2026-04-09','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,855),
(830,NULL,'2026-04-09','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,816),
(831,NULL,'2026-04-09','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,882),
(832,NULL,'2026-04-09','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,833),
(833,NULL,'2026-04-09','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,867),
(834,NULL,'2026-04-09','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,788),
(835,NULL,'2026-04-09','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,805),
(836,NULL,'2026-04-09','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,819),
(837,NULL,'2026-04-10','Pembayaran Internet AN.&nbspRetno Setia Ningsih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,900),
(838,NULL,'2026-04-10','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,886),
(839,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,826),
(840,NULL,'2026-04-10','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,817),
(841,NULL,'2026-04-10','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,781),
(842,NULL,'2026-04-10','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,774),
(843,NULL,'2026-04-10','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,829),
(844,NULL,'2026-04-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,782),
(845,NULL,'2026-04-10','Pembayaran Internet AN.&nbspYanuar Alfiantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,884),
(846,NULL,'2026-04-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,847),
(847,NULL,'2026-04-10','Pembayaran Internet AN.&nbspNuranisah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,780),
(848,NULL,'2026-04-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,869),
(849,NULL,'2026-04-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,827),
(850,NULL,'2026-04-10','Pembayaran Internet AN.&nbspMuhammad Nailul Faroh,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,892),
(851,NULL,'2026-04-10','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,837),
(852,NULL,'2026-04-10','Pembayaran Internet AN.&nbspTonny Angga Nugroho,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,909),
(853,NULL,'2026-04-10','Pembayaran Internet AN.&nbspWinda Supriyatin,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,901),
(854,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,877),
(855,NULL,'2026-04-10','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,830),
(856,NULL,'2026-04-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,821),
(857,NULL,'2026-04-10','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,807),
(858,NULL,'2026-04-10','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,776),
(859,NULL,'2026-04-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,822),
(860,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,825),
(861,NULL,'2026-04-10','Pembayaran Internet AN.&nbspWinda Charlina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,904),
(862,NULL,'2026-04-10','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,838),
(863,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,850),
(864,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,799),
(865,NULL,'2026-04-10','Pembayaran Internet AN.&nbspStefanus Rivaldo Nama Hada,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,899),
(866,NULL,'2026-04-10','Pembayaran Internet AN.&nbspL Yosefine Lina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,905),
(867,NULL,'2026-04-10','Pembayaran Internet AN.&nbspAgung Joko Santoso,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,907),
(868,NULL,'2026-04-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,808),
(869,NULL,'2026-04-10','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,806),
(870,NULL,'2026-04-11','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,848),
(871,NULL,'2026-04-11','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,823),
(872,NULL,'2026-04-11','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,866),
(873,NULL,'2026-04-11','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,795),
(874,NULL,'2026-04-11','Pembayaran Internet AN.&nbspBagas Wibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,916),
(875,NULL,'2026-04-11','Pembayaran Internet AN.&nbspGaluh Rayindita A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,814),
(876,NULL,'2026-04-11','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,860),
(877,NULL,'2026-04-11','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,777),
(878,NULL,'2026-04-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,789),
(879,NULL,'2026-04-11','Pembayaran Internet AN.&nbspEddy Santoso,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,875),
(880,NULL,'2026-04-12','Pembayaran Internet AN.&nbspEdo Emerson,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,906),
(881,NULL,'2026-04-14','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,804),
(882,NULL,'2026-04-15','Pembayaran Internet AN.&nbsp,&nbspPaket&nbsp',0,NULL,NULL,NULL,0),
(883,NULL,'2026-04-15','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',1000,NULL,NULL,NULL,918),
(884,NULL,'2026-04-15','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',1000,NULL,NULL,NULL,919),
(885,NULL,'2026-04-15','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',1000,NULL,NULL,NULL,920),
(886,NULL,'2026-04-18','Konfirmasi Pembayaran Cash Invoice MAN2026040921',2000,NULL,NULL,NULL,921),
(887,NULL,'2026-04-18','Konfirmasi Pembayaran Cash Invoice MAN2026040922',100000,NULL,NULL,NULL,922),
(888,NULL,'2026-04-18','Konfirmasi Pembayaran Cash Invoice MAN2026040927',50000,NULL,NULL,NULL,927),
(889,NULL,'2026-04-18','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',100000,NULL,NULL,NULL,926),
(890,NULL,'2026-04-18','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',1000,NULL,NULL,NULL,925),
(891,NULL,'2026-04-20','Pembayaran Internet AN.&nbspRega Hendrik Kuncoro Adi,&nbspPaket&nbsp15 Mb',100000,NULL,NULL,NULL,930),
(892,NULL,'2026-04-23','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,863),
(893,NULL,'2026-04-23','Konfirmasi Pembayaran Cash Invoice MAN2026040931',100000,NULL,NULL,NULL,931),
(894,NULL,'2026-04-23','Pembayaran Internet AN.&nbspLilik Rochmawan,&nbspPaket&nbspuji coba',1000,NULL,NULL,NULL,928),
(895,NULL,'2026-04-24','Pembayaran Internet AN.&nbspHayu Laksitasari,&nbspPaket&nbsp20 Mb',100000,NULL,NULL,NULL,933),
(896,NULL,'2026-04-30','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,441),
(897,NULL,'2026-05-01','Pembayaran Internet AN.&nbspSeptiana Eka Kurniawatie,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1076),
(898,NULL,'2026-05-01','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1012),
(899,NULL,'2026-05-01','Pembayaran Internet AN.&nbspWinda Hatmanti N,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,937),
(900,NULL,'2026-05-01','Pembayaran Internet AN.&nbspDyah Ayu Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1051),
(901,NULL,'2026-05-01','Pembayaran Internet AN.&nbspFausta Nataya Prabasari T.,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1036),
(902,NULL,'2026-05-01','Pembayaran Internet AN.&nbspAgustin Wahyuningtyas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,951),
(903,NULL,'2026-05-01','Pembayaran Internet AN.&nbspAngga Budi Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1014),
(904,NULL,'2026-05-01','Pembayaran Internet AN.&nbspBintang Boby Anggoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1075),
(905,NULL,'2026-05-01','Pembayaran Internet AN.&nbspAndhika Praditya B,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,987),
(906,NULL,'2026-05-01','Pembayaran Internet AN.&nbspRafik Dwi Pangestu,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,943),
(907,NULL,'2026-05-01','Pembayaran Internet AN.&nbspBangkit Nusantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1001),
(908,NULL,'2026-05-01','Pembayaran Internet AN.&nbspIbnudin Malik,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,962),
(909,NULL,'2026-05-01','Pembayaran Internet AN.&nbspHeru Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1031),
(910,NULL,'2026-05-02','Pembayaran Internet AN.&nbspNovtri Sandera Putra Pamungkas,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1056),
(911,NULL,'2026-05-02','Pembayaran Internet AN.&nbspRosyid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,955),
(912,NULL,'2026-05-02','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1034),
(913,NULL,'2026-05-02','Pembayaran Internet AN.&nbspEko Setyawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,999),
(914,NULL,'2026-05-02','Pembayaran Internet AN.&nbspSigit Purwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,960),
(915,NULL,'2026-05-02','Pembayaran Internet AN.&nbspKiki Widiastiti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,980),
(916,NULL,'2026-05-03','Pembayaran Internet AN.&nbspOktavian Dwi Abriantara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1065),
(917,NULL,'2026-05-03','Pembayaran Internet AN.&nbspFransiska Pangalissani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,994),
(918,NULL,'2026-05-03','Pembayaran Internet AN.&nbspKintan Fitrianingsih,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,995),
(919,NULL,'2026-05-04','Pembayaran Internet AN.&nbspMaria Parama Tungga Devi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1027),
(920,NULL,'2026-05-04','Pembayaran Internet AN.&nbspHeri Setiawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,974),
(921,NULL,'2026-05-04','Pembayaran Internet AN.&nbspAdi Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1041),
(922,NULL,'2026-05-04','Pembayaran Internet AN.&nbspWhiesa Daniswara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,952),
(923,NULL,'2026-05-04','Pembayaran Internet AN.&nbspCryzella Dwi Jayanti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1030),
(924,NULL,'2026-05-04','Pembayaran Internet AN.&nbspDikik Supriyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1044),
(925,NULL,'2026-05-05','Pembayaran Internet AN.&nbspDika Suryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,938),
(926,NULL,'2026-05-05','Pembayaran Internet AN.&nbspBonifasius Aprivilius Wisnu Denpamungkas,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1004),
(927,NULL,'2026-05-05','Pembayaran Internet AN.&nbspDeri Anggri Yarosah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,973),
(928,NULL,'2026-05-05','Pembayaran Internet AN.&nbspCatur Pamungkas,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,949),
(929,NULL,'2026-05-05','Pembayaran Internet AN.&nbspParjoko,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1046),
(930,NULL,'2026-05-05','Pembayaran Internet AN.&nbspGita Puspita Aisyah,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,991),
(931,NULL,'2026-05-05','Pembayaran Internet AN.&nbspChrisna Barlianto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,975),
(932,NULL,'2026-05-05','Pembayaran Internet AN.&nbspNirwanto,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1057),
(933,NULL,'2026-05-05','Pembayaran Internet AN.&nbspWahyu Rohadi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,956),
(934,NULL,'2026-05-05','Pembayaran Internet AN.&nbspYoseph Khartiko Dwi Tandiono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1073),
(935,NULL,'2026-05-05','Pembayaran Internet AN.&nbspHamdani Citra P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,941),
(936,NULL,'2026-05-05','Pembayaran Internet AN.&nbspIta Fitriana P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,961),
(937,NULL,'2026-05-05','Pembayaran Internet AN.&nbspAgung Susilo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1009),
(938,NULL,'2026-05-05','Pembayaran Internet AN.&nbspFelicianus Adi N,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,992),
(939,NULL,'2026-05-05','Pembayaran Internet AN.&nbspDestania Aurelia N R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,976),
(940,NULL,'2026-05-05','Pembayaran Internet AN.&nbspAgung Prasetyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1040),
(941,NULL,'2026-05-05','Pembayaran Internet AN.&nbspHayu Laksitasari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1082),
(942,NULL,'2026-05-05','Pembayaran Internet AN.&nbspNurman Sahid,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1050),
(943,NULL,'2026-05-05','Pembayaran Internet AN.&nbspDiki Darma Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,986),
(944,NULL,'2026-05-05','Pembayaran Internet AN.&nbspYusa Adi Cahyono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,981),
(945,NULL,'2026-05-05','Pembayaran Internet AN.&nbspBimo Dwi Hartantyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1037),
(946,NULL,'2026-05-05','Pembayaran Internet AN.&nbspFebrina Widya H,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1015),
(947,NULL,'2026-05-05','Pembayaran Internet AN.&nbspKosa Vandira,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,948),
(948,NULL,'2026-05-05','Pembayaran Internet AN.&nbspRega Hendrik Kuncoro Adi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1080),
(949,NULL,'2026-05-05','Pembayaran Internet AN.&nbspKristian Tawang Pinayungan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1043),
(950,NULL,'2026-05-05','Pembayaran Internet AN.&nbspHanggoro Wahyu S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,993),
(951,NULL,'2026-05-05','Pembayaran Internet AN.&nbspSurono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1003),
(952,NULL,'2026-05-05','Pembayaran Internet AN.&nbspSangidi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1045),
(953,NULL,'2026-05-05','Pembayaran Internet AN.&nbspEgie Apriani Putri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1025),
(954,NULL,'2026-05-05','Pembayaran Internet AN.&nbspOca Murti Kartiwa,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1042),
(955,NULL,'2026-05-05','Pembayaran Internet AN.&nbspAdi Buyu Prakoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1060),
(956,NULL,'2026-05-05','Pembayaran Internet AN.&nbspNovita Wulandari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1053),
(957,NULL,'2026-05-05','Pembayaran Internet AN.&nbspLabib Akbar Falahi Bunayya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1024),
(958,NULL,'2026-05-05','Pembayaran Internet AN.&nbspWahyu Darmawan,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1052),
(959,NULL,'2026-05-05','Pembayaran Internet AN.&nbspI Nyoman Agus Hari Sudama Giri,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1005),
(960,NULL,'2026-05-05','Pembayaran Internet AN.&nbspGalih Apriliyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,970),
(961,NULL,'2026-05-06','Pembayaran Internet AN.&nbspTeguh Andibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1064),
(962,NULL,'2026-05-06','Pembayaran Internet AN.&nbspYanuar Pondo K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1000),
(963,NULL,'2026-05-06','Pembayaran Internet AN.&nbspJanu Endriyatno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,998),
(964,NULL,'2026-05-06','Pembayaran Internet AN.&nbspMuh. Affandi Arrum K,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1033),
(965,NULL,'2026-05-06','Pembayaran Internet AN.&nbspRina Noviyani,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,936),
(966,NULL,'2026-05-06','Pembayaran Internet AN.&nbspJontang Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,967),
(967,NULL,'2026-05-06','Pembayaran Internet AN.&nbspDodit Indarto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1072),
(968,NULL,'2026-05-06','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1017),
(969,NULL,'2026-05-06','Pembayaran Internet AN.&nbspLanny Latifah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,979),
(970,NULL,'2026-05-06','Pembayaran Internet AN.&nbspBilal Erlangga Mukti,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,977),
(971,NULL,'2026-05-06','Pembayaran Internet AN.&nbspDaryanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1019),
(972,NULL,'2026-05-06','Pembayaran Internet AN.&nbspWinda Supriyatin,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1084),
(973,NULL,'2026-05-07','Pembayaran Internet AN.&nbspDafit Saputra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1028),
(974,NULL,'2026-05-07','Pembayaran Internet AN.&nbspPutra Christian S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,958),
(975,NULL,'2026-05-07','Pembayaran Internet AN.&nbspYasinta Prastuti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,983),
(976,NULL,'2026-05-07','Pembayaran Internet AN.&nbspAri Tamtomo,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,1006),
(977,NULL,'2026-05-07','Pembayaran Internet AN.&nbspRetno Setia Ningsih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1062),
(978,NULL,'2026-05-08','Pembayaran Internet AN.&nbspStefanus Rivaldo Nama Hada,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1061),
(979,NULL,'2026-05-08','Pembayaran Internet AN.&nbspSarno,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1016),
(980,NULL,'2026-05-08','Pembayaran Internet AN.&nbspAnggoro Adhi P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1020),
(981,NULL,'2026-05-08','Pembayaran Internet AN.&nbspAndi Dwi Tantaka,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1070),
(982,NULL,'2026-05-09','Pembayaran Internet AN.&nbspSutiyo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1018),
(983,NULL,'2026-05-09','Pembayaran Internet AN.&nbspSeptiana Dwi Cahyani,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,969),
(984,NULL,'2026-05-09','Pembayaran Internet AN.&nbspBagas Wibowo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1078),
(985,NULL,'2026-05-09','Pembayaran Internet AN.&nbspTonny Angga Nugroho,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1071),
(986,NULL,'2026-05-09','Pembayaran Internet AN.&nbspLestari,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,965),
(987,NULL,'2026-05-09','Pembayaran Internet AN.&nbspYoseph Pacha Tantra,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1077),
(988,NULL,'2026-05-09','Pembayaran Internet AN.&nbspAuriga Maulana K,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,982),
(989,NULL,'2026-05-09','Pembayaran Internet AN.&nbspDhanny Wahyu Pratama,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1049),
(990,NULL,'2026-05-09','Pembayaran Internet AN.&nbspEka Yunan Tabah F,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,954),
(991,NULL,'2026-05-10','Pembayaran Internet AN.&nbspMuhammad Sulistyo P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,947),
(992,NULL,'2026-05-10','Pembayaran Internet AN.&nbspArie Setyaga Handika,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,1002),
(993,NULL,'2026-05-10','Pembayaran Internet AN.&nbspDeny Agung Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1058),
(994,NULL,'2026-05-10','Pembayaran Internet AN.&nbspAlif Ulil Amri,&nbspPaket&nbsp10 Mb Khusus',75000,NULL,NULL,NULL,935),
(995,NULL,'2026-05-10','Pembayaran Internet AN.&nbspMuhammad Allfredo,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1007),
(996,NULL,'2026-05-10','Pembayaran Internet AN.&nbspJari Safi&#039;i,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1008),
(997,NULL,'2026-05-10','Pembayaran Internet AN.&nbspJodi Setiawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,964),
(998,NULL,'2026-05-10','Pembayaran Internet AN.&nbspAnindityo Laksono P,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,963),
(999,NULL,'2026-05-10','Pembayaran Internet AN.&nbspYodania Putri Kinasih,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1054),
(1000,NULL,'2026-05-10','Pembayaran Internet AN.&nbspEndri Santoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1048),
(1001,NULL,'2026-05-10','Pembayaran Internet AN.&nbspAldias Alif Syaifullah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,989),
(1002,NULL,'2026-05-10','Pembayaran Internet AN.&nbspAdy Laksono,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,966),
(1003,NULL,'2026-05-10','Pembayaran Internet AN.&nbspAnjas Andika P,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1013),
(1004,NULL,'2026-05-10','Pembayaran Internet AN.&nbspDidik Kurniawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,957),
(1005,NULL,'2026-05-10','Pembayaran Internet AN.&nbspSri Lestari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1022),
(1006,NULL,'2026-05-10','Pembayaran Internet AN.&nbspKurniasari Novi A,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,985),
(1007,NULL,'2026-05-10','Pembayaran Internet AN.&nbspFriddwa Rima H,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,996),
(1008,NULL,'2026-05-10','Pembayaran Internet AN.&nbspKaleb Federick S,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1032),
(1009,NULL,'2026-05-10','Pembayaran Internet AN.&nbspYosep Adi Prastiyo,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,972),
(1010,NULL,'2026-05-10','Pembayaran Internet AN.&nbspDwi Anggoro,&nbspPaket&nbsp20 Mb',175000,NULL,NULL,NULL,946),
(1011,NULL,'2026-05-10','Pembayaran Internet AN.&nbspIchsan Widyansah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,990),
(1012,NULL,'2026-05-10','Pembayaran Internet AN.&nbspYohanes Putra Perdana,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,939),
(1013,NULL,'2026-05-10','Pembayaran Internet AN.&nbspFifi Indah Sari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1035),
(1014,NULL,'2026-05-10','Pembayaran Internet AN.&nbspFryda Bella Pertiwi,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1039),
(1015,NULL,'2026-05-10','Pembayaran Internet AN.&nbspSamino,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,984),
(1016,NULL,'2026-05-10','Pembayaran Internet AN.&nbspMaryoso,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,971),
(1017,NULL,'2026-05-10','Pembayaran Internet AN.&nbspMuhammad Nailul Faroh,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1055),
(1018,NULL,'2026-05-10','Pembayaran Internet AN.&nbspWinda Charlina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1066),
(1019,NULL,'2026-05-10','Pembayaran Internet AN.&nbspElyas Sulistyawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1083),
(1020,NULL,'2026-05-10','Pembayaran Internet AN.&nbspNur Wanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1011),
(1021,NULL,'2026-05-10','Pembayaran Internet AN.&nbspArta Maria Sinaga,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1010),
(1022,NULL,'2026-05-10','Pembayaran Internet AN.&nbspFlorentina Ayu Damayanti,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1081),
(1023,NULL,'2026-05-10','Pembayaran Internet AN.&nbspCornelius Nuga Adit Isawara,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,942),
(1024,NULL,'2026-05-10','Pembayaran Internet AN.&nbspPutri Satiti M,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,959),
(1025,NULL,'2026-05-10','Pembayaran Internet AN.&nbspDevid Irawan,&nbspPaket&nbsp10 Mb',100000,NULL,NULL,NULL,997),
(1026,NULL,'2026-05-10','Pembayaran Internet AN.&nbspPopy Puspitasari,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1029),
(1027,NULL,'2026-05-11','Pembayaran Internet AN.&nbspRajendra Deva Bramantya,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1074),
(1028,NULL,'2026-05-11','Pembayaran Internet AN.&nbspMuhammad Thoad ,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,953),
(1029,NULL,'2026-05-11','Pembayaran Internet AN.&nbspLastri,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,968),
(1030,NULL,'2026-05-11','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,940),
(1031,NULL,'2026-05-11','Pembayaran Internet AN.&nbspYanuar Alfiantoro,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1047),
(1032,NULL,'2026-05-11','Pembayaran Internet AN.&nbspAjis Wiyanto,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,988),
(1033,NULL,'2026-05-11','Pembayaran Internet AN.&nbspAgung Joko Santoso,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,1069),
(1034,NULL,'2026-05-11','Pembayaran Internet AN.&nbspL Yosefine Lina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1067),
(1035,NULL,'2026-05-13','Pembayaran Internet AN.&nbspNuranisah,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,945),
(1036,NULL,'2026-05-13','Pembayaran Internet AN.&nbspTheron Naldo P.P,&nbspPaket&nbsp30 Mb',250000,NULL,NULL,NULL,1023),
(1037,NULL,'2026-05-26','Konfirmasi Pembayaran Cash Invoice MAN2026040932',10000,NULL,NULL,NULL,932),
(1040,NULL,'2026-05-26','Pembayaran Internet AN.&nbspWinda Charlina,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1094),
(1041,NULL,'2026-05-26','Pembayaran Internet AN.&nbspBayu Tantaka R,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1091),
(1042,NULL,'2026-05-26','Pembayaran Internet AN.&nbspElyas Sulistyawan,&nbspPaket&nbsp15 Mb',150000,NULL,NULL,NULL,1095),
(1043,NULL,'2026-05-28','Pembayaran Internet AN. Lilik Rochmawan, Paket uji coba',1000,NULL,NULL,NULL,1086),
(1044,NULL,'2026-05-28','Pembayaran Internet AN. Lilik Rochmawan, Paket uji coba',1000,NULL,NULL,NULL,1096),
(1046,NULL,'2026-06-01','Pembayaran Internet AN. Bangkit Nusantoro, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1163),
(1047,NULL,'2026-06-01','Pembayaran Internet AN. Rafik Dwi Pangestu, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1105),
(1048,NULL,'2026-06-01','Pembayaran Internet AN.&nbspPratama Bayu R,&nbspPaket&nbspHome 1 - 15 Mbps',150000,NULL,NULL,NULL,1174),
(1049,NULL,'2026-06-01','Pembayaran Internet AN. Galuh Rayindita A, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1140),
(1050,NULL,'2026-06-01','Pembayaran Internet AN. Retno Setia Ningsih, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1224),
(1051,NULL,'2026-06-01','Pembayaran Internet AN. Heru Setiawan, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1193),
(1052,NULL,'2026-06-01','Pembayaran Internet AN. Prassetya Adi Saputra, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,338),
(1053,NULL,'2026-06-01','Pembayaran Internet AN. Deri Anggri Yarosah, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1135),
(1054,NULL,'2026-06-01','Pembayaran Internet AN. Septiana Eka Kurniawatie, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1238),
(1055,NULL,'2026-06-02','Pembayaran Internet AN. Rosyid, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1117),
(1056,NULL,'2026-06-02','Pembayaran Internet AN. Agustin Wahyuningtyas, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1113),
(1057,NULL,'2026-06-02','Pembayaran Internet AN. Maria Parama Tungga Devi, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1189),
(1058,NULL,'2026-06-02','Pembayaran Internet AN. Novtri Sandera Putra Pamungkas, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1218),
(1059,NULL,'2026-06-02','Pembayaran Internet AN. Ibnudin Malik, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1124),
(1060,NULL,'2026-06-02','Pembayaran Internet AN. M. Turjumani, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1247),
(1061,NULL,'2026-06-02','Pembayaran Internet AN. Jodi Setiawan, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1126),
(1062,NULL,'2026-06-02','Pembayaran Internet AN. Arie Setyaga Handika, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1164),
(1063,NULL,'2026-06-03','Pembayaran Internet AN. Rega Hendrik Kuncoro Adi, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1242),
(1064,NULL,'2026-06-03','Pembayaran Internet AN.&nbspDeni Dwi Wicaksono,&nbspPaket&nbspHome 1 - 15 Mbps',150000,NULL,NULL,NULL,1196),
(1065,NULL,'2026-06-03','Pembayaran Internet AN. Bonifasius Aprivilius W.D, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1166),
(1066,NULL,'2026-06-03','Pembayaran Internet AN. Surya Ahkli Pranoto, Paket Home 2 - 20 Mbps',100000,NULL,NULL,NULL,1248),
(1067,NULL,'2026-06-03','Pembayaran Internet AN. Bintang Boby Anggoro, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1237),
(1068,NULL,'2026-06-03','Pembayaran Internet AN. Kintan Fitrianingsih, Paket Ceria - 10 Mb',100000,NULL,NULL,NULL,1157),
(1069,NULL,'2026-06-04','Pembayaran Internet AN. Angga Budi Prakoso, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1176),
(1070,NULL,'2026-06-04','Pembayaran Internet AN. Dyah Ayu Puspitasari, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1213),
(1071,NULL,'2026-06-04','Pembayaran Internet AN. Winda Hatmanti N, Paket Ceria - 10 Mb',100000,NULL,NULL,NULL,1099),
(1072,NULL,'2026-06-05','Pembayaran Internet AN. Heri Setiawan, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1136),
(1073,NULL,'2026-06-05','Pembayaran Internet AN. Dika Suryanto, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1100),
(1074,NULL,'2026-06-05','Pembayaran Internet AN. Gita Puspita Aisyah, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1153),
(1075,NULL,'2026-06-05','Pembayaran Internet AN. Daryanto, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1181),
(1076,NULL,'2026-06-05','Pembayaran Internet AN. Catur Pamungkas, Paket Ceria A - 10 Mb',75000,NULL,NULL,NULL,1111),
(1077,NULL,'2026-06-05','Pembayaran Internet AN. Labib Akbar Falahi Bunayya, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1186),
(1078,NULL,'2026-06-05','Pembayaran Internet AN. Felicianus Adi N, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1154),
(1079,NULL,'2026-06-05','Pembayaran Internet AN. Dafit Saputra, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1190),
(1080,NULL,'2026-06-05','Pembayaran Internet AN. Ita Fitriana P, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1123),
(1081,NULL,'2026-06-05','Pembayaran Internet AN. Lilik Rochmawan, Paket uji coba',1000,NULL,NULL,NULL,1241),
(1082,NULL,'2026-06-05','Pembayaran Internet AN. Fransiska Pangalissani, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1156),
(1083,NULL,'2026-06-05','Pembayaran Internet AN. Anindityo Laksono P, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1125),
(1084,NULL,'2026-06-05','Pembayaran Internet AN. Yoseph Khartiko Dwi Tandiono, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1235),
(1085,NULL,'2026-06-05','Pembayaran Internet AN. Andhika Praditya B, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1149),
(1086,NULL,'2026-06-05','Pembayaran Internet AN. Agung Susilo, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1171),
(1087,NULL,'2026-06-05','Pembayaran Internet AN. Kristian Tawang Pinayungan, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1205),
(1088,NULL,'2026-06-05','Pembayaran Internet AN. I Nyoman Agus Hari Sudama Giri, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1167),
(1089,NULL,'2026-06-05','Pembayaran Internet AN. Cryzella Dwi Jayanti, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1192),
(1090,NULL,'2026-06-05','Pembayaran Internet AN. Chrisna Barlianto, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1137),
(1091,NULL,'2026-06-05','Pembayaran Internet AN. Parjoko, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1208),
(1092,NULL,'2026-06-05','Pembayaran Internet AN. Rina Noviyani, Paket Ceria - 10 Mb',100000,NULL,NULL,NULL,1098),
(1093,NULL,'2026-06-05','Pembayaran Internet AN. Lanny Latifah, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1141),
(1094,NULL,'2026-06-05','Pembayaran Internet AN. Bilal Erlangga Mukti, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1139),
(1095,NULL,'2026-06-05','Pembayaran Internet AN. Oktavian Dwi Abriantara, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1227),
(1096,NULL,'2026-06-05','Pembayaran Internet AN. Oca Murti Kartiwa, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1204),
(1097,NULL,'2026-06-05','Pembayaran Internet AN. Diki Darma Saputra, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1148),
(1098,NULL,'2026-06-05','Pembayaran Internet AN. Fausta Nataya Prabasari T., Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1198),
(1099,NULL,'2026-06-05','Pembayaran Internet AN.&nbspWidya Sarasmi,&nbspPaket&nbspHome 2 - 20 Mbps',175000,NULL,NULL,NULL,1179),
(1100,NULL,'2026-06-05','Pembayaran Internet AN.&nbspDodit Indarto,&nbspPaket&nbspHome 1 - 15 Mbps',150000,NULL,NULL,NULL,1234),
(1101,NULL,'2026-06-05','Pembayaran Internet AN. Teguh Andibowo, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1226),
(1102,NULL,'2026-06-05','Pembayaran Internet AN. Febrina Widya H, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1177),
(1103,NULL,'2026-06-05','Pembayaran Internet AN. Ari Tamtomo, Paket Ceria - 10 Mb',100000,NULL,NULL,NULL,1168),
(1104,NULL,'2026-06-05','Pembayaran Internet AN. Kosa Vandira, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1110),
(1105,NULL,'2026-06-05','Pembayaran Internet AN. Nurman Sahid, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1212),
(1106,NULL,'2026-06-05','Pembayaran Internet AN. Sarno, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1178),
(1107,NULL,'2026-06-05','Pembayaran Internet AN. Bimo Dwi Hartantyo, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1199),
(1108,NULL,'2026-06-06','Pembayaran Internet AN. Wahyu Darmawan, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1214),
(1109,NULL,'2026-06-06','Pembayaran Internet AN. Kiki Widiastiti, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1142),
(1110,NULL,'2026-06-06','Pembayaran Internet AN. Alif Ulil Amri, Paket Ceria A - 10 Mb',75000,NULL,NULL,NULL,1097),
(1111,NULL,'2026-06-06','Pembayaran Internet AN. Yusa Adi Cahyono, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1143),
(1112,NULL,'2026-06-06','Pembayaran Internet AN. Surya Ahkli Pranoto, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1249),
(1113,NULL,'2026-06-06','Pembayaran Internet AN. Fifi Indah Sari, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1197),
(1114,NULL,'2026-06-06','Pembayaran Internet AN. Surono, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1165),
(1115,NULL,'2026-06-06','Pembayaran Internet AN. Wahyu Rohadi, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1118),
(1116,NULL,'2026-06-06','Pembayaran Internet AN. Nirwanto, Paket Home 2 - 20 Mbps',175000,NULL,NULL,NULL,1219),
(1117,NULL,'2026-06-06','Pembayaran Internet AN. Lina Susilowati, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1250),
(1118,NULL,'2026-06-06','Pembayaran Internet AN. Dikik Supriyanto, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1206),
(1119,NULL,'2026-06-06','Pembayaran Internet AN. Auriga Maulana K, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1144),
(1120,NULL,'2026-06-06','Pembayaran Internet AN. Florentina Ayu Damayanti, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1243),
(1121,NULL,'2026-06-06','Pembayaran Internet AN. Novita Wulandari, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1215),
(1122,NULL,'2026-06-06','Pembayaran Internet AN.&nbspWilli Hartanto,&nbspPaket&nbspHome 1 - 15 Mbps',150000,NULL,NULL,NULL,1102),
(1123,NULL,'2026-06-06','Pembayaran Internet AN. Yasinta Prastuti, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1145),
(1124,NULL,'2026-06-06','Pembayaran Internet AN. Egie Apriani Putri, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1187),
(1125,NULL,'2026-06-07','Pembayaran Internet AN. Whiesa Daniswara, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1114),
(1126,NULL,'2026-06-07','Pembayaran Internet AN. Putra Christian S, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1120),
(1127,NULL,'2026-06-07','Pembayaran Internet AN. Jontang Setiawan, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1129),
(1128,NULL,'2026-06-08','Pembayaran Internet AN. Janu Endriyatno, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1160),
(1129,NULL,'2026-06-08','Pembayaran Internet AN. Eka Yunan Tabah F, Paket Home 1 - 15 Mbps',150000,NULL,NULL,NULL,1116);
/*!40000 ALTER TABLE `tb_kas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_kas2`
--

DROP TABLE IF EXISTS `tb_kas2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_kas2` (
  `id_kas` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) DEFAULT NULL,
  `tgl_kas` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `penerimaan` int(11) DEFAULT NULL,
  `pengeluaran` int(11) DEFAULT NULL,
  `jenis_kas` varchar(15) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_tagihan` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_kas2`
--

LOCK TABLES `tb_kas2` WRITE;
/*!40000 ALTER TABLE `tb_kas2` DISABLE KEYS */;
INSERT INTO `tb_kas2` VALUES
(1,NULL,'2026-04-15','Pembayaran Internet AN.&nbsp,&nbspPaket&nbsp',NULL,0,NULL,NULL,0,0);
/*!40000 ALTER TABLE `tb_kas2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paket`
--

DROP TABLE IF EXISTS `tb_paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_paket` (
  `id_paket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `ppn` decimal(10,2) DEFAULT NULL,
  `id_pmikrotik` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paket`
--

LOCK TABLES `tb_paket` WRITE;
/*!40000 ALTER TABLE `tb_paket` DISABLE KEYS */;
INSERT INTO `tb_paket` VALUES
(25,'Home 1 - 15 Mbps',150000,0.00,'*5'),
(26,'Ceria - 10 Mb',100000,0.00,'*4'),
(27,'Home 2 - 20 Mbps',175000,0.00,'*6'),
(29,'Ceria A - 10 Mb',75000,0.00,'*7'),
(30,'Home 3 - 30 Mb',250000,0.00,'*8'),
(31,'uji coba',1000,0.00,'*0');
/*!40000 ALTER TABLE `tb_paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pelanggan`
--

DROP TABLE IF EXISTS `tb_pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelanggan` varchar(30) NOT NULL,
  `nik` varchar(18) DEFAULT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `paket` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `tgl_pemasangan` datetime NOT NULL,
  `jatuh_tempo` datetime NOT NULL DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL,
  `id_perangkat` varchar(11) DEFAULT NULL,
  `odp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pelanggan`
--

LOCK TABLES `tb_pelanggan` WRITE;
/*!40000 ALTER TABLE `tb_pelanggan` DISABLE KEYS */;
INSERT INTO `tb_pelanggan` VALUES
(2,'WNG031001','3302070106990003','Alif Ulil Amri','Perum Taman Harmoni Blok R16','085747114915',29,'','2025-08-10 23:59:00','2026-07-10 06:40:57','','NULL',2),
(3,'WNG031003','','Rina Noviyani','Perum Taman Harmoni Blok R10','08995219353',26,'','2025-08-10 23:59:00','2026-07-10 11:09:27','','',2),
(4,'WNG031004','','Winda Hatmanti N','Perum Taman Harmoni R21','085725646575',26,'','2025-08-10 23:59:00','2026-07-10 19:16:46','','',2),
(5,'WNG031005','','Dika Suryanto','Perum Taman Harmoni Blok C25','081249522117',25,'','2025-08-10 23:59:00','2026-07-10 08:21:01','','NULL',6),
(6,'WNG031006','3372042611960003','Yohanes Putra Perdana','Perum Taman Harmoni Blok C26','085781642968',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',6),
(7,'WNG031007','','Willi Hartanto','Perum Taman Harmoni Blok C27','085741593588',25,'','2025-08-10 23:59:00','2026-07-10 20:55:29','','',6),
(8,'WNG031008','','Hamdani Citra P','Perum Taman Harmoni Blok Q6b','085642818634',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',4),
(9,'WNG031009','','Cornelius Nuga Adit Isawara','Perum Taman Harmoni Blok R23','081578552122',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',2),
(10,'WNG0310010','','Rafik Dwi Pangestu','Perum Taman Harmoni Blok T11','0895421693006',25,'','2025-08-10 23:59:00','2026-07-10 08:48:02','','',3),
(11,'WNG0310011','','Yudhatama Pualam S','Perum Taman Harmoni C9','087866137839',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',6),
(12,'WNG0310012','3316145910930001','Nuranisah','Perum Taman Harmoni Blok D6','089632488900',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','1',9),
(13,'WNG0310013','','Dwi Anggoro','Perum Taman Harmoni Blok C23','085642239752',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',6),
(14,'WNG0310014','','Muhammad Sulistyo P','Perum Taman Harmoni Blok Q27','089680799047',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',4),
(15,'WNG0310015','','Kosa Vandira','Perum Taman Harmoni Blok P8','089501551646',25,'','2025-08-10 23:59:00','2026-07-10 18:23:35','','',6),
(16,'WNG0310016','3372053007400001','Catur Pamungkas','Perum Taman Harmoni blok S13','085725354631',29,'','2025-08-10 23:59:00','2026-07-10 08:30:33','','NULL',2),
(17,'WNG0310017','','Yanuar Bagaskara','Perum Taman Harmoni Blok Q9','089630969542	',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',4),
(20,'WNG0310020','','Agustin Wahyuningtyas','Perum Taman Harmoni Blok K17','082322221733',27,'','2025-08-10 23:59:00','2026-07-10 11:46:42','','',11),
(21,'WNG0310021','','Whiesa Daniswara','Perum Taman Harmoni Blok E16','085333042255',25,'','2025-08-10 23:59:00','2026-07-10 11:07:13','','',9),
(22,'WNG0310022','','Muhammad Thoad ','Perum Taman Harmoni Blok D18','08156572844',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',9),
(23,'WNG0310023','','Eka Yunan Tabah F','Perum Taman Harmoni Blok E10\r\n','085290567843',25,'','2025-08-10 23:59:00','2026-07-10 11:03:55','','',9),
(24,'WNG0310024','','Rosyid','Perum Taman Harmoni Blok Q32','085728222355',25,'','2025-08-10 23:59:00','2026-07-10 11:14:33','','NULL',4),
(25,'WNG0310025','','Wahyu Rohadi','Perum Taman Harmoni Blok O24','082220779826',27,'','2025-08-10 23:59:00','2026-07-10 14:54:55','','NULL',6),
(26,'WNG0310026','','Didik Kurniawan','Perum Taman Harmoni Blok R4','085649365680',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',2),
(27,'WNG0310027','','Putra Christian S','Perum Taman Harmoni Blok C17','08988480256	',25,'','2025-08-10 23:59:00','2026-07-10 16:41:10','','',6),
(28,'WNG0310028','','Putri Satiti M','Perum Taman Harmoni Blok I2','088221444895',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',9),
(29,'WNG0310029','','Sigit Purwanto','Perum Taman Harmoni Blok D12','081328020137',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',9),
(30,'WNG0310030','','Ita Fitriana P','Perum taman Harmoni Blok S14','089618725721',25,'','2025-08-10 23:59:00','2026-07-10 08:34:52','','',3),
(31,'WNG0310031','','Ibnudin Malik','Perum Taman Harmoni Blok L16','088801967903',25,'','2025-08-10 23:59:00','2026-07-10 17:17:04','','NULL',9),
(32,'WNG0310032','','Anindityo Laksono P','Perum Taman Harmoni Blok D10','082313885252',27,'','2025-08-10 23:59:00','2026-07-10 08:53:10','','',9),
(33,'WNG0310033','','Jodi Setiawan','Perum Taman Harmoni Blok I19','081946048458',25,'','2025-08-10 23:59:00','2026-07-10 19:32:09','','',10),
(34,'WNG0310034','','Lestari','Perum Taman Harmoni Blok H6','089514998843',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',10),
(35,'WNG0310035','','Ady Laksono','Perum Taman Harmoni Blok O21','082245493377',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',6),
(36,'WNG0310036','','Jontang Setiawan','Perum Taman Harmoni Blok N4','082324119181',25,'','2025-08-10 23:59:00','2026-07-10 19:11:58','','',6),
(37,'WNG0310037','','Lastri','Perum Taman Harmoni Blok U4','085727526156',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',3),
(38,'WNG0310038','3310175409970004','Septiana Dwi Cahyani','Perum Taman Harmoni Blok D23','085640389044',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',19),
(39,'WNG0310039','','Galih Apriliyanto','Perum Taman Harmoni Blok E31','085647736662',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',9),
(40,'WNG0310040','1807021202640004','Maryoso','Perum Taman Harmoni Blok T3','089508415692',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','3',3),
(41,'WNG0310041','','Yosep Adi Prastiyo','Perum Taman Harmoni Blok K2','082325000955',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',11),
(42,'WNG0310042','','Deri Anggri Yarosah','Taman Harmoni Blok E29','085382086553',27,'','2025-08-10 23:59:00','2026-07-10 16:38:49','','',9),
(43,'WNG0310043','','Heri Setiawan','Perum Taman Harmoni Blok Q25','085329101678',27,'','2025-08-10 23:59:00','2026-07-10 08:07:11','','',4),
(44,'WNG0310044','3172020709790001','Chrisna Barlianto','Perum Taman Harmoni Blok Q7','08813878588',27,'','2025-08-10 23:59:00','2026-07-10 10:01:30','','NULL',18),
(45,'WNG0310045','','Destania Aurelia N R','Perum Taman Harmoni Blok T12','085711876933',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',3),
(46,'WNG0310046','','Bilal Erlangga Mukti','Perum Taman Harmoni Blok P5','085233925743',27,'','2025-08-10 23:59:00','2026-07-10 11:32:00','','NULL',6),
(47,'WNG0310047','','Galuh Rayindita A','Perum Taman Harmoni Blok E17','085867391815',25,'','2025-08-10 23:59:00','2026-07-10 09:19:09','','',9),
(49,'WNG0310049','3318154811960001','Lanny Latifah','Perum Taman Harmoni Blok G10','085786726241',25,'','2025-08-10 23:59:00','2026-07-10 11:10:18','','NULL',18),
(50,'WNG0310050','','Kiki Widiastiti','Perum Taman Harmoni Blok Q23','089635708455',25,'','2025-08-10 23:59:00','2026-07-10 06:12:58','','',4),
(51,'WNG0310051','','Yusa Adi Cahyono','Perum Taman Harmoni Blok K12','085800242888',25,'','2025-08-10 23:59:00','2026-07-10 08:50:48','','',11),
(52,'WNG0310052','','Auriga Maulana K','Perum Taman Harmoni Blok Q13','089508978598',25,'','2025-08-10 23:59:00','2026-07-10 18:01:54','','',4),
(53,'WNG0310053','','Yasinta Prastuti','Perum Taman Harmoni Blok B5','087824136721',25,'','2025-08-10 23:59:00','2026-07-10 21:56:07','','',6),
(54,'WNG0310054','','Samino','Perum Taman Harmoni Blok S15','081229771813',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',3),
(55,'WNG0310055','','Kurniasari Novi A','Perum Taman Harmoni Blok K1','087786386408',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',11),
(56,'WNG0310056','','Diki Darma Saputra','Perum Taman Harmoni Blok T13','081914507337',25,'','2025-08-10 23:59:00','2026-07-10 12:57:45','','',3),
(57,'WNG0310057','3372051905930001','Andhika Praditya B','Perum Taman Harmoni Blok S17','085601141021',25,'','2025-08-10 23:59:00','2026-07-10 09:19:04','','NULL',3),
(58,'WNG0310058','','Ajis Wiyanto','Perum Taman Harmoni Blok Q4','085647072479',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',4),
(59,'WNG0310059','3372052311960009','Aldias Alif Syaifullah','Perum Taman Harmoni Blok C28','085726990774',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',6),
(60,'WNG0310060','','Ichsan Widyansah','Perum Taman Harmoni Blok Q8','085742922490',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',4),
(61,'WNG0310061','9110146704070001','Gita Puspita Aisyah','Perum Taman Harmoni Blok R26','082197813610',27,'','2025-08-10 23:59:00','2026-07-10 08:24:39','','NULL',2),
(62,'WNG0310062','','Felicianus Adi N','Perum Taman Harmoni Blok G8','08995433132',25,'','2025-08-10 23:59:00','2026-07-10 08:31:44','','NULL',18),
(63,'WNG0310063','','Hanggoro Wahyu S','Perum Taman Harmoni Blok S18','085728684005',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',3),
(64,'WNG0310064','','Fransiska Pangalissani','Perum Taman Harmoni Blok G9','082241984085',25,'','2025-08-10 23:59:00','2026-07-10 08:40:26','','NULL',18),
(65,'WNG0310065','','Kintan Fitrianingsih','Perum Taman Harmoni Blok S5','0895341870429',26,'','2025-08-10 23:59:00','2026-07-10 20:53:06','','NULL',2),
(66,'WNG0310066','','Friddwa Rima H','Perum Taman Harmoni Blok S4','082241208804',26,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',2),
(67,'WNG0310067','','Devid Irawan','Perum Taman Harmoni Blok R19','082138137606',26,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',2),
(68,'WNG0310068','','Janu Endriyatno','Perum Taman Harmoni Blok G19','085728122246',25,'','2025-08-10 23:59:00','2026-07-10 00:43:19','','',9),
(69,'WNG0310069','','Eko Setyawan','Perum Taman Harmoni Blok R18','082226533371',26,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',2),
(70,'WNG0310070','','Yanuar Pondo K','Perum Taman Harmoni Blok C14','085606516682',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',6),
(71,'WNG0310071','3315082005950001','Bangkit Nusantoro','Perum Taman Harmoni Blok E1','085155110464',25,'','2025-08-10 23:59:00','2026-07-10 08:47:25','','NULL',9),
(72,'WNG0310072','3577023008950002','Arie Setyaga Handika','Perum Taman Harmoni Blok T4','081249043883',27,'','2025-08-10 23:59:00','2026-07-10 19:32:47','','NULL',3),
(73,'WNG0310073','3313131812790001','Surono','Mojorejo RT 02','088983639843',25,'','2025-08-10 23:59:00','2026-07-10 14:46:10','','NULL',11),
(74,'WNG0310074','3372051404930001','Bonifasius Aprivilius W.D','Perum Taman Harmoni Blok U7','082137304636',25,'','2025-08-10 23:59:00','2026-07-10 10:56:56','','NULL',3),
(75,'WNG0310075','51021025089700001','I Nyoman Agus Hari Sudama Giri','Perum Taman Harmoni Blok R32','081238343121',27,'','2025-08-10 23:59:00','2026-07-10 09:26:11','','NULL',2),
(76,'WNG0310076','','Ari Tamtomo','Perum Taman Harmoni Blok R30','0895365365665',26,'','2025-08-10 23:59:00','2026-07-10 18:07:48','','',2),
(77,'WNG0310077','3323182101990001','Muhammad Allfredo','Perum Taman Harmoni Blok E32','088225316530',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',9),
(78,'WNG0310078','3316012201870001','Jari Safi&#039;i','Perum Taman Harmoni Blok M18','085700087515',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',8),
(79,'WNG0310079','','Agung Susilo','Perum Taman Harmoni Blok O7','083866282846',25,'','2025-08-10 23:59:00','2026-07-10 09:19:49','','',6),
(80,'WNG0310080','','Arta Maria Sinaga','Perum Taman Harmoni Blok G2','088229773035',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',9),
(81,'WNG0310081','3307046611980002','Nur Wanti','Perum Taman Harmoni Blok Q17','08995355036',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',4),
(82,'WNG0310082','','Pratama Bayu R','Perum Taman Harmoni Blok M17','085186810254',25,'','2025-08-10 23:59:00','2026-07-10 09:14:45','','NULL',8),
(83,'WNG0310083','','Anjas Andika P','Perum Taman Harmoni Blok Q2','0882008137860',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',4),
(84,'WNG0310084','3309121110919003','Angga Budi Prakoso','Perum Taman Harmoni Blok M10','082241181322',25,'','2025-08-10 23:59:00','2026-07-10 09:16:41','','NULL',8),
(85,'WNG0310085','3307095902870003','Febrina Widya H','Perum Taman Harmoni Blok Q7','085225610714',25,'','2025-08-10 23:59:00','2026-07-10 16:56:21','','NULL',4),
(86,'WNG0310086','3313130604880005','Sarno','Mojorejo RT 1','082133823664',25,'','2025-08-10 23:59:00','2026-07-10 19:53:50','-7.503621, 110.852727','NULL',17),
(87,'WNG0310087','3372057010920007','Widya Sarasmi','Perum Taman Harmoni Blok S9','08999362074',27,'','2025-08-10 23:59:00','2026-07-10 13:40:47','','NULL',5),
(88,'WNG0310088','','Sutiyo','Perum Taman Harmoni Blok C10','085601545790',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',6),
(89,'WNG0310089','','Daryanto','Perum Taman Harmoni Blok O8','089505868386',25,'','2025-08-10 23:59:00','2026-07-10 08:29:50','','',7),
(90,'WNG0310090','','Anggoro Adhi P','Perum Taman Harmoni Blok T20','089695956695',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',3),
(91,'WNG0310091','','Nurhayati','Perum Taman Harmoni Blok L11','081355005758',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','',8),
(92,'WNG0310092','3314145202910002','Sri Lestari','Perum T6aman Harmoni Blok T6','085329244609',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',3),
(93,'WNG0310093','','Theron Naldo P.P','Perum Taman Harmoni Blok S8','0882005296229',30,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',5),
(94,'WNG0310094','3313092406950002','Labib Akbar Falahi Bunayya','Perum Taman Harmoni Blok H13','089522951565',25,'','2025-08-10 23:59:00','2026-07-10 08:31:04','','NULL',10),
(95,'WNG0310095','','Egie Apriani Putri','Perum Taman Harmoni Blok C16','085742400091',25,'','2025-08-10 23:59:00','2026-07-10 23:15:06','','',7),
(96,'WNG0310096','3521032402850002','Bayu Tantaka R','Perum taman Harmoni Blok K9','081217874643',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',11),
(97,'WNG0310097','','Maria Parama Tungga Devi','Perum Taman Harmoni Blok M7','085647039477',25,'','2025-08-10 23:59:00','2026-07-10 12:58:27','','NULL',8),
(98,'WNG0310098','3312010111940001','Dafit Saputra','Perum Taman Harmoni Blok D16','081809053732',25,'','2025-08-10 23:59:00','2026-07-10 08:31:50','','NULL',8),
(99,'WNG0310099','3515186011830004','Popy Puspitasari','Perum Taman Harmoni Blok E34','085783214693',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',9),
(100,'WNG03100100','','Cryzella Dwi Jayanti','Perum Taman Harmoni Blok C29','087821196435',27,'','2025-08-10 23:59:00','2026-07-10 09:52:40','','',7),
(101,'WNG03100101','3372052404960005','Heru Setiawan','Perum Taman Harmoni Blok M9','0895359044126',25,'','2025-08-10 23:59:00','2026-07-10 11:25:17','','NULL',8),
(102,'WNG03100102','3313010202980002','Kaleb Federick S','Perum Taman Harmoni Blok E8','088232073394',25,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',10),
(104,'WNG03100104','3372040304050006','Muh. Affandi Arrum K','Perum Taman Harmoni Blok N6','089649187785',27,'','2025-08-10 23:59:00','2026-06-10 00:00:00','','NULL',7),
(105,'WNG03100105','3372011212960002','Deni Dwi Wicaksono','Perum Taman Harmoni Blok Q11','0882003205100',25,'','2025-08-10 23:59:00','2026-07-10 08:57:09','','NULL',4),
(106,'WNG03100106','3313136104990003','Fifi Indah Sari','Mojorejo RT 2, Jeruk Sawit, Gondangrejo, Karanganyar','088221095812',25,'','2025-08-10 23:59:00','2026-07-10 13:05:31','-7.503807, 110.855430','NULL',13),
(107,'WNG03100107','3372055509970001','Fausta Nataya Prabasari T.','Perum Taman Harmoni Blok U3','082122127548',27,'','2025-08-10 23:59:00','2026-07-10 12:59:54','','NULL',5),
(108,'WNG03100108','3372032007980002','Bimo Dwi Hartantyo','Perum Taman Harmoni Blok S6','087823573968',25,'','2025-08-10 23:59:00','2026-07-10 23:28:02','','NULL',5),
(109,'WNG03100109','3310190610860002','Prassetya Adi Saputra','Perum Taman Harmoni Blok N15','081327241349',25,'','2025-10-10 23:59:00','2026-07-10 13:50:02','','NULL',7),
(110,'WNG03100110','3301105006970001','Fryda Bella Pertiwi','Perum Taman Harmoni Blok D27','082276199649',25,'','2025-10-01 13:10:00','2026-06-10 00:00:00','','NULL',7),
(112,'WNG03100112','3313132006990002','Agung Prasetyo','Perum Taman Harmoni Blok N3','0895324381033',25,'','2025-10-03 12:56:00','2026-06-10 00:00:00','','NULL',7),
(113,'WNG03100113','3372051302070007','Adi Kurniawan','Perum Taman Harmoni Blok I14','089510313884',25,'','2025-10-03 13:26:00','2026-06-10 00:00:00','','NULL',10),
(114,'WNG03100114','3372040302970003','Oca Murti Kartiwa','Perum Taman Harmoni Blok R24','081575789373',25,'','2025-10-08 12:39:00','2026-07-10 12:53:11','','',2),
(115,'WNG03100115','3501030407970001','Kristian Tawang Pinayungan','Perum Taman Harmoni Blok D1','0895337779613',25,'','2025-11-25 02:45:00','2026-07-10 09:25:04','','',19),
(117,'WNG03100116','3313130306940002','Dikik Supriyanto','Mojorejo RT01, Jeruk Sawit, Gondangrejo, Karanganyar','085602921293',25,'','2025-11-25 02:49:00','2026-07-10 17:48:48','','',16),
(119,'WNG03100119','3314121104960002','Sangidi','Perum Taman Harmoni Blok M16','085876034520',25,'','2025-11-25 02:53:00','2026-06-10 00:00:00','','',19),
(120,'WNG03100120','3309111212869007','Parjoko','Mojorejo, RT 01, Jeruk Sawit, Gondangrejo, Karanganyar','081237470475',25,'','2025-11-25 02:55:00','2026-07-10 10:53:35','','',17),
(121,'WNG03100121','','Yanuar Alfiantoro','Perum Taman Harmoni Blok C6','085728924567',25,'','2025-11-25 02:58:00','2026-06-10 00:00:00','','2',7),
(122,'WNG03100122','3312012704870003','Endri Santoso','Perum Taman Harmoni Blok O9','081909826377',25,'','2025-12-04 12:06:00','2026-06-10 00:00:00','','2',7),
(123,'WNG03100123','3372051612980005','Dhanny Wahyu Pratama','Perum Taman Harmoni Blok C7','087783158610',25,'','2025-12-07 12:00:00','2026-06-10 00:00:00','','2',7),
(124,'WNG03100124','3313111208810002','Nurman Sahid','Perum Taman Harmoni Blok B25','081393811004',25,'','2025-12-08 04:26:00','2026-07-10 19:20:45','','2',7),
(125,'WNG03100125','3301225302950002','Dyah Ayu Puspitasari','Perum Gardenia Orenji Blok B6','08988260144',25,'','2025-12-12 08:56:00','2026-07-10 10:33:50','','2',20),
(126,'WNG03100126','3372041208920001','Wahyu Darmawan','Perum Taman Harmoni Blok O16','08970009769',27,'','2025-12-14 02:13:00','2026-07-10 00:35:43','','2',7),
(127,'WNG03100127','3313136606010002','Novita Wulandari','Mojorejo RT01 RW06 Jeruksawit Gondangrejo Karanganyar','085725839706',25,'','2025-12-19 16:08:00','2026-07-10 19:56:24','','2',16),
(128,'WNG03100128','3312144806990001','Yodania Putri Kinasih','Perun Taman Harmoni Blok S21','085161118699',25,'','2025-12-20 17:02:00','2026-06-10 00:00:00','','2',2),
(129,'WNG03100129','3317140409930001','Muhammad Nailul Faroh','Perum Taman Harmoni Blok D4','081229342543',25,'','2025-12-24 07:41:00','2026-06-10 00:00:00','','2',19),
(130,'WNG03100130','3372050311020006','Novtri Sandera Putra Pamungkas','Perum Taman Harmoni Blok O20','081249113682',27,'','2025-12-26 17:55:00','2026-07-10 15:17:04','','2',7),
(131,'WNG03100131','3372042109850001','Nirwanto','Perum Taman Harmoni Blok O14','082137686685',27,'','2025-12-27 17:04:00','2026-07-10 15:08:39','','2',7),
(133,'WNG03100133','3372051406690001','Deny Agung Setiawan','Perum Taman Harmoni Blok J8','081391611341',25,'','2026-01-04 11:22:00','2026-06-10 00:00:00','','2',11),
(134,'WNG03100134','3372051410940009','Hermawan Nur Ashari','Perum Taman Harmoni Blok P1','081393657383',25,'','2026-01-07 16:10:00','2026-06-10 00:00:00','','2',7),
(135,'WNG03100135','3520021301960001','Adi Buyu Prakoso','Perum Taman Harmoni Blok O12','082225525447',25,'','2026-01-07 16:47:00','2026-06-10 00:00:00','','2',7),
(136,'WNG03100136','5306182612000001','Stefanus Rivaldo Nama Hada','Perum Taman Harmoni H2','081327347975',25,'','2026-01-09 07:47:00','2026-06-10 00:00:00','','2',21),
(137,'WNG03100137','3314026501940002','Retno Setia Ningsih','Perum Taman Harmoni Blok O1','088239469297',25,'','2026-01-27 17:04:00','2026-07-10 10:27:36','','5',7),
(138,'WNG03100138','330609560200001','Winda Supriyatin','Perum Taman Harmoni Blok S19','085643546415',25,'','2026-01-28 15:59:00','2026-06-10 00:00:00','','2',5),
(139,'WNG03100139','3312201404860001','Teguh Andibowo','Perum Taman Harmoni Blok Q14','082225399365',25,'','2026-02-06 19:18:00','2026-07-10 16:26:21','','2',4),
(140,'WNG03100140','3372050510970003','Oktavian Dwi Abriantara','Perum Taman Harmoni Blok I16','087888700744',25,'','2026-02-08 08:36:00','2026-07-10 12:18:22','','2',10),
(141,'WNG03100141','3372035902930001','Winda Charlina','Perum Taman Harmoni Blok Q19','085889854038',25,'','2026-02-13 17:27:00','2026-06-10 00:00:00','','2',4),
(142,'WNG03100142','3372035909660001','L Yosefine Lina','Perum Taman Harmoni Blok U8','085704419147',25,'','2026-02-13 18:14:00','2026-06-10 00:00:00','','2',3),
(143,'WNG03100143','3578200904680003','Edo Emerson','Perum Taman Harmoni Blok K6','081334393784',25,'','2026-02-20 17:07:00','2026-06-10 00:00:00','','2',11),
(144,'WNG03100144','3372051606810001','Agung Joko Santoso','Perum Taman Harmoni Blok K14 ','085291474374',30,'','2026-03-05 09:03:00','2026-06-10 00:00:00','','2',11),
(145,'WNG03100145','3521030703900003','Andi Dwi Tantaka','Perum Taman Harmoni Blok N1','08976675670',25,'','2026-03-11 09:18:00','2026-06-10 00:00:00','','2',22),
(146,'WNG03100146','3372040402920002','Tonny Angga Nugroho','Perum Taman Harmoni Blok R10','085642004367',25,'','2026-03-17 16:52:00','2026-06-10 00:00:00','','2',2),
(147,'WNG03100147','3372040201950024','Dodit Indarto','Toko Gwen Laundry','08999362074',25,'','2026-03-31 14:36:00','2026-07-10 13:40:55','','2',19),
(148,'WNG03100148','3372042403940003','Yoseph Khartiko Dwi Tandiono','Perum Taman Harmoni Blok I18','08985252588',25,'','2026-03-31 17:26:00','2026-07-10 08:55:15','','2',10),
(149,'WNG03100149','3372040606020005','Rajendra Deva Bramantya','Perum Taman Harmoni Blok B24','088216277083',25,'','2026-04-02 17:12:00','2026-06-10 00:00:00','','5',22),
(150,'WNG03100150','3372042105970001','Bintang Boby Anggoro','Perum Taman Harmoni Blok J7','08998218625',25,'','2026-04-05 08:24:00','2026-07-10 20:52:16','','2',11),
(151,'WNG03100151','3372045009960001','Septiana Eka Kurniawatie','Perum Taman Harmoni Blok H15','085803745976',25,'','2026-04-06 19:50:00','2026-07-10 19:27:25','','2',21),
(152,'WNG03100152','3372041604870002','Yoseph Pacha Tantra','Perum Taman Harmoni Blok B14','085647044202',25,'','2026-04-08 16:34:00','2026-06-10 00:00:00','','2',22),
(153,'WNG03100153','3314020806990001','Bagas Wibowo','Perum Taman Harmoni Blok C2','08818219999',25,'','2026-04-11 07:50:00','2026-06-10 00:00:00','','2',22),
(154,'WNG03100154','','Lilik Rochmawan','Perum Taman Harmoni Blok R28','082327588785',31,'','2026-04-15 07:56:00','2026-08-10 08:37:34','','1',2),
(155,'WNG03100155','3313130212010002','Rega Hendrik Kuncoro Adi','Mojorejo Rt 1 Rw6 Jeruk Sawit Gondangrejo Karanganyar','088980623681',25,'','2026-04-20 17:53:00','2026-07-10 07:04:32','','2',15),
(156,'WNG03100156','3372044901990002','Florentina Ayu Damayanti','Perum Taman Harmonk Blok Q5','085732350385',25,'','2026-04-23 17:43:00','2026-07-10 19:48:58','','2',4),
(157,'WNG03100157','337203572900001','Hayu Laksitasari','Perum Taman Harmoni Blok L7','085700090355',27,'','2026-04-24 17:26:00','2026-06-10 00:00:00','','2',19),
(158,'WNG03100158','3372042003900004','Elyas Sulistyawan','Toko Hing Taman Harmoni','085889854038',25,'','2026-04-27 07:53:00','2026-06-10 00:00:00','','2',22),
(159,'WNG03100159','337081907920061','Siswandi','Perum Taman Harmoni Blok Q34','083866040910',25,'','2026-05-17 15:49:00','2026-06-10 00:00:00','','2',23),
(160,'WNG03100160','3275042909720031','M. Turjumani','Perum Taman Harmoni Blok A7','081999982595',25,'','2026-06-02 18:04:00','2026-07-10 18:27:50','','2',22),
(161,'WNG03100161','3372031611970001','Surya Ahkli Pranoto','Perum Taman Harmoni Blok H9','085339387106',27,'','2026-06-03 17:30:00','2026-07-10 12:18:13','','',10),
(162,'WNG03100162','3521035104920002','Lina Susilowati','Perum Taman Harmoni Blok D5','085693344911',25,'','2026-06-06 16:36:00','2026-07-10 17:10:54','','2',19);
/*!40000 ALTER TABLE `tb_pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perangkat`
--

DROP TABLE IF EXISTS `tb_perangkat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_perangkat` (
  `id_perangkat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perangkat` text NOT NULL,
  PRIMARY KEY (`id_perangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perangkat`
--

LOCK TABLES `tb_perangkat` WRITE;
/*!40000 ALTER TABLE `tb_perangkat` DISABLE KEYS */;
INSERT INTO `tb_perangkat` VALUES
(1,'GM220'),
(2,'ZTE F609'),
(3,'ZTE F663'),
(4,'ZTE F460'),
(5,'ZTE F477');
/*!40000 ALTER TABLE `tb_perangkat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_profile`
--

DROP TABLE IF EXISTS `tb_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_profile` (
  `id_profile` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `bendahara` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ktu` varchar(255) NOT NULL,
  `nip_ktu` varchar(30) NOT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_profile`
--

LOCK TABLES `tb_profile` WRITE;
/*!40000 ALTER TABLE `tb_profile` DISABLE KEYS */;
INSERT INTO `tb_profile` VALUES
(1,'TAGIHAN INTERNET INDOTEL','Perum Taman Harmoni Blok R28 Mojorejo Jeruk Sawit Gondangrejo Karanganyar','021.090939','www.sekolah.com','Jakarta','Bejo Santoso','1968890993933434','Untitled-1.png','ABDUL MUIS','343434343434');
/*!40000 ALTER TABLE `tb_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tagihan`
--

DROP TABLE IF EXISTS `tb_tagihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tagihan` (
  `id_tagihan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `bulan_tahun` varchar(30) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `status_bayar` int(11) DEFAULT NULL,
  `no_invoice` varchar(100) DEFAULT NULL,
  `blokir_status` int(11) DEFAULT NULL,
  `terkirim` enum('belum','terkirim') NOT NULL,
  `waktu_bayar` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `manual_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `bea_pemasangan` bigint(20) NOT NULL DEFAULT 0,
  `jasa_troubleshooting` bigint(20) NOT NULL DEFAULT 0,
  `lain_lain` bigint(20) NOT NULL DEFAULT 0,
  `item_tagihan` varchar(100) DEFAULT NULL,
  `jatuh_tempo` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tagihan`)
) ENGINE=InnoDB AUTO_INCREMENT=1251 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tagihan`
--

LOCK TABLES `tb_tagihan` WRITE;
/*!40000 ALTER TABLE `tb_tagihan` DISABLE KEYS */;
INSERT INTO `tb_tagihan` VALUES
(3,3,'092025',100000,100000,'2025-09-05',1,'00014.BLR.MST.',0,'terkirim','2025-09-05 08:36:06',2,0,0,0,0,NULL,NULL),
(4,4,'092025',100000,100000,'2025-09-05',1,'00001.BLR.MST.',0,'terkirim','2025-09-05 08:31:54',2,0,0,0,0,NULL,NULL),
(5,5,'092025',150000,150000,'2025-09-05',1,'00002.BLR.MST.',0,'terkirim','2025-09-05 08:33:14',2,0,0,0,0,NULL,NULL),
(6,6,'092025',150000,150000,'2025-09-10',1,'00091.BLR.MST.',0,'terkirim','2025-09-10 18:32:33',2,0,0,0,0,NULL,NULL),
(7,7,'092025',150000,150000,'2025-09-11',1,'00097.BLR.MST.',0,'terkirim','2025-09-11 20:45:34',2,0,0,0,0,NULL,NULL),
(8,8,'092025',150000,150000,'2025-09-12',1,'00102.BLR.MST.',0,'terkirim','2025-09-12 10:24:59',2,0,0,0,0,NULL,NULL),
(9,9,'092025',150000,150000,'2025-09-10',1,'00090.BLR.MST.',0,'terkirim','2025-09-10 18:17:40',2,0,0,0,0,NULL,NULL),
(10,10,'092025',150000,150000,'2025-09-05',1,'00003.BLR.MST.',0,'belum','2025-09-05 08:33:25',2,0,0,0,0,NULL,NULL),
(11,11,'092025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(13,13,'092025',175000,175000,'2025-09-09',1,'00072.BLR.MST.',0,'terkirim','2025-09-09 15:17:11',2,0,0,0,0,NULL,NULL),
(14,14,'092025',150000,150000,'2025-09-10',1,'00084.BLR.MST.',0,'terkirim','2025-09-10 10:16:40',2,0,0,0,0,NULL,NULL),
(15,15,'092025',150000,150000,'2025-09-05',1,'00021.BLR.MST.',0,'terkirim','2025-09-05 08:51:59',2,0,0,0,0,NULL,NULL),
(17,17,'092025',150000,150000,'2025-09-05',1,'00029.BLR.MST.',0,'terkirim','2025-09-05 11:20:19',2,0,0,0,0,NULL,NULL),
(18,18,'092025',150000,150000,'2025-09-10',1,'00077.BLR.MST.',0,'terkirim','2025-09-10 08:26:05',2,0,0,0,0,NULL,NULL),
(19,19,'092025',100000,100000,'2025-09-05',1,'00005.BLR.MST.',0,'belum','2025-09-05 08:33:51',2,0,0,0,0,NULL,NULL),
(20,20,'092025',175000,175000,'2025-09-05',1,'00004.BLR.MST.',0,'belum','2025-09-05 08:33:36',2,0,0,0,0,NULL,NULL),
(21,21,'092025',150000,150000,'2025-09-09',1,'00070.BLR.MST.',0,'terkirim','2025-09-09 06:11:37',2,0,0,0,0,NULL,NULL),
(22,22,'092025',150000,150000,'2025-09-14',1,'00106.BLR.MST.',0,'terkirim','2025-09-14 06:18:15',2,0,0,0,0,NULL,NULL),
(23,23,'092025',150000,150000,'2025-09-10',1,'00076.BLR.MST.',0,'terkirim','2025-09-10 08:25:24',2,0,0,0,0,NULL,NULL),
(24,24,'092025',150000,150000,'2025-09-05',1,'00006.BLR.MST.',0,'belum','2025-09-05 08:34:00',2,0,0,0,0,NULL,NULL),
(25,25,'092025',175000,175000,'2025-09-05',1,'00025.BLR.MST.',0,'terkirim','2025-09-05 09:21:35',232,0,0,0,0,NULL,NULL),
(26,26,'092025',150000,150000,'2025-09-10',1,'00083.BLR.MST.',0,'terkirim','2025-09-10 10:16:21',2,0,0,0,0,NULL,NULL),
(27,27,'092025',150000,150000,'2025-09-05',1,'00016.BLR.MST.',0,'belum','2025-09-05 08:37:12',2,0,0,0,0,NULL,NULL),
(28,28,'092025',150000,150000,'2025-09-07',1,'00056.BLR.MST.',0,'terkirim','2025-09-07 15:56:55',2,0,0,0,0,NULL,NULL),
(29,29,'092025',175000,175000,'2025-09-08',1,'00061.BLR.MST.',0,'terkirim','2025-09-08 08:25:51',2,0,0,0,0,NULL,NULL),
(30,30,'092025',150000,150000,'2025-09-06',1,'00039.BLR.MST.',0,'terkirim','2025-09-06 07:16:06',2,0,0,0,0,NULL,NULL),
(31,31,'092025',150000,150000,'2025-09-05',1,'00007.BLR.MST.',0,'belum','2025-09-05 08:34:16',2,0,0,0,0,NULL,NULL),
(32,32,'092025',175000,175000,'2025-09-10',1,'00087.BLR.MST.',0,'terkirim','2025-09-10 15:56:21',2,0,0,0,0,NULL,NULL),
(33,33,'092025',150000,150000,'2025-09-10',1,'00082.BLR.MST.',0,'terkirim','2025-09-10 09:13:50',2,0,0,0,0,NULL,NULL),
(34,34,'092025',175000,175000,'2025-09-07',1,'00050.BLR.MST.',0,'terkirim','2025-09-07 08:01:44',2,0,0,0,0,NULL,NULL),
(35,35,'092025',150000,150000,'2025-09-08',1,'00068.BLR.MST.',0,'terkirim','2025-09-08 21:55:14',2,0,0,0,0,NULL,NULL),
(36,36,'092025',150000,150000,'2025-09-07',1,'00058.BLR.MST.',0,'terkirim','2025-09-07 20:13:52',2,0,0,0,0,NULL,NULL),
(37,37,'092025',150000,150000,'2025-09-12',1,'00104.BLR.MST.',0,'terkirim','2025-09-12 19:01:45',2,0,0,0,0,NULL,NULL),
(38,38,'092025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(39,39,'092025',150000,150000,'2025-09-10',1,'00085.BLR.MST.',0,'terkirim','2025-09-10 13:04:48',2,0,0,0,0,NULL,NULL),
(40,40,'092025',175000,175000,'2025-09-05',1,'00008.BLR.MST.',0,'belum','2025-09-05 08:34:27',2,0,0,0,0,NULL,NULL),
(41,41,'092025',175000,175000,'2025-09-11',1,'00096.BLR.MST.',0,'terkirim','2025-09-11 10:34:56',2,0,0,0,0,NULL,NULL),
(42,42,'092025',175000,175000,'2025-09-05',1,'00020.BLR.MST.',0,'terkirim','2025-09-05 08:51:41',2,0,0,0,0,NULL,NULL),
(43,43,'092025',175000,175000,'2025-09-05',1,'00026.BLR.MST.',0,'terkirim','2025-09-05 09:28:51',2,0,0,0,0,NULL,NULL),
(44,44,'092025',175000,175000,'2025-09-05',1,'00032.BLR.MST.',0,'terkirim','2025-09-05 11:22:54',2,0,0,0,0,NULL,NULL),
(45,45,'092025',150000,150000,'2025-09-06',1,'00042.BLR.MST.',0,'terkirim','2025-09-06 11:56:27',2,0,0,0,0,NULL,NULL),
(47,47,'092025',150000,150000,'2025-09-19',1,'00107.BLR.MST.',0,'terkirim','2025-09-19 20:25:18',2,0,0,0,0,NULL,NULL),
(48,48,'092025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(49,49,'092025',150000,150000,'2025-09-07',1,'00057.BLR.MST.',0,'terkirim','2025-09-07 17:38:00',2,0,0,0,0,NULL,NULL),
(50,50,'092025',150000,150000,'2025-09-10',1,'00074.BLR.MST.',0,'terkirim','2025-09-10 07:30:32',2,0,0,0,0,NULL,NULL),
(51,51,'092025',150000,150000,'2025-09-06',1,'00040.BLR.MST.',0,'terkirim','2025-09-06 07:16:35',2,0,0,0,0,NULL,NULL),
(52,52,'092025',150000,150000,'2025-09-10',1,'00093.BLR.MST.',0,'terkirim','2025-09-10 19:33:41',2,0,0,0,0,NULL,NULL),
(53,53,'092025',150000,150000,'2025-09-07',1,'00047.BLR.MST.',0,'terkirim','2025-09-07 08:01:21',2,0,0,0,0,NULL,NULL),
(54,54,'092025',150000,150000,'2025-09-12',1,'00100.BLR.MST.',0,'terkirim','2025-09-12 09:05:44',2,0,0,0,0,NULL,NULL),
(55,55,'092025',150000,150000,'2025-09-10',1,'00081.BLR.MST.',0,'terkirim','2025-09-10 09:11:26',2,0,0,0,0,NULL,NULL),
(56,56,'092025',150000,150000,'2025-09-08',1,'00065.BLR.MST.',0,'terkirim','2025-09-08 17:14:17',2,0,0,0,0,NULL,NULL),
(57,57,'092025',150000,150000,'2025-09-05',1,'00030.BLR.MST.',0,'terkirim','2025-09-05 11:20:56',2,0,0,0,0,NULL,NULL),
(58,58,'092025',150000,150000,'2025-09-10',1,'00086.BLR.MST.',0,'terkirim','2025-09-10 13:28:05',2,0,0,0,0,NULL,NULL),
(59,59,'092025',150000,150000,'2025-09-09',1,'00071.BLR.MST.',0,'terkirim','2025-09-09 08:27:45',2,0,0,0,0,NULL,NULL),
(60,60,'092025',150000,150000,'2025-09-10',1,'00092.BLR.MST.',0,'terkirim','2025-09-10 19:27:50',2,0,0,0,0,NULL,NULL),
(61,61,'092025',175000,175000,'2025-09-05',1,'00018.BLR.MST.',0,'terkirim','2025-09-05 08:50:56',2,0,0,0,0,NULL,NULL),
(62,62,'092025',150000,150000,'2025-09-08',1,'00060.BLR.MST.',0,'terkirim','2025-09-08 06:51:04',2,0,0,0,0,NULL,NULL),
(63,63,'092025',150000,150000,'2025-09-05',1,'00009.BLR.MST.',0,'belum','2025-09-05 08:34:47',2,0,0,0,0,NULL,NULL),
(64,64,'092025',150000,150000,'2025-09-05',1,'00035.BLR.MST.',0,'terkirim','2025-09-05 16:40:24',2,0,0,0,0,NULL,NULL),
(65,65,'092025',100000,100000,'2025-09-07',1,'00053.BLR.MST.',0,'terkirim','2025-09-07 09:24:10',2,0,0,0,0,NULL,NULL),
(66,66,'092025',100000,100000,'2025-09-10',1,'00075.BLR.MST.',0,'terkirim','2025-09-10 07:30:45',2,0,0,0,0,NULL,NULL),
(67,67,'092025',100000,100000,'2025-09-09',1,'00069.BLR.MST.',0,'terkirim','2025-09-09 06:11:10',2,0,0,0,0,NULL,NULL),
(68,68,'092025',150000,150000,'2025-09-05',1,'00015.BLR.MST.',0,'belum','2025-09-05 08:36:14',2,0,0,0,0,NULL,NULL),
(69,69,'092025',100000,100000,'2025-09-07',1,'00052.BLR.MST.',0,'terkirim','2025-09-07 08:02:07',2,0,0,0,0,NULL,NULL),
(70,70,'092025',175000,175000,'2025-09-10',1,'00089.BLR.MST.',0,'terkirim','2025-09-10 17:32:02',2,0,0,0,0,NULL,NULL),
(71,71,'092025',150000,150000,'2025-09-05',1,'00010.BLR.MST.',0,'belum','2025-09-05 08:35:07',2,0,0,0,0,NULL,NULL),
(73,73,'092025',150000,150000,'2025-09-07',1,'00055.BLR.MST.',0,'terkirim','2025-09-07 10:46:28',2,0,0,0,0,NULL,NULL),
(74,74,'092025',150000,150000,'2025-09-05',1,'00011.BLR.MST.',0,'belum','2025-09-05 08:35:18',2,0,0,0,0,NULL,NULL),
(76,76,'092025',100000,100000,'2025-09-05',1,'00033.BLR.MST.',0,'terkirim','2025-09-05 11:23:25',2,0,0,0,0,NULL,NULL),
(77,77,'092025',150000,150000,'2025-09-05',1,'00027.BLR.MST.',0,'terkirim','2025-09-05 09:29:14',2,0,0,0,0,NULL,NULL),
(78,78,'092025',150000,150000,'2025-09-10',1,'00073.BLR.MST.',0,'terkirim','2025-09-10 06:39:50',2,0,0,0,0,NULL,NULL),
(79,79,'092025',150000,150000,'2025-09-05',1,'00034.BLR.MST.',0,'terkirim','2025-09-05 13:40:30',2,0,0,0,0,NULL,NULL),
(80,80,'092025',150000,150000,'2025-09-10',1,'00094.BLR.MST.',0,'terkirim','2025-09-11 04:43:18',2,0,0,0,0,NULL,NULL),
(81,81,'092025',150000,150000,'2025-09-12',1,'00103.BLR.MST.',0,'terkirim','2025-09-12 17:42:57',2,0,0,0,0,NULL,NULL),
(83,83,'092025',150000,150000,'2025-09-11',1,'00098.BLR.MST.',0,'terkirim','2025-09-11 21:17:22',2,0,0,0,0,NULL,NULL),
(84,84,'092025',150000,150000,'2025-09-05',1,'00012.BLR.MST.',0,'belum','2025-09-05 08:35:31',2,0,0,0,0,NULL,NULL),
(85,85,'092025',150000,150000,'2025-09-11',1,'00099.BLR.MST.',0,'terkirim','2025-09-11 22:03:44',2,0,0,0,0,NULL,NULL),
(86,86,'092025',150000,150000,'2025-09-07',1,'00046.BLR.MST.',0,'terkirim','2025-09-07 08:01:07',2,0,0,0,0,NULL,NULL),
(87,87,'092025',175000,175000,'2025-09-05',1,'00019.BLR.MST.',0,'terkirim','2025-09-05 08:51:24',2,0,0,0,0,NULL,NULL),
(88,88,'092025',150000,150000,'2025-09-05',1,'00031.BLR.MST.',0,'terkirim','2025-09-05 11:21:22',2,0,0,0,0,NULL,NULL),
(89,89,'092025',150000,150000,'2025-09-05',1,'00038.BLR.MST.',0,'terkirim','2025-09-05 19:57:28',232,0,0,0,0,NULL,NULL),
(90,90,'092025',150000,150000,'2025-09-06',1,'00044.BLR.MST.',0,'terkirim','2025-09-06 11:58:07',2,0,0,0,0,NULL,NULL),
(91,91,'092025',175000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(92,92,'092025',150000,150000,'2025-09-06',1,'00043.BLR.MST.',0,'terkirim','2025-09-06 11:56:51',2,0,0,0,0,NULL,NULL),
(93,93,'092025',150000,150000,'2025-09-10',1,'00088.BLR.MST.',0,'terkirim','2025-09-10 16:04:13',2,0,0,0,0,NULL,NULL),
(94,94,'092025',150000,150000,'2025-09-05',1,'00024.BLR.MST.',0,'terkirim','2025-09-05 09:04:54',2,0,0,0,0,NULL,NULL),
(95,95,'092025',150000,150000,'2025-09-11',1,'00095.BLR.MST.',0,'terkirim','2025-09-11 10:17:47',2,0,0,0,0,NULL,NULL),
(96,96,'092025',150000,150000,'2025-09-05',1,'00037.BLR.MST.',0,'terkirim','2025-09-05 19:38:43',2,0,0,0,0,NULL,NULL),
(97,97,'092025',150000,150000,'2025-09-05',1,'00028.BLR.MST.',0,'terkirim','2025-09-05 11:19:00',2,0,0,0,0,NULL,NULL),
(98,98,'092025',150000,150000,'2025-09-05',1,'00013.BLR.MST.',0,'belum','2025-09-05 08:35:40',2,0,0,0,0,NULL,NULL),
(99,99,'092025',150000,150000,'2025-09-08',1,'00066.BLR.MST.',0,'terkirim','2025-09-08 20:59:41',2,0,0,0,0,NULL,NULL),
(100,100,'092025',175000,175000,'2025-09-08',1,'00062.BLR.MST.',0,'terkirim','2025-09-08 14:09:03',2,0,0,0,0,NULL,NULL),
(101,101,'092025',150000,150000,'2025-09-05',1,'00017.BLR.MST.',0,'terkirim','2025-09-05 08:50:40',2,0,0,0,0,NULL,NULL),
(102,102,'092025',150000,150000,'2025-09-08',1,'00067.BLR.MST.',0,'terkirim','2025-09-08 20:59:59',2,0,0,0,0,NULL,NULL),
(103,103,'092025',150000,150000,'2025-09-10',1,'00079.BLR.MST.',0,'terkirim','2025-09-10 09:09:40',2,0,0,0,0,NULL,NULL),
(105,105,'092025',150000,150000,'2025-09-05',1,'00023.BLR.MST.',0,'terkirim','2025-09-05 09:03:57',2,0,0,0,0,NULL,NULL),
(106,106,'092025',150000,150000,'2025-09-07',1,'00054.BLR.MST.',0,'terkirim','2025-09-07 10:46:04',2,0,0,0,0,NULL,NULL),
(107,107,'092025',175000,175000,'2025-09-10',1,'00078.BLR.MST.',0,'terkirim','2025-09-10 09:02:10',2,0,0,0,0,NULL,NULL),
(108,108,'092025',150000,150000,'2025-09-05',1,'00022.BLR.MST.',0,'belum','2025-09-05 08:53:15',2,0,0,0,0,NULL,NULL),
(109,2,'092025',75000,75000,'2025-09-07',1,'00045.BLR.MST.',0,'terkirim','2025-09-07 08:00:59',2,0,0,0,0,NULL,NULL),
(110,16,'092025',75000,75000,'2025-09-05',1,'00036.BLR.MST.',0,'terkirim','2025-09-05 16:40:45',2,0,0,0,0,NULL,NULL),
(111,12,'092025',175000,175000,'2025-09-07',1,'00049.BLR.MST.',0,'terkirim','2025-09-07 08:01:36',2,0,0,0,0,NULL,NULL),
(112,46,'092025',175000,175000,'2025-09-07',1,'00059.BLR.MST.',0,'terkirim','2025-09-07 20:54:53',2,0,0,0,0,NULL,NULL),
(113,72,'092025',175000,175000,'2025-09-07',1,'00051.BLR.MST.',0,'terkirim','2025-09-07 08:01:59',2,0,0,0,0,NULL,NULL),
(115,104,'092025',175000,175000,'2025-09-07',1,'00048.BLR.MST.',0,'terkirim','2025-09-07 08:01:28',2,0,0,0,0,NULL,NULL),
(116,82,'092025',150000,150000,'2025-09-13',1,'00105.BLR.MST.',0,'terkirim','2025-09-13 08:56:16',2,0,0,0,0,NULL,NULL),
(117,75,'092025',175000,175000,'2025-09-12',1,'00101.BLR.MST.',0,'belum','2025-09-12 09:34:44',2,0,0,0,0,NULL,NULL),
(118,2,'102025',75000,75000,'2025-10-08',1,'00174.BLR.MST.',0,'terkirim','2025-10-08 19:06:15',2,0,0,0,0,NULL,NULL),
(119,3,'102025',100000,100000,'2025-10-02',1,'00118.BLR.MST.',0,'belum','2025-10-02 06:38:24',2,0,0,0,0,NULL,NULL),
(120,4,'102025',100000,100000,'2025-10-02',1,'00119.BLR.MST.',0,'belum','2025-10-02 20:57:11',2,0,0,0,0,NULL,NULL),
(121,5,'102025',150000,150000,'2025-10-04',1,'00127.BLR.MST.',0,'belum','2025-10-04 16:40:40',2,0,0,0,0,NULL,NULL),
(122,6,'102025',150000,150000,'2025-10-09',1,'00183.BLR.MST.',0,'terkirim','2025-10-09 20:27:06',2,0,0,0,0,NULL,NULL),
(123,7,'102025',150000,150000,'2025-10-11',1,'00213.BLR.MST.',0,'terkirim','2025-10-11 16:40:36',2,0,0,0,0,NULL,NULL),
(124,8,'102025',150000,150000,'2025-10-10',1,'00195.BLR.MST.',0,'terkirim','2025-10-10 08:43:55',2,0,0,0,0,NULL,NULL),
(125,9,'102025',150000,150000,'2025-10-10',1,'00202.BLR.MST.',0,'terkirim','2025-10-10 15:32:43',2,0,0,0,0,NULL,NULL),
(126,10,'102025',150000,150000,'2025-10-01',1,'00113.BLR.MST.',0,'belum','2025-10-01 17:49:55',2,0,0,0,0,NULL,NULL),
(127,11,'102025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(128,12,'102025',175000,175000,'2025-10-10',1,'00201.BLR.MST.',0,'terkirim','2025-10-10 15:32:27',2,0,0,0,0,NULL,NULL),
(129,13,'102025',175000,175000,'2025-10-09',1,'00175.BLR.MST.',0,'terkirim','2025-10-09 06:06:22',2,0,0,0,0,NULL,NULL),
(130,14,'102025',150000,150000,'2025-10-09',1,'00182.BLR.MST.',0,'terkirim','2025-10-09 19:22:06',2,0,0,0,0,NULL,NULL),
(131,15,'102025',150000,150000,'2025-10-05',1,'00131.BLR.MST.',0,'terkirim','2025-10-05 06:45:21',2,0,0,0,0,NULL,NULL),
(132,16,'102025',75000,75000,'2025-10-10',1,'00193.BLR.MST.',0,'terkirim','2025-10-10 08:11:25',2,0,0,0,0,NULL,NULL),
(133,17,'102025',150000,150000,'2025-10-07',1,'00169.BLR.MST.',0,'terkirim','2025-10-07 22:11:00',2,0,0,0,0,NULL,NULL),
(134,18,'102025',150000,150000,'2025-10-10',1,'00186.BLR.MST.',0,'terkirim','2025-10-10 05:29:58',2,0,0,0,0,NULL,NULL),
(135,19,'102025',100000,100000,'2025-10-01',1,'00112.BLR.MST.',0,'belum','2025-10-01 17:49:25',2,0,0,0,0,NULL,NULL),
(136,20,'102025',175000,175000,'2025-10-02',1,'00117.BLR.MST.',0,'belum','2025-10-02 06:38:12',2,0,0,0,0,NULL,NULL),
(137,21,'102025',150000,150000,'2025-10-06',1,'00160.BLR.MST.',0,'terkirim','2025-10-06 19:39:12',2,0,0,0,0,NULL,NULL),
(138,22,'102025',150000,150000,'2025-10-12',1,'00216.BLR.MST.',0,'terkirim','2025-10-12 08:50:39',2,0,0,0,0,NULL,NULL),
(139,23,'102025',150000,150000,'2025-10-10',1,'00203.BLR.MST.',0,'terkirim','2025-10-10 15:32:57',2,0,0,0,0,NULL,NULL),
(140,24,'102025',150000,150000,'2025-10-01',1,'00109.BLR.MST.',0,'terkirim','2025-10-01 09:22:27',2,0,0,0,0,NULL,NULL),
(141,25,'102025',175000,175000,'2025-10-08',1,'00170.BLR.MST.',0,'terkirim','2025-10-08 14:32:22',2,0,0,0,0,NULL,NULL),
(142,26,'102025',150000,150000,'2025-10-10',1,'00192.BLR.MST.',0,'terkirim','2025-10-10 08:11:09',2,0,0,0,0,NULL,NULL),
(143,27,'102025',150000,150000,'2025-10-07',1,'00163.BLR.MST.',0,'terkirim','2025-10-07 10:16:59',2,0,0,0,0,NULL,NULL),
(144,28,'102025',150000,150000,'2025-10-10',1,'00207.BLR.MST.',0,'terkirim','2025-10-10 23:43:47',2,0,0,0,0,NULL,NULL),
(145,29,'102025',175000,175000,'2025-10-07',1,'00167.BLR.MST.',0,'terkirim','2025-10-07 20:56:10',2,0,0,0,0,NULL,NULL),
(146,30,'102025',150000,150000,'2025-10-05',1,'00135.BLR.MST.',0,'terkirim','2025-10-05 06:51:37',2,0,0,0,0,NULL,NULL),
(147,31,'102025',150000,150000,'2025-10-01',1,'00115.BLR.MST.',0,'belum','2025-10-01 18:56:43',2,0,0,0,0,NULL,NULL),
(148,32,'102025',175000,175000,'2025-10-08',1,'00172.BLR.MST.',0,'terkirim','2025-10-08 17:40:36',2,0,0,0,0,NULL,NULL),
(149,33,'102025',150000,150000,'2025-10-10',1,'00191.BLR.MST.',0,'terkirim','2025-10-10 08:10:26',2,0,0,0,0,NULL,NULL),
(150,34,'102025',175000,175000,'2025-10-10',1,'00188.BLR.MST.',0,'terkirim','2025-10-10 07:45:29',2,0,0,0,0,NULL,NULL),
(151,35,'102025',150000,150000,'2025-10-08',1,'00171.BLR.MST.',0,'terkirim','2025-10-08 15:43:38',2,0,0,0,0,NULL,NULL),
(152,36,'102025',150000,150000,'2025-10-09',1,'00177.BLR.MST.',0,'terkirim','2025-10-09 08:48:59',2,0,0,0,0,NULL,NULL),
(153,37,'102025',150000,150000,'2025-10-14',1,'00220.BLR.MST.',0,'terkirim','2025-10-14 18:58:03',2,0,0,0,0,NULL,NULL),
(154,38,'102025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(155,39,'102025',150000,150000,'2025-10-13',1,'00219.BLR.MST.',0,'terkirim','2025-10-13 18:24:24',2,0,0,0,0,NULL,NULL),
(156,40,'102025',175000,175000,'2025-10-01',1,'00108.BLR.MST.',0,'terkirim','2025-10-01 09:21:07',2,0,0,0,0,NULL,NULL),
(157,41,'102025',175000,175000,'2025-10-10',1,'00194.BLR.MST.',0,'terkirim','2025-10-10 08:15:40',2,0,0,0,0,NULL,NULL),
(158,42,'102025',175000,175000,'2025-10-05',1,'00136.BLR.MST.',0,'terkirim','2025-10-05 07:00:32',2,0,0,0,0,NULL,NULL),
(159,43,'102025',175000,175000,'2025-10-05',1,'00129.BLR.MST.',0,'terkirim','2025-10-05 06:44:46',2,0,0,0,0,NULL,NULL),
(160,44,'102025',175000,175000,'2025-10-07',1,'00162.BLR.MST.',0,'terkirim','2025-10-07 06:15:53',2,0,0,0,0,NULL,NULL),
(161,45,'102025',150000,150000,'2025-10-09',1,'00176.BLR.MST.',0,'terkirim','2025-10-09 08:29:53',2,0,0,0,0,NULL,NULL),
(162,46,'102025',175000,175000,'2025-10-12',1,'00215.BLR.MST.',0,'terkirim','2025-10-12 08:50:12',2,0,0,0,0,NULL,NULL),
(163,47,'102025',150000,150000,'2025-10-11',1,'00209.BLR.MST.',0,'terkirim','2025-10-11 09:20:12',2,0,0,0,0,NULL,NULL),
(164,48,'102025',150000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(165,49,'102025',150000,150000,'2025-10-09',1,'00185.BLR.MST.',0,'terkirim','2025-10-10 00:48:22',2,0,0,0,0,NULL,NULL),
(166,50,'102025',150000,150000,'2025-10-10',1,'00187.BLR.MST.',0,'terkirim','2025-10-10 07:45:14',2,0,0,0,0,NULL,NULL),
(167,51,'102025',150000,150000,'2025-10-05',1,'00138.BLR.MST.',0,'terkirim','2025-10-05 07:17:10',2,0,0,0,0,NULL,NULL),
(168,52,'102025',150000,150000,'2025-10-06',1,'00153.BLR.MST.',0,'terkirim','2025-10-06 09:18:54',2,0,0,0,0,NULL,NULL),
(169,53,'102025',150000,150000,'2025-10-06',1,'00155.BLR.MST.',0,'terkirim','2025-10-06 11:01:32',2,0,0,0,0,NULL,NULL),
(170,54,'102025',150000,150000,'2025-10-10',1,'00206.BLR.MST.',0,'terkirim','2025-10-10 23:11:48',2,0,0,0,0,NULL,NULL),
(171,55,'102025',150000,150000,'2025-10-10',1,'00198.BLR.MST.',0,'terkirim','2025-10-10 10:34:26',2,0,0,0,0,NULL,NULL),
(172,56,'102025',150000,150000,'2025-10-09',1,'00178.BLR.MST.',0,'terkirim','2025-10-09 09:45:28',2,0,0,0,0,NULL,NULL),
(173,57,'102025',150000,150000,'2025-10-05',1,'00132.BLR.MST.',0,'terkirim','2025-10-05 06:46:47',2,0,0,0,0,NULL,NULL),
(174,58,'102025',150000,150000,'2025-10-11',1,'00212.BLR.MST.',0,'terkirim','2025-10-11 11:23:59',2,0,0,0,0,NULL,NULL),
(175,59,'102025',150000,150000,'2025-10-09',1,'00180.BLR.MST.',0,'terkirim','2025-10-09 15:03:40',2,0,0,0,0,NULL,NULL),
(176,60,'102025',150000,150000,'2025-10-10',1,'00200.BLR.MST.',0,'terkirim','2025-10-10 12:13:11',2,0,0,0,0,NULL,NULL),
(177,61,'102025',175000,175000,'2025-10-07',1,'00161.BLR.MST.',0,'terkirim','2025-10-07 06:15:39',2,0,0,0,0,NULL,NULL),
(178,62,'102025',150000,150000,'2025-10-06',1,'00154.BLR.MST.',0,'terkirim','2025-10-06 10:59:49',2,0,0,0,0,NULL,NULL),
(179,63,'102025',150000,150000,'2025-10-05',1,'00146.BLR.MST.',0,'terkirim','2025-10-05 14:49:45',2,0,0,0,0,NULL,NULL),
(180,64,'102025',150000,150000,'2025-10-05',1,'00142.BLR.MST.',0,'terkirim','2025-10-05 10:54:16',2,0,0,0,0,NULL,NULL),
(181,65,'102025',100000,100000,'2025-10-09',1,'00179.BLR.MST.',0,'terkirim','2025-10-09 11:48:22',2,0,0,0,0,NULL,NULL),
(182,66,'102025',100000,100000,'2025-10-10',1,'00190.BLR.MST.',0,'terkirim','2025-10-10 07:58:50',2,0,0,0,0,NULL,NULL),
(183,67,'102025',100000,100000,'2025-10-10',1,'00197.BLR.MST.',0,'terkirim','2025-10-10 10:25:04',2,0,0,0,0,NULL,NULL),
(184,68,'102025',150000,150000,'2025-10-10',1,'00189.BLR.MST.',0,'terkirim','2025-10-10 07:50:18',2,0,0,0,0,NULL,NULL),
(185,69,'102025',100000,100000,'2025-10-07',1,'00168.BLR.MST.',0,'terkirim','2025-10-07 22:10:45',2,0,0,0,0,NULL,NULL),
(186,70,'102025',175000,175000,'2025-10-10',1,'00204.BLR.MST.',0,'terkirim','2025-10-10 20:14:40',2,0,0,0,0,NULL,NULL),
(187,71,'102025',150000,150000,'2025-10-01',1,'00111.BLR.MST.',0,'belum','2025-10-01 11:07:23',2,0,0,0,0,NULL,NULL),
(188,72,'102025',175000,175000,'2025-10-05',1,'00144.BLR.MST.',0,'terkirim','2025-10-05 14:48:41',2,0,0,0,0,NULL,NULL),
(189,73,'102025',150000,150000,'2025-10-06',1,'00158.BLR.MST.',0,'terkirim','2025-10-06 18:39:31',2,0,0,0,0,NULL,NULL),
(190,74,'102025',150000,150000,'2025-10-03',1,'00123.BLR.MST.',0,'belum','2025-10-03 18:34:57',2,0,0,0,0,NULL,NULL),
(191,75,'102025',175000,175000,'2025-10-05',1,'00139.BLR.MST.',0,'terkirim','2025-10-05 08:34:55',2,0,0,0,0,NULL,NULL),
(192,76,'102025',100000,100000,'2025-10-06',1,'00157.BLR.MST.',0,'terkirim','2025-10-06 17:57:48',2,0,0,0,0,NULL,NULL),
(193,77,'102025',150000,150000,'2025-10-04',1,'00128.BLR.MST.',0,'belum','2025-10-04 17:24:32',2,0,0,0,0,NULL,NULL),
(194,78,'102025',150000,150000,'2025-10-10',1,'00196.BLR.MST.',0,'terkirim','2025-10-10 10:24:19',2,0,0,0,0,NULL,NULL),
(195,79,'102025',150000,150000,'2025-10-07',1,'00164.BLR.MST.',0,'terkirim','2025-10-07 10:17:05',2,0,0,0,0,NULL,NULL),
(196,80,'102025',150000,150000,'2025-10-10',1,'00205.BLR.MST.',0,'terkirim','2025-10-10 22:56:44',2,0,0,0,0,NULL,NULL),
(197,81,'102025',150000,150000,'2025-10-11',1,'00208.BLR.MST.',0,'terkirim','2025-10-11 06:25:35',2,0,0,0,0,NULL,NULL),
(198,82,'102025',150000,150000,'2025-10-12',1,'00218.BLR.MST.',0,'terkirim','2025-10-12 20:48:30',2,0,0,0,0,NULL,NULL),
(199,83,'102025',150000,150000,'2025-10-09',1,'00184.BLR.MST.',0,'terkirim','2025-10-09 23:23:23',2,0,0,0,0,NULL,NULL),
(200,84,'102025',150000,150000,'2025-10-01',1,'00116.BLR.MST.',0,'belum','2025-10-01 18:57:46',2,0,0,0,0,NULL,NULL),
(201,85,'102025',150000,150000,'2025-10-11',1,'00210.BLR.MST.',0,'terkirim','2025-10-11 09:20:48',2,0,0,0,0,NULL,NULL),
(202,86,'102025',150000,150000,'2025-10-05',1,'00149.BLR.MST.',0,'terkirim','2025-10-05 18:35:57',2,0,0,0,0,NULL,NULL),
(203,87,'102025',175000,175000,'2025-10-06',1,'00156.BLR.MST.',0,'terkirim','2025-10-06 16:09:27',2,0,0,0,0,NULL,NULL),
(204,88,'102025',150000,150000,'2025-10-04',1,'00125.BLR.MST.',0,'belum','2025-10-04 05:54:37',2,0,0,0,0,NULL,NULL),
(205,89,'102025',150000,150000,'2025-10-06',1,'00159.BLR.MST.',0,'terkirim','2025-10-06 18:39:45',2,0,0,0,0,NULL,NULL),
(206,90,'102025',150000,150000,'2025-10-05',1,'00152.BLR.MST.',0,'terkirim','2025-10-05 21:39:17',2,0,0,0,0,NULL,NULL),
(207,91,'102025',175000,0,'0000-00-00',0,'',1,'terkirim','0000-00-00 00:00:00',0,0,0,0,0,NULL,NULL),
(208,92,'102025',150000,150000,'2025-10-05',1,'00130.BLR.MST.',0,'terkirim','2025-10-05 06:45:05',2,0,0,0,0,NULL,NULL),
(209,93,'102025',150000,150000,'2025-10-10',1,'00199.BLR.MST.',0,'terkirim','2025-10-10 10:35:41',2,0,0,0,0,NULL,NULL),
(210,94,'102025',150000,150000,'2025-10-05',1,'00145.BLR.MST.',0,'terkirim','2025-10-05 14:48:55',2,0,0,0,0,NULL,NULL),
(211,95,'102025',150000,150000,'2025-10-12',1,'00217.BLR.MST.',0,'terkirim','2025-10-12 09:34:27',2,0,0,0,0,NULL,NULL),
(212,96,'102025',150000,150000,'2025-10-11',1,'00214.BLR.MST.',0,'terkirim','2025-10-11 18:58:00',2,0,0,0,0,NULL,NULL),
(213,97,'102025',150000,150000,'2025-10-05',1,'00141.BLR.MST.',0,'terkirim','2025-10-05 08:35:31',2,0,0,0,0,NULL,NULL),
(214,98,'102025',150000,150000,'2025-10-03',1,'00120.BLR.MST.',0,'terkirim','2025-10-03 18:23:42',2,0,0,0,0,NULL,NULL),
(215,99,'102025',150000,150000,'2025-10-05',1,'00150.BLR.MST.',0,'terkirim','2025-10-05 18:36:10',2,0,0,0,0,NULL,NULL),
(216,100,'102025',175000,175000,'2025-10-07',1,'00166.BLR.MST.',0,'terkirim','2025-10-07 20:53:36',2,0,0,0,0,NULL,NULL),
(217,101,'102025',150000,150000,'2025-10-05',1,'00143.BLR.MST.',0,'terkirim','2025-10-05 10:55:02',2,0,0,0,0,NULL,NULL),
(218,102,'102025',150000,150000,'2025-10-09',1,'00181.BLR.MST.',0,'terkirim','2025-10-09 16:25:24',2,0,0,0,0,NULL,NULL),
(219,103,'102025',150000,150000,'2025-10-11',1,'00211.BLR.MST.',0,'terkirim','2025-10-11 10:48:57',2,0,0,0,0,NULL,NULL),
(220,104,'102025',175000,175000,'2025-10-05',1,'00151.BLR.MST.',0,'terkirim','2025-10-05 19:07:18',2,0,0,0,0,NULL,NULL),
(221,105,'102025',150000,150000,'2025-10-05',1,'00137.BLR.MST.',0,'terkirim','2025-10-05 07:17:03',2,0,0,0,0,NULL,NULL),
(222,106,'102025',150000,150000,'2025-10-07',1,'00165.BLR.MST.',0,'terkirim','2025-10-07 13:37:54',2,0,0,0,0,NULL,NULL),
(223,107,'102025',175000,175000,'2025-10-05',1,'00133.BLR.MST.',0,'terkirim','2025-10-05 06:48:29',2,0,0,0,0,NULL,NULL),
(224,108,'102025',150000,150000,'2025-10-05',1,'00140.BLR.MST.',0,'terkirim','2025-10-05 08:35:11',2,0,0,0,0,NULL,NULL),
(225,109,'102025',150000,150000,'2025-10-01',1,'00110.BLR.MST.',0,'terkirim','2025-10-01 09:24:42',2,0,0,0,0,NULL,NULL),
(226,110,'102025',150000,150000,'2025-10-01',1,'00114.BLR.MST.',0,'terkirim','2025-10-01 18:36:09',2,0,0,0,0,NULL,NULL),
(228,112,'102025',150000,150000,'2025-10-04',1,'00126.BLR.MST.',0,'terkirim','2025-10-04 11:39:09',2,0,0,0,0,NULL,NULL),
(229,113,'102025',150000,150000,'2025-10-03',1,'00122.BLR.MST.',0,'belum','2025-10-03 18:31:49',2,0,0,0,0,NULL,NULL),
(231,114,'102025',150000,150000,'2025-10-08',1,'00173.BLR.MST.',0,'terkirim','2025-10-08 18:01:22',2,0,0,0,0,NULL,NULL),
(232,2,'122025',75000,75000,'2025-12-06',1,'00265.BLR.MST.',NULL,'terkirim','2025-12-06 18:31:05',2,0,0,0,0,NULL,NULL),
(233,3,'122025',100000,100000,'2025-12-03',1,'00229.BLR.MST.',NULL,'belum','2025-12-03 15:30:19',2,0,0,0,0,NULL,NULL),
(234,4,'122025',100000,100000,'2025-12-01',1,'00221.BLR.MST.',NULL,'belum','2025-12-01 08:09:48',2,0,0,0,0,NULL,NULL),
(235,5,'122025',150000,150000,'2025-12-03',1,'00230.BLR.MST.',NULL,'belum','2025-12-03 21:55:29',2,0,0,0,0,NULL,NULL),
(236,6,'122025',150000,150000,'2025-12-09',1,'00292.BLR.MST.',NULL,'terkirim','2025-12-09 15:31:31',2,0,0,0,0,NULL,NULL),
(237,7,'122025',150000,150000,'2025-12-11',1,'00336.BLR.MST.',NULL,'terkirim','2025-12-11 19:52:03',2,0,0,0,0,NULL,NULL),
(238,8,'122025',150000,150000,'2025-12-10',1,'00313.BLR.MST.',NULL,'terkirim','2025-12-10 08:32:03',2,0,0,0,0,NULL,NULL),
(239,9,'122025',150000,150000,'2025-12-11',1,'00329.BLR.MST.',NULL,'terkirim','2025-12-11 06:25:48',2,0,0,0,0,NULL,NULL),
(240,10,'122025',150000,150000,'2025-12-01',1,'00227.BLR.MST.',NULL,'terkirim','2025-12-01 18:52:13',2,0,0,0,0,NULL,NULL),
(241,11,'122025',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(242,12,'122025',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(243,13,'122025',175000,175000,'2025-12-08',1,'00286.BLR.MST.',NULL,'terkirim','2025-12-08 18:45:58',2,0,0,0,0,NULL,NULL),
(244,14,'122025',150000,150000,'2025-12-10',1,'00310.BLR.MST.',NULL,'terkirim','2025-12-10 08:21:02',2,0,0,0,0,NULL,NULL),
(245,15,'122025',150000,150000,'2025-12-05',1,'00241.BLR.MST.',NULL,'terkirim','2025-12-05 07:21:23',2,0,0,0,0,NULL,NULL),
(246,16,'122025',75000,75000,'2025-12-10',1,'00302.BLR.MST.',NULL,'terkirim','2025-12-10 08:10:58',2,0,0,0,0,NULL,NULL),
(247,17,'122025',150000,150000,'2025-12-05',1,'00255.BLR.MST.',NULL,'terkirim','2025-12-05 13:29:07',2,0,0,0,0,NULL,NULL),
(248,18,'122025',150000,150000,'2025-12-10',1,'00299.BLR.MST.',NULL,'terkirim','2025-12-10 07:59:50',2,0,0,0,0,NULL,NULL),
(249,19,'122025',100000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(250,20,'122025',175000,175000,'2025-12-04',1,'00231.BLR.MST.',NULL,'belum','2025-12-04 14:51:49',2,0,0,0,0,NULL,NULL),
(251,21,'122025',150000,150000,'2025-12-05',1,'00257.BLR.MST.',NULL,'terkirim','2025-12-05 13:29:48',2,0,0,0,0,NULL,NULL),
(252,22,'122025',150000,150000,'2025-12-11',1,'00328.BLR.MST.',NULL,'terkirim','2025-12-11 06:16:58',2,0,0,0,0,NULL,NULL),
(253,23,'122025',150000,150000,'2025-12-08',1,'00289.BLR.MST.',NULL,'terkirim','2025-12-08 20:34:05',2,0,0,0,0,NULL,NULL),
(254,24,'122025',150000,150000,'2025-12-01',1,'00223.BLR.MST.',NULL,'belum','2025-12-01 08:10:42',2,0,0,0,0,NULL,NULL),
(255,25,'122025',175000,175000,'2025-12-05',1,'00256.BLR.MST.',NULL,'terkirim','2025-12-05 13:29:25',2,0,0,0,0,NULL,NULL),
(256,26,'122025',150000,150000,'2025-12-10',1,'00312.BLR.MST.',NULL,'terkirim','2025-12-10 08:28:49',2,0,0,0,0,NULL,NULL),
(257,27,'122025',150000,150000,'2025-12-06',1,'00264.BLR.MST.',NULL,'terkirim','2025-12-06 09:16:37',2,0,0,0,0,NULL,NULL),
(258,28,'122025',150000,150000,'2025-12-11',1,'00330.BLR.MST.',NULL,'terkirim','2025-12-11 08:08:08',2,0,0,0,0,NULL,NULL),
(259,29,'122025',175000,175000,'2025-12-07',1,'00274.BLR.MST.',NULL,'terkirim','2025-12-07 18:16:39',2,0,0,0,0,NULL,NULL),
(260,30,'122025',150000,150000,'2025-12-05',1,'00242.BLR.MST.',NULL,'terkirim','2025-12-05 07:21:35',2,0,0,0,0,NULL,NULL),
(261,31,'122025',150000,150000,'2025-12-01',1,'00226.BLR.MST.',NULL,'belum','2025-12-01 08:55:41',2,0,0,0,0,NULL,NULL),
(262,32,'122025',175000,175000,'2025-12-10',1,'00318.BLR.MST.',NULL,'terkirim','2025-12-10 16:28:50',2,0,0,0,0,NULL,NULL),
(263,33,'122025',150000,150000,'2025-12-10',1,'00308.BLR.MST.',NULL,'terkirim','2025-12-10 08:15:52',2,0,0,0,0,NULL,NULL),
(264,34,'122025',175000,175000,'2025-12-10',1,'00305.BLR.MST.',NULL,'terkirim','2025-12-10 08:12:16',2,0,0,0,0,NULL,NULL),
(265,35,'122025',150000,150000,'2025-12-08',1,'00282.BLR.MST.',NULL,'terkirim','2025-12-08 09:11:16',2,0,0,0,0,NULL,NULL),
(266,36,'122025',150000,150000,'2025-12-10',1,'00317.BLR.MST.',NULL,'terkirim','2025-12-10 16:28:36',2,0,0,0,0,NULL,NULL),
(267,37,'122025',150000,150000,'2025-12-10',1,'00321.BLR.MST.',NULL,'terkirim','2025-12-10 19:43:51',2,0,0,0,0,NULL,NULL),
(268,38,'122025',150000,150000,'2025-12-04',1,'00232.BLR.MST.',NULL,'terkirim','2025-12-04 21:07:29',2,0,0,0,0,NULL,NULL),
(269,39,'122025',150000,150000,'2025-12-10',1,'00304.BLR.MST.',NULL,'terkirim','2025-12-10 08:12:07',2,0,0,0,0,NULL,NULL),
(271,41,'122025',175000,175000,'2025-12-10',1,'00325.BLR.MST.',NULL,'terkirim','2025-12-11 05:42:48',2,0,0,0,0,NULL,NULL),
(272,42,'122025',175000,175000,'2025-12-05',1,'00236.BLR.MST.',NULL,'terkirim','2025-12-05 06:52:28',2,0,0,0,0,NULL,NULL),
(273,43,'122025',175000,175000,'2025-12-07',1,'00279.BLR.MST.',NULL,'terkirim','2025-12-07 20:02:39',2,0,0,0,0,NULL,NULL),
(274,44,'122025',175000,175000,'2025-12-05',1,'00235.BLR.MST.',NULL,'terkirim','2025-12-05 06:51:48',2,0,0,0,0,NULL,NULL),
(275,45,'122025',150000,150000,'2025-12-09',1,'00291.BLR.MST.',NULL,'terkirim','2025-12-09 06:01:35',2,0,0,0,0,NULL,NULL),
(276,46,'122025',175000,175000,'2025-12-05',1,'00251.BLR.MST.',NULL,'terkirim','2025-12-05 13:27:40',2,0,0,0,0,NULL,NULL),
(277,47,'122025',150000,150000,'2025-12-11',1,'00332.BLR.MST.',NULL,'terkirim','2025-12-11 15:30:24',2,0,0,0,0,NULL,NULL),
(278,48,'122025',1500,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(279,49,'122025',150000,150000,'2025-12-06',1,'00268.BLR.MST.',NULL,'terkirim','2025-12-06 21:10:44',2,0,0,0,0,NULL,NULL),
(280,50,'122025',150000,150000,'2025-12-09',1,'00295.BLR.MST.',NULL,'terkirim','2025-12-09 20:06:53',2,0,0,0,0,NULL,NULL),
(281,51,'122025',150000,150000,'2025-12-05',1,'00239.BLR.MST.',NULL,'terkirim','2025-12-05 07:08:00',2,0,0,0,0,NULL,NULL),
(282,52,'122025',150000,150000,'2025-12-10',1,'00314.BLR.MST.',NULL,'terkirim','2025-12-10 08:34:54',2,0,0,0,0,NULL,NULL),
(283,53,'122025',150000,150000,'2025-12-06',1,'00267.BLR.MST.',NULL,'terkirim','2025-12-06 21:10:27',2,0,0,0,0,NULL,NULL),
(284,54,'122025',150000,150000,'2025-12-10',1,'00324.BLR.MST.',NULL,'terkirim','2025-12-10 22:48:20',2,0,0,0,0,NULL,NULL),
(285,55,'122025',150000,150000,'2025-12-10',1,'00315.BLR.MST.',NULL,'terkirim','2025-12-10 12:32:27',2,0,0,0,0,NULL,NULL),
(286,56,'122025',150000,150000,'2025-12-10',1,'00307.BLR.MST.',NULL,'terkirim','2025-12-10 08:15:45',2,0,0,0,0,NULL,NULL),
(287,57,'122025',150000,150000,'2025-12-05',1,'00246.BLR.MST.',NULL,'terkirim','2025-12-05 07:43:14',2,0,0,0,0,NULL,NULL),
(288,58,'122025',150000,150000,'2025-12-10',1,'00319.BLR.MST.',NULL,'terkirim','2025-12-10 18:33:42',2,0,0,0,0,NULL,NULL),
(289,59,'122025',150000,150000,'2025-12-09',1,'00293.BLR.MST.',NULL,'terkirim','2025-12-09 15:31:55',2,0,0,0,0,NULL,NULL),
(290,60,'122025',150000,150000,'2025-12-10',1,'00300.BLR.MST.',NULL,'terkirim','2025-12-10 08:01:14',2,0,0,0,0,NULL,NULL),
(291,61,'122025',175000,175000,'2025-12-07',1,'00276.BLR.MST.',NULL,'terkirim','2025-12-07 19:26:56',2,0,0,0,0,NULL,NULL),
(292,62,'122025',150000,150000,'2025-12-09',1,'00296.BLR.MST.',NULL,'terkirim','2025-12-09 21:26:53',2,0,0,0,0,NULL,NULL),
(293,63,'122025',150000,150000,'2025-12-07',1,'00275.BLR.MST.',NULL,'terkirim','2025-12-07 18:17:19',2,0,0,0,0,NULL,NULL),
(294,64,'122025',150000,150000,'2025-12-05',1,'00260.BLR.MST.',NULL,'terkirim','2025-12-05 19:47:14',2,0,0,0,0,NULL,NULL),
(295,65,'122025',100000,100000,'2025-12-10',1,'00303.BLR.MST.',NULL,'terkirim','2025-12-10 08:11:30',2,0,0,0,0,NULL,NULL),
(296,66,'122025',100000,100000,'2025-12-10',1,'00301.BLR.MST.',NULL,'terkirim','2025-12-10 08:06:53',2,0,0,0,0,NULL,NULL),
(297,67,'122025',100000,100000,'2025-12-10',1,'00323.BLR.MST.',NULL,'terkirim','2025-12-10 20:30:58',2,0,0,0,0,NULL,NULL),
(298,68,'122025',150000,150000,'2025-12-10',1,'00309.BLR.MST.',NULL,'terkirim','2025-12-10 08:17:06',2,0,0,0,0,NULL,NULL),
(299,69,'122025',100000,100000,'2025-12-07',1,'00272.BLR.MST.',NULL,'terkirim','2025-12-07 17:40:19',2,0,0,0,0,NULL,NULL),
(300,70,'122025',175000,175000,'2025-12-11',1,'00335.BLR.MST.',NULL,'terkirim','2025-12-11 18:43:08',2,0,0,0,0,NULL,NULL),
(301,71,'122025',150000,150000,'2025-12-01',1,'00222.BLR.MST.',NULL,'belum','2025-12-01 08:10:31',2,0,0,0,0,NULL,NULL),
(302,72,'122025',175000,175000,'2025-12-05',1,'00238.BLR.MST.',NULL,'terkirim','2025-12-05 07:07:14',2,0,0,0,0,NULL,NULL),
(303,73,'122025',150000,150000,'2025-12-07',1,'00277.BLR.MST.',NULL,'terkirim','2025-12-07 19:30:42',2,0,0,0,0,NULL,NULL),
(304,74,'122025',150000,150000,'2025-12-02',1,'00228.BLR.MST.',NULL,'belum','2025-12-02 07:54:25',2,0,0,0,0,NULL,NULL),
(305,75,'122025',175000,175000,'2025-12-05',1,'00245.BLR.MST.',NULL,'terkirim','2025-12-05 07:42:44',2,0,0,0,0,NULL,NULL),
(306,76,'122025',100000,100000,'2025-12-05',1,'00240.BLR.MST.',NULL,'terkirim','2025-12-05 07:08:17',2,0,0,0,0,NULL,NULL),
(307,77,'122025',150000,150000,'2025-12-10',1,'00298.BLR.MST.',NULL,'terkirim','2025-12-10 07:59:29',2,0,0,0,0,NULL,NULL),
(308,78,'122025',150000,150000,'2025-12-08',1,'00287.BLR.MST.',NULL,'terkirim','2025-12-08 18:46:32',2,0,0,0,0,NULL,NULL),
(309,79,'122025',150000,150000,'2025-12-05',1,'00234.BLR.MST.',NULL,'terkirim','2025-12-05 06:51:21',2,0,0,0,0,NULL,NULL),
(310,80,'122025',150000,150000,'2025-12-10',1,'00326.BLR.MST.',NULL,'terkirim','2025-12-11 05:46:16',2,0,0,0,0,NULL,NULL),
(311,81,'122025',150000,150000,'2025-12-11',1,'00333.BLR.MST.',NULL,'terkirim','2025-12-11 16:38:12',2,0,0,0,0,NULL,NULL),
(312,82,'122025',150000,150000,'2025-12-12',1,'00339.BLR.MST.',NULL,'terkirim','2025-12-12 22:59:02',2,0,0,0,0,NULL,NULL),
(313,83,'122025',150000,150000,'2025-12-10',1,'00316.BLR.MST.',NULL,'terkirim','2025-12-10 16:28:23',2,0,0,0,0,NULL,NULL),
(314,84,'122025',150000,150000,'2025-12-01',1,'00224.BLR.MST.',NULL,'belum','2025-12-01 08:11:19',2,0,0,0,0,NULL,NULL),
(315,85,'122025',150000,150000,'2025-12-07',1,'00280.BLR.MST.',NULL,'terkirim','2025-12-07 21:32:18',2,0,0,0,0,NULL,NULL),
(316,86,'122025',150000,150000,'2025-12-08',1,'00288.BLR.MST.',NULL,'terkirim','2025-12-08 19:14:34',2,0,0,0,0,NULL,NULL),
(317,87,'122025',175000,175000,'2025-12-05',1,'00249.BLR.MST.',NULL,'terkirim','2025-12-05 09:51:37',2,0,0,0,0,NULL,NULL),
(318,88,'122025',150000,150000,'2025-12-05',1,'00258.BLR.MST.',NULL,'terkirim','2025-12-05 16:44:17',2,0,0,0,0,NULL,NULL),
(319,89,'122025',150000,150000,'2025-12-06',1,'00266.BLR.MST.',NULL,'terkirim','2025-12-06 21:10:06',2,0,0,0,0,NULL,NULL),
(320,90,'122025',150000,150000,'2025-12-05',1,'00250.BLR.MST.',NULL,'terkirim','2025-12-05 13:27:05',2,0,0,0,0,NULL,NULL),
(321,91,'122025',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(322,92,'122025',150000,150000,'2025-12-07',1,'00269.BLR.MST.',NULL,'terkirim','2025-12-07 06:00:39',2,0,0,0,0,NULL,NULL),
(323,93,'122025',150000,150000,'2025-12-19',1,'00340.BLR.MST.',NULL,'terkirim','2025-12-19 07:28:24',2,0,0,0,0,NULL,NULL),
(324,94,'122025',150000,150000,'2025-12-05',1,'00263.BLR.MST.',NULL,'terkirim','2025-12-05 20:24:55',2,0,0,0,0,NULL,NULL),
(325,95,'122025',150000,150000,'2025-12-11',1,'00334.BLR.MST.',NULL,'terkirim','2025-12-11 18:31:15',2,0,0,0,0,NULL,NULL),
(326,96,'122025',150000,150000,'2025-12-05',1,'00233.BLR.MST.',NULL,'terkirim','2025-12-05 06:50:51',2,0,0,0,0,NULL,NULL),
(327,97,'122025',150000,150000,'2025-12-05',1,'00253.BLR.MST.',NULL,'terkirim','2025-12-05 13:28:22',2,0,0,0,0,NULL,NULL),
(328,98,'122025',150000,150000,'2025-12-01',1,'00225.BLR.MST.',NULL,'belum','2025-12-01 08:14:43',2,0,0,0,0,NULL,NULL),
(329,99,'122025',150000,150000,'2025-12-05',1,'00254.BLR.MST.',NULL,'terkirim','2025-12-05 13:28:42',2,0,0,0,0,NULL,NULL),
(330,100,'122025',175000,175000,'2025-12-09',1,'00294.BLR.MST.',NULL,'terkirim','2025-12-09 18:53:35',2,0,0,0,0,NULL,NULL),
(331,101,'122025',150000,150000,'2025-12-08',1,'00284.BLR.MST.',NULL,'terkirim','2025-12-08 14:13:28',2,0,0,0,0,NULL,NULL),
(332,102,'122025',150000,150000,'2025-12-10',1,'00297.BLR.MST.',NULL,'terkirim','2025-12-10 07:59:13',2,0,0,0,0,NULL,NULL),
(333,104,'122025',175000,175000,'2025-12-05',1,'00247.BLR.MST.',NULL,'terkirim','2025-12-05 07:49:39',2,0,0,0,0,NULL,NULL),
(334,105,'122025',150000,150000,'2025-12-08',1,'00285.BLR.MST.',NULL,'terkirim','2025-12-08 18:45:27',2,0,0,0,0,NULL,NULL),
(335,106,'122025',150000,150000,'2025-12-08',1,'00281.BLR.MST.',NULL,'terkirim','2025-12-08 08:08:41',2,0,0,0,0,NULL,NULL),
(336,107,'122025',175000,175000,'2025-12-05',1,'00243.BLR.MST.',NULL,'terkirim','2025-12-05 07:33:03',2,0,0,0,0,NULL,NULL),
(337,108,'122025',150000,150000,'2025-12-05',1,'00262.BLR.MST.',NULL,'terkirim','2025-12-05 19:49:07',2,0,0,0,0,NULL,NULL),
(338,109,'122025',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-01 13:50:02',NULL,0,0,0,0,NULL,NULL),
(339,110,'122025',150000,150000,'2025-12-10',1,'00311.BLR.MST.',NULL,'terkirim','2025-12-10 08:28:22',2,0,0,0,0,NULL,NULL),
(341,112,'122025',150000,150000,'2025-12-08',1,'00290.BLR.MST.',NULL,'terkirim','2025-12-08 21:55:25',2,0,0,0,0,NULL,NULL),
(342,113,'122025',150000,150000,'2025-12-05',1,'00261.BLR.MST.',NULL,'terkirim','2025-12-05 19:47:48',2,0,0,0,0,NULL,NULL),
(343,114,'122025',150000,150000,'2025-12-05',1,'00252.BLR.MST.',NULL,'terkirim','2025-12-05 13:28:03',2,0,0,0,0,NULL,NULL),
(344,115,'122025',150000,150000,'2025-12-07',1,'00278.BLR.MST.',NULL,'terkirim','2025-12-07 20:02:16',2,0,0,0,0,NULL,NULL),
(345,117,'122025',150000,150000,'2025-12-05',1,'00259.BLR.MST.',NULL,'terkirim','2025-12-05 19:46:46',2,0,0,0,0,NULL,NULL),
(346,118,'122025',150000,150000,'2025-12-05',1,'00244.BLR.MST.',NULL,'terkirim','2025-12-05 07:42:33',2,0,0,0,0,NULL,NULL),
(347,119,'122025',150000,150000,'2025-12-07',1,'00270.BLR.MST.',NULL,'terkirim','2025-12-07 13:27:44',2,0,0,0,0,NULL,NULL),
(348,120,'122025',150000,150000,'2025-12-05',1,'00237.BLR.MST.',NULL,'terkirim','2025-12-05 06:52:53',2,0,0,0,0,NULL,NULL),
(349,121,'122025',150000,150000,'2025-12-11',1,'00331.BLR.MST.',NULL,'terkirim','2025-12-11 10:22:59',2,0,0,0,0,NULL,NULL),
(352,122,'122025',150000,150000,'2025-12-05',1,'00248.BLR.MST.',NULL,'terkirim','2025-12-05 09:32:34',2,0,0,0,0,NULL,NULL),
(355,123,'122025',150000,150000,'2025-12-07',1,'00273.BLR.MST.',NULL,'terkirim','2025-12-07 18:16:26',2,0,0,0,0,NULL,NULL),
(357,124,'122025',150000,150000,'2025-12-08',1,'00283.BLR.MST.',NULL,'terkirim','2025-12-08 12:47:53',2,0,0,0,0,NULL,NULL),
(358,40,'122025',150000,150000,'2025-12-12',1,'00338.BLR.MST.',NULL,'terkirim','2025-12-12 15:08:51',2,0,0,0,0,NULL,NULL),
(360,125,'122025',150000,150000,'2025-12-12',1,'00337.BLR.MST.',NULL,'belum','2025-12-12 15:03:30',2,0,0,0,0,NULL,NULL),
(361,2,'012026',75000,75000,'2026-01-08',1,'00414.BLR.MST.',NULL,'terkirim','2026-01-08 22:31:36',2,0,0,0,0,NULL,NULL),
(362,3,'012026',100000,100000,'2026-01-05',1,'00358.BLR.MST.',NULL,'belum','2026-01-05 13:22:10',2,0,0,0,0,NULL,NULL),
(363,4,'012026',100000,100000,'2026-01-01',1,'00344.BLR.MST.',NULL,'belum','2026-01-01 08:40:59',2,0,0,0,0,NULL,NULL),
(364,5,'012026',150000,150000,'2026-01-06',1,'00363.BLR.MST.',NULL,'terkirim','2026-01-06 06:42:59',2,0,0,0,0,NULL,NULL),
(365,6,'012026',150000,150000,'2026-01-08',1,'00409.BLR.MST.',NULL,'terkirim','2026-01-08 11:06:03',2,0,0,0,0,NULL,NULL),
(366,7,'012026',150000,150000,'2026-01-11',1,'00458.BLR.MST.',NULL,'terkirim','2026-01-11 07:47:54',2,0,0,0,0,NULL,NULL),
(367,8,'012026',150000,150000,'2026-01-10',1,'00447.BLR.MST.',NULL,'terkirim','2026-01-10 18:45:30',2,0,0,0,0,NULL,NULL),
(368,9,'012026',150000,150000,'2026-01-10',1,'00455.BLR.MST.',NULL,'terkirim','2026-01-10 21:27:09',2,0,0,0,0,NULL,NULL),
(369,10,'012026',150000,150000,'2026-01-01',1,'00342.BLR.MST.',NULL,'belum','2026-01-01 08:40:04',2,0,0,0,0,NULL,NULL),
(370,11,'012026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(371,12,'012026',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(372,13,'012026',175000,175000,'2026-01-10',1,'00445.BLR.MST.',NULL,'terkirim','2026-01-10 15:04:05',2,0,0,0,0,NULL,NULL),
(373,14,'012026',150000,150000,'2026-01-10',1,'00443.BLR.MST.',NULL,'terkirim','2026-01-10 14:43:07',2,0,0,0,0,NULL,NULL),
(374,15,'012026',150000,150000,'2026-01-06',1,'00380.BLR.MST.',NULL,'terkirim','2026-01-06 09:54:23',2,0,0,0,0,NULL,NULL),
(375,16,'012026',75000,75000,'2026-01-06',1,'00362.BLR.MST.',NULL,'terkirim','2026-01-06 06:42:36',2,0,0,0,0,NULL,NULL),
(376,17,'012026',150000,150000,'2026-01-08',1,'00405.BLR.MST.',NULL,'terkirim','2026-01-08 10:16:19',2,0,0,0,0,NULL,NULL),
(378,19,'012026',100000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(379,20,'012026',175000,175000,'2026-01-04',1,'00354.BLR.MST.',NULL,'belum','2026-01-04 12:32:29',2,0,0,0,0,NULL,NULL),
(380,21,'012026',150000,150000,'2026-01-08',1,'00413.BLR.MST.',NULL,'terkirim','2026-01-08 16:05:54',2,0,0,0,0,NULL,NULL),
(381,22,'012026',150000,150000,'2026-01-11',1,'00462.BLR.MST.',NULL,'terkirim','2026-01-11 08:45:41',2,0,0,0,0,NULL,NULL),
(382,23,'012026',150000,150000,'2026-01-10',1,'00441.BLR.MST.',NULL,'terkirim','2026-01-10 14:30:54',2,0,0,0,0,NULL,NULL),
(383,24,'012026',150000,150000,'2026-01-01',1,'00345.BLR.MST.',NULL,'belum','2026-01-01 08:41:19',2,0,0,0,0,NULL,NULL),
(384,25,'012026',175000,175000,'2026-01-06',1,'00371.BLR.MST.',NULL,'terkirim','2026-01-06 07:35:56',2,0,0,0,0,NULL,NULL),
(385,26,'012026',150000,150000,'2026-01-08',1,'00411.BLR.MST.',NULL,'terkirim','2026-01-08 11:19:14',2,0,0,0,0,NULL,NULL),
(386,27,'012026',150000,150000,'2026-01-08',1,'00407.BLR.MST.',NULL,'terkirim','2026-01-08 10:16:53',2,0,0,0,0,NULL,NULL),
(387,28,'012026',150000,150000,'2026-01-10',1,'00434.BLR.MST.',NULL,'terkirim','2026-01-10 14:20:00',2,0,0,0,0,NULL,NULL),
(388,29,'012026',175000,175000,'2026-01-06',1,'00381.BLR.MST.',NULL,'terkirim','2026-01-06 11:18:09',2,0,0,0,0,NULL,NULL),
(389,30,'012026',150000,150000,'2026-01-06',1,'00365.BLR.MST.',NULL,'terkirim','2026-01-06 06:45:41',2,0,0,0,0,NULL,NULL),
(390,31,'012026',150000,150000,'2026-01-01',1,'00351.BLR.MST.',NULL,'belum','2026-01-01 11:55:00',2,0,0,0,0,NULL,NULL),
(391,32,'012026',175000,175000,'2026-01-10',1,'00431.BLR.MST.',NULL,'terkirim','2026-01-10 14:13:14',2,0,0,0,0,NULL,NULL),
(392,33,'012026',150000,150000,'2026-01-06',1,'00392.BLR.MST.',NULL,'terkirim','2026-01-06 23:41:16',2,0,0,0,0,NULL,NULL),
(393,34,'012026',175000,175000,'2026-01-10',1,'00442.BLR.MST.',NULL,'terkirim','2026-01-10 14:31:07',2,0,0,0,0,NULL,NULL),
(394,35,'012026',150000,150000,'2026-01-09',1,'00419.BLR.MST.',NULL,'terkirim','2026-01-09 08:59:01',2,0,0,0,0,NULL,NULL),
(395,36,'012026',150000,150000,'2026-01-07',1,'00399.BLR.MST.',NULL,'terkirim','2026-01-07 20:26:02',2,0,0,0,0,NULL,NULL),
(396,37,'012026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(397,38,'012026',150000,150000,'2026-01-06',1,'00367.BLR.MST.',NULL,'terkirim','2026-01-06 06:48:26',2,0,0,0,0,NULL,NULL),
(398,39,'012026',150000,150000,'2026-01-11',1,'00457.BLR.MST.',NULL,'terkirim','2026-01-11 07:37:26',2,0,0,0,0,NULL,NULL),
(399,40,'012026',150000,150000,'2026-01-10',1,'00422.BLR.MST.',NULL,'terkirim','2026-01-10 06:16:51',2,0,0,0,0,NULL,NULL),
(400,41,'012026',175000,175000,'2026-01-11',1,'00456.BLR.MST.',NULL,'terkirim','2026-01-11 07:13:40',2,0,0,0,0,NULL,NULL),
(401,42,'012026',175000,175000,'2026-01-06',1,'00375.BLR.MST.',NULL,'terkirim','2026-01-06 08:38:02',2,0,0,0,0,NULL,NULL),
(402,43,'012026',175000,175000,'2026-01-06',1,'00374.BLR.MST.',NULL,'terkirim','2026-01-06 08:37:42',2,0,0,0,0,NULL,NULL),
(403,44,'012026',175000,175000,'2026-01-10',1,'00450.BLR.MST.',NULL,'terkirim','2026-01-10 18:47:09',2,0,0,0,0,NULL,NULL),
(404,45,'012026',150000,150000,'2026-01-06',1,'00383.BLR.MST.',NULL,'terkirim','2026-01-06 11:24:51',2,0,0,0,0,NULL,NULL),
(405,46,'012026',175000,175000,'2026-01-06',1,'00364.BLR.MST.',NULL,'terkirim','2026-01-06 06:43:05',2,0,0,0,0,NULL,NULL),
(406,47,'012026',150000,150000,'2026-01-10',1,'00454.BLR.MST.',NULL,'terkirim','2026-01-10 19:26:06',2,0,0,0,0,NULL,NULL),
(407,48,'012026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(408,49,'012026',150000,150000,'2026-01-10',1,'00430.BLR.MST.',NULL,'terkirim','2026-01-10 12:33:39',2,0,0,0,0,NULL,NULL),
(409,50,'012026',150000,150000,'2026-01-10',1,'00428.BLR.MST.',NULL,'terkirim','2026-01-10 08:09:22',2,0,0,0,0,NULL,NULL),
(410,51,'012026',150000,150000,'2026-01-06',1,'00366.BLR.MST.',NULL,'terkirim','2026-01-06 06:47:04',2,0,0,0,0,NULL,NULL),
(411,52,'012026',150000,150000,'2026-01-09',1,'00417.BLR.MST.',NULL,'terkirim','2026-01-09 07:52:52',2,0,0,0,0,NULL,NULL),
(412,53,'012026',150000,150000,'2026-01-06',1,'00395.BLR.MST.',NULL,'terkirim','2026-01-06 23:43:44',2,0,0,0,0,NULL,NULL),
(413,54,'012026',150000,150000,'2026-01-10',1,'00425.BLR.MST.',NULL,'terkirim','2026-01-10 06:33:54',2,0,0,0,0,NULL,NULL),
(414,55,'012026',150000,150000,'2026-01-10',1,'00427.BLR.MST.',NULL,'terkirim','2026-01-10 08:09:00',2,0,0,0,0,NULL,NULL),
(415,56,'012026',150000,150000,'2026-01-08',1,'00410.BLR.MST.',NULL,'terkirim','2026-01-08 11:11:24',2,0,0,0,0,NULL,NULL),
(416,57,'012026',150000,150000,'2026-01-06',1,'00384.BLR.MST.',NULL,'terkirim','2026-01-06 13:18:15',2,0,0,0,0,NULL,NULL),
(417,58,'012026',150000,150000,'2026-01-11',1,'00467.BLR.MST.',NULL,'terkirim','2026-01-11 20:01:58',2,0,0,0,0,NULL,NULL),
(418,59,'012026',150000,150000,'2026-01-10',1,'00423.BLR.MST.',NULL,'terkirim','2026-01-10 06:17:40',2,0,0,0,0,NULL,NULL),
(419,60,'012026',150000,150000,'2026-01-10',1,'00426.BLR.MST.',NULL,'terkirim','2026-01-10 06:35:47',2,0,0,0,0,NULL,NULL),
(420,61,'012026',175000,175000,'2026-01-06',1,'00387.BLR.MST.',NULL,'terkirim','2026-01-06 16:33:54',2,0,0,0,0,NULL,NULL),
(421,62,'012026',150000,150000,'2026-01-10',1,'00435.BLR.MST.',NULL,'terkirim','2026-01-10 14:21:51',2,0,0,0,0,NULL,NULL),
(422,63,'012026',150000,150000,'2026-01-10',1,'00433.BLR.MST.',NULL,'terkirim','2026-01-10 14:14:33',2,0,0,0,0,NULL,NULL),
(423,64,'012026',150000,150000,'2026-01-06',1,'00382.BLR.MST.',NULL,'terkirim','2026-01-06 11:18:25',2,0,0,0,0,NULL,NULL),
(424,65,'012026',100000,100000,'2026-01-10',1,'00421.BLR.MST.',NULL,'terkirim','2026-01-10 06:16:18',2,0,0,0,0,NULL,NULL),
(425,66,'012026',100000,100000,'2026-01-08',1,'00406.BLR.MST.',NULL,'terkirim','2026-01-08 10:16:29',2,0,0,0,0,NULL,NULL),
(426,67,'012026',100000,100000,'2026-01-10',1,'00448.BLR.MST.',NULL,'terkirim','2026-01-10 18:46:15',2,0,0,0,0,NULL,NULL),
(427,68,'012026',150000,150000,'2026-01-10',1,'00440.BLR.MST.',NULL,'terkirim','2026-01-10 14:30:21',2,0,0,0,0,NULL,NULL),
(428,69,'012026',100000,100000,'2026-01-08',1,'00408.BLR.MST.',NULL,'terkirim','2026-01-08 10:40:57',2,0,0,0,0,NULL,NULL),
(429,70,'012026',175000,175000,'2026-01-10',1,'00446.BLR.MST.',NULL,'terkirim','2026-01-10 15:09:17',2,0,0,0,0,NULL,NULL),
(430,71,'012026',150000,150000,'2026-01-01',1,'00341.BLR.MST.',NULL,'belum','2026-01-01 08:39:42',2,0,0,0,0,NULL,NULL),
(431,72,'012026',175000,175000,'2026-01-06',1,'00378.BLR.MST.',NULL,'terkirim','2026-01-06 09:45:40',2,0,0,0,0,NULL,NULL),
(432,73,'012026',150000,150000,'2026-01-06',1,'00391.BLR.MST.',NULL,'terkirim','2026-01-06 23:40:55',2,0,0,0,0,NULL,NULL),
(433,74,'012026',150000,150000,'2026-01-05',1,'00356.BLR.MST.',NULL,'belum','2026-01-05 10:37:23',2,0,0,0,0,NULL,NULL),
(434,75,'012026',175000,175000,'2026-01-06',1,'00376.BLR.MST.',NULL,'terkirim','2026-01-06 08:40:38',2,0,0,0,0,NULL,NULL),
(435,76,'012026',100000,100000,'2026-01-06',1,'00379.BLR.MST.',NULL,'terkirim','2026-01-06 09:52:53',2,0,0,0,0,NULL,NULL),
(436,77,'012026',150000,150000,'2026-01-08',1,'00415.BLR.MST.',NULL,'terkirim','2026-01-08 22:31:48',2,0,0,0,0,NULL,NULL),
(437,78,'012026',150000,150000,'2026-01-10',1,'00429.BLR.MST.',NULL,'terkirim','2026-01-10 08:10:12',2,0,0,0,0,NULL,NULL),
(438,79,'012026',150000,150000,'2026-01-06',1,'00373.BLR.MST.',NULL,'terkirim','2026-01-06 08:37:25',2,0,0,0,0,NULL,NULL),
(439,80,'012026',150000,150000,'2026-01-11',1,'00461.BLR.MST.',NULL,'terkirim','2026-01-11 08:27:46',2,0,0,0,0,NULL,NULL),
(440,81,'012026',150000,150000,'2026-01-11',1,'00466.BLR.MST.',NULL,'terkirim','2026-01-11 15:25:50',2,0,0,0,0,NULL,NULL),
(441,82,'012026',150000,150000,'2026-04-30',1,'00001.BLR.MST.',NULL,'terkirim','2026-04-30 07:18:12',NULL,0,0,0,0,NULL,NULL),
(442,83,'012026',150000,150000,'2026-01-10',1,'00453.BLR.MST.',NULL,'terkirim','2026-01-10 18:48:40',2,0,0,0,0,NULL,NULL),
(443,84,'012026',150000,150000,'2026-01-01',1,'00350.BLR.MST.',NULL,'belum','2026-01-01 08:42:18',2,0,0,0,0,NULL,NULL),
(444,85,'012026',150000,150000,'2026-01-11',1,'00460.BLR.MST.',NULL,'terkirim','2026-01-11 08:13:21',2,0,0,0,0,NULL,NULL),
(445,86,'012026',150000,150000,'2026-01-07',1,'00403.BLR.MST.',NULL,'terkirim','2026-01-07 20:44:27',2,0,0,0,0,NULL,NULL),
(446,87,'012026',175000,175000,'2026-01-06',1,'00393.BLR.MST.',NULL,'terkirim','2026-01-06 23:41:30',2,0,0,0,0,NULL,NULL),
(447,88,'012026',150000,150000,'2026-01-09',1,'00420.BLR.MST.',NULL,'terkirim','2026-01-09 11:07:47',2,0,0,0,0,NULL,NULL),
(448,89,'012026',150000,150000,'2026-01-07',1,'00398.BLR.MST.',NULL,'terkirim','2026-01-07 13:45:16',2,0,0,0,0,NULL,NULL),
(449,90,'012026',150000,150000,'2026-01-06',1,'00361.BLR.MST.',NULL,'belum','2026-01-06 06:19:18',2,0,0,0,0,NULL,NULL),
(450,91,'012026',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(451,92,'012026',150000,150000,'2026-01-07',1,'00397.BLR.MST.',NULL,'terkirim','2026-01-07 12:55:42',2,0,0,0,0,NULL,NULL),
(452,93,'012026',150000,150000,'2026-01-11',1,'00464.BLR.MST.',NULL,'terkirim','2026-01-11 09:36:28',2,0,0,0,0,NULL,NULL),
(453,94,'012026',150000,150000,'2026-01-06',1,'00372.BLR.MST.',NULL,'terkirim','2026-01-06 08:37:03',2,0,0,0,0,NULL,NULL),
(454,95,'012026',150000,150000,'2026-01-11',1,'00459.BLR.MST.',NULL,'terkirim','2026-01-11 08:11:29',2,0,0,0,0,NULL,NULL),
(455,96,'012026',150000,150000,'2026-01-11',1,'00463.BLR.MST.',NULL,'terkirim','2026-01-11 09:05:49',2,0,0,0,0,NULL,NULL),
(456,97,'012026',150000,150000,'2026-01-01',1,'00349.BLR.MST.',NULL,'belum','2026-01-01 08:42:03',2,0,0,0,0,NULL,NULL),
(457,98,'012026',150000,150000,'2026-01-10',1,'00424.BLR.MST.',NULL,'terkirim','2026-01-10 06:18:42',2,0,0,0,0,NULL,NULL),
(458,99,'012026',150000,150000,'2026-01-10',1,'00432.BLR.MST.',NULL,'terkirim','2026-01-10 14:13:21',2,0,0,0,0,NULL,NULL),
(459,100,'012026',175000,175000,'2026-01-10',1,'00444.BLR.MST.',NULL,'terkirim','2026-01-10 14:45:33',2,0,0,0,0,NULL,NULL),
(460,101,'012026',150000,150000,'2026-01-06',1,'00386.BLR.MST.',NULL,'terkirim','2026-01-06 16:33:40',2,0,0,0,0,NULL,NULL),
(461,102,'012026',150000,150000,'2026-01-10',1,'00452.BLR.MST.',NULL,'terkirim','2026-01-10 18:48:03',2,0,0,0,0,NULL,NULL),
(462,104,'012026',175000,175000,'2026-01-06',1,'00390.BLR.MST.',NULL,'terkirim','2026-01-06 18:28:36',2,0,0,0,0,NULL,NULL),
(463,105,'012026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(464,106,'012026',150000,150000,'2026-01-04',1,'00353.BLR.MST.',NULL,'belum','2026-01-04 09:54:25',2,0,0,0,0,NULL,NULL),
(465,107,'012026',175000,175000,'2026-01-08',1,'00412.BLR.MST.',NULL,'terkirim','2026-01-08 12:11:28',2,0,0,0,0,NULL,NULL),
(466,108,'012026',150000,150000,'2026-01-10',1,'00449.BLR.MST.',NULL,'terkirim','2026-01-10 18:46:43',2,0,0,0,0,NULL,NULL),
(467,109,'012026',175000,175000,'2026-01-10',1,'00438.BLR.MST.',NULL,'terkirim','2026-01-10 14:26:00',2,0,0,0,0,NULL,NULL),
(468,110,'012026',150000,150000,'2026-01-10',1,'00439.BLR.MST.',NULL,'terkirim','2026-01-10 14:30:03',2,0,0,0,0,NULL,NULL),
(469,112,'012026',150000,150000,'2026-01-10',1,'00451.BLR.MST.',NULL,'terkirim','2026-01-10 18:47:39',2,0,0,0,0,NULL,NULL),
(470,113,'012026',150000,150000,'2026-01-01',1,'00352.BLR.MST.',NULL,'belum','2026-01-01 17:50:49',2,0,0,0,0,NULL,NULL),
(471,114,'012026',150000,150000,'2026-01-06',1,'00385.BLR.MST.',NULL,'terkirim','2026-01-06 16:33:28',2,0,0,0,0,NULL,NULL),
(472,115,'012026',150000,150000,'2026-01-10',1,'00436.BLR.MST.',NULL,'terkirim','2026-01-10 14:25:16',2,0,0,0,0,NULL,NULL),
(473,117,'012026',150000,150000,'2026-01-04',1,'00355.BLR.MST.',NULL,'belum','2026-01-04 19:07:36',2,0,0,0,0,NULL,NULL),
(475,119,'012026',150000,150000,'2026-01-06',1,'00389.BLR.MST.',NULL,'terkirim','2026-01-06 17:57:31',2,0,0,0,0,NULL,NULL),
(476,120,'012026',150000,150000,'2026-01-06',1,'00388.BLR.MST.',NULL,'terkirim','2026-01-06 17:57:20',2,0,0,0,0,NULL,NULL),
(477,121,'012026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(478,122,'012026',150000,150000,'2026-01-07',1,'00400.BLR.MST.',NULL,'terkirim','2026-01-07 20:26:43',2,0,0,0,0,NULL,NULL),
(479,123,'012026',150000,150000,'2026-01-07',1,'00404.BLR.MST.',NULL,'terkirim','2026-01-07 21:57:38',2,0,0,0,0,NULL,NULL),
(480,124,'012026',150000,150000,'2026-01-06',1,'00370.BLR.MST.',NULL,'terkirim','2026-01-06 07:35:40',2,0,0,0,0,NULL,NULL),
(481,125,'012026',150000,150000,'2026-01-01',1,'00343.BLR.MST.',NULL,'belum','2026-01-01 08:40:43',2,0,0,0,0,NULL,NULL),
(482,126,'012026',175000,175000,'2026-01-06',1,'00377.BLR.MST.',NULL,'terkirim','2026-01-06 09:13:58',2,0,0,0,0,NULL,NULL),
(483,127,'012026',150000,150000,'2026-01-05',1,'00360.BLR.MST.',NULL,'belum','2026-01-05 22:16:24',2,0,0,0,0,NULL,NULL),
(484,128,'012026',150000,150000,'2026-01-06',1,'00369.BLR.MST.',NULL,'terkirim','2026-01-06 07:14:08',2,0,0,0,0,NULL,NULL),
(485,129,'012026',150000,150000,'2026-01-07',1,'00396.BLR.MST.',NULL,'terkirim','2026-01-07 09:17:13',2,0,0,0,0,NULL,NULL),
(486,130,'012026',175000,175000,'2026-01-05',1,'00357.BLR.MST.',NULL,'belum','2026-01-05 13:00:13',2,0,0,0,0,NULL,NULL),
(487,131,'012026',175000,175000,'2026-01-10',1,'00437.BLR.MST.',NULL,'terkirim','2026-01-10 14:25:22',2,0,0,0,0,NULL,NULL),
(488,132,'012026',150000,150000,'2026-01-05',1,'00359.BLR.MST.',NULL,'belum','2026-01-05 22:15:54',2,0,0,0,0,NULL,NULL),
(489,133,'012026',150000,150000,'2026-01-06',1,'00368.BLR.MST.',NULL,'terkirim','2026-01-06 07:13:52',2,0,0,0,0,NULL,NULL),
(490,134,'012026',150000,150000,'2026-01-07',1,'00402.BLR.MST.',NULL,'terkirim','2026-01-07 20:28:23',2,0,0,0,0,NULL,NULL),
(491,135,'012026',150000,150000,'2026-01-07',1,'00401.BLR.MST.',NULL,'terkirim','2026-01-07 20:27:29',2,0,0,0,0,NULL,NULL),
(492,136,'012026',150000,150000,'2026-01-09',1,'00418.BLR.MST.',NULL,'terkirim','2026-01-09 08:06:55',2,0,0,0,0,NULL,NULL),
(493,2,'022026',75000,75000,'2026-02-09',1,'00551.BLR.MST.',NULL,'terkirim','2026-02-09 12:51:52',2,0,0,0,0,NULL,NULL),
(494,3,'022026',100000,100000,'2026-02-04',1,'00482.BLR.MST.',NULL,'belum','2026-02-04 11:25:34',2,0,0,0,0,NULL,NULL),
(495,4,'022026',100000,100000,'2026-02-01',1,'00470.BLR.MST.',NULL,'belum','2026-02-01 10:52:29',2,0,0,0,0,NULL,NULL),
(496,5,'022026',150000,150000,'2026-02-05',1,'00487.BLR.MST.',NULL,'terkirim','2026-02-05 11:55:38',2,0,0,0,0,NULL,NULL),
(497,6,'022026',150000,150000,'2026-02-10',1,'00578.BLR.MST.',NULL,'terkirim','2026-02-10 19:10:32',2,0,0,0,0,NULL,NULL),
(498,7,'022026',150000,150000,'2026-02-10',1,'00582.BLR.MST.',NULL,'terkirim','2026-02-10 20:53:50',2,0,0,0,0,NULL,NULL),
(499,8,'022026',150000,150000,'2026-02-10',1,'00580.BLR.MST.',NULL,'terkirim','2026-02-10 19:11:14',2,0,0,0,0,NULL,NULL),
(500,9,'022026',150000,150000,'2026-02-22',1,'00599.BLR.MST.',NULL,'terkirim','2026-02-22 21:01:15',2,0,0,0,0,NULL,NULL),
(501,10,'022026',150000,150000,'2026-02-03',1,'00479.BLR.MST.',NULL,'belum','2026-02-03 08:38:28',2,0,0,0,0,NULL,NULL),
(502,11,'022026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(503,12,'022026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(504,13,'022026',175000,175000,'2026-02-09',1,'00560.BLR.MST.',NULL,'terkirim','2026-02-09 22:22:05',2,0,0,0,0,NULL,NULL),
(505,14,'022026',150000,150000,'2026-02-10',1,'00565.BLR.MST.',NULL,'terkirim','2026-02-10 13:44:16',2,0,0,0,0,NULL,NULL),
(506,15,'022026',150000,150000,'2026-02-05',1,'00511.BLR.MST.',NULL,'terkirim','2026-02-05 19:11:21',2,0,0,0,0,NULL,NULL),
(507,16,'022026',75000,75000,'2026-02-05',1,'00488.BLR.MST.',NULL,'terkirim','2026-02-05 11:55:50',2,0,0,0,0,NULL,NULL),
(508,17,'022026',150000,150000,'2026-02-06',1,'00517.BLR.MST.',NULL,'terkirim','2026-02-06 04:58:26',2,0,0,0,0,NULL,NULL),
(509,19,'022026',100000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(510,20,'022026',175000,175000,'2026-02-01',1,'00474.BLR.MST.',NULL,'belum','2026-02-01 15:15:22',2,0,0,0,0,NULL,NULL),
(511,21,'022026',150000,150000,'2026-02-08',1,'00537.BLR.MST.',NULL,'terkirim','2026-02-08 08:34:17',2,0,0,0,0,NULL,NULL),
(512,22,'022026',150000,150000,'2026-02-11',1,'00593.BLR.MST.',NULL,'terkirim','2026-02-11 15:01:15',2,0,0,0,0,NULL,NULL),
(513,23,'022026',150000,150000,'2026-02-10',1,'00561.BLR.MST.',NULL,'terkirim','2026-02-10 06:18:32',2,0,0,0,0,NULL,NULL),
(514,24,'022026',150000,150000,'2026-02-01',1,'00468.BLR.MST.',NULL,'belum','2026-02-01 10:51:48',2,0,0,0,0,NULL,NULL),
(515,25,'022026',175000,175000,'2026-02-10',1,'00569.BLR.MST.',NULL,'terkirim','2026-02-10 14:12:47',2,0,0,0,0,NULL,NULL),
(516,26,'022026',150000,150000,'2026-02-10',1,'00563.BLR.MST.',NULL,'terkirim','2026-02-10 08:24:33',2,0,0,0,0,NULL,NULL),
(517,27,'022026',150000,150000,'2026-02-10',1,'00564.BLR.MST.',NULL,'terkirim','2026-02-10 13:43:54',2,0,0,0,0,NULL,NULL),
(518,28,'022026',150000,150000,'2026-02-09',1,'00554.BLR.MST.',NULL,'terkirim','2026-02-09 16:25:31',2,0,0,0,0,NULL,NULL),
(519,29,'022026',175000,175000,'2026-02-09',1,'00550.BLR.MST.',NULL,'terkirim','2026-02-09 12:51:47',2,0,0,0,0,NULL,NULL),
(520,30,'022026',150000,150000,'2026-02-05',1,'00503.BLR.MST.',NULL,'terkirim','2026-02-05 14:01:10',2,0,0,0,0,NULL,NULL),
(521,31,'022026',150000,150000,'2026-02-02',1,'00475.BLR.MST.',NULL,'belum','2026-02-02 12:42:14',2,0,0,0,0,NULL,NULL),
(522,32,'022026',175000,175000,'2026-02-10',1,'00575.BLR.MST.',NULL,'terkirim','2026-02-10 19:09:21',2,0,0,0,0,NULL,NULL),
(523,33,'022026',150000,150000,'2026-02-05',1,'00490.BLR.MST.',NULL,'terkirim','2026-02-05 12:12:39',2,0,0,0,0,NULL,NULL),
(524,34,'022026',175000,175000,'2026-02-10',1,'00572.BLR.MST.',NULL,'terkirim','2026-02-10 14:51:15',2,0,0,0,0,NULL,NULL),
(525,35,'022026',150000,150000,'2026-02-09',1,'00547.BLR.MST.',NULL,'terkirim','2026-02-09 06:13:02',2,0,0,0,0,NULL,NULL),
(526,36,'022026',150000,150000,'2026-02-08',1,'00541.BLR.MST.',NULL,'terkirim','2026-02-08 11:51:35',2,0,0,0,0,NULL,NULL),
(527,37,'022026',150000,150000,'2026-02-10',1,'00567.BLR.MST.',NULL,'terkirim','2026-02-10 14:12:13',2,0,0,0,0,NULL,NULL),
(528,38,'022026',150000,150000,'2026-02-07',1,'00535.BLR.MST.',NULL,'terkirim','2026-02-07 13:49:47',2,0,0,0,0,NULL,NULL),
(529,39,'022026',150000,150000,'2026-02-11',1,'00594.BLR.MST.',NULL,'terkirim','2026-02-11 19:53:56',2,0,0,0,0,NULL,NULL),
(530,40,'022026',150000,150000,'2026-02-10',1,'00579.BLR.MST.',NULL,'terkirim','2026-02-10 19:10:55',2,0,0,0,0,NULL,NULL),
(531,41,'022026',175000,175000,'2026-02-10',1,'00581.BLR.MST.',NULL,'terkirim','2026-02-10 19:15:05',2,0,0,0,0,NULL,NULL),
(532,42,'022026',175000,175000,'2026-02-05',1,'00492.BLR.MST.',NULL,'terkirim','2026-02-05 12:13:34',2,0,0,0,0,NULL,NULL),
(533,43,'022026',175000,175000,'2026-02-06',1,'00526.BLR.MST.',NULL,'terkirim','2026-02-06 16:08:47',2,0,0,0,0,NULL,NULL),
(534,44,'022026',175000,175000,'2026-02-05',1,'00510.BLR.MST.',NULL,'terkirim','2026-02-05 19:10:58',2,0,0,0,0,NULL,NULL),
(535,45,'022026',150000,150000,'2026-02-04',1,'00483.BLR.MST.',NULL,'belum','2026-02-04 22:50:55',2,0,0,0,0,NULL,NULL),
(536,46,'022026',175000,175000,'2026-02-05',1,'00493.BLR.MST.',NULL,'terkirim','2026-02-05 12:13:59',2,0,0,0,0,NULL,NULL),
(537,47,'022026',150000,150000,'2026-02-10',1,'00576.BLR.MST.',NULL,'terkirim','2026-02-10 19:09:46',2,0,0,0,0,NULL,NULL),
(538,48,'022026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(539,49,'022026',150000,150000,'2026-02-09',1,'00548.BLR.MST.',NULL,'terkirim','2026-02-09 12:50:55',2,0,0,0,0,NULL,NULL),
(540,50,'022026',150000,150000,'2026-02-10',1,'00562.BLR.MST.',NULL,'terkirim','2026-02-10 08:24:11',2,0,0,0,0,NULL,NULL),
(541,51,'022026',150000,150000,'2026-02-07',1,'00530.BLR.MST.',NULL,'terkirim','2026-02-07 05:34:09',2,0,0,0,0,NULL,NULL),
(542,52,'022026',150000,150000,'2026-02-05',1,'00515.BLR.MST.',NULL,'terkirim','2026-02-05 19:16:25',2,0,0,0,0,NULL,NULL),
(543,53,'022026',150000,150000,'2026-02-09',1,'00552.BLR.MST.',NULL,'terkirim','2026-02-09 13:43:50',2,0,0,0,0,NULL,NULL),
(544,54,'022026',150000,150000,'2026-02-10',1,'00586.BLR.MST.',NULL,'terkirim','2026-02-10 23:00:13',2,0,0,0,0,NULL,NULL),
(545,55,'022026',150000,150000,'2026-02-10',1,'00574.BLR.MST.',NULL,'terkirim','2026-02-10 14:54:06',2,0,0,0,0,NULL,NULL),
(546,56,'022026',150000,150000,'2026-02-11',1,'00588.BLR.MST.',NULL,'terkirim','2026-02-11 00:00:51',2,0,0,0,0,NULL,NULL),
(547,57,'022026',150000,150000,'2026-02-05',1,'00491.BLR.MST.',NULL,'terkirim','2026-02-05 12:13:08',2,0,0,0,0,NULL,NULL),
(548,58,'022026',150000,150000,'2026-02-10',1,'00573.BLR.MST.',NULL,'terkirim','2026-02-10 14:52:34',2,0,0,0,0,NULL,NULL),
(549,59,'022026',150000,150000,'2026-02-10',1,'00570.BLR.MST.',NULL,'terkirim','2026-02-10 14:13:05',2,0,0,0,0,NULL,NULL),
(550,60,'022026',150000,150000,'2026-02-11',1,'00591.BLR.MST.',NULL,'terkirim','2026-02-11 10:31:42',2,0,0,0,0,NULL,NULL),
(551,61,'022026',175000,175000,'2026-02-05',1,'00500.BLR.MST.',NULL,'terkirim','2026-02-05 12:45:36',2,0,0,0,0,NULL,NULL),
(552,62,'022026',150000,150000,'2026-02-07',1,'00534.BLR.MST.',NULL,'terkirim','2026-02-07 12:26:03',2,0,0,0,0,NULL,NULL),
(553,63,'022026',150000,150000,'2026-02-08',1,'00546.BLR.MST.',NULL,'terkirim','2026-02-08 23:30:14',2,0,0,0,0,NULL,NULL),
(554,64,'022026',150000,150000,'2026-02-07',1,'00532.BLR.MST.',NULL,'terkirim','2026-02-07 09:26:39',2,0,0,0,0,NULL,NULL),
(555,65,'022026',100000,100000,'2026-02-09',1,'00556.BLR.MST.',NULL,'terkirim','2026-02-09 22:17:19',2,0,0,0,0,NULL,NULL),
(556,66,'022026',100000,100000,'2026-02-08',1,'00543.BLR.MST.',NULL,'terkirim','2026-02-08 20:39:10',2,0,0,0,0,NULL,NULL),
(557,67,'022026',100000,100000,'2026-02-10',1,'00587.BLR.MST.',NULL,'terkirim','2026-02-10 23:00:25',2,0,0,0,0,NULL,NULL),
(558,68,'022026',150000,150000,'2026-02-07',1,'00531.BLR.MST.',NULL,'terkirim','2026-02-07 05:34:49',2,0,0,0,0,NULL,NULL),
(559,69,'022026',100000,100000,'2026-02-03',1,'00477.BLR.MST.',NULL,'belum','2026-02-03 08:36:27',2,0,0,0,0,NULL,NULL),
(560,70,'022026',175000,175000,'2026-02-07',1,'00536.BLR.MST.',NULL,'terkirim','2026-02-07 17:37:43',2,0,0,0,0,NULL,NULL),
(561,71,'022026',150000,150000,'2026-02-01',1,'00472.BLR.MST.',NULL,'belum','2026-02-01 10:53:16',2,0,0,0,0,NULL,NULL),
(562,72,'022026',175000,175000,'2026-02-05',1,'00509.BLR.MST.',NULL,'terkirim','2026-02-05 19:10:33',2,0,0,0,0,NULL,NULL),
(563,73,'022026',150000,150000,'2026-02-03',1,'00478.BLR.MST.',NULL,'belum','2026-02-03 08:37:03',2,0,0,0,0,NULL,NULL),
(564,74,'022026',150000,150000,'2026-02-05',1,'00489.BLR.MST.',NULL,'terkirim','2026-02-05 12:12:22',2,0,0,0,0,NULL,NULL),
(565,75,'022026',175000,175000,'2026-02-05',1,'00495.BLR.MST.',NULL,'terkirim','2026-02-05 12:22:12',2,0,0,0,0,NULL,NULL),
(566,76,'022026',100000,100000,'2026-02-05',1,'00496.BLR.MST.',NULL,'terkirim','2026-02-05 12:24:45',2,0,0,0,0,NULL,NULL),
(567,77,'022026',150000,150000,'2026-02-08',1,'00544.BLR.MST.',NULL,'terkirim','2026-02-08 20:39:32',2,0,0,0,0,NULL,NULL),
(568,78,'022026',150000,150000,'2026-02-08',1,'00539.BLR.MST.',NULL,'terkirim','2026-02-08 09:16:01',2,0,0,0,0,NULL,NULL),
(569,79,'022026',150000,150000,'2026-02-05',1,'00514.BLR.MST.',NULL,'terkirim','2026-02-05 19:13:09',2,0,0,0,0,NULL,NULL),
(570,80,'022026',150000,150000,'2026-02-10',1,'00584.BLR.MST.',NULL,'terkirim','2026-02-10 21:30:56',2,0,0,0,0,NULL,NULL),
(571,81,'022026',150000,150000,'2026-02-11',1,'00589.BLR.MST.',NULL,'terkirim','2026-02-11 06:17:27',2,0,0,0,0,NULL,NULL),
(572,82,'022026',150000,150000,'2026-02-02',1,'00476.BLR.MST.',NULL,'belum','2026-02-02 12:42:21',2,0,0,0,0,NULL,NULL),
(573,83,'022026',150000,150000,'2026-02-10',1,'00583.BLR.MST.',NULL,'terkirim','2026-02-10 20:54:01',2,0,0,0,0,NULL,NULL),
(574,84,'022026',150000,150000,'2026-02-01',1,'00471.BLR.MST.',NULL,'belum','2026-02-01 10:52:42',2,0,0,0,0,NULL,NULL),
(575,85,'022026',150000,150000,'2026-02-06',1,'00521.BLR.MST.',NULL,'terkirim','2026-02-06 08:06:23',2,0,0,0,0,NULL,NULL),
(576,86,'022026',150000,150000,'2026-02-09',1,'00555.BLR.MST.',NULL,'terkirim','2026-02-09 21:01:04',2,0,0,0,0,NULL,NULL),
(577,87,'022026',175000,175000,'2026-02-05',1,'00508.BLR.MST.',NULL,'terkirim','2026-02-05 19:10:04',2,0,0,0,0,NULL,NULL),
(578,88,'022026',150000,150000,'2026-02-10',1,'00571.BLR.MST.',NULL,'terkirim','2026-02-10 14:50:45',2,0,0,0,0,NULL,NULL),
(579,89,'022026',150000,150000,'2026-02-06',1,'00520.BLR.MST.',NULL,'terkirim','2026-02-06 07:20:53',2,0,0,0,0,NULL,NULL),
(580,90,'022026',150000,150000,'2026-02-04',1,'00481.BLR.MST.',NULL,'belum','2026-02-04 07:11:02',2,0,0,0,0,NULL,NULL),
(581,91,'022026',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(582,92,'022026',150000,150000,'2026-02-09',1,'00549.BLR.MST.',NULL,'terkirim','2026-02-09 12:51:42',2,0,0,0,0,NULL,NULL),
(583,93,'022026',150000,150000,'2026-02-14',1,'00598.BLR.MST.',NULL,'terkirim','2026-02-14 19:19:47',2,0,0,0,0,NULL,NULL),
(584,94,'022026',150000,150000,'2026-02-05',1,'00512.BLR.MST.',NULL,'terkirim','2026-02-05 19:12:15',2,0,0,0,0,NULL,NULL),
(585,95,'022026',150000,150000,'2026-02-11',1,'00592.BLR.MST.',NULL,'terkirim','2026-02-11 10:34:04',2,0,0,0,0,NULL,NULL),
(586,96,'022026',150000,150000,'2026-02-06',1,'00518.BLR.MST.',NULL,'terkirim','2026-02-06 04:58:47',2,0,0,0,0,NULL,NULL),
(587,97,'022026',150000,150000,'2026-02-01',1,'00469.BLR.MST.',NULL,'belum','2026-02-01 10:52:08',2,0,0,0,0,NULL,NULL),
(588,98,'022026',150000,150000,'2026-02-05',1,'00484.BLR.MST.',NULL,'belum','2026-02-05 06:43:04',2,0,0,0,0,NULL,NULL),
(589,99,'022026',150000,150000,'2026-02-09',1,'00557.BLR.MST.',NULL,'terkirim','2026-02-09 22:19:47',2,0,0,0,0,NULL,NULL),
(590,100,'022026',175000,175000,'2026-02-09',1,'00553.BLR.MST.',NULL,'terkirim','2026-02-09 14:06:39',2,0,0,0,0,NULL,NULL),
(591,101,'022026',150000,150000,'2026-02-07',1,'00533.BLR.MST.',NULL,'terkirim','2026-02-07 10:04:24',2,0,0,0,0,NULL,NULL),
(592,102,'022026',150000,150000,'2026-02-10',1,'00585.BLR.MST.',NULL,'terkirim','2026-02-10 21:31:11',2,0,0,0,0,NULL,NULL),
(593,104,'022026',175000,175000,'2026-02-06',1,'00525.BLR.MST.',NULL,'terkirim','2026-02-06 16:06:31',2,0,0,0,0,NULL,NULL),
(594,105,'022026',150000,150000,'2026-02-05',1,'00485.BLR.MST.',NULL,'belum','2026-02-05 06:43:14',2,0,0,0,0,NULL,NULL),
(595,106,'022026',150000,150000,'2026-02-10',1,'00566.BLR.MST.',NULL,'terkirim','2026-02-10 13:45:31',2,0,0,0,0,NULL,NULL),
(596,107,'022026',175000,175000,'2026-02-05',1,'00502.BLR.MST.',NULL,'terkirim','2026-02-05 14:00:33',2,0,0,0,0,NULL,NULL),
(597,108,'022026',150000,150000,'2026-02-05',1,'00505.BLR.MST.',NULL,'terkirim','2026-02-05 14:25:37',2,0,0,0,0,NULL,NULL),
(598,109,'022026',175000,175000,'2026-02-05',1,'00513.BLR.MST.',NULL,'terkirim','2026-02-05 19:12:43',2,0,0,0,0,NULL,NULL),
(599,110,'022026',150000,150000,'2026-02-10',1,'00568.BLR.MST.',NULL,'terkirim','2026-02-10 14:12:30',2,0,0,0,0,NULL,NULL),
(600,112,'022026',150000,150000,'2026-02-08',1,'00540.BLR.MST.',NULL,'terkirim','2026-02-08 11:51:26',2,0,0,0,0,NULL,NULL),
(601,113,'022026',150000,150000,'2026-02-05',1,'00494.BLR.MST.',NULL,'terkirim','2026-02-05 12:19:34',2,0,0,0,0,NULL,NULL),
(602,114,'022026',150000,150000,'2026-02-05',1,'00507.BLR.MST.',NULL,'terkirim','2026-02-05 19:09:42',2,0,0,0,0,NULL,NULL),
(603,115,'022026',150000,150000,'2026-02-08',1,'00545.BLR.MST.',NULL,'terkirim','2026-02-08 23:10:19',2,0,0,0,0,NULL,NULL),
(604,117,'022026',150000,150000,'2026-02-03',1,'00480.BLR.MST.',NULL,'belum','2026-02-03 19:29:05',2,0,0,0,0,NULL,NULL),
(605,119,'022026',150000,150000,'2026-02-05',1,'00499.BLR.MST.',NULL,'terkirim','2026-02-05 12:45:29',2,0,0,0,0,NULL,NULL),
(606,120,'022026',150000,150000,'2026-02-05',1,'00504.BLR.MST.',NULL,'terkirim','2026-02-05 14:01:37',2,0,0,0,0,NULL,NULL),
(607,121,'022026',150000,150000,'2026-02-11',1,'00590.BLR.MST.',NULL,'terkirim','2026-02-11 06:18:12',2,0,0,0,0,NULL,NULL),
(608,122,'022026',150000,150000,'2026-02-10',1,'00577.BLR.MST.',NULL,'terkirim','2026-02-10 19:10:09',2,0,0,0,0,NULL,NULL),
(609,123,'022026',150000,150000,'2026-02-09',1,'00558.BLR.MST.',NULL,'terkirim','2026-02-09 22:20:09',2,0,0,0,0,NULL,NULL),
(610,124,'022026',150000,150000,'2026-02-06',1,'00523.BLR.MST.',NULL,'terkirim','2026-02-06 08:31:31',2,0,0,0,0,NULL,NULL),
(611,125,'022026',150000,150000,'2026-02-01',1,'00473.BLR.MST.',NULL,'belum','2026-02-01 11:46:01',2,0,0,0,0,NULL,NULL),
(612,126,'022026',175000,175000,'2026-02-05',1,'00501.BLR.MST.',NULL,'terkirim','2026-02-05 14:00:21',2,0,0,0,0,NULL,NULL),
(613,127,'022026',150000,150000,'2026-02-05',1,'00516.BLR.MST.',NULL,'terkirim','2026-02-05 20:00:28',2,0,0,0,0,NULL,NULL),
(614,128,'022026',150000,150000,'2026-02-06',1,'00522.BLR.MST.',NULL,'terkirim','2026-02-06 08:06:30',2,0,0,0,0,NULL,NULL),
(615,129,'022026',150000,150000,'2026-02-09',1,'00559.BLR.MST.',NULL,'terkirim','2026-02-09 22:20:34',2,0,0,0,0,NULL,NULL),
(616,130,'022026',175000,175000,'2026-02-05',1,'00506.BLR.MST.',NULL,'terkirim','2026-02-05 19:09:13',2,0,0,0,0,NULL,NULL),
(617,131,'022026',175000,175000,'2026-02-05',1,'00497.BLR.MST.',NULL,'terkirim','2026-02-05 12:26:59',2,0,0,0,0,NULL,NULL),
(618,132,'022026',150000,150000,'2026-02-06',1,'00519.BLR.MST.',NULL,'terkirim','2026-02-06 06:20:55',2,0,0,0,0,NULL,NULL),
(619,133,'022026',150000,150000,'2026-02-05',1,'00498.BLR.MST.',NULL,'terkirim','2026-02-05 12:29:27',2,0,0,0,0,NULL,NULL),
(620,134,'022026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(621,135,'022026',150000,150000,'2026-02-06',1,'00529.BLR.MST.',NULL,'terkirim','2026-02-06 23:39:53',2,0,0,0,0,NULL,NULL),
(622,136,'022026',150000,150000,'2026-02-08',1,'00542.BLR.MST.',NULL,'terkirim','2026-02-08 12:07:05',2,0,0,0,0,NULL,NULL),
(623,137,'022026',150000,150000,'2026-02-05',1,'00486.BLR.MST.',NULL,'belum','2026-02-05 10:15:58',2,0,0,0,0,NULL,NULL),
(624,138,'022026',175000,175000,'2026-02-06',1,'00524.BLR.MST.',NULL,'terkirim','2026-02-06 15:40:15',2,0,0,0,0,NULL,NULL),
(625,139,'022026',150000,150000,'2026-02-06',1,'00528.BLR.MST.',NULL,'terkirim','2026-02-06 19:28:10',2,0,0,0,0,NULL,NULL),
(626,140,'022026',150000,150000,'2026-02-08',1,'00538.BLR.MST.',NULL,'terkirim','2026-02-08 09:11:50',2,0,0,0,0,NULL,NULL),
(627,141,'022026',150000,150000,'2026-02-13',1,'00596.BLR.MST.',NULL,'belum','2026-02-13 18:23:15',2,0,0,0,0,NULL,NULL),
(628,142,'022026',150000,150000,'2026-02-13',1,'00595.BLR.MST.',NULL,'belum','2026-02-13 18:22:47',2,0,0,0,0,NULL,NULL),
(629,143,'022026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(630,2,'032026',75000,75000,'2026-03-10',1,'00724.BLR.MST.',NULL,'terkirim','2026-03-10 23:04:03',2,0,0,0,0,NULL,NULL),
(631,3,'032026',100000,100000,'2026-03-04',1,'00609.BLR.MST.',NULL,'belum','2026-03-04 14:08:07',2,0,0,0,0,NULL,NULL),
(632,4,'032026',100000,100000,'2026-03-02',1,'00602.BLR.MST.',NULL,'belum','2026-03-02 07:55:28',2,0,0,0,0,NULL,NULL),
(633,5,'032026',150000,150000,'2026-03-05',1,'00610.BLR.MST.',NULL,'terkirim','2026-03-05 09:11:23',2,0,0,0,0,NULL,NULL),
(634,6,'032026',150000,150000,'2026-03-09',1,'00687.BLR.MST.',NULL,'terkirim','2026-03-09 20:49:57',2,0,0,0,0,NULL,NULL),
(635,7,'032026',150000,150000,'2026-03-09',1,'00684.BLR.MST.',NULL,'terkirim','2026-03-09 17:52:29',2,0,0,0,0,NULL,NULL),
(636,8,'032026',150000,150000,'2026-03-10',1,'00712.BLR.MST.',NULL,'terkirim','2026-03-10 18:35:41',2,0,0,0,0,NULL,NULL),
(637,9,'032026',150000,150000,'2026-03-17',1,'00734.BLR.MST.',NULL,'terkirim','2026-03-17 08:35:03',2,0,0,0,0,NULL,NULL),
(638,10,'032026',150000,150000,'2026-03-02',1,'00606.BLR.MST.',NULL,'belum','2026-03-02 07:56:19',2,0,0,0,0,NULL,NULL),
(639,11,'032026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(640,12,'032026',150000,150000,'2026-03-10',1,'00698.BLR.MST.',NULL,'terkirim','2026-03-10 16:22:08',2,0,0,0,0,NULL,NULL),
(641,13,'032026',175000,175000,'2026-03-07',1,'00664.BLR.MST.',NULL,'terkirim','2026-03-07 08:31:47',2,0,0,0,0,NULL,NULL),
(642,14,'032026',150000,150000,'2026-03-10',1,'00703.BLR.MST.',NULL,'terkirim','2026-03-10 16:35:14',2,0,0,0,0,NULL,NULL),
(643,15,'032026',150000,150000,'2026-03-05',1,'00641.BLR.MST.',NULL,'terkirim','2026-03-05 13:33:36',2,0,0,0,0,NULL,NULL),
(644,16,'032026',75000,75000,'2026-03-05',1,'00616.BLR.MST.',NULL,'terkirim','2026-03-05 09:27:46',2,0,0,0,0,NULL,NULL),
(645,17,'032026',150000,150000,'2026-03-05',1,'00642.BLR.MST.',NULL,'terkirim','2026-03-05 13:33:52',2,0,0,0,0,NULL,NULL),
(646,19,'032026',100000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(647,20,'032026',175000,175000,'2026-03-02',1,'00608.BLR.MST.',NULL,'belum','2026-03-02 17:27:39',2,0,0,0,0,NULL,NULL),
(648,21,'032026',150000,150000,'2026-03-05',1,'00611.BLR.MST.',NULL,'terkirim','2026-03-05 09:15:17',2,0,0,0,0,NULL,NULL),
(649,22,'032026',150000,150000,'2026-03-11',1,'00728.BLR.MST.',NULL,'terkirim','2026-03-11 09:12:00',2,0,0,0,0,NULL,NULL),
(650,23,'032026',150000,150000,'2026-03-09',1,'00681.BLR.MST.',NULL,'terkirim','2026-03-09 08:59:59',2,0,0,0,0,NULL,NULL),
(651,24,'032026',150000,150000,'2026-03-02',1,'00601.BLR.MST.',NULL,'belum','2026-03-02 07:55:20',2,0,0,0,0,NULL,NULL),
(652,25,'032026',175000,175000,'2026-03-05',1,'00623.BLR.MST.',NULL,'terkirim','2026-03-05 09:40:54',2,0,0,0,0,NULL,NULL),
(653,26,'032026',150000,150000,'2026-03-09',1,'00683.BLR.MST.',NULL,'terkirim','2026-03-09 14:33:49',2,0,0,0,0,NULL,NULL),
(654,27,'032026',150000,150000,'2026-03-05',1,'00625.BLR.MST.',NULL,'terkirim','2026-03-05 09:42:54',2,0,0,0,0,NULL,NULL),
(655,28,'032026',150000,150000,'2026-03-10',1,'00708.BLR.MST.',NULL,'terkirim','2026-03-10 17:04:04',2,0,0,0,0,NULL,NULL),
(656,29,'032026',175000,175000,'2026-03-10',1,'00693.BLR.MST.',NULL,'terkirim','2026-03-10 09:16:26',2,0,0,0,0,NULL,NULL),
(657,30,'032026',150000,150000,'2026-03-05',1,'00613.BLR.MST.',NULL,'terkirim','2026-03-05 09:23:41',2,0,0,0,0,NULL,NULL),
(658,31,'032026',150000,150000,'2026-03-02',1,'00604.BLR.MST.',NULL,'belum','2026-03-02 07:55:52',2,0,0,0,0,NULL,NULL),
(659,32,'032026',175000,175000,'2026-03-10',1,'00717.BLR.MST.',NULL,'terkirim','2026-03-10 20:37:58',2,0,0,0,0,NULL,NULL),
(660,33,'032026',150000,150000,'2026-03-05',1,'00638.BLR.MST.',NULL,'terkirim','2026-03-05 12:20:37',2,0,0,0,0,NULL,NULL),
(661,34,'032026',175000,175000,'2026-03-05',1,'00617.BLR.MST.',NULL,'terkirim','2026-03-05 09:27:52',2,0,0,0,0,NULL,NULL),
(662,35,'032026',150000,150000,'2026-03-10',1,'00691.BLR.MST.',NULL,'terkirim','2026-03-10 08:23:28',2,0,0,0,0,NULL,NULL),
(663,36,'032026',150000,150000,'2026-03-10',1,'00700.BLR.MST.',NULL,'terkirim','2026-03-10 16:33:58',2,0,0,0,0,NULL,NULL),
(664,37,'032026',150000,150000,'2026-03-10',1,'00704.BLR.MST.',NULL,'terkirim','2026-03-10 16:35:25',2,0,0,0,0,NULL,NULL),
(665,38,'032026',150000,150000,'2026-03-10',1,'00689.BLR.MST.',NULL,'terkirim','2026-03-10 08:22:40',2,0,0,0,0,NULL,NULL),
(666,39,'032026',150000,150000,'2026-03-11',1,'00726.BLR.MST.',NULL,'terkirim','2026-03-11 07:46:37',2,0,0,0,0,NULL,NULL),
(667,40,'032026',150000,150000,'2026-03-10',1,'00696.BLR.MST.',NULL,'terkirim','2026-03-10 16:18:14',2,0,0,0,0,NULL,NULL),
(668,41,'032026',175000,175000,'2026-03-10',1,'00706.BLR.MST.',NULL,'terkirim','2026-03-10 16:50:09',2,0,0,0,0,NULL,NULL),
(669,42,'032026',175000,175000,'2026-03-05',1,'00621.BLR.MST.',NULL,'terkirim','2026-03-05 09:32:10',2,0,0,0,0,NULL,NULL),
(670,43,'032026',175000,175000,'2026-03-06',1,'00658.BLR.MST.',NULL,'terkirim','2026-03-06 13:02:04',2,0,0,0,0,NULL,NULL),
(671,44,'032026',175000,175000,'2026-03-05',1,'00614.BLR.MST.',NULL,'terkirim','2026-03-05 09:26:57',2,0,0,0,0,NULL,NULL),
(672,45,'032026',150000,150000,'2026-03-06',1,'00660.BLR.MST.',NULL,'terkirim','2026-03-06 23:17:50',2,0,0,0,0,NULL,NULL),
(673,46,'032026',175000,175000,'2026-03-10',1,'00707.BLR.MST.',NULL,'terkirim','2026-03-10 16:50:21',2,0,0,0,0,NULL,NULL),
(674,47,'032026',150000,150000,'2026-03-11',1,'00730.BLR.MST.',NULL,'terkirim','2026-03-11 20:18:53',2,0,0,0,0,NULL,NULL),
(675,48,'032026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(676,49,'032026',150000,150000,'2026-03-05',1,'00631.BLR.MST.',NULL,'terkirim','2026-03-05 10:49:50',2,0,0,0,0,NULL,NULL),
(677,50,'032026',150000,150000,'2026-03-09',1,'00686.BLR.MST.',NULL,'terkirim','2026-03-09 20:49:46',2,0,0,0,0,NULL,NULL),
(678,51,'032026',150000,150000,'2026-03-07',1,'00665.BLR.MST.',NULL,'terkirim','2026-03-07 12:07:14',2,0,0,0,0,NULL,NULL),
(679,52,'032026',150000,150000,'2026-03-06',1,'00659.BLR.MST.',NULL,'terkirim','2026-03-06 23:17:45',2,0,0,0,0,NULL,NULL),
(680,53,'032026',150000,150000,'2026-03-10',1,'00694.BLR.MST.',NULL,'terkirim','2026-03-10 09:58:58',2,0,0,0,0,NULL,NULL),
(681,54,'032026',150000,150000,'2026-03-11',1,'00731.BLR.MST.',NULL,'terkirim','2026-03-11 22:28:40',2,0,0,0,0,NULL,NULL),
(682,55,'032026',150000,150000,'2026-03-10',1,'00697.BLR.MST.',NULL,'terkirim','2026-03-10 16:18:31',2,0,0,0,0,NULL,NULL),
(683,56,'032026',150000,150000,'2026-03-05',1,'00643.BLR.MST.',NULL,'terkirim','2026-03-05 13:45:12',2,0,0,0,0,NULL,NULL),
(684,57,'032026',150000,150000,'2026-03-05',1,'00612.BLR.MST.',NULL,'terkirim','2026-03-05 09:17:28',2,0,0,0,0,NULL,NULL),
(685,58,'032026',150000,150000,'2026-03-10',1,'00713.BLR.MST.',NULL,'terkirim','2026-03-10 18:37:15',2,0,0,0,0,NULL,NULL),
(686,59,'032026',150000,150000,'2026-03-10',1,'00702.BLR.MST.',NULL,'terkirim','2026-03-10 16:34:48',2,0,0,0,0,NULL,NULL),
(687,60,'032026',150000,150000,'2026-03-10',1,'00711.BLR.MST.',NULL,'terkirim','2026-03-10 17:53:29',2,0,0,0,0,NULL,NULL),
(688,61,'032026',175000,175000,'2026-03-05',1,'00630.BLR.MST.',NULL,'terkirim','2026-03-05 10:49:45',2,0,0,0,0,NULL,NULL),
(689,62,'032026',150000,150000,'2026-03-05',1,'00650.BLR.MST.',NULL,'terkirim','2026-03-05 18:49:57',2,0,0,0,0,NULL,NULL),
(690,63,'032026',150000,150000,'2026-03-10',1,'00688.BLR.MST.',NULL,'terkirim','2026-03-10 04:20:19',2,0,0,0,0,NULL,NULL),
(691,64,'032026',150000,150000,'2026-03-06',1,'00654.BLR.MST.',NULL,'terkirim','2026-03-06 07:15:49',2,0,0,0,0,NULL,NULL),
(692,65,'032026',100000,100000,'2026-03-10',1,'00714.BLR.MST.',NULL,'terkirim','2026-03-10 20:36:39',2,0,0,0,0,NULL,NULL),
(693,66,'032026',100000,100000,'2026-03-09',1,'00676.BLR.MST.',NULL,'terkirim','2026-03-09 05:33:19',2,0,0,0,0,NULL,NULL),
(694,67,'032026',100000,100000,'2026-03-10',1,'00725.BLR.MST.',NULL,'terkirim','2026-03-10 23:09:22',2,0,0,0,0,NULL,NULL),
(695,68,'032026',150000,150000,'2026-03-05',1,'00647.BLR.MST.',NULL,'terkirim','2026-03-05 17:26:43',2,0,0,0,0,NULL,NULL),
(696,69,'032026',100000,100000,'2026-03-06',1,'00657.BLR.MST.',NULL,'terkirim','2026-03-06 11:28:08',2,0,0,0,0,NULL,NULL),
(697,70,'032026',175000,175000,'2026-03-07',1,'00672.BLR.MST.',NULL,'terkirim','2026-03-07 20:07:09',2,0,0,0,0,NULL,NULL),
(698,71,'032026',150000,150000,'2026-03-02',1,'00603.BLR.MST.',NULL,'belum','2026-03-02 07:55:40',2,0,0,0,0,NULL,NULL),
(699,72,'032026',175000,175000,'2026-03-05',1,'00622.BLR.MST.',NULL,'terkirim','2026-03-05 09:36:08',2,0,0,0,0,NULL,NULL),
(700,73,'032026',150000,150000,'2026-03-07',1,'00671.BLR.MST.',NULL,'terkirim','2026-03-07 18:34:22',2,0,0,0,0,NULL,NULL),
(701,74,'032026',150000,150000,'2026-03-05',1,'00615.BLR.MST.',NULL,'terkirim','2026-03-05 09:27:03',2,0,0,0,0,NULL,NULL),
(702,75,'032026',175000,175000,'2026-03-05',1,'00627.BLR.MST.',NULL,'terkirim','2026-03-05 10:06:18',2,0,0,0,0,NULL,NULL),
(703,76,'032026',100000,100000,'2026-03-05',1,'00629.BLR.MST.',NULL,'terkirim','2026-03-05 10:33:54',2,0,0,0,0,NULL,NULL),
(704,77,'032026',150000,150000,'2026-03-09',1,'00678.BLR.MST.',NULL,'terkirim','2026-03-09 05:34:15',2,0,0,0,0,NULL,NULL),
(705,78,'032026',150000,150000,'2026-03-09',1,'00679.BLR.MST.',NULL,'terkirim','2026-03-09 05:35:15',2,0,0,0,0,NULL,NULL),
(706,79,'032026',150000,150000,'2026-03-07',1,'00667.BLR.MST.',NULL,'terkirim','2026-03-07 12:59:34',2,0,0,0,0,NULL,NULL),
(707,80,'032026',150000,150000,'2026-03-10',1,'00715.BLR.MST.',NULL,'terkirim','2026-03-10 20:36:51',2,0,0,0,0,NULL,NULL),
(708,81,'032026',150000,150000,'2026-03-10',1,'00716.BLR.MST.',NULL,'terkirim','2026-03-10 20:37:41',2,0,0,0,0,NULL,NULL),
(709,82,'032026',150000,150000,'2026-03-05',1,'00637.BLR.MST.',NULL,'terkirim','2026-03-05 11:56:53',2,0,0,0,0,NULL,NULL),
(710,83,'032026',150000,150000,'2026-03-10',1,'00705.BLR.MST.',NULL,'terkirim','2026-03-10 16:49:54',2,0,0,0,0,NULL,NULL),
(711,84,'032026',150000,150000,'2026-03-02',1,'00600.BLR.MST.',NULL,'belum','2026-03-02 07:55:16',2,0,0,0,0,NULL,NULL),
(712,85,'032026',150000,150000,'2026-03-07',1,'00669.BLR.MST.',NULL,'terkirim','2026-03-07 17:11:17',2,0,0,0,0,NULL,NULL),
(713,86,'032026',150000,150000,'2026-03-08',1,'00674.BLR.MST.',NULL,'terkirim','2026-03-08 23:14:11',2,0,0,0,0,NULL,NULL),
(714,87,'032026',175000,175000,'2026-03-05',1,'00624.BLR.MST.',NULL,'terkirim','2026-03-05 09:41:01',2,0,0,0,0,NULL,NULL),
(715,88,'032026',150000,150000,'2026-03-05',1,'00645.BLR.MST.',NULL,'terkirim','2026-03-05 16:56:22',2,0,0,0,0,NULL,NULL),
(716,89,'032026',150000,150000,'2026-03-06',1,'00656.BLR.MST.',NULL,'terkirim','2026-03-06 11:24:19',2,0,0,0,0,NULL,NULL),
(717,90,'032026',150000,150000,'2026-03-05',1,'00633.BLR.MST.',NULL,'terkirim','2026-03-05 11:49:25',2,0,0,0,0,NULL,NULL),
(718,91,'032026',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(719,92,'032026',150000,150000,'2026-03-05',1,'00632.BLR.MST.',NULL,'terkirim','2026-03-05 10:50:02',2,0,0,0,0,NULL,NULL),
(721,94,'032026',150000,150000,'2026-03-05',1,'00648.BLR.MST.',NULL,'terkirim','2026-03-05 17:52:43',2,0,0,0,0,NULL,NULL),
(722,95,'032026',150000,150000,'2026-03-07',1,'00663.BLR.MST.',NULL,'terkirim','2026-03-07 07:19:00',2,0,0,0,0,NULL,NULL),
(723,96,'032026',150000,150000,'2026-03-11',1,'00727.BLR.MST.',NULL,'terkirim','2026-03-11 09:09:50',2,0,0,0,0,NULL,NULL),
(724,97,'032026',150000,150000,'2026-03-05',1,'00619.BLR.MST.',NULL,'terkirim','2026-03-05 09:31:44',2,0,0,0,0,NULL,NULL),
(725,98,'032026',150000,150000,'2026-03-05',1,'00626.BLR.MST.',NULL,'terkirim','2026-03-05 09:52:22',2,0,0,0,0,NULL,NULL),
(726,99,'032026',150000,150000,'2026-03-10',1,'00699.BLR.MST.',NULL,'terkirim','2026-03-10 16:22:25',2,0,0,0,0,NULL,NULL),
(727,100,'032026',175000,175000,'2026-03-10',1,'00701.BLR.MST.',NULL,'terkirim','2026-03-10 16:34:20',2,0,0,0,0,NULL,NULL),
(728,101,'032026',150000,150000,'2026-03-07',1,'00670.BLR.MST.',NULL,'terkirim','2026-03-07 17:44:07',2,0,0,0,0,NULL,NULL),
(729,102,'032026',150000,150000,'2026-03-10',1,'00718.BLR.MST.',NULL,'terkirim','2026-03-10 20:38:16',2,0,0,0,0,NULL,NULL),
(730,104,'032026',175000,175000,'2026-03-07',1,'00666.BLR.MST.',NULL,'terkirim','2026-03-07 12:07:20',2,0,0,0,0,NULL,NULL),
(731,105,'032026',150000,150000,'2026-03-05',1,'00639.BLR.MST.',NULL,'terkirim','2026-03-05 13:33:08',2,0,0,0,0,NULL,NULL),
(732,106,'032026',150000,150000,'2026-03-06',1,'00651.BLR.MST.',NULL,'terkirim','2026-03-06 07:14:30',2,0,0,0,0,NULL,NULL),
(733,107,'032026',175000,175000,'2026-03-05',1,'00649.BLR.MST.',NULL,'terkirim','2026-03-05 18:07:17',2,0,0,0,0,NULL,NULL),
(734,108,'032026',150000,150000,'2026-03-05',1,'00634.BLR.MST.',NULL,'terkirim','2026-03-05 11:49:39',2,0,0,0,0,NULL,NULL),
(735,109,'032026',175000,175000,'2026-03-14',1,'00733.BLR.MST.',NULL,'terkirim','2026-03-14 22:51:45',2,0,0,0,0,NULL,NULL),
(736,110,'032026',150000,150000,'2026-03-10',1,'00692.BLR.MST.',NULL,'terkirim','2026-03-10 09:16:06',2,0,0,0,0,NULL,NULL),
(737,112,'032026',150000,150000,'2026-03-10',1,'00710.BLR.MST.',NULL,'terkirim','2026-03-10 17:53:06',2,0,0,0,0,NULL,NULL),
(738,113,'032026',150000,150000,'2026-03-02',1,'00607.BLR.MST.',NULL,'belum','2026-03-02 07:56:30',2,0,0,0,0,NULL,NULL),
(739,114,'032026',150000,150000,'2026-03-05',1,'00620.BLR.MST.',NULL,'terkirim','2026-03-05 09:31:49',2,0,0,0,0,NULL,NULL),
(740,115,'032026',150000,150000,'2026-03-06',1,'00653.BLR.MST.',NULL,'terkirim','2026-03-06 07:15:20',2,0,0,0,0,NULL,NULL),
(741,117,'032026',150000,150000,'2026-03-05',1,'00646.BLR.MST.',NULL,'terkirim','2026-03-05 17:15:42',2,0,0,0,0,NULL,NULL),
(742,119,'032026',150000,150000,'2026-03-09',1,'00677.BLR.MST.',NULL,'terkirim','2026-03-09 05:33:49',2,0,0,0,0,NULL,NULL),
(743,120,'032026',150000,150000,'2026-03-06',1,'00655.BLR.MST.',NULL,'terkirim','2026-03-06 10:20:25',2,0,0,0,0,NULL,NULL),
(744,121,'032026',150000,150000,'2026-03-10',1,'00719.BLR.MST.',NULL,'terkirim','2026-03-10 21:59:53',2,0,0,0,0,NULL,NULL),
(745,122,'032026',150000,150000,'2026-03-06',1,'00662.BLR.MST.',NULL,'terkirim','2026-03-06 23:35:00',2,0,0,0,0,NULL,NULL),
(746,123,'032026',150000,150000,'2026-03-09',1,'00685.BLR.MST.',NULL,'terkirim','2026-03-09 17:52:50',2,0,0,0,0,NULL,NULL),
(747,124,'032026',150000,150000,'2026-03-05',1,'00635.BLR.MST.',NULL,'terkirim','2026-03-05 11:49:55',2,0,0,0,0,NULL,NULL),
(748,125,'032026',150000,150000,'2026-03-02',1,'00605.BLR.MST.',NULL,'belum','2026-03-02 07:56:04',2,0,0,0,0,NULL,NULL),
(749,126,'032026',175000,175000,'2026-03-06',1,'00661.BLR.MST.',NULL,'terkirim','2026-03-06 23:34:28',2,0,0,0,0,NULL,NULL),
(750,127,'032026',150000,150000,'2026-03-06',1,'00652.BLR.MST.',NULL,'terkirim','2026-03-06 07:15:01',2,0,0,0,0,NULL,NULL),
(751,128,'032026',150000,150000,'2026-03-09',1,'00682.BLR.MST.',NULL,'terkirim','2026-03-09 14:14:28',2,0,0,0,0,NULL,NULL),
(752,129,'032026',150000,150000,'2026-03-10',1,'00720.BLR.MST.',NULL,'terkirim','2026-03-10 22:03:38',2,0,0,0,0,NULL,NULL),
(753,130,'032026',175000,175000,'2026-03-05',1,'00636.BLR.MST.',NULL,'terkirim','2026-03-05 11:50:27',2,0,0,0,0,NULL,NULL),
(754,131,'032026',175000,175000,'2026-03-07',1,'00668.BLR.MST.',NULL,'terkirim','2026-03-07 17:11:06',2,0,0,0,0,NULL,NULL),
(755,132,'032026',150000,150000,'2026-03-05',1,'00644.BLR.MST.',NULL,'terkirim','2026-03-05 16:38:41',2,0,0,0,0,NULL,NULL),
(756,133,'032026',150000,150000,'2026-03-05',1,'00640.BLR.MST.',NULL,'terkirim','2026-03-05 13:33:23',2,0,0,0,0,NULL,NULL),
(757,134,'032026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(758,135,'032026',150000,150000,'2026-03-10',1,'00690.BLR.MST.',NULL,'terkirim','2026-03-10 08:23:00',2,0,0,0,0,NULL,NULL),
(759,136,'032026',150000,150000,'2026-03-10',1,'00709.BLR.MST.',NULL,'terkirim','2026-03-10 17:52:35',2,0,0,0,0,NULL,NULL),
(760,137,'032026',150000,150000,'2026-03-09',1,'00680.BLR.MST.',NULL,'terkirim','2026-03-09 08:59:50',2,0,0,0,0,NULL,NULL),
(761,138,'032026',175000,175000,'2026-03-08',1,'00673.BLR.MST.',NULL,'terkirim','2026-03-08 08:57:29',2,0,0,0,0,NULL,NULL),
(762,139,'032026',150000,150000,'2026-03-05',1,'00618.BLR.MST.',NULL,'terkirim','2026-03-05 09:31:25',2,0,0,0,0,NULL,NULL),
(763,140,'032026',150000,150000,'2026-03-09',1,'00675.BLR.MST.',NULL,'terkirim','2026-03-09 05:33:05',2,0,0,0,0,NULL,NULL),
(764,141,'032026',150000,150000,'2026-03-10',1,'00721.BLR.MST.',NULL,'terkirim','2026-03-10 22:07:37',2,0,0,0,0,NULL,NULL),
(765,142,'032026',150000,150000,'2026-03-10',1,'00722.BLR.MST.',NULL,'terkirim','2026-03-10 22:23:45',2,0,0,0,0,NULL,NULL),
(766,143,'032026',150000,150000,'2026-03-10',1,'00695.BLR.MST.',NULL,'terkirim','2026-03-10 10:26:46',2,0,0,0,0,NULL,NULL),
(767,144,'032026',250000,250000,'2026-03-10',1,'00723.BLR.MST.',NULL,'terkirim','2026-03-10 23:03:00',2,0,0,0,0,NULL,NULL),
(768,145,'032026',150000,150000,'2026-03-11',1,'00729.BLR.MST.',NULL,'terkirim','2026-03-11 13:53:33',2,0,0,0,0,NULL,NULL),
(769,93,'032026',250000,250000,'2026-03-12',1,'00732.BLR.MST.',NULL,'terkirim','2026-03-12 20:05:43',2,0,0,0,0,NULL,NULL),
(770,2,'042026',75000,75000,'2026-04-05',1,'00757.BLR.MST.',NULL,'belum','2026-04-05 11:17:24',2,0,0,0,0,NULL,NULL),
(771,3,'042026',100000,100000,'2026-04-02',1,'00747.BLR.MST.',NULL,'belum','2026-04-02 14:07:54',2,0,0,0,0,NULL,NULL),
(772,4,'042026',100000,100000,'2026-04-01',1,'00742.BLR.MST.',NULL,'belum','2026-04-01 11:03:56',2,0,0,0,0,NULL,NULL),
(773,5,'042026',150000,150000,'2026-04-05',1,'00755.BLR.MST.',NULL,'belum','2026-04-05 09:02:14',2,0,0,0,0,NULL,NULL),
(774,6,'042026',150000,150000,'2026-04-10',1,'00834.BLR.MST.',NULL,'terkirim','2026-04-10 08:57:55',2,0,0,0,0,NULL,NULL),
(775,7,'042026',150000,150000,'2026-04-08',1,'00814.BLR.MST.',NULL,'terkirim','2026-04-08 19:59:11',2,0,0,0,0,NULL,NULL),
(776,8,'042026',150000,150000,'2026-04-10',1,'00850.BLR.MST.',NULL,'terkirim','2026-04-10 16:40:14',2,0,0,0,0,NULL,NULL),
(777,9,'042026',150000,150000,'2026-04-11',1,'00869.BLR.MST.',NULL,'terkirim','2026-04-11 12:08:48',2,0,0,0,0,NULL,NULL),
(778,10,'042026',150000,150000,'2026-04-01',1,'00745.BLR.MST.',NULL,'belum','2026-04-01 18:06:17',2,0,0,0,0,NULL,NULL),
(779,11,'042026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(780,12,'042026',150000,150000,'2026-04-10',1,'00839.BLR.MST.',NULL,'terkirim','2026-04-10 09:08:52',2,0,0,0,0,NULL,NULL),
(781,13,'042026',175000,175000,'2026-04-10',1,'00833.BLR.MST.',NULL,'terkirim','2026-04-10 08:57:36',2,0,0,0,0,NULL,NULL),
(782,14,'042026',150000,150000,'2026-04-10',1,'00836.BLR.MST.',NULL,'terkirim','2026-04-10 09:06:12',2,0,0,0,0,NULL,NULL),
(783,15,'042026',150000,150000,'2026-04-05',1,'00754.BLR.MST.',NULL,'belum','2026-04-05 09:02:05',2,0,0,0,0,NULL,NULL),
(784,16,'042026',75000,75000,'2026-04-06',1,'00792.BLR.MST.',NULL,'terkirim','2026-04-06 15:26:44',2,0,0,0,0,NULL,NULL),
(785,17,'042026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(786,19,'042026',100000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(787,20,'042026',175000,175000,'2026-04-01',1,'00735.BLR.MST.',NULL,'belum','2026-04-01 11:01:27',2,0,0,0,0,NULL,NULL),
(788,21,'042026',150000,150000,'2026-04-09',1,'00826.BLR.MST.',NULL,'terkirim','2026-04-09 10:09:36',2,0,0,0,0,NULL,NULL),
(789,22,'042026',150000,150000,'2026-04-11',1,'00870.BLR.MST.',NULL,'terkirim','2026-04-11 13:53:00',2,0,0,0,0,NULL,NULL),
(790,23,'042026',150000,150000,'2026-04-08',1,'00805.BLR.MST.',NULL,'terkirim','2026-04-08 07:56:13',2,0,0,0,0,NULL,NULL),
(791,24,'042026',150000,150000,'2026-04-01',1,'00738.BLR.MST.',NULL,'belum','2026-04-01 11:02:12',2,0,0,0,0,NULL,NULL),
(792,25,'042026',175000,175000,'2026-04-07',1,'00801.BLR.MST.',NULL,'terkirim','2026-04-07 09:19:20',2,0,0,0,0,NULL,NULL),
(793,26,'042026',150000,150000,'2026-04-08',1,'00806.BLR.MST.',NULL,'terkirim','2026-04-08 10:35:10',2,0,0,0,0,NULL,NULL),
(794,27,'042026',150000,150000,'2026-04-07',1,'00802.BLR.MST.',NULL,'terkirim','2026-04-07 12:30:00',2,0,0,0,0,NULL,NULL),
(795,28,'042026',150000,150000,'2026-04-11',1,'00865.BLR.MST.',NULL,'terkirim','2026-04-11 07:46:39',2,0,0,0,0,NULL,NULL),
(796,29,'042026',175000,175000,'2026-04-03',1,'00750.BLR.MST.',NULL,'belum','2026-04-03 09:49:41',2,0,0,0,0,NULL,NULL),
(797,30,'042026',150000,150000,'2026-04-06',1,'00784.BLR.MST.',NULL,'terkirim','2026-04-06 08:21:25',2,0,0,0,0,NULL,NULL),
(798,31,'042026',150000,150000,'2026-04-04',1,'00752.BLR.MST.',NULL,'belum','2026-04-04 07:51:11',2,0,0,0,0,NULL,NULL),
(799,32,'042026',175000,175000,'2026-04-10',1,'00856.BLR.MST.',NULL,'terkirim','2026-04-10 19:43:04',2,0,0,0,0,NULL,NULL),
(800,33,'042026',150000,150000,'2026-04-05',1,'00759.BLR.MST.',NULL,'terkirim','2026-04-05 11:40:45',2,0,0,0,0,NULL,NULL),
(801,34,'042026',175000,175000,'2026-04-09',1,'00819.BLR.MST.',NULL,'terkirim','2026-04-09 08:10:51',2,0,0,0,0,NULL,NULL),
(802,35,'042026',150000,150000,'2026-04-08',1,'00808.BLR.MST.',NULL,'terkirim','2026-04-08 10:56:39',2,0,0,0,0,NULL,NULL),
(803,36,'042026',150000,150000,'2026-04-06',1,'00799.BLR.MST.',NULL,'terkirim','2026-04-06 22:48:20',2,0,0,0,0,NULL,NULL),
(804,37,'042026',150000,150000,'2026-04-14',1,'00873.BLR.MST.',NULL,'terkirim','2026-04-14 07:44:15',2,0,0,0,0,NULL,NULL),
(805,38,'042026',150000,150000,'2026-04-09',1,'00827.BLR.MST.',NULL,'terkirim','2026-04-09 15:36:01',2,0,0,0,0,NULL,NULL),
(806,39,'042026',150000,150000,'2026-04-10',1,'00861.BLR.MST.',NULL,'terkirim','2026-04-10 23:32:27',2,0,0,0,0,NULL,NULL),
(807,40,'042026',150000,150000,'2026-04-10',1,'00849.BLR.MST.',NULL,'terkirim','2026-04-10 16:39:58',2,0,0,0,0,NULL,NULL),
(808,41,'042026',175000,175000,'2026-04-10',1,'00860.BLR.MST.',NULL,'terkirim','2026-04-10 23:31:22',2,0,0,0,0,NULL,NULL),
(809,42,'042026',175000,175000,'2026-04-05',1,'00783.BLR.MST.',NULL,'terkirim','2026-04-05 20:48:05',2,0,0,0,0,NULL,NULL),
(810,43,'042026',175000,175000,'2026-04-01',1,'00743.BLR.MST.',NULL,'belum','2026-04-01 11:04:06',2,0,0,0,0,NULL,NULL),
(811,44,'042026',175000,175000,'2026-04-05',1,'00760.BLR.MST.',NULL,'terkirim','2026-04-05 11:40:52',2,0,0,0,0,NULL,NULL),
(812,45,'042026',150000,150000,'2026-04-06',1,'00795.BLR.MST.',NULL,'terkirim','2026-04-06 20:18:06',2,0,0,0,0,NULL,NULL),
(813,46,'042026',175000,175000,'2026-04-05',1,'00766.BLR.MST.',NULL,'terkirim','2026-04-05 12:08:02',2,0,0,0,0,NULL,NULL),
(814,47,'042026',150000,150000,'2026-04-11',1,'00867.BLR.MST.',NULL,'terkirim','2026-04-11 08:28:44',2,0,0,0,0,NULL,NULL),
(816,49,'042026',150000,150000,'2026-04-09',1,'00822.BLR.MST.',NULL,'terkirim','2026-04-09 08:51:35',2,0,0,0,0,NULL,NULL),
(817,50,'042026',150000,150000,'2026-04-10',1,'00832.BLR.MST.',NULL,'terkirim','2026-04-10 08:57:24',2,0,0,0,0,NULL,NULL),
(818,51,'042026',150000,150000,'2026-04-08',1,'00812.BLR.MST.',NULL,'terkirim','2026-04-08 19:58:28',2,0,0,0,0,NULL,NULL),
(819,52,'042026',150000,150000,'2026-04-09',1,'00828.BLR.MST.',NULL,'terkirim','2026-04-09 16:45:47',2,0,0,0,0,NULL,NULL),
(820,53,'042026',150000,150000,'2026-04-06',1,'00788.BLR.MST.',NULL,'terkirim','2026-04-06 11:03:28',2,0,0,0,0,NULL,NULL),
(821,54,'042026',150000,150000,'2026-04-10',1,'00848.BLR.MST.',NULL,'terkirim','2026-04-10 16:39:33',2,0,0,0,0,NULL,NULL),
(822,55,'042026',150000,150000,'2026-04-10',1,'00851.BLR.MST.',NULL,'terkirim','2026-04-10 16:40:29',2,0,0,0,0,NULL,NULL),
(823,56,'042026',150000,150000,'2026-04-11',1,'00863.BLR.MST.',NULL,'terkirim','2026-04-11 05:16:38',2,0,0,0,0,NULL,NULL),
(824,57,'042026',150000,150000,'2026-04-07',1,'00803.BLR.MST.',NULL,'terkirim','2026-04-07 12:30:12',2,0,0,0,0,NULL,NULL),
(825,58,'042026',150000,150000,'2026-04-10',1,'00852.BLR.MST.',NULL,'terkirim','2026-04-10 16:41:09',2,0,0,0,0,NULL,NULL),
(826,59,'042026',150000,150000,'2026-04-10',1,'00831.BLR.MST.',NULL,'terkirim','2026-04-10 08:57:13',2,0,0,0,0,NULL,NULL),
(827,60,'042026',150000,150000,'2026-04-10',1,'00841.BLR.MST.',NULL,'terkirim','2026-04-10 13:55:37',2,0,0,0,0,NULL,NULL),
(828,61,'042026',175000,175000,'2026-04-05',1,'00778.BLR.MST.',NULL,'terkirim','2026-04-05 18:52:43',2,0,0,0,0,NULL,NULL),
(829,62,'042026',150000,150000,'2026-04-10',1,'00835.BLR.MST.',NULL,'terkirim','2026-04-10 09:05:46',2,0,0,0,0,NULL,NULL),
(830,63,'042026',150000,150000,'2026-04-10',1,'00847.BLR.MST.',NULL,'terkirim','2026-04-10 13:58:31',2,0,0,0,0,NULL,NULL),
(831,64,'042026',150000,150000,'2026-04-06',1,'00789.BLR.MST.',NULL,'terkirim','2026-04-06 11:03:48',2,0,0,0,0,NULL,NULL),
(832,65,'042026',100000,100000,'2026-04-09',1,'00818.BLR.MST.',NULL,'terkirim','2026-04-09 08:10:13',2,0,0,0,0,NULL,NULL),
(833,66,'042026',100000,100000,'2026-04-09',1,'00824.BLR.MST.',NULL,'terkirim','2026-04-09 08:52:01',2,0,0,0,0,NULL,NULL),
(834,67,'042026',100000,100000,'2026-04-09',1,'00817.BLR.MST.',NULL,'terkirim','2026-04-09 08:10:03',2,0,0,0,0,NULL,NULL),
(835,68,'042026',150000,150000,'2026-04-05',1,'00763.BLR.MST.',NULL,'terkirim','2026-04-05 12:06:50',2,0,0,0,0,NULL,NULL),
(836,69,'042026',100000,100000,'2026-04-05',1,'00774.BLR.MST.',NULL,'terkirim','2026-04-05 18:02:33',2,0,0,0,0,NULL,NULL),
(837,70,'042026',175000,175000,'2026-04-10',1,'00843.BLR.MST.',NULL,'terkirim','2026-04-10 13:57:33',2,0,0,0,0,NULL,NULL),
(838,71,'042026',150000,150000,'2026-04-10',1,'00854.BLR.MST.',NULL,'terkirim','2026-04-10 16:42:58',2,0,0,0,0,NULL,NULL),
(839,72,'042026',175000,175000,'2026-04-02',1,'00746.BLR.MST.',NULL,'belum','2026-04-02 11:23:07',2,0,0,0,0,NULL,NULL),
(840,73,'042026',150000,150000,'2026-04-06',1,'00797.BLR.MST.',NULL,'terkirim','2026-04-06 20:19:40',2,0,0,0,0,NULL,NULL),
(841,74,'042026',150000,150000,'2026-04-05',1,'00769.BLR.MST.',NULL,'terkirim','2026-04-05 13:08:59',2,0,0,0,0,NULL,NULL),
(842,75,'042026',175000,175000,'2026-04-05',1,'00764.BLR.MST.',NULL,'terkirim','2026-04-05 12:07:14',2,0,0,0,0,NULL,NULL),
(843,76,'042026',100000,100000,'2026-04-05',1,'00765.BLR.MST.',NULL,'terkirim','2026-04-05 12:07:44',2,0,0,0,0,NULL,NULL),
(844,77,'042026',150000,150000,'2026-04-09',1,'00820.BLR.MST.',NULL,'terkirim','2026-04-09 08:11:15',2,0,0,0,0,NULL,NULL),
(845,78,'042026',150000,150000,'2026-04-08',1,'00807.BLR.MST.',NULL,'terkirim','2026-04-08 10:35:19',2,0,0,0,0,NULL,NULL),
(846,79,'042026',150000,150000,'2026-04-05',1,'00771.BLR.MST.',NULL,'terkirim','2026-04-05 13:09:53',2,0,0,0,0,NULL,NULL),
(847,80,'042026',150000,150000,'2026-04-10',1,'00838.BLR.MST.',NULL,'terkirim','2026-04-10 09:08:39',2,0,0,0,0,NULL,NULL),
(848,81,'042026',150000,150000,'2026-04-11',1,'00862.BLR.MST.',NULL,'terkirim','2026-04-11 05:16:01',2,0,0,0,0,NULL,NULL),
(849,82,'042026',150000,150000,'2026-04-01',1,'00739.BLR.MST.',NULL,'belum','2026-04-01 11:02:17',2,0,0,0,0,NULL,NULL),
(850,83,'042026',150000,150000,'2026-04-10',1,'00855.BLR.MST.',NULL,'terkirim','2026-04-10 17:18:33',2,0,0,0,0,NULL,NULL),
(851,84,'042026',150000,150000,'2026-04-01',1,'00744.BLR.MST.',NULL,'belum','2026-04-01 18:06:02',2,0,0,0,0,NULL,NULL),
(852,85,'042026',150000,150000,'2026-04-05',1,'00773.BLR.MST.',NULL,'terkirim','2026-04-05 18:02:14',2,0,0,0,0,NULL,NULL),
(853,86,'042026',150000,150000,'2026-04-08',1,'00816.BLR.MST.',NULL,'terkirim','2026-04-08 22:21:27',2,0,0,0,0,NULL,NULL),
(854,87,'042026',175000,175000,'2026-04-05',1,'00777.BLR.MST.',NULL,'terkirim','2026-04-05 18:52:19',2,0,0,0,0,NULL,NULL),
(855,88,'042026',150000,150000,'2026-04-09',1,'00821.BLR.MST.',NULL,'terkirim','2026-04-09 08:51:23',2,0,0,0,0,NULL,NULL),
(856,89,'042026',150000,150000,'2026-04-05',1,'00756.BLR.MST.',NULL,'belum','2026-04-05 09:02:46',2,0,0,0,0,NULL,NULL),
(857,90,'042026',150000,150000,'2026-04-05',1,'00780.BLR.MST.',NULL,'terkirim','2026-04-05 18:54:07',2,0,0,0,0,NULL,NULL),
(858,91,'042026',175000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(859,92,'042026',150000,150000,'2026-04-06',1,'00787.BLR.MST.',NULL,'terkirim','2026-04-06 11:03:18',2,0,0,0,0,NULL,NULL),
(860,93,'042026',250000,250000,'2026-04-11',1,'00868.BLR.MST.',NULL,'terkirim','2026-04-11 10:27:31',2,0,0,0,0,NULL,NULL),
(861,94,'042026',150000,150000,'2026-04-05',1,'00762.BLR.MST.',NULL,'terkirim','2026-04-05 11:43:14',2,0,0,0,0,NULL,NULL),
(862,95,'042026',150000,150000,'2026-04-06',1,'00800.BLR.MST.',NULL,'terkirim','2026-04-06 22:48:34',2,0,0,0,0,NULL,NULL),
(863,96,'042026',150000,150000,'2026-04-23',1,'00001.BLR.MST.',NULL,'terkirim','2026-04-23 14:54:54',2,0,0,0,0,NULL,NULL),
(864,97,'042026',150000,150000,'2026-04-01',1,'00740.BLR.MST.',NULL,'belum','2026-04-01 11:02:53',2,0,0,0,0,NULL,NULL),
(865,98,'042026',150000,150000,'2026-04-07',1,'00804.BLR.MST.',NULL,'terkirim','2026-04-07 18:21:36',2,0,0,0,0,NULL,NULL),
(866,99,'042026',150000,150000,'2026-04-11',1,'00864.BLR.MST.',NULL,'terkirim','2026-04-11 05:17:03',2,0,0,0,0,NULL,NULL),
(867,100,'042026',175000,175000,'2026-04-09',1,'00825.BLR.MST.',NULL,'terkirim','2026-04-09 10:09:07',2,0,0,0,0,NULL,NULL),
(868,101,'042026',150000,150000,'2026-04-05',1,'00761.BLR.MST.',NULL,'terkirim','2026-04-05 11:42:58',2,0,0,0,0,NULL,NULL),
(869,102,'042026',150000,150000,'2026-04-10',1,'00840.BLR.MST.',NULL,'terkirim','2026-04-10 09:14:26',2,0,0,0,0,NULL,NULL),
(870,104,'042026',175000,175000,'2026-04-05',1,'00781.BLR.MST.',NULL,'terkirim','2026-04-05 20:47:16',2,0,0,0,0,NULL,NULL),
(871,105,'042026',150000,150000,'2026-04-02',1,'00749.BLR.MST.',NULL,'belum','2026-04-02 22:54:07',2,0,0,0,0,NULL,NULL),
(872,106,'042026',150000,150000,'2026-04-08',1,'00809.BLR.MST.',NULL,'terkirim','2026-04-08 12:45:57',2,0,0,0,0,NULL,NULL),
(873,107,'042026',175000,175000,'2026-04-01',1,'00741.BLR.MST.',NULL,'belum','2026-04-01 11:03:34',2,0,0,0,0,NULL,NULL),
(874,108,'042026',150000,150000,'2026-04-05',1,'00758.BLR.MST.',NULL,'belum','2026-04-05 11:28:28',2,0,0,0,0,NULL,NULL),
(875,109,'042026',175000,175000,'2026-04-11',1,'00871.BLR.MST.',NULL,'terkirim','2026-04-11 19:32:18',2,0,0,0,0,NULL,NULL),
(876,110,'042026',150000,150000,'2026-04-05',1,'00772.BLR.MST.',NULL,'terkirim','2026-04-05 13:38:18',2,0,0,0,0,NULL,NULL),
(877,112,'042026',150000,150000,'2026-04-10',1,'00846.BLR.MST.',NULL,'terkirim','2026-04-10 13:58:18',2,0,0,0,0,NULL,NULL),
(878,113,'042026',150000,150000,'2026-04-01',1,'00736.BLR.MST.',NULL,'belum','2026-04-01 11:01:41',2,0,0,0,0,NULL,NULL),
(879,114,'042026',150000,150000,'2026-04-05',1,'00775.BLR.MST.',NULL,'terkirim','2026-04-05 18:51:31',2,0,0,0,0,NULL,NULL),
(880,115,'042026',150000,150000,'2026-04-06',1,'00791.BLR.MST.',NULL,'terkirim','2026-04-06 13:11:28',2,0,0,0,0,NULL,NULL),
(881,117,'042026',150000,150000,'2026-04-05',1,'00779.BLR.MST.',NULL,'terkirim','2026-04-05 18:53:31',2,0,0,0,0,NULL,NULL),
(882,119,'042026',150000,150000,'2026-04-09',1,'00823.BLR.MST.',NULL,'terkirim','2026-04-09 08:51:48',2,0,0,0,0,NULL,NULL),
(883,120,'042026',150000,150000,'2026-04-06',1,'00793.BLR.MST.',NULL,'terkirim','2026-04-06 20:17:09',2,0,0,0,0,NULL,NULL),
(884,121,'042026',150000,150000,'2026-04-10',1,'00837.BLR.MST.',NULL,'terkirim','2026-04-10 09:08:15',2,0,0,0,0,NULL,NULL),
(885,122,'042026',150000,150000,'2026-04-08',1,'00813.BLR.MST.',NULL,'terkirim','2026-04-08 19:58:50',2,0,0,0,0,NULL,NULL),
(886,123,'042026',150000,150000,'2026-04-10',1,'00830.BLR.MST.',NULL,'terkirim','2026-04-10 08:57:00',2,0,0,0,0,NULL,NULL),
(887,124,'042026',150000,150000,'2026-04-06',1,'00794.BLR.MST.',NULL,'terkirim','2026-04-06 20:17:40',2,0,0,0,0,NULL,NULL),
(888,125,'042026',150000,150000,'2026-04-01',1,'00737.BLR.MST.',NULL,'belum','2026-04-01 11:01:52',2,0,0,0,0,NULL,NULL),
(889,126,'042026',175000,175000,'2026-04-05',1,'00770.BLR.MST.',NULL,'terkirim','2026-04-05 13:09:28',2,0,0,0,0,NULL,NULL),
(890,127,'042026',150000,150000,'2026-04-05',1,'00782.BLR.MST.',NULL,'terkirim','2026-04-05 20:47:27',2,0,0,0,0,NULL,NULL),
(891,128,'042026',150000,150000,'2026-04-08',1,'00810.BLR.MST.',NULL,'terkirim','2026-04-08 17:56:44',2,0,0,0,0,NULL,NULL),
(892,129,'042026',150000,150000,'2026-04-10',1,'00842.BLR.MST.',NULL,'terkirim','2026-04-10 13:55:49',2,0,0,0,0,NULL,NULL),
(893,130,'042026',175000,175000,'2026-04-03',1,'00751.BLR.MST.',NULL,'belum','2026-04-03 10:37:04',2,0,0,0,0,NULL,NULL),
(894,131,'042026',175000,175000,'2026-04-05',1,'00767.BLR.MST.',NULL,'terkirim','2026-04-05 12:11:05',2,0,0,0,0,NULL,NULL),
(896,133,'042026',150000,150000,'2026-04-08',1,'00811.BLR.MST.',NULL,'terkirim','2026-04-08 19:58:03',2,0,0,0,0,NULL,NULL),
(897,134,'042026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(898,135,'042026',150000,150000,'2026-04-06',1,'00790.BLR.MST.',NULL,'terkirim','2026-04-06 13:11:21',2,0,0,0,0,NULL,NULL),
(899,136,'042026',150000,150000,'2026-04-10',1,'00857.BLR.MST.',NULL,'terkirim','2026-04-10 19:50:06',2,0,0,0,0,NULL,NULL),
(900,137,'042026',150000,150000,'2026-04-10',1,'00829.BLR.MST.',NULL,'terkirim','2026-04-10 08:56:24',2,0,0,0,0,NULL,NULL),
(901,138,'042026',175000,175000,'2026-04-10',1,'00845.BLR.MST.',NULL,'terkirim','2026-04-10 13:58:01',2,0,0,0,0,NULL,NULL),
(902,139,'042026',150000,150000,'2026-04-06',1,'00785.BLR.MST.',NULL,'terkirim','2026-04-06 08:22:36',2,0,0,0,0,NULL,NULL),
(903,140,'042026',150000,150000,'2026-04-05',1,'00768.BLR.MST.',NULL,'terkirim','2026-04-05 13:08:39',2,0,0,0,0,NULL,NULL),
(904,141,'042026',150000,150000,'2026-04-10',1,'00853.BLR.MST.',NULL,'terkirim','2026-04-10 16:41:46',2,0,0,0,0,NULL,NULL),
(905,142,'042026',150000,150000,'2026-04-10',1,'00858.BLR.MST.',NULL,'terkirim','2026-04-10 20:19:04',2,0,0,0,0,NULL,NULL),
(906,143,'042026',150000,150000,'2026-04-12',1,'00872.BLR.MST.',NULL,'terkirim','2026-04-12 21:52:50',2,0,0,0,0,NULL,NULL),
(907,144,'042026',250000,250000,'2026-04-10',1,'00859.BLR.MST.',NULL,'terkirim','2026-04-10 23:30:23',2,0,0,0,0,NULL,NULL),
(908,145,'042026',150000,150000,'2026-04-06',1,'00796.BLR.MST.',NULL,'terkirim','2026-04-06 20:18:34',2,0,0,0,0,NULL,NULL),
(909,146,'042026',150000,150000,'2026-04-10',1,'00844.BLR.MST.',NULL,'terkirim','2026-04-10 13:57:49',2,0,0,0,0,NULL,NULL),
(910,147,'042026',150000,150000,'2026-04-05',1,'00776.BLR.MST.',NULL,'terkirim','2026-04-05 18:52:08',2,0,0,0,0,NULL,NULL),
(911,148,'042026',150000,150000,'2026-04-06',1,'00786.BLR.MST.',NULL,'terkirim','2026-04-06 08:58:56',2,0,0,0,0,NULL,NULL),
(912,149,'042026',150000,150000,'2026-04-02',1,'00748.BLR.MST.',NULL,'terkirim','2026-04-02 17:26:38',2,0,0,0,0,NULL,NULL),
(913,150,'042026',150000,150000,'2026-04-05',1,'00753.BLR.MST.',NULL,'terkirim','2026-04-05 08:31:51',2,0,0,0,0,NULL,NULL),
(914,151,'042026',150000,150000,'2026-04-06',1,'00798.BLR.MST.',NULL,'terkirim','2026-04-06 20:20:12',2,0,0,0,0,NULL,NULL),
(915,152,'042026',150000,150000,'2026-04-08',1,'00815.BLR.MST.',NULL,'belum','2026-04-08 21:50:10',2,0,0,0,0,NULL,NULL),
(916,153,'042026',150000,150000,'2026-04-11',1,'00866.BLR.MST.',NULL,'terkirim','2026-04-11 08:08:58',2,0,0,0,0,NULL,NULL),
(921,154,'032026',2000,2000,'2026-04-18',1,'MAN2026040921',NULL,'terkirim','2026-04-18 11:54:03',NULL,1,0,0,0,NULL,NULL),
(922,154,'032026',100000,100000,'2026-04-18',1,'MAN2026040922',NULL,'terkirim','2026-04-18 12:00:39',NULL,1,100000,0,0,NULL,NULL),
(928,154,'042026',1000,1000,'2026-04-23',1,'00001.BLR.MST.',NULL,'belum','2026-04-23 18:23:04',NULL,0,0,0,0,NULL,NULL),
(929,48,'042026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(930,155,'042026',100000,100000,'2026-04-20',1,'00001.BLR.MST.',NULL,'terkirim','2026-04-20 18:02:04',NULL,1,100000,0,0,'Bea Pemasangan Baru','2026-04-21 17:59:26'),
(931,156,'042026',100000,100000,'2026-04-23',1,'MAN2026040931',NULL,'terkirim','2026-04-23 17:58:52',NULL,1,100000,0,0,'Bea Pemasangan Baru','2026-04-24 17:50:18'),
(932,154,'042026',10000,10000,'2026-05-26',1,'MAN2026040932',NULL,'terkirim','2026-05-26 11:52:35',NULL,1,0,10000,0,'Jasa Troubleshooting','2026-04-24 18:10:51'),
(933,157,'042026',100000,100000,'2026-04-24',1,'00001.BLR.MST.',NULL,'terkirim','2026-04-24 17:44:41',NULL,1,100000,0,0,'Bea Pemasangan Baru','2026-04-25 17:34:14'),
(935,2,'052026',75000,75000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 07:09:59',NULL,0,0,0,0,NULL,NULL),
(936,3,'052026',100000,100000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 12:12:02',NULL,0,0,0,0,NULL,NULL),
(937,4,'052026',100000,100000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 06:35:51',2,0,0,0,0,NULL,NULL),
(938,5,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 07:06:25',NULL,0,0,0,0,NULL,NULL),
(939,6,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 17:56:03',NULL,0,0,0,0,NULL,NULL),
(940,7,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 09:35:25',NULL,0,0,0,0,NULL,NULL),
(941,8,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:48:57',NULL,0,0,0,0,NULL,NULL),
(942,9,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 20:39:04',2,0,0,0,0,NULL,NULL),
(943,10,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 16:03:27',NULL,0,0,0,0,NULL,NULL),
(945,12,'052026',150000,150000,'2026-05-13',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-13 10:23:14',NULL,0,0,0,0,NULL,NULL),
(946,13,'052026',175000,175000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 14:13:04',2,0,0,0,0,NULL,NULL),
(947,14,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 00:33:23',NULL,0,0,0,0,NULL,NULL),
(948,15,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 16:50:44',NULL,0,0,0,0,NULL,NULL),
(949,16,'052026',75000,75000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:15:21',NULL,0,0,0,0,NULL,NULL),
(951,20,'052026',175000,175000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 09:10:36',NULL,0,0,0,0,NULL,NULL),
(952,21,'052026',150000,150000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 11:36:02',NULL,0,0,0,0,NULL,NULL),
(953,22,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 06:36:10',NULL,0,0,0,0,NULL,NULL),
(954,23,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 21:43:57',NULL,0,0,0,0,NULL,NULL),
(955,24,'052026',150000,150000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 06:07:45',NULL,0,0,0,0,NULL,NULL),
(956,25,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:31:49',NULL,0,0,0,0,NULL,NULL),
(957,26,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:44:57',NULL,0,0,0,0,NULL,NULL),
(958,27,'052026',150000,150000,'2026-05-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-07 09:11:11',2,0,0,0,0,NULL,NULL),
(959,28,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 21:14:53',NULL,0,0,0,0,NULL,NULL),
(960,29,'052026',175000,175000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 16:03:44',NULL,0,0,0,0,NULL,NULL),
(961,30,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:57:42',NULL,0,0,0,0,NULL,NULL),
(962,31,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 19:05:04',NULL,0,0,0,0,NULL,NULL),
(963,32,'052026',175000,175000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:23:39',NULL,0,0,0,0,NULL,NULL),
(964,33,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 07:59:49',NULL,0,0,0,0,NULL,NULL),
(965,34,'052026',175000,175000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 16:09:05',NULL,0,0,0,0,NULL,NULL),
(966,35,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:40:46',NULL,0,0,0,0,NULL,NULL),
(967,36,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 13:15:20',NULL,0,0,0,0,NULL,NULL),
(968,37,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 08:02:39',2,0,0,0,0,NULL,NULL),
(969,38,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 10:10:19',NULL,0,0,0,0,NULL,NULL),
(970,39,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 23:13:17',NULL,0,0,0,0,NULL,NULL),
(971,40,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 18:25:47',NULL,0,0,0,0,NULL,NULL),
(972,41,'052026',175000,175000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 13:20:06',2,0,0,0,0,NULL,NULL),
(973,42,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:01:30',NULL,0,0,0,0,NULL,NULL),
(974,43,'052026',175000,175000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 09:53:13',2,0,0,0,0,NULL,NULL),
(975,44,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:30:38',2,0,0,0,0,NULL,NULL),
(976,45,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 09:28:48',NULL,0,0,0,0,NULL,NULL),
(977,46,'052026',175000,175000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 16:35:19',NULL,0,0,0,0,NULL,NULL),
(979,49,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 14:35:10',NULL,0,0,0,0,NULL,NULL),
(980,50,'052026',150000,150000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 19:56:51',NULL,0,0,0,0,NULL,NULL),
(981,51,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 13:21:38',2,0,0,0,0,NULL,NULL),
(982,52,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 19:18:46',NULL,0,0,0,0,NULL,NULL),
(983,53,'052026',150000,150000,'2026-05-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-07 12:39:25',NULL,0,0,0,0,NULL,NULL),
(984,54,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 18:18:05',2,0,0,0,0,NULL,NULL),
(985,55,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 10:12:07',NULL,0,0,0,0,NULL,NULL),
(986,56,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 12:14:10',NULL,0,0,0,0,NULL,NULL),
(987,57,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 13:55:44',NULL,0,0,0,0,NULL,NULL),
(988,58,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 12:14:10',NULL,0,0,0,0,NULL,NULL),
(989,59,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:35:24',NULL,0,0,0,0,NULL,NULL),
(990,60,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 15:12:46',NULL,0,0,0,0,NULL,NULL),
(991,61,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:26:05',NULL,0,0,0,0,NULL,NULL),
(992,62,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 09:14:52',NULL,0,0,0,0,NULL,NULL),
(993,63,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 18:41:25',NULL,0,0,0,0,NULL,NULL),
(994,64,'052026',150000,150000,'2026-05-03',1,'00001.BLR.MST.',NULL,'belum','2026-05-03 09:59:37',NULL,0,0,0,0,NULL,NULL),
(995,65,'052026',100000,100000,'2026-05-03',1,'00001.BLR.MST.',NULL,'belum','2026-05-03 17:04:33',2,0,0,0,0,NULL,NULL),
(996,66,'052026',100000,100000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 10:50:09',NULL,0,0,0,0,NULL,NULL),
(997,67,'052026',100000,100000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 22:11:30',2,0,0,0,0,NULL,NULL),
(998,68,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 08:30:54',NULL,0,0,0,0,NULL,NULL),
(999,69,'052026',100000,100000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 09:29:30',2,0,0,0,0,NULL,NULL),
(1000,70,'052026',175000,175000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 07:00:42',NULL,0,0,0,0,NULL,NULL),
(1001,71,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 16:19:26',2,0,0,0,0,NULL,NULL),
(1002,72,'052026',175000,175000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 05:06:09',NULL,0,0,0,0,NULL,NULL),
(1003,73,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 18:52:42',NULL,0,0,0,0,NULL,NULL),
(1004,74,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'belum','2026-05-05 07:16:26',2,0,0,0,0,NULL,NULL),
(1005,75,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 22:56:17',NULL,0,0,0,0,NULL,NULL),
(1006,76,'052026',100000,100000,'2026-05-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-07 15:50:24',2,0,0,0,0,NULL,NULL),
(1007,77,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 07:13:30',2,0,0,0,0,NULL,NULL),
(1008,78,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 07:14:56',2,0,0,0,0,NULL,NULL),
(1009,79,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 09:10:25',NULL,0,0,0,0,NULL,NULL),
(1010,80,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 19:50:27',NULL,0,0,0,0,NULL,NULL),
(1011,81,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 19:34:55',2,0,0,0,0,NULL,NULL),
(1012,82,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 06:35:36',2,0,0,0,0,NULL,NULL),
(1013,83,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:41:52',2,0,0,0,0,NULL,NULL),
(1014,84,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 13:10:24',NULL,0,0,0,0,NULL,NULL),
(1015,85,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 16:38:23',2,0,0,0,0,NULL,NULL),
(1016,86,'052026',150000,150000,'2026-05-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-08 19:38:31',NULL,0,0,0,0,NULL,NULL),
(1017,87,'052026',175000,175000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 14:12:57',2,0,0,0,0,NULL,NULL),
(1018,88,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 07:42:24',NULL,0,0,0,0,NULL,NULL),
(1019,89,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 19:21:07',NULL,0,0,0,0,NULL,NULL),
(1020,90,'052026',150000,150000,'2026-05-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-08 19:55:41',2,0,0,0,0,NULL,NULL),
(1022,92,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 09:36:44',NULL,0,0,0,0,NULL,NULL),
(1023,93,'052026',250000,250000,'2026-05-13',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-13 21:48:53',2,0,0,0,0,NULL,NULL),
(1024,94,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 22:49:28',NULL,0,0,0,0,NULL,NULL),
(1025,95,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 19:41:06',NULL,0,0,0,0,NULL,NULL),
(1027,97,'052026',150000,150000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 03:11:32',NULL,0,0,0,0,NULL,NULL),
(1028,98,'052026',150000,150000,'2026-05-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-07 07:53:19',2,0,0,0,0,NULL,NULL),
(1029,99,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 22:13:59',2,0,0,0,0,NULL,NULL),
(1030,100,'052026',175000,175000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 13:14:58',NULL,0,0,0,0,NULL,NULL),
(1031,101,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 22:10:29',NULL,0,0,0,0,NULL,NULL),
(1032,102,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 13:19:52',2,0,0,0,0,NULL,NULL),
(1033,104,'052026',175000,175000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 10:07:03',NULL,0,0,0,0,NULL,NULL),
(1034,105,'052026',150000,150000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 09:28:31',2,0,0,0,0,NULL,NULL),
(1035,106,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 18:13:18',2,0,0,0,0,NULL,NULL),
(1036,107,'052026',175000,175000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 08:19:38',NULL,0,0,0,0,NULL,NULL),
(1037,108,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 14:06:09',NULL,0,0,0,0,NULL,NULL),
(1039,110,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 18:15:05',2,0,0,0,0,NULL,NULL),
(1040,112,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 09:32:38',NULL,0,0,0,0,NULL,NULL),
(1041,113,'052026',150000,150000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 11:23:35',NULL,0,0,0,0,NULL,NULL),
(1042,114,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 20:21:31',NULL,0,0,0,0,NULL,NULL),
(1043,115,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 18:26:40',NULL,0,0,0,0,NULL,NULL),
(1044,117,'052026',150000,150000,'2026-05-04',1,'00001.BLR.MST.',NULL,'belum','2026-05-04 18:15:54',NULL,0,0,0,0,NULL,NULL),
(1045,119,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 19:21:29',NULL,0,0,0,0,NULL,NULL),
(1046,120,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:20:40',NULL,0,0,0,0,NULL,NULL),
(1047,121,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 09:58:33',NULL,0,0,0,0,NULL,NULL),
(1048,122,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:33:40',NULL,0,0,0,0,NULL,NULL),
(1049,123,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 20:11:48',NULL,0,0,0,0,NULL,NULL),
(1050,124,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 12:04:43',NULL,0,0,0,0,NULL,NULL),
(1051,125,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 06:36:32',NULL,0,0,0,0,NULL,NULL),
(1052,126,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 22:56:08',NULL,0,0,0,0,NULL,NULL),
(1053,127,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 21:35:53',NULL,0,0,0,0,NULL,NULL),
(1054,128,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 08:25:53',NULL,0,0,0,0,NULL,NULL),
(1055,129,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 18:55:58',NULL,0,0,0,0,NULL,NULL),
(1056,130,'052026',175000,175000,'2026-05-02',1,'00001.BLR.MST.',NULL,'belum','2026-05-02 00:06:47',NULL,0,0,0,0,NULL,NULL),
(1057,131,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:30:41',NULL,0,0,0,0,NULL,NULL),
(1058,133,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 06:00:12',NULL,0,0,0,0,NULL,NULL),
(1060,135,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 21:33:54',NULL,0,0,0,0,NULL,NULL),
(1061,136,'052026',150000,150000,'2026-05-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-08 10:49:14',2,0,0,0,0,NULL,NULL),
(1062,137,'052026',150000,150000,'2026-05-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-07 20:11:44',2,0,0,0,0,NULL,NULL),
(1064,139,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 06:56:26',NULL,0,0,0,0,NULL,NULL),
(1065,140,'052026',150000,150000,'2026-05-03',1,'00001.BLR.MST.',NULL,'belum','2026-05-03 00:09:48',NULL,0,0,0,0,NULL,NULL),
(1067,142,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 22:48:45',NULL,0,0,0,0,NULL,NULL),
(1068,143,'052026',150000,NULL,NULL,NULL,NULL,1,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1069,144,'052026',250000,250000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 16:47:52',2,0,0,0,0,NULL,NULL),
(1070,145,'052026',150000,150000,'2026-05-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-08 23:39:27',2,0,0,0,0,NULL,NULL),
(1071,146,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 15:26:13',NULL,0,0,0,0,NULL,NULL),
(1072,147,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 14:12:50',2,0,0,0,0,NULL,NULL),
(1073,148,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 08:47:57',NULL,0,0,0,0,NULL,NULL),
(1074,149,'052026',150000,150000,'2026-05-11',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-11 05:41:14',NULL,0,0,0,0,NULL,NULL),
(1075,150,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 13:35:08',NULL,0,0,0,0,NULL,NULL),
(1076,151,'052026',150000,150000,'2026-05-01',1,'00001.BLR.MST.',NULL,'belum','2026-05-01 05:53:25',NULL,0,0,0,0,NULL,NULL),
(1077,152,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 17:56:49',NULL,0,0,0,0,NULL,NULL),
(1078,153,'052026',150000,150000,'2026-05-09',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-09 12:01:14',NULL,0,0,0,0,NULL,NULL),
(1080,155,'052026',150000,150000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 17:20:11',NULL,0,0,0,0,NULL,NULL),
(1081,156,'052026',150000,150000,'2026-05-10',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-10 20:31:39',NULL,0,0,0,0,NULL,NULL),
(1082,157,'052026',175000,175000,'2026-05-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-05 09:33:18',NULL,0,0,0,0,NULL,NULL),
(1084,138,'052026',150000,150000,'2026-05-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-06 20:10:28',NULL,0,0,0,0,NULL,NULL),
(1085,143,'042026',100000,NULL,NULL,NULL,'MAN2026051085',NULL,'terkirim',NULL,NULL,1,100000,0,0,'Bea Pemasangan Baru','2026-05-14 06:58:54'),
(1086,154,'052026',1000,1000,'2026-05-28',1,'00001.BLR.MST.',NULL,'belum','2026-05-28 23:13:16',NULL,0,0,0,0,NULL,NULL),
(1087,11,'052026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1088,17,'052026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1089,47,'052026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1090,91,'052026',175000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1091,96,'052026',150000,150000,'2026-05-26',1,'00001.BLR.MST.',NULL,'belum','2026-05-26 13:47:57',2,0,0,0,0,NULL,NULL),
(1092,109,'052026',175000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1093,134,'052026',150000,NULL,NULL,NULL,NULL,NULL,'belum',NULL,NULL,0,0,0,0,NULL,NULL),
(1094,141,'052026',150000,150000,'2026-05-26',1,'00001.BLR.MST.',NULL,'belum','2026-05-26 13:47:46',2,0,0,0,0,NULL,NULL),
(1095,158,'052026',150000,150000,'2026-05-26',1,'00001.BLR.MST.',NULL,'belum','2026-05-26 13:48:02',2,0,0,0,0,NULL,NULL),
(1096,154,'052026',1000,1000,'2026-05-28',1,'00001.BLR.MST.',NULL,'terkirim','2026-05-28 23:13:16',NULL,1,0,0,1000,'Lain-Lain','2026-05-27 12:27:14'),
(1097,2,'062026',75000,75000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 06:40:57',NULL,0,0,0,0,NULL,NULL),
(1098,3,'062026',100000,100000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 11:09:27',NULL,0,0,0,0,NULL,NULL),
(1099,4,'062026',100000,100000,'2026-06-04',1,'00001.BLR.MST.',NULL,'belum','2026-06-04 19:16:46',NULL,0,0,0,0,NULL,NULL),
(1100,5,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:21:01',NULL,0,0,0,0,NULL,NULL),
(1101,6,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1102,7,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 20:55:29',2,0,0,0,0,NULL,NULL),
(1103,8,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1104,9,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1105,10,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 08:48:02',NULL,0,0,0,0,NULL,NULL),
(1106,11,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1107,12,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1108,13,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1109,14,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1110,15,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 18:23:35',NULL,0,0,0,0,NULL,NULL),
(1111,16,'062026',75000,75000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:30:33',NULL,0,0,0,0,NULL,NULL),
(1112,17,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1113,20,'062026',175000,175000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 11:46:42',NULL,0,0,0,0,NULL,NULL),
(1114,21,'062026',150000,150000,'2026-06-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-07 11:07:13',NULL,0,0,0,0,NULL,NULL),
(1115,22,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1116,23,'062026',150000,150000,'2026-06-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-08 11:03:55',NULL,0,0,0,0,NULL,NULL),
(1117,24,'062026',150000,150000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 11:14:33',NULL,0,0,0,0,NULL,NULL),
(1118,25,'062026',175000,175000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 14:54:55',NULL,0,0,0,0,NULL,NULL),
(1119,26,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1120,27,'062026',150000,150000,'2026-06-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-07 16:41:10',NULL,0,0,0,0,NULL,NULL),
(1121,28,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1122,29,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1123,30,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:34:53',NULL,0,0,0,0,NULL,NULL),
(1124,31,'062026',150000,150000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 17:17:04',NULL,0,0,0,0,NULL,NULL),
(1125,32,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:53:10',NULL,0,0,0,0,NULL,NULL),
(1126,33,'062026',150000,150000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 19:32:09',NULL,0,0,0,0,NULL,NULL),
(1127,34,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1128,35,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1129,36,'062026',150000,150000,'2026-06-07',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-07 19:11:58',NULL,0,0,0,0,NULL,NULL),
(1130,37,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1131,38,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1132,39,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1133,40,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1134,41,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1135,42,'062026',175000,175000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 16:38:49',NULL,0,0,0,0,NULL,NULL),
(1136,43,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'belum','2026-06-05 08:07:11',NULL,0,0,0,0,NULL,NULL),
(1137,44,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 10:01:30',NULL,0,0,0,0,NULL,NULL),
(1138,45,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1139,46,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 11:32:00',NULL,0,0,0,0,NULL,NULL),
(1140,47,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-01 09:19:09',NULL,0,0,0,0,NULL,NULL),
(1141,49,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 11:10:18',NULL,0,0,0,0,NULL,NULL),
(1142,50,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 06:12:58',NULL,0,0,0,0,NULL,NULL),
(1143,51,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 08:50:48',NULL,0,0,0,0,NULL,NULL),
(1144,52,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 18:01:54',NULL,0,0,0,0,NULL,NULL),
(1145,53,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 21:56:07',NULL,0,0,0,0,NULL,NULL),
(1146,54,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1147,55,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1148,56,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 12:57:45',NULL,0,0,0,0,NULL,NULL),
(1149,57,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 09:19:04',NULL,0,0,0,0,NULL,NULL),
(1150,58,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1151,59,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1152,60,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1153,61,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:24:39',NULL,0,0,0,0,NULL,NULL),
(1154,62,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:31:44',NULL,0,0,0,0,NULL,NULL),
(1155,63,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1156,64,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:40:26',NULL,0,0,0,0,NULL,NULL),
(1157,65,'062026',100000,100000,'2026-06-03',1,'00001.BLR.MST.',NULL,'belum','2026-06-03 20:53:06',NULL,0,0,0,0,NULL,NULL),
(1158,66,'062026',100000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1159,67,'062026',100000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1160,68,'062026',150000,150000,'2026-06-08',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-08 00:43:19',NULL,0,0,0,0,NULL,NULL),
(1161,69,'062026',100000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1162,70,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1163,71,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 08:47:25',NULL,0,0,0,0,NULL,NULL),
(1164,72,'062026',175000,175000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 19:32:47',NULL,0,0,0,0,NULL,NULL),
(1165,73,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 14:46:10',NULL,0,0,0,0,NULL,NULL),
(1166,74,'062026',150000,150000,'2026-06-03',1,'00001.BLR.MST.',NULL,'belum','2026-06-03 10:56:56',NULL,0,0,0,0,NULL,NULL),
(1167,75,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 09:26:11',NULL,0,0,0,0,NULL,NULL),
(1168,76,'062026',100000,100000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 18:07:48',NULL,0,0,0,0,NULL,NULL),
(1169,77,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1170,78,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1171,79,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 09:19:49',NULL,0,0,0,0,NULL,NULL),
(1172,80,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1173,81,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1174,82,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 09:14:45',2,0,0,0,0,NULL,NULL),
(1175,83,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1176,84,'062026',150000,150000,'2026-06-04',1,'00001.BLR.MST.',NULL,'belum','2026-06-04 09:16:41',NULL,0,0,0,0,NULL,NULL),
(1177,85,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 16:56:21',NULL,0,0,0,0,NULL,NULL),
(1178,86,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 19:53:50',NULL,0,0,0,0,NULL,NULL),
(1179,87,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 13:40:50',2,0,0,0,0,NULL,NULL),
(1180,88,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1181,89,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:29:50',NULL,0,0,0,0,NULL,NULL),
(1182,90,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1183,91,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1184,92,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1185,93,'062026',250000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1186,94,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:31:04',NULL,0,0,0,0,NULL,NULL),
(1187,95,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 23:15:06',NULL,0,0,0,0,NULL,NULL),
(1188,96,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1189,97,'062026',150000,150000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 12:58:27',NULL,0,0,0,0,NULL,NULL),
(1190,98,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:31:50',NULL,0,0,0,0,NULL,NULL),
(1191,99,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1192,100,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 09:52:40',NULL,0,0,0,0,NULL,NULL),
(1193,101,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 11:25:17',NULL,0,0,0,0,NULL,NULL),
(1194,102,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1195,104,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1196,105,'062026',150000,150000,'2026-06-03',1,'00001.BLR.MST.',NULL,'belum','2026-06-03 08:57:10',2,0,0,0,0,NULL,NULL),
(1197,106,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 13:05:31',NULL,0,0,0,0,NULL,NULL),
(1198,107,'062026',175000,175000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 12:59:54',NULL,0,0,0,0,NULL,NULL),
(1199,108,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 23:28:02',NULL,0,0,0,0,NULL,NULL),
(1200,109,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1201,110,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1202,112,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1203,113,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1204,114,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 12:53:11',NULL,0,0,0,0,NULL,NULL),
(1205,115,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 09:25:04',NULL,0,0,0,0,NULL,NULL),
(1206,117,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 17:48:48',NULL,0,0,0,0,NULL,NULL),
(1207,119,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1208,120,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 10:53:35',NULL,0,0,0,0,NULL,NULL),
(1209,121,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1210,122,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1211,123,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1212,124,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 19:20:45',NULL,0,0,0,0,NULL,NULL),
(1213,125,'062026',150000,150000,'2026-06-04',1,'00001.BLR.MST.',NULL,'belum','2026-06-04 10:33:50',NULL,0,0,0,0,NULL,NULL),
(1214,126,'062026',175000,175000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 00:35:43',NULL,0,0,0,0,NULL,NULL),
(1215,127,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 19:56:24',NULL,0,0,0,0,NULL,NULL),
(1216,128,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1217,129,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1218,130,'062026',175000,175000,'2026-06-02',1,'00001.BLR.MST.',NULL,'belum','2026-06-02 15:17:04',NULL,0,0,0,0,NULL,NULL),
(1219,131,'062026',175000,175000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 15:08:39',NULL,0,0,0,0,NULL,NULL),
(1220,133,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1221,134,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1222,135,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1223,136,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1224,137,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 10:27:36',NULL,0,0,0,0,NULL,NULL),
(1225,138,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1226,139,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 16:26:21',NULL,0,0,0,0,NULL,NULL),
(1227,140,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 12:18:22',NULL,0,0,0,0,NULL,NULL),
(1228,141,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1229,142,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1230,143,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1231,144,'062026',250000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1232,145,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1233,146,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1234,147,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 13:40:55',2,0,0,0,0,NULL,NULL),
(1235,148,'062026',150000,150000,'2026-06-05',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-05 08:55:15',NULL,0,0,0,0,NULL,NULL),
(1236,149,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1237,150,'062026',150000,150000,'2026-06-03',1,'00001.BLR.MST.',NULL,'belum','2026-06-03 20:52:16',NULL,0,0,0,0,NULL,NULL),
(1238,151,'062026',150000,150000,'2026-06-01',1,'00001.BLR.MST.',NULL,'belum','2026-06-01 19:27:25',NULL,0,0,0,0,NULL,NULL),
(1239,152,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1240,153,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1241,154,'062026',1000,1000,'2026-06-05',1,'00001.BLR.MST.',NULL,'belum','2026-06-05 08:37:34',NULL,0,0,0,0,NULL,NULL),
(1242,155,'062026',150000,150000,'2026-06-03',1,'00001.BLR.MST.',NULL,'belum','2026-06-03 07:04:32',NULL,0,0,0,0,NULL,NULL),
(1243,156,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 19:48:58',NULL,0,0,0,0,NULL,NULL),
(1244,157,'062026',175000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1245,158,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1246,159,'062026',150000,NULL,NULL,NULL,NULL,NULL,'terkirim',NULL,NULL,0,0,0,0,NULL,NULL),
(1247,160,'062026',150000,150000,'2026-06-02',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-02 18:27:50',NULL,0,0,0,0,NULL,NULL),
(1249,161,'062026',175000,175000,'2026-06-06',1,'00001.BLR.MST.',NULL,'terkirim','2026-06-06 12:18:13',NULL,0,0,0,0,NULL,NULL),
(1250,162,'062026',150000,150000,'2026-06-06',1,'00001.BLR.MST.',NULL,'belum','2026-06-06 17:10:54',NULL,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `tb_tagihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES
(2,'admin','admin','Espansa70','admin','title.png',0,'123456778'),
(125,'r16','Alif Ulil Amri','Indotel@123','user','admin.png',2,''),
(126,'s10','Rina Noviyani','Indotel@123','user','admin.png',3,''),
(127,'r21','Winda Hatmanti N','Indotel@123','user','admin.png',4,''),
(128,'c25','Dika Suryanto','Indotel@123','user','admin.png',5,''),
(129,'c26','Yohanes Putra P','Indotel@123','user','admin.png',6,''),
(130,'c27','Willi Hartanto','Indotel@123','user','admin.png',7,''),
(131,'q6','Hamdani Citra P','Indotel@123','user','admin.png',8,''),
(132,'r23','Cornelius Nuga','Indotel@123','user','admin.png',9,''),
(133,'t11','Rafik Dwi Pangestu','Indotel@123','user','admin.png',10,''),
(134,'c9','Yudhatama Pualam S','Indotel@123','user','admin.png',11,''),
(135,'d6','Lorien Nurajay Oxa','Indotel@123','user','admin.png',12,''),
(136,'c23','Dwi Anggoro','Indotel@123','user','admin.png',13,''),
(137,'q27','Muhammad Sulistyo P','Indotel@123','user','admin.png',14,''),
(138,'p8','Kosa Vandira','Indotel@123','user','admin.png',15,''),
(139,'s13','Handika Kurniajaya','Indotel@123','user','admin.png',16,''),
(140,'q9','Yanuar Bagaskara','Indotel@123','user','admin.png',17,''),
(143,'k17','Agustin Wahyuningtyas','Indotel@123','user','admin.png',20,''),
(144,'e16','Whiesa Daniswara','Indotel@123','user','admin.png',21,''),
(145,'d18','Muhammad Thoad ','Indotel@123','user','admin.png',22,''),
(146,'e10','Eka Yunan Tabah F','Indotel@123','user','admin.png',23,''),
(147,'q32','Rosyid ','Indotel@123','user','admin.png',24,''),
(148,'o24','Wahyu Rohadi','Indotel@123','user','admin.png',25,''),
(149,'r4','Didik Kurniawan','Indotel@123','user','admin.png',26,''),
(150,'c17','Putra Christian S','Indotel@123','user','admin.png',27,''),
(151,'i2','Putri Satiti M','Indotel@123','user','admin.png',28,''),
(152,'d12','Sigit Purwanto','Indotel@123','user','admin.png',29,''),
(153,'s14','Ita Fitriana P','Indotel@123','user','admin.png',30,''),
(154,'l16','Ibnudin Malik','Indotel@123','user','admin.png',31,''),
(155,'d10','Anindityo Laksono P','Indotel@123','user','admin.png',32,''),
(156,'i19','Jodi Setiawan','Indotel@123','user','admin.png',33,''),
(157,'h6','Lestari','Indotel@123','user','admin.png',34,''),
(158,'o21','Ady Laksono','Indotel@123','user','admin.png',35,''),
(159,'n4','Jontang Setiawan','Indotel@123','user','admin.png',36,''),
(160,'u4','Lastri','Indotel@123','user','admin.png',37,''),
(161,'d23','Haryo Hutomo P','Indotel@123','user','admin.png',38,''),
(162,'e31','Galih Apriliyanto','Indotel@123','user','admin.png',39,''),
(163,'t3','Dyah Ayu Puspitasari','Indotel@123','user','admin.png',40,''),
(164,'k2','Yosep Adi Prastiyo','Indotel@123','user','admin.png',41,''),
(165,'e29','Deri Anggri Yarosah','Indotel@123','user','admin.png',42,''),
(166,'q25','Heri Setiawan','Indotel@123','user','admin.png',43,''),
(167,'g7','Chrisna Barlianto','Indotel@123','user','admin.png',44,''),
(168,'t12','Destania Aurelia N R','Indotel@123','user','admin.png',45,''),
(169,'p5','Bilal Erlangga Mukti','Indotel@123','user','admin.png',46,''),
(170,'e17','Galuh Rayindita A','Indotel@123','user','admin.png',47,''),
(172,'g10','Lanny Latifah','Indotel@123','user','admin.png',49,''),
(173,'q23','Kiki Widiastiti','Indotel@123','user','admin.png',50,''),
(174,'k12','Yusa Adi Cahyono','Indotel@123','user','admin.png',51,''),
(175,'q13','Auriga Maulana K','Indotel@123','user','admin.png',52,''),
(176,'b5','Yasinta Prastuti','Indotel@123','user','admin.png',53,''),
(177,'s15','Samino','Indotel@123','user','admin.png',54,''),
(178,'k1','Kurniasari Novi A','Indotel@123','user','admin.png',55,''),
(179,'t13','Diki Darma Saputra','Indotel@123','user','admin.png',56,''),
(180,'s17','Andhika Praditya B','Indotel@123','user','admin.png',57,''),
(181,'q4','Ajis Wiyanto','Indotel@123','user','admin.png',58,''),
(182,'c28','Aldias Alif S','Indotel@123','user','admin.png',59,''),
(183,'q8','Ichsan Widyansah','Indotel@123','user','admin.png',60,''),
(184,'r26','Gita Puspita Aisyah','Indotel@123','user','admin.png',61,''),
(185,'g8','Felicianus Adi N','Indotel@123','user','admin.png',62,''),
(186,'s18','Hanggoro Wahyu S','Indotel@123','user','admin.png',63,''),
(187,'g9','Fransiska Pangalissani','Indotel@123','user','admin.png',64,''),
(188,'s5','Kintan Fitrianingsih','Indotel@123','user','admin.png',65,''),
(189,'s4','Friddwa Rima H','Indotel@123','user','admin.png',66,''),
(190,'r19','Devid Irawan','Indotel@123','user','admin.png',67,''),
(191,'g19','Janu Endriyatno','Indotel@123','user','admin.png',68,''),
(192,'r18','Eko Setyawan','Indotel@123','user','admin.png',69,''),
(193,'c14','Yanuar Pondo K','Indotel@123','user','admin.png',70,''),
(194,'e1','Bangkit Nusantoro','Indotel@123','user','admin.png',71,''),
(195,'t4','Arie Setyaga Handika','Indotel@123','user','admin.png',72,''),
(196,'mjr-surono','Surono','Indotel@123','user','admin.png',73,''),
(197,'u7','Bonifasius Aprivilius W.D','Indotel@123','user','admin.png',74,''),
(199,'r30','Ari Tamtomo','Indotel@123','user','admin.png',76,''),
(200,'e32','Muhammad Allfredo','Indotel@123','user','admin.png',77,''),
(201,'m18','Jari Safi&#039;i','Indotel@123','user','admin.png',78,''),
(202,'o7','Agung Susilo','Indotel@123','user','admin.png',79,''),
(203,'g2','Arta Maria Sinaga','Indotel@123','user','admin.png',80,''),
(204,'q17','Nur Wanti','Indotel@123','user','admin.png',81,''),
(205,'m17','Pratama Bayu R','Indotel@123','user','admin.png',82,''),
(206,'q2','Anjas Andika P','Indotel@123','user','admin.png',83,''),
(207,'m10','Angga Budi P','Indotel@123','user','admin.png',84,''),
(208,'q7','Febrina Widya H','Indotel@123','user','admin.png',85,''),
(209,'mjr-sarno','Sarno','Indotel@123','user','admin.png',86,''),
(210,'s9','Widya Sarasmi','Indotel@123','user','admin.png',87,''),
(211,'c10','Sutiyo','Indotel@123','user','admin.png',88,''),
(212,'o8','Daryanto','Indotel@123','user','admin.png',89,''),
(213,'t20','Anggoro Adhi P','Indotel@123','user','admin.png',90,''),
(214,'l11','Nurhayati','Indotel@123','user','admin.png',91,''),
(215,'t6','Sri Lestari','Indotel@123','user','admin.png',92,''),
(216,'s8','Theron Naldo P.P','Indotel@123','user','admin.png',93,''),
(217,'h13','Labib A Falahi','Indotel@123','user','admin.png',94,''),
(218,'c16','Egie Apriani Putri','Indotel@123','user','admin.png',95,''),
(219,'k9','Bayu Tantaka R','Indotel@123','user','admin.png',96,''),
(220,'m7','Maria Parama T D','Indotel@123','user','admin.png',97,''),
(221,'d16','Dafit Saputra','Indotel@123','user','admin.png',98,''),
(222,'e34','Popy Puspitasari','Indotel@123','user','admin.png',99,''),
(223,'c29','Cryzella Dwi Jayanti','Indotel@123','user','admin.png',100,''),
(224,'m9','Heru Setiawan','Indotel@123','user','admin.png',101,''),
(225,'e8','Kaleb Federick S','Indotel@123','user','admin.png',102,''),
(227,'n6','Muh. Affandi Arrum K','Indotel@123','user','admin.png',104,''),
(228,'q11','Deni Dwi Wicaksono','Indotel@123','user','admin.png',105,''),
(229,'mjr-fifi','Fifi Indah Sari','Indotel@123','user','admin.png',106,''),
(230,'u3','Fausta Nataya P. T.','Indotel@123','user','admin.png',107,''),
(231,'s6','Bimo Dwi Hartantyo','Indotel@123','user','admin.png',108,''),
(232,'mamahusain','LINGGAR MS ','Linggar29','kasir','default.png',0,'085213388442'),
(233,'n15','Prassetya Adi Saputra','Indotel@123','user','admin.png',109,''),
(234,'d27','Fryda Bella Pertiwi','Indotel@123','user','admin.png',110,''),
(236,'n3','Agung Prasetyo','Indotel@123','user','admin.png',112,''),
(237,'i14','Adi Kurniawan','Indotel@123','user','admin.png',113,''),
(238,'r24','Oca Murti Kartiwa','Indotel@123','user','admin.png',114,''),
(239,'d1','Kristian Tawang Pinayungan','Indotel@123','user','admin.png',115,''),
(241,'mjr-dikik','Dikik Supriyanto','Indotel@123','user','admin.png',117,''),
(243,'m16','Sangidi','Indotel@123','user','admin.png',119,''),
(244,'mjr-parjoko','Parjoko','Indotel@123','user','admin.png',120,''),
(245,'c6','Yanuar Alfiantoro','Indotel@123','user','admin.png',121,''),
(246,'o9','Endri Santoso','Indotel@123','user','admin.png',122,''),
(247,'c7','Dhanny Wahyu Pratama','Indotel@123','user','admin.png',123,''),
(248,'b25','Nurman Sahid','Indotel@123','user','admin.png',124,''),
(249,'orenji-b6','Dyah Ayu Puspitasari','Indotel@123','user','admin.png',125,''),
(250,'o16','Wahyu Darmawan','Indotel@123','user','admin.png',126,''),
(251,'mjr-novita','Novita Wulandari','Indotel@123','user','admin.png',127,''),
(252,'s21','Yodania Putri Kinasih','Indotel@123','user','admin.png',128,''),
(253,'d4','Muhammad Nailul Faroh','Indotel@123','user','admin.png',129,''),
(254,'o20','Novtri Sandera Putra Pamungkas','Indotel@123','user','admin.png',130,''),
(255,'o14','Nirwanto','Indotel@123','user','admin.png',131,''),
(257,'j8','Deny Agung Setiawan','Indotel@123','user','admin.png',133,''),
(258,'p1','Hermawan Nur Ashari','Indotel@123','user','admin.png',134,''),
(259,'o12','Adi Buyu Prakoso','Indotel@123','user','admin.png',135,''),
(260,'h2','Stefanus Rivaldo Nama Hada','Indotel@123','user','admin.png',136,''),
(261,'o 1','Retno setia Ningsih','Indotel@123','user','admin.png',137,''),
(262,'s19','Winda Supriyatin','Indotel@123','user','admin.png',138,''),
(263,'q14','Teguh Andibowo','Indotel@123','user','admin.png',139,''),
(264,'i16','Oktavian Dwi Abriantara','Indotel@123','user','admin.png',140,''),
(265,'q19','Winda Charlina','Indotel@123','user','admin.png',141,''),
(266,'u8','L Yosefine Lina','Indotel@123','user','admin.png',142,''),
(267,'k6','Edo Emerson','Indotel@123','user','admin.png',143,''),
(268,'k14','Agung Joko Santoso','Indotel@123','user','admin.png',144,''),
(269,'n1','Andi Dwi Tantaka','Indotel@123','user','admin.png',145,''),
(270,'r10','Tonny Angga Nugroho','Indotel@123','user','admin.png',146,''),
(271,'gwentoko-p12','Dodit Indarto','Indotel@123','user','admin.png',147,''),
(272,'i18','Yoseph Khartiko Dwi Tandiono','Indotel@123','user','admin.png',148,''),
(273,'b24','Rajendra Deva Bramantya','Indotel@123','user','admin.png',149,''),
(274,'j7','Bintang Boby Anggoro','Indotel@123','user','admin.png',150,''),
(275,'h15','Septiana Eka Kurniawatie','Indotel@123','user','admin.png',151,''),
(276,'b14','Yoseph Pacha Tantra','Indotel@123','user','admin.png',152,''),
(277,'c2','Bagas Wibowo','Indotel@123','user','admin.png',153,''),
(278,'r28','Lilik Rochmawan','Indotel@123','user','admin.png',154,''),
(279,'mjr-rega','Rega Hendrik Kuncoro Adi','Indotel@123','user','admin.png',155,''),
(280,'q5','Florentina Ayu Damayanti','Indotel@123','user','admin.png',156,''),
(281,'l7','Hayu Laksitasari','Indotel@123','user','admin.png',157,''),
(282,'hingtoko','Elyas Sulistyawan','Indotel@123','user','admin.png',158,''),
(283,'q32','I Nyoman Agus Hari Sudama Giri','Indotel@123','user','admin.png',75,'081238343121'),
(284,'q34','Siswandi','Indotel@123','user','admin.png',159,''),
(285,'a7','M. Turjumani','Indotel@123','user','admin.png',160,NULL),
(286,'h9','Surya Ahkli Pranoto','Indotel@123','user','admin.png',161,NULL),
(287,'d5','Lina Susilowati','Indotel@123','user','admin.png',162,NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_badmin`
--

DROP TABLE IF EXISTS `tbl_badmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_badmin` (
  `id_badmin` int(11) NOT NULL AUTO_INCREMENT,
  `harga` varchar(255) DEFAULT NULL,
  `status` enum('saya','pelanggan') NOT NULL,
  PRIMARY KEY (`id_badmin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_badmin`
--

LOCK TABLES `tbl_badmin` WRITE;
/*!40000 ALTER TABLE `tbl_badmin` DISABLE KEYS */;
INSERT INTO `tbl_badmin` VALUES
(1,'1500','pelanggan');
/*!40000 ALTER TABLE `tbl_badmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blokir`
--

DROP TABLE IF EXISTS `tbl_blokir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_blokir` (
  `id_blokir` int(11) NOT NULL AUTO_INCREMENT,
  `status_blokir` enum('aktif','tidakaktif') NOT NULL,
  `set_waktu` int(11) DEFAULT NULL,
  `set_waktu2` varchar(30) DEFAULT NULL,
  `pesan_blokir` text DEFAULT NULL,
  PRIMARY KEY (`id_blokir`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blokir`
--

LOCK TABLES `tbl_blokir` WRITE;
/*!40000 ALTER TABLE `tbl_blokir` DISABLE KEYS */;
INSERT INTO `tbl_blokir` VALUES
(1,'aktif',10,'day','Halo Bapak/Ibu *$nama*\r\n\r\nUntuk saat ini internet anda kami nonaktifkan karena tagihan sebesar *Rp. $tagihan* belum dibayarkan. \r\nAyo bayar tagihan tepat waktu untuk menghindari blokir otomatis system\r\nTerimakasih.');
/*!40000 ALTER TABLE `tbl_blokir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bukablokir`
--

DROP TABLE IF EXISTS `tbl_bukablokir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_bukablokir` (
  `id_bukablokir` int(11) NOT NULL AUTO_INCREMENT,
  `pesan_bukablokir` text DEFAULT NULL,
  PRIMARY KEY (`id_bukablokir`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bukablokir`
--

LOCK TABLES `tbl_bukablokir` WRITE;
/*!40000 ALTER TABLE `tbl_bukablokir` DISABLE KEYS */;
INSERT INTO `tbl_bukablokir` VALUES
(1,'Terima Kasih Kepada Bapak/Ibu *$nama* Telah Melakukan Pembayaran Sebesar $tagihan Pada $harinin. \r\ninternet anda kembali aktif.\r\n');
/*!40000 ALTER TABLE `tbl_bukablokir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_buktibayar`
--

DROP TABLE IF EXISTS `tbl_buktibayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_buktibayar` (
  `id_buktibayar` int(11) NOT NULL AUTO_INCREMENT,
  `id_rekening` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_tagihan` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_terima` datetime NOT NULL,
  PRIMARY KEY (`id_buktibayar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_buktibayar`
--

LOCK TABLES `tbl_buktibayar` WRITE;
/*!40000 ALTER TABLE `tbl_buktibayar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_buktibayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_informasi`
--

DROP TABLE IF EXISTS `tbl_informasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_informasi` (
  `id_informasi` int(11) NOT NULL AUTO_INCREMENT,
  `judul_informasi` varchar(255) NOT NULL,
  `isi_informasi` text NOT NULL,
  PRIMARY KEY (`id_informasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_informasi`
--

LOCK TABLES `tbl_informasi` WRITE;
/*!40000 ALTER TABLE `tbl_informasi` DISABLE KEYS */;
INSERT INTO `tbl_informasi` VALUES
(2,'Tagihan Pembayaran','Yth Pelanggan Indotel\r\nUntuk Tagihan Bulanan dapat mulai dibayarkan per-tanggal 1 Setiap Bulannya.\r\nUntuk Broadcast Tagihan akan dikirimkan otomatis setiap tanggal 5, Maksimal Pembayaran Tanggal 10.\r\nTerimakasih atas ketepatan waktu pembayarannya.');
/*!40000 ALTER TABLE `tbl_informasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_keluhan`
--

DROP TABLE IF EXISTS `tbl_keluhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_keluhan` (
  `id_keluhan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `judul_keluhan` varchar(50) NOT NULL,
  `nomor_tiket` varchar(255) NOT NULL,
  `isi_keluhan` text NOT NULL,
  `gambar` text NOT NULL,
  `masalah` text DEFAULT NULL,
  `no_wa` varchar(15) NOT NULL,
  `status_keluhan` enum('menunggu','proses','selesai','tidak merespon') NOT NULL,
  `tanggal` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_keluhan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_keluhan`
--

LOCK TABLES `tbl_keluhan` WRITE;
/*!40000 ALTER TABLE `tbl_keluhan` DISABLE KEYS */;
INSERT INTO `tbl_keluhan` VALUES
(1,12,'Wifi diblokir padahal sudah bayar','pengaduan-001','Pembayaran sudah dilakukan','6a012855c4510_IMG_0382.png','pembayaran sudah dikembalikan oleh bank pengirim ','089632488900','selesai','2026-05-11 07:52:37',2),
(2,154,'tes','pengaduan-002','lambat sekali','6a13fb7352e16_whatsapp-image-2026-05-16-at-100730-1.jpeg','tes','082327588785','selesai','2026-05-25 07:34:11',2),
(3,154,'tidak bisa dipakai','pengaduan-003','dddd','','sudah ','082327588785','selesai','2026-05-25 07:57:57',2),
(4,154,'internet lemot','pengaduan-004','kok kedip merah','6a1404c78008c_whatsapp-image-2026-05-16-at-124833.jpeg','ok','082327588785','selesai','2026-05-25 08:13:59',2),
(5,154,'Tes','pengaduan-005','Hehe','6a152539e18ac_1001437322.jpg','ok','082327588785','selesai','2026-05-26 04:44:41',2),
(6,154,'tidak bisa dipakai','pengaduan-006','hhjhjh','6a153fe35ea45_whatsapp-image-2026-05-16-at-100630.jpeg','ok','082327588785','selesai','2026-05-26 06:38:27',2),
(7,160,'Internet offline','pengaduan-007','Dari bbrp jam lalu internet offline, tapi status di laptop connected,, indicator box hijau semua','','firewall blocked content. sudah allow manual ','081999982595','selesai','2026-06-03 16:13:30',2);
/*!40000 ALTER TABLE `tbl_keluhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mikrotik`
--

DROP TABLE IF EXISTS `tbl_mikrotik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mikrotik` (
  `id_mikrotik` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port_mikrotik` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_mikrotik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mikrotik`
--

LOCK TABLES `tbl_mikrotik` WRITE;
/*!40000 ALTER TABLE `tbl_mikrotik` DISABLE KEYS */;
INSERT INTO `tbl_mikrotik` VALUES
(1,'rmtsg2.perwiramedia.com:7135','apilotus','Espansa70','8728');
/*!40000 ALTER TABLE `tbl_mikrotik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nomorphone`
--

DROP TABLE IF EXISTS `tbl_nomorphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nomorphone` (
  `id_mynumber` int(11) NOT NULL AUTO_INCREMENT,
  `my_number` varchar(15) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mynumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nomorphone`
--

LOCK TABLES `tbl_nomorphone` WRITE;
/*!40000 ALTER TABLE `tbl_nomorphone` DISABLE KEYS */;
INSERT INTO `tbl_nomorphone` VALUES
(1,'085155163933','Lilik Rochmawan');
/*!40000 ALTER TABLE `tbl_nomorphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notif`
--

DROP TABLE IF EXISTS `tbl_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notif` (
  `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `status_notifikasi` enum('aktif','tidakaktif') NOT NULL,
  `pesan_notifikasi` text NOT NULL,
  PRIMARY KEY (`id_notifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notif`
--

LOCK TABLES `tbl_notif` WRITE;
/*!40000 ALTER TABLE `tbl_notif` DISABLE KEYS */;
INSERT INTO `tbl_notif` VALUES
(1,'aktif','Halo Bapak/Ibu *$nama*\r\n\r\nSemoga Bapak/Ibu dalam keadaan sehat dan baik.\r\n\r\nTerimakasih telah menggunakan layanan internet dari *INDOTEL*. Bersamaan dengan pesan ini, kami  telah mengirimkan tagihan dengan rincian sebagai berikut;\r\n\r\nPengirim invoice: PT INDO TELEMEDIA SOLUSI\r\nTanggal : 05 Juni 2026\r\nJumlah tagihan : *Rp $tagihan*\r\nItem: Internet bulan berjalan \r\nJatuh tempo: 10 Juni 2026\r\n\r\nUntuk Pembayaran dapat melalui tautan:  \r\nhttps://indotel.lotuscomputama.com\r\n*(Login dengan Nomor HP yang terdaftar)*\r\n\r\nAtas perhatiannya dan ketepatan waktu pembayaran diucapkan terimakasih.\r\n\r\nTerima kasih.');
/*!40000 ALTER TABLE `tbl_notif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notifbayar`
--

DROP TABLE IF EXISTS `tbl_notifbayar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notifbayar` (
  `id_notifbayar` int(11) NOT NULL AUTO_INCREMENT,
  `pesan_bayar` text NOT NULL,
  PRIMARY KEY (`id_notifbayar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notifbayar`
--

LOCK TABLES `tbl_notifbayar` WRITE;
/*!40000 ALTER TABLE `tbl_notifbayar` DISABLE KEYS */;
INSERT INTO `tbl_notifbayar` VALUES
(1,'Halo Bapak/Ibu *$nama*\r\n\r\nPembayaran internet sebesar *Rp. $tagihan* sudah kami terima. \r\nAtas perhatian dan ketepatan waktu pembayaran diucapkan terimakasih.\r\n\r\n_*INDOTEL Promised Quality Service*_');
/*!40000 ALTER TABLE `tbl_notifbayar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_npemasangan`
--

DROP TABLE IF EXISTS `tbl_npemasangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_npemasangan` (
  `id_npemasangan` int(11) NOT NULL AUTO_INCREMENT,
  `status_notif` enum('aktif','tidak') NOT NULL,
  `pesan_notif` text NOT NULL,
  PRIMARY KEY (`id_npemasangan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_npemasangan`
--

LOCK TABLES `tbl_npemasangan` WRITE;
/*!40000 ALTER TABLE `tbl_npemasangan` DISABLE KEYS */;
INSERT INTO `tbl_npemasangan` VALUES
(1,'aktif','Halo Bapak/Ibu *$nama*\r\n\r\nTerimakasih telah menggunakan layanan internet dari *INDOTEL*. Bersamaan dengan pesan ini, kami  telah mengirimkan konfirmasi pemasangan Baru. \r\n\r\nTanggal : $tgl_pemasangan\r\nNama Pelanggan : $nama\r\nAlamat: $alamat\r\nPaket Internet: $paket\r\n\r\nAtas Kepercayaan yang diberikan diucapkan terimakasih.');
/*!40000 ALTER TABLE `tbl_npemasangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_odc`
--

DROP TABLE IF EXISTS `tbl_odc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_odc` (
  `id_odc` int(11) NOT NULL AUTO_INCREMENT,
  `nama_odc` varchar(255) NOT NULL,
  `perangkat_odc` varchar(50) NOT NULL,
  `port_odc` varchar(30) NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`id_odc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_odc`
--

LOCK TABLES `tbl_odc` WRITE;
/*!40000 ALTER TABLE `tbl_odc` DISABLE KEYS */;
INSERT INTO `tbl_odc` VALUES
(2,'ODC Utama','ODC Utama','12','-7.505075, 110.855275'),
(3,'ODC 2','ODC Blok B TM','4','-7.504889, 110.857131'),
(4,'ODC 3 ','ODC 3 Blok E TM','8','-7.504224, 110.857394'),
(5,'ODC MOJOREJO','ODC MOJOREJO','16','-7.503881, 110.854669'),
(6,'Gardenia Orenji 1','Gardenia Orenji 1','16','');
/*!40000 ALTER TABLE `tbl_odc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_odp`
--

DROP TABLE IF EXISTS `tbl_odp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_odp` (
  `id_odp` int(11) NOT NULL AUTO_INCREMENT,
  `nama_odp` varchar(255) NOT NULL,
  `port_odp` varchar(30) NOT NULL,
  `location` varchar(255) NOT NULL,
  `odc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_odp`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_odp`
--

LOCK TABLES `tbl_odp` WRITE;
/*!40000 ALTER TABLE `tbl_odp` DISABLE KEYS */;
INSERT INTO `tbl_odp` VALUES
(1,'ee','2','-6.143627, 106.590557',1),
(2,'ODP 1 Blok R','17','',2),
(3,'ODP 2 Blok T','16','-7.504764, 110.855141',2),
(4,'ODP 3 Blok Q','16','-7.504956, 110.855688',2),
(5,'ODP 4 Blok S','8','-7.504794, 110.855291',2),
(6,'ODP 5 Blok B_1','16','-7.504934, 110.857104',3),
(7,'ODP 6 Blok B_2','17','-7.504948, 110.857185',3),
(8,'ODP 7 Blok D','8','-7.504669, 110.857211',4),
(9,'ODP 8 Blok E','16','-7.504278, 110.857453',4),
(10,'ODP 9 Blok H','8','-7.503842, 110.857560',4),
(11,'ODP 10 Blok J','16','-7.503427, 110.857539',4),
(12,'ODP 1 MJR','8','-7.503956, 110.854712',5),
(13,'ODP 2 TMR MJR','8','-7.503998, 110.855055',5),
(14,'ODP 3 TMR MJR','8','-7.504105, 110.855495',5),
(15,'ODP 4 KANDANG THR','8','-7.504466, 110.854518',5),
(16,'ODP 5 MASJID MJR','8','-7.503576, 110.853885',5),
(17,'ODP 6 MJR BRT','8','-7.503435, 110.853038',5),
(18,'ODP BLOK G','4','',2),
(19,'ODP BLOK D_2','16','',4),
(20,'Gardenia Orenji 1','16','',6),
(21,'ODP Blok E_2','16','',4),
(22,'ODP Blok B_3','16','',4),
(23,'ODP BLOK Q_2','16','',2);
/*!40000 ALTER TABLE `tbl_odp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_paketmikrotik`
--

DROP TABLE IF EXISTS `tbl_paketmikrotik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_paketmikrotik` (
  `id_paketmikrotik` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('ya','tidak') NOT NULL,
  `ppn` enum('aktif','tidak') DEFAULT NULL,
  PRIMARY KEY (`id_paketmikrotik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_paketmikrotik`
--

LOCK TABLES `tbl_paketmikrotik` WRITE;
/*!40000 ALTER TABLE `tbl_paketmikrotik` DISABLE KEYS */;
INSERT INTO `tbl_paketmikrotik` VALUES
(1,'ya','tidak');
/*!40000 ALTER TABLE `tbl_paketmikrotik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_penggunamikrotik`
--

DROP TABLE IF EXISTS `tbl_penggunamikrotik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_penggunamikrotik` (
  `id_penggunamikrotik` int(11) NOT NULL AUTO_INCREMENT,
  `status` enum('ya','tidak') NOT NULL,
  `addppsecret` enum('ya','tidak') NOT NULL,
  `ippelanggan` enum('statik','dynamic') NOT NULL,
  `mapping` enum('aktif','tidak') DEFAULT NULL,
  `ip_pool` enum('ya','tidak') DEFAULT NULL,
  PRIMARY KEY (`id_penggunamikrotik`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_penggunamikrotik`
--

LOCK TABLES `tbl_penggunamikrotik` WRITE;
/*!40000 ALTER TABLE `tbl_penggunamikrotik` DISABLE KEYS */;
INSERT INTO `tbl_penggunamikrotik` VALUES
(1,'ya','tidak','dynamic','aktif','tidak');
/*!40000 ALTER TABLE `tbl_penggunamikrotik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengumuman`
--

DROP TABLE IF EXISTS `tbl_pengumuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `isi_pengumuman` text NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengumuman`
--

LOCK TABLES `tbl_pengumuman` WRITE;
/*!40000 ALTER TABLE `tbl_pengumuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pengumuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pesan_siaran`
--

DROP TABLE IF EXISTS `tbl_pesan_siaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pesan_siaran` (
  `id_pesan_siaran` int(11) NOT NULL AUTO_INCREMENT,
  `judul_pesan_siaran` varchar(255) NOT NULL,
  `isi_pesan` text NOT NULL,
  PRIMARY KEY (`id_pesan_siaran`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pesan_siaran`
--

LOCK TABLES `tbl_pesan_siaran` WRITE;
/*!40000 ALTER TABLE `tbl_pesan_siaran` DISABLE KEYS */;
INSERT INTO `tbl_pesan_siaran` VALUES
(1,'INFORMASI GANGGUAN INTERNET','Yth. Pelanggan Indotel\r\nUntuk saat ini sedang terjadi gangguan internet dengan kendala\r\nKendala: FO CUT BB Solo Utara\r\nWaktu: 11.00 WIB\r\n\r\nSaat ini sedang dalam pengecekan team terkait\r\nMohon Maaf atas ketidaknyamanannya');
/*!40000 ALTER TABLE `tbl_pesan_siaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pgate`
--

DROP TABLE IF EXISTS `tbl_pgate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pgate` (
  `id_pgat` int(11) NOT NULL AUTO_INCREMENT,
  `tclientkey` varchar(255) DEFAULT NULL,
  `tserverkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pgat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pgate`
--

LOCK TABLES `tbl_pgate` WRITE;
/*!40000 ALTER TABLE `tbl_pgate` DISABLE KEYS */;
INSERT INTO `tbl_pgate` VALUES
(1,'Mid-client-x2_60uoShNxkpNvC','Mid-server-uuE-tPLosrKfM435AqjkaqRe');
/*!40000 ALTER TABLE `tbl_pgate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rekening`
--

DROP TABLE IF EXISTS `tbl_rekening`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(50) NOT NULL,
  `nomor_rekening` varchar(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rekening`
--

LOCK TABLES `tbl_rekening` WRITE;
/*!40000 ALTER TABLE `tbl_rekening` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rekening` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES
(1,'7pukdbKa9hcQMHyxqy8r');
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'casaos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-06-08 11:58:17
