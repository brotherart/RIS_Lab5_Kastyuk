SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema customer
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema customer
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `customer`;
CREATE DATABASE `customer` DEFAULT CHARACTER SET utf8mb4;
CREATE SCHEMA IF NOT EXISTS `customer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `customer` ;

-- -----------------------------------------------------
-- Table `customer`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(256) NOT NULL,
  `zipCode` VARCHAR(64) NOT NULL,
  `country` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `customer`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `customer`.`flight` (
  `id_flight` INT NOT NULL AUTO_INCREMENT,
  `departure` VARCHAR(45) NOT NULL,
  `arrival` VARCHAR(45) NOT NULL,
  `company` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_flight`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `customer`.`customer` VALUES (1, 'Alex', '33756', '555-123-4567');
INSERT INTO `customer`.`customer` VALUES (2, 'Max', '69126', '555-643-8545');
INSERT INTO `customer`.`customer` VALUES (3, 'Kate', '58994', '555-197-9941');

INSERT INTO `customer`.`flight` VALUES (1, 'USA', 'Poland', 'Amazon');
INSERT INTO `customer`.`flight` VALUES (2, 'Belgium', 'Estonia', 'Asos');
INSERT INTO `customer`.`flight` VALUES (3, 'UK', 'Italy', 'Klekt');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


