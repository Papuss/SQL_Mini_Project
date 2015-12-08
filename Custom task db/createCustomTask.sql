CREATE TABLE IF NOT EXISTS `customtask`.`Badminton Location` (
  `ID` INT NOT NULL,
  `Location` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `customtask`.`Days` (
  `ID` INT NOT NULL,
  `Day` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `customtask`.`Badminton Appointments` (
  `ID` INT NOT NULL,
  `Start` DATETIME NOT NULL,
  `End` DATETIME NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `customtask`.`Players` (
  `ID` INT NOT NULL,
  `Number` INT NOT NULL,
  `Have own rackets` TINYINT(1) NOT NULL,
  `Court needed` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `customtask`.`Game Registrations` (
  `ID` INT NOT NULL,
  `Location ID` INT NOT NULL,
  `Days ID` INT NOT NULL,
  `Badminton Appointments ID` INT NOT NULL,
  `Players ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `Location ID_idx` (`Location ID` ASC),
  INDEX `Days ID_idx` (`Days ID` ASC),
  INDEX `Badminton Appointments_idx` (`Badminton Appointments ID` ASC),
  INDEX `Players ID_idx` (`Players ID` ASC),
  CONSTRAINT `Location ID`
    FOREIGN KEY (`Location ID`)
    REFERENCES `customtask`.`Badminton Location` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Days ID`
    FOREIGN KEY (`Days ID`)
    REFERENCES `customtask`.`Days` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Badminton Appointments`
    FOREIGN KEY (`Badminton Appointments ID`)
    REFERENCES `customtask`.`Badminton Appointments` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Players ID`
    FOREIGN KEY (`Players ID`)
    REFERENCES `customtask`.`Players` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
