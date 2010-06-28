/* ###############################
### creature_loot_template.sql ###
############################### */

-- Missing Emblem of Triumph Drops(Vault of Archavon)
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

DELETE FROM `creature_loot_template` WHERE `entry` IN 
(
@archN10,@archN25,
@emalN10,@emalN25,
@koraN10,@koraN25,
@toraN10,@toraN25
)
AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Archavon the Stone Watcher
(@archN10,47241,100,1,0,2,2,0,0,0),
(@archN25,47241,100,1,0,2,2,0,0,0),
-- Emalon the Storm Watcher
(@emalN10,47241,100,1,0,2,2,0,0,0),
(@emalN25,47241,100,1,0,2,2,0,0,0),
-- Koralon the Flame Watcher
(@koraN10,47241,100,1,0,2,2,0,0,0),
(@koraN25,47241,100,1,0,2,2,0,0,0),
-- Toravon the Ice Watcher
(@toraN10,47241,100,1,0,2,2,0,0,0),
(@toraN25,47241,100,1,0,2,2,0,0,0);

/* ####################
### herb_spawns.sql ###
#################### */

-- In other files (./files/herb/r0004_herb_spawns_prt1.sql-..._prt5.sql) // kicsit nagy terheles a MySQL szerverre

/* #######################
### mineral_spawns.sql ###
##########################

-- In other files (./files/mineral/r0004_mineral_spawns_prt1.sql-..._prt5.sql) // kicsit nagy terheles a MySQL szerverre

/* ################
### version.sql ###
################ */

-- Version
UPDATE `version` SET `db_version`='BBDB_8375_004';