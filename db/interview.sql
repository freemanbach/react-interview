

DROP DATABASE IF EXISTS interview;
CREATE DATABASE IF NOT EXISTS interview;
use interview;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES,NO_AUTO_VALUE_ON_ZERO';
SET AUTOCOMMIT=0;
SET time_zone = '-04:00';
START TRANSACTION;

DROP TABLE IF EXISTS `tbl_lang`;
CREATE TABLE IF NOT EXISTS `tbl_lang` (
          `id` int(10) NOT NULL,
          `lang` VARCHAR(50) NOT NULL,
          PRIMARY KEY (`id`)
        ) ENGINE=InnoDB default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_lang` WRITE;
INSERT INTO tbl_lang (id, lang) VALUES(1,'python'),(2,'java'),(3,'javascript'), (4, 'go'), (5,'rust');
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `tbl_python`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_python`;
CREATE TABLE IF NOT EXISTS `tbl_python` (
          `id` int(10) NOT NULL AUTO_INCREMENT,            
          `py_lang_id` int NOT NULL,
          `diff_level` ENUM('1', '2', '3', '4', '5') NOT NULL,
          `question` text NOT NULL,
          `answer` text NOT NULL,
          INDEX parent_index (py_lang_id),
          PRIMARY KEY (`id`),
          CONSTRAINT fk_python FOREIGN KEY (py_lang_id) REFERENCES tbl_lang(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_python` WRITE;
INSERT INTO tbl_python (py_lang_id, diff_level, question, answer) VALUES(1, '1', "How do we store values ?" , "Via a Variable");
UNLOCK TABLES;


-- -----------------------------------------------------
-- Table `tbl_java`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_java`;
CREATE TABLE IF NOT EXISTS `tbl_java` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `java_lang_id` int NOT NULL,
          `diff_level` ENUM('1', '2', '3', '4', '5') NOT NULL,
          `question` text NOT NULL,
          `answer` text NOT NULL,
          INDEX parent_index (java_lang_id),
          PRIMARY KEY (`id`),
          CONSTRAINT fk_java FOREIGN KEY (java_lang_id) REFERENCES tbl_lang(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_java` WRITE;
INSERT INTO tbl_java (java_lang_id, diff_level, question, answer) VALUES(2, '1', "How do we store values ?" , "Via a Variable");
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `tbl_javascript`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_javascript`;
CREATE TABLE IF NOT EXISTS `tbl_javascript` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `js_lang_id` int NOT NULL,
          `diff_level` ENUM('1', '2', '3', '4', '5') NOT NULL,
          `question` text NOT NULL,
          `answer` text NOT NULL,
          INDEX parent_index (js_lang_id),
          PRIMARY KEY (`id`),
        CONSTRAINT fk_js FOREIGN KEY (js_lang_id) REFERENCES tbl_lang(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_javascript` WRITE;
INSERT INTO tbl_javascript (js_lang_id, diff_level, question, answer) VALUES(3, '1', "How do we store values ?" , "Via a Variable");
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `tbl_go`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_go`;
CREATE TABLE IF NOT EXISTS `tbl_go` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `go_lang_id` int NOT NULL,
          `diff_level` ENUM('1', '2', '3', '4', '5') NOT NULL,
          `question` text NOT NULL,
          `answer` text NOT NULL,
          INDEX parent_index (go_lang_id),
          PRIMARY KEY (`id`),
        CONSTRAINT fk_go FOREIGN KEY (go_lang_id) REFERENCES tbl_lang(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_go` WRITE;
INSERT INTO tbl_go (go_lang_id, diff_level, question, answer) VALUES(4, '1', "How do we store values ?" , "Via a Variable");
UNLOCK TABLES;

-- -----------------------------------------------------
-- Table `tbl_rust`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tbl_rust`;
CREATE TABLE IF NOT EXISTS `tbl_rust` (
          `id` int(10) NOT NULL AUTO_INCREMENT,
          `rust_lang_id` int NOT NULL,
          `diff_level` ENUM('1', '2', '3', '4', '5') NOT NULL,
          `question` text NOT NULL,
          `answer` text NOT NULL,
          INDEX parent_index (rust_lang_id),
          PRIMARY KEY (`id`),
        CONSTRAINT fk_rust FOREIGN KEY (rust_lang_id) REFERENCES tbl_lang(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 default charset utf8 COLLATE = utf8_general_ci;

LOCK TABLES `tbl_rust` WRITE;
INSERT INTO tbl_rust (rust_lang_id, diff_level, question, answer) VALUES(5, '1', "How do we store values ?" , "Via a Variable");
UNLOCK TABLES;
COMMIT;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;