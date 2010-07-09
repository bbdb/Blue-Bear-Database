DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5369,5423);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5369, 'at_RX_214_repair_o_matic_station'),
(5423, 'at_RX_214_repair_o_matic_station');

-- 8770_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName` = 'npc_thorims_hammer' WHERE `entry` =33365;
UPDATE `creature_template` SET `MovementType` =2, `ScriptName` = 'npc_mimirons_inferno' WHERE `entry` =33370;
UPDATE `creature_template` SET `ScriptName` = 'npc_hodirs_fury' WHERE `entry` =33312;
UPDATE `creature_template` SET `ScriptName` = 'npc_freyas_ward' WHERE `entry` =33367;
UPDATE `creature_template` SET `ScriptName` = 'npc_lorekeeper' WHERE `entry` =33686;
UPDATE `creature_template` SET `ScriptName` = 'npc_brann_bronzebeard' WHERE `entry` =33579;
UPDATE `creature_template` SET `ScriptName` = 'npc_freya_ward_summon' WHERE `entry` =34275;
UPDATE `creature_template` SET `ScriptName` = 'npc_mechanolift' WHERE `entry` =33214;
UPDATE `gameobject_template` SET `ScriptName` = 'go_ulduar_tower' WHERE `entry` =194375;
UPDATE `gameobject_template` SET `ScriptName` = 'go_ulduar_tower' WHERE `entry` =194371;
UPDATE `gameobject_template` SET `ScriptName` = 'go_ulduar_tower' WHERE `entry` =194370;
UPDATE `gameobject_template` SET `ScriptName` = 'go_ulduar_tower' WHERE `entry` =194377;

-- 8770_world_script_waypoints.sql
-- waypoint for mimron inferno
DELETE FROM `script_waypoint` WHERE `entry`=33370;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(33370, 1, 331.674, -68.6878, 409.804, 0, '0'),
(33370, 2, 274.578, -92.1829, 409.804, 0, '0'),
(33370, 3, 226.433, -66.6652, 409.793, 0, '0'),
(33370, 4, 206.092, -34.7447, 409.801, 0, '0'),
(33370, 5, 240.208, 1.10346, 409.802, 0, '0'),
(33370, 6, 337.199, 11.7051, 409.802, 0, '0');

-- 8816_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (45284,45297);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(45284,0.357,-1,-1,-1,'Shaman - LO Lightning Bolt'),
(45297,0.285,-1,-1,-1,'Shaman - LO Chain Lightning');

-- 8821_world_spell_dbc.sql
-- Add serverside spells place holders for future development
DELETE FROM `spell_dbc` WHERE `Id` IN (11202,25359,40145,45767,71098);
INSERT INTO `spell_dbc` (`Id`,`Comment`) VALUES
(11202, 'Item 3776 spellid_1 serverside spell'),
(25359, 'Item 21293 spellid_2 serverside spell'),
(40145, 'Quest 11000 RewSpellCast serverside spell'),
(45767, 'Quest 11670 RewSpellCast serverside spell'),
(71098, 'Quest 24451 RewSpellCast serverside spell');

-- 8836_world_spell_linked_spell.sql
-- Make the Ardent Defender heal (66235) trigger the visuals (66233)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66235;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (66235,66233,0, 'Ardent Defender Visuals');

-- 8842_World_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_stillpine_capitive' where `entry`=17375;
UPDATE `gameobject_template` SET `ScriptName`='go_stillpine_cage' WHERE `entry`=181714;

-- 8842_world_script_texts.sql
DELETE FROM script_texts where entry IN (-1000474, -1000475, -1000476);
INSERT INTO script_texts (`npc_entry`, `entry`, `content_default`, `type`, `language`, `comment`) VALUES
(17375, -1000474, '[Fulborg] The Stillpine furbolgs will not soon forget your bravery!', 0, 0, 'Stillpine Capitive free say text 1'),
(17375, -1000475, '[Fulborg] Thank you, $N', 0, 0, 'Stillpine Capitive free say text 2'),
(17375, -1000476, '[Fulborg] Those remaining at Stillpine Hold will welcome you as a hero!', 0, 0, 'Stillpine Capitive free say text 3');

-- 8843_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_bristlelimb_cage' WHERE `entry`=181714;
