
<<<<<<< HEAD:install.sql
=======
-- *** STRUCTURE: `tbl_authors` ***
DROP TABLE IF EXISTS `tbl_authors`;
CREATE TABLE `tbl_authors` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `username` varchar(20) collate utf8_unicode_ci NOT NULL default '',
  `password` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `first_name` varchar(100) collate utf8_unicode_ci default NULL,
  `last_name` varchar(100) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `last_seen` datetime default '0000-00-00 00:00:00',
  `user_type` enum('author','developer') collate utf8_unicode_ci NOT NULL default 'author',
  `primary` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `default_section` int(11) NOT NULL,
  `auth_token_active` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_cache` ***
DROP TABLE IF EXISTS `tbl_cache`;
CREATE TABLE `tbl_cache` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `hash` varchar(32) collate utf8_unicode_ci NOT NULL default '',
  `creation` int(14) NOT NULL default '0',
  `expiry` int(14) unsigned default NULL,
  `data` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `creation` (`creation`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_entries` ***
DROP TABLE IF EXISTS `tbl_entries`;
CREATE TABLE `tbl_entries` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_extensions` ***
DROP TABLE IF EXISTS `tbl_extensions`;
CREATE TABLE `tbl_extensions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `status` enum('enabled','disabled') collate utf8_unicode_ci NOT NULL default 'enabled',
  `version` double unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_extensions_delegates` ***
DROP TABLE IF EXISTS `tbl_extensions_delegates`;
CREATE TABLE `tbl_extensions_delegates` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) collate utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) collate utf8_unicode_ci NOT NULL,
  `callback` varchar(100) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_fields` ***
