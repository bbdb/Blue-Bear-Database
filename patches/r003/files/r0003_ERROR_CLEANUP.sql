-- Table 'reference_loot_template' entry 34097 isn't reference id and not referenced from loot, and then useless.
DELETE FROM `reference_loot_template` WHERE `entry`=34097;