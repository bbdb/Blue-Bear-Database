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
### old_commits.sql ###
#################### */

-- Merge DreamDB fixes from me
SET @stormH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=27983); -- Dark Rune Stormcaller
SET @proteH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=27984); -- Dark Rune Protector
SET @golemH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=27985); -- Iron Golem Custodian
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (27983,@stormH,27984,@proteH,27985,@golemH);
SET @elemeH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=29573); -- Drakkari Elemental
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` in (29573,@elemeH);
SET @svalaH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=26668); -- Svala Sorrowgrave
SET @gortoH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=26687); -- Gortok Palehoof
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (26668,@svalaH,26687,@gortoH);
SET @GlobN :=29321; -- Ichoron Globule
SET @GlobH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=29321);
UPDATE `creature_template` SET `modelid1`=525,`faction_A`=16,`faction_H`=16 WHERE `entry` IN (@GlobN,@GlobH);
SET @VoidN :=29364; -- Void Sentry
SET @VoidH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=29364);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (@VoidN,@VoidH);


-- Some Hrothgar's Landing's fixes
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (34526,35070,35090); -- Friendly for Horde but Hated for Alliance
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (35102,35098,24713); -- Friendly for Alliance but Hated for Horde
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry` IN (35092,34925,34907,35092,34947); -- A,H (Neutral but attackable)
UPDATE `creature_template` SET `faction_A`=1885,`faction_H`=1885 WHERE `entry` IN (34808,34965,34838,35012,34980,34839); -- A,H (Hated)
-- Another factions
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` IN (28055,27327); -- Channel Target, Ritual Target faction fix
UPDATE `creature_template` SET `faction_A`=2027,`faction_H`=2027 WHERE `entry` IN (35573,35575,35577,35579); -- Faction fixes (for vendors in Icecrown)
UPDATE `creature_template` SET `faction_A`=190,`faction_H`=190 WHERE `entry` IN (27710,27107,27108,27106); -- The Plains of Nasam fix // http://www.wowhead.com/?quest=11652
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (27164,27161,27714,26780,36165,27713,27588,27839,34919,27160,36166,27791,27162,27163,26779,27318,27155,27157,27317,34924,27136,27156,27788,27316,27828,27159,27412,27158,27662,28065,27319); -- 7th Legion fixes
-- Trial of the Champion faction fix
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (35328,35545,35328,35331,35330,35332,35644,34705,34703,34657,34701,34702,36557,35005);
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (35327,35325,35326,35323,35564,35314,35569,36559,35570,35571,35572,35617);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (14276,35590,35051,35036,35040,35028,35032,35048,35029,35038,35031,35037,35045,35042,35050,34942,35030,35049,35034,35039,35044,35047,35043,35046,35033,35041,35052,5235,35491,35307,35305,35309,35451,35119,34928);
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry`=32793;
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry`=25305;
-- Trial of the Crusader faction fix (merge old commit) // I want to rewrite
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (34665,34461,34475,34463,34474,34470,34468,34469,34460,34472,34473,34471,34466,34467);
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (34441,34444,34448,34453,34454,34456,34445,34450,34458,34449,34459,34447,34455,34451);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (35144,34564,34799,34496,34497,34796,34797,34780,35610,33286,34815,34606,34813,34826,34607,34825,34800,34605,35877,36070,35465);
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry` IN (35763,32793);
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` IN (35458,34568,36095,34567,25305,35910,35909,35771,35770,35766,35035,34816,36097);

-- Flags
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2 WHERE `entry` IN (27730,27760);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0 WHERE `entry`=29313;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0 WHERE `entry`=26737; -- Fix for Crazed Mana-Surge
UPDATE `creature_template` SET `npcflag`=`npcflag`|4224 WHERE `entry` IN (34063,34084,33937,33938); -- npcflag (vendor+repairer)(armor quartetmasters and arena vendors) 
UPDATE `creature_template` SET `type_flags`=`type_flags`|8 WHERE `entry`=11382; -- Bloodlord Mandokir fix
-- Update Ruins of Ahnqirajs, Temple of Ahnqirajs, Blackwing Lairs, Molten Cores, ZulGurubs, Magtheridons Lairs, Gruuls Lairs, Tempest Keeps, Serpentshrine Caverns, Hyjal Summits, Black Temples, Sunwell Plateaus, Trial of the Crusaders, Naxxramass, Onyxias Lairs, The Eye of Eternitys, The Obsidian Sanctums, Ulduars and Vault of Archavons Bosses(Now you can't stun, fear and disorient)
UPDATE `creature_template` SET `mechanic_immune_mask`=617299803 WHERE `entry` IN (17257,10184,28860,30452,30451,30449,34797,34780,34497,34496,34564,15956,15953,15952,15954,15936,16011,16061,16060,16064,16065,30549,16063,16028,15931,15932,15928,15989,15990,28859,33113,33118,33186,33293,32857,32930,33515,32906,32845,33350,32865,33271,33288,32871,31125,33993,35013,38433,22887,22898,22841,22871,22948,23418,23419,23420,22947,22949,22950,22951,22952,22917,17767,17808,17888,17842,17968,24850,24892,24882,25038,25166,25165,25741,25840,25315,19516,19514,18805,19622,21216,21217,21215,21214,21213,21212,18831,19044,15348,15341,15340,15370,15369,15339,15263,15516,15510,15509,15276,15275,15727,15543,15544,15511,15299,15517,12435,13020,12017,11983,14601,11981,14020,11583,12118,11982,12259,12057,12264,12056,11988,12098,12018,11502,14507,14517,14510,14509,14515,14834,11382,14988,15083,15114,11380);
-- Svala Sorrowgrave dmg fix
UPDATE `creature_template` SET `mindmg`=452,`maxdmg`=678,`attackpower`=170,`dmg_multiplier`=10,`baseattacktime`=2000 WHERE `entry`=30810; 
-- Ritual Channeler fix
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=420,`maxdmg`=630,`attackpower`=158,`dmg_multiplier`=1.1,`baseattacktime`=2000 WHERE `entry`=27281;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`mindmg`=436,`maxdmg`=654,`attackpower`=164,`dmg_multiplier`=1.4,`baseattacktime`=2000 WHERE `entry`=30804;
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|617299803 WHERE `entry` IN (26668,30810,26687,30774,26693,30807,26861,30788);

-- Begin work with Pit of Saron (All things tested. Enjoy the instance!)
-- Factions
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (36476,36477,36658,36788,37712,37713,36874,36841,4789,37711,36891,36879,36661,36881,36896,36842,36830,36907,36877,36892,36893,31260,36840);
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry` IN (37496,37497,36494,38487,36886,37755,14881,37729,37728);
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (36767,37774,37582,37498,37572,37575,37576,36993,38188,37580,37591,36764,36765,36766);
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (37584,37587,37588,37583,37779,37577,37578,37579,37581,37592,36990,38189);
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` IN (36889,36888,25305);
UPDATE `creature_template` SET `faction_A`=2007,`faction_H`=2007 WHERE `entry` IN (37582,37774);

-- Creatures for difficulty entry
DELETE FROM `creature_template` WHERE `entry` IN (312600,364940,364760,366580,367880,377120,377130,368860,377110,368790,368810,368960,368420,368300,368920,368930,368400,364770);
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`equipment_id`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) VALUES
(312600, 0, 0, 0, 0, 0, 25837, 0, 0, 0, 'Ymirjar Skycaller(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 2000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 312600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(364940, 0, 0, 0, 0, 0, 30843, 0, 0, 0, 'Forgemaster Garfrost(1)', '', '', 0, 82, 82, 2, 7, 7, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 104, 364940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 37, 30, 1, 0, 49723, 0, 0, 0, 0, 0, 144, 1, 0, 0, 0, '', 11403),
(364760, 0, 0, 0, 0, 0, 30347, 0, 0, 0, 'Ick(1)', 'Krick\'s Minion', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 104, 364760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 44.5466, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(366580, 0, 0, 0, 0, 0, 30277, 0, 0, 0, 'Scourgelord Tyrannus(1)', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 366580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 48.5, 20, 1, 0, 0, 0, 0, 0, 0, 0, 179, 1, 0, 0, 0, '', 11403),
(367880, 0, 0, 0, 0, 0, 22196, 0, 0, 0, 'Deathwhisper Necrolyte(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 367880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 16, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(377120, 0, 0, 0, 0, 0, 30848, 30849, 0, 0, 'Deathwhisper Shadowcaster(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 377120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(377130, 0, 0, 0, 0, 0, 30851, 30850, 0, 0, 'Deathwhisper Torturer(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 377130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368860, 0, 0, 0, 0, 0, 26577, 0, 0, 0, 'Geist Ambusher(1)', '', '', 0, 80, 80, 2, 7, 7, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 11403),
(377110, 0, 0, 0, 0, 0, 24992, 24995, 24994, 0, 'Hungering Ghoul(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 377110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368790, 0, 0, 0, 0, 0, 23681, 0, 0, 0, 'Plagueborn Horror(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 104, 368790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368810, 0, 0, 0, 0, 0, 9785, 0, 0, 0, 'Skeletal Slave(1)', '', '', 0, 80, 80, 0, 16, 16, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368960, 0, 0, 0, 0, 0, 30403, 0, 0, 0, 'Stonespine Gargoyle(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 368960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 12.6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368420, 0, 0, 0, 0, 0, 26919, 0, 0, 0, 'Wrathbone Coldwraith(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368300, 0, 0, 0, 0, 0, 30364, 30365, 30365, 0, 'Wrathbone Laborer(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368920, 0, 0, 0, 0, 0, 27547, 0, 0, 0, 'Ymirjar Deathbringer(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 368920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(368930, 0, 0, 0, 0, 0, 27009, 26122, 0, 0, 'Ymirjar Flamebearer(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 8, 1, 0, 0, 0, 0, 0, 0, 0, 154, 1, 0, 0, 0, '', 11403),
(368400, 0, 0, 0, 0, 0, 26614, 25244, 0, 0, 'Ymirjar Wrathbringer(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 368400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(364770, 0, 0, 0, 0, 0, 30331, 0, 0, 0, 'Krick(1)', '', '', 0, 80, 80, 0, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 16, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403);


-- mindmg, maxdmg, attackpower, dmg multip. and baseattacktime fix
-- Bosses
--  -Normal
UPDATE `creature_template` SET `mindmg`=367,`maxdmg`=519,`attackpower`=481,`dmg_multiplier`=9,`baseattacktime`=2000 WHERE `entry` IN (36494,36476,36658,36477);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=463,`maxdmg`=640,`attackpower`=759,`dmg_multiplier`=15,`baseattacktime`=2000 WHERE `entry` IN (364940,364760,366580,364770);
-- Trashes
--  -Normal
UPDATE `creature_template` SET `mindmg`=341,`maxdmg`=489,`attackpower`=422,`dmg_multiplier`=7,`baseattacktime`=2000 WHERE `entry` IN (36788,37712,37713,36874,36841,37711,36891,36879,36661,36881,36896,36842,36830,36907,36877,36892,36893,31260,36840);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=422,`maxdmg`=586,`attackpower`=642,`dmg_multiplier`=12,`baseattacktime`=2000 WHERE `entry` IN (368400,312600,368930,368920,368300,368420,368960,368810,368790,377110,368860,377130,377120,367880);

-- Loots
-- For heroic loots I need to update the difficulty
UPDATE `creature_template` SET `difficulty_entry_1`=364940 WHERE `entry`=36494;
UPDATE `creature_template` SET `difficulty_entry_1`=364760 WHERE `entry`=36476;
UPDATE `creature_template` SET `difficulty_entry_1`=366580 WHERE `entry`=36658;
UPDATE `creature_template` SET `difficulty_entry_1`=367880 WHERE `entry`=36788;
UPDATE `creature_template` SET `difficulty_entry_1`=377120 WHERE `entry`=37712;
UPDATE `creature_template` SET `difficulty_entry_1`=377130 WHERE `entry`=37713;
UPDATE `creature_template` SET `difficulty_entry_1`=368860 WHERE `entry`=36886;
UPDATE `creature_template` SET `difficulty_entry_1`=377110 WHERE `entry`=37711;
UPDATE `creature_template` SET `difficulty_entry_1`=368790 WHERE `entry`=36879;
UPDATE `creature_template` SET `difficulty_entry_1`=368810 WHERE `entry`=36881;
UPDATE `creature_template` SET `difficulty_entry_1`=368960 WHERE `entry`=36896;
UPDATE `creature_template` SET `difficulty_entry_1`=368420 WHERE `entry`=36842;
UPDATE `creature_template` SET `difficulty_entry_1`=368300 WHERE `entry`=36830;
UPDATE `creature_template` SET `difficulty_entry_1`=368920 WHERE `entry`=36892;
UPDATE `creature_template` SET `difficulty_entry_1`=368930 WHERE `entry`=36893;
UPDATE `creature_template` SET `difficulty_entry_1`=312600 WHERE `entry`=31260;
UPDATE `creature_template` SET `difficulty_entry_1`=368400 WHERE `entry`=36840;
UPDATE `creature_template` SET `difficulty_entry_1`=364770 WHERE `entry`=36477;


DELETE FROM `creature_loot_template` WHERE `entry` IN (36494,36476,36658,36788,37712,37713,36886,37711,36879,36881,36896,36842,36830,36892,36893,31260,36840,364940,364760,366580,367780,367880,377120,377130,368860,377110,368790,368810,368960,368420,368300,368920,368930,312600,368400);
INSERT INTO creature_loot_template (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Forgemaster Garfrost -- Merged YTDB
-- Normal Loot
(36494,49802,25,1,1,1,0,0,0), -- Garfrost's Two-Ton Hammer
(36494,49801,25,1,1,1,0,0,0), -- Unspeakable Secret
(36494,49805,13,1,1,1,0,0,0), -- Ice-Stepped Sandals
(36494,49806,12,1,1,1,0,0,0), -- Flayer's Black Belt
(36494,49804,12,1,1,1,0,0,0), -- Polished Mirror Helm
(36494,49803,12,1,1,1,0,0,0), -- Ring of Carnelian and Bone
(36494,49723,-100,0,1,1,0,0,0), -- The Forgemaster's Hammer
-- Heroic Loot
(364940,50227,30,1,1,1,0,0,0), -- Surgeon's Needle
(364940,50228,14,1,1,1,0,0,0), -- Barbed Ymirheim Choker
(364940,50229,14,1,1,1,0,0,0), -- Legguards of the Frosty Depths
(364940,50230,14,1,1,1,0,0,0), -- Malykriss Vambraces
(364940,50233,14,1,1,1,0,0,0), -- Spurned Val'kyr Shoulderguards
(364940,50234,13,1,1,1,0,0,0), -- Shoulderplates of Frozen Blood
(364940,49723,-100,0,1,1,0,0,0), -- The Frogemaster's Hammer

-- Ick & Krick -- Merged YTDB
-- Normal Loot
(36476,49807,28,1,1,1,0,0,0), -- Krick's Beetle Stabber
(36476,49810,16,1,1,1,0,0,0), -- Scabrous Zombie Leather Belt
(36476,49812,15,1,1,1,0,0,0), -- Purloined Wedding Ring
(36476,49808,14,1,1,1,0,0,0), -- Bent Gold Belt
(36476,49811,14,1,1,1,0,0,0), -- Black Dragonskin Breeches 
(36476,49809,13,1,1,1,0,0,0), -- Wristguards of Subterranean
-- Heroic Loot
(364760,50262,30,1,1,1,0,0,0), -- Felglacier Bolter
(364760,50266,14,1,1,1,0,0,0), -- Ancient Polar Bear Hide
(364760,50265,14,1,1,1,0,0,0), -- Blackened Ghoul Skin Leggings
(364760,50263,14,1,1,1,0,0,0), -- Braid of Salt and Fire
(364760,50264,14,1,1,1,0,0,0), -- Chewed Leather Wristguards
(364760,50235,14,1,1,1,0,0,0), -- Ick's Rotting Thumb

-- Scourgelord Tyrannus -- Merged YTDB
-- Normal Loot
(36658,49813,27,1,1,1,0,0,0), -- Rimebane Rifle
(36658,49825,17,2,1,1,0,0,0), -- Palebone Robes
(36658,49826,17,2,1,1,0,0,0), -- Shroud of Rime
(36658,49823,16,1,1,1,0,0,0), -- Cloak of the Fallen Cardinal
(36658,49824,16,1,1,1,0,0,0), -- Horns of the Spurned Val'kyr
(36658,49821,16,2,1,1,0,0,0), -- Protector of Frigid Souls
(36658,49822,16,2,1,1,0,0,0), -- Rimewoven Silks
(36658,49820,15,1,1,1,0,0,0), -- Gondria's Spectral Bracer
(36658,49818,15,1,1,1,0,0,0), -- Painfully Sharp Choker
(36658,49816,15,1,1,1,0,0,0), -- Scourgelord's Frigid Chestplate
(36658,49817,14,2,1,1,0,0,0), -- Shaggy Wyrmleather Leggings
(36658,49819,13,2,1,1,0,0,0), -- Skeleton Lord's Cranium
-- Heroic Loot
(366580,43102,95,1,1,1,0,0,0), -- Frozen Orb
(366580,50273,30,1,1,1,0,0,0), -- Engraved Gargoyle Femur
(366580,50268,28,2,1,1,0,0,0), -- Rimefang's Claw
(366580,50267,27,2,1,1,0,0,0), -- Tyrannical Beheader
(366580,50285,14,1,1,1,0,0,0), -- Icebound Bronze Cuirass
(366580,50283,14,1,1,1,0,0,0), -- Mudslide Boots
(366580,50284,14,2,1,1,0,0,0), -- Rusty Frozen Fingerguards
(366580,50259,13,2,1,1,0,0,0), -- Nevermelting Ice Crystal
(366580,50286,13,1,1,1,0,0,0), -- Prelate's Snowshoes
(366580,50271,11,1,1,1,0,0,0), -- Band of Stained Souls
(366580,50270,11,1,1,1,0,0,0), -- Belt of Rotted Fingernails
(366580,50269,11,2,1,1,0,0,0), -- Fleshwerk Leggings
(366580,50272,11,2,1,1,0,0,0), -- Frost Wyrm Ribcage

-- Deathwhisper Necrolyte
-- Normal Loot
(36788,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36788,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36788,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36788,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36788,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(367880,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(367880,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(367880,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(367880,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(367880,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Deathwhisper Shadowcaster
-- Normal Loot
(37712,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(37712,43852,23,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(37712,35947,6,1,1,1,0,0,0), -- Sparkling Frostcap
(37712,33447,4,1,1,1,0,0,0), -- Runic Healing Potion
(37712,33445,3,1,1,1,0,0,0), -- Honeymint Tea
(37712,49854,2,1,1,1,0,0,0), -- Mantle of Tattered Feathers
(37712,49853,2,1,1,1,0,0,0), -- Titanium Links of Lore
-- Heroic Loot
(377120,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(377120,43852,22,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(377120,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(377120,33445,5,1,1,1,0,0,0), -- Honeymint Tea
(377120,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Deathwhisper Torturer
-- Normal Loot
(37713,33470,41,1,2,7,0,0,0), -- Frostweave Cloth
(37713,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(37713,35947,7,1,1,1,0,0,0), -- Sparkling Frostcap
(37713,33445,7,1,1,1,0,0,0), -- Honeymint Tea
(37713,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(377130,33470,37,1,2,7,0,0,0), -- Frostweave Cloth
(377130,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(377130,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(377130,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(377130,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Geist Ambusher
-- Normal Loot
(36886,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(36886,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36886,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36886,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36886,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368860,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(368860,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368860,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368860,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368860,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Hungering Ghoul
-- Normal Loot
(37711,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(37711,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(37711,35947,9,1,1,1,0,0,0), -- Sparkling Frostcap
(37711,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(37711,33448,2,1,1,1,0,0,0), -- Runic Mana Potion
(37711,49855,2,1,1,1,0,0,0), -- Plated Grips of Korth'azz
-- Heroic Loot
(377110,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(377110,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(377110,35947,9,1,1,1,0,0,0), -- Sparkling Frostcap
(377110,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(377110,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Plagueborn Horror
-- Normal Loot
(36879,33470,31,1,2,7,0,0,0), -- Frostweave Cloth
(36879,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36879,35947,7,1,1,1,0,0,0), -- Sparkling Frostcap
(36879,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36879,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368790,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(368790,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368790,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368790,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368790,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Skeletal Slave
-- Normal Loot
(36881,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36881,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36881,35947,9,1,1,1,0,0,0), -- Sparkling Frostcap
(36881,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36881,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368810,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(368810,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368810,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368810,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368810,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Stonespine Gargoyle
-- Normal Loot
(36896,33470,11,1,2,5,0,0,0), -- Frostweave Cloth
(36896,43852,10,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36896,35947,3,1,1,1,0,0,0), -- Sparkling Frostcap
(36896,49854,2,1,1,1,0,0,0), -- Mantle of Tattered Feathers
(36896,33445,2,1,1,1,0,0,0), -- Honeymint Tea
(36896,49852,2,1,1,1,0,0,0), -- Coffin Nail
(36896,49855,2,1,1,1,0,0,0), -- Plated Grips of Korth'azz
(36896,45912,2,1,1,1,0,0,0), -- Book of Glyph Mastery
-- Heroic Loot
(368960,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(368960,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368960,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368960,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368960,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Wrathbone Coldwraith
-- Normal Loot
(36842,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36842,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36842,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36842,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36842,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368420,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(368420,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368420,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368420,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368420,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Wrathbone Laborer
-- Normal Loot
(36830,33470,30,1,2,7,0,0,0), -- Frostweave Cloth
(36830,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36830,35947,7,1,1,1,0,0,0), -- Sparkling Frostcap
(36830,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36830,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368300,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(368300,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368300,35947,7,1,1,1,0,0,0), -- Sparkling Frostcap
(368300,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368300,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Ymirjar Deathbringer
-- Normal Loot
(36892,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(36892,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36892,33454,11,1,1,1,0,0,0), -- Salted Venison
(36892,33445,5,1,1,1,0,0,0), -- Honeymint Tea
(36892,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
(36892,49853,2,1,1,1,0,0,0), -- Titanium Links of Lore
-- Heroic Loot
(368920,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(368920,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368920,33454,8,1,1,1,0,0,0), -- Salted Venison
(368920,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368920,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Ymirjar Flamebearer
-- Normal Loot
(36893,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(36893,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36893,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36893,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36893,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368930,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(368930,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368930,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368930,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368930,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Ymirjar Skycaller
-- Normal Loot
(31260,33470,28,1,2,7,0,0,0), -- Frostweave Cloth
(31260,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(31260,33454,7,1,1,1,0,0,0), -- Salted Venison
(31260,49855,3,1,1,1,0,0,0), -- Plated Grips of Korth'azz
(31260,33445,3,1,1,1,0,0,0), -- Honeymint Tea
(31260,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(312600,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(312600,43852,19,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(312600,33454,8,1,1,1,0,0,0), -- Salted Venison
(312600,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(312600,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Ymirjar Wrathbringer
-- Normal Loot
(36840,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(36840,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36840,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36840,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36840,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(368400,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(368400,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(368400,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(368400,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(368400,33447,2,1,1,1,0,0,0); -- Runic Healing Potion

-- Lootid update
UPDATE `creature_template` SET `lootid`=36494 WHERE `entry`=36494;
UPDATE `creature_template` SET `lootid`=36476 WHERE `entry`=36476;
UPDATE `creature_template` SET `lootid`=36658 WHERE `entry`=36658;
UPDATE `creature_template` SET `lootid`=36788 WHERE `entry`=36788;
UPDATE `creature_template` SET `lootid`=37712 WHERE `entry`=37712;
UPDATE `creature_template` SET `lootid`=37713 WHERE `entry`=37713;
UPDATE `creature_template` SET `lootid`=36886 WHERE `entry`=36886;
UPDATE `creature_template` SET `lootid`=37711 WHERE `entry`=37711;
UPDATE `creature_template` SET `lootid`=36879 WHERE `entry`=36879;
UPDATE `creature_template` SET `lootid`=36881 WHERE `entry`=36881;
UPDATE `creature_template` SET `lootid`=36896 WHERE `entry`=36896;
UPDATE `creature_template` SET `lootid`=36842 WHERE `entry`=36842;
UPDATE `creature_template` SET `lootid`=36830 WHERE `entry`=36830;
UPDATE `creature_template` SET `lootid`=36892 WHERE `entry`=36892;
UPDATE `creature_template` SET `lootid`=36893 WHERE `entry`=36893;
UPDATE `creature_template` SET `lootid`=31260 WHERE `entry`=31260;
UPDATE `creature_template` SET `lootid`=36840 WHERE `entry`=36840;
UPDATE `creature_template` SET `lootid`=364940 WHERE `entry`=364940;
UPDATE `creature_template` SET `lootid`=364760 WHERE `entry`=364760;
UPDATE `creature_template` SET `lootid`=366580 WHERE `entry`=366580;
UPDATE `creature_template` SET `lootid`=367880 WHERE `entry`=367880;
UPDATE `creature_template` SET `lootid`=377120 WHERE `entry`=377120;
UPDATE `creature_template` SET `lootid`=377130 WHERE `entry`=377130;
UPDATE `creature_template` SET `lootid`=368860 WHERE `entry`=368860;
UPDATE `creature_template` SET `lootid`=377110 WHERE `entry`=377110;
UPDATE `creature_template` SET `lootid`=368790 WHERE `entry`=368790;
UPDATE `creature_template` SET `lootid`=368810 WHERE `entry`=368810;
UPDATE `creature_template` SET `lootid`=368960 WHERE `entry`=368960;
UPDATE `creature_template` SET `lootid`=368420 WHERE `entry`=368420;
UPDATE `creature_template` SET `lootid`=368300 WHERE `entry`=368300;
UPDATE `creature_template` SET `lootid`=368920 WHERE `entry`=368920;
UPDATE `creature_template` SET `lootid`=368930 WHERE `entry`=368930;
UPDATE `creature_template` SET `lootid`=312600 WHERE `entry`=312600;
UPDATE `creature_template` SET `lootid`=368400 WHERE `entry`=368400;

-- Mechanic immunes
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|617299803 WHERE `entry` IN (36494,36476,36658,36477,364940,364760,366580,364770);
-- Mount
UPDATE `instance_template` SET `allowMount`=1 WHERE `map`=658;

-- Begin work with Halls of Reflection
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (38176,37107,37068,38173,38177,37158,38172,38567,38175,36723,33286);
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (37221,36955);
UPDATE `creature_template` SET `faction_A`=1976,`faction_H`=1976 WHERE `entry` IN (30833,30867,30351,30347,30392,30350);
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (37554,37223,37779);
UPDATE `creature_template` SET `faction_A`=1980,`faction_H`=1980 WHERE `entry` IN (30827,30752,30825);
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry` IN (36954,14881,36941,36940,37069,37226);
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35 WHERE `entry` IN (37225,30352,30755,25305);
UPDATE `creature_template` SET `faction_A`=2007,`faction_H`=2007 WHERE `entry`=37582;

