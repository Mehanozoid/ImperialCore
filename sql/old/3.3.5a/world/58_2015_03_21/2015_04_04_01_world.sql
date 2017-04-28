SET @OGUID       := 29742;
SET @CGUID       := 143505;

UPDATE `gameobject_template` SET `flags`=32 WHERE  `entry`IN (177257,177258,177259,179504,179505,179503,179506);

DELETE FROM `gameobject` where `id` IN (177257,177258,177259,179504,179505,179503,179506,179563,177219,179563,177219,177221,177211,177212,177215,179549,177217)  AND  `map`=429;
REPlACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,  `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 177258, 429, 3, 1,  121.2223, 429.0921, 28.45481, 0.4188786, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177258 (Area: 0)
(@OGUID+1, 177259, 429, 3, 1,  12.94134, 277.9307, -8.932899, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177259 (Area: 5915)
(@OGUID+2, 177257, 429, 3, 1,  -92.34557, 442.6703, 28.54704, 0.4188786, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177257 (Area: 5915)
(@OGUID+3, 179504, 429, 3, 1,  78.13875, 737.4021, -24.62163, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 179504 (Area: 5915)
(@OGUID+4, 179505, 429, 3, 1,  -155.4332, 734.1661, -24.62163, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 179505 (Area: 5915)
(@OGUID+5, 179503, 429, 3, 1, -38.96511, 813.7094, -27.31784, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 179503 (Area: 5913)
(@OGUID+6, 179506, 429, 3, 1, -38.75632, 812.5867, -3.8761, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 179506 (Area: 5913)
(@OGUID+7, 179563, 429, 3, 1, 116.1046, 638.89, -48.46696, 4.520406, 0, 0, 0, 1, 7200, 255, 1), -- 179563 (Area: 5915)
(@OGUID+8, 177219, 429, 3, 1, 385.3268, 374.2315, -1.34314, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177219 (Area: 5913)
(@OGUID+9, 177221, 429, 3, 1, 50.58631, 501.9406, -23.14985, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177221 (Area: 5913)
(@OGUID+10, 177211, 429, 3, 1, -41.8254, 159.8736, -3.448337, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177211 (Area: 5913)
(@OGUID+11, 177212, 429, 3, 1, 10.72159, 159.4589, -3.448351, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177212 (Area: 5913)
(@OGUID+12, 177215, 429, 3, 1, 255.4084, 10.3791, -2.693807, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 177215 (Area: 5913)
(@OGUID+13, 179549, 429, 3, 1, 351.5679, 88.67347, -36.39297, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 179549 (Area: 5913)
(@OGUID+14, 177217, 429, 3, 1, 491.2043, 515.1331, 29.46753, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 1); -- 177217 (Area: 5913)

DELETE FROM `creature` WHERE `id` IN(11480,11483,13916,13160);

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`,  `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 11480, 429, 3, 1, 130.4702, 422.0486, 28.68438, 5.5676, 7200, 0, 0), -- 11480 (Area: 0)
(@CGUID+1, 11480, 429, 3, 1, 129.8357, 437.4243, 28.68438, 0.6457718, 7200, 0, 0), -- 11480 (Area: 0)
(@CGUID+2, 11483, 429, 3, 1, 112.3598, 421.3277, 28.68438, 3.979351, 7200, 0, 0), -- 11483 (Area: 0)
(@CGUID+3, 11483, 429, 3, 1, 112.2285, 437.3398, 28.68438, 2.495821, 7200, 0, 0), -- 11483 (Area: 0)
(@CGUID+4, 11483, 429, 3, 1, 24.50517, 278.4114, -8.422497, 0.8726646, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+5, 11480, 429, 3, 1, 3.030073, 275.064, -8.27089, 3.036873, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+6, 11483, 429, 3, 1, 18.33997, 262.5933, -7.229755, 5.044002, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+7, 11480, 429, 3, 1, -99.35272, 434.2773, 28.68608, 3.926991, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+8, 11483, 429, 3, 1, -83.95709, 435.4832, 28.68626, 5.61996, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+9, 11480, 429, 3, 1, -100.4601, 449.052, 28.6875, 2.321288, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+10, 11483, 429, 3, 1, -83.53941, 449.507, 28.6862, 0.9599311, 7200, 5, 1), -- 11483 (Area: 5915) (possible waypoints or random movement)
(@CGUID+11, 11483, 429, 3, 1, 90.66621, 740.4608, -24.49702, 0.3490658, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+12, 11480, 429, 3, 1, 75.12427, 748.4026, -24.49702, 1.553343, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+13, 11483, 429, 3, 1, 81.96804, 725.6087, -24.49635, 5.166174, 7200, 5, 1), -- 11483 (Area: 5915) (Auras: ) (possible waypoints or random movement)
(@CGUID+14, 11480, 429, 3, 1, 67.98151, 733.5004, -24.49676, 3.665191, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+15, 11480, 429, 3, 1, -151.3329, 721.8649, -24.49508, 4.904375, 7200, 0, 0), -- 11480 (Area: 5915)
(@CGUID+16, 11483, 429, 3, 1, -142.6175, 736.7474, -24.49702, 6.108652, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+17, 11483, 429, 3, 1, -166.1358, 729.3408, -24.49702, 3.525565, 7200, 0, 0), -- 11483 (Area: 5915)
(@CGUID+18, 11480, 429, 3, 1, -157.8231, 746.3584, -24.49702, 1.623156, 7200, 0, 0),-- 11480 (Area: 5915)
(@CGUID+19, 11480, 429, 3, 1, 10.1239, 287.949, -8.78406, 1.62106, 7200, 0, 0),-- 11480 (Area: 5915)
(@CGUID+20, 13916, 429, 3, 1, 13.45142, 277.6283, 1.514334, 2.286381, 7200, 0, 0), -- 13916 (Area: 5915)
(@CGUID+21, 13160, 429, 3, 1, 462.8175, 251.535, 8.817377, 4.555309, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+22, 13160, 429, 3, 1, 452.7207, 247.395, 11.30013, 4.642576, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+23, 13160, 429, 3, 1, 448.1017, 251.626, 11.29641, 4.677482, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+24, 13160, 429, 3, 1, 455.3728, 253.9155, 11.3039, 4.625123, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+25, 13160, 429, 3, 1, 448.4704, 258.7166, 11.29889, 4.677482, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+26, 13160, 429, 3, 1, 449.7683, 243.4786, 11.29772, 4.660029, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+27, 13160, 429, 3, 1, 452.4716, 260.4895, 11.30317, 4.642576, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+28, 13160, 429, 3, 1, 477.2956, 252.6243, 2.873334, 2.817438, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+29, 13160, 429, 3, 1, 462.7784, 260.8503, 8.751555, 2.073882, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+30, 13160, 429, 3, 1, 471.8947, 252.9371, 4.882514, 4.475661, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+31, 13160, 429, 3, 1, 486.488, 313.6001, 2.936218, 4.485496, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+32, 13160, 429, 3, 1, 494.2127, 319.3602, 2.936227, 4.45059, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+33, 13160, 429, 3, 1, 474.5892, 316.7031, 2.936239, 4.537856, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+34, 13160, 429, 3, 1, 478.2815, 324.038, 2.936251, 4.537856, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+35, 13160, 429, 3, 1, 493.1786, 309.8522, 2.936205, 4.433136, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+36, 13160, 429, 3, 1, 467.4713, 316.5861, 2.93625, 4.590216, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+37, 13160, 429, 3, 1, 471.9471, 324.6326, 2.936259, 4.572762, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+38, 13160, 429, 3, 1, 485.187, 320.7115, 2.936234, 4.485496, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+39, 13160, 429, 3, 1, 490.0086, 329.4991, 2.852889, 1.889038, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+40, 13160, 429, 3, 1, 484.4862, 327.5917, 2.85289, 3.664191, 7200, 5, 1), -- 13160 (Area: 0) (possible waypoints or random movement)
(@CGUID+41, 13160, 429, 3, 1, 479.4313, 534.1829, -25.30033, 4.625123, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+42, 13160, 429, 3, 1, 494.0698, 531.7256, -25.30895, 4.590216, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+43, 13160, 429, 3, 1, 480.5341, 542.3371, -25.3806, 6.065704, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+44, 13160, 429, 3, 1, 518.8744, 532.2348, -25.39863, 2.637258, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+45, 13160, 429, 3, 1, 521.4735, 543.2216, -25.39985, 2.595782, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+46, 13160, 429, 3, 1, 532.2884, 535.4186, -25.40494, 0.08802468, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+47, 13160, 429, 3, 1, 507.4343, 541.1744, -25.39325, 4.851843, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+48, 13160, 429, 3, 1, 481.1589, 552.1213, -25.3825, 0.2103749, 7200, 0, 0), -- 13160 (Area: 0) (Auras: )
(@CGUID+49, 13160, 429, 3, 1, 511.5812, 556.6573, -25.39854, 3.27448, 7200, 5, 1), -- 13160 (Area: 0) (Auras: ) (possible waypoints or random movement)
(@CGUID+50, 13160, 429, 3, 1, 532.3871, 552.1505, -25.40498, 2.640144, 7200, 5, 1), -- 13160 (Area: 0) (Auras: ) (possible waypoints or random movement)
(@CGUID+51, 13160, 429, 3, 1, 472.9739, -32.42187, -3.903387, 6.217165, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+52, 13160, 429, 3, 1, 460.5289, -24.7918, -3.886683, 1.132865, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+53, 13160, 429, 3, 1, 472.9483, -21.3704, -3.911369, 2.103442, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+54, 13160, 429, 3, 1, 460.5975, -39.44626, -3.886727, 5.271253, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+55, 13160, 429, 3, 1, 471.0815, -48.29583, -3.886039, 1.733511, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+56, 13160, 429, 3, 1, 456.1195, -58.02909, -4.279171, 3.795121, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+57, 13160, 429, 3, 1, 470.6244, -60.59518, -3.886099, 0.863512, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+58, 13160, 429, 3, 1, 463.9873, -52.75054, -3.886564, 2.476561, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+59, 13160, 429, 3, 1, 460.2359, -68.97313, -3.886916, 3.776749, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+60, 13160, 429, 3, 1, 469.8415, -70.88819, -3.886191, 4.886696, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+61, 13160, 429, 3, 1, 396.9608, -98.32198, -3.887123, 2.894927, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+62, 13160, 429, 3, 1, 404.5128, -110.0931, -3.886247, 0.1595933, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+63, 13160, 429, 3, 1, 445.6248, -113.9238, -3.886032, 5.102283, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+64, 13160, 429, 3, 1, 414.6084, -108.6204, -3.886377, 0.0039941, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+65, 13160, 429, 3, 1, 443.4119, -99.60896, -3.887109, 2.986769, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+66, 13160, 429, 3, 1, 401.1027, -104.8092, -3.88664, 0.2074864, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+67, 13160, 429, 3, 1, 438.3328, -108.5529, -3.886425, 5.919142, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+68, 13160, 429, 3, 1, 426.5037, -100.5517, -3.887007, 2.909149, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+69, 13160, 429, 3, 1, 414.977, -98.74563, -3.887123, 2.845945, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+70, 13160, 429, 3, 1, 424.4419, -108.6975, -3.886389, 1.076339, 7200, 0, 0), -- 13160 (Area: 0)
(@CGUID+71, 13160, 429, 3, 1, 396.8296, -98.32212, -3.803594, 1.37881, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+72, 13160, 429, 3, 1, 414.977, -98.74563, -3.803658, 1.448623, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+73, 13160, 429, 3, 1, 400.0482, -105.0312, -3.803111, 1.396263, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+74, 13160, 429, 3, 1, 437.5299, -108.435, -3.803006, 1.553343, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+75, 13160, 429, 3, 1, 424.8745, -110.3578, -3.802841, 1.500983, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+76, 13160, 429, 3, 1, 460.3629, -24.53695, -3.803384, 1.658063, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+77, 13160, 429, 3, 1, 403.6488, -110.2321, -3.802753, 1.413717, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+78, 13160, 429, 3, 1, 427.6517, -100.8249, -3.803568, 1.500983, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+79, 13160, 429, 3, 1, 414.4864, -108.6242, -3.802916, 1.448623, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+80, 13160, 429, 3, 1, 456.6826, -57.28893, -4.25341, 1.623156, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+81, 13160, 429, 3, 1, 471.2401, -46.80048, -3.802765, 1.710423, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+82, 13160, 429, 3, 1, 473.4761, -22.86045, -3.80176, 1.745329, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+83, 13160, 429, 3, 1, 470.647, -70.00087, -3.802982, 1.692969, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+84, 13160, 429, 3, 1, 472.6571, -33.71276, -3.802353, 1.727876, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+85, 13160, 429, 3, 1, 461.8682, -40.83654, -3.803358, 1.658063, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+86, 13160, 429, 3, 1, 444.67, -99.75545, -3.803718, 1.570796, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+87, 13160, 429, 3, 1, 460.2359, -68.97313, -3.803645, 1.64061, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+88, 13160, 429, 3, 1, 464.6496, -53.98102, -3.803182, 1.658063, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+89, 13160, 429, 3, 1, 445.7453, -113.9387, -3.802556, 1.570796, 7200, 5, 1), -- 13160 (Area: 5913) (possible waypoints or random movement)
(@CGUID+90, 13160, 429, 3, 1, 470.4993, -60.37534, -3.802882, 1.692969, 7200, 5, 1); -- 13160 (Area: 5913) (possible waypoints or random movement)

