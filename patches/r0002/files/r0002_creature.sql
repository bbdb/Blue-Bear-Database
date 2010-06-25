-- Steelforged Defender
SET @stfdf1 :=33236;
SET @stfdf2 :=33572;
SET @stfdf3 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@stfdf1);
SET @stfdf4 :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@stfdf1);
SET @stfdf5 :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@stfdf1);
SET @stfdf6 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@stfdf2);
SET @stfdf7 :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@stfdf2);
SET @stfdf8 :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@stfdf2);
UPDATE `creature` SET `spawntimesecs`=6000 WHERE `id` IN 
(
@stfdf1,
@stfdf2,
@stfdf3,
@stfdf4,
@stfdf5,
@stfdf6,
@stfdf7,
@stfdf8
);

-- Commander Stoutbeard[A],Commander Kolurg[H](I think, rewrite needed)
DELETE FROM `creature` WHERE `id` IN (29796,26798);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(26796,576,2,64,0,0,25.4,185.827,-35.0195,3.41809,43200,0,0,337025,0,0,0),
(26798,576,2,128,0,0,425.4,185.827,-35.0195,3.41809,43200,0,0,337025,0,0,0);

-- Warlord Tartek, Lightingcaller Soo-met spawn
DELETE FROM `creature` WHERE `id` IN (28105,28107);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`)VALUES
(28105,571,1,1,0,0,6716.58,5121.55,-18.154,3.81511,120,0,0,11379,0,0,0),
(28107,571,1,1,0,0,5040.47,5502.82,-88.4046,1.53287,1200,0,0,117700,3809,0,0);

-- Boneguard Commander spawn and addon
SET @GUID :=251729;
DELETE FROM `creature` WHERE `id`=34127;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(@GUID,34127,571,1,1,0,0,6217.24,2204.31,500.648,0.917664,60,0,0,250000,0,0,0),
(@GUID+1,34127,571,1,1,0,0,6343.7,2250.91,481.037,4.53681,60,0,0,250000,0,0,0),
(@GUID+2,34127,571,1,1,0,0,6201.27,2282.36,495.555,0.652198,60,0,0,250000,0,0,0),
(@GUID+3,34127,571,1,1,0,0,6204.52,2252.57,498.021,0.322331,60,0,0,250000,0,0,0),
(@GUID+4,34127,571,1,1,0,0,6235.01,2109.07,508.832,0.594078,60,0,0,250000,0,0,0);
DELETE FROM `creature_addon` WHERE `guid` IN (@GUID,@GUID+1,@GUID+2,@GUID+3,@GUID+4);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`auras`) VALUES
(@GUID,0,25280,'59942 0'),
(@GUID+1,0,25280,'59942 0'),
(@GUID+2,0,25280,'59942 0'),
(@GUID+3,0,25280,'59942 0'),
(@GUID+4,0,25280,'59942 0');

-- NPC spawn for A'dal quests - see r001_quest_template.sql
DELETE FROM `creature` WHERE `id`=19684; 
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(19684,530,1,1,0,0,-1834.76,5355.98,-12.3448,5.65487,2275,0,0,7097,0,0,0);