--
UPDATE `creature` SET `spawnMask`=1 WHERE `map`=429;
UPDATE `gameobject` SET `spawnMask`=1 WHERE `map`=429;
UPDATE `quest_template` SET `RewardChoiceItemID1`=1, `RewardChoiceItemID2`=1, `RewardChoiceItemID3`=1, `RewardChoiceItemID4`=1, `RewardChoiceItemID5`=1, `RewardChoiceItemID6`=1 WHERE `Id` IN (10645,10639);
