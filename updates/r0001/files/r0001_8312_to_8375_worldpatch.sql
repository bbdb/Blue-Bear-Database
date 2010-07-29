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