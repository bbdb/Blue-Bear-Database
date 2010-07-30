ALTER TABLE `creature_template` 
	CHANGE `faction_A` `faction_A` varchar(5) NOT NULL DEFAULT '35',
	CHANGE `faction_H` `faction_H` varchar(5) NOT NULL DEFAULT '35';

UPDATE `version` SET `db_version`='BBDB_0014_07302054';
