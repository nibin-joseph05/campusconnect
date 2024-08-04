-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 06:51 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add hod', 7, 'add_hod'),
(26, 'Can change hod', 7, 'change_hod'),
(27, 'Can delete hod', 7, 'delete_hod'),
(28, 'Can view hod', 7, 'view_hod'),
(29, 'Can add pricipal', 8, 'add_pricipal'),
(30, 'Can change pricipal', 8, 'change_pricipal'),
(31, 'Can delete pricipal', 8, 'delete_pricipal'),
(32, 'Can view pricipal', 8, 'view_pricipal'),
(33, 'Can add staff', 9, 'add_staff'),
(34, 'Can change staff', 9, 'change_staff'),
(35, 'Can delete staff', 9, 'delete_staff'),
(36, 'Can view staff', 9, 'view_staff'),
(37, 'Can add student', 10, 'add_student'),
(38, 'Can change student', 10, 'change_student'),
(39, 'Can delete student', 10, 'delete_student'),
(40, 'Can view student', 10, 'view_student'),
(41, 'Can add staffleave', 11, 'add_staffleave'),
(42, 'Can change staffleave', 11, 'change_staffleave'),
(43, 'Can delete staffleave', 11, 'delete_staffleave'),
(44, 'Can view staffleave', 11, 'view_staffleave'),
(45, 'Can add hodleave', 12, 'add_hodleave'),
(46, 'Can change hodleave', 12, 'change_hodleave'),
(47, 'Can delete hodleave', 12, 'delete_hodleave'),
(48, 'Can view hodleave', 12, 'view_hodleave');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_attendence`
--

CREATE TABLE IF NOT EXISTS `campus_connect_attendence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `student_id` int(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `reg_no` varchar(150) NOT NULL,
  `attendencess` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `campus_connect_attendence`
--

INSERT INTO `campus_connect_attendence` (`id`, `name`, `student_id`, `email`, `sem`, `department`, `reg_no`, `attendencess`) VALUES
(2, 'Student 1', 1, 'saa@gmail.com', 'sem1', 'MCA', 'MMk333', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_fee`
--

CREATE TABLE IF NOT EXISTS `campus_connect_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `fees` varchar(150) NOT NULL,
  `status` varchar(160) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_fee`
--

INSERT INTO `campus_connect_fee` (`id`, `student_id`, `sem`, `department`, `fees`, `status`) VALUES
(1, 1, 'sem1', 'MCA', '30000', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_hod`
--

CREATE TABLE IF NOT EXISTS `campus_connect_hod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `id_proof` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `password` varchar(160) NOT NULL,
  `phone` varchar(160) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_hod`
--

INSERT INTO `campus_connect_hod` (`id`, `name`, `id_proof`, `email`, `department`, `position`, `gender`, `password`, `phone`) VALUES
(1, 'HOD 1', '11_NQfAhW6.png', 'h@gmail.com', 'MCA', 'HOD', 'Male', '123', '9809898987');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_hodleave`
--

CREATE TABLE IF NOT EXISTS `campus_connect_hodleave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `noofdays` varchar(150) NOT NULL,
  `startdate` varchar(150) NOT NULL,
  `enddate` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `hod_id` varchar(160) NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalleave` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_hodleave`
--

INSERT INTO `campus_connect_hodleave` (`id`, `email`, `reason`, `noofdays`, `startdate`, `enddate`, `date`, `hod_id`, `status`, `totalleave`) VALUES
(1, 'h@gmail.com', 'Fever', '2', '2024-02-29', '2024-03-02', '2024-02-29', '1', 'accepted', '20');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_mark`
--

CREATE TABLE IF NOT EXISTS `campus_connect_mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `mark` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_mark`
--

INSERT INTO `campus_connect_mark` (`id`, `student_id`, `subject`, `sem`, `mark`) VALUES
(1, 1, 'Sub 1', '2', '100');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_notification`
--

CREATE TABLE IF NOT EXISTS `campus_connect_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(150) NOT NULL,
  `message` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_notification`
--

INSERT INTO `campus_connect_notification` (`id`, `subject`, `message`) VALUES
(1, 'Notifiaction 1', 'Notification Test');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_parent`
--

CREATE TABLE IF NOT EXISTS `campus_connect_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(110) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_parent`
--

INSERT INTO `campus_connect_parent` (`id`, `student_id`, `name`, `email`, `phone`, `password`) VALUES
(1, 1, 'Pareent 1', 'jerinjames707@gmail.com', '9876543210', '123');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_pricipal`
--

CREATE TABLE IF NOT EXISTS `campus_connect_pricipal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `id_proof` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(160) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_pricipal`
--

INSERT INTO `campus_connect_pricipal` (`id`, `name`, `id_proof`, `email`, `phone`, `password`) VALUES
(1, 'Pricipal', '11.png', 'p@gmail.com', '9809898987', '123');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_report`
--

CREATE TABLE IF NOT EXISTS `campus_connect_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_report`
--

INSERT INTO `campus_connect_report` (`id`, `parent_id`, `email`, `subject`, `description`) VALUES
(1, '1', 'jerinjames707@gmail.com', 'issue', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_salarys`
--

CREATE TABLE IF NOT EXISTS `campus_connect_salarys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `salary` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_salarys`
--

INSERT INTO `campus_connect_salarys` (`id`, `staff_id`, `salary`) VALUES
(1, 1, '40000');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_staff`
--

CREATE TABLE IF NOT EXISTS `campus_connect_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `id_proof` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `password` varchar(160) NOT NULL,
  `phone` varchar(160) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_staff`
--

INSERT INTO `campus_connect_staff` (`id`, `name`, `id_proof`, `email`, `department`, `password`, `phone`) VALUES
(1, 'Staff 1', '11_0sqkQZR.png', 's@gmail.com', 'MCA', '123', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_staffleave`
--

CREATE TABLE IF NOT EXISTS `campus_connect_staffleave` (
  `id` int(11) NOT NULL,
  `staff_id_id` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `reason` varchar(150) NOT NULL,
  `noofdays` varchar(150) NOT NULL,
  `startdate` varchar(150) NOT NULL,
  `enddate` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `status` varchar(160) NOT NULL,
  `totalleave` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus_connect_staffleave`
--

INSERT INTO `campus_connect_staffleave` (`id`, `staff_id_id`, `email`, `reason`, `noofdays`, `startdate`, `enddate`, `date`, `status`, `totalleave`) VALUES
(1, '1', 's@gmail.com', 'Fever', '2', '2024-02-29', '2024-03-02', '2024-02-29', 'accepted', 18);

-- --------------------------------------------------------

--
-- Table structure for table `campus_connect_student`
--

CREATE TABLE IF NOT EXISTS `campus_connect_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `id_proof` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `sem` varchar(250) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `reg_no` varchar(150) NOT NULL,
  `admission_no` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `dob` varchar(150) NOT NULL,
  `password` varchar(160) NOT NULL,
  `phone` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `campus_connect_student`
--

INSERT INTO `campus_connect_student` (`id`, `name`, `id_proof`, `email`, `department`, `sem`, `gender`, `reg_no`, `admission_no`, `address`, `dob`, `password`, `phone`) VALUES
(1, 'Student 1', '11_tefxQkN.png', 'saa@gmail.com', 'MCA', 'sem1', 'Male', 'MMk333', 'HJH343242', 'Ernakulam', '1994-04-23', '123', '9809898987');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'campus_connect', 'hod'),
(12, 'campus_connect', 'hodleave'),
(8, 'campus_connect', 'pricipal'),
(9, 'campus_connect', 'staff'),
(11, 'campus_connect', 'staffleave'),
(10, 'campus_connect', 'student'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-09 16:57:20.704162'),
(2, 'auth', '0001_initial', '2023-02-09 16:57:40.962964'),
(3, 'admin', '0001_initial', '2023-02-09 16:57:46.005388'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-09 16:57:46.135066'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-09 16:57:46.270034'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-09 16:57:48.571289'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-09 16:57:49.868443'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-09 16:57:51.102746'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-09 16:57:51.197716'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-09 16:57:52.142248'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-09 16:57:52.212193'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-09 16:57:52.277137'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-09 16:57:53.867622'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-09 16:57:55.092652'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-09 16:57:56.476949'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-09 16:57:56.546892'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-09 16:57:58.071833'),
(18, 'campus_connect', '0001_initial', '2023-02-09 16:57:59.807967'),
(19, 'sessions', '0001_initial', '2023-02-09 16:58:02.591906');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0gxyplxg1dqdecrt5zrg9bbxmo73p2i0', 'eyJoaWQiOjN9:1pSsfj:mwG89Wa94YTncFHEyFcUXre3bA3TOU9zNOG707eRBTQ', '2023-03-03 04:48:35.802809'),
('2nxt5ug40px75ki3mbugp5oa27b9rxzs', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1pYPBd:sWMbqP4PpzmX6kot648yt8G5iBrYOA_4oVUNZSMfkZk', '2023-03-18 10:32:21.524114'),
('2uvmy426pdoaqjomvqid2ngmpyvjnm0s', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1pSyI0:OEmwNcmlNMr1RO28vXdQlhShVp_rLuH_BhTyf6tFOSU', '2023-03-03 10:48:28.365570'),
('7hz9nnvrwlw6pnb73yihwsk23v86ncbg', 'e30:1rY86g:OwlKpAMlmqQbGxOENu86GSbQ1is3mb2uHKbBlrEjLm0', '2024-02-22 17:22:38.437234'),
('90qxtanvyhv4peryhtgrmdgpl2uty0qf', 'eyJzaWQiOjIsImRlcHQiOiJjc2UifQ:1pYItJ:2yUdjO_d6iDfxmQf2tMVQbaDta9zL-UQRLl2n92pSa8', '2023-03-18 03:49:01.885341'),
('9lrr5m2nhbzkorx85yhl8oomg4hd4upp', 'eyJzaWQiOjMsImRlcHQiOiJjc2UifQ:1pglP4:A2tPhWGYEoQ_K9Q_oP0zZGeyUEnHYeAKabyRepgE898', '2023-04-10 11:52:46.657006'),
('9tk4vhjmcyia1qvph7n9v4gsfdqdo21a', 'e30:1pVWO3:NQ8y92DAw4pHeC4Sg4t06yXsNBMoEiVRm8H0UuYML58', '2023-03-10 11:37:15.255907'),
('ag064ikbw8e3sganmxu2p86z3e4qtrxu', '.eJyrVirITFGyMjTUUcrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlWAKYFJAgQyQVhMdpWIQbayjlJJaAJJOLk4FShZDRGsBJ9Ye3g:1rO9xL:sDzlBbxVF3D9YMJxgqw-SynP-_Q7ypxgASE-YLvqMuY', '2024-01-26 05:19:47.793778'),
('coxg25b393pvf1kdgh0o83dt1nay7waq', 'eyJoaWQiOjN9:1pScc5:71ShrDK9wl97hj_1CfxhD9VX-C7H4dqTQEUiLCfsJEE', '2023-03-02 11:39:45.180751'),
('d8m0vvjszr8qwhwt49iipmdxbv1uewhj', 'e30:1pWzJF:ZGSFKslaaNPtGgO6KpkfZ_xlQGAhESfhJLqVwm8O640', '2023-03-14 12:42:21.046553'),
('erfln7yoxmkvzv01sbpoy7lh5un6n09m', 'eyJzaWQiOjF9:1pV3BJ:g1v8urZ3BQfOym7JGNmsclLT30iJ9EZ6VM3RqZAt48Q', '2023-03-09 04:26:09.116551'),
('htol8yutlqaabwa494tk1lcubmn2f5dz', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1pXbEH:Ds51bB9qNtP46Cn2g_Ow4OYKNH-FZgaeZiXG9DCqyCU', '2023-03-16 05:11:45.208623'),
('in11dwa66vnmwcunw6w0evw4sxd0pmcv', 'eyJzaWQiOjEsImRlcHQiOiJpdCJ9:1pdCQN:kGn0NTrb2I330JUhVkzRMOn_JOlk5Mj6xDzCR39x2ow', '2023-03-31 15:55:23.517758'),
('jcihxti9xwckqgpxwr251tlw3joa78l4', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1pgzmh:4qUuHskZQj1YavFv9sPLEYOPU3uTu6nlyEnneecs5pQ', '2023-04-11 03:14:07.372917'),
('jjx25jifnwl8u7bwea0f531f02r2me0q', 'eyJzaWQiOjMsImRlcHQiOiJjc2UifQ:1pgTLl:CGhrQzE4eXzwTKfkI50UmxlmPVbh7oRFuKocqStt1h0', '2023-04-09 16:36:09.678345'),
('jsm1ik27njfxlzafm9uh2myq706n5vdr', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1q8Z7F:RN7nbxoed5HcUDkNbObsN8VsIClrq0BOqC5XAwZb7dw', '2023-06-26 04:25:17.201166'),
('ntv6l2b102e5m0o3ew0eegfj3zv6y2t8', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1ph6aZ:7cijxnMl32nVTZS5aVEGoKqdND66BIXv-9V59JK6Heo', '2023-04-11 10:30:03.088646'),
('nzli2vepjwe4jbr2zocdgf2i0rr45jpz', 'eyJoaWQiOjN9:1pUPYA:Sq2qb6Bztf9Z3vvBOkOAjsFins2uWRM0a_VnPxyYc9k', '2023-03-07 10:07:06.389460'),
('oeu9guo4zwvgcvvij09pu2r75ylp2fe4', 'e30:1pSFvL:F1dYb7tg2cOcmLQRl6tvtf1Axt-hGMXLC84yl7PGbOI', '2023-03-01 11:26:07.273317'),
('ovjshhlbcjd1fqyjodcbp85g6nkwte56', 'eyJzaWQiOjMsImRlcHQiOiJjc2UifQ:1pgkV3:7U0k6tZqGhC_fgJ18Ig23Ar_Y1MGprDEELk54uUDHHU', '2023-04-10 10:54:53.918492'),
('p8wa8zaq24wxsdp42qz1gly3c7u5vin6', 'eyJwaWQiOjF9:1pRrUO:4MvSrx_38rkfIdxbhkgyDMSFFo8sWAIUrL8zKX2Kh1o', '2023-02-28 09:20:40.021196'),
('r894nivm090yaafoed79xbxgiodwlhpi', 'e30:1rfkXU:GBL3LgCrYiQawfoKv_wa9_o0AnFc9Ap0BGAaaqlM8-g', '2024-03-14 17:49:48.249026'),
('rfeap8osl3swgqyyr8ynqd99bysy8dzg', 'eyJwaWQiOjEwfQ:1pUmSj:7yGiBSF9vNYh5_xp1X09dX0Lcb29XbhCVzdV8CKtyys', '2023-03-08 10:35:01.120639'),
('s4m4qg1iqwzj7gdh4eap7f446olwvjna', 'eyJzaWQiOjEsImRlcHQiOiJpdCJ9:1pdTpQ:nvBgRLbzrWz1o_hM15mw9hGdiu1HFCxasZUrY5eKTDI', '2023-04-01 10:30:24.357336'),
('w146tj1z15oo3k72mxv4xd76m03m4cea', 'eyJzaWQiOjIsImRlcHQiOiJjc2UifQ:1pVu0w:8DEXaELMTBS2Q8UehrSN1be7F_p1QrDVla40I1rN7w4', '2023-03-11 12:50:58.077487'),
('zemk4xkb6a5vuynxze61qeecimn2sk7g', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1pXwI9:5Yl1x1DV1lTAm7zbguEPUZfak2jrjoryFDmSmIJfYw4', '2023-03-17 03:41:09.310049');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
