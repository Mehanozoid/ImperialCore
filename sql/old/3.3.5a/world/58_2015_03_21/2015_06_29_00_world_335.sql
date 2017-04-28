DROP TABLE IF EXISTS `creature_questitem`;
CREATE TABLE `creature_questitem` (
  `CreatureEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CreatureEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `gameobject_questitem`;
CREATE TABLE `gameobject_questitem` (
  `GameObjectEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Idx` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`GameObjectEntry`,`Idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 0, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 1, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 2, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 3, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 4, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);
INSERT INTO gameobject_questitem (`GameObjectEntry`, `Idx`, `ItemId`)
(SELECT gameobject_template.entry, 5, gameobject_template.entry FROM gameobject_template WHERE gameobject_template.entry != 0);

INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 0, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 1, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 2, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 3, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 4, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);
INSERT INTO creature_questitem (`CreatureEntry`, `Idx`, `ItemId`)
(SELECT creature_template.entry, 5, creature_template.entry FROM creature_template WHERE creature_template.entry != 0);


