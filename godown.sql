-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2017 at 05:42 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `godown`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add product_detail', 1, 'add_product_detail'),
(2, 'Can change product_detail', 1, 'change_product_detail'),
(3, 'Can delete product_detail', 1, 'delete_product_detail'),
(4, 'Can add product_variant', 2, 'add_product_variant'),
(5, 'Can change product_variant', 2, 'change_product_variant'),
(6, 'Can delete product_variant', 2, 'delete_product_variant'),
(7, 'Can add product', 3, 'add_product'),
(8, 'Can change product', 3, 'change_product'),
(9, 'Can delete product', 3, 'delete_product'),
(10, 'Can add variant', 4, 'add_variant'),
(11, 'Can change variant', 4, 'change_variant'),
(12, 'Can delete variant', 4, 'delete_variant'),
(13, 'Can add variant_value', 5, 'add_variant_value'),
(14, 'Can change variant_value', 5, 'change_variant_value'),
(15, 'Can delete variant_value', 5, 'delete_variant_value'),
(16, 'Can add contact', 6, 'add_contact'),
(17, 'Can change contact', 6, 'change_contact'),
(18, 'Can delete contact', 6, 'delete_contact'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add user', 8, 'add_user'),
(23, 'Can change user', 8, 'change_user'),
(24, 'Can delete user', 8, 'delete_user'),
(25, 'Can add group', 9, 'add_group'),
(26, 'Can change group', 9, 'change_group'),
(27, 'Can delete group', 9, 'delete_group'),
(28, 'Can add permission', 10, 'add_permission'),
(29, 'Can change permission', 10, 'change_permission'),
(30, 'Can delete permission', 10, 'delete_permission'),
(31, 'Can add content type', 11, 'add_contenttype'),
(32, 'Can change content type', 11, 'change_contenttype'),
(33, 'Can delete content type', 11, 'delete_contenttype'),
(34, 'Can add session', 12, 'add_session'),
(35, 'Can change session', 12, 'change_session'),
(36, 'Can delete session', 12, 'delete_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$CoEbTViPWPzY$l4KfC6ZWgWIyE4zEdKqS2Lbp9FltjODDr87Qwi5G/iU=', '2017-08-10 11:39:53.284333', 1, 'admin', '', '', 'kendramukhia7@gmail.com', 1, 1, '2017-08-10 11:39:19.188514');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE IF NOT EXISTS `contact_contact` (
`id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact_contact`
--

INSERT INTO `contact_contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'kendra mukhia', 'kendra.mukhia7@gmail.com', 'fsadfsd');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-08-11 11:19:38.061333', '1', 'Color', 1, '[{"added": {}}]', 4, 1),
(2, '2017-08-11 11:19:43.424545', '2', 'Size', 1, '[{"added": {}}]', 4, 1),
(3, '2017-08-11 11:20:07.760379', '1', 'Red', 1, '[{"added": {}}]', 5, 1),
(4, '2017-08-11 11:20:14.561657', '2', 'Blue', 1, '[{"added": {}}]', 5, 1),
(5, '2017-08-11 11:20:20.933428', '3', 'Black', 1, '[{"added": {}}]', 5, 1),
(6, '2017-08-11 11:20:27.763370', '4', 'L', 1, '[{"added": {}}]', 5, 1),
(7, '2017-08-11 11:20:33.437223', '5', 'M', 1, '[{"added": {}}]', 5, 1),
(8, '2017-08-11 11:20:38.297255', '6', 'S', 1, '[{"added": {}}]', 5, 1),
(9, '2017-08-11 11:25:51.321299', '1', 'Goldstar shoe', 1, '[{"added": {}}, {"added": {"name": "product_variant", "object": "goldstar-red"}}, {"added": {"name": "product_variant", "object": "goldstar-red-m"}}, {"added": {"name": "product_variant", "object": "goldstar-red-s"}}, {"added": {"name": "product_variant", "object": "goldstar-black-l"}}, {"added": {"name": "product_variant", "object": "goldstar-black-m"}}, {"added": {"name": "product_variant", "object": "goldstar-black-s"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}]', 3, 1),
(10, '2017-08-11 11:30:08.850420', '2', 'Masters Bakery Cake', 1, '[{"added": {}}, {"added": {"name": "product_variant", "object": "masters-bakery-cake-b-m"}}, {"added": {"name": "product_variant", "object": "masters-bakery-cake-r-m"}}, {"added": {"name": "product_variant", "object": "masters-bakery-cake-r-l"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}]', 3, 1),
(11, '2017-08-12 13:02:38.212426', '2', 'Masters Bakery Cake', 2, '[{"added": {"name": "product_detail", "object": "Product_detail object"}}, {"added": {"name": "product_detail", "object": "Product_detail object"}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(10, 'auth', 'permission'),
(8, 'auth', 'user'),
(6, 'contact', 'contact'),
(11, 'contenttypes', 'contenttype'),
(3, 'inventory', 'product'),
(1, 'inventory', 'product_detail'),
(2, 'inventory', 'product_variant'),
(4, 'inventory', 'variant'),
(5, 'inventory', 'variant_value'),
(12, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-08-10 11:34:39.122224'),
(2, 'auth', '0001_initial', '2017-08-10 11:34:53.138320'),
(3, 'admin', '0001_initial', '2017-08-10 11:34:57.598622'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-08-10 11:34:57.909971'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-08-10 11:34:59.879766'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-08-10 11:35:00.943142'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-08-10 11:35:02.611988'),
(8, 'auth', '0004_alter_user_username_opts', '2017-08-10 11:35:02.796210'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-08-10 11:35:03.509174'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-08-10 11:35:03.642089'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-08-10 11:35:03.788904'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-08-10 11:35:04.905918'),
(13, 'contact', '0001_initial', '2017-08-10 11:35:05.374153'),
(14, 'inventory', '0001_initial', '2017-08-10 11:35:14.062427'),
(15, 'inventory', '0002_auto_20170810_1643', '2017-08-10 11:35:15.405865'),
(16, 'sessions', '0001_initial', '2017-08-10 11:35:17.355596');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qzgid260uy9xtib4ndkjpsc8n4wl0tp8', 'OTk0OWY1ZDUzZDAwZDkzOGRjNWU2ZWQ1MWIwMzgwOTg5N2FmMzViYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNDRjZjZlYmUyOTIxOWU4NGMzMDE5ZmYyNTMyNTY2YzdhNTEzMjlmIn0=', '2017-08-24 11:39:53.349175');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product`
--

CREATE TABLE IF NOT EXISTS `inventory_product` (
`id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inventory_product`
--

INSERT INTO `inventory_product` (`id`, `name`, `description`, `image`) VALUES
(1, 'Goldstar shoe', 'Address: Koteshwor Marga, Kathmandu 44600\r\nHours: Open today · 9:30AM–7:30PM \r\nPhone: 986-1471044', 'images/2A.jpg'),
(2, 'Masters Bakery Cake', 'Masters Bakery Cake', 'images/1.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product_detail`
--

CREATE TABLE IF NOT EXISTS `inventory_product_detail` (
`id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `variant_value_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `inventory_product_detail`
--

INSERT INTO `inventory_product_detail` (`id`, `product_variant_id`, `variant_value_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 1),
(4, 2, 5),
(5, 3, 1),
(6, 3, 6),
(7, 4, 3),
(8, 4, 4),
(9, 5, 3),
(10, 5, 5),
(11, 6, 3),
(12, 6, 6),
(13, 7, 3),
(14, 7, 5),
(15, 9, 1),
(16, 9, 4),
(17, 8, 1),
(18, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product_variant`
--

CREATE TABLE IF NOT EXISTS `inventory_product_variant` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sku` varchar(60) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `inventory_product_variant`
--

INSERT INTO `inventory_product_variant` (`id`, `name`, `sku`, `price`, `quantity`, `product_id`) VALUES
(1, 'goldstar-red', 'goldstar-red-l', 560, 40, 1),
(2, 'goldstar-red-m', 'goldstar-red-m', 500, 24, 1),
(3, 'goldstar-red-s', 'goldstar-red-s', 450, 10, 1),
(4, 'goldstar-black-l', 'goldstar-black-l', 700, 30, 1),
(5, 'goldstar-black-m', 'goldstar-black-m', 21, 645, 1),
(6, 'goldstar-black-s', 'goldstar-black-s', 425, 22, 1),
(7, 'masters-bakery-cake-b-m', 'masters-bakery-cake-b-m', 900, 59, 2),
(8, 'masters-bakery-cake-r-m', 'masters-bakery-cake-r-m', 980, 28, 2),
(9, 'masters-bakery-cake-r-l', 'masters-bakery-cake-r-l', 1240, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_variant`
--

CREATE TABLE IF NOT EXISTS `inventory_variant` (
`id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `inventory_variant`
--

INSERT INTO `inventory_variant` (`id`, `name`) VALUES
(1, 'Color'),
(2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_variant_value`
--

CREATE TABLE IF NOT EXISTS `inventory_variant_value` (
`id` int(11) NOT NULL,
  `value` varchar(200) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `inventory_variant_value`
--

INSERT INTO `inventory_variant_value` (`id`, `value`, `variant_id`) VALUES
(1, 'Red', 1),
(2, 'Blue', 1),
(3, 'Black', 1),
(4, 'L', 2),
(5, 'M', 2),
(6, 'S', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `inventory_product`
--
ALTER TABLE `inventory_product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_product_detail`
--
ALTER TABLE `inventory_product_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `inve_product_variant_id_26a28375_fk_inventory_product_variant_id` (`product_variant_id`), ADD KEY `inventor_variant_value_id_b12b8a48_fk_inventory_variant_value_id` (`variant_value_id`);

--
-- Indexes for table `inventory_product_variant`
--
ALTER TABLE `inventory_product_variant`
 ADD PRIMARY KEY (`id`), ADD KEY `inventory_product_va_product_id_2e1d88b8_fk_inventory_product_id` (`product_id`);

--
-- Indexes for table `inventory_variant`
--
ALTER TABLE `inventory_variant`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_variant_value`
--
ALTER TABLE `inventory_variant_value`
 ADD PRIMARY KEY (`id`), ADD KEY `inventory_variant_va_variant_id_94ba1576_fk_inventory_variant_id` (`variant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `inventory_product`
--
ALTER TABLE `inventory_product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_product_detail`
--
ALTER TABLE `inventory_product_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `inventory_product_variant`
--
ALTER TABLE `inventory_product_variant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `inventory_variant`
--
ALTER TABLE `inventory_variant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inventory_variant_value`
--
ALTER TABLE `inventory_variant_value`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `inventory_product_detail`
--
ALTER TABLE `inventory_product_detail`
ADD CONSTRAINT `inve_product_variant_id_26a28375_fk_inventory_product_variant_id` FOREIGN KEY (`product_variant_id`) REFERENCES `inventory_product_variant` (`id`),
ADD CONSTRAINT `inventor_variant_value_id_b12b8a48_fk_inventory_variant_value_id` FOREIGN KEY (`variant_value_id`) REFERENCES `inventory_variant_value` (`id`);

--
-- Constraints for table `inventory_product_variant`
--
ALTER TABLE `inventory_product_variant`
ADD CONSTRAINT `inventory_product_va_product_id_2e1d88b8_fk_inventory_product_id` FOREIGN KEY (`product_id`) REFERENCES `inventory_product` (`id`);

--
-- Constraints for table `inventory_variant_value`
--
ALTER TABLE `inventory_variant_value`
ADD CONSTRAINT `inventory_variant_va_variant_id_94ba1576_fk_inventory_variant_id` FOREIGN KEY (`variant_id`) REFERENCES `inventory_variant` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
