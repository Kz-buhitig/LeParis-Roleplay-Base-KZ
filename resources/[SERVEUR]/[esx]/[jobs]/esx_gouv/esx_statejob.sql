INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_state','State',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_state','State',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_state', 'State', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('state', 'Gouvernement', 1);


INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('state', 0, 'secretaire', 'Secrétaire', 0, '{}', '{}'),
('state', 3, 'garde', 'Garde du corps', 0, '{}', '{}'),
('state', 2, 'ministre', 'Ministre', 0, '{}', '{}'),
('state', 1, 'boss', 'Gouverneur', 0, '{}', '{}');