DROP TABLE IF EXISTS `tbl_fields`;
CREATE TABLE `tbl_fields` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `label` varchar(255) collate utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `type` varchar(32) collate utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL default '0',
  `required` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'yes',
  `sortorder` int(11) NOT NULL default '1',
  `location` enum('main','sidebar') collate utf8_unicode_ci NOT NULL default 'main',
  `show_column` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') collate utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') collate utf8_unicode_ci NOT NULL default 'on',
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (27, 10, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (32, 22, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (33, 23, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (30, 33, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (31, 34, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 49, 'off', NULL);
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `calendar` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (20, 20, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (19, 29, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (8, 45, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (9, 54, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (17, 65, 'yes', 'no');

-- *** STRUCTURE: `tbl_fields_enhancedtaglist` ***
DROP TABLE IF EXISTS `tbl_fields_enhancedtaglist`;
CREATE TABLE `tbl_fields_enhancedtaglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) default NULL,
  `pre_populate_source` varchar(255) default NULL,
  `pre_populate_min` int(11) unsigned NOT NULL,
  `external_source_url` varchar(255) default NULL,
  `external_source_path` varchar(255) default NULL,
  `ordered` enum('yes','no') NOT NULL default 'no',
  `delimiter` varchar(5) NOT NULL default ',',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_enhancedtaglist` ***
INSERT INTO `tbl_fields_enhancedtaglist` (`id`, `field_id`, `validator`, `pre_populate_source`, `pre_populate_min`, `external_source_url`, `external_source_path`, `ordered`, `delimiter`) VALUES (20, 19, NULL, 'existing', 0, NULL, NULL, 'no', ',');
INSERT INTO `tbl_fields_enhancedtaglist` (`id`, `field_id`, `validator`, `pre_populate_source`, `pre_populate_min`, `external_source_url`, `external_source_path`, `ordered`, `delimiter`) VALUES (18, 32, NULL, 'existing', 0, NULL, NULL, 'no', ',');
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (65, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (79, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (80, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (156, 11, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (157, 12, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (154, 24, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (155, 26, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (17, 37, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (85, 39, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (28, 42, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (29, 43, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (30, 44, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (31, 50, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (32, 51, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (33, 52, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (60, 56, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (66, 59, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (141, 63, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (142, 64, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (143, 66, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (144, 67, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (145, 71, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (146, 73, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (147, 74, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (148, 75, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (149, 76, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 77, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (151, 78, NULL);

-- *** STRUCTURE: `tbl_fields_number` ***
DROP TABLE IF EXISTS `tbl_fields_number`;
CREATE TABLE `tbl_fields_number` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_number` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') default 'no',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`) VALUES (12, 9, NULL);

-- *** STRUCTURE: `tbl_fields_pages` ***
DROP TABLE IF EXISTS `tbl_fields_pages`;
CREATE TABLE `tbl_fields_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_pages` ***
INSERT INTO `tbl_fields_pages` (`id`, `field_id`, `allow_multiple_selection`) VALUES (12, 4, 'no');

-- *** STRUCTURE: `tbl_fields_referencelink` ***
DROP TABLE IF EXISTS `tbl_fields_referencelink`;
CREATE TABLE `tbl_fields_referencelink` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `related_field_id` varchar(255) NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  `field_type` enum('select','autocomplete') NOT NULL default 'select',
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_referencelink` ***
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (18, 15, 24, 20, 'autocomplete', 'yes');
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (19, 16, 24, 20, 'autocomplete', 'yes');
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (17, 84, 59, 100, 'autocomplete', 'no');

-- *** STRUCTURE: `tbl_fields_reflection` ***
DROP TABLE IF EXISTS `tbl_fields_reflection`;
CREATE TABLE `tbl_fields_reflection` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `expression` varchar(255) default NULL,
  `formatter` varchar(255) default NULL,
  `override` enum('yes','no') default 'no',
  `hide` enum('yes','no') default 'no',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_reflection` ***
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `static_options` text collate utf8_unicode_ci,
  `dynamic_options` int(11) unsigned default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (8, 72, 'no', 'Design Studio, Web Design Firm, Organization, Advertising Agency, Employer', NULL);
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
<<<<<<< HEAD:install.sql
  `allow_multiple_selection` enum('yes','no') NOT NULL default 'no',
  `related_field_id` varchar(255) NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (43, 17, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (41, 25, 'no', 37, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (42, 31, 'no', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (44, 18, 'no', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (15, 46, 'no', 11, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (16, 47, 'no', 24, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (38, 68, 'no', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (27, 8, 'no', '1,3', 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (32, 85, 'no', 37, 20);
=======
  `allow_multiple_selection` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `related_field_id` varchar(255) collate utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL default '20',
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) collate utf8_unicode_ci default NULL,
  `pre_populate_source` varchar(15) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) collate utf8_unicode_ci default NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 2, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (64, 6, 'pb_markdownextrasmartypants', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (65, 7, 'pb_markdownextrasmartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (92, 13, 'pb_markdownextrasmartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (93, 14, 'pb_markdownextrasmartypants', 18);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (90, 27, 'pb_markdownextrasmartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (91, 28, 'pb_markdownextrasmartypants', 18);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (19, 38, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (74, 40, 'pb_markdownextrasmartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (75, 41, 'pb_markdownextrasmartypants', 14);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (30, 48, 'pb_markdownextrasmartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (31, 53, NULL, 9);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (32, 55, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (44, 57, 'pb_markdownextrasmartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (50, 60, 'pb_markdownextrasmartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (51, 61, 'pb_markdownextrasmartypants', 16);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (86, 69, 'pb_markdownextrasmartypants', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (87, 70, 'pb_markdownextrasmartypants', 8);
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) collate utf8_unicode_ci NOT NULL,
  `validator` varchar(50) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `field_id` (`field_id`)
<<<<<<< HEAD:install.sql
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (21, 58, '/workspace/assets/files', '/\\.(?:doc|pdf|rtf|txt)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (22, 62, '/workspace/assets/images', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (48, 79, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (49, 80, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (50, 81, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (51, 82, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (52, 83, '/workspace/assets/portfolio', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (55, 35, '/workspace/assets/items/images', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (56, 36, '/workspace/assets/items/files', NULL);

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'main', 'Main');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 2, 'secondary', 'Secondary');

-- *** STRUCTURE: `tbl_entries_data_10` ***
DROP TABLE IF EXISTS `tbl_entries_data_10`;
CREATE TABLE `tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (6, 11, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (54, 21, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (14, 22, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (16, 27, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (17, 30, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (35, 31, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (36, 33, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (33, 36, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (34, 43, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (38, 44, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (41, 45, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (37, 53, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (42, 54, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (43, 55, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (44, 56, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (45, 57, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (46, 58, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (49, 59, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (52, 60, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (53, 61, 'yes');

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 12, 'entry', 'Entry');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 13, 'entry-2', 'Entry 2');

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 12, 'my-first-entry', 'My First Entry');
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 13, 'my-second-entry', 'My Second Entry');

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 12, 'Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.\r\n\r\nLi Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.\r\n\r\nMa quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nEpsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.\r\n\r\nLi Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.', '<p>Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n\n<p>Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 13, 'Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.\r\n\r\nLi Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.\r\n\r\nMa quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nEpsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.\r\n\r\nLi Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.', '<p>Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n\n<p>Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum. Defacto lingo est igpay atinlay. Marquee selectus non provisio incongruous feline nolo contendre. Gratuitous octopus niacin, sodium glutimate. Quote meon an estimate et non interruptus stadium. Sic tempus fugit esperanto hiccup estrogen. Glorious baklava ex librus hup hey ad infinitum. Non sequitur condominium facile et geranium incognito. Epsum factorial non deposit quid pro quo hic escorol. Marquee selectus non provisio incongruous feline nolo contendre Olypian quarrels et gorilla congolium sic ad nauseum. Souvlaki ignitus carborundum e pluribus unum.</p>\n\n<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, li tot Europa usa li sam vocabularium. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilita; de un nov lingua franca: on refusa continuar payar custosi traductores. It solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_15` ***

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_16` ***

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (6, 12, 11);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (5, 13, 11);

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (6, 12, 8);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (5, 13, 8);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 12, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 13, 'symphony-cms', 'Symphony CMS');

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 1, 'The main navigation menu', '<p>The main navigation menu</p>\n');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 2, 'The secondary navigation menu', '<p>The secondary navigation menu</p>\n');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 12, '2009-07-23T07:46:00-07:00', 1248360360, 1248360360);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 13, '2009-07-06T06:31:00-07:00', 1246887060, 1246887060);

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (6, 12, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (5, 13, 1);

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (6, 12, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (5, 13, 'yes');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (6, 12, 'yes');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (5, 13, 'yes');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'symphony-cms', 'Symphony CMS');

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (3, 14, 7);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'http-symphony-cmscom', 'http://symphony-cms.com/');

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 14, 'Open source XSLT content management system', '<p>Open source XSLT content management system</p>\n');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 14, 'Symphony is an open source content management system designed to let developers program exclusively in the XSLT templating language.\r\n\r\nThe philosophy behind Symphony is that nothing should be sacrificed for flexibility – developers should have full control over their website’s markup, URLs and data structures.', '<p>Symphony is an open source content management system designed to let developers program exclusively in the XSLT templating language.</p>\n\n<p>The philosophy behind Symphony is that nothing should be sacrificed for flexibility – developers should have full control over their website’s markup, URLs and data structures.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (3, 14, '2009-07-06T06:38:00-07:00', 1246887480, 1246887480);

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 11, 'home', 'Home');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 21, 'about', 'About');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 22, 'journal', 'Journal');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 27, 'portfolio', 'Portfolio');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 31, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 33, 'imagine', 'Imagine');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 36, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 43, 'theory', 'Theory');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 44, 'research', 'Research');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 45, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 53, 'design', 'Design');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 54, 'identity', 'Identity');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 55, 'print', 'Print');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 56, 'web', 'Web');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 57, 'type', 'Type');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 58, 'build', 'Build');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 59, 'people', 'People');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 60, 'relationships', 'Relationships');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 61, 'community', 'Community');

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `author_id`) VALUES (3, 14, 1);

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (2, 14, 10);

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 14, 'cms', 'CMS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 14, 'open-source', 'Open Source');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'php', 'PHP');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 14, 'xml', 'XML');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 14, 'xslt', 'XSLT');

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'yes',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (3, 14, 'yes');

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (3, 14, 'no');

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_36` ***

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 3, 'bookmarks', 'Bookmarks');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 4, 'books', 'Books');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 5, 'files', 'Files');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 6, 'photos', 'Photos');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 7, 'sites', 'Sites');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 62, 'media', 'Media');

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_38` ***
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 3, 'Things of interest on the world wide web', '<p>Things of interest on the world wide web</p>\n');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 4, 'A bibliographical reference or book review', '<p>A bibliographical reference or book review</p>\n');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 5, 'Files available for download', '<p>Files available for download</p>\n');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 6, 'Digital photography and imagery', '<p>Digital photography and imagery</p>\n');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 7, 'The sites I like to frequent', '<p>The sites I like to frequent</p>\n');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 62, 'The medium is the message', '<p>The medium is the message</p>\n');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 9, 'design', 'Design');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 10, 'technology', 'Technology');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 8, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 63, 'identity', 'Identity');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 64, 'print', 'Print');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 65, 'web', 'Web');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 66, 'type', 'Type');

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) default NULL,
  `handle` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (6, 11, 1, 'Home', 'home');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (54, 21, 2, 'About', 'about');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (14, 22, 3, 'Journal', 'journal');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (16, 27, 5, 'Portfolio', 'portfolio');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (17, 30, 6, 'Resources', 'resources');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (35, 31, 7, 'Contact', 'contact');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (36, 33, 8, 'Imagine', 'imagine');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (33, 36, 19, 'Resources', 'resources');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (34, 43, 20, 'Theory', 'theory');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (38, 44, 21, 'Research', 'research');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (41, 45, 22, 'Strategy', 'strategy');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (37, 53, 9, 'Design', 'design');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (42, 54, 11, 'Identity', 'identity');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (43, 55, 12, 'Print', 'print');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (44, 56, 13, 'Web', 'web');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (45, 57, 14, 'Type', 'type');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (46, 58, 10, 'Build', 'build');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (49, 59, 23, 'People', 'people');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (52, 60, 24, 'Relationships', 'relationships');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (53, 61, 25, 'Community', 'community');

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 9, 'Researching, conceptualizing and developing ideas for real world applications', '<p>Researching, conceptualizing and developing ideas for real world applications</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 10, 'The tools that we use to get the job done', '<p>The tools that we use to get the job done</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 8, 'Defining the best course of action and developing a plan to implement it', '<p>Defining the best course of action and developing a plan to implement it</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 63, 'The physical form of abstract ideas and qualitative characteristics ', '<p>The physical form of abstract ideas and qualitative characteristics</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 66, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 8, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 9, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 10, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 63, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 66, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_42` ***

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 11, 'the-elementary-forms', 'The Elementary Forms');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 21, 'putting-ideas-into-practice', 'Putting Ideas into Practice');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 22, 'flow-of-consciousness', 'Flow of Consciousness');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 27, 'design-as-adapting-to-change', 'Design as Adapting to Change');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'learning-by-doing', 'Learning by Doing');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 31, 'send-me-a-message', 'Send Me a Message');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 33, 'imagine-something-better', 'Imagine Something Better');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 43, 'ideas-about-design', 'Ideas About Design');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 36, 'adapting-to-changing-technology', 'Adapting to Changing Technology');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 53, 'design-to-make-an-impact', 'Design to Make an Impact');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 44, 'design-thinking', 'Design Thinking');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 45, 'a-cohesive-plan-for-change', 'A Cohesive Plan for Change');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 54, 'putting-a-face-to-the-name', 'Putting a Face to the Name');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 55, 'an-ancient-art-a-technological-revolution', 'An Ancient Art, A Technological Revolution');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 56, 'focusing-on-user-experience', 'Focusing on User Experience');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 57, 'the-democratization-of-typography', 'The Democratization of Typography');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 58, 'build-your-business-and-your-community', 'Build your business and your community');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 59, 'empowering-people-to-build', 'Empowering People to Build');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 60, 'connecting-people', 'Connecting People');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 61, 'coming-together-to-achieve-common-goals', 'Coming Together to Achieve Common Goals');

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_50` ***

-- *** STRUCTURE: `tbl_entries_data_51` ***
DROP TABLE IF EXISTS `tbl_entries_data_51`;
CREATE TABLE `tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_51` ***

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_54` ***

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***

-- *** STRUCTURE: `tbl_entries_data_56` ***
DROP TABLE IF EXISTS `tbl_entries_data_56`;
CREATE TABLE `tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_57` ***

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_58` ***

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_59` ***
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 15, 'elementary-forms-grayscale', 'Elementary Forms - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 16, 'the-elementary-forms-sphere', 'The Elementary Forms - Sphere');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 17, 'the-elementary-forms-cone', 'The Elementary Forms - Cone');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 18, 'the-elementary-forms-cube', 'The Elementary Forms - Cube');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 19, 'about-section-grayscale', 'About Section - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 20, 'about-section', 'About Section');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 23, 'journal-grayscale', 'Journal - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 24, 'journal', 'Journal');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 25, 'portfolio-grayscale', 'Portfolio - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 26, 'portfolio', 'Portfolio');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 28, 'resources-grayscale', 'Resources - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 29, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 34, 'imagine-resources-grayscale', 'Imagine: Resources - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 35, 'imagine-resources', 'Imagine: Resources');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 37, 'imagine-theory-grayscale', 'Imagine: Theory - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 38, 'imagine-theory', 'Imagine: Theory');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 39, 'imagine-research-grayscale', 'Imagine: Research - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 40, 'imagine-research', 'Imagine: Research');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 41, 'imagine-strategy-grayscale', 'Imagine: Strategy - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 42, 'imagine-strategy', 'Imagine: Strategy');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 46, 'design-identity-grayscale', 'Design: Identity - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 47, 'design-print-grayscale', 'Design: Print - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 48, 'design-web-grayscale', 'Design: Web - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 49, 'design-type-grayscale', 'Design: Type - Grayscale');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 50, 'build-people', 'Build: People');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 51, 'build-relationships', 'Build: Relationships');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 52, 'build-community', 'Build: Community');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 11, 'The Bauhouse is the portfolio site and web development sandbox of Stephen Bau, Designer and Web Developer', '<p>The Bauhouse is the portfolio site and web development sandbox of Stephen Bau, Designer and Web Developer</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 22, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 21, '#### Bauhouse Design\r\n\r\nThe Bauhouse is the digital sandbox and personal portfolio of Stephen Bau, Professional Member of the Society of Graphic Designers of Canada.\r\n\r\nIn the world of social media, bauhouse is my screen name. You\'ll find that I spend most of my time on the Symphony CMS forum and on GitHub, designing and developing with XML, XSLT, XHTML and CSS.\r\n', '<h4>Bauhouse Design</h4>\n\n<p>The Bauhouse is the digital sandbox and personal portfolio of Stephen Bau, Professional Member of the Society of Graphic Designers of Canada.</p>\n\n<p>In the world of social media, bauhouse is my screen name. You&#8217;ll find that I spend most of my time on the Symphony CMS forum and on GitHub, designing and developing with XML, XSLT, XHTML and CSS.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 27, 'Creating a body of work while adapting to the changing tools of the trade', '<p>Creating a body of work while adapting to the changing tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 30, 'So many things to learn and do', '<p>So many things to learn and do</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 31, '#### Contact Form Notes\r\n\r\n* It\'s preferred to use the contact form rather than email. There is always a chance for emails to be picked up as spam.\r\n* I will generally reply to messages within 24 hours unless I am horribly swamped.', '<h4>Contact Form Notes</h4>\n\n<ul>\n<li>It&#8217;s preferred to use the contact form rather than email. There is always a chance for emails to be picked up as spam.</li>\n<li>I will generally reply to messages within 24 hours unless I am horribly swamped.</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 33, 'It starts with an idea to meet a need, to solve a problem, to overcome a challenge, to improve upon the status quo, to reach beyond the ordinary, to realize a dream. Then comes the part where the world of ideas meets everyday life. All these ideas we have are very abstract and subjective. How can we bring these ideas into reality and accomplish these goals and objectives in the real world? Here is where design can help.', '<p>It starts with an idea to meet a need, to solve a problem, to overcome a challenge, to improve upon the status quo, to reach beyond the ordinary, to realize a dream. Then comes the part where the world of ideas meets everyday life. All these ideas we have are very abstract and subjective. How can we bring these ideas into reality and accomplish these goals and objectives in the real world? Here is where design can help.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 36, 'The tools of the trade from pencils, pens, rapidographs and rubylith to fonts, software and hardware to CMYK printing, foil stamping, stochastic screens and paper stocks: The breadth and depth of resources required for competence in graphic design and strategic corporate communications grows as technology advances. Here, I try to catalog some of those resources.', '<p>The tools of the trade from pencils, pens, rapidographs and rubylith to fonts, software and hardware to CMYK printing, foil stamping, stochastic screens and paper stocks: The breadth and depth of resources required for competence in graphic design and strategic corporate communications grows as technology advances. Here, I try to catalog some of those resources.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 43, 'Line. Shape. Colour. Texture. Type. Grid. Style. \r\n\r\nStandards. Accessibility. Usability.\r\n\r\nBranding. Identity. Design.', '<p>Line. Shape. Colour. Texture. Type. Grid. Style.</p>\n\n<p>Standards. Accessibility. Usability.</p>\n\n<p>Branding. Identity. Design.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 44, 'Studies and experiments regarding design.', '<p>Studies and experiments regarding design.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 45, 'Putting it all together requires a process that can take a project from brief, proposal and concept to design, application, and implementation, assessing results and ensuring quality and consistency.', '<p>Putting it all together requires a process that can take a project from brief, proposal and concept to design, application, and implementation, assessing results and ensuring quality and consistency.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 53, 'Design brings ideas to life. Design is communication using technology, the tools humans create to make life better. The technology of the alphabet is one of those tools, and its uses have expanded from inscribed stone to printing press to electronic media, transforming the way we live. Design develops ideas, tools, objects and processes that transform culture by creating culture, bringing to life new ways of thinking and living.', '<p>Design brings ideas to life. Design is communication using technology, the tools humans create to make life better. The technology of the alphabet is one of those tools, and its uses have expanded from inscribed stone to printing press to electronic media, transforming the way we live. Design develops ideas, tools, objects and processes that transform culture by creating culture, bringing to life new ways of thinking and living.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 54, 'Who am I? What do I do? What is my purpose? What do I value most? Why am I here? These basic questions have complex answers. The answers we decide form our identity, which then becomes the foundation for self-perceptions and actions. Your visual identity is the face that the world sees. Your brand identity is the heart of who you are.', '<p>Who am I? What do I do? What is my purpose? What do I value most? Why am I here? These basic questions have complex answers. The answers we decide form our identity, which then becomes the foundation for self-perceptions and actions. Your visual identity is the face that the world sees. Your brand identity is the heart of who you are.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 55, 'Printing has always been intimately connected with advances in technology. The Chinese are credited with the invention of moveable type (Bi Sheng invented the use of clay type in 1041), but the number of characters used in the complex Chinese pictographic writing system made the process impractical. The Koreans developed a phonetic writing system which was better suited to the use of the movable type printing press, which Chwe Yun-Ui invented in 1234 during the Goryeo Dynasty, an ancient Korean nation. In Western European tradition, Johann Gutenberg is credited with the invention of the movable type printing press, sparking a cultural revolution through the spread of ideas.', '<p>Printing has always been intimately connected with advances in technology. The Chinese are credited with the invention of moveable type (Bi Sheng invented the use of clay type in 1041), but the number of characters used in the complex Chinese pictographic writing system made the process impractical. The Koreans developed a phonetic writing system which was better suited to the use of the movable type printing press, which Chwe Yun-Ui invented in 1234 during the Goryeo Dynasty, an ancient Korean nation. In Western European tradition, Johann Gutenberg is credited with the invention of the movable type printing press, sparking a cultural revolution through the spread of ideas.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 56, 'The internet has come of age. The world wide web is everywhere. Where at one time corporations and individuals quickly bought up domain names to secure a presence on the web, information dissemination and consumption on the internet is becoming more sophisticated and complex. The ideas and interests of science quickly gave way to the dominance of commerce on the web, and web designers adopted various technologies in attempts to improve the quality and aesthetics of communication. It soon became apparent that with attempts to overcome the limitations of the medium and a growing reliance on proprietary technologies, there was a need for standards. The Web Standards and open source movements have changed the way websites look and work, with greater emphasis placed on the accessibility of information and the quality of the user experience.', '<p>The internet has come of age. The world wide web is everywhere. Where at one time corporations and individuals quickly bought up domain names to secure a presence on the web, information dissemination and consumption on the internet is becoming more sophisticated and complex. The ideas and interests of science quickly gave way to the dominance of commerce on the web, and web designers adopted various technologies in attempts to improve the quality and aesthetics of communication. It soon became apparent that with attempts to overcome the limitations of the medium and a growing reliance on proprietary technologies, there was a need for standards. The Web Standards and open source movements have changed the way websites look and work, with greater emphasis placed on the accessibility of information and the quality of the user experience.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 57, 'Since the European invention of the printing press, traditionally attributed to Gutenberg in 1451, type design or typography has progressed relatively slowly over the centuries, until the past century. At one time a highly skilled profession, requiring a lengthy apprenticeship to learn the craft, type design has been revolutionized by the accessibility of inexpensive font design software. The result has been an exponential proliferation of typeface designs and fonts.\r\n', '<p>Since the European invention of the printing press, traditionally attributed to Gutenberg in 1451, type design or typography has progressed relatively slowly over the centuries, until the past century. At one time a highly skilled profession, requiring a lengthy apprenticeship to learn the craft, type design has been revolutionized by the accessibility of inexpensive font design software. The result has been an exponential proliferation of typeface designs and fonts.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 58, 'Design goes beyond the pragmatic application of visual style to cultural artifacts. In other words, design is more than making things look pretty. It is a business management tool that enhances the ability of an individual or group of individuals to build relationships with the people in their community, locally and globally, and to realize their vision to meet needs, solve problems, overcome challenges and realize dreams.', '<p>Design goes beyond the pragmatic application of visual style to cultural artifacts. In other words, design is more than making things look pretty. It is a business management tool that enhances the ability of an individual or group of individuals to build relationships with the people in their community, locally and globally, and to realize their vision to meet needs, solve problems, overcome challenges and realize dreams.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 59, 'Design empowers individuals by providing the tools necessary to reach one\'s goals and objectives. The process of thinking through a problem helps to define the challenges and the changes necessary to overcome them. These changes can make an effective impression in the community, distilling complex messages into creative expressions of thoughtfully considered ideas.', '<p>Design empowers individuals by providing the tools necessary to reach one&#8217;s goals and objectives. The process of thinking through a problem helps to define the challenges and the changes necessary to overcome them. These changes can make an effective impression in the community, distilling complex messages into creative expressions of thoughtfully considered ideas.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 60, 'How does one thing relate to another? How do people relate to one another? Building a brand and building a customer base or broad support for an idea, cause or product requires building relationships.\r\n', '<p>How does one thing relate to another? How do people relate to one another? Building a brand and building a customer base or broad support for an idea, cause or product requires building relationships.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 61, 'What is community? Common space. Common thoughts. Common language. Common world. Where anything is held in common, there is community. The global village has many voices wanting to be heard. Community is built on the ability to listen and to understand.', '<p>What is community? Common space. Common thoughts. Common language. Common world. Where anything is held in common, there is community. The global village has many voices wanting to be heard. Community is built on the ability to listen and to understand.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_60` ***
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 15, 'The elementary forms: sphere, cone, cube. These are the prototypes with which many of the structures of modernist designs are built.', '<p>The elementary forms: sphere, cone, cube. These are the prototypes with which many of the structures of modernist designs are built.</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 16, 'The \"Imagine\" section is represented by the sphere, one of the elementary forms', '<p>The &#8220;Imagine&#8221; section is represented by the sphere, one of the elementary forms</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 17, 'The \"Design\" section is represented by the cone, on of the elementary forms', '<p>The &#8220;Design&#8221; section is represented by the cone, on of the elementary forms</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 18, 'The \"Build\" section is represented by the cube, one of the elementary forms', '<p>The &#8220;Build&#8221; section is represented by the cube, one of the elementary forms</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 19, 'About the Bauhouse', '<p>About the Bauhouse</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 20, 'About the Bauhouse', '<p>About the Bauhouse</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 23, 'My online flow of consciousness', '<p>My online flow of consciousness</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 24, 'My online flow of consciousness', '<p>My online flow of consciousness</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 25, 'Creating a body of work while adapting to the changing tools of the trade', '<p>Creating a body of work while adapting to the changing tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 26, 'Creating a body of work while adapting to the changing tools of the trade', '<p>Creating a body of work while adapting to the changing tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 28, 'So many things to learn and do', '<p>So many things to learn and do</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 29, 'So many things to learn and do', '<p>So many things to learn and do</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 34, 'Imagine: Resources', '<p>Imagine: Resources</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 35, 'Imagine: Resources', '<p>Imagine: Resources</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 37, 'Imagine: Theory', '<p>Imagine: Theory</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 38, 'Imagine: Theory', '<p>Imagine: Theory</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 39, 'Imagine: Research', '<p>Imagine: Research</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 40, 'Imagine: Research', '<p>Imagine: Research</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 41, 'Imagine: Strategy', '<p>Imagine: Strategy</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 42, 'Imagine: Strategy', '<p>Imagine: Strategy</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 46, 'Design: Identity', '<p>Design: Identity</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 47, 'Design: Print', '<p>Design: Print</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 48, 'Design: Web', '<p>Design: Web</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 49, 'Design: Type', '<p>Design: Type</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 50, 'Build: People', '<p>Build: People</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 51, 'Build: Relationships', '<p>Build: Relationships</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 52, 'Build: Community', '<p>Build: Community</p>\n');

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_61` ***
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 15, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 16, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 17, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 18, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 19, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 20, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 23, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 24, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 25, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 26, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 28, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 29, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 34, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 35, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 37, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 38, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 39, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 40, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 41, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 42, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 46, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 47, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 48, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 49, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 50, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 51, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 52, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_62` ***
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 15, '/assets/images/elementary_forms_gs.jpg', 12182, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T13:50:22-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 16, '/assets/images/eforms_sphere.jpg', 12789, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T14:53:04-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 17, '/assets/images/eforms_cone.jpg', 13306, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T14:53:52-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 18, '/assets/images/eforms_cube.jpg', 14079, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T14:54:31-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 19, '/assets/images/section_about_gs.jpg', 32583, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T15:08:07-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 20, '/assets/images/section_about.jpg', 49143, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T15:09:04-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 23, '/assets/images/section_journal_gs.jpg', 24046, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:00:50-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 24, '/assets/images/section_journal.jpg', 34673, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:01:16-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 25, '/assets/images/section_portfolio_gs.jpg', 13839, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:14:10-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 26, '/assets/images/section_portfolio.jpg', 16949, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:15:31-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 28, '/assets/images/section_resources_gs.jpg', 36889, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:42:46-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 29, '/assets/images/section_resources.jpg', 51994, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T16:43:14-07:00\";s:5:\"width\";i:756;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (13, 34, '/assets/images/imagine_resources_gs.jpg', 28887, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T18:48:15-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (14, 35, '/assets/images/imagine_resources.jpg', 36753, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-20T18:48:49-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (15, 37, '/assets/images/imagine_theory_gs.jpg', 24287, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:50:47-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (16, 38, '/assets/images/imagine_theory.jpg', 31756, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:51:37-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (17, 39, '/assets/images/imagine_research_gs.jpg', 19289, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:52:40-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 40, '/assets/images/imagine_research.jpg', 24372, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:53:10-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 41, '/assets/images/imagine_strategy_gs.jpg', 38349, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:53:59-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (20, 42, '/assets/images/imagine_strategy.jpg', 43568, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T06:54:20-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (21, 46, '/assets/images/design_identity_gs.jpg', 16738, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T08:37:35-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (22, 47, '/assets/images/design_print_gs.jpg', 16712, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T08:39:06-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (23, 48, '/assets/images/design_web_gs.jpg', 13662, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T08:39:58-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (24, 49, '/assets/images/design_type_gs.jpg', 15462, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T08:40:36-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:193;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (25, 50, '/assets/images/build_people.jpg', 13414, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T09:35:07-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (26, 51, '/assets/images/build_relationships.jpg', 14651, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T09:35:55-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (27, 52, '/assets/images/build_community.jpg', 18226, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T09:36:25-07:00\";s:5:\"width\";i:540;s:6:\"height\";i:215;}');

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_63` ***
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'the-wild-orange-spa-logo-design', 'the Wild Orange spa Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'big-bear-classic', 'Big Bear Classic');

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_64` ***

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) default NULL,
  `local` int(11) default NULL,
  `gmt` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (2, 67, '2003-09-09T00:00:00-07:00', 1063090800, 1063090800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (3, 68, '2005-12-09T00:00:00-08:00', 1134115200, 1134115200);

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'the-wild-orange-spa', 'the Wild Orange spa');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'st-john-brebeuf-secondary-school', 'St John Brebeuf Secondary School');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'corporate-identity', 'Corporate Identity');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'logo-design', 'Logo Design');

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (1, 67, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (2, 68, 63);

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 67, 'Building a brand from a napkin sketch to a first class spa in Abbotsford has been a process of adding one thing to another, maintaining a high level of visual style with a minimalist design aesthetic.', '<p>Building a brand from a napkin sketch to a first class spa in Abbotsford has been a process of adding one thing to another, maintaining a high level of visual style with a minimalist design aesthetic.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 68, 'The St John Brebeuf Secondary School Basketball Team logo, featuring a fierce bear equal to the skills represented by this top ranking highschool team.', '<p>The St John Brebeuf Secondary School Basketball Team logo, featuring a fierce bear equal to the skills represented by this top ranking highschool team.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 11, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 21, '#### Domain7\r\n\r\nSince 2007, I have been working as Lead Designer at Domain7 Solutions Inc, Vancouver, BC, Canada.\r\n\r\n#### Bauhouse Visual Communications\r\n\r\nI have been practicing design since 1988 and established Bauhouse Visual Communications in 1991 in homage to the influential Bauhaus schools in Germany and Chicago. \r\n\r\n#### The Bauhaus\r\n\r\nThe Bauhaus has had a strong aesthetic influence on my design, though I do not have a house style. In fact, much of my design could be considered antithetical to the Modernist ideals of the Bauhaus. As a person of faith, I am both intrigued and disturbed by the high philosophical ideals of Modernism and by the notions of faith propounded in the Bauhaus manifesto of 1919.\r\n\r\nI struggle between the sacred and the secular, the east and the west, the altruistic and the commercial, the elitist and the populist, the rare and the common, the modern and the postmodern. I am both and I am neither. Yet all of it informs my identity and my design.', '<h4>Domain7</h4>\n\n<p>Since 2007, I have been working as Lead Designer at Domain7 Solutions Inc, Vancouver, BC, Canada.</p>\n\n<h4>Bauhouse Visual Communications</h4>\n\n<p>I have been practicing design since 1988 and established Bauhouse Visual Communications in 1991 in homage to the influential Bauhaus schools in Germany and Chicago.</p>\n\n<h4>The Bauhaus</h4>\n\n<p>The Bauhaus has had a strong aesthetic influence on my design, though I do not have a house style. In fact, much of my design could be considered antithetical to the Modernist ideals of the Bauhaus. As a person of faith, I am both intrigued and disturbed by the high philosophical ideals of Modernism and by the notions of faith propounded in the Bauhaus manifesto of 1919.</p>\n\n<p>I struggle between the sacred and the secular, the east and the west, the altruistic and the commercial, the elitist and the populist, the rare and the common, the modern and the postmodern. I am both and I am neither. Yet all of it informs my identity and my design.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 22, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 27, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 30, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 31, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 33, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 36, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 45, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 53, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 54, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 55, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 57, '#### The OpenType Format\r\n\r\nThanks to Adobe Systems, we now have PostScript technology that allows the ability to use mathematical descriptions of type outlines that can be scaled to any size. Adobe has been converting all their fonts to a new format that they have developed that finally does away with cross-platform compatibility problems, called OpenType. The primary benefit is the ability to access more than 256 characters within a single font file. This allows for greater typographic control and features, including automatic application of ligatures, small caps, lining and old style figures, and character variants.\r\n\r\nThe OpenType format provides a flexibility that did not exist with the older TrueType and PostScript formats, and this was enough of an incentive for me to invest in the purchase of a \"license\":/journal/font-licensing/ for the \"Adobe OpenType Collection\":http://monotypefonts.com/WhatsNew/pr-display.asp?year=2006&pr=279, with over 2900 typefaces.', '<h4>The OpenType Format</h4>\n\n<p>Thanks to Adobe Systems, we now have PostScript technology that allows the ability to use mathematical descriptions of type outlines that can be scaled to any size. Adobe has been converting all their fonts to a new format that they have developed that finally does away with cross-platform compatibility problems, called OpenType. The primary benefit is the ability to access more than 256 characters within a single font file. This allows for greater typographic control and features, including automatic application of ligatures, small caps, lining and old style figures, and character variants.</p>\n\n<p>The OpenType format provides a flexibility that did not exist with the older TrueType and PostScript formats, and this was enough of an incentive for me to invest in the purchase of a &#8220;license&#8221;:/journal/font-licensing/ for the &#8220;Adobe OpenType Collection&#8221;:http://monotypefonts.com/WhatsNew/pr-display.asp?year=2006&amp;pr=279, with over 2900 typefaces.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 58, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 59, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 61, '#### Open Source Software\r\n\r\nThe best tools are often the simplest. Open source applications and community-contributed tools are helping people to focus on what they do best. Finding the best tool also requires some knowledge of the available options and choosing the one that is the best fit for the job.\r\n\r\nCommunities are coming together to produce standards that help aid the flow of ideas and communication. Individual contributions to collaborative projects are helping to make technology better and easier to use. Web Standards, Open Source Software, and distributed version control systems are helping to bring people together to create the best tools. Tap in to the power of the collective.', '<h4>Open Source Software</h4>\n\n<p>The best tools are often the simplest. Open source applications and community-contributed tools are helping people to focus on what they do best. Finding the best tool also requires some knowledge of the available options and choosing the one that is the best fit for the job.</p>\n\n<p>Communities are coming together to produce standards that help aid the flow of ideas and communication. Individual contributions to collaborative projects are helping to make technology better and easier to use. Web Standards, Open Source Software, and distributed version control systems are helping to bring people together to create the best tools. Tap in to the power of the collective.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 60, 'Technology can often be a barrier to entry. Design seeks to remove the barriers and use technology as a means to connect, through words, images, messages, and media. Ultimately, it is an aid to facilitate the kind of communication that simply cannot be improved upon: face to face, meaningful conversation, where people are able to listen and to understand at various levels of verbal and non-verbal communication. Design enhances the experience, by clarifying and simplifying ideas so they can be easier and better understood.', '<p>Technology can often be a barrier to entry. Design seeks to remove the barriers and use technology as a means to connect, through words, images, messages, and media. Ultimately, it is an aid to facilitate the kind of communication that simply cannot be improved upon: face to face, meaningful conversation, where people are able to listen and to understand at various levels of verbal and non-verbal communication. Design enhances the experience, by clarifying and simplifying ideas so they can be easier and better understood.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 67, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 68, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'design-studio', 'Design Studio');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'stephen-bau', 'Stephen Bau');

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'getty-images', 'Getty Images');

-- *** STRUCTURE: `tbl_entries_data_77` ***
DROP TABLE IF EXISTS `tbl_entries_data_77`;
CREATE TABLE `tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_77` ***
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'globe-printers', 'Globe Printers');

-- *** STRUCTURE: `tbl_entries_data_78` ***
DROP TABLE IF EXISTS `tbl_entries_data_78`;
CREATE TABLE `tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) default NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_78` ***

-- *** STRUCTURE: `tbl_entries_data_79` ***
DROP TABLE IF EXISTS `tbl_entries_data_79`;
CREATE TABLE `tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_79` ***
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo.gif', 6888, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 68, '/assets/portfolio/sjb-big_bear_logo.jpg', 16630, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (6, 11, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (54, 21, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (14, 22, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (16, 27, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (17, 30, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (35, 31, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (36, 33, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (33, 36, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (34, 43, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (38, 44, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (41, 45, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (37, 53, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (42, 54, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (43, 55, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (44, 56, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (45, 57, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (46, 58, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (49, 59, 58);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (52, 60, 58);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (53, 61, 58);

-- *** STRUCTURE: `tbl_entries_data_80` ***
DROP TABLE IF EXISTS `tbl_entries_data_80`;
CREATE TABLE `tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_80` ***
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_med.gif', 3532, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 68, '/assets/portfolio/sjb-big_bear_logo_med.jpg', 8370, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');

-- *** STRUCTURE: `tbl_entries_data_81` ***
DROP TABLE IF EXISTS `tbl_entries_data_81`;
CREATE TABLE `tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_81` ***
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_med_off.gif', 2209, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 68, '/assets/portfolio/sjb-big_bear_logo_med_off.jpg', 4119, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');

-- *** STRUCTURE: `tbl_entries_data_82` ***
DROP TABLE IF EXISTS `tbl_entries_data_82`;
CREATE TABLE `tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_82` ***
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_thb.gif', 1542, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 68, '/assets/portfolio/sjb-bears_logo_thb.gif', 2218, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');

