-- Faction fixes
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN 
(
30014,30093, -- Yggdras / Yggdras Worm
30017, -- Stinkbeard
30026,30019,30025,30024, -- Az'Barin / Duke Singen / Erathius / Gargoral
30020,30113,30110, -- Orinoko Tuskbeard / Whisker / Hungry Penguin
30023, -- Korrak the Bloodrager
30022 -- Vladof the Butcher
);

UPDATE `version` SET `db_version`='BBDB_0001_07292058';
