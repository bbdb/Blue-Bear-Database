/*
BBDB COMMENT:
	~ NAXXRAMAS Trash loot FIX -> DDB Old commits merged from me
	~ Ingvar the Plunderer Loot
	~ Black Pearl item
	~ Emblem of Triumph item
*/
DELETE FROM `creature_loot_template` WHERE `entry` IN
(16018,16167,15975,16698,16573,15978,16156,16146,16145,16163,16803,16067,29818,16390,16056,15974,16024,16236,16290,16036,16441,16244,16021,16020,17055,30083,16297,15981,15980,16505,16506,16165,16017,16034,16243,16037,16983,16982,16981,16984,15977,16154,16057,16375,16164,16193,16029,16427,23561,16429,23563,16148,16149,16150,16127,30071,16025,16168,16022,15979,16194,16215,16216,16125,16126,16124,16428,23562,15976,30085,16486,16360);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(15974,22373,0.0043,1,1,1,0,0,0),
(15974,22374,0.0043,1,1,1,0,0,0),
(15974,22926,0.1924,1,1,1,0,0,0),
(15974,33365,10,1,1,1,0,0,0),
(15974,33629,0.2992,1,1,1,0,0,0),
(15974,33630,0.094,1,1,1,0,0,0),
(15974,34054,0.0043,1,1,1,0,0,0),
(15974,36043,5.53,1,1,1,0,0,0),
(15974,36051,6.17,1,1,1,0,0,0),
(15974,36059,5.71,1,1,1,0,0,0),
(15974,37254,0.1804,1,1,1,0,0,0),
(15974,37761,0.4403,1,1,1,0,0,0),
(15974,39467,3,1,1,1,0,0,0),
(15974,41777,0.0658,1,1,1,0,0,0),
(15974,42253,25.5108,1,1,1,0,0,0),
(15974,44758,66.3845,1,1,1,0,0,0),
(15974,44759,15.0338,1,1,1,0,0,0),
(15975,4585,0.0103,1,1,1,0,0,0),
(15975,22374,0.0069,1,1,1,0,0,0),
(15975,22376,0.0034,1,1,1,0,0,0),
(15975,22926,0.1793,1,1,1,0,0,0),
(15975,33365,10,1,1,1,0,0,0),
(15975,33629,0.3138,1,1,1,0,0,0),
(15975,33630,0.0862,1,1,1,0,0,0),
(15975,34055,0.0037,1,1,1,0,0,0),
(15975,34057,0.0037,1,1,1,0,0,0),
(15975,36043,5.72,1,1,1,0,0,0),
(15975,36051,6.26,1,1,1,0,0,0),
(15975,36059,5.98,1,1,1,0,0,0),
(15975,37254,0.1412,1,1,1,0,0,0),
(15975,37761,0.4654,1,1,1,0,0,0),
(15975,39467,3,1,1,1,0,0,0),
(15975,41777,0.0495,1,1,1,0,0,0),
(15975,42253,25.3258,1,1,1,0,0,0),
(15975,44758,66.1196,1,1,1,0,0,0),
(15975,44759,14.6955,1,1,1,0,0,0),
(15976,4585,0.0101,1,1,1,0,0,0),
(15976,22926,0.3865,1,1,1,0,0,0),
(15976,33365,10,1,1,1,0,0,0),
(15976,33629,0.2868,1,1,1,0,0,0),
(15976,33630,0.0403,1,1,1,0,0,0),
(15976,36043,5.4,1,1,1,0,0,0),
(15976,36051,6.27,1,1,1,0,0,0),
(15976,36059,5.63,1,1,1,0,0,0),
(15976,37254,0.129,1,1,1,0,0,0),
(15976,37761,0.5031,1,1,1,0,0,0),
(15976,39467,3,1,1,1,0,0,0),
(15976,41777,0.054,1,1,1,0,0,0),
(15976,42253,25.6252,1,1,1,0,0,0),
(15976,44758,66.8377,1,1,1,0,0,0),
(15976,44759,15.1648,1,1,1,0,0,0),
(15978,22926,0.151,1,1,1,0,0,0),
(15978,33365,10,1,1,1,0,0,0),
(15978,33422,10,1,1,1,0,0,0),
(15978,33629,0.3019,1,1,1,0,0,0),
(15978,33630,0.1509,1,1,1,0,0,0),
(15978,36043,5.94,1,1,1,0,0,0),
(15978,36051,5.74,1,1,1,0,0,0),
(15978,36059,5.44,1,1,1,0,0,0),
(15978,37254,0.0284,1,1,1,0,0,0),
(15978,37761,0.3271,1,1,1,0,0,0),
(15978,39467,3,1,1,1,0,0,0),
(15978,41777,0.0394,1,1,1,0,0,0),
(15978,42108,-0.6792,1,1,1,0,0,0),
(15978,44758,66.0629,1,1,1,0,0,0),
(15978,44759,15.8994,1,1,1,0,0,0),
(15979,22926,0.221,1,1,1,0,0,0),
(15979,33365,10,1,1,1,0,0,0),
(15979,33422,10,1,1,1,0,0,0),
(15979,33629,0.3911,1,1,1,0,0,0),
(15979,33630,0.0711,1,1,1,0,0,0),
(15979,36043,5.2,1,1,1,0,0,0),
(15979,36051,4.97,1,1,1,0,0,0),
(15979,36059,5.12,1,1,1,0,0,0),
(15979,37254,0.1313,1,1,1,0,0,0),
(15979,37761,0.3912,1,1,1,0,0,0),
(15979,39467,3,1,1,1,0,0,0),
(15979,41777,0.0545,1,1,1,0,0,0),
(15979,44758,68.8989,1,1,1,0,0,0),
(15979,44759,15.5031,1,1,1,0,0,0),
(15980,22375,0.0056,1,1,1,0,0,0),
(15980,22926,3.664,1,1,1,0,0,0),
(15980,33365,10,1,1,1,0,0,0),
(15980,33422,10,1,1,1,0,0,0),
(15980,33445,3.3864,1,1,1,0,0,0),
(15980,33447,1.9391,1,1,1,0,0,0),
(15980,33470,35.138,1,1,1,0,0,0),
(15980,34054,0.0115,1,1,1,0,0,0),
(15980,35947,7.2199,1,1,1,0,0,0),
(15980,36043,9.51,1,1,1,0,0,0),
(15980,36051,9.42,1,1,1,0,0,0),
(15980,36059,9.19,1,1,1,0,0,0),
(15980,37254,0.2293,1,1,1,0,0,0),
(15980,37761,0.7265,1,1,1,0,0,0),
(15980,39467,3,1,1,1,0,0,0),
(15980,41777,0.0883,1,1,1,0,0,0),
(15980,43297,0.1118,1,1,1,0,0,0),
(15981,22375,0.0112,1,1,1,0,0,0),
(15981,22376,0.0056,1,1,1,0,0,0),
(15981,22926,3.5503,1,1,1,0,0,0),
(15981,33365,10,1,1,1,0,0,0),
(15981,33422,10,1,1,1,0,0,0),
(15981,33445,3.3205,1,1,1,0,0,0),
(15981,33447,1.9509,1,1,1,0,0,0),
(15981,33448,1.0635,1,1,1,0,0,0),
(15981,33470,34.6712,1,1,1,0,0,0),
(15981,34054,0.0029,1,1,1,0,0,0),
(15981,34055,0.0029,1,1,1,0,0,0),
(15981,35947,6.8534,1,1,1,0,0,0),
(15981,36043,9.47,1,1,1,0,0,0),
(15981,36051,9.83,1,1,1,0,0,0),
(15981,36059,8.93,1,1,1,0,0,0),
(15981,37091,0.4059,1,1,1,0,0,0),
(15981,37254,0.1732,1,1,1,0,0,0),
(15981,37761,0.8777,1,1,1,0,0,0),
(15981,39467,3,1,1,1,0,0,0),
(15981,41777,0.0655,1,1,1,0,0,0),
(15981,43297,0.0391,1,1,1,0,0,0),
(15981,43852,16.4906,1,1,1,0,0,0),
(16017,22373,0.0084,1,1,1,0,0,0),
(16017,22926,3.1483,1,1,1,0,0,0),
(16017,33365,10,1,1,1,0,0,0),
(16017,33422,10,1,1,1,0,0,0),
(16017,33445,3.2281,1,1,1,0,0,0),
(16017,35947,5.9138,1,1,1,0,0,0),
(16017,36043,10.42,1,1,1,0,0,0),
(16017,36051,10.6,1,1,1,0,0,0),
(16017,36059,10.26,1,1,1,0,0,0),
(16017,37254,0.2012,1,1,1,0,0,0),
(16017,37761,0.8854,1,1,1,0,0,0),
(16017,39467,3,1,1,1,0,0,0),
(16017,41777,0.1223,1,1,1,0,0,0),
(16017,42108,-0.0919,1,1,1,0,0,0),
(16017,43297,0.0418,1,1,1,0,0,0),
(16018,22926,2.4585,1,1,1,0,0,0),
(16018,33365,10,1,1,1,0,0,0),
(16018,33422,10,1,1,1,0,0,0),
(16018,33445,3.1407,1,1,1,0,0,0),
(16018,34054,0.0122,1,1,1,0,0,0),
(16018,35947,6.318,1,1,1,0,0,0),
(16018,36043,9.47,1,1,1,0,0,0),
(16018,36051,9.59,1,1,1,0,0,0),
(16018,36059,10,1,1,1,0,0,0),
(16018,37091,0.2933,1,1,1,0,0,0),
(16018,37254,0.2075,1,1,1,0,0,0),
(16018,37761,0.8309,1,1,1,0,0,0),
(16018,39467,3,1,1,1,0,0,0),
(16018,41777,0.0958,1,1,1,0,0,0),
(16018,42108,-0.0855,1,1,1,0,0,0),
(16018,43297,0.0489,1,1,1,0,0,0),
(16020,22376,0.0137,1,1,1,0,0,0),
(16020,22926,2.8102,1,1,1,0,0,0),
(16020,33365,10,1,1,1,0,0,0),
(16020,33422,10,1,1,1,0,0,0),
(16020,35947,6.1654,1,1,1,0,0,0),
(16020,36043,9.51,1,1,1,0,0,0),
(16020,36051,10.32,1,1,1,0,0,0),
(16020,36059,10.28,1,1,1,0,0,0),
(16020,37091,0.3008,1,1,1,0,0,0),
(16020,37254,0.2626,1,1,1,0,0,0),
(16020,37761,0.793,1,1,1,0,0,0),
(16020,39467,3,1,1,1,0,0,0),
(16020,41777,0.0785,1,1,1,0,0,0),
(16020,42108,-0.0073,1,1,1,0,0,0),
(16020,43297,0.0292,1,1,1,0,0,0),
(16021,22373,0.0292,1,1,1,0,0,0),
(16021,22926,2.622,1,1,1,0,0,0),
(16021,33365,10,1,1,1,0,0,0),
(16021,33422,10,1,1,1,0,0,0),
(16021,33445,3.3623,1,1,1,0,0,0),
(16021,33447,1.9678,1,1,1,0,0,0),
(16021,35947,6.0951,1,1,1,0,0,0),
(16021,36051,13.53,1,1,1,0,0,0),
(16021,36059,14.18,1,1,1,0,0,0),
(16021,37091,0.9388,1,1,1,0,0,0),
(16021,37254,0.2097,1,1,1,0,0,0),
(16021,37761,0.9041,1,1,1,0,0,0),
(16021,39467,3,1,1,1,0,0,0),
(16021,41777,0.1514,1,1,1,0,0,0),
(16021,43297,0.0583,1,1,1,0,0,0),
(16022,22373,0.0225,1,1,1,0,0,0),
(16022,22375,0.0112,1,1,1,0,0,0),
(16022,22376,0.0112,1,1,1,0,0,0),
(16022,22926,2.7678,1,1,1,0,0,0),
(16022,33365,10,1,1,1,0,0,0),
(16022,33422,10,1,1,1,0,0,0),
(16022,33445,3.1664,1,1,1,0,0,0),
(16022,33447,1.8568,1,1,1,0,0,0),
(16022,35947,6.9279,1,1,1,0,0,0),
(16022,36035,9.88,1,1,1,0,0,0),
(16022,36043,11.15,1,1,1,0,0,0),
(16022,36051,10.22,1,1,1,0,0,0),
(16022,37091,0.2807,1,1,1,0,0,0),
(16022,37254,0.213,1,1,1,0,0,0),
(16022,37760,0.4378,1,1,1,0,0,0),
(16022,37761,0.3594,1,1,1,0,0,0),
(16022,39467,3,1,1,1,0,0,0),
(16022,41777,0.059,1,1,1,0,0,0),
(16022,42108,-0.0061,1,1,1,0,0,0),
(16022,43297,0.0561,1,1,1,0,0,0),
(16022,43624,0.1235,1,1,1,0,0,0),
(16025,12808,0.0512,1,1,1,0,0,0),
(16025,22373,0.5244,1,1,1,0,0,0),
(16025,22374,0.2942,1,1,1,0,0,0),
(16025,22375,0.4093,1,1,1,0,0,0),
(16025,22376,0.6267,1,1,1,0,0,0),
(16025,22926,2.313,1,1,1,0,0,0),
(16025,23055,0.0384,1,1,1,0,0,0),
(16025,33365,10,1,1,1,0,0,0),
(16025,33422,10,1,1,1,0,0,0),
(16025,33445,3.1718,1,1,1,0,0,0),
(16025,33447,1.8545,1,1,1,0,0,0),
(16025,33448,0.9464,1,1,1,0,0,0),
(16025,35947,6.4075,1,1,1,0,0,0),
(16025,36051,13.34,1,1,1,0,0,0),
(16025,36059,13.44,1,1,1,0,0,0),
(16025,37254,0.271,1,1,1,0,0,0),
(16025,37761,0.9465,1,1,1,0,0,0),
(16025,39467,3,1,1,1,0,0,0),
(16025,41777,0.0731,1,1,1,0,0,0),
(16025,43297,0.0338,1,1,1,0,0,0),
(16029,22926,2.4794,1,1,1,0,0,0),
(16029,33365,10,1,1,1,0,0,0),
(16029,33422,10,1,1,1,0,0,0),
(16029,33445,3.4735,1,1,1,0,0,0),
(16029,33447,2.0313,1,1,1,0,0,0),
(16029,35947,6.4392,1,1,1,0,0,0),
(16029,36051,14.23,1,1,1,0,0,0),
(16029,36059,14.64,1,1,1,0,0,0),
(16029,37091,0.3656,1,1,1,0,0,0),
(16029,37254,0.1878,1,1,1,0,0,0),
(16029,37761,0.5891,1,1,1,0,0,0),
(16029,39467,3,1,1,1,0,0,0),
(16029,41777,0.1282,1,1,1,0,0,0),
(16029,43297,0.0203,1,1,1,0,0,0),
(16034,22926,2.3488,1,1,1,0,0,0),
(16034,33365,10,1,1,1,0,0,0),
(16034,33422,10,1,1,1,0,0,0),
(16034,33445,3.6605,1,1,1,0,0,0),
(16034,33447,1.9194,1,1,1,0,0,0),
(16034,33448,1.3286,1,1,1,0,0,0),
(16034,35947,7.2939,1,1,1,0,0,0),
(16034,36043,10.28,1,1,1,0,0,0),
(16034,36051,9.67,1,1,1,0,0,0),
(16034,36059,10.22,1,1,1,0,0,0),
(16034,37091,0.2983,1,1,1,0,0,0),
(16034,37254,0.3533,1,1,1,0,0,0),
(16034,37761,1.3015,1,1,1,0,0,0),
(16034,39467,3,1,1,1,0,0,0),
(16034,41777,0.1365,1,1,1,0,0,0),
(16034,42108,-0.1898,1,1,1,0,0,0),
(16034,43297,0.0813,1,1,1,0,0,0),
(16036,22926,2.0371,1,1,1,0,0,0),
(16036,33365,10,1,1,1,0,0,0),
(16036,33422,10,1,1,1,0,0,0),
(16036,33445,3.1543,1,1,1,0,0,0),
(16036,33447,1.8886,1,1,1,0,0,0),
(16036,33448,1.0122,1,1,1,0,0,0),
(16036,34054,0.0041,1,1,1,0,0,0),
(16036,34055,0.002,1,1,1,0,0,0),
(16036,34057,0.006,1,1,1,0,0,0),
(16036,35947,6.4151,1,1,1,0,0,0),
(16036,36035,9.78,1,1,1,0,0,0),
(16036,36043,9.93,1,1,1,0,0,0),
(16036,36051,9.37,1,1,1,0,0,0),
(16036,37091,0.1897,1,1,1,0,0,0),
(16036,37254,0.1312,1,1,1,0,0,0),
(16036,37760,0.369,1,1,1,0,0,0),
(16036,37761,0.4341,1,1,1,0,0,0),
(16036,39467,3,1,1,1,0,0,0),
(16036,41777,0.104,1,1,1,0,0,0),
(16036,43297,0.041,1,1,1,0,0,0),
(16036,43624,0.1188,1,1,1,0,0,0),
(16037,22926,1.987,1,1,1,0,0,0),
(16037,33365,10,1,1,1,0,0,0),
(16037,33422,10,1,1,1,0,0,0),
(16037,33445,3.178,1,1,1,0,0,0),
(16037,33447,2.0166,1,1,1,0,0,0),
(16037,33448,0.9374,1,1,1,0,0,0),
(16037,34055,0.0023,1,1,1,0,0,0),
(16037,35947,6.8133,1,1,1,0,0,0),
(16037,36035,9.82,1,1,1,0,0,0),
(16037,36043,10.55,1,1,1,0,0,0),
(16037,36051,9.67,1,1,1,0,0,0),
(16037,37091,0.2403,1,1,1,0,0,0),
(16037,37254,0.1211,1,1,1,0,0,0),
(16037,37760,0.414,1,1,1,0,0,0),
(16037,37761,0.4665,1,1,1,0,0,0),
(16037,39467,3,1,1,1,0,0,0),
(16037,41777,0.0893,1,1,1,0,0,0),
(16037,43297,0.064,1,1,1,0,0,0),
(16037,43624,0.1555,1,1,1,0,0,0),
(16037,43852,16.5507,1,1,1,0,0,0),
(16067,22375,0.1795,1,1,1,0,0,0),
(16067,22926,2.9623,1,1,1,0,0,0),
(16067,33365,10,1,1,1,0,0,0),
(16067,33422,10,1,1,1,0,0,0),
(16067,33445,3.2316,1,1,1,0,0,0),
(16067,33447,2.4237,1,1,1,0,0,0),
(16067,35947,6.1041,1,1,1,0,0,0),
(16067,36043,8.98,1,1,1,0,0,0),
(16067,36051,9.24,1,1,1,0,0,0),
(16067,36059,8.89,1,1,1,0,0,0),
(16067,37091,0.3591,1,1,1,0,0,0),
(16067,37254,0.1695,1,1,1,0,0,0),
(16067,37761,0.7182,1,1,1,0,0,0),
(16067,39467,3,1,1,1,0,0,0),
(16145,20400,0.0331,1,1,1,0,0,0),
(16145,22373,0.0066,1,1,1,0,0,0),
(16145,22375,0.0066,1,1,1,0,0,0),
(16145,22376,0.0133,1,1,1,0,0,0),
(16145,22926,2.1365,1,1,1,0,0,0),
(16145,33365,10,1,1,1,0,0,0),
(16145,33422,10,1,1,1,0,0,0),
(16145,33445,3.3077,1,1,1,0,0,0),
(16145,33448,1.0745,1,1,1,0,0,0),
(16145,35947,6.6021,1,1,1,0,0,0),
(16145,36043,9.07,1,1,1,0,0,0),
(16145,36051,9.96,1,1,1,0,0,0),
(16145,36059,9.24,1,1,1,0,0,0),
(16145,37254,0.1857,1,1,1,0,0,0),
(16145,37761,0.9213,1,1,1,0,0,0),
(16145,39467,3,1,1,1,0,0,0),
(16145,41777,0.0601,1,1,1,0,0,0),
(16145,43297,0.0729,1,1,1,0,0,0),
(16146,22926,2.0745,1,1,1,0,0,0),
(16146,33365,10,1,1,1,0,0,0),
(16146,33422,10,1,1,1,0,0,0),
(16146,33445,3.1087,1,1,1,0,0,0),
(16146,33447,1.8997,1,1,1,0,0,0),
(16146,35947,6.7546,1,1,1,0,0,0),
(16146,36043,8.85,1,1,1,0,0,0),
(16146,36051,9.8,1,1,1,0,0,0),
(16146,36059,9.61,1,1,1,0,0,0),
(16146,37254,0.1584,1,1,1,0,0,0),
(16146,37761,0.9451,1,1,1,0,0,0),
(16146,39467,3,1,1,1,0,0,0),
(16146,41777,0.1016,1,1,1,0,0,0),
(16146,43297,0.0624,1,1,1,0,0,0),
(16154,22926,1.6247,1,1,1,0,0,0),
(16154,33365,10,1,1,1,0,0,0),
(16154,33422,10,1,1,1,0,0,0),
(16154,33445,4.7267,1,1,1,0,0,0),
(16154,33448,1.3294,1,1,1,0,0,0),
(16154,35947,5.7607,1,1,1,0,0,0),
(16154,36043,12.37,1,1,1,0,0,0),
(16154,36051,9.43,1,1,1,0,0,0),
(16154,36059,9,1,1,1,0,0,0),
(16154,37254,0.4431,1,1,1,0,0,0),
(16154,37761,1.1816,1,1,1,0,0,0),
(16154,39467,3,1,1,1,0,0,0),
(16154,43297,0.1,1,1,1,0,0,0),
(16156,22373,-81,1,1,1,0,0,0),
(16156,22374,-61,1,1,1,0,0,0),
(16156,22375,-81,1,1,1,0,0,0),
(16156,22376,-100,1,1,1,0,0,0),
(16163,19235,0.0102,1,1,1,0,0,0),
(16163,22375,0.0102,1,1,1,0,0,0),
(16163,22376,0.0102,1,1,1,0,0,0),
(16163,22926,2.4612,1,1,1,0,0,0),
(16163,33365,10,1,1,1,0,0,0),
(16163,33422,10,1,1,1,0,0,0),
(16163,33445,3.2294,1,1,1,0,0,0),
(16163,33447,1.8643,1,1,1,0,0,0),
(16163,33448,0.9169,1,1,1,0,0,0),
(16163,35947,5.98,1,1,1,0,0,0),
(16163,36043,9.24,1,1,1,0,0,0),
(16163,36051,10.05,1,1,1,0,0,0),
(16163,36059,9.44,1,1,1,0,0,0),
(16163,37254,0.2038,1,1,1,0,0,0),
(16163,37761,0.7743,1,1,1,0,0,0),
(16163,39467,3,1,1,1,0,0,0),
(16163,41777,0.105,1,1,1,0,0,0),
(16163,42108,-0.0815,1,1,1,0,0,0),
(16163,43297,0.0306,1,1,1,0,0,0),
(16164,22926,2.6407,1,1,1,0,0,0),
(16164,33365,10,1,1,1,0,0,0),
(16164,33422,10,1,1,1,0,0,0),
(16164,33445,3.7162,1,1,1,0,0,0),
(16164,33447,2.027,1,1,1,0,0,0),
(16164,33448,1.0811,1,1,1,0,0,0),
(16164,35947,6.5878,1,1,1,0,0,0),
(16164,36043,10.09,1,1,1,0,0,0),
(16164,36051,10.34,1,1,1,0,0,0),
(16164,36059,10.29,1,1,1,0,0,0),
(16164,37091,0.6419,1,1,1,0,0,0),
(16164,37254,0.2097,1,1,1,0,0,0),
(16164,37761,0.8446,1,1,1,0,0,0),
(16164,39467,3,1,1,1,0,0,0),
(16164,41777,0.1082,1,1,1,0,0,0),
(16164,43297,0.0338,1,1,1,0,0,0),
(16164,43852,16.5549,1,1,1,0,0,0),
(16165,22376,0.018,1,1,1,0,0,0),
(16165,22926,2.3508,1,1,1,0,0,0),
(16165,33365,10,1,1,1,0,0,0),
(16165,33422,10,1,1,1,0,0,0),
(16165,33445,3.3904,1,1,1,0,0,0),
(16165,33447,1.8936,1,1,1,0,0,0),
(16165,33448,0.9558,1,1,1,0,0,0),
(16165,34052,0.0097,1,1,1,0,0,0),
(16165,34054,0.0361,1,1,1,0,0,0),
(16165,35947,5.8611,1,1,1,0,0,0),
(16165,36043,8.98,1,1,1,0,0,0),
(16165,36051,10.16,1,1,1,0,0,0),
(16165,36059,8.76,1,1,1,0,0,0),
(16165,37254,0.194,1,1,1,0,0,0),
(16165,37761,0.9558,1,1,1,0,0,0),
(16165,39467,3,1,1,1,0,0,0),
(16165,41777,0.1246,1,1,1,0,0,0),
(16165,42108,-0.1623,1,1,1,0,0,0),
(16165,43297,0.1,1,1,1,0,0,0),
(16167,22373,0.3145,1,1,1,0,0,0),
(16167,22926,1.6318,1,1,1,0,0,0),
(16167,33365,10,1,1,1,0,0,0),
(16167,33422,10,1,1,1,0,0,0),
(16167,33445,3.3019,1,1,1,0,0,0),
(16167,33447,2.8302,1,1,1,0,0,0),
(16167,33448,1.2579,1,1,1,0,0,0),
(16167,33470,35.3774,1,1,1,0,0,0),
(16167,35947,6.1321,1,1,1,0,0,0),
(16167,36043,7.67,1,1,1,0,0,0),
(16167,36051,9.05,1,1,1,0,0,0),
(16167,36059,9.65,1,1,1,0,0,0),
(16167,37091,0.9435,1,1,1,0,0,0),
(16167,37254,0.5963,1,1,1,0,0,0),
(16167,37761,0.3144,1,1,1,0,0,0),
(16167,39467,3,1,1,1,0,0,0),
(16167,43297,0.3,1,1,1,0,0,0),
(16167,43852,16.5094,1,1,1,0,0,0),
(16168,22926,2.8136,1,1,1,0,0,0),
(16168,33365,10,1,1,1,0,0,0),
(16168,33422,10,1,1,1,0,0,0),
(16168,33445,3.3671,1,1,1,0,0,0),
(16168,33447,2.0109,1,1,1,0,0,0),
(16168,35947,7.046,1,1,1,0,0,0),
(16168,36043,8.58,1,1,1,0,0,0),
(16168,36051,10.22,1,1,1,0,0,0),
(16168,36059,9.6,1,1,1,0,0,0),
(16168,37254,0.2201,1,1,1,0,0,0),
(16168,37761,0.6547,1,1,1,0,0,0),
(16168,39467,3,1,1,1,0,0,0),
(16168,41119,0.0486,1,1,1,0,0,0),
(16168,41777,0.126,1,1,1,0,0,0),
(16168,43297,0.0935,1,1,1,0,0,0),
(16193,22926,2.3273,1,1,1,0,0,0),
(16193,33365,10,1,1,1,0,0,0),
(16193,33422,10,1,1,1,0,0,0),
(16193,33445,3.0561,1,1,1,0,0,0),
(16193,33447,2.0276,1,1,1,0,0,0),
(16193,33448,0.911,1,1,1,0,0,0),
(16193,35947,6.3473,1,1,1,0,0,0),
(16193,36043,8.67,1,1,1,0,0,0),
(16193,36051,10.05,1,1,1,0,0,0),
(16193,36059,9.64,1,1,1,0,0,0),
(16193,37091,0.6132,1,1,1,0,0,0),
(16193,37254,0.1482,1,1,1,0,0,0),
(16193,37761,0.6759,1,1,1,0,0,0),
(16193,39467,3,1,1,1,0,0,0),
(16193,41777,0.1047,1,1,1,0,0,0),
(16193,42108,-0.2057,1,1,1,0,0,0),
(16193,43297,0.0305,1,1,1,0,0,0),
(16194,22926,2.3293,1,1,1,0,0,0),
(16194,33365,10,1,1,1,0,0,0),
(16194,33422,10,1,1,1,0,0,0),
(16194,33445,3.233,1,1,1,0,0,0),
(16194,35947,6.6611,1,1,1,0,0,0),
(16194,36043,9.22,1,1,1,0,0,0),
(16194,36051,9.69,1,1,1,0,0,0),
(16194,36059,9.61,1,1,1,0,0,0),
(16194,37091,0.3066,1,1,1,0,0,0),
(16194,37254,0.1581,1,1,1,0,0,0),
(16194,37761,0.9475,1,1,1,0,0,0),
(16194,39467,3,1,1,1,0,0,0),
(16194,41777,0.031,1,1,1,0,0,0),
(16194,43297,0.0836,1,1,1,0,0,0),
(16215,22376,0.0206,1,1,1,0,0,0),
(16215,22926,1.9966,1,1,1,0,0,0),
(16215,33365,10,1,1,1,0,0,0),
(16215,33422,10,1,1,1,0,0,0),
(16215,33445,3.2969,1,1,1,0,0,0),
(16215,33448,0.9891,1,1,1,0,0,0),
(16215,35947,6.4908,1,1,1,0,0,0),
(16215,36043,8.56,1,1,1,0,0,0),
(16215,36051,8.79,1,1,1,0,0,0),
(16215,36059,8.79,1,1,1,0,0,0),
(16215,37091,0.6378,1,1,1,0,0,0),
(16215,37254,0.277,1,1,1,0,0,0),
(16215,37761,0.7212,1,1,1,0,0,0),
(16215,39467,3,1,1,1,0,0,0),
(16215,41777,0.0884,1,1,1,0,0,0),
(16215,43297,0.1,1,1,1,0,0,0),
(16216,22926,2.4727,1,1,1,0,0,0),
(16216,33365,10,1,1,1,0,0,0),
(16216,33422,10,1,1,1,0,0,0),
(16216,33445,3.2846,1,1,1,0,0,0),
(16216,35947,6.5366,1,1,1,0,0,0),
(16216,36043,8.32,1,1,1,0,0,0),
(16216,36051,10.17,1,1,1,0,0,0),
(16216,36059,8.73,1,1,1,0,0,0),
(16216,37254,0.2627,1,1,1,0,0,0),
(16216,37761,0.748,1,1,1,0,0,0),
(16216,39467,3,1,1,1,0,0,0),
(16216,41777,0.0853,1,1,1,0,0,0),
(16216,43297,0.065,1,1,1,0,0,0),
(16243,22926,3.1336,1,1,1,0,0,0),
(16243,33365,10,1,1,1,0,0,0),
(16243,33422,10,1,1,1,0,0,0),
(16243,33445,3.3765,1,1,1,0,0,0),
(16243,33447,1.8456,1,1,1,0,0,0),
(16243,33448,0.9423,1,1,1,0,0,0),
(16243,35947,6.6635,1,1,1,0,0,0),
(16243,36043,10.2,1,1,1,0,0,0),
(16243,36051,10.24,1,1,1,0,0,0),
(16243,36059,10.73,1,1,1,0,0,0),
(16243,37091,0.9721,1,1,1,0,0,0),
(16243,37254,0.1832,1,1,1,0,0,0),
(16243,37761,0.6951,1,1,1,0,0,0),
(16243,41777,0.0786,1,1,1,0,0,0),
(16243,43007,0.0262,1,1,1,0,0,0),
(16243,43297,0.024,1,1,1,0,0,0),
(16243,43852,16.6587,1,1,1,0,0,0),
(16243,44228,0.024,1,1,1,0,0,0),
(16244,22926,3.2861,1,1,1,0,0,0),
(16244,33365,10,1,1,1,0,0,0),
(16244,33422,10,1,1,1,0,0,0),
(16244,33445,3.5707,1,1,1,0,0,0),
(16244,33448,1.0753,1,1,1,0,0,0),
(16244,35947,6.5733,1,1,1,0,0,0),
(16244,36043,8.02,1,1,1,0,0,0),
(16244,36051,8.96,1,1,1,0,0,0),
(16244,36059,8.53,1,1,1,0,0,0),
(16244,37091,0.6393,1,1,1,0,0,0),
(16244,37254,0.3066,1,1,1,0,0,0),
(16244,37761,0.7506,1,1,1,0,0,0),
(16244,39467,3,1,1,1,0,0,0),
(16244,41777,0.0673,1,1,1,0,0,0),
(16244,42108,-0.3449,1,1,1,0,0,0),
(16244,43297,0.0406,1,1,1,0,0,0),
(16297,22926,2.2981,1,1,1,0,0,0),
(16297,33365,10,1,1,1,0,0,0),
(16297,33422,10,1,1,1,0,0,0),
(16297,33445,3.5015,1,1,1,0,0,0),
(16297,33447,1.9476,1,1,1,0,0,0),
(16297,33448,1.0501,1,1,1,0,0,0),
(16297,34055,0.0051,1,1,1,0,0,0),
(16297,35947,6.9512,1,1,1,0,0,0),
(16297,36043,9.6,1,1,1,0,0,0),
(16297,36051,10.98,1,1,1,0,0,0),
(16297,36059,10.03,1,1,1,0,0,0),
(16297,37254,0.2589,1,1,1,0,0,0),
(16297,37761,0.7667,1,1,1,0,0,0),
(16297,39467,3,1,1,1,0,0,0),
(16297,41777,0.1395,1,1,1,0,0,0),
(16297,43297,0.0725,1,1,1,0,0,0),
(16297,43852,16.5198,1,1,1,0,0,0),
(30071,22926,3.8124,1,1,1,0,0,0),
(30071,33365,10,1,1,1,0,0,0),
(30071,33422,10,1,1,1,0,0,0),
(30071,33448,0.991,1,1,1,0,0,0),
(30071,35947,6.5165,1,1,1,0,0,0),
(30071,36051,14.8,1,1,1,0,0,0),
(30071,36059,15.29,1,1,1,0,0,0),
(30071,37091,0.5732,1,1,1,0,0,0),
(30071,37254,0.2647,1,1,1,0,0,0),
(30071,37761,0.7808,1,1,1,0,0,0),
(30071,39467,3,1,1,1,0,0,0),
(30071,41777,0.1104,1,1,1,0,0,0),
(30071,42108,-0.7508,1,1,1,0,0,0),
(30071,43297,0.0482,1,1,1,0,0,0),
(30083,22926,2.8426,1,1,1,0,0,0),
(30083,33365,10,1,1,1,0,0,0),
(30083,33422,10,1,1,1,0,0,0),
(30083,33445,3.4436,1,1,1,0,0,0),
(30083,33447,1.9093,1,1,1,0,0,0),
(30083,33448,0.9505,1,1,1,0,0,0),
(30083,35947,6.819,1,1,1,0,0,0),
(30083,36035,11.18,1,1,1,0,0,0),
(30083,36043,11.65,1,1,1,0,0,0),
(30083,36051,11.19,1,1,1,0,0,0),
(30083,37091,0.3069,1,1,1,0,0,0),
(30083,37254,0.1658,1,1,1,0,0,0),
(30083,37760,0.3643,1,1,1,0,0,0),
(30083,37761,0.4603,1,1,1,0,0,0),
(30083,41777,0.1517,1,1,1,0,0,0),
(30083,42108,-0.3409,1,1,1,0,0,0),
(30083,43624,0.0682,1,1,1,0,0,0);

