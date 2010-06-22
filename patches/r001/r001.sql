# ######################################################################### #
# ###################### BLUE BEAR DATABASE r001 ########################## #
# ######################################################################### #

/* ################################
### 8312_to_8375_worldpatch.sql ###
################################ */

-- 8312_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (71519,71562);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES
(71519, 105),
(71562, 105);

-- 8313_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 25997;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (25997, 0, 0, 0, 0, 'Paladin - Eye for an Eye');

-- 8315_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 20267;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (20267, 0, 0, 0, 0, 'Paladin - Judgement of Light Proc');

-- 8316_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (59638, 59637);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(59638, 0.3, -1, 0, -1, 'Mage - Mirror Image Frostbolt'),
(59637, 0.3, -1, 0, -1, 'Mage - Mirror Image Fire Blast');

-- 8318_world_spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry`=59637;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (59637, 0.15, -1, 0, -1, 'Mage - Mirror Image Fire Blast');

-- 8319_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=50720;

-- 8327_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_colossus' WHERE `entry`=33237;

-- 8330_world_playercreateinfo_spell.sql
DELETE FROM `playercreateinfo_spell` WHERE `Spell`=75461;
INSERT INTO `playercreateinfo_spell` VALUES (0,7,75461,'Flame Shock Passive');

-- 8334_world_scriptname.sql
UPDATE `creature_template` SET `ScriptName`='npc_guardian_pavilion' WHERE `entry` IN (33543,33643);

-- 8348_world_scriptname.sql
-- Skadi Harpoon Launchers
UPDATE `gameobject_template` SET `ScriptName`='go_harpoon_launcher' WHERE `entry` IN (192175,192176,192177);

-- 8348_world_script_texts.sql
-- Skadi the Ruthless voice
DELETE FROM `script_texts` WHERE `npc_entry`=26693;
INSERT INTO `script_texts` VALUES 
(26693,-1575004, "What mongrels dare intrude here? Look alive, my brothers! A feast for the one that brings me their heads!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13497,1,0,0, "Skadi - SAY_AGGRO"),
(26693,-1575005, "Not so brash now, are you?" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13504,1,0,0, "Skadi - SAY_KILL_1"),
(26693,-1575006, "I'll mount your skull from the highest tower!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13505,1,0,0, "Skadi - SAY_KILL_2"),
(26693,-1575007, "%s in within range of the harpoon launchers!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, "Skadi - EMOTE_RANGE"),
(26693,-1575008, "ARGH! You call that... an attack? I'll... show... aghhhh..." ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13506,1,0,0, "Skadi - SAY_DEATH"),
(26693,-1575009, "%s in within range of the harpoon launchers!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, "Skadi - EMOTE_RANGE"),
(26693,-1575010, "You motherless knaves! Your corpses will make fine morsels for my new drake!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13507,1,0,0, "Skadi - SAY_DRAKE_DEATH"),
(26693,-1575011, "Sear them to the bone!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13498,1,0,0, "Skadi - SAY_DRAKE_BREATH_1"),
(26693,-1575012, "Go now! Leave nothing but ash in your wake!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13499,1,0,0, "Skadi - SAY_DRAKE_BREATH_2"),
(26693,-1575013, "Cleanse our sacred halls with flame!" ,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13500,1,0,0, "Skadi - SAY_DRAKE_BREATH_3");

-- 8352_world_scriptname.sql
UPDATE `gameobject_template` SET `ScriptName`='go_massive_seaforium_charge' WHERE `entry` = 190752;

-- 8352_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (52418, -52418);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(52415, 52418, 0, 'Carrying Seaforium - Add'),
(52410, -52418, 0, 'Carrying Seaforium - Remove');

-- 8358_world_spell_linked_spell.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (69381,69378,69377);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(69381, 72588, 1, 'Drums of the Wild'),
(69378, 72586, 1, 'Drums of the Forgotten Kings'),
(69377, 72590, 1, 'Runescroll of Fortitude');

-- 8361_world_trinity_string.sql
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 10056 AND 10073;
INSERT INTO `trinity_string` VALUES
(10056,'The battle for Strand of the Ancients begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10057,'The battle for Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10058,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10059,'Let the battle for Strand of the Ancients begin!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10060,'The %s is under attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10061,'The %s was destroyed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10062,'Round 1 -  finished!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10063,'The Alliance captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10064,'The Horde captured the titan portal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10065,'Round 2 of the Battle for the Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10066,'Round 2 begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10067,'The chamber has been breached! The titan relic is vulnerable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10068,'The Alliance captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10069,'The Alliance captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10070,'The Alliance captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10071,'The Horde captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10072,'The Horde captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10073,'The Horde captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8371_world_Spell_bonus_data.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56131,56160,52725,55533);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(56131, 0, 0, 0, 0, 'Priest - Glyph of Dispel Magic'),
(56160, 0, 0, 0, 0, 'Priest - Glyph of Power Word: Shield'),
(52752, 0, 0, 0, 0, 'Ancestral Awakening'),
(55533, 0, 0, 0, 0, 'Shaman - Glyph of Healing Wave');

-- 8372_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (57870);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
( 57870, 0x00,   9, 0x00800000, 0x00000000, 0x00000000, 0x00040000, 0x00000000,   0,   0,   0); -- Glyph of Mend Pet

-- 8373_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (70807);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES 
( 70807,    0,  11, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0x00000000,   0, 100,   0); -- Item - Shaman T10 Restoration 2P Bonus

-- 8374_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (67667);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 67667, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000,   0,   0,  45); -- Item - Coliseum Healer Trinket 5men

-- 8375_world_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (67672,67670,67653);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
( 67672, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00800154, 0x00000000,   0,   0,  45), -- Item - Coliseum Melee Trinket 5men
( 67670, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,   0,   0,  45), -- Item - Coliseum Caster Trinket 5men
( 67653, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00400028, 0x00000000,   0,   0,  45); -- Item - Coliseum Tank Trinket 5men

/* ####################
### 001_version.sql ###
#################### */

-- Bug at Core Starting
ALTER TABLE `version` CHANGE COLUMN `core_revision` `core_revision` varchar(20);

/* ##########################
### 001_item_template.sql ###
########################## */

/*
BBDB COMMENT:
	~ Add following missing items:
		~ 50732 >> Bloodsurge, Kel'Thuzad's Blade of Agony 
		~ 50733 >> Fal'inrush, Defender of Quel'thalas
		~ 50735 >> Oathbinder, Charge of the Ranger-General
		~ 50736 >> Heaven's Fall, Kryss of a Thousand Lies		
		~ 50737 >> Havoc's Call, Blade of Lordaeron Kings
		~ 50738 >> Mithrios, Bronzebeard's Legacy		
		~ 51939 >> Tel'thas, Dagger of the Blood King
		~ 51940 >> Windrunner's Heartseeker
		~ 51942 >> Stormfury, Black Blade of the Betrayer
		~ 51945 >> Tainted Twig of Nordrassil 		
		~ 51947 >> Troggbane, Axe of the Frostborne King
	~ Rewrited	
*/

DELETE FROM `item_template` WHERE `entry` IN (50732,50733,50735,50736,50737,50738,51939,51940,51942,51945,51947);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `WDBVerified`) VALUES 
(50732, 2, 7, -1, 'Bloodsurge, Kel\'Thuzad\'s Blade of Agony', 64530, 4, 8, 0, 1, 1253042, 250608, 21, -1, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 32, 55, 7, 81, 5, 81, 36, 71, 45, 893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'This world will burn.', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 105, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 426, 0, 375, -95.8, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(50733, 2, 18, -1, 'Fal\'inrush, Defender of Quel\'thalas', 64371, 4, 8, 0, 1, 961388, 192277, 26, -1, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 66, 3, 62, 7, 62, 32, 41, 44, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 782, 1071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 2, 100, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Thalas\'din belore.', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 375, 56.69, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(50735, 2, 6, -1, 'Oathbinder, Charge of the Ranger-General', 64554, 4, 8, 0, 1, 1718038, 343607, 17, 32767, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 228, 3, 179, 7, 195, 32, 114, 44, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 991, 1487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'A grotesque skull now rests atop the blade. Etched in blood across the axe head is one word repeated ten times: SUFFER.', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 120, 0, 0, 0, 0, 2, 0, 8, 0, 4, 0, 3313, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(50736, 2, 15, -1, 'Heaven\'s Fall, Kryss of a Thousand Lies', 64997, 4, 8, 0, 1, 1248196, 249639, 13, 32767, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 111, 3, 76, 7, 84, 32, 48, 36, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 381, 572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'A lying tongue hates those it crushes, but a flattering mouth works ruin.', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 75, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2874, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(50737, 2, 0, -1, 'Havoc\'s Call, Blade of Lordaeron Kings', 64480, 4, 8, 0, 1, 1369323, 273864, 13, 32767, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 95, 3, 84, 7, 84, 32, 56, 36, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 481, 895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2600, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Let our enemies know that havoc calls and that with its song comes their end.', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 105, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(50738, 2, 4, -1, 'Mithrios, Bronzebeard\'s Legacy', 64313, 4, 8, 0, 1, 1262470, 252494, 13, -1, -1, 284, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 64, 7, 113, 12, 56, 14, 48, 37, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 296, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Beneath the Scourge corruption you are able to make out a faint inscription: ...cry with me in the unified voice that will resonate to the throne of the Lich King himself! FOR THE ALLIANCE AND FOR KHAZ MODAN!', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 105, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 104, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(51939, 2, 15, -1, 'Tel\'thas, Dagger of the Blood King', 64645, 4, 8, 0, 1, 1228245, 245649, 21, -1, -1, 271, 80, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 45, 791, 7, 53, 5, 66, 32, 49, 36, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 75, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 426, 0, 375, -91.6, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(51940, 2, 18, -1, 'Windrunner\'s Heartseeker', 64370, 4, 8, 0, 1, 892982, 178596, 26, -1, -1, 271, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 61, 3, 54, 7, 48, 32, 28, 44, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 682, 943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 2, 100, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 375, 44.96, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(51942, 2, 15, -1, 'Stormfury, Black Blade of the Betrayer', 65104, 4, 8, 0, 1, 1306447, 261289, 13, -1, -1, 271, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 3, 74, 38, 97, 7, 44, 32, 49, 37, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1800, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 75, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 90, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(51945, 2, 10, -1, 'Tainted Twig of Nordrassil', 64352, 4, 8, 0, 1, 1615882, 323176, 17, -1, -1, 271, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 38, 244, 3, 149, 7, 156, 32, 109, 44, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 597, 896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 120, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 3313, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723),
(51947, 2, 0, -1, 'Troggbane, Axe of the Frostborne King', 64485, 4, 8, 0, 1, 1283461, 256692, 13, -1, -1, 271, 80, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 5, 4, 66, 7, 111, 12, 36, 14, 39, 13, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267, 498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1600, 0, 0, 0, 1, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 105, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 104, 0, 375, 0, 0, 0, 0, '', 0, 0, 0, 0, 11723);

/* ##############################
### 001_creature_template.sql ###
############################## */

/* 
BBDB Comment:
	~ This file needed if you use BBDB
	~ Run before you import "full_icc_boss_loot_support.sql"
	~ Need rewrite stats(/later/)
	~ TEMPORARY
*/

-- Sindragosa
SET @sind10h :=3685301;
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

/* ##################################
### 001_icc_boss_loot_support.sql ###
################################## */

# ################################################## #
# ######### Icecrown Citadel Loot Template ######### #
# ################################################## #
#											// Made by ZOOMIKA

/* STATUS: 85% 
MISSING LOOTS: 
		~ Gunship Battle
		~ Deathbringer Saurfang
		~ Valithria Dreamwalker
		~ Trash

Anything else works fine :)		
		
*/

-- Lord Marrowgar
SET @lord10n :=36612;
SET @lord25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@lord10n);
SET @lord10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@lord10n);
SET @lord25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@lord10n);

-- Lady Deathwhisper
SET @lady10n :=36855;
SET @lady25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@lady10n);
SET @lady10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@lady10n);
SET @lady25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@lady10n);

-- Festergut
SET @fest10n :=36626;
SET @fest25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@fest10n);
SET @fest10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@fest10n);
SET @fest25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@fest10n);

-- Rotface
SET @rotf10n :=36627;
SET @rotf25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@rotf10n);
SET @rotf10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@rotf10n);
SET @rotf25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@rotf10n);

-- Professor Putricide
SET @prof10n :=36678;
SET @prof25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@prof10n);
SET @prof10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@prof10n);
SET @prof25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@prof10n);

-- Blood Prince Council (=>Prince Valanar)
SET @prin10n :=37970;
SET @prin25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@prin10n);
SET @prin10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@prin10n);
SET @prin25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@prin10n);

-- Blood-Queen Lana'thel
SET @lana10n :=37955;
SET @lana25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@lana10n);
SET @lana10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@lana10n);
SET @lana25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@lana10n);

-- Sindragosa
SET @sind10n :=36853;
SET @sind25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@sind10n);
SET @sind10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@sind10n);
SET @sind25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@sind10n);

-- The Lich King
SET @lich10n :=36597;
SET @lich25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@lich10n);
SET @lich10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@lich10n);
SET @lich25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@lich10n);

--
-- CREATURE_LOOT_TEMPLATE
--
DELETE FROM `creature_loot_template` WHERE `entry` IN (
@lord10n,@lord25n,@lord10h,@lord25h,
@lady10n,@lady25n,@lady10h,@lady25h,
@fest10n,@fest25n,@fest10h,@fest25h,
@rotf10n,@rotf25n,@rotf10h,@rotf25h,
@prof10n,@prof25n,@prof10h,@prof25h,
@prin10n,@prin25n,@prin10h,@prin25h,
@lana10n,@lana25n,@lana10h,@lana25h,
@vali10n,@vali25n,@vali10h,@vali25h,
@sind10n,@sind25n,@sind10h,@sind25h,
@lich10n,@lich25n,@lich10h,@lich25h
);

INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Lord Marrowgar(10N)
(@lord10n,50772,8,1,0,1,1,0,0,0), -- Ancient Skeletal Boots
(@lord10n,50759,8,1,0,1,1,0,0,0), -- Bone Warden's Splitter
(@lord10n,50760,8,1,0,1,1,0,0,0), -- Bonebreaker Scepter
(@lord10n,50761,15,1,0,1,1,0,0,0), -- Citadel Enforcer's Claymore
(@lord10n,50774,7,1,0,1,1,0,0,0), -- Coldwraith Bracers
(@lord10n,50773,8,1,0,1,1,0,0,0), -- Cord of the Patronizing Practitioner
(@lord10n,50775,7,1,0,1,1,0,0,0), -- Corrupted Silverplate Leggings
(@lord10n,50771,12,1,0,1,1,0,0,0), -- Frost Needle
(@lord10n,50762,7,1,0,1,1,0,0,0), -- Linked Scourge Vertebrae
(@lord10n,50763,5,1,0,1,1,0,0,0), -- Marrowgar's Scratching Choker
(@lord10n,50764,10,1,0,1,1,0,0,0), -- Shawl of Nerubian Silk
(@lord10n,50339,11,1,0,1,1,0,0,0), -- Sliver of Pure Ice
-- Lord Marrowgar(10H) 
(@lord10h,51931,0.5,1,0,1,1,0,0,0), -- Ancient Skeletal Boots
(@lord10h,51938,0.6,1,0,1,1,0,0,0), -- Bone Warden's Splitter
(@lord10h,51937,0.5,1,0,1,1,0,0,0), -- Bonebreaker Scepter
(@lord10h,51936,1.1,1,0,1,1,0,0,0), -- Citadel Enforcer's Claymore
(@lord10h,51929,0.5,1,0,1,1,0,0,0), -- Coldwraith Bracers
(@lord10h,51930,0.6,1,0,1,1,0,0,0), -- Cord of the Patronizing Practitioner
(@lord10h,51928,0.6,1,0,1,1,0,0,0), -- Corrupter Silverplate Leggings
(@lord10h,51932,0.9,1,0,1,1,0,0,0), -- Frost Needle
(@lord10h,51935,0.6,1,0,1,1,0,0,0), -- Linked Scourge Verebrae
(@lord10h,51934,0.4,1,0,1,1,0,0,0), -- Marrowgar's Scratching Choker
(@lord10h,51933,0.8,1,0,1,1,0,0,0), -- Shawl of Nerubian Silk
(@lord10h,50346,0.9,1,0,1,1,0,0,0), -- Sliver of Pure Ice
(@lord10h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lord Marrowgar(25N)
(@lord25n,50274,-2,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@lord25n,49949,8,1,0,1,1,0,0,0), -- Band of the Bone Colossus
(@lord25n,49975,9,1,0,1,1,0,0,0), -- Bone Sentinel's Amulet
(@lord25n,49960,6,1,0,1,1,0,0,0), -- Bracers of Dark Reckoning
(@lord25n,50415,12,1,0,1,1,0,0,0), -- Bryntroll, the Bone Arbiter
(@lord25n,49976,9,1,0,1,1,0,0,0), -- Bulwark of Smouldering Steel
(@lord25n,49978,8,1,0,1,1,0,0,0), -- Crushing Coldwraith Belt
(@lord25n,49950,6,1,0,1,1,0,0,0), -- Frostbitten Fur Boots
(@lord25n,49968,13,1,0,1,1,0,0,0), -- Frozen Bonespike
(@lord25n,49951,6,1,0,1,1,0,0,0), -- Gendarme's Cuirass
(@lord25n,49979,6,1,0,1,1,0,0,0), -- Handguards of Winter's Respite
(@lord25n,49964,6,1,0,1,1,0,0,0), -- Legguards of Lost Hope
(@lord25n,49977,11,1,0,1,1,0,0,0), -- Loop of the Endless Labyrinth
(@lord25n,49967,6,1,0,1,1,0,0,0), -- Marrowgar's Frigid Eye
(@lord25n,49980,5,1,0,1,1,0,0,0), -- Rusted Bonespike Pauldrons
(@lord25n,49952,6,1,0,1,1,0,0,0), -- Snowserpent Mail Helm
(@lord25n,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lord Marrowgar(25H) 
(@lord25h,50274,-2,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@lord25h,50604,0.7,1,0,1,1,0,0,0), -- Band of the Bone Colossus
(@lord25h,50609,0.8,1,0,1,1,0,0,0), -- Bone Sentinel's Amulet
(@lord25h,50611,0.5,1,0,1,1,0,0,0), -- Bracers of Dark Reckoning
(@lord25h,50709,1,1,0,1,1,0,0,0), -- Bryntroll, the Bone Arbiter
(@lord25h,50616,0.8,1,0,1,1,0,0,0), -- Bulwark of Smouldering Steel
(@lord25h,50613,0.7,1,0,1,1,0,0,0), -- Crushing Coldwraith Belt
(@lord25h,50607,0.6,1,0,1,1,0,0,0), -- Frostbitten Fur Boots
(@lord25h,50608,1.1,1,0,1,1,0,0,0), -- Frozen Bonespike
(@lord25h,50606,0.5,1,0,1,1,0,0,0), -- Gendarme's Cuirass
(@lord25h,50615,0.5,1,0,1,1,0,0,0), -- Handguards of Winter's Respite
(@lord25h,50612,0.5,1,0,1,1,0,0,0), -- Legguards of Lost Hope
(@lord25h,50614,0.9,1,0,1,1,0,0,0), -- Loop of the Endless Labyrinth
(@lord25h,50610,0.5,1,0,1,1,0,0,0), -- Marrowgar's Frigid Eye
(@lord25h,50617,0.5,1,0,1,1,0,0,0), -- Rusted Bonespike Pauldrons
(@lord25h,50605,0.5,1,0,1,1,0,0,0), -- Snowserpent Mail Helm
(@lord25h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite

-- Lady Deathwhisper(10N)
(@lady10n,50783,7,1,0,1,1,0,0,0), -- Boots of the Frozen Seed
(@lady10n,50785,7,1,0,1,1,0,0,0), -- Bracers of Dark Blessings
(@lady10n,50780,8,1,0,1,1,0,0,0), -- Chestguard of the Frigid Noose
(@lady10n,50784,7,1,0,1,1,0,0,0), -- Deathspeaker Disciple's Belt
(@lady10n,50779,8,1,0,1,1,0,0,0), -- Deathspeaker Zealot's Helm
(@lady10n,50786,7,1,0,1,1,0,0,0), -- Ghoul Commander's Cuirass
(@lady10n,50777,8,1,0,1,1,0,0,0), -- Handgrips of Frost and Sleet
(@lady10n,50776,11,1,0,1,1,0,0,0), -- Njorndar Bone Bow
(@lady10n,50781,14,1,0,1,1,0,0,0), -- Scourgelord's Baton
(@lady10n,50782,11,1,0,1,1,0,0,0), -- Sister's Handshrouds
(@lady10n,50778,8,1,0,1,1,0,0,0), -- Soulthief's Braided Belt
(@lady10n,50342,10,1,0,1,1,0,0,0), -- Whispering Fanged Skull
-- Lady Deathwhisper(10H)
(@lady10h,51920,0.5,1,0,1,1,0,0,0), -- Boots of the Frozen Seed
(@lady10h,51918,0.4,1,0,1,1,0,0,0), -- Bracers of Dark Blessings
(@lady10h,51923,0.5,1,0,1,1,0,0,0), -- Chestguard of the Frigid Noose
(@lady10h,51919,0.4,1,0,1,1,0,0,0), -- Deathspeaker Disciple's Belt
(@lady10h,51924,0.5,1,0,1,1,0,0,0), -- Deathspeaker Zealot's Helm
(@lady10h,51917,0.5,1,0,1,1,0,0,0), -- Ghoul Commander's Cuirass
(@lady10h,51926,0.5,1,0,1,1,0,0,0), -- Handgrips of Frost and Sleet
(@lady10h,51927,0.8,1,0,1,1,0,0,0), -- Njorndar Bone Bow
(@lady10h,51922,0.9,1,0,1,1,0,0,0), -- Scourgelord's Baton
(@lady10h,51921,0.8,1,0,1,1,0,0,0), -- Sister's Handshrouds
(@lady10h,51925,0.5,1,0,1,1,0,0,0), -- Soulthief's Braided Belt
(@lady10h,50343,0.8,1,0,1,1,0,0,0), -- Whispering Fanged Skull
(@lady10h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lady Deathwhisper(25N)
(@lady25n,50274,-1.7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lady25n,49989,8,1,0,1,1,0,0,0), -- Ahn'kahar Onyx Neckguard
(@lady25n,49983,8,1,0,1,1,0,0,0), -- Blood-Soaked Saronite Stompers
(@lady25n,49986,5,1,0,1,1,0,0,0), -- Broken Ram Skull Helm
(@lady25n,49987,8,1,0,1,1,0,0,0), -- Cultist's Bloodsoaked Spaulders
(@lady25n,49996,6,1,0,1,1,0,0,0), -- Deathwhisper Raiment
(@lady25n,49995,6,1,0,1,1,0,0,0), -- Fallen Lord's Handguards
(@lady25n,49982,8,1,0,1,1,0,0,0), -- Heartpierce
(@lady25n,49985,5,1,0,1,1,0,0,0), -- Juggernaut Band
(@lady25n,49988,8,1,0,1,1,0,0,0), -- Leggings of Northern Lights
(@lady25n,49993,6,1,0,1,1,0,0,0), -- Necrophotic Greaves
(@lady25n,49992,13,1,0,1,1,0,0,0), -- Nibelung
(@lady25n,49990,8,1,0,1,1,0,0,0), -- Ring of Maddening Whispers
(@lady25n,49991,8,1,0,1,1,0,0,0), -- Shoulders of Mercy Killing
(@lady25n,49994,9,1,0,1,1,0,0,0), -- The Lady's Brittle Bracers
(@lady25n,50034,12,1,0,1,1,0,0,0), -- Zod's Repeating Longbow
(@lady25n,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lady Deathwhisper(25H) 
(@lady25h,50274,-1.7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lady25h,50647,0.4,1,0,1,1,0,0,0), -- Ahn'kahar Onyx Neckguard
(@lady25h,50639,0.3,1,0,1,1,0,0,0), -- Blood-Soaked Saronite Stompers
(@lady25h,50640,0.2,1,0,1,1,0,0,0), -- Broken Ram Skull Helm
(@lady25h,50646,0.3,1,0,1,1,0,0,0), -- Cultist's Bloodsoaked Spaulders
(@lady25h,50649,0.3,1,0,1,1,0,0,0), -- Deathwhisper Raiment
(@lady25h,50650,0.2,1,0,1,1,0,0,0), -- Fallen Lord's Handguards
(@lady25h,50641,0.4,1,0,1,1,0,0,0), -- Heartpierce
(@lady25h,50642,0.2,1,0,1,1,0,0,0), -- Juggernaut Band
(@lady25h,50645,0.3,1,0,1,1,0,0,0), -- Leggings of Northern Lights
(@lady25h,50652,0.2,1,0,1,1,0,0,0), -- Necrophotic Greaves
(@lady25h,50648,0.5,1,0,1,1,0,0,0), -- Nibelung
(@lady25h,50644,0.4,1,0,1,1,0,0,0), -- Ring of Maddening Whispers
(@lady25h,50643,0.3,1,0,1,1,0,0,0), -- Shoulders of Mercy Killing
(@lady25h,50651,0.4,1,0,1,1,0,0,0), -- The Lady's Brittle Bracers
(@lady25h,50638,0.5,1,0,1,1,0,0,0), -- Zod's Repeating Longbow
(@lady25h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite

-- Festergut(10N)
(@fest10n,50966,16,1,0,1,1,0,0,0), -- Abracadaver
(@fest10n,50988,7,1,0,1,1,0,0,0), -- Bloodstained Surgeon's Shoulderguards
(@fest10n,50859,5,1,0,1,1,0,0,0), -- Cloak of Many Skins
(@fest10n,50967,7,1,0,1,1,0,0,0), -- Festergut's Gaseous Gloves
(@fest10n,50811,9,1,0,1,1,0,0,0), -- Festering Fingerguards
(@fest10n,50810,13,1,0,1,1,0,0,0), -- Gutbuster
(@fest10n,50990,11,1,0,1,1,0,0,0), -- Kilt of Untreated Wounds
(@fest10n,50858,9,1,0,1,1,0,0,0), -- Plague-Soaked Leather Leggings
(@fest10n,50852,11,1,0,1,1,0,0,0), -- Precious's Putrid Collar
(@fest10n,50986,7,1,0,1,1,0,0,0), -- Signet of Putrefaction
(@fest10n,50812,8,1,0,1,1,0,0,0), -- Taldron's Long Neglected Boots
(@fest10n,50985,7,1,0,1,1,0,0,0), -- Wrists of Septic Shock
-- Festergut(10H) 
(@fest10h,51887,1.4,1,0,1,1,0,0,0), -- Abracadaver
(@fest10h,51883,0.6,1,0,1,1,0,0,0), -- Bloodstained Surgeon's Shoulderguards
(@fest10h,51888,0.4,1,0,1,1,0,0,0), -- Cloak of Many Skins
(@fest10h,51886,0.7,1,0,1,1,0,0,0), -- Festergut's Gaseous Gloves
(@fest10h,51892,0.8,1,0,1,1,0,0,0), -- Festering Fingerguards
(@fest10h,51893,1.1,1,0,1,1,0,0,0), -- Gutbuster
(@fest10h,51882,0.9,1,0,1,1,0,0,0), -- Kilt of Untreated Wounds
(@fest10h,51889,0.8,1,0,1,1,0,0,0), -- Plague-Soaked Leather Leggings
(@fest10h,51890,1,1,0,1,1,0,0,0), -- Precious's Putrid Collar
(@fest10h,51884,0.7,1,0,1,1,0,0,0), -- Signet of Putrefaction
(@fest10h,51891,0.8,1,0,1,1,0,0,0), -- Taldron's Long Neglected Boots
(@fest10h,51885,0.6,1,0,1,1,0,0,0), -- Wrists of Septic Shock
(@fest10h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Festergut(25N)
(@fest25n,50274,-3,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@fest25n,50036,4,1,0,1,1,0,0,0), -- Belt of Broken Bones
(@fest25n,50035,6,1,0,1,1,0,0,0), -- Black Bruise
(@fest25n,50038,6,1,0,1,1,0,0,0), -- Carapace of Forgotten Kings
(@fest25n,50040,10,1,0,1,1,0,0,0), -- Distant Land
(@fest25n,50060,6,1,0,1,1,0,0,0), -- Faceplate of the Forgotten
(@fest25n,50226,-37,1,0,1,1,0,0,0), -- Festergut's Acidic Blood
(@fest25n,50037,6,1,0,1,1,0,0,0), -- Fleshrending Gauntlets
(@fest25n,50042,7,1,0,1,1,0,0,0), -- Gangrenous Leggings
(@fest25n,50061,6,1,0,1,1,0,0,0), -- Holiday's Grace
(@fest25n,50059,5,1,0,1,1,0,0,0), -- Horrific Flesh Epaulets
(@fest25n,50041,5,1,0,1,1,0,0,0), -- Leather of Stitched Scourge Parts
(@fest25n,50063,6,1,0,1,1,0,0,0), -- Lingering Illness
(@fest25n,50414,6,1,0,1,1,0,0,0), -- Might of Blight
(@fest25n,50413,6,1,0,1,1,0,0,0), -- Nerub'ar Stalker's Cord
(@fest25n,50062,9,1,0,1,1,0,0,0), -- Plague Scientist's Boots
(@fest25n,50056,7,1,0,1,1,0,0,0), -- Plaguebringer's Stained Pants
(@fest25n,50064,6,1,0,1,1,0,0,0), -- Unclean Surgical Gloves
(@fest25n,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Festergut(25H) 
(@fest25h,50274,-3,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@fest25h,50691,0.5,1,0,1,1,0,0,0), -- Belt of Broken Bones
(@fest25h,50692,0.9,1,0,1,1,0,0,0), -- Black Bruise
(@fest25h,50689,0.8,1,0,1,1,0,0,0), -- Carapace of Forgotten Kings
(@fest25h,50695,1.4,1,0,1,1,0,0,0), -- Distant Land
(@fest25h,50701,0.9,1,0,1,1,0,0,0), -- Faceplate of the Forgotten
(@fest25h,50226,-37,1,0,1,1,0,0,0), -- Festergut's Acidic Blood
(@fest25h,50690,0.8,1,0,1,1,0,0,0), -- Fleshrending Gauntlets
(@fest25h,50697,1,1,0,1,1,0,0,0), -- Gangrenous Leggings
(@fest25h,50700,1,1,0,1,1,0,0,0), -- Holiday's Grace
(@fest25h,50698,0.7,1,0,1,1,0,0,0), -- Horrific Flesh Epaulets
(@fest25h,50696,0.6,1,0,1,1,0,0,0), -- Leather of Stitched Scourge Parts
(@fest25h,50702,0.8,1,0,1,1,0,0,0), -- Lingering Illness
(@fest25h,50693,0.8,1,0,1,1,0,0,0), -- Might of Blight
(@fest25h,50688,0.8,1,0,1,1,0,0,0), -- Nerub'ar Stalker's Cord
(@fest25h,50699,1.2,1,0,1,1,0,0,0), -- Plague Scientist's Boots
(@fest25h,50694,1,1,0,1,1,0,0,0), -- Plaguebringer's Stained Pants
(@fest25h,50703,0.8,1,0,1,1,0,0,0), -- Unclean Surgical Gloves
(@fest25h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite

-- Rotface(10N)
(@rotf10n,51003,8,1,0,1,1,0,0,0), -- Abomination Knuckles
(@rotf10n,51009,6,1,0,1,1,0,0,0), -- Chestguard of the Failed Experiment
(@rotf10n,51008,6,1,0,1,1,0,0,0), -- Choker of Filthy Diamonds
(@rotf10n,51007,10,1,0,1,1,0,0,0), -- Ether-Soaked Bracers
(@rotf10n,51000,8,1,0,1,1,0,0,0), -- Flesh-Shaper's Gurney Strap
(@rotf10n,51005,7,1,0,1,1,0,0,0), -- Gloves of Broken Fingers
(@rotf10n,50999,7,1,0,1,1,0,0,0), -- Gluth's Fetching Knife
(@rotf10n,51004,15,1,0,1,1,0,0,0), -- Lockjaw
(@rotf10n,51001,7,1,0,1,1,0,0,0), -- Rotface's Rupturing Ring
(@rotf10n,50998,11,1,0,1,1,0,0,0), -- Shaft of Glacial Ice
(@rotf10n,51006,7,1,0,1,1,0,0,0), -- Shuffling Shoes
(@rotf10n,51002,8,1,0,1,1,0,0,0), -- Taldron's Short-Sighted Helm
-- Rotface(10H) 
(@rotf10h,51876,0.9,1,0,1,1,0,0,0), -- Abomination Knuckles
(@rotf10h,51870,0.9,1,0,1,1,0,0,0), -- Chestguard of the Failed Experiment
(@rotf10h,51871,0.9,1,0,1,1,0,0,0), -- Choker of Filthy Diamonds
(@rotf10h,51872,1.1,1,0,1,1,0,0,0), -- Ether-Soaked Bracers
(@rotf10h,51879,0.9,1,0,1,1,0,0,0), -- Flesh-Shaper's Gurney Strap
(@rotf10h,51874,0.7,1,0,1,1,0,0,0), -- Gloves of Broken Fingers
(@rotf10h,51880,1,1,0,1,1,0,0,0), -- Gluth's Fetching Knife
(@rotf10h,51875,1.8,1,0,1,1,0,0,0), -- Lockjaw
(@rotf10h,51878,0.9,1,0,1,1,0,0,0), -- Rotface's Rupturing Ring
(@rotf10h,51881,1.5,1,0,1,1,0,0,0), -- Shaft of Glacial Ice
(@rotf10h,51873,0.8,1,0,1,1,0,0,0), -- Shuffling Shoes
(@rotf10h,51877,1,1,0,1,1,0,0,0), -- Taldron's Short-Sighted Helm
(@rotf10h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Rotface(25N)
(@rotf25n,50274,-4,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@rotf25n,50021,7,1,0,1,1,0,0,0), -- Aldriana's Gloves of Secrecy
(@rotf25n,50023,8,1,0,1,1,0,0,0), -- Bile-Encrusted Medallion
(@rotf25n,50024,5,1,0,1,1,0,0,0), -- Blightborne Warplate
(@rotf25n,50030,4,1,0,1,1,0,0,0), -- Bloodsunder's Bracers
(@rotf25n,50033,7,1,0,1,1,0,0,0), -- Corpse-Impaling Spike
(@rotf25n,50032,4,1,0,1,1,0,0,0), -- Death Surgeon's Sleeves
(@rotf25n,50353,9,1,0,1,1,0,0,0), -- Dislodged Foreign Object
(@rotf25n,50022,7,1,0,1,1,0,0,0), -- Dual-Bladed Pauldrons
(@rotf25n,50026,6,1,0,1,1,0,0,0), -- Helm of the Elder Moon 
(@rotf25n,50020,7,1,0,1,1,0,0,0), -- Raging Behemoth's Shoulderplates
(@rotf25n,50016,7,1,0,1,1,0,0,0), -- Rib Spreader
(@rotf25n,50231,-40,1,0,1,1,0,0,0), -- Rotface's Acidic Blood
(@rotf25n,50027,6,1,0,1,1,0,0,0), -- Rot-Resistant Breastplate
(@rotf25n,50025,11,1,0,1,1,0,0,0), -- Seal of Many Mouths
(@rotf25n,50028,11,1,0,1,1,0,0,0), -- Trauma
(@rotf25n,50019,7,1,0,1,1,0,0,0), -- Winding Sheet
(@rotf25n,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Rotface(25H) 
(@rotf25h,50274,-4,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@rotf25h,50675,1.2,1,0,1,1,0,0,0), -- Aldriana's Gloves of Secrecy
(@rotf25h,50682,1.4,1,0,1,1,0,0,0), -- Bile-Encrusted Medallion
(@rotf25h,50681,1,1,0,1,1,0,0,0), -- Blightborne Warplate
(@rotf25h,50687,0.9,1,0,1,1,0,0,0), -- Bloodsunder's Bracers
(@rotf25h,50684,0.9,1,0,1,1,0,0,0), -- Corpse-Impaling Spike
(@rotf25h,50686,0.7,1,0,1,1,0,0,0), -- Death Surgeon's Sleeves
(@rotf25h,50348,1.6,1,0,1,1,0,0,0), -- Dislodged Foreign Object
(@rotf25h,50673,1.3,1,0,1,1,0,0,0), -- Dual-Bladed Pauldrons
(@rotf25h,50679,1.1,1,0,1,1,0,0,0), -- Helm of the Elder Moon 
(@rotf25h,50674,1.2,1,0,1,1,0,0,0), -- Raging Behemoth's Shoulderplates
(@rotf25h,50676,1.3,1,0,1,1,0,0,0), -- Rib Spreader
(@rotf25h,50231,-40,1,0,1,1,0,0,0), -- Rotface's Acidic Blood
(@rotf25h,50680,1,1,0,1,1,0,0,0), -- Rot-Resistant Breastplate
(@rotf25h,50678,2,1,0,1,1,0,0,0), -- Seal of Many Mouths
(@rotf25h,50685,2,1,0,1,1,0,0,0), -- Trauma
(@rotf25h,50677,1.3,1,0,1,1,0,0,0), -- Winding Sheet
(@rotf25h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite

-- Professor Putricide(10N)
(@prof10n,51016,13,1,0,1,1,0,0,0), -- Pendant of Split Veins 
(@prof10n,51020,9,1,0,1,1,0,0,0), -- Shoulders of Ruinous Senility
(@prof10n,51017,9,1,0,1,1,0,0,0), -- Cauterized Cord
(@prof10n,51013,9,1,0,1,1,0,0,0), -- Discarded Bag of Entrails
(@prof10n,51014,9,1,0,1,1,0,0,0), -- Scalpel-Sharpening Shoulderguards
(@prof10n,50341,9,1,0,1,1,0,0,0), -- Unidentifiable Organ
(@prof10n,51011,9,1,0,1,1,0,0,0), -- Flesh-Carving Scalpel
(@prof10n,51012,8,1,0,1,1,0,0,0), -- Infected Choker
(@prof10n,51015,9,1,0,1,1,0,0,0), -- Shoulderpads of the Morbid Ritual
(@prof10n,51010,8,1,0,1,1,0,0,0), -- The Facelifter
(@prof10n,51018,6,1,0,1,1,0,0,0), -- Chestplate of Septic Stitches
(@prof10n,51019,6,1,0,1,1,0,0,0), -- Rippling Flesh Kilt
-- Professor Putricide(10H) 
(@prof10h,52025,29,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof10h,52027,23,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof10h,52026,23,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof10h,51863,0.7,1,0,1,1,0,0,0), -- Pendant of Split Veins 
(@prof10h,51859,0.7,1,0,1,1,0,0,0), -- Shoulders of Ruinous Senility
(@prof10h,51862,0.7,1,0,1,1,0,0,0), -- Cauterized Cord
(@prof10h,51866,0.6,1,0,1,1,0,0,0), -- Discarded Bag of Entrails
(@prof10h,51865,0.6,1,0,1,1,0,0,0), -- Scalpel-Sharpening Shoulderguards
(@prof10h,50344,0.6,1,0,1,1,0,0,0), -- Unidentifiable Organ
(@prof10h,51868,0.7,1,0,1,1,0,0,0), -- Flesh-Carving Scalpel
(@prof10h,51867,0.6,1,0,1,1,0,0,0), -- Infected Choker
(@prof10h,51864,0.6,1,0,1,1,0,0,0), -- Shoulderpads of the Morbid Ritual
(@prof10h,51869,0.5,1,0,1,1,0,0,0), -- The Facelifter
(@prof10h,51861,0.6,1,0,1,1,0,0,0), -- Chestplate of Septic Stitches
(@prof10h,51860,0.4,1,0,1,1,0,0,0), -- Rippling Flesh Kilt
(@prof10h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Professor Putricide(25N)
(@prof25n,50274,-6,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prof25n,50067,8,1,0,1,1,0,0,0), -- Astrylian's Sutured Cinch
(@prof25n,52027,23,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof25n,50179,7,1,0,1,1,0,0,0), -- Last Word
(@prof25n,50069,5,1,0,1,1,0,0,0), -- Professor's Bloodied Smock
(@prof25n,52026,23,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof25n,50068,7,1,0,1,1,0,0,0), -- Rigormortis
(@prof25n,50351,11,1,0,1,1,0,0,0), -- Tiny Abomination in a Jar
(@prof25n,52025,29,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof25n,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite
-- Professor Putricide(25H) 
(@prof25h,50274,-6,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prof25h,50707,0.6,1,0,1,1,0,0,0), -- Astrylian's Sutured Cinch
(@prof25h,52027,23,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof25h,52030,1,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@prof25h,50708,0.6,1,0,1,1,0,0,0), -- Last Word
(@prof25h,50705,0.4,1,0,1,1,0,0,0), -- Professor's Bloodied Smock
(@prof25h,52026,23,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof25h,52029,0.9,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@prof25h,50704,0.6,1,0,1,1,0,0,0), -- Rigormortis
(@prof25h,50706,0.9,1,0,1,1,0,0,0), -- Tiny Abomination in a Jar
(@prof25h,52025,29,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof25h,52028,1.3,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@prof25h,49908,10,1,1,1,1,0,0,0), -- Primordial Saronite

-- Prince Valanar(10N)
(@prin10n,51381,10,1,0,1,1,0,0,0), -- Cerise Coiled Ring
(@prin10n,51326,10,1,0,1,1,0,0,0), -- Wand of Ruby Claret
(@prin10n,51022,9,1,0,1,1,0,0,0), -- Hersir's Greatspear
(@prin10n,51021,6,1,0,1,1,0,0,0), -- Soulbreaker
(@prin10n,51023,6,1,0,1,1,0,0,0), -- Taldaram's Soft Slippers
(@prin10n,51024,6,1,0,1,1,0,0,0), -- Thrice Fanged Signet
(@prin10n,51025,6,1,0,1,1,0,0,0), -- Battle-Maiden's Legguards
(@prin10n,51325,6,1,0,1,1,0,0,0), -- Blood-Drinker's Girdle
(@prin10n,51379,5,1,0,1,1,0,0,0), -- Bloodsoul Raiment
(@prin10n,51380,5,1,0,1,1,0,0,0), -- Pale Corpse Boots
(@prin10n,51383,5,1,0,1,1,0,0,0), -- Spaulders of the Blood Princes
(@prin10n,51382,0.6,1,0,1,1,0,0,0), -- Heartsick Mender's Cape
-- Prince Valanar(10H) 
(@prin10h,51849,1.4,1,0,1,1,0,0,0), -- Cerise Coiled Ring
(@prin10h,51852,1.3,1,0,1,1,0,0,0), -- Wand of Ruby Claret
(@prin10h,51857,1.2,1,0,1,1,0,0,0), -- Hersir's Greatspear
(@prin10h,51858,0.9,1,0,1,1,0,0,0), -- Soulbreaker
(@prin10h,51856,0.8,1,0,1,1,0,0,0), -- Taldaram's Soft Slippers
(@prin10h,51855,0.7,1,0,1,1,0,0,0), -- Thrice Fanged Signet
(@prin10h,51854,0.7,1,0,1,1,0,0,0), -- Battle-Maiden's Legguards
(@prin10h,51853,0.8,1,0,1,1,0,0,0), -- Blood-Drinker's Girdle
(@prin10h,51851,0.7,1,0,1,1,0,0,0), -- Bloodsoul Raiment
(@prin10h,51850,0.6,1,0,1,1,0,0,0), -- Pale Corpse Boots
(@prin10h,51847,0.5,1,0,1,1,0,0,0), -- Spaulders of the Blood Princes
(@prin10h,51848,0.6,1,0,1,1,0,0,0), -- Heartsick Mender's Cape
(@prin10h,49908,12,1,1,1,1,0,0,0), -- Primordial Saronite
-- Prince Valanar(25N)
(@prin25n,50274,-6,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prin25n,50175,7,1,0,1,1,0,0,0), -- Crypt Keeper's Bracers
(@prin25n,49919,13,1,0,1,1,0,0,0), -- Cryptmaker
(@prin25n,50073,7,1,0,1,1,0,0,0), -- Geistlord's Punishment Sack
(@prin25n,50174,7,1,0,1,1,0,0,0), -- Incarnadine Band of Mending
(@prin25n,50184,7,1,0,1,1,0,0,0), -- Keleseth's Seducer
(@prin25n,50072,7,1,0,1,1,0,0,0), -- Landsoul's Horned Greathelm
(@prin25n,50177,7,1,0,1,1,0,0,0), -- Mail Crimson Coins
(@prin25n,50074,7,1,0,1,1,0,0,0), -- Royal Crimson Cloak
(@prin25n,50172,7,1,0,1,1,0,0,0), -- Sanguine Silk Robes
(@prin25n,50176,7,1,0,1,1,0,0,0), -- San'layn Ritualist Gloves
(@prin25n,50173,15,1,0,1,1,0,0,0), -- Shadow Silk Spindle
(@prin25n,50171,7,1,0,1,1,0,0,0), -- Shoulders of Frost-Tipped Thorns
(@prin25n,50075,7,1,0,1,1,0,0,0), -- Taldaram's Plated Fists
(@prin25n,50071,7,1,0,1,1,0,0,0), -- Treads of the Wasteland
(@prin25n,50170,14,1,0,1,1,0,0,0), -- Valanar's Other Signet Ring
(@prin25n,49908,12,1,1,1,1,0,0,0), -- Primordial Saronite
-- Prince Valanar(25H) 
(@prin25h,50274,-6,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prin25h,50721,1.6,1,0,1,1,0,0,0), -- Crypt Keeper's Bracers
(@prin25h,50603,3,1,0,1,1,0,0,0), -- Cryptmaker
(@prin25h,50713,1.2,1,0,1,1,0,0,0), -- Geistlord's Punishment Sack
(@prin25h,50720,1.7,1,0,1,1,0,0,0), -- Incarnadine Band of Mending
(@prin25h,50710,2,1,0,1,1,0,0,0), -- Keleseth's Seducer
(@prin25h,50712,1.7,1,0,1,1,0,0,0), -- Landsoul's Horned Greathelm
(@prin25h,50723,1.7,1,0,1,1,0,0,0), -- Mail Crimson Coins
(@prin25h,50718,1.6,1,0,1,1,0,0,0), -- Royal Crimson Cloak
(@prin25h,50717,1.8,1,0,1,1,0,0,0), -- Sanguine Silk Robes
(@prin25h,50722,1.3,1,0,1,1,0,0,0), -- San'layn Ritualist Gloves
(@prin25h,50719,3,1,0,1,1,0,0,0), -- Shadow Silk Spindle
(@prin25h,50715,1.6,1,0,1,1,0,0,0), -- Shoulders of Frost-Tipped Thorns
(@prin25h,50716,1.5,1,0,1,1,0,0,0), -- Taldaram's Plated Fists
(@prin25h,50711,1.6,1,0,1,1,0,0,0), -- Treads of the Wasteland
(@prin25h,50714,3,1,0,1,1,0,0,0), -- Valanar's Other Signet Ring
(@prin25h,49908,12,1,1,1,1,0,0,0), -- Primordial Saronite

-- Blood Queen Lana'thel(10N)
(@lana10n,51384,6,1,0,1,1,0,0,0), -- Bloodsipper
(@lana10n,51551,6,1,0,1,1,0,0,0), -- Chestguard of Siphoned Elements
(@lana10n,51548,6,1,0,1,1,0,0,0), -- Collar of Haughty Disdain
(@lana10n,51554,9,1,0,1,1,0,0,0), -- Cowl of Malefic Repose
(@lana10n,51550,6,1,0,1,1,0,0,0), -- Ivory-Inlaid Leggings
(@lana10n,51553,9,1,0,1,1,0,0,0), -- Lana'thel's Bloody Nail
(@lana10n,51387,8,1,0,1,1,0,0,0), -- Seal of the Twilight Queen
(@lana10n,51552,6,1,0,1,1,0,0,0), -- Shoulderpads of the Searing Kiss
(@lana10n,51385,9,1,0,1,1,0,0,0), -- Stakethrower
(@lana10n,51386,6,1,0,1,1,0,0,0), -- Throatrender Handguards
(@lana10n,51555,6,1,0,1,1,0,0,0), -- Tightening Waistband
(@lana10n,51556,6,1,0,1,1,0,0,0), -- Veincrusher Gauntlets
-- Blood Queen Lana'thel(10H) 
(@lana10h,51846,6,1,0,1,1,0,0,0), -- Bloodsipper
(@lana10h,51840,1.8,1,0,1,1,0,0,0), -- Chestguard of Siphoned Elements
(@lana10h,51842,2,1,0,1,1,0,0,0), -- Collar of Haughty Disdain
(@lana10h,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana10h,51837,3,1,0,1,1,0,0,0), -- Cowl of Malefic Repose
(@lana10h,51841,1.6,1,0,1,1,0,0,0), -- Ivory-Inlaid Leggings
(@lana10h,51838,2,1,0,1,1,0,0,0), -- Lana'thel's Bloody Nail
(@lana10h,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana10h,51843,2,1,0,1,1,0,0,0), -- Seal of the Twilight Queen
(@lana10h,51839,1.7,1,0,1,1,0,0,0), -- Shoulderpads of the Searing Kiss
(@lana10h,51845,3,1,0,1,1,0,0,0), -- Stakethrower
(@lana10h,51844,1.7,1,0,1,1,0,0,0), -- Throatrender Handguards
(@lana10h,51836,1.9,1,0,1,1,0,0,0), -- Tightening Waistband
(@lana10h,52025,33,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana10h,51835,1.6,1,0,1,1,0,0,0), -- Veincrusher Gauntlets
(@lana10h,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite
-- Blood Queen Lana'thel(25N)
(@lana25n,50274,-9,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lana25n,50354,4,1,0,1,1,0,0,0), -- Bauble of True Blood
(@lana25n,50182,6,1,0,1,1,0,0,0), -- Blood Queen's Crimson Choker
(@lana25n,50178,5,1,0,1,1,0,0,0), -- Bloodfall
(@lana25n,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana25n,50181,6,1,0,1,1,0,0,0), -- Dying Light
(@lana25n,50065,4,1,0,1,1,0,0,0), -- Icecrown Glacial Wall
(@lana25n,50180,4,1,0,1,1,0,0,0), -- Lana'thel's Chain of Flagellation
(@lana25n,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana25n,52025,33,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana25n,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite
-- Blood Queen Lana'thel(25H) 
(@lana25h,50274,-9,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lana25h,50726,2,1,0,1,1,0,0,0), -- Bauble of True Blood
(@lana25h,50724,3,1,0,1,1,0,0,0), -- Blood Queen's Crimson Choker
(@lana25h,50727,3,1,0,1,1,0,0,0), -- Bloodfall
(@lana25h,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana25h,52030,4,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@lana25h,50725,3,1,0,1,1,0,0,0), -- Dying Light
(@lana25h,50729,1.5,1,0,1,1,0,0,0), -- Icecrown Glacial Wall
(@lana25h,50728,2,1,0,1,1,0,0,0), -- Lana'thel's Chain of Flagellation
(@lana25h,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana25h,52029,4,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@lana25h,52025,33,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana25h,52028,6,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@lana25h,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite

-- Sindragosa(10N)
(@sind10n,51815,1.8,1,0,1,1,0,0,0), -- Bleak Coldarra Carver
(@sind10n,51782,6,1,0,1,1,0,0,0), -- Etched Dragonbone Girdle
(@sind10n,51789,6,1,0,1,1,0,0,0), -- Icicle Shapers
(@sind10n,51786,6,1,0,1,1,0,0,0), -- Legplates of Aetheric Strife
(@sind10n,51791,8,1,0,1,1,0,0,0), -- Lost Pavise of the Blue Flight
(@sind10n,51779,8,1,0,1,1,0,0,0), -- Rimetooth Pendant
(@sind10n,51790,8,1,0,1,1,0,0,0), -- Robes of Azure Downfall
(@sind10n,51787,4,1,0,1,1,0,0,0), -- Scourge Fanged Stompers
(@sind10n,51792,5,1,0,1,1,0,0,0), -- Shoulderguards of Crystalline Bone
(@sind10n,51784,8,1,0,1,1,0,0,0), -- Splintershard
(@sind10n,50423,8,1,0,1,1,0,0,0), -- Vambraces of the Frost Wyrm Queen
(@sind10n,51785,7,1,0,1,1,0,0,0), -- Wyrmwing Treads
(@sind10n,51026,-5,1,0,1,1,0,0,0), -- Crystalline Essence of Sindragosa
-- Sindragosa(10H)
(@sind10h,51815,1.8,1,0,1,1,0,0,0), -- Bleak Coldarra Carver
(@sind10h,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@sind10h,51821,1,1,0,1,1,0,0,0), -- Etched Dragonbone Girdle
(@sind10h,51814,1,1,0,1,1,0,0,0), -- Icicle Shapers
(@sind10h,51817,0.9,1,0,1,1,0,0,0), -- Legplates of Aetheric Strife
(@sind10h,51812,0.9,1,0,1,1,0,0,0), -- Lost Pavise of the Blue Flight
(@sind10h,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@sind10h,51822,1.1,1,0,1,1,0,0,0), -- Rimetooth Pendant
(@sind10h,51813,0.8,1,0,1,1,0,0,0), -- Robes of Azure Downfall
(@sind10h,51816,0.5,1,0,1,1,0,0,0), -- Scourge Fanged Stompers
(@sind10h,51811,0.8,1,0,1,1,0,0,0), -- Shoulderguards of Crystalline Bone
(@sind10h,51819,0.9,1,0,1,1,0,0,0), -- Splintershard
(@sind10h,51820,0.8,1,0,1,1,0,0,0), -- Vambraces of the Frost Wyrm Queen
(@sind10h,52025,35,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@sind10h,51818,1.1,1,0,1,1,0,0,0), -- Wyrmwing Treads
(@sind10h,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite
(@sind10h,51026,-5,1,1,1,1,0,0,0), -- Crystalline Essence of Sindragosa
-- Sindragosa(25N)
(@sind25n,50274,-10,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@sind25n,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@sind25n,50424,7,1,0,1,1,0,0,0), -- Memory of Malygos
(@sind25n,50360,10,1,0,1,1,0,0,0), -- Phylactery of the Nameless Lich
(@sind25n,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@sind25n,50421,10,1,0,1,1,0,0,0), -- Sindragosa's Cruel Claw
(@sind25n,50361,6,1,0,1,1,0,0,0), -- Sindragosa's Flawless Fang
(@sind25n,50423,8,1,0,1,1,0,0,0), -- Sundial of Eternal Dusk
(@sind25n,52025,35,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@sind25n,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite
(@sind25n,51026,-5,1,1,1,1,0,0,0), -- Crystalline Essence of Sindragosa
-- Sindragosa(25H)
(@sind25h,50274,-10,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@sind25h,52027,26,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@sind25h,52030,1.8,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@sind25h,50636,1.1,1,0,1,1,0,0,0), -- Memory of Malygos
(@sind25h,50365,1.1,1,0,1,1,0,0,0), -- Phylactery of the Nameless Lich
(@sind25h,52026,26,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@sind25h,52029,1.7,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@sind25h,50633,1.2,1,0,1,1,0,0,0), -- Sindragosa's Cruel Claw
(@sind25h,50364,1.2,1,0,1,1,0,0,0), -- Sindragosa's Flawless Fang
(@sind25h,50635,1,1,0,1,1,0,0,0), -- Sundial of Eternal Dusk
(@sind25h,52025,35,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@sind25h,52028,2,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@sind25h,49908,11,1,1,1,1,0,0,0), -- Primordial Saronite
(@sind25h,51026,-5,1,1,1,1,0,0,0), -- Crystalline Essence of Sindragosa

-- The Lich King(10N)
(@lich10n,49426,100,1,0,1,1,0,0,0), -- Emblem of Frost
(@lich10n,51799,8,1,0,1,1,0,0,0), -- Halion, Staff of Forgotten Love
(@lich10n,51801,5,1,0,1,1,0,0,0), -- Pugius, Fist of Defiance
(@lich10n,51800,5,1,0,1,1,0,0,0), -- Stormfury, Black Blade of the Betrayer
(@lich10n,51797,7,1,0,1,1,0,0,0), -- Tainted Twig of Nordrassil
(@lich10n,51803,7,1,0,1,1,0,0,0), -- Tel'thas, Dagger of the Blood King
(@lich10n,51795,5,1,0,1,1,0,0,0), -- Troggbane, Axe of the Frostborne King
(@lich10n,51798,8,1,0,1,1,0,0,0), -- Valius, Gavel of the Lightbringer
(@lich10n,51796,9,1,0,1,1,0,0,0), -- Warmace of Menethil
(@lich10n,51802,8,1,0,1,1,0,0,0), -- Windrunner's Heartseeker
-- The Lich King(10H)
(@lich10h,52027,31,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lich10h,49426,100,1,0,1,1,0,0,0), -- Emblem of Frost
(@lich10h,51943,0.2,1,0,1,1,0,0,0), -- Halion, Staff of Forgotten Love
(@lich10h,52026,33,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lich10h,51941,0.1,1,0,1,1,0,0,0), -- Pugius, Fist of Defiance
(@lich10h,51942,0.2,1,0,1,1,0,0,0), -- Stormfury, Black Blade of the Betrayer
(@lich10h,51945,0.1,1,0,1,1,0,0,0), -- Tainted Twig of Nordrassil
(@lich10h,51939,0.1,1,0,1,1,0,0,0), -- Tel'thas, Dagger of the Blood King
(@lich10h,51947,0.1,1,0,1,1,0,0,0), -- Troggbane, Axe of the Frostborne King
(@lich10h,51944,0.1,1,0,1,1,0,0,0), -- Valius, Gavel of the Lightbringer
(@lich10h,52025,40,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lich10h,51946,0.2,1,0,1,1,0,0,0), -- Warmace of Menethil
(@lich10h,51940,0.1,1,0,1,1,0,0,0), -- Windrunner's Heartseeker
(@lich10h,49908,13,1,1,1,1,0,0,0), -- Primordial Saronite
-- The Lich King(25N)
(@lich25n,50274,-18,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lich25n,50429,14,1,0,1,1,0,0,0), -- Archus, Greatstaff of Antonidas
(@lich25n,50427,9,1,0,1,1,0,0,0), -- Bloodsurge, Kel'Thuzad's Blade of Agony
(@lich25n,52027,31,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lich25n,49426,100,1,0,1,1,0,0,0), -- Emblem of Frost
(@lich25n,49981,16,1,0,1,1,0,0,0), -- Fal'inrush Defender of Quel'thalas
(@lich25n,50070,18,1,0,1,1,0,0,0), -- Glorenzelg, High-Blade of the Silver Hand
(@lich25n,50012,13,1,0,1,1,0,0,0), -- Havoc's Call, Blade of Lordaeron Kings
(@lich25n,50426,8,1,0,1,1,0,0,0), -- Heaven's Fall, Kryss of a Thousand Lies
(@lich25n,49997,9,1,0,1,1,0,0,0), -- Mithrios, Bronzebeard's Legacy
(@lich25n,50425,13,1,0,1,1,0,0,0), -- Oathbinder, Charge of the Ranger-General
(@lich25n,52026,33,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lich25n,50428,14,1,0,1,1,0,0,0), -- Royal Scepter of Terenas II
(@lich25n,52025,40,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lich25n,49908,13,1,1,1,1,0,0,0), -- Primordial Saronite
-- The Lich King(25H)
(@lich25h,50274,-18,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lich25h,50731,0.2,1,0,1,1,0,0,0), -- Archus, Greatstaff of Antonidas
(@lich25h,50732,0.1,1,0,1,1,0,0,0), -- Bloodsurge, Kel'Thuzad's Blade of Agony
(@lich25h,52027,31,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lich25h,52030,0.2,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@lich25h,49426,100,1,0,1,1,0,0,0), -- Emblem of Frost
(@lich25h,50733,0.1,1,0,1,1,0,0,0), -- Fal'inrush Defender of Quel'thalas
(@lich25h,50730,0.2,1,0,1,1,0,0,0), -- Glorenzelg, High-Blade of the Silver Hand
(@lich25h,50737,0.2,1,0,1,1,0,0,0), -- Havoc's Call, Blade of Lordaeron Kings
(@lich25h,50736,0.1,1,0,1,1,0,0,0), -- Heaven's Fall, Kryss of a Thousand Lies
(@lich25h,50818,0.6,1,0,1,1,0,0,0), -- Invincible's Reins
(@lich25h,50738,0.1,1,0,1,1,0,0,0), -- Mithrios, Bronzebeard's Legacy
(@lich25h,50735,0.1,1,0,1,1,0,0,0), -- Oathbinder, Charge of the Ranger-General
(@lich25h,52026,33,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lich25h,52029,0.2,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@lich25h,50734,0.1,1,0,1,1,0,0,0), -- Royal Scepter of Terenas II
(@lich25h,52025,40,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lich25h,52028,0.2,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@lich25h,49908,13,1,1,1,1,0,0,0); -- Primordial Saronite

/* LOOTID UPDATES */

-- Lord Marrowgar
UPDATE `creature_template` SET `lootid`=@lord10n WHERE `entry`=@lord10n;
UPDATE `creature_template` SET `lootid`=@lord10h WHERE `entry`=@lord10h;
UPDATE `creature_template` SET `lootid`=@lord25n WHERE `entry`=@lord25n;
UPDATE `creature_template` SET `lootid`=@lord25h WHERE `entry`=@lord25h;

-- Lady Deathwhisper
UPDATE `creature_template` SET `lootid`=@lady10n WHERE `entry`=@lady10n;
UPDATE `creature_template` SET `lootid`=@lady10h WHERE `entry`=@lady10h;
UPDATE `creature_template` SET `lootid`=@lady25n WHERE `entry`=@lady25n;
UPDATE `creature_template` SET `lootid`=@lady25h WHERE `entry`=@lady25h;

-- Festergut
UPDATE `creature_template` SET `lootid`=@fest10n WHERE `entry`=@fest10n;
UPDATE `creature_template` SET `lootid`=@fest10h WHERE `entry`=@fest10h;
UPDATE `creature_template` SET `lootid`=@fest25n WHERE `entry`=@fest25n;
UPDATE `creature_template` SET `lootid`=@fest25h WHERE `entry`=@fest25h;

-- Rotface
UPDATE `creature_template` SET `lootid`=@rotf10n WHERE `entry`=@rotf10n;
UPDATE `creature_template` SET `lootid`=@rotf10h WHERE `entry`=@rotf10h;
UPDATE `creature_template` SET `lootid`=@rotf25n WHERE `entry`=@rotf25n;
UPDATE `creature_template` SET `lootid`=@rotf25h WHERE `entry`=@rotf25h;

-- Professor Putricide
UPDATE `creature_template` SET `lootid`=@prof10n WHERE `entry`=@prof10n;
UPDATE `creature_template` SET `lootid`=@prof10h WHERE `entry`=@prof10h;
UPDATE `creature_template` SET `lootid`=@prof25n WHERE `entry`=@prof25n;
UPDATE `creature_template` SET `lootid`=@prof25h WHERE `entry`=@prof25h;

-- Blood Prince Council
UPDATE `creature_template` SET `lootid`=@prin10n WHERE `entry`=@prin10n;
UPDATE `creature_template` SET `lootid`=@prin10h WHERE `entry`=@prin10h;
UPDATE `creature_template` SET `lootid`=@prin25n WHERE `entry`=@prin25n;
UPDATE `creature_template` SET `lootid`=@prin25h WHERE `entry`=@prin25h;

-- Blood-Queen Lana'thel
UPDATE `creature_template` SET `lootid`=@lana10n WHERE `entry`=@lana10n;
UPDATE `creature_template` SET `lootid`=@lana10h WHERE `entry`=@lana10h;
UPDATE `creature_template` SET `lootid`=@lana25n WHERE `entry`=@lana25n;
UPDATE `creature_template` SET `lootid`=@lana25h WHERE `entry`=@lana25h;

-- Sindragosa
UPDATE `creature_template` SET `lootid`=@sind10n WHERE `entry`=@sind10n;
UPDATE `creature_template` SET `lootid`=@sind10h WHERE `entry`=@sind10h;
UPDATE `creature_template` SET `lootid`=@sind25n WHERE `entry`=@sind25n;
UPDATE `creature_template` SET `lootid`=@sind25h WHERE `entry`=@sind25h;

-- The Lich King
UPDATE `creature_template` SET `lootid`=@lich10n WHERE `entry`=@lich10n;
UPDATE `creature_template` SET `lootid`=@lich10h WHERE `entry`=@lich10h;
UPDATE `creature_template` SET `lootid`=@lich25n WHERE `entry`=@lich25n;
UPDATE `creature_template` SET `lootid`=@lich25h WHERE `entry`=@lich25h;