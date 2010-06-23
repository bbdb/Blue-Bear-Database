/*
BBDB COMMENT:
	~ STATUS: 25%
*/

-- Creature for diff_entry
DELETE FROM `creature_template` WHERE `entry` IN (350130,384330,339930,311250);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(350130, 0, 0, 0, 0, 0, 29524, 0, 0, 0, 'Koralon the Flame Watcher(1)', '', '', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 108, 350130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 300, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299803, 0, '', 11403),
(351430, 0, 0, 0, 0, 0, 25680, 0, 0, 0, 'Flame Warder(1)', '', '', 0, 78, 78, 2, 16, 16, 0, 1, 1.14286, 1, 1, 387, 543, 0, 528, 7.5, 2000, 0, 1, 32832, 8, 0, 0, 0, 0, 0, 324, 480, 88, 4, 72, 351430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 50, 10, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, '', 11723); 
(384330, 0, 0, 0, 0, 0, 31089, 0, 0, 0, 'Toravon the Ice Watcher(1)', '', '', 0, 83, 83, 2, 16, 16, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 108, 384330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 330, 50, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 617299803, 0, '', 11403);

UPDATE `creature_template` SET `difficulty_entry_1`=350130 WHERE `entry`=35013;
UPDATE `creature_template` SET `difficulty_entry_1`=351430 WHERE `entry`=35143;
UPDATE `creature_template` SET `difficulty_entry_1`=384330 WHERE `entry`=38433;

