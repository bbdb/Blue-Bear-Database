/* ####################
### voa_support.sql ###
#################### */

/*
BBDB COMMENT:
	~ STATUS: 100%
	~ Loots, spawns, damages, health corrections, waypoints
*/

-- Creature for diff_entry
DELETE FROM `creature_template` WHERE `entry` IN (350130,351430,384820,384330);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(350130, 0, 0, 0, 0, 0, 29524, 0, 0, 0, 'Koralon the Flame Watcher', '', '', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 108, 350130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 300, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299803, 0, '', 11403),
(351430, 0, 0, 0, 0, 0, 25680, 0, 0, 0, 'Flame Warder', '', '', 0, 78, 78, 2, 16, 16, 0, 1, 1.14286, 1, 1, 387, 543, 0, 528, 7.5, 2000, 0, 1, 32832, 8, 0, 0, 0, 0, 0, 324, 480, 88, 4, 72, 351430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 200, 10, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '', 11723),
(384820, 0, 0, 0, 0, 0, 27392, 0, 0, 0, 'Frost Warder', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 60, 10, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '', 11723),
(384330, 0, 0, 0, 0, 0, 31089, 0, 0, 0, 'Toravon the Ice Watcher', '', '', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 108, 384330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 330, 50, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 617299803, 0, '', 11403);

UPDATE `creature_template` SET `difficulty_entry_1`=350130 WHERE `entry`=35013;
UPDATE `creature_template` SET `difficulty_entry_1`=351430 WHERE `entry`=35143;
UPDATE `creature_template` SET `difficulty_entry_1`=384820 WHERE `entry`=38482;
UPDATE `creature_template` SET `difficulty_entry_1`=384330 WHERE `entry`=38433;

-- Archavon Warder
SET @ward1N10 :=32353;
SET @ward1N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward1N10);
-- Flame Warder
SET @ward2N10 :=35143;
SET @ward2N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward2N10);
-- Tempest Warder
SET @ward3N10 :=34015;
SET @ward3N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward3N10);
-- Frost Warder
SET @ward4N10 :=38482;
SET @ward4N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward4N10);
-- Archavon the Stone Watcher
SET @archN10 :=31125;
SET @archN25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@archN10);
-- Emalon the Storm Watcher
SET @emalN10 :=33993;
SET @emalN25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@emalN10);
-- Koralon the Flame Watcher
SET @koraN10 :=35013;
SET @koraN25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@koraN10);
-- Toravon the Ice Watcher
SET @toraN10 :=38433;
SET @toraN25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@toraN10);

DELETE FROM `creature_loot_template` WHERE `entry` IN (
@ward1N10,@ward1N25,
@ward2N10,@ward2N25,
@ward3N10,@ward3N25,
@archN10,@archN25,
@emalN10,@emalN25,
@koraN10,@koraN25,
@toraN10,@toraN25);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Archavon Warder(10N)
(@ward1N10,33470,30,1,0,2,7,0,0,0),
(@ward1N10,43852,16,1,0,1,1,0,0,0),
(@ward1N10,33454,7,1,0,1,1,0,0,0),
(@ward1N10,33445,3,1,0,1,1,0,0,0),
-- Archavon Warder(25N)
(@ward1N25,33470,24,1,0,2,7,0,0,0),
(@ward1N25,43852,12,1,0,1,1,0,0,0),
(@ward1N25,33454,5,1,0,1,1,0,0,0),
(@ward1N25,39152,2,1,0,1,1,0,0,0),

-- Flame Warder(10N)
(@ward2N10,33470,31,1,0,2,7,0,0,0),
(@ward2N10,43852,15,1,0,1,1,0,0,0),
(@ward2N10,33454,6,1,0,1,1,0,0,0),
(@ward2N10,33445,3,1,0,1,1,0,0,0),
-- Flame Warder(25N)
(@ward2N25,33470,22,1,0,2,7,0,0,0),
(@ward2N25,43852,9,1,0,1,1,0,0,0),
(@ward2N25,33454,5,1,0,1,1,0,0,0),
(@ward2N25,33445,2,1,0,1,1,0,0,0),

-- Tempest Warder(10N)
(@ward3N10,33470,29,1,0,2,7,0,0,0),
(@ward3N10,43852,15,1,0,1,1,0,0,0),
(@ward3N10,33454,6,1,0,1,1,0,0,0),
(@ward3N10,33445,3,1,0,1,1,0,0,0),
-- Tempest Warder(25N)
(@ward3N25,33470,21,1,0,2,7,0,0,0),
(@ward3N25,43852,10,1,0,1,1,0,0,0),
(@ward3N25,33454,5,1,0,1,1,0,0,0),

