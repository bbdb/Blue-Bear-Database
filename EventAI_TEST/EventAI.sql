/* ######################################################
############# BBCore EVENTAI SYSTEM SUPPORT #############
###################################################### */


-- Script_texts
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1740000 AND -1740008;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`) VALUES
(0,-1740000,'You no take candle!'),
(0,-1740001,'Yiieeeee! Me run!'),
(0,-1740002,'The Brotherhood will not tolerate your actions.'),
(0,-1740003,'Ah, a chance to use this freshly sharpened blade.'),
(0,-1740004,'Feel the power of the Brotherhood!'),
(0,-1740005,'%s attempts to run away in fear!'),
(0,-1740006,'More bones to gnaw on...'),
(0,-1740007,'Grrrr... fresh meat!'),
(0,-1740008,'I see those fools at the Abbey sent some fresh meat for us.');

-- npc_kobold
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_kobold' WHERE `entry` IN (6,80);

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (6,80);

-- npc_defias_thug
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_defias_thug' WHERE `entry`=38;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=38;

-- npc_kobold_miner
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_kobold_miner' WHERE `entry`=40;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=40;

-- npc_mine_spider
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_mine_spider' WHERE `entry`=43;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=43;

-- npc_murloc_forager
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_murloc_forager' WHERE `entry`=46;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=46;

-- npc_skeletal_warrior
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_skeletal_warrior' WHERE `entry`=48;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=48;

-- npc_ruklar_the_trapper
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_ruklar_the_trapper' WHERE `entry`=60;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=60;

-- npc_thuros
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_thuros' WHERE `entry`=61;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=61;

-- npc_diseased_timber_wolf
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_diseased_timber_wolf' WHERE `entry`=69;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=69;

-- npc_narg_the_taskmaster
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_narg_the_taskmaster' WHERE `entry`=79;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=79;

-- npc_defias_cutpurse
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_defias_cutpurse' WHERE `entry`=94;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=94;

-- npc_defias_smuggler
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_defias_smuggler' WHERE `entry`=95;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=95;

-- npc_riverpaw_runt
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_riverpaw_runt' WHERE `entry`=97;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=97;

-- npc_riverpaw_taskmaster
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_riverpaw_taskmaster' WHERE `entry`=98;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=98;

-- npc_morgaine
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_morgaine' WHERE `entry`=99;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=99;

-- npc_gruff_swiftbite
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_gruff_swiftbite' WHERE `entry`=99;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=100;

-- npc_garrick_padfoot
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_garric_padfoot' WHERE `entry`=103;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=103;

-- npc_stonetusk_boar
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_stonetusk_boar' WHERE `entry`=113;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=113;

-- npc_harvest_reaper
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_harvest_reaper' WHERE `entry`=115;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=115;

-- npc_defias_bandit
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_defias_bandit' WHERE `entry`=116;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=116;

-- npc_riverpaw_gnoll
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_riverpaw_gnoll' WHERE `entry`=117;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=117;