-- Archavon Warder
SET @ward1N10 :=32353;
SET @ward1N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward1N10);
-- Flame Warder
SET @ward2N10 :=35143;
SET @ward1N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward2N10);
-- Tempest Warder
SET @ward3N10 :=34015;
SET @ward3N25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ward3N10);
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
@ward1N10,@ward1N25,@ward2N10,@ward2N25,@ward3N10,@ward3N25,
@archN10,@archN25,@emalN10,@emalN25,@koraN10,@koraN25,@toraN10,@toraN25
);
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
(@emalN10,42114,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Band of Ascendancy
(@emalN10,42115,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Band of Victory
(@emalN10,41629,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Belt of Dominance
(@emalN10,41616,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Belt of Salvation
(@emalN10,41831,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Belt of Triumph
(@emalN10,41634,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Boots of Dominance
(@emalN10,41620,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Boots of Salvation
(@emalN10,41835,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Boots of Triumph
(@emalN10,40982,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Bracers of Salvation
(@emalN10,40888,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Bracers of Triumph
(@emalN10,41142,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Gauntlets
(@emalN10,41204,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Chain Leggings
(@emalN10,42064,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Ascendancy
(@emalN10,42066,0.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Deliverance
(@emalN10,42062,0.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Dominance
(@emalN10,42065,0.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Salvation
(@emalN10,42063,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Subjugation
(@emalN10,42067,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Triumph
(@emalN10,42068,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Cloak of Victory
(@emalN10,41897,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Cord of Dominance
(@emalN10,41880,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Cord of Salvation
(@emalN10,41908,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Cuffs of Dominance
(@emalN10,41892,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Cuffs of Salvation
(@emalN10,41772,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Gloves
(@emalN10,41666,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Dragonhide Legguards
(@emalN10,40806,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Gauntlets
(@emalN10,40845,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Dreadplate Legguards
(@emalN10,42016,3,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Handguards
(@emalN10,42004,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Felweave Trousers
(@emalN10,40974,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Girdle of Salvation
(@emalN10,40879,1.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Girdle of Triumph
(@emalN10,40975,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Greaves of Salvation
(@emalN10,40880,1.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Greaves of Triumph
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
(@emalN10,42030,0.6,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Ascendancy
(@emalN10,42032,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Deliverance
(@emalN10,42029,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Dominance
(@emalN10,42033,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Salvation
(@emalN10,42031,0.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Subjugation
(@emalN10,42027,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Triumph
(@emalN10,42028,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Pendant of Victory
(@emalN10,40804,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Gauntlets
(@emalN10,40844,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Plate Legguards
(@emalN10,41000,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Gauntlets
(@emalN10,41026,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Ringmail Leggings
(@emalN10,41074,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Dominance
(@emalN10,41054,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Salvation
(@emalN10,41229,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Sabatons of Triumph
(@emalN10,41939,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Gloves
(@emalN10,41926,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Satin Leggings
(@emalN10,40805,1.3,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Gauntlets
(@emalN10,40846,1.1,1,0,1,1,0,0,0), -- Deadly Gladiator's Scaled Legguards
(@emalN10,41970,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Handguards
(@emalN10,41958,2,1,0,1,1,0,0,0), -- Deadly Gladiator's Silk Trousers
(@emalN10,41902,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Treads of Dominance
(@emalN10,41884,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Treads of Salvation
(@emalN10,41069,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Dominance
(@emalN10,41048,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Salvation
(@emalN10,41234,1.5,1,0,1,1,0,0,0), -- Deadly Gladiator's Waistguard of Triumph
(@emalN10,41064,0.8,1,0,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Dominance
(@emalN10,41059,0.7,1,0,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Salvation
(@emalN10,41224,1.4,1,0,1,1,0,0,0), -- Deadly Gladiator's Wristguards of Triumph
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
(@emalN25,41640,1.5,1,0,1,1,0,0,0), -- Furious Gladiator's Armwraps of Dominance
(@emalN25,41625,1.5,1,0,1,1,0,0,0), -- Furious Gladiator's Armwraps of Salvation
(@emalN25,41840,3,1,0,1,1,0,0,0), -- Furious Gladiator's Armwraps of Triumph
(@emalN25,42116,3,1,0,1,1,0,0,0), -- Furious Gladiator's Band of Dominance
(@emalN25,42117,3,1,0,1,1,0,0,0), -- Furious Gladiator's Band of Triumph
(@emalN25,41630,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Belt of Dominance
(@emalN25,41617,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Belt of Salvation
(@emalN25,41832,3,1,0,1,1,0,0,0), -- Furious Gladiator's Belt of Triumph
(@emalN25,41635,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Boots of Dominance
(@emalN25,41621,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Boots of Salvation
(@emalN25,41836,3,1,0,1,1,0,0,0), -- Furious Gladiator's Boots of Triumph
(@emalN25,40983,3,1,0,1,1,0,0,0), -- Furious Gladiator's Bracers of Salvation
(@emalN25,40889,3,1,0,1,1,0,0,0), -- Furious Gladiator's Bracers of Triumph
(@emalN25,41143,5,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Gauntlets
(@emalN25,41205,5,1,0,1,1,0,0,0), -- Furious Gladiator's Chain Leggings
(@emalN25,42071,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Ascendancy
(@emalN25,42073,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Deliverance
(@emalN25,42069,1.3,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Dominance
(@emalN25,42072,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Salvation
(@emalN25,42070,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Subjugation
(@emalN25,42074,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Triumph
(@emalN25,42075,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cloak of Victory
(@emalN25,41898,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cord of Dominance
(@emalN25,41881,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cord of Salvation
(@emalN25,41909,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cuffs of Dominance
(@emalN25,41893,3,1,0,1,1,0,0,0), -- Furious Gladiator's Cuffs of Salvation
(@emalN25,41773,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Gloves
(@emalN25,41667,1.7,1,0,1,1,0,0,0), -- Furious Gladiator's Dragonhide Legguards
(@emalN25,40809,5,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Gauntlets
(@emalN25,40848,5,1,0,1,1,0,0,0), -- Furious Gladiator's Dreadplate Legguards 
(@emalN25,42017,4,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Handguards
(@emalN25,42005,5,1,0,1,1,0,0,0), -- Furious Gladiator's Felweave Trousers
(@emalN25,40976,3,1,0,1,1,0,0,0), -- Furious Gladiator's Girdle of Salvation
(@emalN25,40881,3,1,0,1,1,0,0,0), -- Furious Gladiator's Girdle of Triumph
(@emalN25,40977,3,1,0,1,1,0,0,0), -- Furious Gladiator's Greaves of Salvation
(@emalN25,40882,3,1,0,1,1,0,0,0), -- Furious Gladiator's Greaves of Triumph
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
(@emalN25,42037,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Ascendancy
(@emalN25,42039,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Deliverance
(@emalN25,42036,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Dominance
(@emalN25,42040,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Salvation
(@emalN25,42038,1.2,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Subjugation
(@emalN25,46373,0.7,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Sundering
(@emalN25,42034,3,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Triumph
(@emalN25,42035,3,1,0,1,1,0,0,0), -- Furious Gladiator's Pendant of Victory
(@emalN25,40807,5,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Gauntlets
(@emalN25,40847,5,1,0,1,1,0,0,0), -- Furious Gladiator's Plate Legguards
(@emalN25,41001,1.8,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Gauntlets
(@emalN25,41027,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Ringmail Leggings
(@emalN25,41075,1.4,1,0,1,1,0,0,0), -- Furious Gladiator's Sabatons of Dominance
(@emalN25,41055,1.4,1,0,1,1,0,0,0), -- Furious Gladiator's Sabatons of Salvation
(@emalN25,41230,3,1,0,1,1,0,0,0), -- Furious Gladiator's Sabatons of Triumph
(@emalN25,41940,3,1,0,1,1,0,0,0), -- Furious Gladiator's Satin Gloves
(@emalN25,41927,3,1,0,1,1,0,0,0), -- Furious Gladiator's Sating Leggings
(@emalN25,40808,1.1,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Gauntlets
(@emalN25,40849,2,1,0,1,1,0,0,0), -- Furious Gladiator's Scaled Legguards
(@emalN25,41971,5,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Handguards
(@emalN25,41959,5,1,0,1,1,0,0,0), -- Furious Gladiator's Silk Trousers
(@emalN25,41903,3,1,0,1,1,0,0,0), -- Furious Gladiator's Slippers of Dominance
(@emalN25,41885,3,1,0,1,1,0,0,0), -- Furious Gladiator's Slippers of Salvation
(@emalN25,41070,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Waistguard of Dominance
(@emalN25,41051,1.5,1,0,1,1,0,0,0), -- Furious Gladiator's Waistguard of Salvation
(@emalN25,41235,3,1,0,1,1,0,0,0), -- Furious Gladiator's Waistguard of Triumph
(@emalN25,41065,1.6,1,0,1,1,0,0,0), -- Furious Gladiator's Wristguards of Dominance
(@emalN25,41060,1.5,1,0,1,1,0,0,0), -- Furious Gladiator's Wristguards of Salvation
(@emalN25,41225,3,1,0,1,1,0,0,0), -- Furious Gladiator's Wristguards of Triumph
(@emalN25,41293,1.8,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Gloves
(@emalN25,41304,1.7,1,0,1,1,0,0,0), -- Furious Gladiator's Wyrmhide Legguards
(@emalN25,43959,1,1,0,1,1,6,469,0), -- Reins of the Grand Black War Mammoth(A)
(@emalN25,44083,0.9,1,0,1,1,6,67,0), -- Reins of the Grand Black War Mammoth(H)