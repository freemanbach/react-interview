
CREATE DATABASE IF NOT EXISTS interview;
use interview;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES,NO_AUTO_VALUE_ON_ZERO';
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = '-04:00';


DROP TABLE IF EXISTS `tbl_lang`;
CREATE TABLE IF NOT EXISTS `tbl_lang` (
          `id` int(10) NOT NULL,
          `language` VARCHAR(50) NOT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=InnoDB default charset utf8 COLLATE = utf8_general_ci;

-- -----------------------------------------------------
-- Table `tbl_python`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_python`;
CREATE TABLE IF NOT EXISTS `tbl_python` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `py_lang_id` int NOT NULL,
          `diff_level` varchar(10) NOT NULL,
          `question` varchar(255) NOT NULL,
          PRIMARY KEY (`id`),
          CONSTRAINT fk_python FOREIGN KEY (py_lang_id) REFERENCES parent(lang_id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `tbl_java`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_java`;
CREATE TABLE IF NOT EXISTS `tbl_java` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `java_lang_id` int NOT NULL,
          `diff_level` varchar(10) NOT NULL,
          `question` varchar(255) NOT NULL,
          PRIMARY KEY (`id`),
          CONSTRAINT fk_java FOREIGN KEY (java_lang_id) REFERENCES parent(lang_id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;


-- -----------------------------------------------------
-- Table `tbl_javascript`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_javascript`;
CREATE TABLE IF NOT EXISTS `tbl_javascript` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `js_lang_id` int NOT NULL,
          `diff_level` varchar(10) NOT NULL,
          `question` varchar(255) NOT NULL,
          PRIMARY KEY (`id`),
        CONSTRAINT fk_js FOREIGN KEY (js_lang_id) REFERENCES parent(lang_id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;