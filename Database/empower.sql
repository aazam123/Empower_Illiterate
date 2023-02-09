-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 07:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empower`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add link counter', 7, 'add_linkcounter'),
(26, 'Can change link counter', 7, 'change_linkcounter'),
(27, 'Can delete link counter', 7, 'delete_linkcounter'),
(28, 'Can view link counter', 7, 'view_linkcounter'),
(29, 'Can add addjobs', 8, 'add_addjobs'),
(30, 'Can change addjobs', 8, 'change_addjobs'),
(31, 'Can delete addjobs', 8, 'delete_addjobs'),
(32, 'Can view addjobs', 8, 'view_addjobs'),
(33, 'Can add adminlogin', 9, 'add_adminlogin'),
(34, 'Can change adminlogin', 9, 'change_adminlogin'),
(35, 'Can delete adminlogin', 9, 'delete_adminlogin'),
(36, 'Can view adminlogin', 9, 'view_adminlogin'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add employersdetails', 11, 'add_employersdetails'),
(42, 'Can change employersdetails', 11, 'change_employersdetails'),
(43, 'Can delete employersdetails', 11, 'delete_employersdetails'),
(44, 'Can view employersdetails', 11, 'view_employersdetails'),
(45, 'Can add feedback', 12, 'add_feedback'),
(46, 'Can change feedback', 12, 'change_feedback'),
(47, 'Can delete feedback', 12, 'delete_feedback'),
(48, 'Can view feedback', 12, 'view_feedback'),
(49, 'Can add studsignup', 13, 'add_studsignup'),
(50, 'Can change studsignup', 13, 'change_studsignup'),
(51, 'Can delete studsignup', 13, 'delete_studsignup'),
(52, 'Can view studsignup', 13, 'view_studsignup'),
(53, 'Can add jobapply', 14, 'add_jobapply'),
(54, 'Can change jobapply', 14, 'change_jobapply'),
(55, 'Can delete jobapply', 14, 'delete_jobapply'),
(56, 'Can view jobapply', 14, 'view_jobapply');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$zhS9qEaOMQmf65k7mHG7VO$x5BuB3W5QLBd6SOI1WJbxnFKA8UoqVs+oRJWguy350M=', '2023-02-07 06:07:09.883557', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-02-07 06:06:38.713500');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Empowerapp', 'addjobs'),
(9, 'Empowerapp', 'adminlogin'),
(10, 'Empowerapp', 'contact'),
(11, 'Empowerapp', 'employersdetails'),
(12, 'Empowerapp', 'feedback'),
(14, 'Empowerapp', 'jobapply'),
(13, 'Empowerapp', 'studsignup'),
(6, 'sessions', 'session'),
(7, 'verify_email', 'linkcounter');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-01 08:25:39.655166'),
(2, 'auth', '0001_initial', '2023-02-01 08:25:41.747912'),
(3, 'admin', '0001_initial', '2023-02-01 08:25:42.161683'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-01 08:25:42.182622'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-01 08:25:42.211604'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-01 08:25:42.380872'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-01 08:25:42.693831'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-01 08:25:42.737966'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-01 08:25:42.757955'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-01 08:25:42.912418'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-01 08:25:42.921387'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-01 08:25:42.939377'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-01 08:25:43.011332'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-01 08:25:43.065299'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-01 08:25:43.119265'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-01 08:25:43.144251'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-01 08:25:43.203213'),
(18, 'sessions', '0001_initial', '2023-02-01 08:25:43.338203'),
(19, 'verify_email', '0001_initial', '2023-02-01 08:25:43.780192'),
(20, 'Empowerapp', '0001_initial', '2023-02-01 08:26:06.935772'),
(21, 'Empowerapp', '0002_jobapply_alter_adminlogin_created', '2023-02-04 11:43:07.510442'),
(22, 'Empowerapp', '0003_delete_jobapply_alter_adminlogin_created', '2023-02-04 14:51:59.071476'),
(23, 'Empowerapp', '0004_jobapply_alter_adminlogin_created', '2023-02-04 14:56:39.158718');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('36tu9i0jteb24ccuooqo2rkjwvnjpg0o', 'eyJ1c2VyIjoibWFub2pAZ21haWwuY29tIiwidXNlcmlkIjo1fQ:1pPydz:afVq9LIRbzbWjTCim7vTgdN--pA0rpNH4KTsECpKkac', '2023-02-23 04:34:47.985832');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_addjobs`
--

