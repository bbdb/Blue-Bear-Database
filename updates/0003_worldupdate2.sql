/* ##########################
### creature_template.sql ###
########################## */

/* 
BBDB COMMENT:
	~ Faction FIX(es)
	~ Damage FIX(es)
	~ Flag FIX(es)
	~ Health/Mana/Armor FIX(es)
*/

-- Boneguard Commander fix
UPDATE `creature_template` SET `type_flags`=0,`flags_extra`=`flags_extra`&~128 WHERE `entry`=34127;
UPDATE `creature_template` SET `mindmg`=367,`maxdmg`=519,`attackpower`=481,`dmg_multiplier`=5,`baseattacktime`=2000 WHERE `entry`=34127;

-- Chillmaw and Cultist Bombardier fix
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` IN (33687,33695);

-- Gold loot(FoS,PoS,HoR)
UPDATE `creature_template` SET `mingold`=175114,`maxgold`=198111 WHERE `entry` IN (36840,31260,36893,36892,36877,36907,36830,36842,36896,36881,36661,36879,36891,37711,36841,36874,37713,37712,36788,36886);
UPDATE `creature_template` SET `mingold`=1751114,`maxgold`=1981111 WHERE `entry` IN (36658,36476,36494);

-- Pet corrections
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` IN
(416,417,510,1860,1863);

/* #################
### creature.sql ###
################# */

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

-- NPC spawn for A'dal quests 
DELETE FROM `creature` WHERE `id`=19684; 
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
(19684,530,1,1,0,0,-1834.76,5355.98,-12.3448,5.65487,2275,0,0,7097,0,0,0);

/* ###############################
### creature_loot_template.sql ###
############################### */

/*
BBDB COMMENT:
	~ Naxxramas trash loot removed ? Rewrited
	~ Ingvar the Plunderer Loot
	~ Black Pearl item
	~ Emblem of Triumph item
*/

-- Ingvar the Plunderer
SET @IngvarN :=23954;
SET @IngvarH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@IngvarN);
DELETE FROM `creature_loot_template` WHERE `entry`=@IngvarN;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@IngvarN,33330,-53,1,1,1),
(@IngvarN,35577,29,0,1,1),
(@IngvarN,35576,27,0,1,1),
(@IngvarN,35578,26,0,1,1),
(@IngvarN,43228,21,1,1,1),
(@IngvarN,33470,5,2,1,7),
(@IngvarN,33454,1.5,2,1,1),
(@IngvarN,33444,0.7,2,1,1),
(@IngvarN,22829,0.4,2,1,1);
DELETE FROM `creature_loot_template` WHERE `entry`=@IngvarH;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@IngvarH,47241,100,1,1,1),
(@IngvarH,43102,72,2,1,1),
(@IngvarH,43662,-26,1,1,1),
(@IngvarH,43228,24,2,1,4),
(@IngvarH,37194,21,0,1,1),
(@IngvarH,37190,21,0,1,1),
(@IngvarH,37188,21,0,1,1),
(@IngvarH,37186,21,0,1,1),
(@IngvarH,37192,20,0,1,1),
(@IngvarH,37191,20,0,1,1),
(@IngvarH,37193,20,0,1,1),
(@IngvarH,37189,20,0,1,1),
(@IngvarH,41793,9,0,1,1),
(@IngvarH,33470,6,3,1,7),
(@IngvarH,33330,-3,1,1,1),
(@IngvarH,43852,3,3,1,1),
(@IngvarH,33454,1.3,3,1,1),
(@IngvarH,33445,0.6,3,1,1),
(@IngvarH,34057,0.4,3,1,1),
(@IngvarH,34052,0.4,3,1,1),
(@IngvarH,33447,0.4,3,1,1);
UPDATE `creature_template` SET `lootid`=@IngvarN WHERE `entry`=@IngvarN;
UPDATE `creature_template` SET `lootid`=@IngvarH WHERE `entry`=@IngvarH;

-- Missing loot: Black Pearl
DELETE FROM `creature_loot_template` WHERE `item`=7971;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(750,7971,0.0036,0,1,1,0,0,0),
(751,7971,0.0113,0,1,1,0,0,0),
(752,7971,0.0061,0,1,1,0,0,0),
(979,7971,0.0092,0,1,1,0,0,0),
(1088,7971,0.0047,0,1,1,0,0,0),
(1491,7971,0.0384,0,1,1,0,0,0),
(1809,7971,0.041,0,1,1,0,0,0),
(2505,7971,0.0109,0,1,1,0,0,0),
(4374,7971,0.0722,0,1,1,0,0,0),
(4404,7971,0.0084,0,1,1,0,0,0),
(5332,7971,0.0067,0,1,1,0,0,0),
(5333,7971,0.0196,0,1,1,0,0,0),
(5334,7971,0.0173,0,1,1,0,0,0),
(5335,7971,0.0069,0,1,1,0,0,0),
(5336,7971,0.0045,0,1,1,0,0,0),
(5337,7971,0.0068,0,1,1,0,0,0),
(5431,7971,0.0638,0,1,1,0,0,0),
(6109,7971,0.158,0,1,1,0,0,0),
(6135,7971,0.049,0,1,1,0,0,0),
(6137,7971,0.0107,0,1,1,0,0,0),
(6138,7971,0.0294,0,1,1,0,0,0),
(6190,7971,0.0088,0,1,1,0,0,0),
(6194,7971,0.0104,0,1,1,0,0,0),
(6195,7971,0.0072,0,1,1,0,0,0),
(6196,7971,0.0196,0,1,1,0,0,0),
(6348,7971,0.0152,0,1,1,0,0,0),
(6352,7971,0.0294,0,1,1,0,0,0),
(7864,7971,0.017,0,1,1,0,0,0),
(7977,7971,0.0175,0,1,1,0,0,0),
(8136,7971,0.0255,0,1,1,0,0,0),
(8304,7971,0.0923,0,1,1,0,0,0),
(8336,7971,0.0233,0,1,1,0,0,0),
(8408,7971,0.113,0,1,1,0,0,0),
(8716,7971,0.2817,0,1,1,0,0,0),
(12207,7971,0.0068,0,1,1,0,0,0),
(12397,7971,1.2048,0,1,1,0,0,0),
(12803,7971,0.3817,0,1,1,0,0,0),
(14123,7971,0.0262,0,1,1,0,0,0),
(14603,7971,0.0138,0,1,1,0,0,0),
(14638,7971,0.0046,0,1,1,0,0,0),
(15449,7971,14.2857,0,1,1,0,0,0),
(1563,7971,0.0016,0,1,1,0,0,0),
(5423,7971,0.0017,0,1,1,0,0,0),
(6116,7971,0.0022,0,1,1,0,0,0),
(5331,7971,0.0023,0,1,1,0,0,0),
(1907,7971,0.003,0,1,1,0,0,0);

