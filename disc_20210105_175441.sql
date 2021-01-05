-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "disc" ----------------------------------
CREATE DATABASE IF NOT EXISTS `disc` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `disc`;
-- ---------------------------------------------------------


-- CREATE TABLE "answers" --------------------------------------
CREATE TABLE `answers`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`m` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`l` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`id_employee` Int( 255 ) NOT NULL,
	`id_sub_question` Int( 255 ) NOT NULL,
	`id_schedule` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 253;
-- -------------------------------------------------------------


-- CREATE TABLE "master_questions" -----------------------------
CREATE TABLE `master_questions`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`description` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
	`sort_number` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 18;
-- -------------------------------------------------------------


-- CREATE TABLE "master_sub_questions" -------------------------
CREATE TABLE `master_sub_questions`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_question` Int( 255 ) NOT NULL,
	`question` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`sort_number` Int( 255 ) NOT NULL,
	`sub_number` Int( 255 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 25;
-- -------------------------------------------------------------


-- CREATE TABLE "sequelizemeta" --------------------------------
CREATE TABLE `sequelizemeta`( 
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
	PRIMARY KEY ( `name` ),
	CONSTRAINT `name` UNIQUE( `name` ) )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users`( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`avatar` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
	`role` Enum( 'admin', 'student' ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`created_at` DateTime NOT NULL,
	`updated_at` DateTime NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `UNIQUE_USERS_EMAIL` UNIQUE( `email` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "users1" ---------------------------------------
CREATE TABLE `users1`( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_employee` Int( 255 ) NOT NULL,
	`nama` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`jenis_kelamin` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- Dump data of "answers" ----------------------------------
BEGIN;

INSERT INTO `answers`(`id`,`m`,`l`,`id_employee`,`id_sub_question`,`id_schedule`) VALUES 
( '69', 'I', 'I', '1', '3', '1' ),
( '70', 'S', 'C', '1', '4', '1' ),
( '71', '*', 'C', '1', '5', '1' ),
( '72', 'S', 'C', '1', '6', '1' ),
( '73', NULL, NULL, '1', '3', '1' ),
( '74', NULL, NULL, '1', '4', '1' ),
( '75', NULL, NULL, '1', '5', '1' ),
( '76', NULL, NULL, '1', '6', '1' ),
( '77', NULL, NULL, '1', '7', '1' ),
( '78', NULL, NULL, '1', '8', '1' ),
( '79', NULL, NULL, '1', '9', '1' ),
( '80', NULL, NULL, '1', '10', '1' ),
( '81', NULL, NULL, '1', '15', '1' ),
( '82', NULL, NULL, '1', '16', '1' ),
( '83', NULL, NULL, '1', '17', '1' ),
( '84', NULL, NULL, '1', '19', '1' ),
( '85', NULL, NULL, '1', '11', '1' ),
( '86', NULL, NULL, '1', '12', '1' ),
( '87', NULL, NULL, '1', '13', '1' ),
( '88', NULL, NULL, '1', '14', '1' ),
( '89', NULL, NULL, '1', '20', '1' ),
( '90', NULL, NULL, '1', '21', '1' ),
( '91', NULL, NULL, '1', '22', '1' ),
( '92', NULL, NULL, '1', '23', '1' ),
( '93', NULL, NULL, '1', '3', '1' ),
( '94', NULL, NULL, '1', '4', '1' ),
( '95', NULL, NULL, '1', '5', '1' ),
( '96', NULL, NULL, '1', '6', '1' ),
( '97', 'I', NULL, '1', '3', '1' ),
( '98', NULL, NULL, '1', '4', '1' ),
( '99', NULL, NULL, '1', '5', '1' ),
( '100', NULL, NULL, '1', '6', '1' ),
( '101', NULL, NULL, '1', '3', '1' ),
( '102', NULL, NULL, '1', '4', '1' ),
( '103', NULL, NULL, '1', '5', '1' ),
( '104', NULL, NULL, '1', '6', '1' ),
( '105', 'I', NULL, '1', '3', '1' ),
( '106', NULL, NULL, '1', '4', '1' ),
( '107', NULL, NULL, '1', '6', '1' ),
( '108', NULL, NULL, '1', '5', '1' ),
( '109', NULL, NULL, '1', '11', '1' ),
( '110', NULL, NULL, '1', '12', '1' ),
( '111', NULL, NULL, '1', '13', '1' ),
( '112', NULL, NULL, '1', '14', '1' ),
( '113', NULL, NULL, '1', '3', '1' ),
( '114', NULL, NULL, '1', '4', '1' ),
( '115', NULL, NULL, '1', '5', '1' ),
( '116', NULL, NULL, '1', '6', '1' ),
( '117', NULL, NULL, '1', '3', '1' ),
( '118', NULL, NULL, '1', '4', '1' ),
( '119', NULL, NULL, '1', '5', '1' ),
( '120', NULL, NULL, '1', '6', '1' ),
( '121', NULL, NULL, '1', '3', '1' ),
( '122', NULL, NULL, '1', '4', '1' ),
( '123', NULL, NULL, '1', '5', '1' ),
( '124', NULL, NULL, '1', '6', '1' ),
( '125', NULL, NULL, '1', '3', '1' ),
( '126', NULL, NULL, '1', '4', '1' ),
( '127', NULL, NULL, '1', '5', '1' ),
( '128', NULL, NULL, '1', '6', '1' ),
( '129', NULL, NULL, '1', '3', '1' ),
( '130', NULL, NULL, '1', '4', '1' ),
( '131', NULL, NULL, '1', '5', '1' ),
( '132', NULL, NULL, '1', '6', '1' ),
( '133', NULL, NULL, '1', '3', '1' ),
( '134', NULL, NULL, '1', '4', '1' ),
( '135', NULL, NULL, '1', '5', '1' ),
( '136', NULL, NULL, '1', '6', '1' ),
( '137', NULL, NULL, '1', '3', '1' ),
( '138', NULL, NULL, '1', '4', '1' ),
( '139', NULL, NULL, '1', '5', '1' ),
( '140', NULL, NULL, '1', '6', '1' ),
( '141', NULL, NULL, '1', '4', '1' ),
( '142', NULL, NULL, '1', '3', '1' ),
( '143', NULL, NULL, '1', '5', '1' ),
( '144', NULL, NULL, '1', '6', '1' ),
( '145', NULL, NULL, '1', '3', '1' ),
( '146', NULL, NULL, '1', '4', '1' ),
( '147', NULL, NULL, '1', '5', '1' ),
( '148', NULL, NULL, '1', '6', '1' ),
( '149', 'I', NULL, '1', '7', '1' ),
( '150', NULL, NULL, '1', '8', '1' ),
( '151', NULL, NULL, '1', '9', '1' ),
( '152', NULL, NULL, '1', '10', '1' ),
( '153', NULL, NULL, '1', '11', '1' ),
( '154', 'I', NULL, '1', '12', '1' ),
( '155', NULL, NULL, '1', '13', '1' ),
( '156', NULL, NULL, '1', '14', '1' ),
( '157', NULL, NULL, '1', '15', '1' ),
( '158', NULL, NULL, '1', '16', '1' ),
( '159', NULL, NULL, '1', '17', '1' ),
( '160', NULL, NULL, '1', '19', '1' ),
( '161', NULL, NULL, '1', '3', '1' ),
( '162', NULL, NULL, '1', '4', '1' ),
( '163', NULL, NULL, '1', '5', '1' ),
( '164', NULL, NULL, '1', '6', '1' ),
( '165', NULL, NULL, '1', '3', '1' ),
( '166', NULL, NULL, '1', '5', '1' ),
( '167', NULL, NULL, '1', '4', '1' ),
( '168', NULL, NULL, '1', '6', '1' ),
( '169', NULL, NULL, '1', '3', '1' ),
( '170', NULL, NULL, '1', '4', '1' ),
( '171', NULL, NULL, '1', '5', '1' ),
( '172', NULL, NULL, '1', '6', '1' ),
( '173', NULL, NULL, '1', '3', '1' ),
( '174', NULL, NULL, '1', '4', '1' ),
( '175', NULL, NULL, '1', '5', '1' ),
( '176', NULL, NULL, '1', '6', '1' ),
( '177', NULL, NULL, '1', '7', '1' ),
( '178', NULL, NULL, '1', '8', '1' ),
( '179', NULL, NULL, '1', '9', '1' ),
( '180', NULL, NULL, '1', '10', '1' ),
( '181', NULL, NULL, '1', '3', '1' ),
( '182', NULL, NULL, '1', '4', '1' ),
( '183', NULL, NULL, '1', '5', '1' ),
( '184', NULL, NULL, '1', '6', '1' ),
( '185', NULL, NULL, '1', '3', '1' ),
( '186', NULL, NULL, '1', '4', '1' ),
( '187', NULL, NULL, '1', '5', '1' ),
( '188', NULL, NULL, '1', '6', '1' ),
( '189', NULL, NULL, '1', '3', '1' ),
( '190', NULL, NULL, '1', '4', '1' ),
( '191', NULL, NULL, '1', '5', '1' ),
( '192', NULL, NULL, '1', '6', '1' ),
( '193', NULL, NULL, '1', '3', '1' ),
( '194', NULL, NULL, '1', '4', '1' ),
( '195', NULL, NULL, '1', '5', '1' ),
( '196', NULL, NULL, '1', '6', '1' ),
( '197', NULL, NULL, '1', '3', '1' ),
( '198', NULL, NULL, '1', '4', '1' ),
( '199', NULL, NULL, '1', '5', '1' ),
( '200', NULL, NULL, '1', '6', '1' ),
( '201', NULL, NULL, '1', '3', '1' ),
( '202', NULL, NULL, '1', '4', '1' ),
( '203', NULL, NULL, '1', '5', '1' ),
( '204', NULL, NULL, '1', '6', '1' ),
( '205', NULL, NULL, '1', '4', '1' ),
( '206', NULL, NULL, '1', '6', '1' ),
( '207', NULL, NULL, '1', '3', '1' ),
( '208', NULL, NULL, '1', '5', '1' ),
( '209', NULL, NULL, '1', '3', '1' ),
( '210', NULL, NULL, '1', '4', '1' ),
( '211', NULL, NULL, '1', '5', '1' ),
( '212', NULL, NULL, '1', '6', '1' ),
( '213', NULL, NULL, '1', '3', '1' ),
( '214', NULL, NULL, '1', '4', '1' ),
( '215', NULL, NULL, '1', '5', '1' ),
( '216', NULL, NULL, '1', '6', '1' ),
( '217', NULL, NULL, '1', '3', '1' ),
( '218', NULL, NULL, '1', '4', '1' ),
( '219', NULL, NULL, '1', '6', '1' ),
( '220', NULL, NULL, '1', '5', '1' ),
( '221', NULL, NULL, '1', '3', '1' ),
( '222', NULL, NULL, '1', '4', '1' ),
( '223', NULL, NULL, '1', '5', '1' ),
( '224', NULL, NULL, '1', '6', '1' ),
( '225', NULL, NULL, '1', '3', '1' ),
( '226', NULL, NULL, '1', '4', '1' ),
( '227', NULL, NULL, '1', '5', '1' ),
( '228', NULL, NULL, '1', '6', '1' ),
( '229', NULL, NULL, '1', '4', '1' ),
( '230', NULL, NULL, '1', '3', '1' ),
( '231', NULL, NULL, '1', '5', '1' ),
( '232', NULL, NULL, '1', '6', '1' ),
( '233', NULL, NULL, '1', '3', '1' ),
( '234', NULL, NULL, '1', '4', '1' ),
( '235', NULL, NULL, '1', '5', '1' ),
( '236', NULL, NULL, '1', '6', '1' ),
( '237', NULL, NULL, '1', '3', '1' ),
( '238', NULL, NULL, '1', '4', '1' ),
( '239', NULL, NULL, '1', '5', '1' ),
( '240', NULL, NULL, '1', '6', '1' ),
( '241', NULL, NULL, '1', '3', '1' ),
( '242', NULL, NULL, '1', '4', '1' ),
( '243', NULL, NULL, '1', '5', '1' ),
( '244', NULL, NULL, '1', '6', '1' ),
( '245', NULL, NULL, '1', '3', '1' ),
( '246', NULL, NULL, '1', '4', '1' ),
( '247', NULL, NULL, '1', '5', '1' ),
( '248', NULL, NULL, '1', '6', '1' ),
( '249', NULL, NULL, '1', '3', '1' ),
( '250', NULL, NULL, '1', '4', '1' ),
( '251', NULL, NULL, '1', '6', '1' ),
( '252', NULL, NULL, '1', '5', '1' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "master_questions" -------------------------
BEGIN;

INSERT INTO `master_questions`(`id`,`description`,`sort_number`) VALUES 
( '1', '0', '1' ),
( '13', '0', '2' ),
( '14', '0', '3' ),
( '15', '0', '4' ),
( '16', '0', '5' ),
( '17', '0', '6' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "master_sub_questions" ---------------------
BEGIN;

INSERT INTO `master_sub_questions`(`id`,`id_question`,`question`,`sort_number`,`sub_number`) VALUES 
( '3', '1', 'Mudah bergaul, ramah, mudah setuju', '1', '1' ),
( '4', '1', 'Mempercayai, percaya pada orang lain', '2', '1' ),
( '5', '1', 'Petualang, suka mengambil resiko', '3', '1' ),
( '6', '1', 'Penuh toleransi, menghormati orang lain', '4', '1' ),
( '7', '13', 'Lembut, tertutup', '1', '2' ),
( '8', '13', 'Visionary / pandangan ke masa depan', '2', '2' ),
( '9', '13', 'Pusat perhation, suka bersosialisai', '3', '2' ),
( '10', '13', 'Pendamai, membawa ketenangan', '4', '2' ),
( '11', '14', 'Menyemangati orang lain', '1', '3' ),
( '12', '14', 'Berusaha mencapai kesempurnaan', '2', '3' ),
( '13', '14', 'Menjadi bagian dari tim/kelompok', '3', '3' ),
( '14', '14', 'Ingin menetapkan goal/tujuan', '4', '3' ),
( '15', '15', 'Menjadi frustasi', '1', '4' ),
( '16', '15', 'Memendam perasaan dalam hati', '2', '4' ),
( '17', '15', 'Menyampaikan sudat pandang pribadi', '3', '4' ),
( '19', '15', 'Berani menghadapi oposisi', '4', '4' ),
( '20', '16', 'Hidup/lincah, banyak bicara', '1', '5' ),
( '21', '16', 'Cepat, penuh keyakinan', '2', '5' ),
( '22', '16', 'Berusaha menjaga keseimbangan', '3', '5' ),
( '23', '16', 'Berusaha patuh pada peraturan', '4', '5' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "sequelizemeta" ----------------------------
BEGIN;

INSERT INTO `sequelizemeta`(`name`) VALUES 
( '20210102150340-create-table-users.js' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "users1" -----------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