CREATE TABLE `empowerapp_addjobs` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `jobtitle` varchar(80) NOT NULL,
  `companyname` varchar(80) NOT NULL,
  `companylogo` varchar(100) NOT NULL,
  `jobselect` varchar(80) NOT NULL,
  `city` varchar(80) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_addjobs`
--

INSERT INTO `empowerapp_addjobs` (`id`, `email`, `jobtitle`, `companyname`, `companylogo`, `jobselect`, `city`, `description`) VALUES
(1, 'aazammorvadiya890@gmail.com', 'Python Devloper', 'Infosys', 'Myfiles/info_sbaUctB.png', 'WebDevloper', 'Ahemdabad', 'This Job is Very responsible Person And Expirince 6month'),
(2, 'suman@gmail.com', 'Sales Manager', 'Tesla', 'Myfiles/download_1.jpg', 'Sales Man', 'Vadodara', 'Full Time Work Expirence person Requredment'),
(5, 'mansi@gmail.com', 'Laborer', 'Vivrta Graphics', 'Myfiles/download_1_hf3aEsR.jpg', 'Industrial Worker', 'Rajkot', 'Box Pasting Work • Loading and unloading materials and equipment.'),
(8, 'suraj@gmail.com', 'Concierge Executive', 'Master Staffing Solution', 'Myfiles/download.png', 'Digital Marketing', 'Gondal', 'The role of hotel concierge is one of the hospitality jobs that is usually'),
(9, 'milan@gmail.com', 'Urgent Hiring for Work from Home,Computer operator work', 'Vision Hire Services', 'Myfiles/logo_1.png', 'other', 'Rajkot', 'Profile: Data entry/ Backend Executive work'),
(11, 'suresh@gmail.com', 'Fitter', 'Infinity Window System', 'Myfiles/download_2_v7Qr7gk.jpg', 'Fresher', 'Surat', 'Infinity Window System is aggressively hiring for the job profile of Fitter for 10 open positions at Rajkot in Vavdi Area locality. Kindly go through the FAQs below to get all'),
(13, 'aazammorvadiya890@gmail.com', 'Opening for the PHP Developer (Experienced & Fresher) - 5', 'Epixel Technologies', 'Myfiles/download_3_MF7RH0H.jpg', 'It Zone', 'Rajkot', 'We are urgently hiring for the role of PHP Developer with min 0 months'),
(15, 'aazammorvadiya890@gmail.com', 'Interior Designer', 'Patel Interiors Pvt Ltd', 'Myfiles/download_1_7at2FkX.png', 'Digital Marketing', 'Amreli', 'Visualizing And Sketching Design Plans As Per Client Requirements. Sourcing Materials And Inspecting Site To Ensure Quality Of Project.'),
(16, 'aazammorvadiya890@gmail.com', 'Telecaller', 'ADWITIYA WELLNESS', 'Myfiles/download_2.png', 'Telecaller', 'vadodara', 'Calling Customers And Informing Them About The Company\'S Product/ Service, Receive Calls And Solve Queries.');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_adminlogin`
--

