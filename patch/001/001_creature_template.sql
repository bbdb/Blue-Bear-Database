/* 
BBDB Comment:
	~ This file needed if you use BBDB
	~ Run before you import "full_icc_boss_loot_support.sql"
	~ Need rewrite stats(/later/)
	~ TEMPORARY
*/

-- Sindragosa
SET @sind10h :=3775501;
SET @sind25n :=@sind10h+1;
SET @sind25h :=@sind10h+2;
DELETE FROM `creature_template` WHERE `entry` IN (@sind10h,@sind25n,@sind25h);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(@sind10h, 0, 0, 0, 0, 0, 30362, 0, 0, 0, 'Sindragosa (1)', 'Queen of the Frostbrood', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 261, 1, 0, 0, 0, '', 1),
(@sind25n, 0, 0, 0, 0, 0, 30362, 0, 0, 0, 'Sindragosa (2)', 'Queen of the Frostbrood', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 261, 1, 0, 0, 0, '', 1),
(@sind25h, 0, 0, 0, 0, 0, 30362, 0, 0, 0, 'Sindragosa (3)', 'Queen of the Frostbrood', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 261, 1, 0, 0, 0, '', 1);
UPDATE `creature_template` SET `difficulty_entry_1`=@sind25n,`difficulty_entry_2`=@sind10h,`difficulty_entry_3`=@sind25h WHERE `entry`=36853;
-- The Lich King
SET @lich10h :=3722601;
SET @lich25n :=@lich10h+1;
SET @lich25h :=@lich10h+2;
DELETE FROM `creature_template` WHERE `entry` IN (@lich10h,@lich25n,@lich25h);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(@lich10h, 0, 0, 0, 0, 0, 30721, 0, 0, 0, 'The Lich King (1)', '', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2000, 500, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 1),
(@lich25n, 0, 0, 0, 0, 0, 30721, 0, 0, 0, 'The Lich King (2)', '', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2000, 500, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 1),
(@lich25h, 0, 0, 0, 0, 0, 30721, 0, 0, 0, 'The Lich King (3)', '', '', 0, 83, 83, 2, 35, 35, 0, 1, 1.14286, 1, 3, 509, 683, 0, 805, 70, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 371, 535, 135, 6, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2000, 500, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 1);
UPDATE `creature_template` SET `difficulty_entry_1`=@lich25n,`difficulty_entry_2`=@lich10h,`difficulty_entry_3`=@lich25h WHERE `entry`=36597;