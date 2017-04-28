DELETE FROM `mail_loot_template` WHERE `Entry` in(269,270);

INSERT INTO `mail_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(269, 46545, 0, 100, 0, 1, 0, 1, 1, NULL), -- Oracle
(270, 46544, 0, 100, 0, 1, 0, 1, 1, NULL); -- Wolvar


