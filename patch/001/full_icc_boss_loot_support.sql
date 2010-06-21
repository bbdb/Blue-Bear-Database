# ################################################## #
# ######### Icecrown Citadel Loot Template ######### #
# ################################################## #
#											// Made by ZOOMIKA

/* STATUS: 80% 
MISSING: 
		~ Gunship Battle
		~ Deathbringer Saurfang
		~ Valithria Dreamwalker
		~ Some trash loots

WANT TO...: Rewrite some ChanceOrQuestChances
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
-- Gunship Battle
SET @batt10n :=201873;
-- Deathbringer Saurfang
SET @saur10n :=37813;
SET @saur25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@saur10n);
SET @saur10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@saur10n);
SET @saur25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@saur10n);
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
-- Valithria Dreamwalker
SET @vali10n :=36789;
SET @vali25n :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@vali10n);
SET @vali10h :=(SELECT `difficulty_entry_2` FROM `creature_template` WHERE `entry`=@vali10n);
SET @vali25h :=(SELECT `difficulty_entry_3` FROM `creature_template` WHERE `entry`=@vali10n);
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
(@lord10n,50772,14,1,0,1,1,0,0,0), -- Ancient Skeletal Boots
(@lord10n,50759,14,1,0,1,1,0,0,0), -- Bone Warden's Splitter
(@lord10n,50760,13,1,0,1,1,0,0,0), -- Bonebreaker Scepter
(@lord10n,50761,26,1,0,1,1,0,0,0), -- Citadel Enforcer's Claymore
(@lord10n,50774,13,1,0,1,1,0,0,0), -- Coldwraith Bracers
(@lord10n,50773,14,1,0,1,1,0,0,0), -- Cord of the Patronizing Practitioner
(@lord10n,50775,13,1,0,1,1,0,0,0), -- Corrupted Silverplate Leggings
(@lord10n,50771,20,1,0,1,1,0,0,0), -- Frost Needle
(@lord10n,50762,13,1,0,1,1,0,0,0), -- Linked Scourge Vertebrae
(@lord10n,50763,9,1,0,1,1,0,0,0), -- Marrowgar's Scratching Choker
(@lord10n,50764,18,1,0,1,1,0,0,0), -- Shawl of Nerubian Silk
(@lord10n,50339,20,1,0,1,1,0,0,0), -- Sliver of Pure Ice
(@lord10n,49908,1,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lord Marrowgar(10h) 
(@lord10h,51931,14,1,0,1,1,0,0,0), -- Ancient Skeletal Boots
(@lord10h,51938,14,1,0,1,1,0,0,0), -- Bone Warden's Splitter
(@lord10h,51937,13,1,0,1,1,0,0,0), -- Bonebreaker Scepter
(@lord10h,51936,26,1,0,1,1,0,0,0), -- Citadel Enforcer's Claymore
(@lord10h,51929,13,1,0,1,1,0,0,0), -- Coldwraith Bracers
(@lord10h,51930,14,1,0,1,1,0,0,0), -- Cord of the Patronizing Practitioner
(@lord10h,51928,13,1,0,1,1,0,0,0), -- Corrupter Silverplate Leggings
(@lord10h,51932,20,1,0,1,1,0,0,0), -- Frost Needle
(@lord10h,51935,13,1,0,1,1,0,0,0), -- Linked Scourge Verebrae
(@lord10h,51934,9,1,0,1,1,0,0,0), -- Marrowgar's Scratching Choker
(@lord10h,51933,18,1,0,1,1,0,0,0), -- Shawl of Nerubian Silk
(@lord10h,50346,20,1,0,1,1,0,0,0), -- Sliver of Pure Ice
(@lord10h,49908,1,1,0,1,1,0,0,0), -- Primordial Saronite
-- Lord Marrowgar(25N)
(@lord25n,50274,-4,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@lord25n,49949,19,1,0,1,1,0,0,0), -- Band of the Bone Colossus
(@lord25n,49975,21,1,0,1,1,0,0,0), -- Bone Sentinel's Amulet
(@lord25n,49960,14,1,0,1,1,0,0,0), -- Bracers of Dark Reckoning
(@lord25n,50415,29,1,0,1,1,0,0,0), -- Bryntroll, the Bone Arbiter
(@lord25n,49976,21,1,0,1,1,0,0,0), -- Bulwark of Smouldering Steel
(@lord25n,49978,20,1,0,1,1,0,0,0), -- Crushing Coldwraith Belt
(@lord25n,49950,15,1,0,1,1,0,0,0), -- Frostbitten Fur Boots
(@lord25n,49968,31,1,0,1,1,0,0,0), -- Frozen Bonespike
(@lord25n,49951,15,1,0,1,1,0,0,0), -- Gendarme's Cuirass
(@lord25n,49979,14,1,0,1,1,0,0,0), -- Handguards of Winter's Respite
(@lord25n,49964,14,1,0,1,1,0,0,0), -- Legguards of Lost Hope
(@lord25n,49977,27,1,0,1,1,0,0,0), -- Loop of the Endless Labyrinth
(@lord25n,49967,14,1,0,1,1,0,0,0), -- Marrowgar's Frigid Eye
(@lord25n,49980,13,1,0,1,1,0,0,0), -- Rusted Bonespike Pauldrons
(@lord25n,49952,15,1,0,1,1,0,0,0), -- Snowserpent Mail Helm
(@lord25n,49908,22,1,0,1,1,0,0,0), -- Primordial Saronite
-- Lord Marrowgar(25H) 
(@lord25h,50274,4,1,1,1,1,0,0,0), -- Shadowfrost Shard
(@lord25h,50604,19,1,0,1,1,0,0,0), -- Band of the Bone Colossus
(@lord25h,50609,21,1,0,1,1,0,0,0), -- Bone Sentinel's Amulet
(@lord25h,50611,14,1,0,1,1,0,0,0), -- Bracers of Dark Reckoning
(@lord25h,50709,29,1,0,1,1,0,0,0), -- Bryntroll, the Bone Arbiter
(@lord25h,50616,21,1,0,1,1,0,0,0), -- Bulwark of Smouldering Steel
(@lord25h,50613,20,1,0,1,1,0,0,0), -- Crushing Coldwraith Belt
(@lord25h,50607,15,1,0,1,1,0,0,0), -- Frostbitten Fur Boots
(@lord25h,50608,31,1,0,1,1,0,0,0), -- Frozen Bonespike
(@lord25h,50606,15,1,0,1,1,0,0,0), -- Gendarme's Cuirass
(@lord25h,50615,14,1,0,1,1,0,0,0), -- Handguards of Winter's Respite
(@lord25h,50612,14,1,0,1,1,0,0,0), -- Legguards of Lost Hope
(@lord25h,50614,27,1,0,1,1,0,0,0), -- Loop of the Endless Labyrinth
(@lord25h,50610,14,1,0,1,1,0,0,0), -- Marrowgar's Frigid Eye
(@lord25h,50617,13,1,0,1,1,0,0,0), -- Rusted Bonespike Pauldrons
(@lord25h,50605,15,1,0,1,1,0,0,0), -- Snowserpent Mail Helm
(@lord25h,49908,22,1,1,1,1,0,0,0), -- Primordial Saronite

-- Lady Deathwhisper(10N)
(@lady10n,50783,13,1,0,1,1,0,0,0), -- Boots of the Frozen Seed
(@lady10n,50785,12,1,0,1,1,0,0,0), -- Bracers of Dark Blessings
(@lady10n,50780,14,1,0,1,1,0,0,0), -- Chestguard of the Frigid Noose
(@lady10n,50784,13,1,0,1,1,0,0,0), -- Deathspeaker Disciple's Belt
(@lady10n,50779,13,1,0,1,1,0,0,0), -- Deathspeaker Zealot's Helm
(@lady10n,50786,12,1,0,1,1,0,0,0), -- Ghoul Commander's Cuirass
(@lady10n,50777,14,1,0,1,1,0,0,0), -- Handgrips of Frost and Sleet
(@lady10n,50776,20,1,0,1,1,0,0,0), -- Njorndar Bone Bow
(@lady10n,50781,25,1,0,1,1,0,0,0), -- Scourgelord's Baton
(@lady10n,50782,19,1,0,1,1,0,0,0), -- Sister's Handshrouds
(@lady10n,50778,14,1,0,1,1,0,0,0), -- Soulthief's Braided Belt
(@lady10n,50342,18,1,0,1,1,0,0,0), -- Whispering Fanged Skull
(@lady10n,49908,1,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lady Deathwhisper(10H)
(@lady10h,51920,13,1,0,1,1,0,0,0), -- Boots of the Frozen Seed
(@lady10h,51918,12,1,0,1,1,0,0,0), -- Bracers of Dark Blessings
(@lady10h,51923,14,1,0,1,1,0,0,0), -- Chestguard of the Frigid Noose
(@lady10h,51919,13,1,0,1,1,0,0,0), -- Deathspeaker Disciple's Belt
(@lady10h,51924,13,1,0,1,1,0,0,0), -- Deathspeaker Zealot's Helm
(@lady10h,51917,12,1,0,1,1,0,0,0), -- Ghoul Commander's Cuirass
(@lady10h,51926,14,1,0,1,1,0,0,0), -- Handgrips of Frost and Sleet
(@lady10h,51927,20,1,0,1,1,0,0,0), -- Njorndar Bone Bow
(@lady10h,51922,25,1,0,1,1,0,0,0), -- Scourgelord's Baton
(@lady10h,51921,19,1,0,1,1,0,0,0), -- Sister's Handshrouds
(@lady10h,51925,14,1,0,1,1,0,0,0), -- Soulthief's Braided Belt
(@lady10h,50343,18,1,0,1,1,0,0,0), -- Whispering Fanged Skull
(@lady10h,49908,1,1,1,1,1,0,0,0), -- Primordial Saronite
-- Lady Deathwhisper(25N)
(@lady25n,50274,-3,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lady25n,49989,19,1,0,1,1,0,0,0), -- Ahn'kahar Onyx Neckguard
(@lady25n,49983,19,1,0,1,1,0,0,0), -- Blood-Soaked Saronite Stompers
(@lady25n,49986,13,1,0,1,1,0,0,0), -- Broken Ram Skull Helm
(@lady25n,49987,19,1,0,1,1,0,0,0), -- Cultist's Bloodsoaked Spaulders
(@lady25n,49996,15,1,0,1,1,0,0,0), -- Deathwhisper Raiment
(@lady25n,49995,14,1,0,1,1,0,0,0), -- Fallen Lord's Handguards
(@lady25n,49982,19,1,0,1,1,0,0,0), -- Heartpierce
(@lady25n,49985,12,1,0,1,1,0,0,0), -- Juggernaut Band
(@lady25n,49988,19,1,0,1,1,0,0,0), -- Leggings of Northern Lights
(@lady25n,49993,14,1,0,1,1,0,0,0), -- Necrophotic Greaves
(@lady25n,49992,32,1,0,1,1,0,0,0), -- Nibelung
(@lady25n,49990,20,1,0,1,1,0,0,0), -- Ring of Maddening Whispers
(@lady25n,49991,19,1,0,1,1,0,0,0), -- Shoulders of Mercy Killing
(@lady25n,49994,21,1,0,1,1,0,0,0), -- The Lady's Brittle Bracers
(@lady25n,50034,28,1,0,1,1,0,0,0), -- Zod's Repeating Longbow
(@lady25n,49908,22,1,0,1,1,0,0,0), -- Primordial Saronite
-- Lady Deathwhisper(25H) 
(@lady25h,50274,-3,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lady25h,50647,19,1,0,1,1,0,0,0), -- Ahn'kahar Onyx Neckguard
(@lady25h,50639,19,1,0,1,1,0,0,0), -- Blood-Soaked Saronite Stompers
(@lady25h,50640,13,1,0,1,1,0,0,0), -- Broken Ram Skull Helm
(@lady25h,50646,19,1,0,1,1,0,0,0), -- Cultist's Bloodsoaked Spaulders
(@lady25h,50649,15,1,0,1,1,0,0,0), -- Deathwhisper Raiment
(@lady25h,50650,14,1,0,1,1,0,0,0), -- Fallen Lord's Handguards
(@lady25h,50641,19,1,0,1,1,0,0,0), -- Heartpierce
(@lady25h,50642,12,1,0,1,1,0,0,0), -- Juggernaut Band
(@lady25h,50645,19,1,0,1,1,0,0,0), -- Leggings of Northern Lights
(@lady25h,50652,14,1,0,1,1,0,0,0), -- Necrophotic Greaves
(@lady25h,50648,32,1,0,1,1,0,0,0), -- Nibelung
(@lady25h,50644,20,1,0,1,1,0,0,0), -- Ring of Maddening Whispers
(@lady25h,50643,19,1,0,1,1,0,0,0), -- Shoulders of Mercy Killing
(@lady25h,50651,21,1,0,1,1,0,0,0), -- The Lady's Brittle Bracers
(@lady25h,50638,28,1,0,1,1,0,0,0), -- Zod's Repeating Longbow
(@lady25h,49908,22,1,1,1,1,0,0,0), -- Primordial Saronite

-- Festergut(10N)
(@fest10n,50966,27,1,0,1,1,0,0,0), -- Abracadaver
(@fest10n,50988,12,1,0,1,1,0,0,0), -- Bloodstained Surgeon's Shoulderguards
(@fest10n,50859,9,1,0,1,1,0,0,0), -- Cloak of Many Skins
(@fest10n,50967,12,1,0,1,1,0,0,0), -- Festergut's Gaseous Gloves
(@fest10n,50811,14,1,0,1,1,0,0,0), -- Festering Fingerguards
(@fest10n,50810,21,1,0,1,1,0,0,0), -- Gutbuster
(@fest10n,50990,18,1,0,1,1,0,0,0), -- Kilt of Untreated Wounds
(@fest10n,50858,15,1,0,1,1,0,0,0), -- Plague-Soaked Leather Leggings
(@fest10n,50852,19,1,0,1,1,0,0,0), -- Precious's Putrid Collar
(@fest10n,50986,12,1,0,1,1,0,0,0), -- Signet of Putrefaction
(@fest10n,50812,14,1,0,1,1,0,0,0), -- Taldron's Long Neglected Boots
(@fest10n,50985,12,1,0,1,1,0,0,0), -- Wrists of Septic Shock
(@fest10n,49908,1.3,1,1,1,1,0,0,0), -- Primordial Saronite
-- Festergut(10H) 
(@fest10h,51887,27,1,0,1,1,0,0,0), -- Abracadaver
(@fest10h,51883,12,1,0,1,1,0,0,0), -- Bloodstained Surgeon's Shoulderguards
(@fest10h,51888,9,1,0,1,1,0,0,0), -- Cloak of Many Skins
(@fest10h,51886,12,1,0,1,1,0,0,0), -- Festergut's Gaseous Gloves
(@fest10h,51892,14,1,0,1,1,0,0,0), -- Festering Fingerguards
(@fest10h,51893,21,1,0,1,1,0,0,0), -- Gutbuster
(@fest10h,51882,18,1,0,1,1,0,0,0), -- Kilt of Untreated Wounds
(@fest10h,51889,15,1,0,1,1,0,0,0), -- Plague-Soaked Leather Leggings
(@fest10h,51890,19,1,0,1,1,0,0,0), -- Precious's Putrid Collar
(@fest10h,51884,12,1,0,1,1,0,0,0), -- Signet of Putrefaction
(@fest10h,51891,14,1,0,1,1,0,0,0), -- Taldron's Long Neglected Boots
(@fest10h,51885,12,1,0,1,1,0,0,0), -- Wrists of Septic Shock
(@fest10h,49908,1.3,1,1,1,1,0,0,0), -- Primordial Saronite
-- Festergut(25N)
(@fest25n,50274,7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@fest25n,50036,11,1,0,1,1,0,0,0), -- Belt of Broken Bones
(@fest25n,50035,15,1,0,1,1,0,0,0), -- Black Bruise
(@fest25n,50038,15,1,0,1,1,0,0,0), -- Carapace of Forgotten Kings
(@fest25n,50040,27,1,0,1,1,0,0,0), -- Distant Land
(@fest25n,50060,17,1,0,1,1,0,0,0), -- Faceplate of the Forgotten
(@fest25n,50226,-96,1,0,1,1,0,0,0), -- Festergut's Acidic Blood
(@fest25n,50037,16,1,0,1,1,0,0,0), -- Fleshrending Gauntlets
(@fest25n,50042,18,1,0,1,1,0,0,0), -- Gangrenous Leggings
(@fest25n,50061,16,1,0,1,1,0,0,0), -- Holiday's Grace
(@fest25n,50059,12,1,0,1,1,0,0,0), -- Horrific Flesh Epaulets
(@fest25n,50041,13,1,0,1,1,0,0,0), -- Leather of Stitched Scourge Parts
(@fest25n,50063,17,1,0,1,1,0,0,0), -- Lingering Illness
(@fest25n,50414,16,1,0,1,1,0,0,0), -- Might of Blight
(@fest25n,50413,16,1,0,1,1,0,0,0), -- Nerub'ar Stalker's Cord
(@fest25n,50062,25,1,0,1,1,0,0,0), -- Plague Scientist's Boots
(@fest25n,50056,19,1,0,1,1,0,0,0), -- Plaguebringer's Stained Pants
(@fest25n,50064,15,1,0,1,1,0,0,0), -- Unclean Surgical Gloves
(@fest25n,49908,22,1,1,1,1,0,0,0), -- Primordial Saronite
-- Festergut(25H) 
(@fest25h,50274,-7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@fest25h,50691,11,1,0,1,1,0,0,0), -- Belt of Broken Bones
(@fest25h,50692,15,1,0,1,1,0,0,0), -- Black Bruise
(@fest25h,50689,15,1,0,1,1,0,0,0), -- Carapace of Forgotten Kings
(@fest25h,50695,27,1,0,1,1,0,0,0), -- Distant Land
(@fest25h,50701,17,1,0,1,1,0,0,0), -- Faceplate of the Forgotten
(@fest25h,50226,-96,1,0,1,1,0,0,0), -- Festergut's Acidic Blood
(@fest25h,50690,16,1,0,1,1,0,0,0), -- Fleshrending Gauntlets
(@fest25h,50697,18,1,0,1,1,0,0,0), -- Gangrenous Leggings
(@fest25h,50700,16,1,0,1,1,0,0,0), -- Holiday's Grace
(@fest25h,50698,12,1,0,1,1,0,0,0), -- Horrific Flesh Epaulets
(@fest25h,50696,13,1,0,1,1,0,0,0), -- Leather of Stitched Scourge Parts
(@fest25h,50702,17,1,0,1,1,0,0,0), -- Lingering Illness
(@fest25h,50693,16,1,0,1,1,0,0,0), -- Might of Blight
(@fest25h,50688,16,1,0,1,1,0,0,0), -- Nerub'ar Stalker's Cord
(@fest25h,50699,25,1,0,1,1,0,0,0), -- Plague Scientist's Boots
(@fest25h,50694,19,1,0,1,1,0,0,0), -- Plaguebringer's Stained Pants
(@fest25h,50703,15,1,0,1,1,0,0,0), -- Unclean Surgical Gloves
(@fest25h,49908,22,1,1,1,1,0,0,0), -- Primordial Saronite

-- Rotface(10N)
(@rotf10n,51003,13,1,0,1,1,0,0,0), -- Abomination Knuckles
(@rotf10n,51009,11,1,0,1,1,0,0,0), -- Chestguard of the Failed Experiment
(@rotf10n,51008,11,1,0,1,1,0,0,0), -- Choker of Filthy Diamonds
(@rotf10n,51007,18,1,0,1,1,0,0,0), -- Ether-Soaked Bracers
(@rotf10n,51000,14,1,0,1,1,0,0,0), -- Fles-Shaper's Gurney Strap
(@rotf10n,51005,12,1,0,1,1,0,0,0), -- Gloves of Broken Fingers
(@rotf10n,50999,13,1,0,1,1,0,0,0), -- Gluth's Fetching Knife
(@rotf10n,51004,26,1,0,1,1,0,0,0), -- Lockjaw
(@rotf10n,51001,13,1,0,1,1,0,0,0), -- Rotface's Rupturing Ring
(@rotf10n,50998,20,1,0,1,1,0,0,0), -- Shaft of Glacial Ice
(@rotf10n,51006,12,1,0,1,1,0,0,0), -- Shuffling Shoes
(@rotf10n,51002,14,1,0,1,1,0,0,0), -- Taldron's Short-Sighted Helm
(@rotf10n,49908,1.6,1,0,1,1,0,0,0), -- Primordial Saronite
-- Rotface(10H) 
(@rotf10h,51876,13,1,0,1,1,0,0,0), -- Abomination Knuckles
(@rotf10h,51870,11,1,0,1,1,0,0,0), -- Chestguard of the Failed Experiment
(@rotf10h,51871,11,1,0,1,1,0,0,0), -- Choker of Filthy Diamonds
(@rotf10h,51872,18,1,0,1,1,0,0,0), -- Ether-Soaked Bracers
(@rotf10h,51879,14,1,0,1,1,0,0,0), -- Fles-Shaper's Gurney Strap
(@rotf10h,51874,12,1,0,1,1,0,0,0), -- Gloves of Broken Fingers
(@rotf10h,51880,13,1,0,1,1,0,0,0), -- Gluth's Fetching Knife
(@rotf10h,51875,26,1,0,1,1,0,0,0), -- Lockjaw
(@rotf10h,51878,13,1,0,1,1,0,0,0), -- Rotface's Rupturing Ring
(@rotf10h,51881,20,1,0,1,1,0,0,0), -- Shaft of Glacial Ice
(@rotf10h,51873,12,1,0,1,1,0,0,0), -- Shuffling Shoes
(@rotf10h,51877,14,1,0,1,1,0,0,0), -- Taldron's Short-Sighted Helm
(@rotf10h,49908,1.6,1,1,1,1,0,0,0), -- Primordial Saronite
-- Rotface(25N)
(@rotf25n,50274,7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@rotf25n,50021,17,1,0,1,1,0,0,0), -- Aldriana's Gloves of Secrecy
(@rotf25n,50023,19,1,0,1,1,0,0,0), -- Bile-Encrusted Medallion
(@rotf25n,50024,13,1,0,1,1,0,0,0), -- Blightborne Warplate
(@rotf25n,50030,11,1,0,1,1,0,0,0), -- Bloodsunder's Bracers
(@rotf25n,50033,17,1,0,1,1,0,0,0), -- Corpse-Impaling Spike
(@rotf25n,50032,11,1,0,1,1,0,0,0), -- Death Surgeon's Sleeves
(@rotf25n,50353,22,1,0,1,1,0,0,0), -- Dislodged Foreign Object
(@rotf25n,50022,16,1,0,1,1,0,0,0), -- Dual-Bladed Pauldrons
(@rotf25n,50026,14,1,0,1,1,0,0,0), -- Helm of the Elder Moon 
(@rotf25n,50020,16,1,0,1,1,0,0,0), -- Raging Behemoth's Shoulderplates
(@rotf25n,50016,17,1,0,1,1,0,0,0), -- Rib Spreader
(@rotf25n,50231,-92,1,0,1,1,0,0,0), -- Rotface's Acidic Blood
(@rotf25n,50027,14,1,0,1,1,0,0,0), -- Rot-Resistant Breastplate
(@rotf25n,50025,26,1,0,1,1,0,0,0), -- Seal of Many Mouths
(@rotf25n,50028,26,1,0,1,1,0,0,0), -- Trauma
(@rotf25n,50019,17,1,0,1,1,0,0,0), -- Winding Sheet
(@rotf25n,49908,21,1,1,1,1,0,0,0), -- Primordial Saronite
-- Rotface(25H) 
(@rotf25h,50274,7,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@rotf25h,50675,17,1,0,1,1,0,0,0), -- Aldriana's Gloves of Secrecy
(@rotf25h,50682,19,1,0,1,1,0,0,0), -- Bile-Encrusted Medallion
(@rotf25h,50681,13,1,0,1,1,0,0,0), -- Blightborne Warplate
(@rotf25h,50687,11,1,0,1,1,0,0,0), -- Bloodsunder's Bracers
(@rotf25h,50684,17,1,0,1,1,0,0,0), -- Corpse-Impaling Spike
(@rotf25h,50686,11,1,0,1,1,0,0,0), -- Death Surgeon's Sleeves
(@rotf25h,50348,22,1,0,1,1,0,0,0), -- Dislodged Foreign Object
(@rotf25h,50673,16,1,0,1,1,0,0,0), -- Dual-Bladed Pauldrons
(@rotf25h,50679,14,1,0,1,1,0,0,0), -- Helm of the Elder Moon 
(@rotf25h,50674,16,1,0,1,1,0,0,0), -- Raging Behemoth's Shoulderplates
(@rotf25h,50676,17,1,0,1,1,0,0,0), -- Rib Spreader
(@rotf25h,50231,-92,1,0,1,1,0,0,0), -- Rotface's Acidic Blood
(@rotf25h,50680,14,1,0,1,1,0,0,0), -- Rot-Resistant Breastplate
(@rotf25h,50678,26,1,0,1,1,0,0,0), -- Seal of Many Mouths
(@rotf25h,50685,26,1,0,1,1,0,0,0), -- Trauma
(@rotf25h,50677,17,1,0,1,1,0,0,0), -- Winding Sheet
(@rotf25h,49908,21,1,1,1,1,0,0,0), -- Primordial Saronite

-- Professor Putricide(10N)
(@prof10n,51016,23,1,0,1,1,0,0,0), -- Pendant of Split Veins 
(@prof10n,51020,17,1,0,1,1,0,0,0), -- Shoulders of Ruinous Senility
(@prof10n,51017,16,1,0,1,1,0,0,0), -- Cauterized Cord
(@prof10n,51013,16,1,0,1,1,0,0,0), -- Discarded Bag of Entrails
(@prof10n,51014,16,1,0,1,1,0,0,0), -- Scalpel-Sharpening Shoulderguards
(@prof10n,50341,16,1,0,1,1,0,0,0), -- Unidentifiable Organ
(@prof10n,51011,15,1,0,1,1,0,0,0), -- Flesh-Carving Scalpel
(@prof10n,51012,15,1,0,1,1,0,0,0), -- Infected Choker
(@prof10n,51015,15,1,0,1,1,0,0,0), -- Shoulderpads of the Morbid Ritual
(@prof10n,51010,11,1,0,1,1,0,0,0), -- The Facelifter
(@prof10n,51018,11,1,0,1,1,0,0,0), -- Chestplate of Septic Stitches
(@prof10n,51019,11,1,0,1,1,0,0,0), -- Rippling Flesh Kilt
(@prof10n,49908,1.1,1,1,1,1,0,0,0), -- Primordial Saronite
-- Professor Putricide(10H) 
(@prof10h,52025,63,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof10h,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof10h,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof10h,51863,23,1,0,1,1,0,0,0), -- Pendant of Split Veins 
(@prof10h,51859,17,1,0,1,1,0,0,0), -- Shoulders of Ruinous Senility
(@prof10h,51862,16,1,0,1,1,0,0,0), -- Cauterized Cord
(@prof10h,51866,16,1,0,1,1,0,0,0), -- Discarded Bag of Entrails
(@prof10h,51865,16,1,0,1,1,0,0,0), -- Scalpel-Sharpening Shoulderguards
(@prof10h,50344,16,1,0,1,1,0,0,0), -- Unidentifiable Organ
(@prof10h,51868,15,1,0,1,1,0,0,0), -- Flesh-Carving Scalpel
(@prof10h,51867,15,1,0,1,1,0,0,0), -- Infected Choker
(@prof10h,51864,15,1,0,1,1,0,0,0), -- Shoulderpads of the Morbid Ritual
(@prof10h,51869,11,1,0,1,1,0,0,0), -- The Facelifter
(@prof10h,51861,11,1,0,1,1,0,0,0), -- Chestplate of Septic Stitches
(@prof10h,51860,11,1,0,1,1,0,0,0), -- Rippling Flesh Kilt
(@prof10h,49908,1.1,1,1,1,1,0,0,0), -- Primordial Saronite
-- Professor Putricide(25N)
(@prof25n,50274,12,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prof25n,50067,18,1,0,1,1,0,0,0), -- Astrylian's Sutured cinch
(@prof25n,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof25n,50179,18,1,0,1,1,0,0,0), -- Last Word
(@prof25n,50069,13,1,0,1,1,0,0,0), -- Professor's Bloodied Smock
(@prof25n,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof25n,50068,17,1,0,1,1,0,0,0), -- Rigormortis
(@prof25n,50351,26,1,0,1,1,0,0,0), -- Tiny Abomination in a Jar
(@prof25n,52025,63,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof25n,49908,20,1,1,1,1,0,0,0), -- Primordial Saronite
-- Professor Putricide(25H) 
(@prof25h,50274,12,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prof25h,50707,18,1,0,1,1,0,0,0), -- Astrylian's Sutured cinch
(@prof25h,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@prof25h,52030,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@prof25h,50708,18,1,0,1,1,0,0,0), -- Last Word
(@prof25h,50705,13,1,0,1,1,0,0,0), -- Professor's Bloodied Smock
(@prof25h,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@prof25h,52029,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@prof25h,50704,17,1,0,1,1,0,0,0), -- Rigormortis
(@prof25h,50706,26,1,0,1,1,0,0,0), -- Tiny Abomination in a Jar
(@prof25h,52025,63,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@prof25h,52028,63,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@prof25h,49908,20,1,1,1,1,0,0,0), -- Primordial Saronite

-- Prince Valanar(10N)
(@prin10n,51381,22,1,0,1,1,0,0,0), -- Cerise Coiled Ring
(@prin10n,51326,22,1,0,1,1,0,0,0), -- Wand of Ruby Claret
(@prin10n,51022,20,1,0,1,1,0,0,0), -- Hersir's Greatspear
(@prin10n,51021,14,1,0,1,1,0,0,0), -- Soulbreaker
(@prin10n,51023,14,1,0,1,1,0,0,0), -- Taldaram's Soft Slippers
(@prin10n,51024,14,1,0,1,1,0,0,0), -- Thrice Fanged Signet
(@prin10n,51025,13,1,0,1,1,0,0,0), -- Battle-Maiden's Legguards
(@prin10n,51325,13,1,0,1,1,0,0,0), -- Blood-Drinker's Girdle
(@prin10n,51379,11,1,0,1,1,0,0,0), -- Bloodsoul Raiment
(@prin10n,51380,11,1,0,1,1,0,0,0), -- Pale Corpse Boots
(@prin10n,51383,11,1,0,1,1,0,0,0), -- Spaulders of the Blood Princes
(@prin10n,51382,11,1,0,1,1,0,0,0), -- Heartsick Mender's Cape
(@prin10n,49908,2,1,1,1,1,0,0,0), -- Primordial Saronite
-- Prince Valanar(10H) 
(@prin10h,51849,22,1,0,1,1,0,0,0), -- Cerise Coiled Ring
(@prin10h,51852,22,1,0,1,1,0,0,0), -- Wand of Ruby Claret
(@prin10h,51857,20,1,0,1,1,0,0,0), -- Hersir's Greatspear
(@prin10h,51858,14,1,0,1,1,0,0,0), -- Soulbreaker
(@prin10h,51856,14,1,0,1,1,0,0,0), -- Taldaram's Soft Slippers
(@prin10h,51855,14,1,0,1,1,0,0,0), -- Thrice Fanged Signet
(@prin10h,51854,13,1,0,1,1,0,0,0), -- Battle-Maiden's Legguards
(@prin10h,51853,13,1,0,1,1,0,0,0), -- Blood-Drinker's Girdle
(@prin10h,51851,11,1,0,1,1,0,0,0), -- Bloodsoul Raiment
(@prin10h,51850,11,1,0,1,1,0,0,0), -- Pale Corpse Boots
(@prin10h,51847,11,1,0,1,1,0,0,0), -- Spaulders of the Blood Princes
(@prin10h,51848,11,1,0,1,1,0,0,0), -- Heartsick Mender's Cape
(@prin10h,49908,2,1,1,1,1,0,0,0), -- Primordial Saronite
-- Prince Valanar(25N)
(@prin25n,50274,10,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prin25n,50175,14,1,0,1,1,0,0,0), -- Crypt Keeper's Bracers
(@prin25n,49919,26,1,0,1,1,0,0,0), -- Cryptmaker
(@prin25n,50073,13,1,0,1,1,0,0,0), -- Geistlord's Punishment Sack
(@prin25n,50174,13,1,0,1,1,0,0,0), -- Incarnadine Band of Mending
(@prin25n,50184,13,1,0,1,1,0,0,0), -- Keleseth's Seducer
(@prin25n,50072,13,1,0,1,1,0,0,0), -- Landsoul's Horned Greathelm
(@prin25n,50177,13,1,0,1,1,0,0,0), -- Mail Crimson Coins
(@prin25n,50074,13,1,0,1,1,0,0,0), -- Royal Crimson Cloak
(@prin25n,50172,15,1,0,1,1,0,0,0), -- Sanguine Silk Robes
(@prin25n,50176,13,1,0,1,1,0,0,0), -- San'layn Ritualist Gloves
(@prin25n,50173,30,1,0,1,1,0,0,0), -- Shadow Silk Spindle
(@prin25n,50171,13,1,0,1,1,0,0,0), -- Shoulders of Frost-Tipped Thorns
(@prin25n,50075,13,1,0,1,1,0,0,0), -- Taldaram's Plated Fists
(@prin25n,50071,14,1,0,1,1,0,0,0), -- Treads of the Wasteland
(@prin25n,50170,28,1,0,1,1,0,0,0), -- Valanar's Other Signet Ring
(@prin25n,49908,19,1,1,1,1,0,0,0), -- Primordial Essence
-- Prince Valanar(25H) 
(@prin25h,50274,10,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@prin25h,50721,14,1,0,1,1,0,0,0), -- Crypt Keeper's Bracers
(@prin25h,50603,26,1,0,1,1,0,0,0), -- Cryptmaker
(@prin25h,50713,13,1,0,1,1,0,0,0), -- Geistlord's Punishment Sack
(@prin25h,50720,13,1,0,1,1,0,0,0), -- Incarnadine Band of Mending
(@prin25h,50710,13,1,0,1,1,0,0,0), -- Keleseth's Seducer
(@prin25h,50712,13,1,0,1,1,0,0,0), -- Landsoul's Horned Greathelm
(@prin25h,50723,13,1,0,1,1,0,0,0), -- Mail Crimson Coins
(@prin25h,50718,13,1,0,1,1,0,0,0), -- Royal Crimson Cloak
(@prin25h,50717,15,1,0,1,1,0,0,0), -- Sanguine Silk Robes
(@prin25h,50722,13,1,0,1,1,0,0,0), -- San'layn Ritualist Gloves
(@prin25h,50719,30,1,0,1,1,0,0,0), -- Shadow Silk Spindle
(@prin25h,50715,13,1,0,1,1,0,0,0), -- Shoulders of Frost-Tipped Thorns
(@prin25h,50716,13,1,0,1,1,0,0,0), -- Taldaram's Plated Fists
(@prin25h,50711,14,1,0,1,1,0,0,0), -- Treads of the Wasteland
(@prin25h,50714,28,1,0,1,1,0,0,0), -- Valanar's Other Signet Ring
(@prin25h,49908,19,1,1,1,1,0,0,0), -- Primordial Essence

-- Blood Queen Lana'thel(10N)
(@lana10n,51384,12,1,0,1,1,0,0,0), -- Bloodsipper
(@lana10n,51551,12,1,0,1,1,0,0,0), -- Chestguard of Siphoned Elements
(@lana10n,51548,11,1,0,1,1,0,0,0), -- Collar of Haughty Disdain
(@lana10n,51554,17,1,0,1,1,0,0,0), -- Cowl of Malefic Repose
(@lana10n,51550,11,1,0,1,1,0,0,0), -- Ivory-Inlaid Leggings
(@lana10n,51553,17,1,0,1,1,0,0,0), -- Lana'thel's Bloody Nail
(@lana10n,51387,15,1,0,1,1,0,0,0), -- Seal of the Twilight Queen
(@lana10n,51552,11,1,0,1,1,0,0,0), -- Shoulderpads of the Searing Kiss
(@lana10n,51385,17,1,0,1,1,0,0,0), -- Stakethrower
(@lana10n,51386,12,1,0,1,1,0,0,0), -- Throatrender Handguards
(@lana10n,51555,11,1,0,1,1,0,0,0), -- Tightening Waistband
(@lana10n,51556,11,1,0,1,1,0,0,0), -- Veincrusher Gauntlets
(@lana10n,49908,4,1,1,1,1,0,0,0), -- Primordial Saronite
-- Blood Queen Lana'thel(10H) 
(@lana10h,51846,12,1,0,1,1,0,0,0), -- Bloodsipper
(@lana10h,51840,12,1,0,1,1,0,0,0), -- Chestguard of Siphoned Elements
(@lana10h,51842,11,1,0,1,1,0,0,0), -- Collar of Haughty Disdain
(@lana10h,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana10h,51837,17,1,0,1,1,0,0,0), -- Cowl of Malefic Repose
(@lana10h,51841,11,1,0,1,1,0,0,0), -- Ivory-Inlaid Leggings
(@lana10h,51838,17,1,0,1,1,0,0,0), -- Lana'thel's Bloody Nail
(@lana10h,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana10h,51843,15,1,0,1,1,0,0,0), -- Seal of the Twilight Queen
(@lana10h,51839,11,1,0,1,1,0,0,0), -- Shoulderpads of the Searing Kiss
(@lana10h,51845,17,1,0,1,1,0,0,0), -- Stakethrower
(@lana10h,51844,12,1,0,1,1,0,0,0), -- Throatrender Handguards
(@lana10h,51836,11,1,0,1,1,0,0,0), -- Tightening Waistband
(@lana10h,52025,63,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana10h,51835,11,1,0,1,1,0,0,0), -- Veincrusher Gauntlets
(@lana10h,49908,4,1,1,1,1,0,0,0), -- Primordial Saronite
-- Blood Queen Lana'thel(25N)
(@lana25n,50274,19,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lana25n,50354,9,1,0,1,1,0,0,0), -- Bauble of True Blood
(@lana25n,50182,14,1,0,1,1,0,0,0), -- Blood Queen's Crimson Choker
(@lana25n,50178,13,1,0,1,1,0,0,0), -- Bloodfall
(@lana25n,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana25n,50181,14,1,0,1,1,0,0,0), -- Dying Light
(@lana25n,50065,9,1,0,1,1,0,0,0), -- Icecrown Glacial Wall
(@lana25n,50180,9,1,0,1,1,0,0,0), -- Lana'thel's Chain of Flagellation
(@lana25n,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana25n,52025,64,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana25n,49908,19,1,1,1,1,0,0,0), -- Primordial Saronite
-- Blood Queen Lana'thel(25H) 
(@lana25h,50274,-19,1,0,1,1,0,0,0), -- Shadowfrost Shard
(@lana25h,50726,9,1,0,1,1,0,0,0), -- Bauble of True Blood
(@lana25h,50724,14,1,0,1,1,0,0,0), -- Blood Queen's Crimson Choker
(@lana25h,50727,13,1,0,1,1,0,0,0), -- Bloodfall
(@lana25h,52027,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification
(@lana25h,52030,50,1,0,1,1,0,0,0), -- Conqueror's Mark of Sanctification(H)
(@lana25h,50725,14,1,0,1,1,0,0,0), -- Dying Light
(@lana25h,50729,9,1,0,1,1,0,0,0), -- Icecrown Glacial Wall
(@lana25h,50728,9,1,0,1,1,0,0,0), -- Lana'thel's Chain of Flagellation
(@lana25h,52026,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification
(@lana25h,52029,50,1,0,1,1,0,0,0), -- Protector's Mark of Sanctification(H)
(@lana25h,52025,64,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification
(@lana25h,52028,64,1,0,1,1,0,0,0), -- Vanquisher's Mark of Sanctification(H)
(@lana25h,49908,19,1,1,1,1,0,0,0), -- Primordial Saronite

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
(@sind25n,50274,10,1,1,1,1,0,0,0), -- Shadowfrost Shard
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
(@sind25h,50274,10,1,1,1,1,0,0,0), -- Shadowfrost Shard
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
(@lich25n,50274,18,1,0,1,1,0,0,0), -- Shadowfrost Shard
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
(@lich25h,50274,18,1,0,1,1,0,0,0), -- Shadowfrost Shard
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