UPDATE `creature_template` SET `lootid`=16036 WHERE `entry`=16036;
UPDATE `creature_template` SET `lootid`=16156 WHERE `entry`=16156;

-- Ingvar the Plunderer
SET @IngvarNN :=23954;
SET @IngvarNH :=(SELECT `difficulty_entry_1` FROM `creature_template` WHERE `entry`=@IngvarN);
DELETE FROM `creature_loot_template` WHERE `entry`=@IngvarN;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@IngvarN,33330,-53,1,1,1),
(@IngvarN,35577,29,0,1,1),
(@IngvarN,35576,27,0,1,1),
(@IngvarN,35578,26,0,1,1),
(@IngvarN,43228,21,1,1,1),
(@IngvarN,33470,5,2,1,7),
(@IngvarN,33454,1.5,2,1,1),
(@IngvarN,33444,0.7,2,1,1),
(@IngvarN,22829,0.4,2,1,1);
DELETE FROM `creature_loot_template` WHERE `entry`=@IngvarH;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@IngvarH,47241,100,1,1,1),
(@IngvarH,43102,72,2,1,1),
(@IngvarH,43662,-26,1,1,1),
(@IngvarH,43228,24,2,1,4),
(@IngvarH,37194,21,0,1,1),
(@IngvarH,37190,21,0,1,1),
(@IngvarH,37188,21,0,1,1),
(@IngvarH,37186,21,0,1,1),
(@IngvarH,37192,20,0,1,1),
(@IngvarH,37191,20,0,1,1),
(@IngvarH,37193,20,0,1,1),
(@IngvarH,37189,20,0,1,1),
(@IngvarH,41793,9,0,1,1),
(@IngvarH,33470,6,3,1,7),
(@IngvarH,33330,-3,1,1,1),
(@IngvarH,43852,3,3,1,1),
(@IngvarH,33454,1.3,3,1,1),
(@IngvarH,33445,0.6,3,1,1),
(@IngvarH,34057,0.4,3,1,1),
(@IngvarH,34052,0.4,3,1,1),
(@IngvarH,33447,0.4,3,1,1);
UPDATE `creature_template` SET `lootid`=@IngvarN WHERE `entry`=@IngvarN;
UPDATE `creature_template` SET `lootid`=@IngvarH WHERE `entry`=@IngvarH;

