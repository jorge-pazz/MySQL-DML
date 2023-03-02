-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema consultasMysql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema consultasMysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `consultasMysql` DEFAULT CHARACTER SET utf8 ;
USE `consultasMysql` ;

-- -----------------------------------------------------
-- Table `consultasMysql`.`tipos_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultasMysql`.`tipos_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `consultasMysql`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consultasMysql`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DECIMAL(8,2) NOT NULL,
  `id_tipo_produtos` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produtos` ASC),
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produtos`)
    REFERENCES `consultasMysql`.`tipos_produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
