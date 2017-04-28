DROP TABLE IF EXISTS `gameobject_template_locale`;
CREATE TABLE IF NOT EXISTS `gameobject_template_locale` (
  `entry` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `locale` VARCHAR(4) NOT NULL,
  `name` TEXT,
  `castBarCaption` TEXT,
  `VerifiedBuild` SMALLINT(5) DEFAULT '0'
) ENGINE=MYISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `locales_gameobject`;
