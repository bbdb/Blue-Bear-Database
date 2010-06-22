/*
BBDB COMMENT:
	~ Add following missing items:
		~ 50732 >> Bloodsurge, Kel'Thuzad's Blade of Agony
		~ 50737 >> Havoc's Call, Blade of Lordaeron Kings
		~ 51939 >> Tel'thas, Dagger of the Blood King
		~ 51947 >> Troggbane, Axe of the Frostborne King
		~ 51942 >> Stormfury, Black Blade of the Betrayer
		~ 51945 >> Tainted Twig of Nordrassil
		~ 50733 >> Fal'inrush, Defender of Quel'thalas
		~ 51940 >> Windrunner's Heartseeker
		~ 50738 >> Mithrios, Bronzebeard's Legacy
		~ 50735 >> Oathbinder, Charge of the Ranger-General
		~ 50736 >> Heaven's Fall, Kryss of a Thousand Lies
*/

DELETE FROM `item_template` WHERE `entry` IN (50732,50737,51939,51947,51942,51945,50733,51940,50738,50735,50736);
INSERT INTO `item_template` (`entry`,`class`,`subclass`,`unk0`,`name`,`displayid`,`Quality`,`Flags`,`FlagsExtra`,`BuyCount`,`BuyPrice`,`SellPrice`,`InventoryType`,`AllowableClass`,`AllowableRace`,`ItemLevel`,`RequiredLevel`,`RequiredSkill`,`RequiredSkillRank`,`requiredspell`,`requiredhonorrank`,`RequiredCityRank`,`RequiredReputationFaction`,`RequiredReputationRank`,`maxcount`,`stackable`,`ContainerSlots`,`StatsCount`,`stat_type1`,`stat_value1`,`stat_type2`,`stat_value2`,`stat_type3`,`stat_value3`,`stat_type4`,`stat_value4`,`stat_type5`,`stat_value5`,`stat_type6`,`stat_value6`,`stat_type7`,`stat_value7`,`stat_type8`,`stat_value8`,`stat_type9`,`stat_value9`,`stat_type10`,`stat_value10`,`ScalingStatDistribution`,`ScalingStatValue`,`dmg_min1`,`dmg_max1`,`dmg_type1`,`dmg_min2`,`dmg_max2`,`dmg_type2`,`armor`,`holy_res`,`fire_res`,`nature_res`,`frost_res`,`shadow_res`,`arcane_res`,`delay`,`ammo_type`,`RangedModRange`,`spellid_1`,`spelltrigger_1`,`spellcharges_1`,`spellppmRate_1`,`spellcooldown_1`,`spellcategory_1`,`spellcategorycooldown_1`,`spellid_2`,`spelltrigger_2`,`spellcharges_2`,`spellppmRate_2`,`spellcooldown_2`,`spellcategory_2`,`spellcategorycooldown_2`,`spellid_3`,`spelltrigger_3`,`spellcharges_3`,`spellppmRate_3`,`spellcooldown_3`,`spellcategory_3`,`spellcategorycooldown_3`,`spellid_4`,`spelltrigger_4`,`spellcharges_4`,`spellppmRate_4`,`spellcooldown_4`,`spellcategory_4`,`spellcategorycooldown_4`,`spellid_5`,`spelltrigger_5`,`spellcharges_5`,`spellppmRate_5`,`spellcooldown_5`,`spellcategory_5`,`spellcategorycooldown_5`,`bonding`,`description`,`PageText`,`LanguageID`,`PageMaterial`,`startquest`,`lockid`,`Material`,`sheath`,`RandomProperty`,`RandomSuffix`,`block`,`itemset`,`MaxDurability`,`area`,`Map`,`BagFamily`,`TotemCategory`,`socketColor_1`,`socketContent_1`,`socketColor_2`,`socketContent_2`,`socketColor_3`,`socketContent_3`,`socketBonus`,`GemProperties`,`RequiredDisenchantSkill`,`ArmorDamageModifier`,`Duration`,`ItemLimitCategory`,`HolidayId`,`ScriptName`,`DisenchantID`,`FoodType`,`minMoneyLoot`,`maxMoneyLoot`,`WDBVerified`) VALUES 
(50732,),
(50737,),
(51939,),
(51947,),
(51942,),
(51945,),
(50733,),
(51940,),
(50738,),
(50735,),
(50736,);