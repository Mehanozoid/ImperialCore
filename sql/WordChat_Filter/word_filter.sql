-- ----------------------------
-- Table structure for `letter_analogs`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `letter_analogs` (
  `letter` varchar(1) NOT NULL DEFAULT '',
  `analogs` varchar(128) DEFAULT '',
  PRIMARY KEY (`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 MAX_ROWS=26;

-- ----------------------------
-- Records of letter_analogs
-- ----------------------------
DELETE FROM `letter_analogs` WHERE `letter` >= 'a' AND `letter` <= 'z';
INSERT INTO `letter_analogs` VALUES 
('a', 'а@'),
('b', 'бьв'),
('c', 'с'),
('d', 'д'),
('e', 'её'),
('f', 'ф'),
('g', 'г'),
('h', 'хн'),
('i', 'ий'),
('j', 'яж'),
('k', 'к'),
('l', 'л'),
('m', 'м'),
('n', 'н'),
('o', 'о0'),
('p', 'пр'),
('q', 'к'),
('r', 'рг'),
('s', 'с$'),
('t', 'т'),
('u', 'ую'),
('v', 'в'),
('w', 'вшщ'),
('x', 'х'),
('y', 'иу'),
('z', 'з3');

-- ----------------------------
-- Table structure for `bad_word`
-- ----------------------------
DROP TABLE IF EXISTS `bad_word`;
CREATE TABLE `bad_word` (
  `bad_word` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`bad_word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bad word';

-- ----------------------------
-- Records of bad_word
-- ----------------------------

DELETE FROM `trinity_string` WHERE `entry` BETWEEN 20000 AND 20001;
INSERT INTO `trinity_string` VALUES (20000, 'Your message wasn\'t sent, because in it there is a word \'%s\'.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Сообщение не было отправлено, потому что в нём найдено запрещённое слово \'%s\'.');
INSERT INTO `trinity_string` VALUES (20001, 'Your mail wasn\'t sent, because in it there is a word \'%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Почта не было отправлено, потому что в нём найдено запрещённое слово \'%s\'.');

DELETE FROM `command` WHERE `name` IN ('wordfilter badword add', 'wordfilter badword remove', 'wordfilter badword list', 'wordfilter mod');
INSERT INTO `command` VALUES 
('wordfilter badword add', 3, 'Syntax: .wordfilter badword add #word'),
('wordfilter badword remove', 3, 'Syntax: .wordfilter badword remove #word'),
('wordfilter badword list', 3, 'Syntax: .wordfilter badword list'),
('wordfilter mod', 3, 'Syntax: .wordfilter mod on/off');