-- creating `quest_template_addon` table
DROP TABLE IF EXISTS        `quest_template_addon`;
CREATE TABLE IF NOT EXISTS  `quest_template_addon` (                  -- old names:
  `ID`                    mediumint(8) unsigned NOT NULL DEFAULT '0', -- ID
  `MaxLevel`              tinyint(3) unsigned NOT NULL DEFAULT '0',   -- MaxLevel
  `AllowableClasses`      int(10) unsigned NOT NULL DEFAULT '0',      -- RequiredClasses
  `SourceSpellID`         mediumint(8) unsigned NOT NULL DEFAULT '0', -- SourceSpellId
  `PrevQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- PrevQuestId
  `NextQuestID`           mediumint(8) NOT NULL DEFAULT '0',          -- NextQuestId
  `ExclusiveGroup`        mediumint(8) NOT NULL DEFAULT '0',          -- ExclusiveGroup
  `RewardMailTemplateID`  mediumint(8) unsigned NOT NULL DEFAULT '0', -- RewardMailTemplateId
  `RewardMailDelay`       int(10) unsigned NOT NULL DEFAULT '0',      -- RewardMailDelay
  `RequiredSkillID`       smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillId
  `RequiredSkillPoints`   smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredSkillPoints
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMinRepFaction
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',  -- RequiredMaxRepFaction
  `RequiredMinRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMinRepValue
  `RequiredMaxRepValue`   mediumint(8) NOT NULL DEFAULT '0',          -- RequiredMaxRepValue
  `ProvidedItemCount`     tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SourceItemCount
  `SpecialFlags`          tinyint(3) unsigned NOT NULL DEFAULT '0',   -- SpecialFlags
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
