-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Types` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` VARCHAR(45) NOT NULL,
  `Type_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Types_Types1_idx` (`Type_ID` ASC) VISIBLE,
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC) VISIBLE,
  CONSTRAINT `fk_Types_Types1`
    FOREIGN KEY (`Type_ID`)
    REFERENCES `Types` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Users` (
  `User_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `DOB` DATE NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Height` INT NOT NULL,
  `Weight` DECIMAL(2) NOT NULL,
  `User_Type` INT NOT NULL,
  `Follows_ID` INT NULL,
  `Followers_ID` INT NULL,
  PRIMARY KEY (`User_ID`),
  INDEX `fk_Users_Types1_idx` (`User_Type` ASC) VISIBLE,
  CONSTRAINT `fk_Users_Types1`
    FOREIGN KEY (`User_Type`)
    REFERENCES `Types` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ContactInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ContactInfo` (
  `Contact_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Type` VARCHAR(45) NOT NULL,
  `Value` VARCHAR(45) NOT NULL,
  `Primary` BIT NOT NULL DEFAULT 0,
  `Spamable` BIT NOT NULL DEFAULT 0,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`Contact_ID`),
  INDEX `fk_ContactInfo_Users_idx` (`User_id` ASC) VISIBLE,
  INDEX `fk_ContactInfo_Type_idx` (`Type` ASC) VISIBLE,
  CONSTRAINT `fk_ContactInfo_Users`
    FOREIGN KEY (`User_id`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ContactInfo_Type`
    FOREIGN KEY (`Type`)
    REFERENCES `Types` (`Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Exercises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Exercises` (
  `Exercise_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Location` VARCHAR(100) NOT NULL,
  `Distance` DECIMAL(8) NOT NULL,
  `Duration` TIME NOT NULL,
  `CaloriesBurned` DECIMAL(10) NOT NULL,
  `ElevationGain` INT NULL,
  `Title` VARCHAR(45) NULL,
  `Text` VARCHAR(4000) NULL,
  `Privacy_indicator` INT NOT NULL COMMENT '0 - hidden\n1 - only me\n2 - only friends\n4 - public',
  `Exercise_Type` INT NOT NULL DEFAULT 'none',
  `Owner_id` INT NOT NULL,
  INDEX `fk_Exercise_Users_idx` (`Owner_id` ASC) VISIBLE,
  PRIMARY KEY (`Exercise_ID`),
  INDEX `fk_Exercise_Types_idx` (`Exercise_Type` ASC) VISIBLE,
  CONSTRAINT `fk_Exercise_Users`
    FOREIGN KEY (`Owner_id`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Exercise_Types`
    FOREIGN KEY (`Exercise_Type`)
    REFERENCES `Types` (`Type_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Comments` (
  `Comment_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Text` VARCHAR(4000) NULL,
  `Exercise_id` INT NOT NULL,
  `Owner_id` INT NOT NULL,
  PRIMARY KEY (`Comment_ID`),
  INDEX `fk_Comments_Exercises1_idx` (`Exercise_id` ASC) VISIBLE,
  INDEX `fk_Comments_Users1_idx` (`Owner_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comments_Exercises1`
    FOREIGN KEY (`Exercise_id`)
    REFERENCES `Exercises` (`Exercise_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comments_Users1`
    FOREIGN KEY (`Owner_id`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Likes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Likes` (
  `Like_ID` INT NOT NULL AUTO_INCREMENT,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Exercise_id` INT NOT NULL,
  `Owner_id` INT NOT NULL,
  PRIMARY KEY (`Like_ID`),
  INDEX `fk_Comments_Exercises1_idx` (`Exercise_id` ASC) VISIBLE,
  INDEX `fk_Comments_Users1_idx` (`Owner_id` ASC) VISIBLE,
  CONSTRAINT `fk_Likes_Exercises10`
    FOREIGN KEY (`Exercise_id`)
    REFERENCES `Exercises` (`Exercise_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Likes_Users10`
    FOREIGN KEY (`Owner_id`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Following`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Following` (
  `Following_ID` INT NOT NULL,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL,
  `User_ID` INT NOT NULL,
  `Requested` BIT NOT NULL,
  `Accepted` BIT NOT NULL,
  INDEX `fk_Following_User_idx` (`Following_ID` ASC) VISIBLE,
  PRIMARY KEY (`Following_ID`),
  INDEX `fk_The_User_Following_idx` (`User_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Users_isFollowing`
    FOREIGN KEY (`Following_ID`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_The_User_Following`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Followers_Of`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Followers_Of` (
  `Followers_Of_ID` INT NOT NULL,
  `Created` DATETIME NOT NULL,
  `Updated` TIMESTAMP NOT NULL,
  `User_ID` INT NOT NULL,
  `Requested` BIT NOT NULL,
  `Accepted` BIT NOT NULL,
  INDEX `fk_Followers_Of_User_idx` (`Followers_Of_ID` ASC) VISIBLE,
  PRIMARY KEY (`Followers_Of_ID`),
  INDEX `fk_User_Being_Followed_idx` (`User_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Followers_Of_User0`
    FOREIGN KEY (`Followers_Of_ID`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_Being_Followed0`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Users` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Types`
-- -----------------------------------------------------
START TRANSACTION;
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (1, 'Now()', DEFAULT, 'Types', 1);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (2, 'Now()', DEFAULT, 'User Types', 1);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (3, 'Now()', DEFAULT, 'Exercise Types', 1);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (4, 'Now()', DEFAULT, 'Contact Method Types', 1);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (5, 'Now()', DEFAULT, 'Admin', 2);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (6, 'Now()', DEFAULT, 'User', 2);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (7, 'Now()', DEFAULT, 'Run', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (8, 'Now()', DEFAULT, 'Walk', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (9, 'Now()', DEFAULT, 'Ride', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (10, 'Now()', DEFAULT, 'Swim', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (11, 'Now()', DEFAULT, 'Hike', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (12, 'Now()', DEFAULT, 'Skate', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (13, 'Now()', DEFAULT, 'Email', 4);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (14, 'Now()', DEFAULT, 'Cell Phone', 4);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (15, 'Now()', DEFAULT, 'Kayak/Canoe', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (16, 'Now()', DEFAULT, 'Rock Climb', 3);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (17, 'Now()', DEFAULT, 'City', 4);
INSERT INTO `Types` (`ID`, `Created`, `Updated`, `Name`, `Type_ID`) VALUES (18, 'Now()', DEFAULT, 'State', 4);

COMMIT;

