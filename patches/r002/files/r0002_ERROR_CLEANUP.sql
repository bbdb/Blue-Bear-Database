DELETE FROM `creature_addon` WHERE `guid` IN (70177,104990);
DELETE FROM `creature_loot_template` WHERE `entry`=1563;
UPDATE `creature_loot_template` SET `groupid`=0 WHERE `entry` IN (15978,15979,15980,15981,16167,15974,15975,15976);