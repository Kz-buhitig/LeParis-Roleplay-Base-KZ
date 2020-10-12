INSERT INTO `addon_account` (name, label, shared) VALUES 

	('society_mano','mano',1)

;



INSERT INTO `datastore` (name, label, shared) VALUES 

	('society_mano','mano',1)

;



INSERT INTO `addon_inventory` (name, label, shared) VALUES 

	('society_mano', 'mano', 1)

;



INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES

('mano', 'mano', 1);



--

-- Déchargement des données de la table `jobs_grades`

--



INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES

('mano', 0, 'soldato', 'Golpeado', 150, '{}', '{}'),

('mano', 1, 'capo', 'Escuadrón', 180, '{}', '{}'),

('mano', 2, 'consigliere', 'Teniente', 210, '{}', '{}'),

('mano', 3, 'boss', 'El Chapo', 270, '{}', '{}');



CREATE TABLE `fine_types_mano` (

  

  `id` int(11) NOT NULL AUTO_INCREMENT,

  `label` varchar(255) DEFAULT NULL,

  `amount` int(11) DEFAULT NULL,

  `category` int(11) DEFAULT NULL,

  

  PRIMARY KEY (`id`)

);



INSERT INTO `fine_types_mano` (label, amount, category) VALUES 

	('Raket',300,0),

	('Raket',500,0),

	('Raket',1000,1),

	('Raket',2000,1),

	('Raket',5000,2),

	('Raket',15000,3),

	('Raket',35000,3)

;