-- Missing loot: Black Pearl
DELETE FROM `creature_loot_template` WHERE `item`=7971;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(750,7971,0.0036,0,1,1,0,0,0),
(751,7971,0.0113,0,1,1,0,0,0),
(752,7971,0.0061,0,1,1,0,0,0),
(979,7971,0.0092,0,1,1,0,0,0),
(1088,7971,0.0047,0,1,1,0,0,0),
(1491,7971,0.0384,0,1,1,0,0,0),
(1809,7971,0.041,0,1,1,0,0,0),
(2505,7971,0.0109,0,1,1,0,0,0),
(4374,7971,0.0722,0,1,1,0,0,0),
(4404,7971,0.0084,0,1,1,0,0,0),
(5332,7971,0.0067,0,1,1,0,0,0),
(5333,7971,0.0196,0,1,1,0,0,0),
(5334,7971,0.0173,0,1,1,0,0,0),
(5335,7971,0.0069,0,1,1,0,0,0),
(5336,7971,0.0045,0,1,1,0,0,0),
(5337,7971,0.0068,0,1,1,0,0,0),
(5431,7971,0.0638,0,1,1,0,0,0),
(6109,7971,0.158,0,1,1,0,0,0),
(6135,7971,0.049,0,1,1,0,0,0),
(6137,7971,0.0107,0,1,1,0,0,0),
(6138,7971,0.0294,0,1,1,0,0,0),
(6190,7971,0.0088,0,1,1,0,0,0),
(6194,7971,0.0104,0,1,1,0,0,0),
(6195,7971,0.0072,0,1,1,0,0,0),
(6196,7971,0.0196,0,1,1,0,0,0),
(6348,7971,0.0152,0,1,1,0,0,0),
(6352,7971,0.0294,0,1,1,0,0,0),
(7864,7971,0.017,0,1,1,0,0,0),
(7977,7971,0.0175,0,1,1,0,0,0),
(8136,7971,0.0255,0,1,1,0,0,0),
(8304,7971,0.0923,0,1,1,0,0,0),
(8336,7971,0.0233,0,1,1,0,0,0),
(8408,7971,0.113,0,1,1,0,0,0),
(8716,7971,0.2817,0,1,1,0,0,0),
(12207,7971,0.0068,0,1,1,0,0,0),
(12397,7971,1.2048,0,1,1,0,0,0),
(12803,7971,0.3817,0,1,1,0,0,0),
(14123,7971,0.0262,0,1,1,0,0,0),
(14603,7971,0.0138,0,1,1,0,0,0),
(14638,7971,0.0046,0,1,1,0,0,0),
(15449,7971,14.2857,0,1,1,0,0,0),
(1563,7971,0.0016,0,1,1,0,0,0),
(5423,7971,0.0017,0,1,1,0,0,0),
(6116,7971,0.0022,0,1,1,0,0,0),
(5331,7971,0.0023,0,1,1,0,0,0),
(1907,7971,0.003,0,1,1,0,0,0);

-- Missing Emblem of Triumph
DELETE FROM `creature_loot_template` WHERE `entry` IN (364940,364760,366580,365020,364970) AND `item`=47241;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(364940,47241,100,1,1,1),
(364760,47241,100,1,1,1),
(366580,47241,100,1,1,1),
(365020,47241,100,1,1,1),
(364970,47241,100,1,1,1);