-- Creatures for difficulty entry
DELETE FROM `creature_template` WHERE `entry` IN (381120,381130,372260,381760,381730,381770,371580,381720,381750,367230);
INSERT INTO creature_template (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(381120, 0, 0, 0, 0, 0, 30972, 0, 0, 0, 'Falric(1)', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 28, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 0, 0, 0, '', 11403),
(381130, 0, 0, 0, 0, 0, 30973, 0, 0, 0, 'Marwyn(1)', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 40, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 0, 0, 0, '', 11403),
(372260, 0, 0, 0, 0, 0, 30721, 0, 0, 0, 'The Lich King(1)', '', '', 0, 83, 83, 2, 7, 7, 0, 1, 1.14286, 1, 3, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2000, 500, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 11403),
(381760, 0, 0, 0, 0, 0, 30980, 0, 0, 0, 'Tortured Rifleman(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 0, 0, 0, '', 11403),
(381730, 0, 0, 0, 0, 0, 30978, 0, 0, 0, 'Spectral Footman(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 0, 0, 0, '', 11403),
(381770, 0, 0, 0, 0, 0, 30981, 0, 0, 0, 'Shadowy Mercenary(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 0, 0, 0, '', 11403),
(371580, 0, 0, 0, 0, 0, 20570, 30547, 0, 0, 'Quel\'Delar(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 17, 5, 1, 0, 50254, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(381720, 0, 0, 0, 0, 0, 30977, 0, 0, 0, 'Phantom Mage(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 10, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 0, 0, 0, '', 11403),
(381750, 0, 0, 0, 0, 0, 30979, 0, 0, 0, 'Ghostly Priest(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 0, 0, 0, '', 11403),
(367230, 0, 0, 0, 0, 0, 30300, 0, 0, 0, 'Frostsworn General(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 25, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403);

-- mindmg, maxdmg, attackpower, dmg multip. and baseattacktime fix
-- Bosses
--  -Normal
UPDATE `creature_template` SET `mindmg`=367,`maxdmg`=519,`attackpower`=481,`dmg_multiplier`=9,`baseattacktime`=2000 WHERE `entry` IN (38112,38113,37226);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=463,`maxdmg`=640,`attackpower`=759,`dmg_multiplier`=15,`baseattacktime`=2000 WHERE `entry` IN (381120,381130,372260);
-- Trashes
--  -Normal
UPDATE `creature_template` SET `mindmg`=341,`maxdmg`=489,`attackpower`=422,`dmg_multiplier`=7,`baseattacktime`=2000 WHERE `entry` IN (38176,38173,38177,37158,38172,38175,36723);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=422,`maxdmg`=586,`attackpower`=642,`dmg_multiplier`=12,`baseattacktime`=2000 WHERE `entry` IN (381760,381730,381770,371580,381720,381750,367230);

-- Loots
-- Difficulty entry for Heroic loots
UPDATE `creature_template` SET `difficulty_entry_1`=381120 WHERE `entry`=38112;
UPDATE `creature_template` SET `difficulty_entry_1`=381130 WHERE `entry`=38113;
UPDATE `creature_template` SET `difficulty_entry_1`=372260 WHERE `entry`=37226;
UPDATE `creature_template` SET `difficulty_entry_1`=381760 WHERE `entry`=38176;
UPDATE `creature_template` SET `difficulty_entry_1`=381730 WHERE `entry`=38173;
UPDATE `creature_template` SET `difficulty_entry_1`=381770 WHERE `entry`=38177;
UPDATE `creature_template` SET `difficulty_entry_1`=371580 WHERE `entry`=37158;
UPDATE `creature_template` SET `difficulty_entry_1`=381720 WHERE `entry`=38172;
UPDATE `creature_template` SET `difficulty_entry_1`=381750 WHERE `entry`=38175;
UPDATE `creature_template` SET `difficulty_entry_1`=367230 WHERE `entry`=36723;

DELETE FROM `creature_loot_template` WHERE `entry` IN (38112,381120,38113,381130,37226,372260,38176,381760,38173,381730,38177,381770,37158,371580,38172,381720,38175,381750,36723,367230); 
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Falric
-- Normal Loot
(38112,49827,28,1,1,1,0,0,0), -- Ghoulslicer
(38112,49832,15,2,1,1,0,0,0), -- Eerie Runeblade Polisher
(38112,49828,15,3,1,1,0,0,0), -- Marwyn's Macabre Fingertips
(38112,49829,15,4,1,1,0,0,0), -- Valonforth's Tarnished Pauldrons
(38112,49830,14,5,1,1,0,0,0), -- Fallen Sentry's Hood
(38112,49831,14,6,1,1,0,0,0), -- Muddied Boots of Brill
-- Heroic Loot
(381120,50290,28,1,1,1,0,0,0), -- Falric's Wrist-Chopper
(381120,50291,26,2,1,1,0,0,0), -- Soulsplinter
(381120,50292,13,3,1,1,0,0,0), -- Bracer of Worn Molars
(381120,50294,12,4,1,1,0,0,0), -- Chestpiece of High Treason
(381120,50293,11,5,1,1,0,0,0), -- Spaulders of Black Betrayal
(381120,50295,11,6,1,1,0,0,0), -- Spiked Toestompers

-- Marwyn
-- Normal Loot
(38113,49827,29,1,1,1,0,0,0), -- Splintered Icecrown Parapet
(38113,49838,15,2,1,1,0,0,0), -- Carpal Tunnelers
(38113,49828,15,3,1,1,0,0,0), -- Splintered Door of the Citadel
(38113,49829,15,4,1,1,0,0,0), -- Frostsworn Bone Leggings
(38113,49830,14,5,1,1,0,0,0), -- Mitts of Burning Hail
(38113,49831,13,6,1,1,0,0,0), -- Frayed Abomination Stitching Shoulders
(38113,49832,1,7,1,1,0,0,0), -- Eerie Runeblade Polisher
-- Heroic Loot
(381130,49827,31,1,1,1,0,0,0), -- Orca-Hunter's Harpoon
(381130,49832,14,2,1,1,0,0,0), -- Choking Hauberk
(381130,49828,14,3,1,1,0,0,0), -- Ephemeral Snowflake
(381130,49829,14,4,1,1,0,0,0), -- Frostsworn Bone Chestpiece
(381130,49830,14,5,1,1,0,0,0), -- Sightless Crown of Ulmaas
(381130,49831,14,6,1,1,0,0,0), -- Suspiciously Soft Gloves

-- Tortured Rifleman
-- Normal Loot
(38176,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(38176,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(38176,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(38176,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(38176,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(381760,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(381760,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(381760,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(381760,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(381760,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Spectral Footman
-- Normal Loot
(38173,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(38173,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(38173,35947,9,1,1,1,0,0,0), -- Sparkling Frostcap
(38173,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(38173,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(381730,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(381730,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(381730,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(381730,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(381730,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Shadowy Mercenary
-- Normal Loot
(38177,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(38177,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(38177,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(38177,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(38177,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(381770,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(381770,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(381770,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(381770,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(381770,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Quel'Delar
-- Normal Loot
(37158,50254,-100,1,1,1,0,0,0), -- Subdued Quel'Delar
-- Heroic Loot
(371580,50254,-100,1,1,1,0,0,0), -- Subdued Quel'Delar

-- Phantom Mage
-- Normal Loot
(38172,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(38172,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(38172,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(38172,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(38172,33447,3,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(381720,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(381720,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(381720,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(381720,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(381720,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Ghostly Priest
-- Normal Loot
(38175,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(38175,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(38175,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(38175,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(38175,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(381750,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(381750,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(381750,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(381750,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(381750,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Frostsworn General
-- Normal Loot
(36723,33470,36,1,2,7,0,0,0), -- Frostweave Cloth
(36723,43852,23,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
-- Heroic Loot
(367230,33470,39,1,2,7,0,0,0), -- Frostweave Cloth
(367230,43852,23,1,1,1,0,0,0); -- Thick Fur Clothing Scraps

-- Lootid update
UPDATE `creature_template` SET `lootid`=38112 WHERE `entry`=38112;
UPDATE `creature_template` SET `lootid`=38113 WHERE `entry`=38113;
UPDATE `creature_template` SET `lootid`=38176 WHERE `entry`=38176;
UPDATE `creature_template` SET `lootid`=38173 WHERE `entry`=38173;
UPDATE `creature_template` SET `lootid`=38177 WHERE `entry`=38177;
UPDATE `creature_template` SET `lootid`=37158 WHERE `entry`=37158;
UPDATE `creature_template` SET `lootid`=38172 WHERE `entry`=38172;
UPDATE `creature_template` SET `lootid`=38175 WHERE `entry`=38175;
UPDATE `creature_template` SET `lootid`=36723 WHERE `entry`=36723;
UPDATE `creature_template` SET `lootid`=381120 WHERE `entry`=381120;
UPDATE `creature_template` SET `lootid`=381130 WHERE `entry`=381130;
UPDATE `creature_template` SET `lootid`=381760 WHERE `entry`=381760;
UPDATE `creature_template` SET `lootid`=381730 WHERE `entry`=381730;
UPDATE `creature_template` SET `lootid`=381770 WHERE `entry`=381770;
UPDATE `creature_template` SET `lootid`=371580 WHERE `entry`=371580;
UPDATE `creature_template` SET `lootid`=381720 WHERE `entry`=381720;
UPDATE `creature_template` SET `lootid`=381750 WHERE `entry`=381750;
UPDATE `creature_template` SET `lootid`=367230 WHERE `entry`=367230;

-- And missing mechanic immunes :)
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|617299803 WHERE `entry` IN (38112,381120,38113,381130,37226,372260);

-- Begin work with Forge of Souls
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (36551,36666,36478,36499,36564,36516,36620,36522,36916,36535,21925,36502,36497);
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7 WHERE `entry` IN (37497,37496,14881,37094,2110);
UPDATE `creature_template` SET `faction_A`=1733,`faction_H`=1733 WHERE `entry` IN (38160,37597,37498,25305);
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry` IN (38161,37596,37779,37583,37588,37587,37584);

-- Creatures for difficulty entry
DELETE FROM `creature_template` WHERE `entry` IN (364970,365020,366660,364780,364990,365640,365160,366200,365220);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(364970, 0, 0, 0, 0, 0, 30226, 0, 0, 0, 'Bronjahm(1)', 'Godfather of Souls', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 40, 40, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 0, 0, '', 11403),
(365020, 0, 0, 0, 0, 0, 30148, 0, 0, 0, 'Devourer of Souls(1)', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 48, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(366660, 0, 0, 0, 0, 0, 0, 30283, 0, 0, 'Spectral Warden(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(364780, 0, 0, 0, 0, 0, 30269, 0, 0, 0, 'Soulguard Watchman(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(364990, 0, 0, 0, 0, 0, 30152, 30151, 30178, 0, 'Soulguard Reaper(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(365640, 0, 0, 0, 0, 0, 30270, 0, 0, 0, 'Soulguard Bonecaster(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(365160, 0, 0, 0, 0, 0, 30168, 30169, 30268, 0, 'Soulguard Animator(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(366200, 0, 0, 0, 0, 0, 30240, 30242, 0, 0, 'Soulguard Adept(1)', 'Cult of the Damned', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403),
(365220, 0, 0, 0, 0, 0, 22701, 0, 0, 0, 'Soul Horror(1)', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11403);


-- mindmg, maxdmg, attackpower, dmg multip. and baseattacktime fix
-- Bosses
--  -Normal
UPDATE `creature_template` SET `mindmg`=367,`maxdmg`=519,`attackpower`=481,`dmg_multiplier`=9,`baseattacktime`=2000 WHERE `entry` IN (36502,36497);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=463,`maxdmg`=640,`attackpower`=759,`dmg_multiplier`=15,`baseattacktime`=2000 WHERE `entry` IN (365020,364970);
-- Trashes
--  -Normal
UPDATE `creature_template` SET `mindmg`=341,`maxdmg`=489,`attackpower`=422,`dmg_multiplier`=7,`baseattacktime`=2000 WHERE `entry` IN (36666,36478,36499,36564,36516,36620,36522);
--  -Heroic
UPDATE `creature_template` SET `mindmg`=422,`maxdmg`=586,`attackpower`=642,`dmg_multiplier`=12,`baseattacktime`=2000 WHERE `entry` IN (366660,364780,364990,365640,365160,366200,365220);

-- Loots
-- Difficulty entry for Heroic loots
UPDATE `creature_template` SET `difficulty_entry_1`=364970 WHERE `entry`=36497;
UPDATE `creature_template` SET `difficulty_entry_1`=365020 WHERE `entry`=36502;
UPDATE `creature_template` SET `difficulty_entry_1`=366660 WHERE `entry`=36666;
UPDATE `creature_template` SET `difficulty_entry_1`=364780 WHERE `entry`=36478;
UPDATE `creature_template` SET `difficulty_entry_1`=364990 WHERE `entry`=36499;
UPDATE `creature_template` SET `difficulty_entry_1`=365640 WHERE `entry`=36564;
UPDATE `creature_template` SET `difficulty_entry_1`=365160 WHERE `entry`=36516;
UPDATE `creature_template` SET `difficulty_entry_1`=366200 WHERE `entry`=36620;
UPDATE `creature_template` SET `difficulty_entry_1`=365220 WHERE `entry`=36522;

DELETE FROM `creature_loot_template` WHERE `entry` IN (36497,364970,36502,365020,36666,366660,36478,364780,36499,364990,36564,365640,36516,365160,36620,366200,36522,365220);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
-- Bronjahm
-- Normal Loot
(36497,49783,29,1,1,1,0,0,0), -- Lucky Old Sun
(36497,50317,24,2,1,1,0,0,0), -- Papa's New Bag
(36497,49785,15,3,1,1,0,0,0), -- Bewildering Shoulderpads
(36497,49787,15,4,1,1,0,0,0), -- Seven Stormy Mornings
(36497,49788,14,5,1,1,0,0,0), -- Cold Sweat Grips
(36497,49784,14,6,1,1,0,0,0), -- Minister's Number One Legplates
(36497,49786,14,7,1,1,0,0,0), -- Robes of the Cheating Heart
(36497,50316,4,8,1,1,0,0,0), -- Papa's Brand New Bag
-- Heroic Loot
(364970,50191,28,1,1,1,0,0,0), -- Nighttime
(364970,50169,27,2,1,1,0,0,0), -- Papa's Brand New Knife
(364970,50317,24,3,1,1,0,0,0), -- Papa's New Bag
(364970,50196,11,4,1,1,0,0,0), -- Love's Prisoner
(364970,50193,11,5,1,1,0,0,0), -- Very Fashionable Shoulders
(364970,50194,11,6,1,1,0,0,0), -- Weeping Gauntlets
(364970,50197,10,7,1,1,0,0,0), -- Eyes of Bewilderment
(364970,50316,5,8,1,1,0,0,0), -- Papa's Brand New Bag

-- Devourer of Souls
-- Normal Loot
(36502,49493,24,1,1,1,0,0,0), -- Tower of the Mouldering Corpse
(36502,49790,23,2,1,1,0,0,0), -- Blood Boil Lancet
(36502,49789,23,3,1,1,0,0,0), -- Heartshiver
(36502,49799,17,4,1,1,0,0,0), -- Coil of Missing Gems
(36502,49800,17,5,1,1,0,0,0), -- Spiteful Signet
(36502,49797,16,6,1,1,0,0,0), -- Brace Guards of the Starless Night
(36502,49796,16,7,1,1,0,0,0), -- Essence of Anger
(36502,49795,16,8,1,1,0,0,0), -- Sollerets of Suffering
(36502,49798,16,9,1,1,0,0,0), -- Soul Screaming Boots
(36502,49792,10,10,1,1,0,0,0), -- Accursed Crawling Cape
(36502,49791,10,11,1,1,0,0,0), -- Lost Reliquary Chestguard
(36502,49794,9,12,1,1,0,0,0), -- Legplates of Frozen Granite
-- Heroic Loot
(365020,43102,96,0,1,1,0,0,0), -- Frozen Orb
(365020,50203,31,1,1,1,0,0,0), -- Blood Weeper
(365020,50210,29,2,1,1,0,0,0), -- Seethe
(365020,50207,14,3,1,1,0,0,0), -- Black Spire Sabatons
(365020,50212,14,4,1,1,0,0,0), -- Essence of Desire
(365020,50206,14,5,1,1,0,0,0), -- Frayed Scoundrel's Cap
(365020,50213,14,6,1,1,0,0,0), -- Mord'rethar Robes
(365020,50211,13,7,1,1,0,0,0), -- Arcane Loops of Anger
(365020,50209,13,8,1,1,0,0,0), -- Essence of Suffering
(365020,50214,13,9,1,1,0,0,0), -- Helm of the Spirit Shock
(365020,50198,13,10,1,1,0,0,0), -- Needle-Encrusted Scorpion
(365020,50208,13,11,1,1,0,0,0), -- Pauldrons of the Souleater
(365020,50215,13,12,1,1,0,0,0), -- Recovered Reliquary Boots

-- Spectral Warden
-- Normal Loot
(36666,33470,30,1,2,7,0,0,0), -- Frostweave Cloth
(36666,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36666,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36666,33445,3,1,1,1,0,0,0), -- Honeymint Tea
(36666,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(366660,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(366660,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(366660,35947,7,1,1,1,0,0,0), -- Sparkling Frostcap
(366660,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(366660,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soulguard Watchman
-- Normal Loot
(36478,33470,31,1,2,7,0,0,0), -- Frostweave Cloth
(36478,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36478,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36478,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36478,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(364780,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(364780,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(364780,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(364780,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(364780,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soulguard Reaper
-- Normal Loot
(36499,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36499,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36499,33454,8,1,1,1,0,0,0), -- Salted Venison
(36499,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36499,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(364990,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(364990,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(364990,33454,8,1,1,1,0,0,0), -- Salted Venison
(364990,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(364990,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soulguard Bonecaster
-- Normal Loot
(36564,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36564,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36564,33454,8,1,1,1,0,0,0), -- Salted Venison
(36564,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36564,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(365640,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(365640,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(365640,33454,8,1,1,1,0,0,0), -- Salted Venison
(365640,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(365640,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soulguard Animator
-- Normal Loot
(36516,33470,32,1,2,7,0,0,0), -- Frostweave Cloth
(36516,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36516,33454,8,1,1,1,0,0,0), -- Salted Venison
(36516,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36516,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(365160,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(365160,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(365160,33454,8,1,1,1,0,0,0), -- Salted Venison
(365160,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(365160,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soulguard Adept
-- Normal Loot
(36620,33470,31,1,2,7,0,0,0), -- Frostweave Cloth
(36620,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36620,33454,8,1,1,1,0,0,0), -- Salted Venison
(36620,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36620,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(366200,33470,34,1,2,7,0,0,0), -- Frostweave Cloth
(366200,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(366200,33454,8,1,1,1,0,0,0), -- Salted Venison
(366200,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(366200,33447,2,1,1,1,0,0,0), -- Runic Healing Potion

-- Soul Horror
-- Normal Loot
(36522,33470,33,1,2,7,0,0,0), -- Frostweave Cloth
(36522,43852,21,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(36522,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(36522,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(36522,33447,2,1,1,1,0,0,0), -- Runic Healing Potion
-- Heroic Loot
(365220,33470,35,1,2,7,0,0,0), -- Frostweave Cloth
(365220,43852,20,1,1,1,0,0,0), -- Thick Fur Clothing Scraps
(365220,35947,8,1,1,1,0,0,0), -- Sparkling Frostcap
(365220,33445,4,1,1,1,0,0,0), -- Honeymint Tea
(365220,33447,2,1,1,1,0,0,0); -- Runic Healing Potion

-- Lootid update
UPDATE `creature_template` SET `lootid`=364970 WHERE `entry`=364970;
UPDATE `creature_template` SET `lootid`=365020 WHERE `entry`=365020;
UPDATE `creature_template` SET `lootid`=366660 WHERE `entry`=366660;
UPDATE `creature_template` SET `lootid`=364780 WHERE `entry`=364780;
UPDATE `creature_template` SET `lootid`=364990 WHERE `entry`=364990;
UPDATE `creature_template` SET `lootid`=365640 WHERE `entry`=365640;
UPDATE `creature_template` SET `lootid`=365160 WHERE `entry`=365160;
UPDATE `creature_template` SET `lootid`=366200 WHERE `entry`=366200;
UPDATE `creature_template` SET `lootid`=365220 WHERE `entry`=365220;
UPDATE `creature_template` SET `lootid`=36497 WHERE `entry`=36497;
UPDATE `creature_template` SET `lootid`=36502 WHERE `entry`=36502;
UPDATE `creature_template` SET `lootid`=36666 WHERE `entry`=36666;
UPDATE `creature_template` SET `lootid`=36478 WHERE `entry`=36478;
UPDATE `creature_template` SET `lootid`=36499 WHERE `entry`=36499;
UPDATE `creature_template` SET `lootid`=36564 WHERE `entry`=36564;
UPDATE `creature_template` SET `lootid`=36516 WHERE `entry`=36516;
UPDATE `creature_template` SET `lootid`=36620 WHERE `entry`=36620;
UPDATE `creature_template` SET `lootid`=36522 WHERE `entry`=36522;

-- And missing mechanic immunes
UPDATE `creature_template` SET `mechanic_immune_mask`=617299803 WHERE `entry` IN (36497,364970,36502,365020);

-- ICC Quests
--   Relations
DELETE FROM `creature_questrelation` WHERE `id` IN (37780,37596,38161,36990,37592,38189,37776,37597,38160,36993,36998,37591,38188);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
-- Horde
(37780,24506),
(37596,24511),
(38161,24682),
(36990,24507),
(37592,24712),
(38189,24713),
-- Alliance
(37776,24510),
(37597,24499),
(38160,24683),
(36993,24498),
(37591,24710),
(38188,24711);
DELETE FROM `creature_involvedrelation` WHERE `id` IN (37596,38161,36990,37592,38189,37223,37597,38160,36993,37591,38188,37221);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
-- Horde
(37596,24506),
(38161,24511),
(36990,24682),
(37592,24507),
(38189,24712),
(37223,24713),
-- Alliance
(37597,24510),
(38160,24499),
(36993,24683),
(37591,24498),
(38188,24710),
(37221,24711);

-- Health correction in ICC dungeons
--  Pit of Saron
--   Forgemaster Garfrost
UPDATE `creature_template` SET `Health_mod`=48 WHERE `entry`=364940;
--   Ick & Krick
UPDATE `creature_template` SET `Health_mod`=67 WHERE `entry`=364760;
UPDATE `creature_template` SET `Health_mod`=11.963 WHERE `entry`=364770;
--   Scourgelord Tyrannus
UPDATE `creature_template` SET `Health_mod`=80 WHERE `entry`=366580;

--  Forge of Souls
--   Bronjahm
UPDATE `creature_template` SET `Health_mod`=67 WHERE `entry`=364970;
--   Devourer of Souls
UPDATE `creature_template` SET `Health_mod`=67 WHERE `entry`=365020;

--  Halls of Reflection
--   Falric
UPDATE `creature_template` SET `Health_mod`=47 WHERE `entry`=381120;
--   Marwyn
UPDATE `creature_template` SET `Health_mod`=67 WHERE `entry`=381130;
-- Health correction in trash -- Pit of Saron, Halls of Reflection, Forge of Souls
UPDATE `creature_template` SET `Health_mod`=10.5 WHERE `entry` IN (368400,368930,368420,377110,364780,364990,365640,365160);
UPDATE `creature_template` SET `Health_mod`=20 WHERE `entry` IN (312600,368790);
UPDATE `creature_template` SET `Health_mod`=15 WHERE `entry` IN (368920,368960);
UPDATE `creature_template` SET `Health_mod`=21 WHERE `entry` IN (368300,366660);
UPDATE `creature_template` SET `Health_mod`=0.63 WHERE `entry` IN (368810);
UPDATE `creature_template` SET `Health_mod`=8.4 WHERE `entry` IN (377120,377130,366200);
UPDATE `creature_template` SET `Health_mod`=30 WHERE `entry` IN (367880);
UPDATE `creature_template` SET `Health_mod`=7.5 WHERE `entry` IN (365220);
UPDATE `creature_template` SET `Health_mod`=8 WHERE `entry` IN (368860);


-- Regroup loot
UPDATE `creature_loot_template` SET `groupid`=1 WHERE `entry`=36494 AND `item` IN (49802,49801,49805,49806,49804,49803);
UPDATE `creature_loot_template` SET `groupid`=1 WHERE `entry`=36476 AND `item` IN (49807,49810,49812,49808,49811,49809);
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry`=36658 AND `item` IN (49813,49825,49826,49823,49824,49821);
UPDATE `creature_loot_template` SET `groupid`=1 WHERE `entry`=36658 AND `item` IN (49822,49820,49818,49816,49817,49819);
UPDATE `creature_loot_template` SET `groupid`=1 WHERE `entry` IN (364760);
UPDATE `creature_loot_template` SET `groupid`=1 WHERE `entry`=364940;
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item`=49723; 

UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry` IN (364940,364760,366580,365020,364970);
UPDATE `creature_loot_template` SET `groupid`=2 WHERE `entry`=365020 AND `item`=43102;
UPDATE `creature_loot_template` SET `groupid`=2 WHERE `entry`=366580 AND `item`=43102;
DELETE FROM `creature_loot_template` WHERE `entry`=364940 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=364760 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=366580 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=365020 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=364970 AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(364940,47241,100,1,1,1),
(364760,47241,100,1,1,1),
(366580,47241,100,1,1,1),
(365020,47241,100,1,1,1),
(364970,47241,100,1,1,1);

-- Bronjahm
DELETE FROM `creature_loot_template` WHERE `entry`=364970 AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES (364970,47241,100,1,1,1);
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item` IN (49783,49785,49787,49788,49784,49786);
UPDATE `creature_loot_template` SET `groupid`=2 WHERE `item` IN (50317,50316);
-- Devourer of Souls
DELETE FROM `creature_loot_template` WHERE `entry`=365020 AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES (365020,47241,100,1,1,1);
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `item` IN (49793,49790,49789,49799,49800,49797,49796,49795,49798,49792,49791,49794);

-- Nerf Scourgelord Tyrannus
UPDATE `creature_template` SET `dmg_multiplier`=15 WHERE `entry`=366580;

-- #Gold loot(talan ez :D)
UPDATE `creature_template` SET `mingold`=175114,`maxgold`=198111 WHERE `entry` IN (36840,31260,36893,36892,36877,36907,36830,36842,36896,36881,36661,36879,36891,37711,36841,36874,37713,37712,36788,36886);
UPDATE `creature_template` SET `mingold`=1751114,`maxgold`=1981111 WHERE `entry` IN (36658,36476,36494);

-- Disenchant_loot_template
UPDATE `item_template` SET `DisenchantID`=68 WHERE `entry` IN -- 1 Abyss Crystal -> 100% Chance
(49808,
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

-- And the cleanup
DELETE FROM `reference_loot_template` WHERE `entry` IN (35051,35053,35054,35057,35058,35059);

-- Argent Tournament quests
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN 
(13864,13861,13788,13682,13603,13666,13741,13746,13752,13757,13689,13688,13685,13684,13690,13592,13744,13749,13755,13760,13600,13669,13742,13747,13753,13758,13790,13793,13847,13851,13852,13854,13855,13625,13828,13837,13835,13789,13791,13667,13679,13616,13670,13743,13748,13754,13759,13665,13745,13750,13756,13761,13699,13713,13723,13724,13725,13714,13715,13716,13717,13718,13671,13672);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN 
(13863,13862,13812,13809,13673,13762,13768,13773,13778,13783,13691,13693,13696,13694,13695,13765,13771,13776,13781,13786,13674,13763,13769,13774,13779,13784,13811,13814,13856,13857,13858,13859,13860,13677,13829,13839,13838,13810,13813,13668,13680,13675,13764,13770,13775,13780,13785,13767,13772,13777,13782,13787,13726,13727,13728,13729,13731,13697,13719,13720,13721,13722,13676,13678);

-- #Missing Quests for next updates
SET @Darion :=37120;
DELETE FROM `creature_questrelation` WHERE `id`=@Darion;
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(@Darion,24547),
(@Darion,24756),
(@Darion,24757),
(@Darion,24743),
(@Darion,24748),
(@Darion,24545),
(@Darion,24548),
(@Darion,24749);
DELETE FROM `creature_involvedrelation` WHERE `id`=@Darion;
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(@Darion,24547),
(@Darion,24756),
(@Darion,24757),
(@Darion,24743),
(@Darion,24748),
(@Darion,24548),
(@Darion,24749);
DELETE FROM `gameobject_involvedrelation` WHERE `id`=201742;
INSERT INTO `gameobject_involvedrelation` (`id`,`quest`) VALUES
(201742,24545);

-- Highlord Darion Morgrain's quests
	-- Shadow's Edge
UPDATE `quest_template` SET `PrevQuestId`=24545,`NextQuestId`=24547 WHERE `entry`=24743;
	-- A Feast of Souls
UPDATE `quest_template` SET `PrevQuestId`=24743,`NextQuestId`=24749 WHERE `entry`=24547;
	-- Unholy Infusion
UPDATE `quest_template` SET `PrevQuestId`=24547,`NextQuestId`=24756 WHERE `entry`=24749;
	-- Blood Infusion
UPDATE `quest_template` SET `PrevQuestId`=24749,`NextQuestId`=24757 WHERE `entry`=24756;
	-- Frost Infusion
UPDATE `quest_template` SET `PrevQuestId`=24756,`NextQuestId`=24548 WHERE `entry`=24757;
	-- The Splintered Throne
UPDATE `quest_template` SET `PrevQuestId`=24757,`NextQuestId`=24549 WHERE `entry`=24548;
	-- Shadowmourne...
UPDATE `quest_template` SET `PrevQuestId`=24548,`NextQuestId`=24748 WHERE `entry`=24549;
	-- The Lich King's Last Stand
UPDATE `quest_template` SET `PrevQuestId`=24549,`NextQuestId`=0 WHERE `entry`=24748;

-- Missing Quests for next update
SET @Ormus :=38316;
DELETE FROM `creature_questrelation` WHERE `id`=@Ormus;
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(@Ormus,24815),
(@Ormus,24827),
(@Ormus,24834),
(@Ormus,24835),
(@Ormus,24823),
(@Ormus,24828),
(@Ormus,24829),
(@Ormus,25239),
(@Ormus,25240),
(@Ormus,25242),
(@Ormus,24826),
(@Ormus,24832),
(@Ormus,24833),
(@Ormus,24825),
(@Ormus,24830),
(@Ormus,24831);
DELETE FROM `creature_involvedrelation` WHERE `id`=@Ormus;
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(@Ormus,24815),
(@Ormus,24827),
(@Ormus,24834),
(@Ormus,24835),
(@Ormus,24823),
(@Ormus,24828),
(@Ormus,24829),
(@Ormus,25239),
(@Ormus,25240),
(@Ormus,25242),
(@Ormus,24826),
(@Ormus,24832),
(@Ormus,24833),
(@Ormus,24825),
(@Ormus,24830),
(@Ormus,24831);

-- Reputation values
UPDATE `quest_template` SET `RequiredMinRepFaction`=1156,`RequiredMinRepValue`=3000 WHERE `entry`=50377;
UPDATE `quest_template` SET `RequiredMinRepFaction`=1156,`RequiredMinRepValue`=9000 WHERE `entry` IN (24827,24828,25239,24826,24825);
UPDATE `quest_template` SET `RequiredMinRepFaction`=1156,`RequiredMinRepValue`=21000 WHERE `entry` IN (24834,24823,25240,24832,24830);
UPDATE `quest_template` SET `RequiredMinRepFaction`=1156,`RequiredMinRepValue`=42000 WHERE `entry` IN (24835,24829,25242,24833,24831);

-- Riding trainer fixes

-- Apprentice Riding //www.wowhead.com/?spell=33388
-- Journeyman Riding //www.wowhead.com?spell=33391
-- Expert Riding //www.wowhead.com?spell=34090
-- Artisan Riding //www.wowhead.com?spell=34091
-- Cold Weather Flying //www.wowhead.com?spell=54197

DELETE FROM `npc_trainer` WHERE `entry`=4732; -- Randal Hunter
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(4732,33388,40000,0,0,20),
(4732,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=4772; -- Ultham Ironhorn
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(4772,33388,40000,0,0,20),
(4772,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=20914; -- Aalun
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(20914,33388,40000,0,0,20),
(20914,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=16280; -- Perascamin
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(16280,33388,40000,0,0,20),
(16280,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=4773; -- Velma Warnam
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(4773,33388,40000,0,0,20),
(4773,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=3690; -- Kal Stormsinger
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(3690,33388,40000,0,0,20),
(3690,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=4753; -- Jartsam
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(4753,33388,40000,0,0,20),
(4753,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=7954; -- Binjy Featherwhistle
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(7954,33388,40000,0,0,20),
(7954,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=4752; -- Kildar
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(4752,33388,40000,0,0,20),
(4752,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=7953; -- Xar'Ti
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(7953,33388,40000,0,0,20),
(7953,33391,500000,762,75,40);
DELETE FROM `npc_trainer` WHERE `entry`=35100; -- Hargen Bronzewing
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(35100,33388,40000,0,0,20),
(35100,33391,500000,762,75,40),
(35100,34090,2500000,762,150,60),
(35100,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=35093; -- Wind Rider Jahubo
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(35093,33388,40000,0,0,20),
(35093,33391,500000,762,75,40),
(35093,34090,2500000,762,150,60),
(35093,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=20511; -- Ilsa Blusterbrew
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(20511,33388,40000,0,0,20),
(20511,33391,500000,762,75,40),
(20511,34090,2500000,762,150,60),
(20511,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=35133; -- Maigra Keenfeather
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(35133,33388,40000,0,0,20),
(35133,33391,500000,762,75,40),
(35133,34090,2500000,762,150,60),
(35133,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=20500; -- Olrokk
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(20500,33388,40000,0,0,20),
(20500,33391,500000,762,75,40),
(20500,34090,2500000,762,150,60),
(20500,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=35135; -- Wind Rider Sabamba
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(35135,33388,40000,0,0,20),
(35135,33391,500000,762,75,40),
(35135,34090,2500000,762,150,60),
(35135,34091,50000000,762,225,70);
DELETE FROM `npc_trainer` WHERE `entry`=28746; -- Pilot Vic
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(28746,33388,40000,0,0,20),
(28746,33391,500000,762,75,40),
(28746,34090,2500000,762,150,60),
(28746,34091,50000000,762,225,70),
(28746,54197,10000000,762,225,77);
DELETE FROM `npc_trainer` WHERE `entry`=31238; -- Hira Snowdawn
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(31238,33388,40000,0,0,20),
(31238,33391,500000,762,75,40),
(31238,34090,2500000,762,150,60),
(31238,34091,50000000,762,225,70),
(31238,54197,10000000,762,225,77);
DELETE FROM `npc_trainer` WHERE `entry`=31247; -- Roxi Ramrocket
INSERT INTO `npc_trainer` (`entry`,`spell`,`spellcost`,`reqskill`,`reqskillvalue`,`reqlevel`) VALUES
(31247,33388,40000,0,0,20),
(31247,33391,500000,762,75,40),
(31247,34090,2500000,762,150,60),
(31247,34091,50000000,762,225,70),
(31247,54197,10000000,762,225,77);

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