-- Archavon the Stone Watcher(10N)
(@archN10,41085,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Chain Armor
(@archN10,41141,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Chain Gauntlets
(@archN10,41203,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Chain Leggings
(@archN10,41771,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Dragonhide Gloves
(@archN10,41665,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Dragonhide Legguards
(@archN10,41659,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Dragonhide Robes
(@archN10,40781,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Dreadplate Chestpiece
(@archN10,40803,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Dreadplate Gauntlets
(@archN10,40841,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Dreadplate Legguards
(@archN10,42015,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Felweave Handguards
(@archN10,42001,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Felweave Raiment
(@archN10,42003,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Felweave Trousers
(@archN10,41284,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Kodohide Gloves
(@archN10,41296,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Kodohide Legguards
(@archN10,41308,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Kodohide Robes
(@archN10,41765,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Leather Gloves
(@archN10,41653,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Leather Legguards
(@archN10,41648,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Leather Tunic
(@archN10,41079,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Linked Armor
(@archN10,41135,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Linked Gauntlets
(@archN10,41162,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Linked Leggings
(@archN10,40989,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Mail Armor
(@archN10,41005,1.2,1,0,1,1,0,0,0), -- Hateful Gladiator's Mail Gauntlets
(@archN10,41031,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Mail Leggings
(@archN10,41872,1.7,1,0,1,1,0,0,0), -- Hateful Gladiator's Mooncloth Gloves
(@archN10,41862,1.7,1,0,1,1,0,0,0), -- Hateful Gladiator's Mooncloth Leggings
(@archN10,41857,1.7,1,0,1,1,0,0,0), -- Hateful Gladiator's Mooncloth Robe
(@archN10,40904,1.7,1,0,1,1,0,0,0), -- Hateful Gladiator's Ornamented Chestguard
(@archN10,40925,1.6,1,0,1,1,0,0,0), -- Hateful Gladiator's Ornamented Gloves
(@archN10,40937,1.5,1,0,1,1,0,0,0), -- Hateful Gladiator's Ornamented Legplates
(@archN10,40783,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Plate Chestpiece
(@archN10,40801,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Plate Gauntlets
(@archN10,40840,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Plate Legguards
(@archN10,40988,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Ringmail Armor
(@archN10,40999,1.2,1,0,1,1,0,0,0), -- Hateful Gladiator's Ringmail Gauntlets
(@archN10,41025,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Ringmail Leggings
(@archN10,41938,1.6,1,0,1,1,0,0,0), -- Hateful Gladiator's Satin Gloves
(@archN10,41925,1.5,1,0,1,1,0,0,0), -- Hateful Gladiator's Satin Leggings
(@archN10,41919,1.6,1,0,1,1,0,0,0), -- Hateful Gladiator's Satin Robe
(@archN10,40782,1.7,1,0,1,1,0,0,0), -- Hateful Gladiator's Scaled Chestpiece
(@archN10,40802,1.6,1,0,1,1,0,0,0), -- Hateful Gladiator's Scaled Gauntlets
(@archN10,40842,1.5,1,0,1,1,0,0,0), -- Hateful Gladiator's Scaled Legguards
(@archN10,41969,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Silk Handguards
(@archN10,41950,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Silk Raiment
(@archN10,41957,3,1,0,1,1,0,0,0), -- Hateful Gladiator's Silk Trousers
(@archN10,41291,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Wyrmhide Gloves
(@archN10,41302,1,1,0,1,1,0,0,0), -- Hateful Gladiator's Wyrmhide Legguards
(@archN10,41314,1.1,1,0,1,1,0,0,0), -- Hateful Gladiator's Wyrmhide Robes
(@archN10,39558,3,1,0,1,1,0,0,0), -- Heroes' Bonescythe Breastplate
(@archN10,39560,3,1,0,1,1,0,0,0), -- Heroes' Bonescythe Gauntlets
(@archN10,39564,3,1,0,1,1,0,0,0), -- Heroes' Bonescythe Legplates
(@archN10,39582,3,1,0,1,1,0,0,0), -- Heroes' Cryptstalker Handguards
(@archN10,39580,3,1,0,1,1,0,0,0), -- Heroes' Cryptstalker Legguards
(@archN10,39579,3,1,0,1,1,0,0,0), -- Heroes' Cryptstalker Tunic
(@archN10,39606,1.6,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Battleplate
(@archN10,39611,1.6,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Breastplate
(@archN10,39609,1.8,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Gauntlets
(@archN10,39622,1.6,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Handguards
(@archN10,39612,1.6,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Legguards
(@archN10,39607,1.7,1,0,1,1,0,0,0), -- Heroes' Dreadnaught Legplates
(@archN10,39544,1.1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Gloves
(@archN10,39557,1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Handgrips
(@archN10,39543,1.1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Handguards
(@archN10,39539,1.2,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Leggings
(@archN10,39555,1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Legguards
(@archN10,39554,1.2,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Raiments
(@archN10,39538,1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Robe
(@archN10,39546,1.2,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Trousers
(@archN10,39547,1.1,1,0,1,1,0,0,0), -- Heroes' Dreamwalker Vestments
(@archN10,39597,1,1,0,1,1,0,0,0), -- Heroes' Earthshatter Chestguard
(@archN10,39593,1.2,1,0,1,1,0,0,0), -- Heroes' Earthshatter Gloves
(@archN10,39601,1,1,0,1,1,0,0,0), -- Heroes' Earthshatter Grips
(@archN10,39591,1.1,1,0,1,1,0,0,0), -- Heroes' Earthshatter Handguards
(@archN10,39592,1.2,1,0,1,1,0,0,0), -- Heroes' Earthshatter Hauberk
(@archN10,39595,1.2,1,0,1,1,0,0,0), -- Heroes' Earthshatter Kilt
(@archN10,39589,1.1,1,0,1,1,0,0,0), -- Heroes' Earthshatter Legguards
(@archN10,39588,1,1,0,1,1,0,0,0), -- Heroes' Earthshatter Tunic
(@archN10,39603,1.1,1,0,1,1,0,0,0), -- Heroes' Earthshatter War-Kilt
(@archN10,39495,4,1,0,1,1,0,0,0), -- Heroes' Frostfire Gloves
(@archN10,39493,3,1,0,1,1,0,0,0), -- Heroes' Frostfire Leggings
(@archN10,39492,3,1,0,1,1,0,0,0), -- Heroes' Frostfire Robe
(@archN10,39519,1.6,1,0,1,1,0,0,0), -- Heroes' Gloves of Faith
(@archN10,39530,1.5,1,0,1,1,0,0,0), -- Heroes' Handwraps of Faith
(@archN10,39517,1.7,1,0,1,1,0,0,0), -- Heroes' Leggings of Faith
(@archN10,39528,1.7,1,0,1,1,0,0,0), -- Heroes' Pants of Faith
(@archN10,39500,3,1,0,1,1,0,0,0), -- Heroes' Plagueheart Gloves
(@archN10,39498,3,1,0,1,1,0,0,0), -- Heroes' Plagueheart Leggings
(@archN10,39497,3,1,0,1,1,0,0,0), -- Heroes' Plagueheart Robe
(@archN10,39523,1.7,1,0,1,1,0,0,0), -- Heroes' Raiments of Faith
(@archN10,39638,1,1,0,1,1,0,0,0), -- Heroes' Redemption Breastplate
(@archN10,39633,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Chestpiece
(@archN10,39634,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Gauntlets
(@archN10,39632,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Gloves
(@archN10,39630,1.2,1,0,1,1,0,0,0), -- Heroes' Redemption Greaves
(@archN10,39639,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Handguards
(@archN10,39641,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Legguards
(@archN10,39636,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Legplates
(@archN10,39629,1.1,1,0,1,1,0,0,0), -- Heroes' Redemption Tunic
(@archN10,39515,1.6,1,0,1,1,0,0,0), -- Heroes' Robe of Faith
(@archN10,39617,1.7,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Battleplate
(@archN10,39623,1.7,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Chestguard
(@archN10,39618,1.1,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Gauntlets
(@archN10,39624,1.1,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Handguards
(@archN10,39626,1.5,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Legguards
(@archN10,39620,1.6,1,0,1,1,0,0,0), -- Heroes' Scourgeborne Legplates
(@archN10,43959,0.9,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@archN10,44083,0.9,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
-- Archavon the Stone Watcher(25N)
(@archN25,41086,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Armor
(@archN25,41142,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Gauntlets
(@archN25,41204,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Leggings
(@archN25,41772,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Gloves
(@archN25,41666,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Legguards
(@archN25,41660,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Robes
(@archN25,40784,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Chestpiece
(@archN25,40806,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreaplate Gauntlets
(@archN25,40845,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Legguards
(@archN25,42016,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Handguards
(@archN25,41997,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Raiment
(@archN25,42004,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Trousers
(@archN25,41286,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Kodohide Gloves
(@archN25,41297,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Kodohide Legguards
(@archN25,41309,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Kodohide Robes
(@archN25,41766,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Leather Gloves
(@archN25,41654,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Leather Legguards
(@archN25,41649,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Leather Tunic
(@archN25,41080,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Linked Armor
(@archN25,41136,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Linked Gauntlets
(@archN25,41198,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Linked Leggings
(@archN25,40991,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Mail Armor
(@archN25,41006,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Mail Gauntlets
(@archN25,41032,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Mail Leggings
(@archN25,41873,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Mooncloth Gloves
(@archN25,41863,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Mooncloth Leggings
(@archN25,41858,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Mooncloth Robe
(@archN25,40905,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Ornamented Chestguard
(@archN25,40926,4,1,0,1,1,0,0,0), -- Deadly Gladiator's Ornamented Gloves
(@archN25,40938,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Ornamented Legplates
(@archN25,40786,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Chestpiece
(@archN25,40804,7,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Gauntlets
(@archN25,40844,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Legguards
(@archN25,40990,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Armor
(@archN25,41000,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Gauntlets
(@archN25,41026,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Leggings
(@archN25,41939,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Gloves
(@archN25,41926,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Leggings
(@archN25,41920,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Robe
(@archN25,40785,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Chestpiece
(@archN25,40805,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Gauntlets
(@archN25,40846,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Legguards
(@archN25,41970,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Handguards
(@archN25,41951,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Raiment
(@archN25,41958,6,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Trousers
(@archN25,41292,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Wyrmhide Gloves
(@archN25,41303,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Wyrmhide Legguards
(@archN25,41315,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Wyrmhide Robes
(@archN25,43959,0.8,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@archN25,44083,0.8,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@archN25,40495,6,1,0,1,1,0,0,0), -- Valorous Bonescythe Breastplate
(@archN25,40496,7,1,0,1,1,0,0,0), -- Valorous Bonescythe Gauntlets
(@archN25,40500,6,1,0,1,1,0,0,0), -- Valorous Bonescythe Legplates
(@archN25,40504,7,1,0,1,1,0,0,0), -- Valorous Cryptstalker Handguards
(@archN25,40506,7,1,0,1,1,0,0,0), -- Valorous Cryptstalker Legguards
(@archN25,40503,6,1,0,1,1,0,0,0), -- Valorous Cryptstalker Tunic
(@archN25,40525,3,1,0,1,1,0,0,0), -- Valorous Dreadnaught Battleplate
(@archN25,40544,3,1,0,1,1,0,0,0), -- Valorous Dreadnaught Breastplate
(@archN25,40527,4,1,0,1,1,0,0,0), -- Valorous Dreadnaught Gauntlets
(@archN25,40545,4,1,0,1,1,0,0,0), -- Valorous Dreadnaught Handguards
(@archN25,40547,3,1,0,1,1,0,0,0), -- Valorous Dreadnaught Legguards
(@archN25,40529,3,1,0,1,1,0,0,0), -- Valorous Dreadnaught Legplates
(@archN25,40466,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Gloves
(@archN25,40472,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Handgrips
(@archN25,40460,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Handguards
(@archN25,40462,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Leggings
(@archN25,40493,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Legguards
(@archN25,40471,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Raiments
(@archN25,40463,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Robe
(@archN25,40468,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Trousers
(@archN25,40469,2,1,0,1,1,0,0,0), -- Valorous Dreamwalker Vestments
(@archN25,40523,2,1,0,1,1,0,0,0), -- Valorous Earthshatter Chestguard
(@archN25,40515,3,1,0,1,1,0,0,0), -- Valorous Earthshatter Gloves
(@archN25,40520,3,1,0,1,1,0,0,0), -- Valorous Earthshatter Grips
(@archN25,40509,3,1,0,1,1,0,0,0), -- Valorous Earthshatter Handguards
(@archN25,40514,2,1,0,1,1,0,0,0), -- Valorous Earthshatter Hauberk
(@archN25,40517,2,1,0,1,1,0,0,0), -- Valorous Earthshatter Kilt
(@archN25,40512,2,1,0,1,1,0,0,0), -- Valorous Earthshatter Legguards
(@archN25,40508,2,1,0,1,1,0,0,0), -- Valorous Earthshatter Tunic
(@archN25,40522,2,1,0,1,1,0,0,0), -- Valorous Earthshatter War-Kilt
(@archN25,40415,7,1,0,1,1,0,0,0), -- Valorous Frostfire Gloves
(@archN25,40417,7,1,0,1,1,0,0,0), -- Valorous Frostfire Leggings
(@archN25,40418,6,1,0,1,1,0,0,0), -- Valorous Frostfire Robe
(@archN25,40445,4,1,0,1,1,0,0,0), -- Valorous Gloves of Faith
(@archN25,40454,4,1,0,1,1,0,0,0), -- Valorous Handwraps of Faith
(@archN25,40448,3,1,0,1,1,0,0,0), -- Valorous Leggings of Faith 
(@archN25,40457,4,1,0,1,1,0,0,0), -- Valorous Pants of Faith
(@archN25,40422,7,1,0,1,1,0,0,0), -- Valorous Plagueheart Leggings
(@archN25,40423,6,1,0,1,1,0,0,0), -- Valorous Plagueheart Robe
(@archN25,40458,3,1,0,1,1,0,0,0), -- Valorous Raiments of Faith
(@archN25,40579,2,1,0,1,1,0,0,0), -- Valorous Redemption Breastplate
(@archN25,40574,2,1,0,1,1,0,0,0), -- Valorous Redemption Chestpiece
(@archN25,40575,2,1,0,1,1,0,0,0), -- Valorous Redemption Gauntlets
(@archN25,40570,2,1,0,1,1,0,0,0), -- Valorous Redemption Gloves
(@archN25,40572,2,1,0,1,1,0,0,0), -- Valorous Redemption Greaves
(@archN25,40580,2,1,0,1,1,0,0,0), -- Valorous Redemption Handguards
(@archN25,40583,2,1,0,1,1,0,0,0), -- Valorous Redemption Legguards
(@archN25,40577,2,1,0,1,1,0,0,0), -- Valorous Redemption Legplates
(@archN25,40569,2,1,0,1,1,0,0,0), -- Valorous Redemption Tunic
(@archN25,40449,3,1,0,1,1,0,0,0), -- Valorous Robe of Faith
(@archN25,40550,3,1,0,1,1,0,0,0), -- Valorous Scourgeborne Battleplate
(@archN25,40559,3,1,0,1,1,0,0,0), -- Valorous Scourgeborne Chestguard
(@archN25,40552,3,1,0,1,1,0,0,0), -- Valorous Scourgeborne Gauntlets
(@archN25,40563,4,1,0,1,1,0,0,0), -- Valorous Scourgeborne Handguards
(@archN25,40567,3,1,0,1,1,0,0,0), -- Valorous Scourgeborne Legguards
(@archN25,40556,3,1,0,1,1,0,0,0), -- Valorous Scourgeborne Legplates

-- Emalon the Storm Watcher(10N)
(@emalN10,41639,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Armwraps of Dominance
(@emalN10,41624,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Armwraps of Salvation
(@emalN10,41839,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Armwraps of Triumph
(@emalN10,42114,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Band of Ascendancy
(@emalN10,42115,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Band of Victory
(@emalN10,41629,0.8,1,1,1,1,0,0,0), -- Deadly Gladiator's Belt of Dominance
(@emalN10,41616,0.8,1,1,1,1,0,0,0), -- Deadly Gladiator's Belt of Salvation
(@emalN10,41831,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Belt of Triumph
(@emalN10,41634,0.7,1,1,1,1,0,0,0), -- Deadly Gladiator's Boots of Dominance
(@emalN10,41620,0.7,1,1,1,1,0,0,0), -- Deadly Gladiator's Boots of Salvation
(@emalN10,41835,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Boots of Triumph
(@emalN10,40982,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Bracers of Salvation
(@emalN10,40888,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Bracers of Triumph
(@emalN10,41142,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Gauntlets
(@emalN10,41204,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Leggings
(@emalN10,42064,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Ascendancy
(@emalN10,42066,0.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Deliverance
(@emalN10,42062,0.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Dominance
(@emalN10,42065,0.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Salvation
(@emalN10,42063,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Subjugation
(@emalN10,42067,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Triumph
(@emalN10,42068,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Cloak of Victory
(@emalN10,41897,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Cord of Dominance
(@emalN10,41880,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Cord of Salvation
(@emalN10,41908,1.3,1,1,1,1,0,0,0), -- Deadly Gladiator's Cuffs of Dominance
(@emalN10,41892,1.3,1,1,1,1,0,0,0), -- Deadly Gladiator's Cuffs of Salvation
(@emalN10,41772,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Gloves
(@emalN10,41666,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Legguards
(@emalN10,40806,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Gauntlets
(@emalN10,40845,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Legguards
(@emalN10,42016,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Handguards
(@emalN10,42004,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Trousers
(@emalN10,40974,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Girdle of Salvation
(@emalN10,40879,1.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Girdle of Triumph
(@emalN10,40975,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Greaves of Salvation
(@emalN10,40880,1.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Greaves of Triumph
(@emalN10,41286,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Kodohide Gloves
(@emalN10,41297,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Kodohide Legguards 
(@emalN10,41766,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Leather Gloves
(@emalN10,41654,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Leather Legguards
(@emalN10,41136,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Linked Gauntlets
(@emalN10,41198,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Linked Leggings
(@emalN10,41006,0.9,1,0,1,1,0,0,0), -- Deadly Gladiator's Mail Gauntlets
(@emalN10,41032,0.9,1,0,1,1,0,0,0), -- Deadly Gladiator's Mail Leggings
(@emalN10,41873,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Mooncloth Gloves
(@emalN10,41863,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Mooncloth Leggings
(@emalN10,40926,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Ornamented Gloves
(@emalN10,40938,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Ornamented Legplates
(@emalN10,42030,0.6,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Ascendancy
(@emalN10,42032,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Deliverance
(@emalN10,42029,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Dominance
(@emalN10,42033,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Salvation
(@emalN10,42031,0.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Subjugation
(@emalN10,42027,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Triumph
(@emalN10,42028,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Pendant of Victory
(@emalN10,40804,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Gauntlets
(@emalN10,40844,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Legguards
(@emalN10,41000,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Gauntlets
(@emalN10,41026,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Leggings
(@emalN10,41074,0.7,1,1,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Dominance
(@emalN10,41054,0.8,1,1,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Salvation
(@emalN10,41229,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Triumph
(@emalN10,41939,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Gloves
(@emalN10,41926,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Leggings
(@emalN10,40805,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Gauntlets
(@emalN10,40846,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Legguards
(@emalN10,41970,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Handguards
(@emalN10,41958,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Trousers
(@emalN10,41902,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Treads of Dominance
(@emalN10,41884,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Treads of Salvation
(@emalN10,41069,0.8,1,1,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Dominance
(@emalN10,41048,0.7,1,1,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Salvation
(@emalN10,41234,1.5,1,1,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Triumph
(@emalN10,41064,0.8,1,1,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Dominance
(@emalN10,41059,0.7,1,1,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Salvation
(@emalN10,41224,1.4,1,1,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Triumph
(@emalN10,41292,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Wyrmhide Gloves
(@emalN10,41303,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Wyrmhide Legguards
(@emalN10,43959,1,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@emalN10,44083,1,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@emalN10,45376,1.7,1,0,1,1,0,0,0), -- Valorous Aegis Gauntlets
(@emalN10,45370,1.6,1,0,1,1,0,0,0), -- Valorous Aegis Gloves
(@emalN10,45371,1.8,1,0,1,1,0,0,0), -- Valorous Aegis Greaves
(@emalN10,45383,1.6,1,0,1,1,0,0,0), -- Valorous Aegis Handguards
(@emalN10,45384,1.7,1,0,1,1,0,0,0), -- Valorous Aegis Legguards
(@emalN10,45379,1.7,1,0,1,1,0,0,0), -- Valorous Aegis Legplates
(@emalN10,45341,2,1,0,1,1,0,0,0), -- Valorous Darkruned Gauntlets
(@emalN10,45337,3,1,0,1,1,0,0,0), -- Valorous Darkruned Handguards
(@emalN10,45338,2,1,0,1,1,0,0,0), -- Valorous Darkruned Legguards
(@emalN10,45343,2,1,0,1,1,0,0,0), -- Valorous Darkruned Legplates
(@emalN10,45419,5,1,0,1,1,0,0,0), -- Valorous Deathbringer Gloves
(@emalN10,45420,5,1,0,1,1,0,0,0), -- Valorous Deathbringer Leggings
(@emalN10,45387,2,1,0,1,1,0,0,0), -- Valorous Gloves of Sanctification
(@emalN10,45392,2,1,0,1,1,0,0,0), -- Valorous Handwraps of Sanctification
(@emalN10,46131,5,1,0,1,1,0,0,0), -- Valorous Kirin Tor Gauntlets
(@emalN10,45367,5,1,0,1,1,0,0,0), -- Valorous Kirin Tor Leggings
(@emalN10,45388,2,1,0,1,1,0,0,0), -- Valorous Leggings of Sanctification
(@emalN10,45351,1.7,1,0,1,1,0,0,0), -- Valorous Nightsong Gloves
(@emalN10,45355,1.6,1,0,1,1,0,0,0), -- Valorous Nightsong Handgrips
(@emalN10,45345,2,1,0,1,1,0,0,0), -- Valorous Nightsong Handguards
(@emalN10,45347,1.6,1,0,1,1,0,0,0), -- Valorous Nightsong Leggings
(@emalN10,45357,1.8,1,0,1,1,0,0,0), -- Valorous Nightsong Legguards
(@emalN10,45353,1.6,1,0,1,1,0,0,0), -- Valorous Nightsong Trousers
(@emalN10,45394,2,1,0,1,1,0,0,0), -- Valorous Pants of Sanctification
(@emalN10,45360,5,1,0,1,1,0,0,0), -- Valorous Scourgestalker Handguards
(@emalN10,45362,5,1,0,1,1,0,0,0), -- Valorous Scourgestalker Legguards
(@emalN10,45430,2,1,0,1,1,0,0,0), -- Valorous Siegebreaker Gauntlets
(@emalN10,45426,2,1,0,1,1,0,0,0), -- Valorous Siegebreaker Handguards
(@emalN10,45427,2,1,0,1,1,0,0,0), -- Valorous Siegebreaker Legguards
(@emalN10,45432,2,1,0,1,1,0,0,0), -- Valorous Siegebreaker Legplates
(@emalN10,45397,5,1,0,1,1,0,0,0), -- Valorous Terrorblade Gauntlets
(@emalN10,45399,5,1,0,1,1,0,0,0), -- Valorous Terrorblade Legplates
(@emalN10,45406,1.6,1,0,1,1,0,0,0), -- Valorous Worldbreaker Gloves
(@emalN10,45414,1.6,1,0,1,1,0,0,0), -- Valorous Worldbreaker Grips
(@emalN10,45401,1.7,1,0,1,1,0,0,0), -- Valorous Worldbreaker Handguards
(@emalN10,45409,1.7,1,0,1,1,0,0,0), -- Valorous Worldbreaker Kilt
(@emalN10,45403,1.6,1,0,1,1,0,0,0), -- Valorous Worldbreaker Legguards
(@emalN10,45416,1.7,1,0,1,1,0,0,0), -- Valorous Worldbreaker War-Kilt
-- Emalon the Storm Watcher(25N)
(@emalN25,46155,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Gauntlets
(@emalN25,46179,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Gloves
(@emalN25,46181,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Greaves
(@emalN25,46174,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Handguards
(@emalN25,46176,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Legguards
(@emalN25,46153,3,1,0,1,1,0,0,0), -- Conqueror's Aegis Legplates
(@emalN25,46113,5,1,0,1,1,0,0,0), -- Conqueror's Darkruned Gauntlets
(@emalN25,46119,5,1,0,1,1,0,0,0), -- Conqueror's Darkruned Handguards
(@emalN25,46121,5,1,0,1,1,0,0,0), -- Conqueror's Darkruned Legguards
(@emalN25,46116,5,1,0,1,1,0,0,0), -- Conqueror's Darkruned Legplates
(@emalN25,46135,10,1,0,1,1,0,0,0), -- Conqueror's Deathbringer Gloves
(@emalN25,46139,10,1,0,1,1,0,0,0), -- Conqueror's Deathbringer Leggings
(@emalN25,46188,5,1,0,1,1,0,0,0), -- Conqueror's Gloves of Sanctification
(@emalN25,46163,5,1,0,1,1,0,0,0), -- Conqueror's Handwraps of Sanctification
(@emalN25,46132,9,1,0,1,1,0,0,0), -- Conqueror's Kirin Tor Gauntlets
(@emalN25,46133,9,1,0,1,1,0,0,0), -- Conqueror's Kirin Tor Leggings
(@emalN25,46195,5,1,0,1,1,0,0,0), -- Conqueror's Leggings of Sanctification
(@emalN25,46189,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Gloves
(@emalN25,46158,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Handrgips
(@emalN25,46183,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Handguards
(@emalN25,46185,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Leggings
(@emalN25,46160,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Legguards
(@emalN25,46192,3,1,0,1,1,0,0,0), -- Conqueror's Nightsong Trousers
(@emalN25,46170,5,1,0,1,1,0,0,0), -- Conqueror's Pants of Sanctifiaction
(@emalN25,46142,10,1,0,1,1,0,0,0), -- Conqueror's Scourgestalker Handguards
(@emalN25,46144,10,1,0,1,1,0,0,0), -- Conqueror's Scourgestalker Legguards
(@emalN25,46148,5,1,0,1,1,0,0,0), -- Conqueror's Siegebreaker Gauntlets
(@emalN25,46164,5,1,0,1,1,0,0,0), -- Conqueror's Siegebreaker Handguards
(@emalN25,46169,5,1,0,1,1,0,0,0), -- Conqueror's Siegebreaker Legguards
(@emalN25,46150,5,1,0,1,1,0,0,0), -- Conqueror's Siegebreaker Legplates
(@emalN25,46124,10,1,0,1,1,0,0,0), -- Conqueror's Terrorblade Gauntlets
(@emalN25,46126,10,1,0,1,1,0,0,0), -- Conqueror's Terrorblade Legplates
(@emalN25,46207,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker Gloves
(@emalN25,46200,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker Grips
(@emalN25,46199,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker Handguards
(@emalN25,46210,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker Kilt
(@emalN25,46202,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker Legguards
(@emalN25,46208,3,1,0,1,1,0,0,0), -- Conqueror's Worldbreaker War-Kilt
(@emalN25,41640,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Dominance
(@emalN25,41625,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Salvation
(@emalN25,41840,3,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Triumph
(@emalN25,42116,3,1,1,1,1,0,0,0), -- Furious Gladiator's Band of Dominance
(@emalN25,42117,3,1,1,1,1,0,0,0), -- Furious Gladiator's Band of Triumph
(@emalN25,41630,1.1,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Dominance
(@emalN25,41617,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Salvation
(@emalN25,41832,3,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Triumph
(@emalN25,41635,1.1,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Dominance
(@emalN25,41621,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Salvation
(@emalN25,41836,3,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Triumph
(@emalN25,40983,3,1,1,1,1,0,0,0), -- Furious Gladiator's Bracers of Salvation
(@emalN25,40889,3,1,1,1,1,0,0,0), -- Furious Gladiator's Bracers of Triumph
(@emalN25,41143,5,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Gauntlets
(@emalN25,41205,5,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Leggings
(@emalN25,42071,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Ascendancy
(@emalN25,42073,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Deliverance
(@emalN25,42069,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Dominance
(@emalN25,42072,1.1,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Salvation
(@emalN25,42070,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Subjugation
(@emalN25,42074,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Triumph
(@emalN25,42075,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Victory
(@emalN25,41898,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cord of Dominance
(@emalN25,41881,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cord of Salvation
(@emalN25,41909,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cuffs of Dominance
(@emalN25,41893,3,1,1,1,1,0,0,0), -- Furious Gladiator's Cuffs of Salvation
(@emalN25,41773,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Gloves
(@emalN25,41667,1.7,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Legguards
(@emalN25,40809,5,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Gauntlets
(@emalN25,40848,5,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Legguards 
(@emalN25,42017,4,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Handguards
(@emalN25,42005,5,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Trousers
(@emalN25,40976,3,1,1,1,1,0,0,0), -- Furious Gladiator's Girdle of Salvation
(@emalN25,40881,3,1,1,1,1,0,0,0), -- Furious Gladiator's Girdle of Triumph
(@emalN25,40977,3,1,1,1,1,0,0,0), -- Furious Gladiator's Greaves of Salvation
(@emalN25,40882,3,1,1,1,1,0,0,0), -- Furious Gladiator's Greaves of Triumph
(@emalN25,41287,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Kodohide Gloves
(@emalN25,41298,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Kodohide Legguards
(@emalN25,41767,5,1,0,1,1,0,0,0), -- Furious Gladiator's Leather Gloves
(@emalN25,41655,5,1,0,1,1,0,0,0), -- Furious Gladiator's Leather Legguards
(@emalN25,41137,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Linked Gauntlets
(@emalN25,41199,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Linked Leggings
(@emalN25,41007,1.8,1,0,1,1,0,0,0), -- Furious Gladiator's Mail Gauntlets
(@emalN25,41033,1.7,1,0,1,1,0,0,0), -- Furious Gladiator's Mail Leggings
(@emalN25,41874,2,1,0,1,1,0,0,0), -- Furious Gladiator's Mooncloth Gloves
(@emalN25,41864,3,1,0,1,1,0,0,0), -- Furious Gladiator's Mooncloth Leggings
(@emalN25,40927,5,1,0,1,1,0,0,0), -- Furious Gladiator's Ornamented Gloves
(@emalN25,40939,2,1,0,1,1,0,0,0), -- Furious Gladiator's Ornamented Legplates
(@emalN25,42037,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Ascendancy
(@emalN25,42039,1.1,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Deliverance
(@emalN25,42036,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Dominance
(@emalN25,42040,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Salvation
(@emalN25,42038,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Subjugation
(@emalN25,46373,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Sundering
(@emalN25,42034,3,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Triumph
(@emalN25,42035,3,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Victory
(@emalN25,40807,5,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Gauntlets
(@emalN25,40847,5,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Legguards
(@emalN25,41001,1.8,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Gauntlets
(@emalN25,41027,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Leggings
(@emalN25,41075,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Dominance
(@emalN25,41055,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Salvation
(@emalN25,41230,3,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Triumph
(@emalN25,41940,3,1,0,1,1,0,0,0), -- Furious Gladiator's Satin Gloves
(@emalN25,41927,3,1,0,1,1,0,0,0), -- Furious Gladiator's Sating Leggings
(@emalN25,40808,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Gauntlets
(@emalN25,40849,2,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Legguards
(@emalN25,41971,5,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Handguards
(@emalN25,41959,5,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Trousers
(@emalN25,41903,3,1,1,1,1,0,0,0), -- Furious Gladiator's Slippers of Dominance
(@emalN25,41885,3,1,1,1,1,0,0,0), -- Furious Gladiator's Slippers of Salvation
(@emalN25,41070,1.6,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Dominance
(@emalN25,41051,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Salvation
(@emalN25,41235,3,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Triumph
(@emalN25,41065,1.6,1,1,1,1,0,0,0), -- Furious Gladiator's Wristguards of Dominance
(@emalN25,41060,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Wristguards of Salvation
(@emalN25,41225,3,1,0,1,1,0,0,0), -- Furious Gladiator's Wristguards of Triumph
(@emalN25,41293,1.8,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Gloves
(@emalN25,41304,1.7,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Legguards
(@emalN25,43959,1,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@emalN25,44083,0.9,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)

-- Koralon the Flame Watcher(10N)
(@koraN10,47241,10,1,0,2,2,0,0,0), -- Emblem of Triumph
(@koraN10,41640,0.8,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Dominance
(@koraN10,41625,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Salvation
(@koraN10,41840,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Armwraps of Triumph
(@koraN10,42116,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Band of Dominance
(@koraN10,42117,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Band of Triumph
(@koraN10,41630,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Dominance
(@koraN10,41617,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Salvation
(@koraN10,41832,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Belt of Triumph
(@koraN10,41635,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Dominance
(@koraN10,41621,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Salvation
(@koraN10,41836,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Boots of Triumph
(@koraN10,40983,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Bracers of Salvation
(@koraN10,40889,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Bracers of Triumph
(@koraN10,41143,2,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Gauntlets
(@koraN10,41205,3,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Leggings
(@koraN10,42071,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Ascendancy
(@koraN10,42073,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Deliverance
(@koraN10,42069,0.5,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Dominance
(@koraN10,42072,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Salvation
(@koraN10,42070,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Subjugation
(@koraN10,42074,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Triumph
(@koraN10,42075,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Cloak of Victory
(@koraN10,41898,1.2,1,1,1,1,0,0,0), -- Furious Gladiator's Cord of Dominance
(@koraN10,41881,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Cord of Salvation
(@koraN10,41909,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Cuffs of Dominance
(@koraN10,41893,1.6,1,1,1,1,0,0,0), -- Furious Gladiator's Cuffs of Salvation
(@koraN10,41773,0.9,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Gloves
(@koraN10,41667,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Legguards
(@koraN10,40809,2,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Gauntlets
(@koraN10,40848,3,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Legguards
(@koraN10,42017,2,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Handguards
(@koraN10,42005,2,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Trousers
(@koraN10,40976,1.4,1,0,1,1,0,0,0), -- Furious Gladiator's Girdle of Salvation
(@koraN10,40881,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Girdle of Triumph
(@koraN10,40977,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Greaves of Salvation
(@koraN10,40882,1.5,1,0,1,1,0,0,0), -- Furious Gladiator's Greaves of Triumph
(@koraN10,41287,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Kodohide Gloves
(@koraN10,41298,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Kodohide Legguards
(@koraN10,41767,2,1,0,1,1,0,0,0), -- Furious Gladiator's Leather Gloves
(@koraN10,41655,2,1,0,1,1,0,0,0), -- Furious Gladiator's Leather Legguards
(@koraN10,41137,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Linked Gauntlets
(@koraN10,41199,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Linked Leggings
(@koraN10,41007,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Mail Gauntlets
(@koraN10,41033,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Mail Leggings
(@koraN10,41874,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Mooncloth Gloves
(@koraN10,41864,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Mooncloth Leggings
(@koraN10,40927,2,1,0,1,1,0,0,0), -- Furious Gladiator's Ornamented Gloves
(@koraN10,40939,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Ornamented Legplates
(@koraN10,42037,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Ascendancy
(@koraN10,42039,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Deliverance
(@koraN10,42036,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Dominance
(@koraN10,42040,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Salvation
(@koraN10,42038,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Subjugation
(@koraN10,46373,0.6,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Sundering
(@koraN10,42034,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Triumph
(@koraN10,42035,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Pendant of Victory
(@koraN10,40807,2,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Gauntlets
(@koraN10,40847,3,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Legguards
(@koraN10,41001,0.9,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Gauntlets
(@koraN10,41027,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Leggings
(@koraN10,41075,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Dominance
(@koraN10,41055,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Salvation
(@koraN10,41230,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Sabatons of Triumph
(@koraN10,41940,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Satin Gloves
(@koraN10,41927,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Satin Leggings
(@koraN10,40808,0.8,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Gauntlets
(@koraN10,40849,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Legguards
(@koraN10,41971,2,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Handguards
(@koraN10,41959,2,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Trousers
(@koraN10,41903,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Slippers of Dominance
(@koraN10,41885,1.3,1,1,1,1,0,0,0), -- Furious Gladiator's Slippers of Salvation
(@koraN10,41070,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Dominance
(@koraN10,41051,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Salvation
(@koraN10,41235,1.4,1,1,1,1,0,0,0), -- Furious Gladiator's Waistguard of Triumph
(@koraN10,41065,0.7,1,1,1,1,0,0,0), -- Furious Gladiator's Wristguards of Dominance
(@koraN10,41060,0.8,1,1,1,1,0,0,0), -- Furious Gladiator's Wristguards of Salvation
(@koraN10,41225,1.5,1,1,1,1,0,0,0), -- Furious Gladiator's Wristguards of Triumph
(@koraN10,41293,0.7,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Gloves
(@koraN10,41304,0.9,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Legguards
(@koraN10,48244,2,1,0,1,1,6,67,0), -- Garona's Gauntlets of Conquest
(@koraN10,48246,2,1,0,1,1,6,67,0), -- Garona's Legplates of Conquest
(@koraN10,47802,2,1,0,1,1,6,67,0), -- Gul'dan's Gloves of Conquest
(@koraN10,47800,3,1,0,1,1,6,67,0), -- Gul'dan's Leggings of Conquest
(@koraN10,48387,1.3,1,0,1,1,6,67,0), -- Hellscream's Gauntlets of Conquest
(@koraN10,48457,1.2,1,0,1,1,6,67,0), -- Hellscream's Handguards of Conquest
(@koraN10,48459,1.2,1,0,1,1,6,67,0), -- Hellscream's Legguards of Conquest
(@koraN10,48389,1.2,1,0,1,1,6,67,0), -- Hellscream's Legplates of Conquest
(@koraN10,47783,2,1,0,1,1,6,469,0), -- Kel'Thuzad's Gloves of Conquest
(@koraN10,47785,2,1,0,1,1,6,469,0), -- Kel'Thuzad's Leggings of Conquest
(@koraN10,47752,2,1,0,1,1,6,469,0), -- Kel'Thuzad's Gauntlets of Conquest
(@koraN10,47750,2,1,0,1,1,6,469,0), -- Kel'Thuzad's Leggings of Conquest
(@koraN10,48502,1.2,1,0,1,1,6,67,0), -- Koltira's Gauntlets of Conquest
(@koraN10,48559,1.1,1,0,1,1,6,67,0), -- Koltira's Handguards of Conquest
(@koraN10,48561,1.3,1,0,1,1,6,67,0), -- Koltira's Legguards of Conquest
(@koraN10,48504,1.2,1,0,1,1,6,67,0), -- Koltira's Legplates of Conquest
(@koraN10,48630,0.9,1,0,1,1,6,67,0), -- Liadrin's Gauntlets of Conquest
(@koraN10,48598,0.8,1,0,1,1,6,67,0), -- Liadrin's Gloves of Conquest
(@koraN10,48596,0.8,1,0,1,1,6,67,0), -- Liadrin's Greaves of Conquest
(@koraN10,48653,0.9,1,0,1,1,6,67,0), -- Liadrin's Handguards of Conquest
(@koraN10,48655,0.8,1,0,1,1,6,67,0), -- Liadrin's Legguards of Conquest
(@koraN10,48628,0.8,1,0,1,1,6,67,0), -- Liadrin's Legplates of Conquest
(@koraN10,48162,0.9,1,0,1,1,6,469,0), -- Malfurion's Gloves of Conquest
(@koraN10,48213,0.8,1,0,1,1,6,469,0), -- Malurion's Handgrips of Conquest
(@koraN10,48132,0.8,1,0,1,1,6,469,0), -- Malfurion's Handguards of Conquest
(@koraN10,48130,0.8,1,0,1,1,6,469,0), -- Malfurion's Leggings of Conquest
(@koraN10,48215,0.8,1,0,1,1,6,469,0), -- Malfurion's Legguards of Conquest
(@koraN10,48160,0.8,1,0,1,1,6,469,0), -- Malfurion's Trousers of Conquest
(@koraN10,48312,0.8,1,0,1,1,6,469,0), -- Nobundo's Gloves of Conquest
(@koraN10,48342,0.8,1,0,1,1,6,469,0), -- Nobundo's Grips of Conquest
(@koraN10,48284,0.8,1,0,1,1,6,469,0), -- Nobundo's Handguards of Conquest
(@koraN10,48314,0.8,1,0,1,1,6,469,0), -- Nobundo's Kilt of Conquest
(@koraN10,48282,0.9,1,0,1,1,6,469,0), -- Nobundo's Legguards of Conquest
(@koraN10,48344,0.9,1,0,1,1,6,469,0), -- Nobundo's War-Kilt of Conquest
(@koraN10,43959,0.9,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@koraN10,44083,0.9,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@koraN10,48183,0.9,1,0,1,1,6,67,0), -- Runetotem's Gloves of Conquest
(@koraN10,48192,0.9,1,0,1,1,6,67,0), -- Runetotem's Handgrips of Conquest
(@koraN10,48153,0.8,1,0,1,1,6,67,0), -- Runetotem's Handguards of Conquest
(@koraN10,48155,0.9,1,0,1,1,6,67,0), -- Runetotem's Leggings of Conquest
(@koraN10,48190,1,1,0,1,1,6,67,0), -- Runetotem's Legguards of Conquest
(@koraN10,48185,0.7,1,0,1,1,6,67,0), -- Runetotem's Trousers of Conquest
(@koraN10,47773,2,1,0,1,1,6,67,0), -- Sunstrider's Gauntlets of Conquest
(@koraN10,47775,3,1,0,1,1,6,67,0), -- Sunstrider's Leggings of Conquest
(@koraN10,48480,1.2,1,0,1,1,6,469,0), -- Thassarian's Gauntlets of Conquest
(@koraN10,48537,1.2,1,0,1,1,6,469,0), -- Thassarian's Handguards of Conquest
(@koraN10,48533,1.2,1,0,1,1,6,469,0), -- Thassarian's Legguards of Conquest
(@koraN10,48476,1.3,1,0,1,1,6,469,0), -- Thassarian's Legplates of Conquest
(@koraN10,48337,0.9,1,0,1,1,6,67,0), -- Thrall's Gloves of Conquest
(@koraN10,48367,0.9,1,0,1,1,6,67,0), -- Thrall's Grips of Conquest
(@koraN10,48296,0.8,1,0,1,1,6,67,0), -- Thrall's Handguards of Conquest
(@koraN10,48339,0.8,1,0,1,1,6,67,0), -- Thrall's Kilt of Conquest
(@koraN10,48298,0.8,1,0,1,1,6,67,0), -- Thrall's Legguards of Conquest
(@koraN10,48369,0.8,1,0,1,1,6,67,0), -- Thrall's War-Kiltof Conquest
(@koraN10,48603,0.7,1,0,1,1,6,469,0), -- Turalyon's Gauntlets of Conquest
(@koraN10,48574,0.8,1,0,1,1,6,469,0), -- Turalyon's Gloves of Conquest
(@koraN10,48568,0.8,1,0,1,1,6,469,0), -- Turalyon's Greaves of Conquest
(@koraN10,48633,0.8,1,0,1,1,6,469,0), -- Turalyon's Handguards of Conquest
(@koraN10,48635,0.7,1,0,1,1,6,469,0), -- Turalyon's Legguards of Conquest
(@koraN10,48605,0.8,1,0,1,1,6,469,0), -- Turalyon's Legplates of Conquest
(@koraN10,48222,2,1,0,1,1,6,469,0), -- VanCleef's Gauntlets of Conquest
(@koraN10,48220,2,1,0,1,1,6,469,0), -- VanCleef's Legplates of Conquest
(@koraN10,47982,1.1,1,0,1,1,6,469,0), -- Velen's Gloves of Conquest
(@koraN10,48072,1.1,1,0,1,1,6,469,0), -- Velen's Handwraps of Conquest
(@koraN10,47980,1.3,1,0,1,1,6,469,0), -- Velen's Leggings of Conquest
(@koraN10,48074,1.1,1,0,1,1,6,469,0), -- Velen's Pants of Conquest
(@koraN10,48276,3,1,0,1,1,6,67,0), -- Windrunner's Handguards of Conquest
(@koraN10,48254,2,1,0,1,1,6,469,0), -- Windrunner's Handguards of Conquest
(@koraN10,48278,2,1,0,1,1,6,67,0), -- Windrunner's Legguards of Conquest
(@koraN10,48252,2,1,0,1,1,6,469,0), -- Windrunner's Legguards of Conquest
(@koraN10,48375,1.3,1,0,1,1,6,469,0), -- Wrynn's Gauntlets of Conquest
(@koraN10,48449,1.2,1,0,1,1,6,469,0), -- Wrynn's Handguards of Conquest
(@koraN10,48445,1.2,1,0,1,1,6,469,0), -- Wrynn's Legguards of Conquest
(@koraN10,48373,1.1,1,0,1,1,6,469,0), -- Wrynn's Legplates of Conquest
(@koraN10,48067,1.2,1,0,1,1,6,67,0), -- Zabra's Gloves of Conquest
(@koraN10,48097,1.3,1,0,1,1,6,67,0), -- Zabra's Handwraps of Conquest
(@koraN10,48069,1.2,1,0,1,1,6,67,0), -- Zabra's Leggings of Conquest
(@koraN10,48099,1.2,1,0,1,1,6,67,0), -- Zabra's Pants of Conquest
-- Koralon the Flame Watcher(25N)
(@koraN25,47241,11,1,0,2,2,0,0,0), -- Emblem of Triumph
(@koraN25,48241,5,1,0,1,1,6,67,0), -- Garona's Gauntlets of Triumph
(@koraN25,48239,5,1,0,1,1,6,67,0), -- Garona's Legplates of Triumph
(@koraN25,47803,5,1,0,1,1,6,67,0), -- Gul'dan's Gloves of Triumph
(@koraN25,47805,5,1,0,1,1,6,67,0), -- Gul'dan's Leggings of Triumph
(@koraN25,48392,2,1,0,1,1,6,67,0), -- Hellscream's Gauntlets of Triumph
(@koraN25,48462,2,1,0,1,1,6,67,0), -- Hellscream's Handguards of Triumph
(@koraN25,48464,2,1,0,1,1,6,67,0), -- Hellscream's Legguards of Triumph
(@koraN25,48394,2,1,0,1,1,6,67,0), -- Hellscream's Legplates of Triumph
(@koraN25,47782,5,1,0,1,1,6,469,0), -- Kel'Thuzad's Gloves of Triumph
(@koraN25,47780,5,1,0,1,1,6,469,0), -- Kel'Thuzad's Leggings of Triumph
(@koraN25,47753,5,1,0,1,1,6,469,0), -- Kel'Thuzad's Gauntlets of Triumph
(@koraN25,47755,5,1,0,1,1,6,469,0), -- Kel'Thuzad's Leggings of Triumph
(@koraN25,48499,2,1,0,1,1,6,67,0), -- Koltira's Gauntlets of Triumph
(@koraN25,48556,2,1,0,1,1,6,67,0), -- Koltira's Handguards of Triumph
(@koraN25,48554,2,1,0,1,1,6,67,0), -- Koltira's Legguards of Triumph
(@koraN25,48497,2,1,0,1,1,6,67,0), -- Koltira's Legplates of Triumph
(@koraN25,48625,1.8,1,0,1,1,6,67,0), -- Liadrin's Gauntlets of Triumph
(@koraN25,48593,1.9,1,0,1,1,6,67,0), -- Liadrin's Gloves of Triumph
(@koraN25,48591,1.7,1,0,1,1,6,67,0), -- Liadrin's Greaves of Triumph
(@koraN25,48658,1.8,1,0,1,1,6,67,0), -- Liadrin's Handguards of Triumph
(@koraN25,48660,1.6,1,0,1,1,6,67,0), -- Liadrin's Legguards of Triumph
(@koraN25,48623,1.7,1,0,1,1,6,67,0), -- Liadrin's Legplates of Triumph
(@koraN25,48163,1.6,1,0,1,1,6,469,0), -- Malfurion's Gloves of Triumph
(@koraN25,48212,1.6,1,0,1,1,6,469,0), -- Malurion's Handgrips of Triumph
(@koraN25,48133,1.6,1,0,1,1,6,469,0), -- Malfurion's Handguards of Triumph
(@koraN25,48135,1.6,1,0,1,1,6,469,0), -- Malfurion's Leggings of Triumph
(@koraN25,48210,1.6,1,0,1,1,6,469,0), -- Malfurion's Legguards of Triumph
(@koraN25,48165,1.7,1,0,1,1,6,469,0), -- Malfurion's Trousers of Triumph
(@koraN25,48317,1.8,1,0,1,1,6,469,0), -- Nobundo's Gloves of Triumph
(@koraN25,48347,1.7,1,0,1,1,6,469,0), -- Nobundo's Grips of Triumph
(@koraN25,48286,1.7,1,0,1,1,6,469,0), -- Nobundo's Handguards of Triumph
(@koraN25,48319,1.6,1,0,1,1,6,469,0), -- Nobundo's Kilt of Triumph
(@koraN25,48288,1.7,1,0,1,1,6,469,0), -- Nobundo's Legguards of Triumph
(@koraN25,48349,1.6,1,0,1,1,6,469,0), -- Nobundo's War-Kilt of Triumph
(@koraN25,43959,1,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@koraN25,44083,0.9,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@koraN25,41641,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Dominance
(@koraN25,41626,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Salvation
(@koraN25,41841,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Triumph
(@koraN25,42118,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Band of Dominance
(@koraN25,42119,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Band of Triumph
(@koraN25,41631,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Dominance
(@koraN25,41618,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Salvation
(@koraN25,41833,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Triumph
(@koraN25,41636,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Dominance
(@koraN25,41622,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Salvation
(@koraN25,41837,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Triumph
(@koraN25,40984,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Bracers of Salvation
(@koraN25,40890,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Bracers of Triumph
(@koraN25,41144,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Chain Gauntlets
(@koraN25,41206,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Chain Leggings
(@koraN25,42078,1.1,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Ascendancy
(@koraN25,42080,1.1,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Deliverance
(@koraN25,42076,1,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Dominance
(@koraN25,42079,1,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Salvation
(@koraN25,42077,1.1,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Subjugation
(@koraN25,42081,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Triumph
(@koraN25,42082,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Victory
(@koraN25,41899,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cord of Dominance
(@koraN25,41882,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cord of Salvation
(@koraN25,41910,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cuffs of Dominance
(@koraN25,41894,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cuffs of Salvation
(@koraN25,41774,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Dragonhide Gloves
(@koraN25,41668,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Dragonhide Legguards
(@koraN25,40811,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Dreadplate Gauntlets
(@koraN25,40851,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Dreadplate Legguards
(@koraN25,42018,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Felweave Handguards
(@koraN25,42006,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Felweave Trousers
(@koraN25,40978,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Girdle of Salvation
(@koraN25,40883,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Girdle of Triumph
(@koraN25,40979,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Greaves of Salvation
(@koraN25,40884,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Greaves of Triumph
(@koraN25,41288,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Kodohide Gloves
(@koraN25,41299,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Kodohide Legguards
(@koraN25,41768,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Leather Gloves
(@koraN25,41656,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Leather Legguards
(@koraN25,41138,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Linked Gauntlets
(@koraN25,41200,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Linked Leggings
(@koraN25,41008,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Mail Gauntlets
(@koraN25,41034,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Mail Leggings
(@koraN25,41875,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Mooncloth Gloves
(@koraN25,41865,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Mooncloth Leggings
(@koraN25,40928,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Ornamented Gloves
(@koraN25,40940,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Ornamented Legplates
(@koraN25,42044,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Ascendancy
(@koraN25,42046,1.2,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Deliverance
(@koraN25,42043,1.2,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Dominance
(@koraN25,42047,1.2,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Salvation
(@koraN25,42045,1.2,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Subjugation
(@koraN25,46374,1.1,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Sundering
(@koraN25,42041,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Triumph
(@koraN25,42042,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Victory
(@koraN25,40810,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Plate Gauntlets
(@koraN25,40850,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Plate Legguards
(@koraN25,41002,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Ringmail Gauntlets
(@koraN25,41028,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Ringmail Leggings
(@koraN25,41076,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Dominance
(@koraN25,41056,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Salvation
(@koraN25,41231,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Triumph
(@koraN25,41941,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Satin Gloves
(@koraN25,41928,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Satin Leggings
(@koraN25,40812,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Scaled Gauntlets
(@koraN25,40852,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Scaled Legguards
(@koraN25,41972,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Silk Handguards
(@koraN25,41960,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Silk Trousers
(@koraN25,41904,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Treads of Dominance
(@koraN25,41886,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Treads of Salvation
(@koraN25,41071,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Dominance
(@koraN25,41052,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Salvation
(@koraN25,41236,4,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Triumph
(@koraN25,41066,1.4,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Dominance
(@koraN25,41061,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Salvation
(@koraN25,41226,3,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Triumph
(@koraN25,41294,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Wyrmhide Gloves
(@koraN25,41305,3,1,0,1,1,0,0,0), -- Relentless Gladiator's Wyrmhide Legguards
(@koraN25,48182,1.6,1,0,1,1,6,67,0), -- Runetotem's Gloves of Triumph
(@koraN25,48193,1.6,1,0,1,1,6,67,0), -- Runetotem's Handgrips of Triumph
(@koraN25,48152,1.6,1,0,1,1,6,67,0), -- Runetotem's Handguards of Triumph
(@koraN25,48150,1.5,1,0,1,1,6,67,0), -- Runetotem's Leggings of Triumph
(@koraN25,48195,1.4,1,0,1,1,6,67,0), -- Runetotem's Legguards of Triumph
(@koraN25,48180,1.5,1,0,1,1,6,67,0), -- Runetotem's Trousers of Triumph
(@koraN25,47772,5,1,0,1,1,6,67,0), -- Sunstrider's Gauntlets of Triumph
(@koraN25,47770,5,1,0,1,1,6,67,0), -- Sunstrider's Leggings of Triumph
(@koraN25,48482,2,1,0,1,1,6,469,0), -- Thassarian's Gauntlets of Triumph
(@koraN25,48539,2,1,0,1,1,6,469,0), -- Thassarian's Handguards of Triumph
(@koraN25,48541,2,1,0,1,1,6,469,0), -- Thassarian's Legguards of Triumph
(@koraN25,48484,2,1,0,1,1,6,469,0), -- Thassarian's Legplates of Triumph
(@koraN25,48334,1.6,1,0,1,1,6,67,0), -- Thrall's Gloves of Triumph
(@koraN25,48364,1.6,1,0,1,1,6,67,0), -- Thrall's Grips of Triumph
(@koraN25,48301,1.8,1,0,1,1,6,67,0), -- Thrall's Handguards of Triumph
(@koraN25,48332,1.6,1,0,1,1,6,67,0), -- Thrall's Kilt of Triumph
(@koraN25,48303,1.6,1,0,1,1,6,67,0), -- Thrall's Legguards of Triumph
(@koraN25,48362,1.5,1,0,1,1,6,67,0), -- Thrall's War-Kiltof Triumph
(@koraN25,48608,1.6,1,0,1,1,6,469,0), -- Turalyon's Gauntlets of Triumph
(@koraN25,48576,1.6,1,0,1,1,6,469,0), -- Turalyon's Gloves of Triumph
(@koraN25,48578,1.6,1,0,1,1,6,469,0), -- Turalyon's Greaves of Triumph
(@koraN25,48640,1.7,1,0,1,1,6,469,0), -- Turalyon's Handguards of Triumph
(@koraN25,48638,1.6,1,0,1,1,6,469,0), -- Turalyon's Legguards of Triumph
(@koraN25,48610,1.6,1,0,1,1,6,469,0), -- Turalyon's Legplates of Triumph
(@koraN25,48224,5,1,0,1,1,6,469,0), -- VanCleef's Gauntlets of Triumph
(@koraN25,48226,5,1,0,1,1,6,469,0), -- VanCleef's Legplates of Triumph
(@koraN25,47983,2,1,0,1,1,6,469,0), -- Velen's Gloves of Triumph
(@koraN25,48077,3,1,0,1,1,6,469,0), -- Velen's Handwraps of Triumph
(@koraN25,47985,2,1,0,1,1,6,469,0), -- Velen's Leggings of Triumph
(@koraN25,48079,3,1,0,1,1,6,469,0), -- Velen's Pants of Triumph
(@koraN25,48273,5,1,0,1,1,6,67,0), -- Windrunner's Handguards of Triumph
(@koraN25,48256,5,1,0,1,1,6,469,0), -- Windrunner's Handguards of Triumph
(@koraN25,48258,5,1,0,1,1,6,67,0), -- Windrunner's Legguards of Triumph
(@koraN25,48271,5,1,0,1,1,6,469,0), -- Windrunner's Legguards of Triumph
(@koraN25,48377,3,1,0,1,1,6,469,0), -- Wrynn's Gauntlets of Triumph
(@koraN25,48452,2,1,0,1,1,6,469,0), -- Wrynn's Handguards of Triumph
(@koraN25,48446,2,1,0,1,1,6,469,0), -- Wrynn's Legguards of Triumph
(@koraN25,48379,2,1,0,1,1,6,469,0), -- Wrynn's Legplates of Triumph
(@koraN25,48066,3,1,0,1,1,6,67,0), -- Zabra's Gloves of Triumph
(@koraN25,48096,3,1,0,1,1,6,67,0), -- Zabra's Handwraps of Triumph
(@koraN25,48064,2,1,0,1,1,6,67,0), -- Zabra's Leggings of Triumph
(@koraN25,48094,2,1,0,1,1,6,67,0), -- Zabra's Pants of Triumph

-- Toravon the Ice Watcher(10N)
(@toraN10,50114,5,1,0,1,1,0,0,0), -- Ahn'Kahar Blood Hunter's Handguards
(@toraN10,50116,5,1,0,1,1,0,0,0), -- Ahn'Kahar Blood Hunter's Legguards
(@toraN10,50275,5,1,0,1,1,0,0,0), -- Bloodmage Gloves
(@toraN10,50277,5,1,0,1,1,0,0,0), -- Bloodmage Leggings
(@toraN10,50766,2,1,0,1,1,0,0,0), -- Crimson Acolyte Gloves
(@toraN10,50391,2,1,0,1,1,0,0,0), -- Crimson Acolyte Handwraps
(@toraN10,50769,2,1,0,1,1,0,0,0), -- Crimson Acolyte Leggings
(@toraN10,50393,2,1,0,1,1,0,0,0), -- Crimson Acolyte Pants
(@toraN10,50240,5,1,0,1,1,0,0,0), -- Dark Coven Gloves
(@toraN10,50242,5,1,0,1,1,0,0,0), -- Dark Coven Leggings
(@toraN10,50842,1.5,1,0,1,1,0,0,0), -- Frost Witch's Gloves
(@toraN10,50831,1.7,1,0,1,1,0,0,0), -- Frost Witch's Grips
(@toraN10,50836,1.7,1,0,1,1,0,0,0), -- Frost Witch's Handguards
(@toraN10,50844,1.6,1,0,1,1,0,0,0), -- Frost Witch's Kilt
(@toraN10,50838,1.5,1,0,1,1,0,0,0), -- Frost Witch's Legguards
(@toraN10,50833,1.6,1,0,1,1,0,0,0), -- Frost Witch's War-Kilt
(@toraN10,50107,1.6,1,0,1,1,0,0,0), -- Lasherweave Gauntlets
(@toraN10,50822,1.7,1,0,1,1,0,0,0), -- Lasherweave Gloves
(@toraN10,50827,1.8,1,0,1,1,0,0,0), -- Lasherweave Handgrips
(@toraN10,50825,1.5,1,0,1,1,0,0,0), -- Lasherweave Legguards
(@toraN10,50109,1.7,1,0,1,1,0,0,0), -- Lasherweave Legplates
(@toraN10,50820,1.6,1,0,1,1,0,0,0), -- Lasherweave Trousers
(@toraN10,50327,1.6,1,0,1,1,0,0,0), -- Lightsworn Gauntlets
(@toraN10,50868,1.5,1,0,1,1,0,0,0), -- Lightsworn Gloves
(@toraN10,50866,1.8,1,0,1,1,0,0,0), -- Lightsworn Greaves
(@toraN10,50863,1.7,1,0,1,1,0,0,0), -- Lightsworn Handguards
(@toraN10,50861,1.7,1,0,1,1,0,0,0), -- Lightsworn Legguards
(@toraN10,50325,1.8,1,0,1,1,0,0,0), -- Lightsworn Legplates
(@toraN10,44083,1,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@toraN10,43959,1,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@toraN10,41641,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Dominance
(@toraN10,41626,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Salvation
(@toraN10,41841,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Armwraps of Triumph
(@toraN10,42118,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Band of Dominance
(@toraN10,42119,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Band of Triumph
(@toraN10,41631,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Dominance
(@toraN10,41618,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Salvation
(@toraN10,41833,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Belt of Triumph
(@toraN10,41636,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Dominance
(@toraN10,41622,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Salvation
(@toraN10,41837,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Boots of Triumph
(@toraN10,40984,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Bracers of Salvation
(@toraN10,40890,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Bracers of Triumph
(@toraN10,41144,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Chain Gauntlets
(@toraN10,41206,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Chain Leggings
(@toraN10,42078,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Ascendancy
(@toraN10,42080,0.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Deliverance
(@toraN10,42076,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Dominance
(@toraN10,42079,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Salvation
(@toraN10,42077,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Subjugation
(@toraN10,42081,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Triumph
(@toraN10,42082,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cloak of Victory
(@toraN10,41899,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Cord of Dominance
(@toraN10,41882,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Cord of Salvation
(@toraN10,41910,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Cuffs of Dominance
(@toraN10,41894,1.4,1,1,1,1,0,0,0), -- Relentless Gladiator's Cuffs of Salvation
(@toraN10,41774,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Dragonhide Gloves
(@toraN10,41668,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Dragonhide Legguards
(@toraN10,40811,1.7,1,0,1,1,0,0,0), -- Relentless Gladiator's Dreadplate Gauntlets
(@toraN10,40851,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Dreadplate Legguards
(@toraN10,42018,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Felweave Handguards
(@toraN10,42006,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Felweave Trousers
(@toraN10,40978,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Girdle of Salvation
(@toraN10,40883,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Girdle of Triumph
(@toraN10,40979,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Greaves of Salvation
(@toraN10,40884,1.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Greaves of Triumph
(@toraN10,41288,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Kodohide Gloves
(@toraN10,41299,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Kodohide Legguards
(@toraN10,41768,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Leather Gloves
(@toraN10,41656,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Leather Legguards
(@toraN10,41138,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Linked Gauntlets
(@toraN10,41200,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Linked Leggings
(@toraN10,41008,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Mail Gauntlets
(@toraN10,41034,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Mail Leggings
(@toraN10,41875,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Mooncloth Gloves
(@toraN10,41865,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Mooncloth Leggings
(@toraN10,40928,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Ornamented Gloves
(@toraN10,40940,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Ornamented Legplates
(@toraN10,42044,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Ascendancy
(@toraN10,42046,0.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Deliverance
(@toraN10,42043,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Dominance
(@toraN10,42047,0.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Salvation
(@toraN10,42045,0.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Subjugation
(@toraN10,46374,0.5,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Sundering
(@toraN10,42041,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Triumph
(@toraN10,42042,1.3,1,1,1,1,0,0,0), -- Relentless Gladiator's Pendant of Victory
(@toraN10,40810,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Plate Gauntlets
(@toraN10,40850,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Plate Legguards
(@toraN10,41002,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Ringmail Gauntlets
(@toraN10,41028,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Ringmail Leggings
(@toraN10,41076,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Dominance
(@toraN10,41056,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Salvation
(@toraN10,41231,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Sabatons of Triumph
(@toraN10,41941,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Satin Gloves
(@toraN10,41928,1.5,1,0,1,1,0,0,0), -- Relentless Gladiator's Satin Leggings
(@toraN10,40812,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Scaled Gauntlets
(@toraN10,40852,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Scaled Legguards
(@toraN10,41972,1.3,1,0,1,1,0,0,0), -- Relentless Gladiator's Silk Handguards
(@toraN10,41960,1.6,1,0,1,1,0,0,0), -- Relentless Gladiator's Silk Trousers
(@toraN10,41904,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Treads of Dominance
(@toraN10,41886,1.4,1,1,1,1,0,0,0), -- Relentless Gladiator's Treads of Salvation
(@toraN10,41071,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Dominance
(@toraN10,41052,0.8,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Salvation
(@toraN10,41236,1.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Waistguard of Triumph
(@toraN10,41066,0.7,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Dominance
(@toraN10,41061,0.6,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Salvation
(@toraN10,41226,1.4,1,1,1,1,0,0,0), -- Relentless Gladiator's Wristguards of Triumph
(@toraN10,41294,1.4,1,0,1,1,0,0,0), -- Relentless Gladiator's Wyrmhide Gloves
(@toraN10,41305,1.3,1,0,1,1,0,0,0), -- Relentless Gladiator's Wyrmhide Legguards
(@toraN10,50095,3,1,0,1,1,0,0,0), -- Scourgelord Gauntlets
(@toraN10,50856,2,1,0,1,1,0,0,0), -- Scourgelord Handguards
(@toraN10,50854,2,1,0,1,1,0,0,0), -- Scourgelord Legguards
(@toraN10,50097,2,1,0,1,1,0,0,0), -- Scourgelord Legplates
(@toraN10,50088,5,1,0,1,1,0,0,0), -- Shadowblade Gauntlets
(@toraN10,50090,5,1,0,1,1,0,0,0), -- Shadowblade Legplates
(@toraN10,50079,2,1,0,1,1,0,0,0), -- Ymirjar Lord's Gauntlets
(@toraN10,50849,2,1,0,1,1,0,0,0), -- Ymirjar Lord's Handguards
(@toraN10,50847,2,1,0,1,1,0,0,0), -- Ymirjar Lord's Legguards
(@toraN10,50081,2,1,0,1,1,0,0,0), -- Ymirjar Lord's Legplates
-- Toravon the Ice Watcher(25N)
(@toraN25,44083,1,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)
(@toraN25,43959,0.9,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@toraN25,51154,7,1,0,1,1,0,0,0), -- Sanctified Ahn'Kahar Blood Hunter's Handguards
(@toraN25,51152,7,1,0,1,1,0,0,0), -- Sanctified Ahn'Kahar Blood Hunter's Legguards
(@toraN25,51159,7,1,0,1,1,0,0,0), -- Sanctified Bloodmage Gloves
(@toraN25,51157,7,1,0,1,1,0,0,0), -- Sanctified Bloodmage Leggings
(@toraN25,51179,4,1,0,1,1,0,0,0), -- Sanctified Crimson Acolyte Gloves
(@toraN25,51183,4,1,0,1,1,0,0,0), -- Sanctified Crimson Acolyte Handwraps
(@toraN25,51177,4,1,0,1,1,0,0,0), -- Sanctified Crimson Acolyte Leggings
(@toraN25,51181,3,1,0,1,1,0,0,0), -- Sanctified Crimson Acolyte Pants
(@toraN25,51209,7,1,0,1,1,0,0,0), -- Sanctified Dark Coven Gloves
(@toraN25,51207,7,1,0,1,1,0,0,0), -- Sanctified Dark Coven Leggings
(@toraN25,51201,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's Gloves
(@toraN25,51196,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's Grips
(@toraN25,51191,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's Handguards
(@toraN25,51203,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's Kilt
(@toraN25,51193,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's Legguards
(@toraN25,51198,2,1,0,1,1,0,0,0), -- Sanctified Frost Witch's War-Kilt
(@toraN25,51138,2,1,0,1,1,0,0,0), -- Sanctified Lasherweave Gauntlets
(@toraN25,51148,3,1,0,1,1,0,0,0), -- Sanctified Lasherweave Gloves
(@toraN25,51144,3,1,0,1,1,0,0,0), -- Sanctified Lasherweave Handgrips
(@toraN25,51142,2,1,0,1,1,0,0,0), -- Sanctified Lasherweave Legguards
(@toraN25,51136,2,1,0,1,1,0,0,0), -- Sanctified Lasherweave Legplates
(@toraN25,51146,3,1,0,1,1,0,0,0), -- Sanctified Lasherweave Trousers
(@toraN25,51163,3,1,0,1,1,0,0,0), -- Sanctified Lightsworn Gauntlets
(@toraN25,51169,3,1,0,1,1,0,0,0), -- Sanctified Lightsworn Gloves
(@toraN25,51168,2,1,0,1,1,0,0,0), -- Sanctified Lightsworn Greaves
(@toraN25,51172,3,1,0,1,1,0,0,0), -- Sanctified Lightsworn Handguards
(@toraN25,51171,2,1,0,1,1,0,0,0), -- Sanctified Lightsworn Legguards
(@toraN25,51161,3,1,0,1,1,0,0,0), -- Sanctified Lightsworn Legplates
(@toraN25,51128,4,1,0,1,1,0,0,0), -- Sanctified Scourgelord Gauntlets
(@toraN25,51132,4,1,0,1,1,0,0,0), -- Sanctified Scourgelord Handguards
(@toraN25,51131,4,1,0,1,1,0,0,0), -- Sanctified Scourgelord Legguards
(@toraN25,51126,4,1,0,1,1,0,0,0), -- Sanctified Scourgelord Legplates
(@toraN25,51188,7,1,0,1,1,0,0,0), -- Sanctified Shadowblade Gauntlets
(@toraN25,51186,7,1,0,1,1,0,0,0), -- Sanctified Shadowblade Legplates
(@toraN25,51213,4,1,0,1,1,0,0,0), -- Sanctified Ymirjar Lord's Gauntlets
(@toraN25,51217,4,1,0,1,1,0,0,0), -- Sanctified Ymirjar Lord's Handguards
(@toraN25,51216,4,1,0,1,1,0,0,0), -- Sanctified Ymirjar Lord's Legguards
(@toraN25,51211,4,1,0,1,1,0,0,0), -- Sanctified Ymirjar Lord's Legplates
(@toraN25,51345,0.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Armwraps of Dominance
(@toraN25,51342,1,1,1,1,1,0,0,0), -- Wrathful Gladiator's Armwraps of Salvation
(@toraN25,51370,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Armwraps of Triumph
(@toraN25,51336,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Band of Dominance
(@toraN25,51358,1.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Band of Triumph
(@toraN25,51343,1.1,1,1,1,1,0,0,0), -- Wrathful Gladiator's Belt of Dominance
(@toraN25,51340,1.2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Belt of Salvation
(@toraN25,51368,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Belt of Triumph
(@toraN25,51344,1.2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Boots of Dominance
(@toraN25,51341,1.2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Boots of Salvation
(@toraN25,51369,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Boots of Triumph
(@toraN25,51361,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Bracers of Salvation
(@toraN25,51364,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Bracers of Triumph
(@toraN25,51459,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Chain Gauntlets
(@toraN25,51461,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Chain Leggings
(@toraN25,51334,0.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Ascendancy
(@toraN25,51348,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Deliverance
(@toraN25,51330,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Dominance
(@toraN25,51346,0.7,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Salvation
(@toraN25,51332,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Subjugation
(@toraN25,51354,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Triumph
(@toraN25,51356,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cloak of Victory
(@toraN25,51327,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cord of Dominance
(@toraN25,51365,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cord of Salvation
(@toraN25,51329,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cuffs of Dominance
(@toraN25,51367,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Cuffs of Salvation
(@toraN25,51426,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Dragonhide Gloves
(@toraN25,51428,1.2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Dragonhide Legguards
(@toraN25,51414,3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Dreadplate Gauntlets
(@toraN25,51416,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Dreadplate Legguards
(@toraN25,51537,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Felweave Handguards
(@toraN25,51539,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Felweave Trousers
(@toraN25,51359,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Girdle of Salvation
(@toraN25,51362,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Girdle of Triumph
(@toraN25,51360,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Greaves of Salvation
(@toraN25,51363,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Greaves of Triumph
(@toraN25,51420,1.1,1,0,1,1,0,0,0), -- Wrathful Gladiator's Kodohide Gloves
(@toraN25,51422,1.2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Kodohide Legguards
(@toraN25,51493,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Leather Gloves
(@toraN25,51495,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Leather Legguards
(@toraN25,51504,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Linked Gauntlets
(@toraN25,51506,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Linked Leggings
(@toraN25,51510,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Mail Gauntlets
(@toraN25,51512,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Mail Leggings
(@toraN25,51483,1.9,1,0,1,1,0,0,0), -- Wrathful Gladiator's Mooncloth Gloves
(@toraN25,51485,2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Mooncloth Leggings
(@toraN25,51469,1.9,1,0,1,1,0,0,0), -- Wrathful Gladiator's Ornamented Gloves
(@toraN25,51471,1.8,1,0,1,1,0,0,0), -- Wrathful Gladiator's Ornamented Legplates
(@toraN25,51335,0.7,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Ascendancy
(@toraN25,51349,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Deliverance
(@toraN25,51331,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Dominance
(@toraN25,51347,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Salvation
(@toraN25,51333,0.8,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Subjugation
(@toraN25,51353,0.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Sundering
(@toraN25,51355,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Triumph
(@toraN25,51357,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Pendant of Victory
(@toraN25,51542,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Plate Gauntlets
(@toraN25,51544,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Plate Legguards
(@toraN25,51498,1.1,1,0,1,1,0,0,0), -- Wrathful Gladiator's Ringmail Gauntlets
(@toraN25,51500,1.2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Ringmail Leggings
(@toraN25,51375,1.1,1,0,1,1,0,0,0), -- Wrathful Gladiator's Sabatons of Dominance
(@toraN25,51372,1.1,1,0,1,1,0,0,0), -- Wrathful Gladiator's Sabatons of Salvation
(@toraN25,51351,2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Sabatons of Triumph
(@toraN25,51488,1.9,1,0,1,1,0,0,0), -- Wrathful Gladiator's Satin Gloves
(@toraN25,51490,1.8,1,0,1,1,0,0,0), -- Wrathful Gladiator's Satin Leggings
(@toraN25,51475,2,1,0,1,1,0,0,0), -- Wrathful Gladiator's Scaled Gauntlets
(@toraN25,51477,1.8,1,0,1,1,0,0,0), -- Wrathful Gladiator's Scaled Legguards
(@toraN25,51464,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Silk Handguards
(@toraN25,51466,4,1,0,1,1,0,0,0), -- Wrathful Gladiator's Silk Trousers
(@toraN25,51328,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Treads of Dominance
(@toraN25,51366,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Treads of Salvation
(@toraN25,51374,1.1,1,1,1,1,0,0,0), -- Wrathful Gladiator's Waistguard of Dominance
(@toraN25,51371,1.2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Waistguard of Salvation
(@toraN25,51350,2,1,1,1,1,0,0,0), -- Wrathful Gladiator's Waistguard of Triumph
(@toraN25,51376,1,1,1,1,1,0,0,0), -- Wrathful Gladiator's Wristguards of Dominance
(@toraN25,51373,1,1,1,1,1,0,0,0), -- Wrathful Gladiator's Wristguards of Salvation
(@toraN25,51352,1.9,1,1,1,1,0,0,0), -- Wrathful Gladiator's Wristguards of Triumph
(@toraN25,51434,1.3,1,0,1,1,0,0,0), -- Wrathful Gladiator's Wyrmhide Gloves
(@toraN25,51436,1.2,1,0,1,1,0,0,0); -- Wrathful Gladiator's Wyrmhide Legguards

-- Archavon Warder
UPDATE `creature_template` SET `lootid`=@ward1N10 WHERE `entry`=@ward1N10;
UPDATE `creature_template` SET `lootid`=@ward1N25 WHERE `entry`=@ward1N25;

-- Tempest Warder
UPDATE `creature_template` SET `lootid`=@ward2N10 WHERE `entry`=@ward2N10;
UPDATE `creature_template` SET `lootid`=@ward2N25 WHERE `entry`=@ward2N25;

-- Flame Warder
UPDATE `creature_template` SET `lootid`=@ward3N10 WHERE `entry`=@ward3N10;
UPDATE `creature_template` SET `lootid`=@ward3N25 WHERE `entry`=@ward3N25;

-- Archavon the Stone Watcher
UPDATE `creature_template` SET `lootid`=@archN10 WHERE `entry`=@archN10;
UPDATE `creature_template` SET `lootid`=@archN25 WHERE `entry`=@archN25;

-- Emalon the Storm Watcher
UPDATE `creature_template` SET `lootid`=@emalN10 WHERE `entry`=@emalN10;
UPDATE `creature_template` SET `lootid`=@emalN25 WHERE `entry`=@emalN25;

-- Koralon the Flame Watcher
UPDATE `creature_template` SET `lootid`=@koraN10 WHERE `entry`=@koraN10;
UPDATE `creature_template` SET `lootid`=@koraN25 WHERE `entry`=@koraN25;

-- Toravon the Ice Watcher
UPDATE `creature_template` SET `lootid`=@toraN10 WHERE `entry`=@toraN10;
UPDATE `creature_template` SET `lootid`=@toraN25 WHERE `entry`=@toraN25;

-- Gold loot(non-blizzlike)
-- Archavon the Stone Watcher
SET @arch10g :=362352;
SET @arch25g :=@arch10g*2;
UPDATE `creature_template` SET `mingold`=@arch10g,`maxgold`=@arch10g WHERE `entry`=@archN10;
UPDATE `creature_template` SET `mingold`=@arch25g,`maxgold`=@arch25g WHERE `entry`=@archN25;
-- Emalon the Storm Watcher
SET @emal10g :=1026994;
SET @emal25g :=@emal10g*2;
UPDATE `creature_template` SET `mingold`=@emal10g,`maxgold`=@emal10g WHERE `entry`=@emalN10;
UPDATE `creature_template` SET `mingold`=@emal25g,`maxgold`=@emal25g WHERE `entry`=@emalN25;
-- Koralon the Flame Watcher(~2.5x @emal10g)
SET @kora10g :=@emal10g*2.5;
SET @kora25g :=@kora10g*2;
UPDATE `creature_template` SET `mingold`=@kora10g,`maxgold`=@kora10g WHERE `entry`=@koraN10;
UPDATE `creature_template` SET `mingold`=@kora25g,`maxgold`=@kora25g WHERE `entry`=@koraN25;
-- Toravon the Ice Watcher(~2.5x @kora10g)
SET @tora10g :=@kora10g*2.5;
SET @tora25g :=@tora10g*2;
UPDATE `creature_template` SET `mingold`=@tora10g,`maxgold`=@tora10g WHERE `entry`=@toraN10;
UPDATE `creature_template` SET `mingold`=@tora25g,`maxgold`=@tora25g WHERE `entry`=@toraN25;

-- Damage and Health correction in Bosses
-- 10N
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=35,`baseattacktime`=2000 WHERE `entry` IN (31125,33993,35013,38433);
-- 25N
UPDATE `creature_template` SET `mindmg`=549,`maxdmg`=723,`attackpower`=845,`dmg_multiplier`=35,`baseattacktime`=2000 WHERE `entry` IN (311250,339930,350130,384330);
UPDATE `creature_template` SET `Health_mod`=950 WHERE `entry`=350130;
UPDATE `creature_template` SET `Health_mod`=1080 WHERE `entry`=384330;

/* SPAWNS AND WAYPOINTS */
-- Cleanup instance
DELETE FROM `creature` WHERE `guid` IN 
(
251742,251743,251776,251777,251778,251779,251774,251775,251744,251745,251752,251753,251754,251755,251772,251773,251780,251781
);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
-- 10-Players
(251742,38433,624,1,1,0,0,-43.4451,-293.042,91.1688,1.54881,300,0,0,4601850,0,0,0),
(251776,35143,624,1,1,0,0,-218.368,-34.4624,97.593,1.54607,300,0,0,674050,0,0,2),
(251778,32353,624,1,1,0,0,66.5822,-101.975,97.6013,3.164,300,0,0,378000,0,0,2),
(251774,32353,624,1,1,0,0,-131.145,-103.192,103.537,0.0106094,300,0,0,378000,0,0,2),
(251744,38482,624,1,1,0,0,-43.4155,-204.302,97.2947,1.55688,300,0,0,808860,0,0,2),
(251752,31125,624,1,1,0,0,143.131,-101.948,91.3024,3.13632,300,0,0,2300925,0,0,0),
(251754,33993,624,1,1,0,0,-219.247,-290.812,91.4671,1.52879,300,0,0,2789000,212900,0,0),
(251772,35013,624,1,1,0,0,-218.876,84.0773,91.4661,4.75756,300,0,0,4183500,0,0,0),
(251780,34015,624,1,1,0,0,-218.934,-210.63,97.5929,1.59007,300,0,0,674050,41690,0,2),
-- 25-Players
(251743,38433,624,2,1,0,0,-43.4451,-293.042,91.1688,1.54881,300,0,0,15060600,0,0,0),
(251777,35143,624,2,1,0,0,-218.368,-34.4624,97.593,1.54607,300,0,0,2696200,0,0,2),
(251779,32353,624,2,1,0,0,66.5822,-101.975,97.6013,3.164,300,0,0,756000,0,0,2),
(251775,32353,624,2,1,0,0,-131.145,-103.192,103.537,0.0106094,300,0,0,756000,0,0,2),
(251745,38482,624,2,1,0,0,-43.4155,-204.302,97.2947,1.55688,300,0,0,1617720,0,0,2),
(251753,31125,624,2,1,0,0,143.131,-101.948,91.3024,3.13632,300,0,0,9970675,0,0,0),
(251755,33993,624,2,1,0,0,-219.247,-290.812,91.4671,1.52879,300,0,0,11156000,212900,0,0),
(251773,35013,624,2,1,0,0,-218.876,84.0773,91.4661,4.75756,300,0,0,13247750,0,0,0),
(251781,34015,624,2,1,0,0,-218.934,-210.63,97.5929,1.59007,300,0,0,2696200,41690,0,2);

-- Waypoints and addons
DELETE FROM `waypoint_data` WHERE `id` IN 
(
2517440,2517800,2517780,2517760,2517740,
2517450,2517810,2517790,2517770,2517750
);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES 
-- 10-Players
(2517440,1,-43.2422,-178.741,97.2947,0,0,0,100,0),
(2517440,2,-43.4931,-207.764,97.2947,0,0,0,100,0),
(2517800,1,-219.14,-173.743,97.5929,0,0,0,100,0),
(2517800,2,-218.692,-141.164,104.302,0,0,0,100,0),
(2517800,3,-203.755,-120.257,102.945,0,0,0,100,0),
(2517800,4,-217.953,-131.002,102.955,0,0,0,100,0),
(2517800,5,-233.901,-118.52,102.942,0,0,0,100,0),
(2517800,6,-218.642,-130.55,102.954,0,0,0,100,0),
(2517800,7,-219.034,-210.534,97.593,0,0,0,100,0),
(2517780,1,27.7168,-102.158,97.351,0,0,0,100,0),
(2517780,2,65.7966,-101.862,97.5032,0,0,0,100,0),
(2517760,1,-218.422,3.00069,97.593,0,0,0,100,0),
(2517760,2,-218.602,-34.1513,97.593,0,0,0,100,0),
(2517740,1,-97.7939,-102.838,103.188,0,0,0,100,0),
(2517740,2,-130.829,-102.736,103.533,0,0,0,100,0),
-- 25-Players
(2517450,1,-43.2422,-178.741,97.2947,0,0,0,100,0),
(2517450,2,-43.4931,-207.764,97.2947,0,0,0,100,0),
(2517810,1,-219.14,-173.743,97.5929,0,0,0,100,0),
(2517810,2,-218.692,-141.164,104.302,0,0,0,100,0),
(2517810,3,-203.755,-120.257,102.945,0,0,0,100,0),
(2517810,4,-217.953,-131.002,102.955,0,0,0,100,0),
(2517810,5,-233.901,-118.52,102.942,0,0,0,100,0),
(2517810,6,-218.642,-130.55,102.954,0,0,0,100,0),
(2517810,7,-219.034,-210.534,97.593,0,0,0,100,0),
(2517790,1,27.7168,-102.158,97.351,0,0,0,100,0),
(2517790,2,65.7966,-101.862,97.5032,0,0,0,100,0),
(2517770,1,-218.422,3.00069,97.593,0,0,0,100,0),
(2517770,2,-218.602,-34.1513,97.593,0,0,0,100,0),
(2517750,1,-97.7939,-102.838,103.188,0,0,0,100,0),
(2517750,2,-130.829,-102.736,103.533,0,0,0,100,0);

DELETE FROM `creature_addon` WHERE `guid` IN 
(
251744,251774,251776,251778,251780,
251745,251775,251777,251779,251781
);
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES 
-- 10-Players
(251744,2517440),
(251774,2517740),
(251776,2517760),
(251778,2517780),
(251780,2517800),
-- 25-Players
(251745,2517440),
(251775,2517740),
(251777,2517760),
(251779,2517780),
(251781,2517800);

/* Faction FIXes */
-- Tempest Warder(25N) and Emalon the Storm Watcher(25N)
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (@ward3N25,@emalN25);

/* ######################
### ERROR_CLEANUP.sql ###
###################### */

-- Table 'reference_loot_template' entry 34097 isn't reference id and not referenced from loot, and then useless.
DELETE FROM `reference_loot_template` WHERE `entry`=34097;

/* ################
### version.sql ###
################ */

-- Version
UPDATE `version` SET `db_version`='BBDB_8375_003';