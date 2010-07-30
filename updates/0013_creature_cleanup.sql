-- Cleanup [UNUSED] Trainers - Tournament Test Realm Trainers - Not needed in blizzlike Databases...
SET @rogtr :=26239;
SET @magtr :=26326;
SET @drutr :=26324;
SET @dkntr :=33251;
SET @wartr :=26332;
SET @huntr :=26325;
SET @shatr :=26330;
SET @paltr :=26327;
SET @pritr :=26328;
SET @wlotr :=26331;

/*
 * Deleting Creature Templates
 * Deleting Npc Trainers
 * Deleting Creature Spawns
 */

DELETE FROM `creature_template` WHERE `entry` IN 
(
@rogtr,@magtr,@drutr,@dkntr,
@wartr,@huntr,@shatr,
@paltr,@pritr,@wlotr
);

DELETE FROM `npc_trainer` WHERE `entry` IN 
(
@rogtr,@magtr,@drutr,@dkntr,
@wartr,@huntr,@shatr,
@paltr,@pritr,@wlotr
);

DELETE FROM `creature` WHERE `id` IN
(
@rogtr,@magtr,@drutr,@dkntr,
@wartr,@huntr,@shatr,
@paltr,@pritr,@wlotr
);

UPDATE `version` SET `db_version`='BBDB_0013_07301951';
