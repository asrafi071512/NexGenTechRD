
#Creae tabla client
CREATE TABLE `demo`.`client` (`id` INT NOT NULL AUTO_INCREMENT , 
`fullname` VARCHAR(255) NOT NULL , `phone` VARCHAR(255) NOT NULL , 
`address` TEXT NOT NULL , `application_date` VARCHAR(255) NOT NULL , 
`solicited_service` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB; 


\\Crear tabla User 
CREATE TABLE `demo`.`user` (`id` INT NOT NULL AUTO_INCREMENT , 
`user` VARCHAR(255) NOT NULL , 
`password` VARCHAR(255) NOT NULL , 
`rol` INT(3) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB; 

\\Crear Usuario administrador
INSERT INTO `user` (`id`, `user`, `password`, `rol`) VALUES (NULL, 'admin', '1234', '1');


\\Crear usuario de prueba
INSERT INTO `client` (`id`, `fullname`, `phone`, `address`, `application_date`, `solicited_service`) 
VALUES (NULL, 'Jose Reyes', '8090010203', 'Av. 27 de Febrero, Santo Domingo #454', '03/08/2023', 'Personal website');

