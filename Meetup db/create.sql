SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;


CREATE TABLE IF NOT EXISTS `mydb`.`Meetups` (
  `Id` INT NOT NULL,
  `Start` DATETIME NOT NULL,
  `Location` VARCHAR(50) NOT NULL,
  `Topic` VARCHAR(150) NOT NULL,
  `Description` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `mydb`.`Statuses` (
  `Id` INT NOT NULL,
  `Value` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS `mydb`.`Users` (
  `Id` INT NOT NULL,
  `Name` VARCHAR(100) NOT NULL,
  `BirthDate` DATETIME NOT NULL,
  `Introduction` VARCHAR(500) NULL,
  `Avatar` VARCHAR(1000) NULL,
  `Email` VARCHAR(150) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `mydb`.`MetetupRegistrations` (
  `Id` INT NOT NULL,
  `[ FK ] StatusId` INT NOT NULL,
  `[ FK ] MeetupId` INT NOT NULL,
  `[ FK ] UserId` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `StatusId_idx` (`[ FK ] StatusId` ASC),
  INDEX `MeetupId_idx` (`[ FK ] MeetupId` ASC),
  INDEX `UserId_idx` (`[ FK ] UserId` ASC),
  CONSTRAINT `StatusId`
    FOREIGN KEY (`[ FK ] StatusId`)
    REFERENCES `mydb`.`Statuses` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `MeetupId`
    FOREIGN KEY (`[ FK ] MeetupId`)
    REFERENCES `mydb`.`Meetups` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `UserId`
    FOREIGN KEY (`[ FK ] UserId`)
    REFERENCES `mydb`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