CREATE TABLE `empowerapp_adminlogin` (
  `id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_adminlogin`
--

INSERT INTO `empowerapp_adminlogin` (`id`, `created`, `fname`, `email`, `mobile`, `password`) VALUES
(1, '2023-02-01 15:20:49.000000', 'admin', 'admin@gmail.com', 7228021405, 'admin'),
(2, '2023-02-01 15:15:09.661230', 'Aazam', 'aazammorvadiya@gmail.com', 7228021405, 'aazam');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_contact`
--

CREATE TABLE `empowerapp_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_contact`
--

INSERT INTO `empowerapp_contact` (`id`, `name`, `email`, `message`) VALUES
(2, 'Aazam', 'aazam@gmail.com', 'This site is very nice'),
(3, 'Ronak', 'ronak@gmil.com', 'Hello'),
(4, 'Aazam', 'aazam@gmail.com', 'Helllo'),
(5, 'Shital', 'sital@gmail.com', 'Hello this site is very nice and wonderful'),
(6, 'Aazam', 'aazam@gmail.com', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_employersdetails`
--

CREATE TABLE `empowerapp_employersdetails` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `skill` varchar(150) NOT NULL,
  `hobbies` varchar(150) NOT NULL,
  `address` longtext NOT NULL,
  `experience` varchar(80) NOT NULL,
  `images` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_employersdetails`
--

INSERT INTO `empowerapp_employersdetails` (`id`, `name`, `email`, `mobile`, `skill`, `hobbies`, `address`, `experience`, `images`, `cv`) VALUES
(1, 'Aazam', 'aazammorvadiya890@gmail.com', 7228021405, 'Html Css Python', 'Coding', 'Gondal', 'Fresher', 'User/IMG_20161212_225405_daYEsUZ.jpg', 'User/Aazam_Resume.pdf'),
(2, 'Ronak', 'ronak@gmail.com', 7228021405, 'Html Css  jQuery', 'Danceing', 'Bhavnagar', 'Fresher', 'User/02.JPG', 'User/Aazam_resume.rtf'),
(3, 'Suman', 'suman@gmail.com', 88558558, 'PHP Laravel', 'Singing', 'Surat', 'Fresher', 'User/004-Ferrari__38.jpg', 'User/Resume.pdf'),
(4, 'Ramesh', 'ramesh@gmail.com', 88557755, 'Sales manager', 'Mimicry', 'Jasdan', 'Fresher', 'User/3D_54.jpg', 'User/Aazam_resume_2BOtq2b.pdf'),
(5, 'Manoj', 'manoj@gmail.com', 7228021405, 'Html Css Javascipt', 'Music', 'Surat', 'Fresher', 'User/3D_25.jpg', 'User/Aazam_resume_xGnpQEg.rtf');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_feedback`
--

CREATE TABLE `empowerapp_feedback` (
  `id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_feedback`
--

INSERT INTO `empowerapp_feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aazam', 'aazam@gmail.com', 'This site is very nice'),
(2, 'Aazam', 'aazammorvadiya@gmil.com', 'Hello This is my life is very usefull'),
(3, 'ronak', 'ronak@gmail.com', 'Hello very nice devlope this site'),
(4, 'shyam', 'shyam@gmail.com', 'Hello My name is shyam and very use full this site'),
(5, 'Aazam', 'aazam@gmail.com', 'Hrllo'),
(6, 'Suman', 'Suman@gmail.com', 'This site Is very nice');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_jobapply`
--

CREATE TABLE `empowerapp_jobapply` (
  `id` bigint(20) NOT NULL,
  `userjobpost` varchar(100) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(80) NOT NULL,
  `cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_jobapply`
--

INSERT INTO `empowerapp_jobapply` (`id`, `userjobpost`, `name`, `email`, `mobile`, `address`, `city`, `cv`) VALUES
(4, 'aazammorvadiya890@gmail.com', 'Shyam', 'shyam@gmail.com', 7228021405, 'Chordi', 'Gondal', 'CV/Aazam_Resume.pdf'),
(9, 'aazammorvadiya890@gmail.com', 'Suraj', 'suraj@gmail.com', 7228021405, 'Goghavadar', 'Gondal', 'CV/Aazam_Resume.pdf'),
(10, 'aazammorvadiya890@gmail.com', 'Mukesh', 'mukesh@gmail.com', 7228021405, 'Bhojrajpara', 'Gondal', 'CV/Aazam_Resume.pdf'),
(21, 'aazammorvadiya890@gmail.com', 'Aazam', 'aa@gmail.com', 5545455555, 'Bhojrajpara', 'Gondal', 'CV/Aazam_Resume.pdf'),
(22, 'aazammorvadiya890@gmail.com', 'Aazam', 'aaza@gmail.com', 7228021405, 'Gondal', 'Gondal', 'CV/Aazam_Resume.pdf'),
(23, 'aazammorvadiya890@gmail.com', 'Sonal', 'sonal@gmail.com', 7228021405, 'Bhojratpara', 'Gondal', 'CV/Aazam_Resume.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `empowerapp_studsignup`
--

CREATE TABLE `empowerapp_studsignup` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empowerapp_studsignup`
--

INSERT INTO `empowerapp_studsignup` (`id`, `fname`, `profilepic`, `email`, `mobile`, `password`) VALUES
(1, 'Aazam', 'User/IMG_20161212_225405.jpg', 'aazammorvadiya890@gmail.com', 7228021405, '3535'),
(2, 'Ronak', 'User/IMG_20161030_111914.jpg', 'ronak@gmail.com', 788554788, '4545'),
(3, 'Suman', 'User/1_40.jpg', 'suman@gmail.com', 888554477, '858585'),
(4, 'ramesh', 'User/1.bmp', 'ramesh@gmail.com', 88557744, '454545'),
(5, 'Manoj', 'User/3D_93.jpg', 'manoj@gmail.com', 88557755, '4545');

-- --------------------------------------------------------

--
-- Table structure for table `verify_email_linkcounter`
--

CREATE TABLE `verify_email_linkcounter` (
  `id` bigint(20) NOT NULL,
  `sent_count` int(11) NOT NULL,
  `requester_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_email_linkcounter`
--

INSERT INTO `verify_email_linkcounter` (`id`, `sent_count`, `requester_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `empowerapp_addjobs`
--
ALTER TABLE `empowerapp_addjobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_adminlogin`
--
ALTER TABLE `empowerapp_adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_contact`
--
ALTER TABLE `empowerapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_employersdetails`
--
ALTER TABLE `empowerapp_employersdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_feedback`
--
ALTER TABLE `empowerapp_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_jobapply`
--
ALTER TABLE `empowerapp_jobapply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empowerapp_studsignup`
--
ALTER TABLE `empowerapp_studsignup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `requester_id` (`requester_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `empowerapp_addjobs`
--
ALTER TABLE `empowerapp_addjobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `empowerapp_adminlogin`
--
ALTER TABLE `empowerapp_adminlogin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `empowerapp_contact`
--
ALTER TABLE `empowerapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `empowerapp_employersdetails`
--
ALTER TABLE `empowerapp_employersdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `empowerapp_feedback`
--
ALTER TABLE `empowerapp_feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `empowerapp_jobapply`
--
ALTER TABLE `empowerapp_jobapply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `empowerapp_studsignup`
--
ALTER TABLE `empowerapp_studsignup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  ADD CONSTRAINT `verify_email_linkcounter_requester_id_b6bf2934_fk_auth_user_id` FOREIGN KEY (`requester_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