-- *** STRUCTURE: `tbl_entries_data_83` ***
DROP TABLE IF EXISTS `tbl_entries_data_83`;
CREATE TABLE `tbl_entries_data_83` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) default NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) default NULL,
  `meta` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_83` ***
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_thb_off.gif', 798, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 68, '/assets/portfolio/sjb-bears_logo_thb_off.gif', 1432, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');

-- *** STRUCTURE: `tbl_entries_data_84` ***
DROP TABLE IF EXISTS `tbl_entries_data_84`;
CREATE TABLE `tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_84` ***
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (3, 11, 15);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (47, 21, 19);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (10, 22, 23);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (12, 27, 25);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (13, 30, 28);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (29, 33, 16);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (27, 36, 34);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (28, 43, 37);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (31, 44, 39);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (34, 45, 41);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (30, 53, 17);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (35, 54, 46);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (36, 55, 47);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (37, 56, 48);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (38, 57, 49);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (39, 58, 18);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (42, 59, 50);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (45, 60, 51);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (46, 61, 52);

-- *** STRUCTURE: `tbl_entries_data_85` ***
DROP TABLE IF EXISTS `tbl_entries_data_85`;
CREATE TABLE `tbl_entries_data_85` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_85` ***
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (1, 63, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (2, 64, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (3, 65, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (4, 66, 62);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double default NULL,
  PRIMARY KEY  (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (6, 11, 1);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (54, 21, 2);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (14, 22, 3);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (16, 27, 4);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (17, 30, 5);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (35, 31, 6);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (36, 33, 7);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (33, 36, 8);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (34, 43, 9);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (38, 44, 10);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (41, 45, 11);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (37, 53, 12);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (42, 54, 13);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (43, 55, 14);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (44, 56, 15);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (45, 57, 16);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (46, 58, 17);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (49, 59, 18);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (52, 60, 19);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (53, 61, 20);

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 1, 1, '2009-07-06 06:23:57', '2009-07-06 13:23:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 1, 1, '2009-07-06 06:24:11', '2009-07-06 13:24:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (3, 5, 1, '2009-07-06 06:25:27', '2009-07-06 13:25:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 5, 1, '2009-07-06 06:25:46', '2009-07-06 13:25:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (5, 5, 1, '2009-07-06 06:26:05', '2009-07-06 13:26:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 5, 1, '2009-07-06 06:26:41', '2009-07-06 13:26:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (7, 5, 1, '2009-07-06 06:27:04', '2009-07-06 13:27:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (8, 6, 1, '2009-07-06 06:28:02', '2009-07-06 13:28:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 6, 1, '2009-07-06 06:28:26', '2009-07-06 13:28:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 6, 1, '2009-07-06 06:28:54', '2009-07-06 13:28:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 2, 1, '2009-07-06 06:31:01', '2009-07-06 13:31:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 3, 1, '2009-07-06 06:35:47', '2009-07-06 13:35:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 3, 1, '2009-07-06 06:35:47', '2009-07-06 13:35:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 4, 1, '2009-07-06 06:40:44', '2009-07-06 13:40:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 11, 1, '2009-07-20 13:50:28', '2009-07-20 20:50:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 11, 1, '2009-07-20 14:53:04', '2009-07-20 21:53:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 11, 1, '2009-07-20 14:53:52', '2009-07-20 21:53:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 11, 1, '2009-07-20 14:54:32', '2009-07-20 21:54:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 11, 1, '2009-07-20 15:08:07', '2009-07-20 22:08:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 11, 1, '2009-07-20 15:09:04', '2009-07-20 22:09:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 2, 1, '2009-07-20 15:11:11', '2009-07-20 22:11:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 2, 1, '2009-07-20 15:32:43', '2009-07-20 22:32:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 11, 1, '2009-07-20 16:00:50', '2009-07-20 23:00:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 11, 1, '2009-07-20 16:01:16', '2009-07-20 23:01:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 11, 1, '2009-07-20 16:14:11', '2009-07-20 23:14:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 11, 1, '2009-07-20 16:15:31', '2009-07-20 23:15:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 2, 1, '2009-07-20 16:16:54', '2009-07-20 23:16:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 11, 1, '2009-07-20 16:42:46', '2009-07-20 23:42:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 11, 1, '2009-07-20 16:43:14', '2009-07-20 23:43:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 2, 1, '2009-07-20 16:44:35', '2009-07-20 23:44:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 2, 1, '2009-07-20 17:08:19', '2009-07-21 00:08:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 11, 1, '2009-07-21 09:35:07', '2009-07-21 16:35:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 2, 1, '2009-07-20 18:07:40', '2009-07-21 01:07:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 11, 1, '2009-07-20 18:48:16', '2009-07-21 01:48:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 11, 1, '2009-07-20 18:48:49', '2009-07-21 01:48:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 2, 1, '2009-07-20 18:50:21', '2009-07-21 01:50:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 11, 1, '2009-07-21 06:50:48', '2009-07-21 13:50:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 11, 1, '2009-07-21 06:51:37', '2009-07-21 13:51:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 11, 1, '2009-07-21 06:52:40', '2009-07-21 13:52:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 11, 1, '2009-07-21 06:53:10', '2009-07-21 13:53:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 11, 1, '2009-07-21 06:53:59', '2009-07-21 13:53:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 11, 1, '2009-07-21 06:54:21', '2009-07-21 13:54:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 2, 1, '2009-07-21 06:57:39', '2009-07-21 13:57:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 2, 1, '2009-07-21 07:02:24', '2009-07-21 14:02:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (45, 2, 1, '2009-07-21 07:05:31', '2009-07-21 14:05:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 11, 1, '2009-07-21 08:37:35', '2009-07-21 15:37:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 11, 1, '2009-07-21 08:39:06', '2009-07-21 15:39:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 11, 1, '2009-07-21 08:39:58', '2009-07-21 15:39:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 11, 1, '2009-07-21 08:40:36', '2009-07-21 15:40:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 11, 1, '2009-07-21 09:35:55', '2009-07-21 16:35:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 11, 1, '2009-07-21 09:36:25', '2009-07-21 16:36:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 2, 1, '2009-07-21 09:42:51', '2009-07-21 16:42:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 2, 1, '2009-07-21 09:57:56', '2009-07-21 16:57:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 2, 1, '2009-07-21 11:36:30', '2009-07-21 18:36:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 2, 1, '2009-07-21 12:57:38', '2009-07-21 19:57:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 2, 1, '2009-07-21 13:06:36', '2009-07-21 20:06:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 2, 1, '2009-07-21 13:10:59', '2009-07-21 20:10:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 2, 1, '2009-07-21 13:22:31', '2009-07-21 20:22:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 2, 1, '2009-07-21 14:10:55', '2009-07-21 21:10:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 2, 1, '2009-07-21 14:25:24', '2009-07-21 21:25:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 5, 1, '2009-07-21 16:33:03', '2009-07-21 23:33:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 6, 1, '2009-07-21 16:44:44', '2009-07-21 23:44:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 6, 1, '2009-07-21 16:49:19', '2009-07-21 23:49:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 6, 1, '2009-07-21 16:49:31', '2009-07-21 23:49:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 6, 1, '2009-07-21 16:50:31', '2009-07-21 23:50:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 12, 1, '2009-07-21 22:10:11', '2009-07-22 05:10:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 12, 1, '2009-07-21 22:33:46', '2009-07-22 05:33:46');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'collapse_sectionfields', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'content_type_mappings', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'debugdevkit', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'entity_diagram', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'export_ensemble', 'disabled', 1.6);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'enhancedtaglist', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'numberfield', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'pagesfield', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'referencelink', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'reflectionfield', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'selectbox_link_field', 'enabled', 1.9);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'globalparamloader', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (13, 'globalresourceloader', 'enabled', 1.001);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'jit_image_manipulation', 'enabled', 1.02);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'maintenance_mode', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (16, 'markdown', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (17, 'order_entries', 'enabled', 1.6);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (18, 'profiledevkit', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (27, 'section_schemas', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'logsdevkit', 'enabled', 1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'export_install_file', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'browsedevkit', 'enabled', 1);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 2, '/frontend/', 'FrontendOutputPreGenerate', 'setContentType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 3, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 3, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 25, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 9, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 10, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 10, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 10, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 12, '/frontend/', 'FrontendParamsResolve', 'addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 12, '/system/sets/', 'AddCustomPreferenceFieldsets', 'sets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 13, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 13, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 14, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 14, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 15, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 15, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 15, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 15, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 15, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 15, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 17, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 17, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 18, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 18, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (29, 22, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (30, 23, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (31, 23, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 26, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 26, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Navigation', 'navigation', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Description', 'description', 'textarea', 1, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Page', 'page', 'pages', 2, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Heading', 'heading', 'input', 2, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Description', 'description', 'textarea', 2, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'Body', 'body', 'textarea', 2, 'no', 5, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Navigation', 'navigation', 'selectbox_link', 2, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Sort', 'sort', 'order_entries', 2, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Publish', 'publish', 'checkbox', 2, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Title', 'title', 'input', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Heading', 'heading', 'input', 3, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Description', 'description', 'textarea', 3, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Body', 'body', 'textarea', 3, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Images', 'images', 'referencelink', 3, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Files', 'files', 'referencelink', 3, 'no', 5, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Section', 'section', 'selectbox_link', 3, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Categories', 'categories', 'selectbox_link', 3, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Tags', 'tags', 'enhancedtaglist', 3, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Date', 'date', 'date', 3, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Author', 'author', 'author', 3, 'no', 10, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Publish', 'publish', 'checkbox', 3, 'no', 11, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Enable Comments', 'enable-comments', 'checkbox', 3, 'no', 12, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Type', 'type', 'selectbox_link', 4, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'URL', 'url', 'input', 4, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 4, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Body', 'body', 'textarea', 4, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Date', 'date', 'date', 4, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Author', 'author', 'author', 4, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Category', 'category', 'selectbox_link', 4, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Tags', 'tags', 'enhancedtaglist', 4, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Publish', 'publish', 'checkbox', 4, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Enable Comments', 'enable-comments', 'checkbox', 4, 'no', 10, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Image', 'image', 'upload', 4, 'no', 11, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'File', 'file', 'upload', 4, 'no', 12, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Title', 'title', 'input', 5, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Description', 'description', 'textarea', 5, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Title', 'title', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Description', 'description', 'textarea', 6, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Body', 'body', 'textarea', 6, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Author', 'author', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Email', 'email', 'input', 7, 'yes', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Website', 'website', 'input', 7, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Date', 'date', 'date', 7, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Entry', 'entry', 'selectbox_link', 7, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Item', 'item', 'selectbox_link', 7, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Comment', 'comment', 'textarea', 7, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Publish', 'publish', 'checkbox', 7, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Name', 'name', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Email', 'email', 'input', 8, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Subject', 'subject', 'input', 8, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Message', 'message', 'textarea', 8, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Date', 'date', 'date', 9, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Note', 'note', 'textarea', 9, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Title', 'title', 'input', 10, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Description', 'description', 'textarea', 10, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'File', 'file', 'upload', 10, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Title', 'title', 'input', 11, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Caption', 'caption', 'textarea', 11, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Description', 'description', 'textarea', 11, 'no', 2, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Image', 'image', 'upload', 11, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Title', 'title', 'input', 12, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Link', 'link', 'input', 12, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Created', 'created', 'date', 12, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Client', 'client', 'input', 12, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Project', 'project', 'input', 12, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Media', 'media', 'selectbox_link', 12, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Description', 'description', 'textarea', 12, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Body', 'body', 'textarea', 12, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Firm', 'firm', 'input', 12, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Type', 'type', 'select', 12, 'no', 9, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Creative Direction', 'creative-direction', 'input', 12, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Art Direction', 'art-direction', 'input', 12, 'no', 11, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Design', 'design', 'input', 12, 'no', 12, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Photography', 'photography', 'input', 12, 'no', 13, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Printing', 'printing', 'input', 12, 'no', 14, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Copywriting', 'copywriting', 'input', 12, 'no', 15, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (79, 'Image', 'image', 'upload', 12, 'no', 16, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (80, 'Preview', 'preview', 'upload', 12, 'no', 17, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (81, 'Preview Off', 'preview-off', 'upload', 12, 'no', 18, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Thumbnail', 'thumbnail', 'upload', 12, 'no', 19, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (83, 'Thumbnail Off', 'thumbnail-off', 'upload', 12, 'no', 20, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Image', 'image', 'referencelink', 2, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (85, 'Type', 'type', 'selectbox_link', 6, 'no', 1, 'main', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, 'category', 'homepage_articles,navigation,notes,portfolio,section,section_image,section_images', 'login', 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'About', 'about', NULL, NULL, 'navigation,section,section_image,section_images', 'login', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Journal', 'journal', NULL, 'entry', 'about,archive_overview,categories,entries,entry,navigation,resources,section,section_image,section_images', 'login', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'Archive', 'archive', 'journal', 'year/month', 'about,navigation', 'login', 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'Portfolio', 'portfolio', NULL, NULL, 'navigation,portfolio,section,section_image,section_images', 'login', 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Resources', 'resources', NULL, 'type/entry', 'about,categories,resource,resources,navigation,section,section_image,section_images', 'login', 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Contact', 'contact', NULL, NULL, 'navigation,section', 'login', 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Imagine', 'imagine', NULL, 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Design', 'design', NULL, 'entry', 'navigation', 'login', 13);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'Build', 'build', NULL, 'entry', 'navigation', 'login', 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, 9, 'Identity', 'identity', 'design', 'entry', 'navigation,portfolio,section,section_image,section_images', 'login', 14);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 9, 'Print', 'print', 'design', 'entry', 'navigation,portfolio,section,section_image,section_images', 'login', 15);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 9, 'Web', 'web', 'design', 'entry', 'navigation,portfolio,section,section_image,section_images', 'login', 16);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, 9, 'Type', 'type', 'design', 'entry', 'navigation,portfolio,section,section_image,section_images', 'login', 17);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (15, 3, 'Category', 'category', 'journal', 'category/entry', 'about,navigation', 'login', 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, NULL, 'RSS', 'rss', NULL, NULL, 'resources_rss,rss', NULL, 22);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, NULL, 'Page not found', 404, NULL, NULL, 'navigation', 'login', 24);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, 8, 'Resources', 'resources', 'imagine', 'entry', 'navigation,section,section_image,section_images', 'login', 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (20, 8, 'Theory', 'theory', 'imagine', 'entry', 'navigation,section,section_image,section_images', 'login', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, 8, 'Research', 'research', 'imagine', 'entry', 'navigation,section,section_image,section_images', 'login', 11);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (22, 8, 'Strategy', 'strategy', 'imagine', 'entry', 'navigation,section,section_image,section_images', 'login', 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (23, 10, 'People', 'people', 'build', 'entry', 'navigation,section,section_image,section_images', 'login', 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (24, 10, 'Relationships', 'relationships', 'build', 'entry', 'navigation,section,section_image,section_images', 'login', 20);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (25, 10, 'Community', 'community', 'build', 'entry', 'navigation,section,section_image,section_images', 'login', 21);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (26, NULL, 'Import', 'import', NULL, 'a', 'section_schema_portfolio', 'login,save_entries,save_portfolio,save_resources', 25);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (84, 1, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (118, 3, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (50, 2, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (85, 1, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (123, 5, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (110, 6, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (60, 8, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (66, 9, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (72, 10, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 17, 'maintenance');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (29, 17, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (119, 16, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (45, 18, 404);
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (46, 18, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (83, 1, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (51, 2, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (117, 3, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (122, 5, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (109, 6, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (58, 7, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (59, 7, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (61, 8, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (62, 19, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (63, 20, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (64, 21, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (65, 22, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (67, 9, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (79, 11, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (80, 12, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (81, 13, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (82, 14, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (73, 10, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (74, 23, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (75, 24, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (76, 25, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (106, 4, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (116, 15, 'nav');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Menus', 'menus', 3, NULL, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Sections', 'sections', 0, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Journal', 'journal', 1, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Resources', 'resources', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Types', 'types', 4, NULL, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Categories', 'categories', 5, NULL, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Comments', 'comments', 6, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Messages', 'messages', 7, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Notes', 'notes', 8, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Files', 'files', 9, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Images', 'images', 10, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Portfolio', 'portfolio', 11, NULL, 'asc', 'no', 'Assets');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (49, 2, 3, 2, 8, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (66, 4, 24, 3, 15, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (67, 4, 24, 3, 16, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (68, 2, 3, 3, 17, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (64, 5, 37, 4, 25, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (65, 6, 39, 4, 31, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (69, 6, 39, 3, 18, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (23, 3, 11, 7, 46, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (24, 4, 24, 7, 47, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (61, 6, 39, 12, 68, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (50, 11, 59, 2, 84, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (48, 1, 1, 2, 8, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (55, 5, 37, 6, 85, 'no');
=======
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_forgotpass` ***
DROP TABLE IF EXISTS `tbl_forgotpass`;
CREATE TABLE `tbl_forgotpass` (
  `author_id` int(11) NOT NULL default '0',
  `token` varchar(6) collate utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_pages` ***
DROP TABLE IF EXISTS `tbl_pages`;
CREATE TABLE `tbl_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `handle` varchar(255) collate utf8_unicode_ci default NULL,
  `path` varchar(255) collate utf8_unicode_ci default NULL,
  `params` varchar(255) collate utf8_unicode_ci default NULL,
  `data_sources` text collate utf8_unicode_ci,
  `events` text collate utf8_unicode_ci,
  `sortorder` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_pages_types` ***
DROP TABLE IF EXISTS `tbl_pages_types`;
CREATE TABLE `tbl_pages_types` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_sections` ***
DROP TABLE IF EXISTS `tbl_sections`;
CREATE TABLE `tbl_sections` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL default '',
  `handle` varchar(255) collate utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL default '0',
  `entry_order` varchar(7) collate utf8_unicode_ci default NULL,
  `entry_order_direction` enum('asc','desc') collate utf8_unicode_ci default 'asc',
  `hidden` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  `navigation_group` varchar(255) collate utf8_unicode_ci NOT NULL default 'Content',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** STRUCTURE: `tbl_sections_association` ***
DROP TABLE IF EXISTS `tbl_sections_association`;
CREATE TABLE `tbl_sections_association` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned default NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `cascading_deletion` enum('yes','no') collate utf8_unicode_ci NOT NULL default 'no',
  PRIMARY KEY  (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d3e6f189ee23b41c5faf51beba6550cc1891bde4:install.sql
