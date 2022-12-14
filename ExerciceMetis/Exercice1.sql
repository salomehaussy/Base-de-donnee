- MySQL Script generated by MySQL Workbench
-- Thu Sep 15 10:21:06 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Salarier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salarier` (
  `ID_Salarier` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(45) NULL,
  `Prenom` VARCHAR(45) NULL,
  `Date_de_naissance` DATE NULL,
  `Telephone` INT NULL,
  `Agence_ID_Agence` INT NOT NULL,
  PRIMARY KEY (`ID_Salarier`),
  INDEX `fk_Salarier_Agence_idx` (`Agence_ID_Agence` ASC) VISIBLE,
  CONSTRAINT `fk_Salarier_Agence`
    FOREIGN KEY (`Agence_ID_Agence`)
    REFERENCES `mydb`.`Agence` (`ID_Agence`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Commune`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Commune` (
  `ID_Commune` INT NOT NULL AUTO_INCREMENT,
  `Nom_commune` VARCHAR(255) NULL,
  PRIMARY KEY (`ID_Commune`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Agence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Agence` (
  `ID_Agence` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(255) NULL,
  `Salarier_ID_Salarier` INT NOT NULL,
  `Commune_ID_Commune` INT NOT NULL,
  PRIMARY KEY (`ID_Agence`),
  INDEX `fk_Agence_Salarier1_idx` (`Salarier_ID_Salarier` ASC) VISIBLE,
  INDEX `fk_Agence_Commune1_idx` (`Commune_ID_Commune` ASC) VISIBLE,
  CONSTRAINT `fk_Agence_Salarier1`
    FOREIGN KEY (`Salarier_ID_Salarier`)
    REFERENCES `mydb`.`Salarier` (`ID_Salarier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Agence_Commune1`
    FOREIGN KEY (`Commune_ID_Commune`)
    REFERENCES `mydb`.`Commune` (`ID_Commune`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Exploitation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Exploitation` (
  `ID_Exploitation` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(255) NULL,
  `SAU` VARCHAR(255) NULL,
  `Commune_ID_Commune` INT NOT NULL,
  `Salarier_ID_Salarier` INT NOT NULL,
  PRIMARY KEY (`ID_Exploitation`),
  INDEX `fk_Exploitation_Commune1_idx` (`Commune_ID_Commune` ASC) VISIBLE,
  INDEX `fk_Exploitation_Salarier1_idx` (`Salarier_ID_Salarier` ASC) VISIBLE,
  CONSTRAINT `fk_Exploitation_Commune1`
    FOREIGN KEY (`Commune_ID_Commune`)
    REFERENCES `mydb`.`Commune` (`ID_Commune`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Exploitation_Salarier1`
    FOREIGN KEY (`Salarier_ID_Salarier`)
    REFERENCES `mydb`.`Salarier` (`ID_Salarier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
