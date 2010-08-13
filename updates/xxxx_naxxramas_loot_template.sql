/* ###################################################################################################
################################### NAXXRAMAS_TRASH_LOOT_TEMPLATE ####################################
################################################################################################### */

/*  STATUS: 0% 
 *  
 *   MISSING:
 *  	~ Trash Loots:
 *  		~ ALL
 */


-- Variables
SET @bile10 :=16018;
SET @bile25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@bile10);

SET @bony10 :=16167;
SET @bony25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@bony10);

SET @carr10 :=15975;
SET @carr25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@carr10);

SET @cryg10 :=16573;
SET @cryg25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@cryg10);

SET @cryr10 :=15978;
SET @cryr25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@cryr10);

SET @dark10 :=16156;
SET @dark25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@dark10);

SET @deas10 :=16067;
SET @deas25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@deas10);

SET @deak10 :=16146;
SET @deak25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@deak10);

SET @dekc10 :=16145;
SET @dekc25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@dekc10);

SET @dkca10 :=16163;
SET @dkca25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@dkca10);

SET @drcr10 :=15974;
SET @drcr25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@drcr10);

SET @fbat10 :=16036;
SET @fbat25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@fbat10);

SET @igho10 :=16244;
SET @igho25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@igho10);

SET @limo10 :=16021;
SET @limo25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@limo10);

SET @masc10 :=16020;
SET @masc25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@masc10);

SET @mage10 :=30083;
SET @mage25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@mage10);

SET @mugr10 :=16297;
SET @mugr25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@mugr10);

SET @naco10 :=15981;
SET @naco25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@naco10);

SET @ncul10 :=15980;
SET @ncul25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@ncul10);

SET @nfol10 :=16505;
SET @nfol25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@nfol10);

SET @nwor10 :=16506;
SET @nwor25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@nwor10);

SET @nkni10 :=16165;
SET @nkni25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@nkni10);

SET @patg10 :=16017;
SET @patg25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@patg10);

SET @plbe10 :=16034;
SET @plbe25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@plbe10);

SET @plba10 :=16037;
SET @plba25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@plba10);

SET @plsl10 :=16243;
SET @plsl25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@plsl10);

SET @risq10 :=16154;
SET @risq25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@risq10);

SET @shad10 :=16164;
SET @shad25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@shad10);

SET @sksm10 :=16193;
SET @sksm25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@sksm10);

SET @slbe10 :=16029;
SET @slbe25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@slbe10);

SET @stco10 :=30071;
SET @stco25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@stco10);

SET @stgi10 :=16025;
SET @stgi25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@stgi10);

SET @stog10 :=16168;
SET @stog25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@stog10);

SET @sura10 :=16022;
SET @sura25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@sura10);

SET @tomh10 :=15979;
SET @tomh25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@tomh10);

SET @unax10 :=16194;
SET @unax25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@unax10);

SET @unst10 :=16215;
SET @unst25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@unst10);

SET @unsw10 :=16216;
SET @unsw25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@unsw10);

SET @vest10 :=15976;
SET @vest25 :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@vest10);

DELETE FROM `creature_loot_template` WHERE `entry` IN 
(
@bile10,@bile25,
@bony10,@bony25,
@carr10,@carr25,
@cryg10,@cryg25,
@cryr10,@cryr25,
@dark10,@dark25,
@deas10,@deas25,
@deak10,@deak25,
@dekc10,@dekc25,
@dkca10,@dkca25,
@drcr10,@drcr25,
@fbat10,@fbat25,
@igho10,@igho25,
@limo10,@limo25,
@masc10,@masc25,
@mage10,@mage25,
@mugr10,@mugr25,
@naco10,@naco25,
@ncul10,@ncul25,
@nfol10,@nfol25,
@nwor10,@nwor25,
@nkni10,@nkni25,
@patg10,@patg25,
@plbe10,@plbe25,
@plba10,@plba25,
@plsl10,@plsl25,
@risq10,@risq25,
@shad10,@shad25,
@sksm10,@sksm25,
@slbe10,@slbe25,
@stco10,@stco25,
@stgi10,@stgi25,
@stog10,@stog25,
@sura10,@sura25,
@tomh10,@tomh25,
@unax10,@unax25,
@unst10,@unst25,
@unsw10,@unsw25,
@vest10,@vest25
);

/* 
 * LOOTS
 */

INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES

