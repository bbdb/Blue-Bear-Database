-- Bug at Core Starting
ALTER TABLE `version` CHANGE COLUMN `core_revision` `core_revision` varchar(20);
UPDATE `version` SET `db_version`='BBDB_8375_0001';
