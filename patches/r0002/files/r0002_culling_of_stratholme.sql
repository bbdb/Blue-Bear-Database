/*
BBDB COMMENT:
	~ Some things tested
	~ Updated templates
*/


-- Arthas placed in front of Stratholme bridge
UPDATE `creature_template` SET `equipment_id`=1613 WHERE `entry`=31210;  
DELETE FROM `creature` WHERE `id`=26499;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(26499,595,3,0,0,1920.87,1287.12,142.935,6.25562,25,0,0,44100,7988,0,0);

-- Delete all bosses spawned in the instance
DELETE FROM `creature` WHERE `id` IN (26529,26530,26532,26533,27744);

-- Chest Normal and HC
UPDATE `gameobject_template` SET `flags`=4 WHERE `entry` in (190663,193597);
UPDATE `gameobject` SET `spawnMask`=1 WHERE `id`=190663;
DELETE from `gameobject` WHERE `id`=193597;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(193597,595,2,1,2288.35,1498.73,128.414,-0.994837,0,0,0,1,180,0,1);

-- Achievement Criteria Data Mal'Ganis
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (5887,6381,6432,6433,6434,6435,6808);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(5887,12,1,0),
(6381,12,0,0),
(6432,12,0,0),
(6433,12,0,0),
(6434,12,1,0),
(6435,12,0,0),
(6808,12,1,0);

-- Chromie
DELETE FROM `creature` WHERE `id`=27915;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(27915,595,1,1,0,235,1809.05,1283.91,142.579,4.01001,300,0,0,17010,0,0,0);

-- Dispelling Illusions Quest Fix
UPDATE `quest_template` SET `ReqSpellCast1`=49590 WHERE `entry`=13149;
UPDATE `quest_template` SET `ReqSourceCount1`=1 WHERE `entry`=13149;
UPDATE `quest_template` SET `ReqSourceCount2`=0 WHERE `entry`=13149;
UPDATE `quest_template` SET `ReqSourceId1`=37888 WHERE `entry`=13149;
UPDATE `quest_template` SET `ReqSourceId2`=0 WHERE `entry`=13149;

UPDATE `creature_template` SET `modelid1`=19595 WHERE `entry`=30996;
UPDATE `creature_template` SET `modelid3`=0 WHERE `entry`=30996;

-- Entrance and exit Fix
DELETE FROM areatrigger_teleport WHERE `id` IN ('5148','5150','5181');
INSERT INTO areatrigger_teleport (`id`, `name`, `access_id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(5181, 'Caverns Of Time, Culling of Stratholme (exit)', 5148, 1, -8756.87, -4459.29, -200.73, 1.32),
(5148, 'Caverns Of Time, Culling of Stratholme (exit)', 5148, 1, -8756.87, -4459.29, -200.73, 1.32),
(5150, 'Caverns Of Time, Culling of Stratholme (entrance)', 5150, 595, 1432.77, 553.44, 35.83, 5.08304);

-- Not Used Entrance Gameobject Delete
DELETE FROM gameobject WHERE guid = '17455';
DELETE FROM game_event_gameobject WHERE guid = '17455';
DELETE FROM gameobject WHERE guid = '17454';
DELETE FROM game_event_gameobject WHERE guid = '17454';

-- A Royal Escort Quest Fix
UPDATE `quest_template` SET `ReqCreatureOrGOid1`=26533 WHERE `entry`=13151;

-- THX SENSEY FROM DDB