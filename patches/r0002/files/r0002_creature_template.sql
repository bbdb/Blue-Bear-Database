/* 
BBDB COMMENT:
	~ Faction FIX(es)
	~ Damage FIX(es)
	~ Flag FIX(es)
	~ Health/Mana/Armor FIX(es)
*/

-- The Champion of Anguish Quest Chain fix
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN 
(
30014, -- Yggdras
30093, -- Yggdras Worm
30017, -- Stinkbeard
30026, -- Az'Barin, Prince of the Gust
30019, -- Duke Singen
30025, -- Erathius, King of Dirt
30024, -- Gargoral the Water Lord
30020, -- Orinoko Tuskbreaker
30023, -- Korrak the Bloodrager
30022  -- Vladof the Butcher
);

-- Boneguard Commander fix
UPDATE `creature_template` SET `type_flags`=0,`flags_extra`=`flags_extra`&~128 WHERE `entry`=34127;
UPDATE `creature_template` SET `mindmg`=367,`maxdmg`=519,`attackpower`=481,`dmg_multiplier`=5,`baseattacktime`=2000 WHERE `entry`=34127;

-- Chillmaw and Cultist Bombardier fix
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` IN (33687,33695);

-- Gold loot(FoS,PoS,HoR)
UPDATE `creature_template` SET `mingold`=175114,`maxgold`=198111 WHERE `entry` IN (36840,31260,36893,36892,36877,36907,36830,36842,36896,36881,36661,36879,36891,37711,36841,36874,37713,37712,36788,36886);
UPDATE `creature_template` SET `mingold`=1751114,`maxgold`=1981111 WHERE `entry` IN (36658,36476,36494);

-- Pet corrections
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry` IN
(416,417,510,1860,1863);