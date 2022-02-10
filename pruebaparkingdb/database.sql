CREATE DATABASE `pruebaparkingdb`;
CREATE TABLE `pruebaparkingdb`.`users` ( 
	`id` INT NOT NULL AUTO_INCREMENT ,  
	`Name` VARCHAR(50) NOT NULL ,  
	`Email` VARCHAR(100) NOT NULL ,  
	`PhoneNumber` VARCHAR(15) NOT NULL ,  
	`UserType` VARCHAR(11) NOT NULL ,    
	PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

CREATE TABLE `pruebaparkingdb`.`students` ( 
	`id` INT NOT NULL AUTO_INCREMENT ,  
	`studentNumber` VARCHAR(50) NOT NULL ,  
	`averageMark` FLOAT NOT NULL ,  
	`user_id` INT NOT NULL ,    
	PRIMARY KEY  (`id`),
	FOREIGN KEY (`user_id`) REFERENCES Users(`id`)
) ENGINE = InnoDB;

CREATE TABLE `pruebaparkingdb`.`professors` ( 
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `salary` INT NOT NULL ,  
    `user_id` INT NOT NULL ,    
    PRIMARY KEY  (`id`),
    FOREIGN KEY(`user_id`) REFERENCES users(`id`)
) ENGINE = InnoDB;

CREATE TABLE `pruebaparkingdb`.`addresses` ( 
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `street` VARCHAR(100) NOT NULL ,  
    `city` VARCHAR(50) NOT NULL ,
    `state` VARCHAR(50) NOT NULL ,
    `postalCode` INT NOT NULL ,
    `country` VARCHAR(50) NOT NULL ,
    PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

CREATE TABLE `pruebaparkingdb`.`carParks` ( 
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `number` INT NOT NULL ,  
    `place` VARCHAR(50) NOT NULL ,
    `is_occupied` BOOLEAN NOT NULL ,
    `ownersEmail` VARCHAR(100) NOT NULL ,
    PRIMARY KEY  (`id`),
    FOREIGN KEY(`ownersEmail`) REFERENCES users(`email`)
) ENGINE = InnoDB;