-- areatrigger_teleport
ALTER TABLE `areatrigger_teleport`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `Name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;

-- battleground_template
ALTER TABLE `battleground_template`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- creature_equip_template
ALTER TABLE `creature_equip_template`
CHANGE `creatureId` `CreatureID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `id` `ID` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
CHANGE `itemId1` `ItemID1` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `itemId2` `ItemID2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `itemId3` `ItemID3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- creature_formations
ALTER TABLE `creature_formations`
CHANGE `leaderGUID` `leaderGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `memberGUID` `memberGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- creature_model_info
ALTER TABLE `creature_model_info`
CHANGE `displayId` `DisplayID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `boundingRadius` `BoundingRadius` FLOAT NOT NULL DEFAULT '0',
CHANGE `combatReach` `CombatReach` FLOAT NOT NULL DEFAULT '0',
CHANGE `gender` `Gender` TINYINT(3) UNSIGNED NOT NULL DEFAULT '2',
CHANGE `displayId_other_gender` `DisplayID_Other_Gender` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0';

-- gameobject_template
ALTER TABLE `gameobject_template`
CHANGE `data0`  `Data0`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data1`  `Data1`  INT(11) NOT NULL DEFAULT '0',
CHANGE `data2`  `Data2`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data3`  `Data3`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data4`  `Data4`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data5`  `Data5`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data6`  `Data6`  INT(11) NOT NULL DEFAULT '0',
CHANGE `data7`  `Data7`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data8`  `Data8`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data9`  `Data9`  INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data10` `Data10` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data11` `Data11` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data12` `Data12` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data13` `Data13` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data14` `Data14` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data15` `Data15` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data16` `Data16` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data17` `Data17` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data18` `Data18` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data19` `Data19` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data20` `Data20` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data21` `Data21` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data22` `Data22` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data23` `Data23` INT(10) UNSIGNED NOT NULL DEFAULT '0';


-- npc_text
ALTER TABLE `npc_text`
CHANGE `probability0` `Probability0` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability1` `Probability1` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability2` `Probability2` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability3` `Probability3` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability4` `Probability4` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability5` `Probability5` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability6` `Probability6` FLOAT NOT NULL DEFAULT '0',
CHANGE `probability7` `Probability7` FLOAT NOT NULL DEFAULT '0';

-- npc_trainer
ALTER TABLE `npc_trainer`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `spellId` `SpellID` MEDIUMINT(8) NOT NULL DEFAULT '0',
CHANGE `moneyCost` `MoneyCost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqSkillLine` `ReqSkillLine` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqSkillRank` `ReqSkillRank` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `reqLevel` `ReqLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0';

-- page_text
ALTER TABLE `page_text`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `text` `Text` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
CHANGE `NextPageId` `NextPageID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `VerifiedBuild` `VerifiedBuild` SMALLINT(5) NULL DEFAULT '0';

-- player_xp_for_level
ALTER TABLE `player_xp_for_level`
CHANGE `level` `Level` TINYINT(3) UNSIGNED NOT NULL,
CHANGE `experience` `Experience` INT(10) UNSIGNED NOT NULL;

-- points_of_interest
ALTER TABLE `points_of_interest`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `positionX` `PositionX` FLOAT NOT NULL DEFAULT '0',
CHANGE `positionY` `PositionY` FLOAT NOT NULL DEFAULT '0',
CHANGE `icon` `Icon` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `flags` `Flags` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `data` `Data` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `name` `Name` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

-- quest_poi
ALTER TABLE `quest_poi`
CHANGE `questId` `QuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `objectiveIndex` `ObjectiveIndex` INT(11) NOT NULL DEFAULT '0',
CHANGE `mapid` `MapID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `floor` `Floor` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `priority` `Priority` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `flags` `Flags` INT(10) UNSIGNED NOT NULL DEFAULT '0';

-- quest_poi_points
ALTER TABLE `quest_poi_points`
CHANGE `questId` `QuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `idx1` `Idx1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `idx2` `Idx2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `x` `X` INT(11) NOT NULL DEFAULT '0',
CHANGE `y` `Y` INT(11) NOT NULL DEFAULT '0';

-- quest_template
ALTER TABLE `quest_template`
CHANGE `Id` `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `questLevel` `QuestLevel` smallint(3) NOT NULL DEFAULT '1',
CHANGE `questSortId` `QuestSortID` smallint(6) NOT NULL DEFAULT '0',
CHANGE `questType` `QuestType` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `suggestedGroupNum` `SuggestedGroupNum` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardTitle` `RewardTitle` tinyint(3) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardItem1` `RewardItem1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardItem2` `RewardItem2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardItem3` `RewardItem3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardItem4` `RewardItem4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardAmount1` `RewardAmount1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardAmount2` `RewardAmount2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardAmount3` `RewardAmount3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardAmount4` `RewardAmount4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId1` `RewardChoiceItemID1` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId2` `RewardChoiceItemID2` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId3` `RewardChoiceItemID3` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId4` `RewardChoiceItemID4` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId5` `RewardChoiceItemID5` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemId6` `RewardChoiceItemID6` mediumint(8) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity1` `RewardChoiceItemQuantity1` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity2` `RewardChoiceItemQuantity2` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity3` `RewardChoiceItemQuantity3` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity4` `RewardChoiceItemQuantity4` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity5` `RewardChoiceItemQuantity5` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardChoiceItemQuantity6` `RewardChoiceItemQuantity6` smallint(5) unsigned NOT NULL DEFAULT '0',
CHANGE `rewardFactionId1` `RewardFactionID1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `rewardFactionId2` `RewardFactionID2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `rewardFactionId3` `RewardFactionID3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `rewardFactionId4` `RewardFactionID4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `rewardFactionId5` `RewardFactionID5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction id from Faction.dbc in this case',
CHANGE `rewardFactionValue1` `RewardFactionValue1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionValue2` `RewardFactionValue2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionValue3` `RewardFactionValue3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionValue4` `RewardFactionValue4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionValue5` `RewardFactionValue5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionOverride1` `RewardFactionOverride1` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionOverride2` `RewardFactionOverride2` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionOverride3` `RewardFactionOverride3` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionOverride4` `RewardFactionOverride4` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `rewardFactionOverride5` `RewardFactionOverride5` mediumint(8) NOT NULL DEFAULT '0',
CHANGE `logTitle` `LogTitle` text,
CHANGE `logDescription` `LogDescription` text,
CHANGE `questDescription` `QuestDescription` text,
CHANGE `questCompletionLog` `QuestCompletionLog` text;

-- spell_target_position
ALTER TABLE `spell_target_position`
CHANGE `id` `ID` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Identifier',
CHANGE `effectIndex` `EffectIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `mapId` `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
CHANGE `positionX` `PositionX` FLOAT NOT NULL DEFAULT '0',
CHANGE `positionY` `PositionY` FLOAT NOT NULL DEFAULT '0',
CHANGE `positionZ` `PositionZ` FLOAT NOT NULL DEFAULT '0',
CHANGE `orientation` `Orientation` FLOAT NOT NULL DEFAULT '0';
