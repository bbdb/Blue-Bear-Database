-- Faction fix...
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry`=30043; -- Fiend of Earth

UPDATE `version` SET `db_version`='BBDB_0002_07292103';
