SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `levels` (`id`, `level`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1,	'admin',	'2018-11-01 20:00:40',	1,	NULL,	NULL),
(2,	'user',	'2018-11-01 20:00:58',	1,	NULL,	NULL)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `level` = VALUES(`level`), `created_at` = VALUES(`created_at`), `created_by` = VALUES(`created_by`), `modified_at` = VALUES(`modified_at`), `modified_by` = VALUES(`modified_by`);

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` enum('active','non-active') NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `login` (`id`, `id_level`, `email`, `name`, `username`, `password`, `status`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1,	1,	'admin@admin.com',	'Admin CI-Remix',	'admin',	'$2y$12$dpNbvqSR0MqBpUWjr3qpHu7SZ.xnFrkkK7vApWuZLAMgd7V7YD5UW',	'active',	'2018-11-09 14:40:23',	1,	NULL,	NULL)
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `id_level` = VALUES(`id_level`), `email` = VALUES(`email`), `name` = VALUES(`name`), `username` = VALUES(`username`), `password` = VALUES(`password`), `status` = VALUES(`status`), `created_at` = VALUES(`created_at`), `created_by` = VALUES(`created_by`), `modified_at` = VALUES(`modified_at`), `modified_by` = VALUES(`modified_by`);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1,	'Roby Firnando Yusuf',	'ketika rasa tak bisa diungkap dengan k4t4'),
(2,	'user gans',	'md5 isn\'t really seCure');

ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `username` = VALUES(`username`), `password` = VALUES(`password`);

-- 2018-11-25 08:25:26