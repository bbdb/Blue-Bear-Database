-- The Champion's Call!
UPDATE `quest_template` SET `NextQuestId`=12932 WHERE `entry`=12974;

-- Argent Tournament quest update
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN 
(13864,13861,13788,13682,13603,13666,13741,13746,13752,13757,13689,13688,13685,13684,13690,13592,13744,13749,13755,13760,13600,13669,13742,13747,13753,13758,13790,13793,13847,13851,13852,13854,13855,13625,13828,13837,13835,13789,13791,13667,13679,13616,13670,13743,13748,13754,13759,13665,13745,13750,13756,13761,13699,13713,13723,13724,13725,13714,13715,13716,13717,13718,13671,13672);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN 
(13863,13862,13812,13809,13673,13762,13768,13773,13778,13783,13691,13693,13696,13694,13695,13765,13771,13776,13781,13786,13674,13763,13769,13774,13779,13784,13811,13814,13856,13857,13858,13859,13860,13677,13829,13839,13838,13810,13813,13668,13680,13675,13764,13770,13775,13780,13785,13767,13772,13777,13782,13787,13726,13727,13728,13729,13731,13697,13719,13720,13721,13722,13676,13678);

-- Small fix in A'dal's quests
DELETE FROM `creature_questrelation` WHERE `id`=18481;
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(18481,10167),
(18481,10949),
(18481,10881),
(18481,10704),
(18481,13082),
(18481,10888),
(18481,13430),
(18481,10884),
(18481,10885),
(18481,10886);
DELETE FROM `creature_involvedrelation` WHERE `id`=18481;
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(18481,10102),
(18481,10210),
(18481,10708),
(18481,10781),
(18481,10882),
(18481,10704),
(18481,11007),
(18481,10280),
(18481,10948),
(18481,10883),
(18481,13081),
(18481,10888),
(18481,13430),
(18481,10884),
(18481,10885),
(18481,10886);