-- Missing Emblem of Triumph
DELETE FROM `creature_loot_template` WHERE `entry` IN (364940,364760,366580,365020,364970) AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(364940,47241,100,1,1,1),
(364760,47241,100,1,1,1),
(366580,47241,100,1,1,1),
(365020,47241,100,1,1,1),
(364970,47241,100,1,1,1);

/* #######################
### quest_template.sql ###
####################### */

-- The Champion's Call!
UPDATE `quest_template` SET `NextQuestId`=12932 WHERE `entry`=12974;

-- Argent Tournament quest update
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN 
(13864,13861,13788,13682,13603,13666,13741,13746,13752,13757,13689,13688,13685,13684,13690,13592,13744,13749,13755,13760,13600,13669,13742,13747,13753,13758,13790,13793,13847,13851,13852,13854,13855,13625,13828,13837,13835,13789,13791,13667,13679,13616,13670,13743,13748,13754,13759,13665,13745,13750,13756,13761,13699,13713,13723,13724,13725,13714,13715,13716,13717,13718,13671,13672);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN 
(13863,13862,13812,13809,13673,13762,13768,13773,13778,13783,13691,13693,13696,13694,13695,13765,13771,13776,13781,13786,13674,13763,13769,13774,13779,13784,13811,13814,13856,13857,13858,13859,13860,13677,13829,13839,13838,13810,13813,13668,13680,13675,13764,13770,13775,13780,13785,13767,13772,13777,13782,13787,13726,13727,13728,13729,13731,13697,13719,13720,13721,13722,13676,13678);

-- Small fix in A'dal's quests
DELETE FROM `creature_questrelation` WHERE `id`=18481;
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(18481,10167),
(18481,10949),
(18481,10881),
(18481,10704),
(18481,13082),
(18481,10888),
(18481,13430),
(18481,10884),
(18481,10885),
(18481,10886);
DELETE FROM `creature_involvedrelation` WHERE `id`=18481;
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(18481,10102),
(18481,10210),
(18481,10708),
(18481,10781),
(18481,10882),
(18481,10704),
(18481,11007),
(18481,10280),
(18481,10948),
(18481,10883),
(18481,13081),
(18481,10888),
(18481,13430),
(18481,10884),
(18481,10885),
(18481,10886);

/* ######################
### item_template.sql ###
###################### */

-- Disenchanted items(missing) -- FoS,PoS,HoR items
UPDATE `item_template` SET `DisenchantID`=68 WHERE `entry` IN
(49792,
49785,
49790,
49797,
49799,
49788,
49796,
49789,
49794,
49791,
49783,
49784,
49786,
49787,
49795,
49798,
49800,
49793,
50211,
50207,
50203,
50212,
50209,
50197,
50206,
50214,
50196,
50213,
50198,
50191,
50169,
50208,
50215,
50210,
50193,
50194,
49808,
49811,
49823,
49852,
49806,
49802,
49820,
49824,
49805,
49807,
49854,
49818,
49825,
49855,
49804,
49821,
49812,
49813,
49822,
49803,
49810,
49816,
49817,
49826,
49819,
49853,
49801,
49809,
50266,
50271,
50228,
50270,
50265,
50263,
50264,
50273,
50262,
50269,
50272,
50285,
50235,
50229,
50230,
50283,
50259,
50286,
50268,
50284,
50234,
50233,
50227,
50267);

/* ###################
### gameobject.sql ###
################### */

-- Fjorn's Anvil
DELETE FROM `gameobject` WHERE `id`=192060;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimeSecs`) VALUES
(192060,571,1,7221.432129,-3646.263428,822.521362,2.481651,300);

/* ######################
### ERROR_CLEANUP.sql ###
###################### */

DELETE FROM `creature_addon` WHERE `guid` IN (70177,104990);
DELETE FROM `creature_loot_template` WHERE `entry`=1563;
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry` IN (15978,15979,15980,15981,16167,15974,15975,15976);
UPDATE `version` SET `db_version`='BBDB_0003_7300002';
