
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***
INSERT INTO `tbl_fields_author` (`id`, `field_id`, `allow_author_change`, `allow_multiple_selection`, `default_to_current_user`) VALUES (27, 21, 'yes', 'no', 'no');

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (41, 10, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (90, 22, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (91, 23, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (82, 33, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (83, 34, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 49, 'off', NULL);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (46, 20, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (42, 29, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (8, 45, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (9, 54, 'yes', 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`) VALUES (17, 65, 'yes', 'no');

-- *** STRUCTURE: `tbl_fields_enhancedtaglist` ***
DROP TABLE IF EXISTS `tbl_fields_enhancedtaglist`;
CREATE TABLE `tbl_fields_enhancedtaglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) DEFAULT NULL,
  `pre_populate_source` varchar(255) DEFAULT NULL,
  `pre_populate_min` int(11) unsigned NOT NULL,
  `external_source_url` varchar(255) DEFAULT NULL,
  `external_source_path` varchar(255) DEFAULT NULL,
  `ordered` enum('yes','no') NOT NULL DEFAULT 'no',
  `delimiter` varchar(5) NOT NULL DEFAULT ',',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_enhancedtaglist` ***
INSERT INTO `tbl_fields_enhancedtaglist` (`id`, `field_id`, `validator`, `pre_populate_source`, `pre_populate_min`, `external_source_url`, `external_source_path`, `ordered`, `delimiter`) VALUES (72, 19, NULL, 'existing', 0, NULL, NULL, 'no', ',');
INSERT INTO `tbl_fields_enhancedtaglist` (`id`, `field_id`, `validator`, `pre_populate_source`, `pre_populate_min`, `external_source_url`, `external_source_path`, `ordered`, `delimiter`) VALUES (64, 32, NULL, 'existing', 0, NULL, NULL, 'no', ',');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (65, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (170, 3, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (171, 5, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (220, 11, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (221, 12, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (212, 24, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (213, 26, NULL);
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_number` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (18, 9, NULL, 'no');

-- *** STRUCTURE: `tbl_fields_pages` ***
DROP TABLE IF EXISTS `tbl_fields_pages`;
CREATE TABLE `tbl_fields_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_pages` ***
INSERT INTO `tbl_fields_pages` (`id`, `field_id`, `allow_multiple_selection`) VALUES (18, 4, 'no');

-- *** STRUCTURE: `tbl_fields_referencelink` ***
DROP TABLE IF EXISTS `tbl_fields_referencelink`;
CREATE TABLE `tbl_fields_referencelink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `field_type` enum('select','autocomplete') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'select',
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_referencelink` ***
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (41, 15, 59, 50, 'autocomplete', 'yes');
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (42, 16, 56, 50, 'autocomplete', 'yes');
INSERT INTO `tbl_fields_referencelink` (`id`, `field_id`, `related_field_id`, `limit`, `field_type`, `allow_multiple_selection`) VALUES (8, 84, 59, 50, 'autocomplete', 'no');

-- *** STRUCTURE: `tbl_fields_reflection` ***
DROP TABLE IF EXISTS `tbl_fields_reflection`;
CREATE TABLE `tbl_fields_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `formatter` varchar(255) DEFAULT NULL,
  `override` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_reflection` ***

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (8, 72, 'no', 'Design Studio, Web Design Firm, Organization, Advertising Agency, Employer', NULL);

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (101, 17, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (93, 25, 'no', 37, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (94, 31, 'yes', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (102, 18, 'no', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (15, 46, 'no', 11, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (16, 47, 'no', 24, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (38, 68, 'no', 39, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (52, 8, 'no', 3, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (32, 85, 'no', 37, 20);

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 2, 'pb_markdownextrasmartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (106, 6, 'pb_markdownextrasmartypants', 5);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (107, 7, 'pb_markdownextrasmartypants', 8);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (156, 13, 'pb_markdownextrasmartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (157, 14, 'pb_markdownextrasmartypants', 18);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (148, 27, 'pb_markdownextrasmartypants', 10);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (149, 28, 'pb_markdownextrasmartypants', 18);
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

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (21, 58, '/workspace/assets/files', '/\\.(?:doc|pdf|rtf|txt)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (22, 62, '/workspace/assets/images', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (48, 79, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (49, 80, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (50, 81, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (51, 82, '/workspace/assets/portfolio', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (52, 83, '/workspace/assets/portfolio', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (72, 35, '/workspace/assets/items/images', NULL);
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (71, 36, '/workspace/assets/items/files', NULL);

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (6, 11, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (54, 21, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (68, 22, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (67, 27, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (17, 30, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (62, 31, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (36, 33, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (33, 36, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (34, 43, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (38, 44, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (41, 45, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (37, 53, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (42, 54, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (43, 55, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (44, 56, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (60, 57, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (46, 58, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (49, 59, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (52, 60, 'yes');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `value`) VALUES (64, 61, 'yes');

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 13, 'font-licensing', 'Font Licensing');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 12, 'web-standards', 'Web Standards');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 101, 'symphony-then-and-now', 'Symphony: Then and Now');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 102, 'symphony-setting-a-new-standard', 'Symphony: Setting a New Standard');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 103, 'pink-for-october', 'Pink for October');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 104, 'creating-a-theme-for-symphony', 'Creating a Theme for Symphony');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 105, 'building-a-symphony-theme-part-1', 'Building a Symphony Theme: Part 1');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 106, 'updating-symphony', 'Updating Symphony');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 107, 'building-a-symphony-theme-part-2', 'Building a Symphony Theme: Part 2');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 108, 'building-a-symphony-theme-qwilm', 'Building a Symphony Theme: qwilm');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 109, 'building-a-symphony-theme-part-3', 'Building a Symphony Theme: Part 3');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 110, 'building-a-symphony-theme-part-4', 'Building a Symphony Theme: Part 4');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 111, 'building-a-symphony-theme-part-5', 'Building a Symphony Theme: Part 5');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 112, 'the-book-on-symphony', 'The Book on Symphony');

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 13, 'my-second-entry', 'My Second Entry');

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 13, 'Stop stealing sheep, as Erik Spiekermann put it. Fonts represent a significant investment of time to create them and money to license them. Yet, because they are everywhere, few recognize their value and inadvertently break the law by distributing them to others.', '<p>Stop stealing sheep, as Erik Spiekermann put it. Fonts represent a significant investment of time to create them and money to license them. Yet, because they are everywhere, few recognize their value and inadvertently break the law by distributing them to others.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 12, 'To what does the term web standards refer? Since the publication of the [first website](http://www.w3.org/History/19921103-hypertext/hypertext/WWW/TheProject.html) in 1991, the World Wide Web has grown from a means of sharing information among the scientific community to become the primary means for operating businesses in the information age and for social interaction around the world.', '<p>To what does the term web standards refer? Since the publication of the <a href=\"http://www.w3.org/History/19921103-hypertext/hypertext/WWW/TheProject.html\">first website</a> in 1991, the World Wide Web has grown from a means of sharing information among the scientific community to become the primary means for operating businesses in the information age and for social interaction around the world.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 101, 'This following excerpt regarding the default templates came with the default template for the Symphony 1.5 beta, but I saw no reason to dispense with it. It helps me remember the process that the Symphony Team has gone through to arrive at this state of Symphony\'s development. I consider it to be a privilege to be able to work with such a powerful and flexible application. I also owe a debt of gratitude to the Symphony Team and the Overture forum contributors for their work, tutorials, tips and suggestions, as well as for introducing me to another web standard: XSLT. For myself, it did not take very long to learn the basics.\r\n\r\nLet\'s look back at the progression of Symphony\'s default templates...', '<p>This following excerpt regarding the default templates came with the default template for the Symphony 1.5 beta, but I saw no reason to dispense with it. It helps me remember the process that the Symphony Team has gone through to arrive at this state of Symphony&#8217;s development. I consider it to be a privilege to be able to work with such a powerful and flexible application. I also owe a debt of gratitude to the Symphony Team and the Overture forum contributors for their work, tutorials, tips and suggestions, as well as for introducing me to another web standard: XSLT. For myself, it did not take very long to learn the basics.</p>\n\n<p>Let&#8217;s look back at the progression of Symphony&#8217;s default templates&#8230;</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 102, '[Symphony](http://symphony-cms.com/) is a web publishing system based on web standards. By using standards, you are investing in technologies that work now and will be sure to work in the future. Web development has often relied on proprietary technologies that work only with particular applications. There was a time when websites recommended that the website was best viewed with the latest version of Internet Explorer. Many more browsers are being used.', '<p><a href=\"http://symphony-cms.com/\">Symphony</a> is a web publishing system based on web standards. By using standards, you are investing in technologies that work now and will be sure to work in the future. Web development has often relied on proprietary technologies that work only with particular applications. There was a time when websites recommended that the website was best viewed with the latest version of Internet Explorer. Many more browsers are being used.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 103, 'Yes, October is running out. But while it is still October, and seeing as I haven\'t made any entries for the month of October, there is still time to act. I wanted to find a theme that would be worthy of inclusion in the list of themes available for [Symphony](http://symphony-cms.com/), as theme development seems to be a little slow.', '<p>Yes, October is running out. But while it is still October, and seeing as I haven&#8217;t made any entries for the month of October, there is still time to act. I wanted to find a theme that would be worthy of inclusion in the list of themes available for <a href=\"http://symphony-cms.com/\">Symphony</a>, as theme development seems to be a little slow.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 104, 'I have decided to build a theme for [Symphony](http://21degrees.com.au/products/symphony/) using the [Pink for October](http://bauhouse.ca/journal/pink-for-october/) WordPress theme. I will be describing the process step by step to help others who are wondering about the lack of documentation for developing sites using Symphony. I have found the best way to learn is by playing with the application to see what it can do. Learning about XML, XSLT and XPath are part of the process. Symphony provides a wonderful tool for learning the ins and outs of XSLT templating. So, here goes...', '<p>I have decided to build a theme for <a href=\"http://21degrees.com.au/products/symphony/\">Symphony</a> using the <a href=\"http://bauhouse.ca/journal/pink-for-october/\">Pink for October</a> WordPress theme. I will be describing the process step by step to help others who are wondering about the lack of documentation for developing sites using Symphony. I have found the best way to learn is by playing with the application to see what it can do. Learning about XML, XSLT and XPath are part of the process. Symphony provides a wonderful tool for learning the ins and outs of XSLT templating. So, here goes&#8230;</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 105, 'This is part one in a series of articles on [Creating a Theme for Symphony](creating-a-theme-for-symphony/). Building a site in Symphony will require some knowledge about XML, XPath and XSLT, as well as HTML and CSS. All of these technologies are standards developed by the World Wide Web Consortium as the basic building blocks that make the web work. Many of us have come around to the idea of developing standards compliant sites using XHTML and CSS. XML is a standard means of storing and retrieving data and media. However, XPath and XSLT are neglected siblings that could use some attention, and Symphony can help us out in this area. They are, in fact, the heart and soul of Symphony.', '<p>This is part one in a series of articles on <a href=\"creating-a-theme-for-symphony/\">Creating a Theme for Symphony</a>. Building a site in Symphony will require some knowledge about XML, XPath and XSLT, as well as HTML and CSS. All of these technologies are standards developed by the World Wide Web Consortium as the basic building blocks that make the web work. Many of us have come around to the idea of developing standards compliant sites using XHTML and CSS. XML is a standard means of storing and retrieving data and media. However, XPath and XSLT are neglected siblings that could use some attention, and Symphony can help us out in this area. They are, in fact, the heart and soul of Symphony.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 106, 'This weekend, the Symphony Team has released an update to the official [Symphony 1.5 Public Release](http://overture21.com/forum/comments.php?DiscussionID=457) (version 1.5.05) that was released on September 21, 2006. [Symphony 1.5.06](http://overture21.com/forum/comments.php?DiscussionID=668) provides several user requested improvements and bug fixes. Much credit must be given to the Symphony development team for their responsiveness and their fast-paced development.\r\n\r\nThe 1.5.06 update provides many additional possibilities for the development of a Symphony theme, so you may enjoy a short intermission in our series on \"Building a Symphony Theme\":/journal/building-a-symphony-theme-part-1/ as we update the application. It should take merely a moment to update.', '<p>This weekend, the Symphony Team has released an update to the official <a href=\"http://overture21.com/forum/comments.php?DiscussionID=457\">Symphony 1.5 Public Release</a> (version 1.5.05) that was released on September 21, 2006. <a href=\"http://overture21.com/forum/comments.php?DiscussionID=668\">Symphony 1.5.06</a> provides several user requested improvements and bug fixes. Much credit must be given to the Symphony development team for their responsiveness and their fast-paced development.</p>\n\n<p>The 1.5.06 update provides many additional possibilities for the development of a Symphony theme, so you may enjoy a short intermission in our series on &#8220;Building a Symphony Theme&#8221;:/journal/building-a-symphony-theme-part-1/ as we update the application. It should take merely a moment to update.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 108, 'Now, that we are developing the qwilm theme, I have created another virtual host, database and Symphony install for a local test site. I have a virtual host called `sym.qwilm.site` that uses a database called `tbl_qwilm` and I installed a fresh version of Symphony.\r\n\r\nJust to make sure we are on the same page, now that I have switched to developing qwilm instead of Pink for October, Here are the steps that you can take before jumping back into the tutorial on Building a Symphony Theme to add a virtual host specifically for this theme: `sym.qwilm.site`. If you would rather jump right into learning Symphony, head to the entries:\r\n\r\n* [Building a Symphony Theme: Part 1](building-a-symphony-theme-part-1/)\r\n* [Building a Symphony Theme: Part 2](building-a-symphony-theme-part-2/)', '<p>Now, that we are developing the qwilm theme, I have created another virtual host, database and Symphony install for a local test site. I have a virtual host called <code>sym.qwilm.site</code> that uses a database called <code>sym_qwilm</code> and I installed a fresh version of Symphony.</p>\n\n<p>Just to make sure we are on the same page, now that I have switched to developing qwilm instead of Pink for October, Here are the steps that you can take before jumping back into the tutorial on Building a Symphony Theme to add a virtual host specifically for this theme: <code>sym.qwilm.site</code>. If you would rather jump right into learning Symphony, head to the entries:</p>\n\n<ul>\n<li><a href=\"building-a-symphony-theme-part-1/\">Building a Symphony Theme: Part 1</a></li>\n<li><a href=\"building-a-symphony-theme-part-2/\">Building a Symphony Theme: Part 2</a></li>\n</ul>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 109, 'Continuing on in the series on Building a Symphony Theme (see [Part 1](/journal/building-a-symphony-theme-part-1/) and [Part 2](/journal/building-a-symphony-theme-part-2/)), I will start to introduce some dynamic elements.\r\n\r\nJust to review, we have set up a virtual host, installed Symphony, set System Preferences and Author Settings, installed and enabled a Campfire Service, created a Page template and a Master template, and looked around the ?debug interface to view the XML data, XSLT templates and XHTML Output.\r\n\r\nBefore we start integrating our XHTML structure and CSS files, let\'s get aquainted with the basics of working with Symphony and XSLT.', '<p>Continuing on in the series on Building a Symphony Theme (see <a href=\"/journal/building-a-symphony-theme-part-1/\">Part 1</a> and <a href=\"/journal/building-a-symphony-theme-part-2/\">Part 2</a>), I will start to introduce some dynamic elements.</p>\n\n<p>Just to review, we have set up a virtual host, installed Symphony, set System Preferences and Author Settings, installed and enabled a Campfire Service, created a Page template and a Master template, and looked around the ?debug interface to view the XML data, XSLT templates and XHTML Output.</p>\n\n<p>Before we start integrating our XHTML structure and CSS files, let&#8217;s get aquainted with the basics of working with Symphony and XSLT.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 110, 'The series on [Building a Symphony Theme](/journal/building-a-symphony-theme-part-1/) has touched briefly on several concepts to make sure we understand the basics before we get into the more complex areas of developing with Symphony. You may realize by now that building a theme in Symphony really means building an entire site from the ground up. But once we have built a theme, the same templates and database structures can be used to easily build other types of sites that may have an entirely different style with very different functionality. \r\n\r\nEvery site tends to have some basic similarities. There needs to be some way to manage the static content of your site. It may not change much, but it is good to have some way to update these areas, such as the About and Contact pages. Here is where we go beyond the default parameters and data sources to actually creating content. We will start by creating a Section and creating Custom Fields for entering content.', '<p>The series on <a href=\"/journal/building-a-symphony-theme-part-1/\">Building a Symphony Theme</a> has touched briefly on several concepts to make sure we understand the basics before we get into the more complex areas of developing with Symphony. You may realize by now that building a theme in Symphony really means building an entire site from the ground up. But once we have built a theme, the same templates and database structures can be used to easily build other types of sites that may have an entirely different style with very different functionality.</p>\n\n<p>Every site tends to have some basic similarities. There needs to be some way to manage the static content of your site. It may not change much, but it is good to have some way to update these areas, such as the About and Contact pages. Here is where we go beyond the default parameters and data sources to actually creating content. We will start by creating a Section and creating Custom Fields for entering content.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 111, 'Symphony is an application that is built on web standards: XML, XSLT, XHTML, and CSS. Symphony accomplishes this using open source scripting and database software: PHP and MySQL, respectively. Up to this point, we haven\'t really touched on CSS or Cascading Style Sheets other than to apply some style to a link with a class of \"current\". Primarily we have been concerned with content: using Symphony\'s XSLT templating system to transform XML data, stored in the MySQL database, to HTML.\r\n\r\nAt this point, we should have a better understanding about how XSLT works and how we can use Symphony to build a basic HTML page structure. If we know anything about Cascading Style Sheets (CSS), we understand how easily we can separate the presentation of a web page from the content of the page. We can create XSLT templates that output HTML pages that use inline styles, embedded style sheets and/or external CSS files. Before we try adding any additional functionality to our site, let\'s add some style to our pages with CSS.', '<p>Symphony is an application that is built on web standards: XML, XSLT, XHTML, and CSS. Symphony accomplishes this using open source scripting and database software: PHP and MySQL, respectively. Up to this point, we haven&#8217;t really touched on CSS or Cascading Style Sheets other than to apply some style to a link with a class of &#8220;current&#8221;. Primarily we have been concerned with content: using Symphony&#8217;s XSLT templating system to transform XML data, stored in the MySQL database, to HTML.</p>\n\n<p>At this point, we should have a better understanding about how XSLT works and how we can use Symphony to build a basic HTML page structure. If we know anything about Cascading Style Sheets (CSS), we understand how easily we can separate the presentation of a web page from the content of the page. We can create XSLT templates that output HTML pages that use inline styles, embedded style sheets and/or external CSS files. Before we try adding any additional functionality to our site, let&#8217;s add some style to our pages with CSS.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 112, 'I finally discovered that I can have a pretty decent looking PDF file by printing directly from my website if I don\'t specify my stylesheet for screen media only. After turning off all the cruft produced by the web browser for pagination, etc., I can get a layout that turns all my CSS elements into PostScript objects. The implications for the printing industry could be amazing if XML, XSLT and PDF could be combined into some sort of prepress workflow. I am sure that someone has thought of this before, or has already implemented it.', '<p>I finally discovered that I can have a pretty decent looking PDF file by printing directly from my website if I don&#8217;t specify my stylesheet for screen media only. After turning off all the cruft produced by the web browser for pagination, etc., I can get a layout that turns all my CSS elements into PostScript objects. The implications for the printing industry could be amazing if XML, XSLT and PDF could be combined into some sort of prepress workflow. I am sure that someone has thought of this before, or has already implemented it.</p>\n');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 107, 'As we discovered in [Part 1](/journal/building-a-symphony-theme-part-1/) of this series, a valid XSLT template and stylesheet must be available to transform XML data into HTML Output. (Note that I will be using the [latest update](/journal/updating-symphony/), Symphony 1.5.06, for this tutorial.) At this point, though, we have no data to transform. Next, we need to create an XML Data Source. But, before we get there, let\'s discover what is possible in Symphony even without a Data Source. The power of Symphony comes in the ability to build HTML pages by assembling pieces of reusable HTML code and XSLT templates into modular page structures through Masters, Pages and Utilities.', '<p>As we discovered in <a href=\"/journal/building-a-symphony-theme-part-1/\">Part 1</a> of this series, a valid XSLT template and stylesheet must be available to transform XML data into HTML Output. (Note that I will be using the <a href=\"/journal/updating-symphony/\">latest update</a>, Symphony 1.5.06, for this tutorial.) At this point, though, we have no data to transform. Next, we need to create an XML Data Source. But, before we get there, let&#8217;s discover what is possible in Symphony even without a Data Source. The power of Symphony comes in the ability to build HTML pages by assembling pieces of reusable HTML code and XSLT templates into modular page structures through Masters, Pages and Utilities.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 12, 'The World Wide Web Consortium has been developing the technologies and the standards that make the web work. As businesses discovered the value of establishing a presence on the Internet, websites proliferated and technologies were invented to find ways of presenting information that were closer to what people were used to seeing in print and television media. In an effort to to increase the visual appeal of their sites, web designers took the technology that was available and pushed the limits of what could be accomplished, replacing text with images or using technologies such as Flash, that relied on proprietary browser features and plug-ins for browsers to view the content. This became a problem when search engines tried to archive the information available on a site to help people find what they were looking for on the web. It was also a problem for those who accessed the information in text-only browsers or with screen readers. Information presented as images or in Flash could not be accessed easily or at all.\r\n\r\n#### The Web Standards Project\r\n\r\nIt became apparent that there was a need for standards of accessibility and usability. The [Web Standards Project](http://www.webstandards.org/) became evangelists of an idea that the standards recommended by the [World Wide Web Consortium](http://www.w3.org/) should be followed so as to make the web accessible and usable for as many as possible. Technologies had already existed for a number of years to make this possible, but for lack of browser and developer support, these technologies had not been widely adopted. The technologies are the Extensible HyperText Markup Language (XHTML) and Cascading Style Sheets (CSS).\r\n\r\nOver the last few years, web standards have become widely adopted as the best means for developing sites that work, in terms of accessibility, usability and visual style. This has been the result of the work of several groups, sites and individuals, a small sampling of which are list here:\r\n\r\n* [World Wide Web Consortium](http://www.w3.org/)\r\n* [Web Standards Project](http://www.webstandards.org/)\r\n* [Jefferey Zeldman](http://www.zeldman.com/), creator of [A List Apart](http://www.alistapart.com/)\r\n* Dave Shea, of [Mezzoblue](http://www.mezzoblue.com/), creator of [CSS Zen Garden](http://www.csszengarden.com/)\r\n* Douglas Bowman, of [StopDesign](http://www.stopdesign.com/)\r\n\r\nI owe a debt of gratitude to these and many more for their influence on my work.', '<p>The World Wide Web Consortium has been developing the technologies and the standards that make the web work. As businesses discovered the value of establishing a presence on the Internet, websites proliferated and technologies were invented to find ways of presenting information that were closer to what people were used to seeing in print and television media. In an effort to to increase the visual appeal of their sites, web designers took the technology that was available and pushed the limits of what could be accomplished, replacing text with images or using technologies such as Flash, that relied on proprietary browser features and plug-ins for browsers to view the content. This became a problem when search engines tried to archive the information available on a site to help people find what they were looking for on the web. It was also a problem for those who accessed the information in text-only browsers or with screen readers. Information presented as images or in Flash could not be accessed easily or at all.</p>\n\n<h4>The Web Standards Project</h4>\n\n<p>It became apparent that there was a need for standards of accessibility and usability. The <a href=\"http://www.webstandards.org/\">Web Standards Project</a> became evangelists of an idea that the standards recommended by the <a href=\"http://www.w3.org/\">World Wide Web Consortium</a> should be followed so as to make the web accessible and usable for as many as possible. Technologies had already existed for a number of years to make this possible, but for lack of browser and developer support, these technologies had not been widely adopted. The technologies are the Extensible HyperText Markup Language (XHTML) and Cascading Style Sheets (CSS).</p>\n\n<p>Over the last few years, web standards have become widely adopted as the best means for developing sites that work, in terms of accessibility, usability and visual style. This has been the result of the work of several groups, sites and individuals, a small sampling of which are list here:</p>\n\n<ul>\n<li><a href=\"http://www.w3.org/\">World Wide Web Consortium</a></li>\n<li><a href=\"http://www.webstandards.org/\">Web Standards Project</a></li>\n<li><a href=\"http://www.zeldman.com/\">Jefferey Zeldman</a>, creator of <a href=\"http://www.alistapart.com/\">A List Apart</a></li>\n<li>Dave Shea, of <a href=\"http://www.mezzoblue.com/\">Mezzoblue</a>, creator of <a href=\"http://www.csszengarden.com/\">CSS Zen Garden</a></li>\n<li>Douglas Bowman, of <a href=\"http://www.stopdesign.com/\">StopDesign</a></li>\n</ul>\n\n<p>I owe a debt of gratitude to these and many more for their influence on my work.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 101, 'Back when Symphony was still called TypeWorks, the default template -- designed by [Allen Chang](http://www.chaoticpattern.com) -- dubbed _More than Words_ marked the first ever default template for the team\'s debut application. This template was desgined almost two years ago and its age is starting to show.\r\n\r\nWhen Symphony underwent a name-change, it signified a new identity and also a new version release, _Symphony 0.9 Revision 2_. A new identity needed a new default template. _Behold the Power_, an aptly named template was designed by the talented [Ian Main](http://e-lusion.com/). The design was all about showcasing the flexibility and power of Symphony, represented by loud and unique colour combinations.\r\n\r\nWhen Symphony finally grew out of beta, the team knew they needed to represent the application with its original philosophy: simplicity with flexibility. However at the same time they realised that the default template needs to serve a fundamental role: allow developers to examine it and learn by example. As such, the template needed to showcase some of the different aspects of the system but have minimal layout related code. <em>Share the Love</em> was consequently born; designed by Scott Hughes, with the intention of making something entirely imageless. This change in design philosophy set the trend for future default template designs.\r\n\r\nSymphony moved from its first public release to <em>1.1</em> and again, a design refresh was in order. <em>Share the Love V2</em> only had small cosmetic changes, notably the background colour was changed to white. The team felt the markup and CSS was minimal and clean and a complete redesign was unnecessary. Clean and minimal markup meant developers can easily browse through the template code and learn the underlying XSLT without having to concern itself with messy layout code.\r\n\r\nThe latest default template, <em>Cubic</em>, was once again designed by <a href=\"http://www.chaoticpattern.com\">Allen Chang</a>. The template marks the <em>version 1.5</em> milestone that Symphony has finally reached. The focus of <em>Cubic</em> is to exemplify the major update in Symphony with the inclusion of the \"sections\" feature. The template still follows the philosophy of simplicity and subtlety. \r\n\r\nSymphony has come a long way over the past year and a half, and I find it is well worth the $49 because of the first-rate support that I get from the Symphony Team. If something is not working, they\'ll take a look under the hood and tune things up for me. However, by the end of September 2006, the application will be offered for free by the Twentyone Degrees development team. The default templates have offered a great variety in terms of design and functionality, and it\'s interesting to look back at them. The reality is that these templates are mere starting points that hide the power behind the system, which now involves not only multiple categories, but also multiple sections, custom fields and an easily customizable administrative interface.\r\n\r\nAs the Symphony Team continues to develop the documentation and makes the application freely available for developers to test drive, I would be surprised if XSLT did not become one of the standards that we rely on just as much as on CSS and XHTML as a result of the flexibility of the Symphony application.', '<p>Back when Symphony was still called TypeWorks, the default template &#8211; designed by <a href=\"http://www.chaoticpattern.com\">Allen Chang</a> &#8211; dubbed <em>More than Words</em> marked the first ever default template for the team&#8217;s debut application. This template was desgined almost two years ago and its age is starting to show.</p>\n\n<p>When Symphony underwent a name-change, it signified a new identity and also a new version release, <em>Symphony 0.9 Revision 2</em>. A new identity needed a new default template. <em>Behold the Power</em>, an aptly named template was designed by the talented <a href=\"http://e-lusion.com/\">Ian Main</a>. The design was all about showcasing the flexibility and power of Symphony, represented by loud and unique colour combinations.</p>\n\n<p>When Symphony finally grew out of beta, the team knew they needed to represent the application with its original philosophy: simplicity with flexibility. However at the same time they realised that the default template needs to serve a fundamental role: allow developers to examine it and learn by example. As such, the template needed to showcase some of the different aspects of the system but have minimal layout related code. <em>Share the Love</em> was consequently born; designed by Scott Hughes, with the intention of making something entirely imageless. This change in design philosophy set the trend for future default template designs.</p>\n\n<p>Symphony moved from its first public release to <em>1.1</em> and again, a design refresh was in order. <em>Share the Love V2</em> only had small cosmetic changes, notably the background colour was changed to white. The team felt the markup and CSS was minimal and clean and a complete redesign was unnecessary. Clean and minimal markup meant developers can easily browse through the template code and learn the underlying XSLT without having to concern itself with messy layout code.</p>\n\n<p>The latest default template, <em>Cubic</em>, was once again designed by <a href=\"http://www.chaoticpattern.com\">Allen Chang</a>. The template marks the <em>version 1.5</em> milestone that Symphony has finally reached. The focus of <em>Cubic</em> is to exemplify the major update in Symphony with the inclusion of the &#8220;sections&#8221; feature. The template still follows the philosophy of simplicity and subtlety.</p>\n\n<p>Symphony has come a long way over the past year and a half, and I find it is well worth the $49 because of the first-rate support that I get from the Symphony Team. If something is not working, they&#8217;ll take a look under the hood and tune things up for me. However, by the end of September 2006, the application will be offered for free by the Twentyone Degrees development team. The default templates have offered a great variety in terms of design and functionality, and it&#8217;s interesting to look back at them. The reality is that these templates are mere starting points that hide the power behind the system, which now involves not only multiple categories, but also multiple sections, custom fields and an easily customizable administrative interface.</p>\n\n<p>As the Symphony Team continues to develop the documentation and makes the application freely available for developers to test drive, I would be surprised if XSLT did not become one of the standards that we rely on just as much as on CSS and XHTML as a result of the flexibility of the Symphony application.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 13, 'Keep in mind that, in most cases, fonts are not purchased, but they are licensed. That means that the licensee has been licensed the font software to be used on one or a limited number of computers. Fonts cannot be passed from one computer to another without breaking the license agreement with the owner of the software copyright. Any request to do so is a request to perform an illegal act, punishable by law. So, please show some respect to the creators of font software by refraining from the illegal distribution of fonts, and use only the ones you have purchased a license to use. If you do not want to purchase fonts, there are many available for free on the internet. But do not assume that all fonts are free to use as you like. High quality type libraries represent a significant investment.', '<p>Keep in mind that, in most cases, fonts are not purchased, but they are licensed. That means that the licensee has been licensed the font software to be used on one or a limited number of computers. Fonts cannot be passed from one computer to another without breaking the license agreement with the owner of the software copyright. Any request to do so is a request to perform an illegal act, punishable by law. So, please show some respect to the creators of font software by refraining from the illegal distribution of fonts, and use only the ones you have purchased a license to use. If you do not want to purchase fonts, there are many available for free on the internet. But do not assume that all fonts are free to use as you like. High quality type libraries represent a significant investment.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 102, 'Over the last number of years, many have been discovering the benefits of working with [web standards](/journal/web-standards/) as recommended by the W3C ([World Wide Web Consortium](http://www.w3.org/)) who have developed standards and technologies that make the web work: XHTML, CSS, XML and XSLT. \r\n\r\nOthers have built open source scripting languages, such as PHP, and relational databases, such as MySQL, that help to make websites dynamic. A database-driven website design allows a web site to use a page design template to generate pages dynamically by retrieving content from information stored in a database. The benefit is the ability to separate the structure of the information from the presentation of that information. The information can then be presented in many different ways, and pages can be generated efficiently with far less effort. Using a content management system means that the owners of a website, those who are generating the content, are able to manage their own site without needing to have a lot of technical knowledge about how it all works.\r\n\r\n#### The Symphony Publishing System\r\n\r\n[Symphony](http://symphony-cms.com/) is a web publishing system that is built on using standards: XHTML, CSS, XML and XSLT using open source technologies to access information stored in a database through PHP and MySQL. What is unique about Symphony as a content management system is its ability to transform the information of the web, XML, into many different document structures, XHTML. So, it is possible to take information from any site that contains information stored in XML and transform this information into content that can be presented in unique ways on your site. If a site complies with web standards and contains well-formed XHTML pages, this information can be gleaned and provided as links from your site.\r\n\r\nMore and more sites are offering information in RSS or XML. Popular sites, such as flickr support RSS, allowing you to take this XML information and display it in news readers or even on your own site. Photos uploaded to flickr can instantly appear on your home page, for instance. There are many more untapped possibilities.\r\n\r\nAlso, Symphony allows customization of the administrative system as well as the publicly viewable areas of your site. The system features the ability to create an almost unlimited number of sections, categories and custom fields for various types of information input, including the uploading of photographs and files, all stored on the server, efficiently accessible through a database and seamlessly presented on your public site as RSS, XML and XHTML. The flexibility of the templating system is beyond anything else I have encountered.\r\n\r\nThe Symphony development team at [Twentyone Degrees](http://21degrees.com.au/), in Brisbane, Australia, are also a very knowledgable and helpful group of individuals who have a vision to add another standard to the web designers repertoire, XSLT, further extending the ability of designers and developers to make the World Wide Web a better place. The support I have received from them has been well worth my investment.\r\n\r\n#### Symphony free for all!\r\n\r\nAs of tomorrow, though, no one need complain that the application is not worth the investment of time and money (which, in my opinion, was very inexpensive). September 21, 2006, Symphony 1.5 will be offered to the world for free.', '<p>Over the last number of years, many have been discovering the benefits of working with <a href=\"/journal/web-standards/\">web standards</a> as recommended by the W3C (<a href=\"http://www.w3.org/\">World Wide Web Consortium</a>) who have developed standards and technologies that make the web work: XHTML, CSS, XML and XSLT.</p>\n\n<p>Others have built open source scripting languages, such as PHP, and relational databases, such as MySQL, that help to make websites dynamic. A database-driven website design allows a web site to use a page design template to generate pages dynamically by retrieving content from information stored in a database. The benefit is the ability to separate the structure of the information from the presentation of that information. The information can then be presented in many different ways, and pages can be generated efficiently with far less effort. Using a content management system means that the owners of a website, those who are generating the content, are able to manage their own site without needing to have a lot of technical knowledge about how it all works.</p>\n\n<h4>The Symphony Publishing System</h4>\n\n<p><a href=\"http://symphony-cms.com/\">Symphony</a> is a web publishing system that is built on using standards: XHTML, CSS, XML and XSLT using open source technologies to access information stored in a database through PHP and MySQL. What is unique about Symphony as a content management system is its ability to transform the information of the web, XML, into many different document structures, XHTML. So, it is possible to take information from any site that contains information stored in XML and transform this information into content that can be presented in unique ways on your site. If a site complies with web standards and contains well-formed XHTML pages, this information can be gleaned and provided as links from your site.</p>\n\n<p>More and more sites are offering information in RSS or XML. Popular sites, such as flickr support RSS, allowing you to take this XML information and display it in news readers or even on your own site. Photos uploaded to flickr can instantly appear on your home page, for instance. There are many more untapped possibilities.</p>\n\n<p>Also, Symphony allows customization of the administrative system as well as the publicly viewable areas of your site. The system features the ability to create an almost unlimited number of sections, categories and custom fields for various types of information input, including the uploading of photographs and files, all stored on the server, efficiently accessible through a database and seamlessly presented on your public site as RSS, XML and XHTML. The flexibility of the templating system is beyond anything else I have encountered.</p>\n\n<p>The Symphony development team at <a href=\"http://21degrees.com.au/\">Twentyone Degrees</a>, in Brisbane, Australia, are also a very knowledgable and helpful group of individuals who have a vision to add another standard to the web designers repertoire, XSLT, further extending the ability of designers and developers to make the World Wide Web a better place. The support I have received from them has been well worth my investment.</p>\n\n<h4>Symphony free for all!</h4>\n\n<p>As of tomorrow, though, no one need complain that the application is not worth the investment of time and money (which, in my opinion, was very inexpensive). September 21, 2006, Symphony 1.5 will be offered to the world for free.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 103, 'There is much to learn as one becomes accustomed to all the features available in Symphony, so it is understandable that things have been slow. I have been busy porting over client sites to Symphony, so I understand that work does need to be a priority. However, this theme is for a good cause: [Pink for October](http://5thirtyone.com/archives/684) is a WordPress theme donated by Derek Punsalan of [5thirtyone.com](http://5thirtyone.com). For more information about the [Pink for October](http://en.wikipedia.org/wiki/Breast_cancer#Breast_cancer_awareness) Breast Cancer Awareness project, visit [Change The Statistic](http://www.changethestatistic.com/).\r\n\r\nThis weekend, I will attempt to port the theme to Symphony. Stay tuned as I go through [the process](http://bauhouse.ca/journal/creating-a-theme-for-symphony/).', '<p>There is much to learn as one becomes accustomed to all the features available in Symphony, so it is understandable that things have been slow. I have been busy porting over client sites to Symphony, so I understand that work does need to be a priority. However, this theme is for a good cause: <a href=\"http://5thirtyone.com/archives/684\">Pink for October</a> is a WordPress theme donated by Derek Punsalan of <a href=\"http://5thirtyone.com\">5thirtyone.com</a>. For more information about the <a href=\"http://en.wikipedia.org/wiki/Breast_cancer#Breast_cancer_awareness\">Pink for October</a> Breast Cancer Awareness project, visit <a href=\"http://www.changethestatistic.com/\">Change The Statistic</a>.</p>\n\n<p>This weekend, I will attempt to port the theme to Symphony. Stay tuned as I go through <a href=\"http://bauhouse.ca/journal/creating-a-theme-for-symphony/\">the process</a>.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 104, '(You\'ll notice that changes will be made to this journal entry as I go, so please bear with me as I go through the process.)\r\n\r\nI could develop locally, or I could develop live. This depends on which I believe will be faster: my Mac G5 or my [TextDrive](http://textdrive.com/) account. I think I will start locally.\r\n\r\n### Local Hosting on the Mac\r\n\r\nIf you want to install Symphony locally, you need Apache installed with MySQL and PHP with the XSLT extension turned on, and the Apache rewrite module active (see [Symphony requirements](http://symphony-cms.com/#requirements).\r\n\r\n#### Setting up the Virtual Host\r\n\r\nAs I am working on a Mac, I will head over to Terminal and type the following to update my local hosts file (which I have set up to automatically open these files for editing in TextWrangler. For those who have not done this, replace `edit` with `pico` or `nano` or whatever you prefer as your text editor):\r\n\r\n    sudo edit /etc/hosts\r\n\r\nTo my hosts file, I will add another virtual host so that I can install a fresh install of Symphony. I will use a particular syntax that allows me to view sites locally and avoid interfering with my ability to reach real domains. For this particular Symphony theme, my virtual domain will be located at @http://sym.pinkforoctober.site/@. So, I need to add this host to my hosts file:\r\n\r\n    127.0.0.1       sym.pinkforoctober.site\r\n\r\nI also need to add the virtual domain to my Apache configuration file. So, I locate my file at:\r\n\r\n    sudo edit /etc/httpd/httpd.conf\r\n\r\nThen, I add the following at the bottom of the file:\r\n\r\n    NameVirtualHost 127.0.0.1\r\n    \r\n    <VirtualHost 127.0.0.1>\r\n        ServerName sym.pinkforoctober.site\r\n        DocumentRoot /Library/WebServer/Documents/sym/pinkforoctober/public\r\n    </VirtualHost>\r\n\r\nWhile, you\'re at it, you can make sure that the rewrite module is active. Do a search for `#LoadModule rewritemodule modules/modrewrite.so`. Remove the hash mark `#` at the beginning of the line. So now it should look like `LoadModule rewritemodule modules/modrewrite.so`. Now the rewriting engine is turned on.\r\n\r\nSince these configuration settings are initialized when the server is started up, I will need to restart the apache server. I like to do this by running a command in Terminal:\r\n\r\n    sudo apachectl graceful\r\n\r\n\r\n#### Creating the Directories\r\n\r\nNow, I can go ahead and create the directory for the Symphony installation on my local Apache server according to the path I have set as the document root in the configuration setting above. My path looks like this:\r\n\r\n    /Library/WebServer/Documents/sym/pinkforoctober/public\r\n\r\n#### Creating the Database\r\n\r\nThe next step would be to open up phpMyAdmin and create a MySQL database for the Symphony installation. I will name the database:\r\n\r\n    sym_pinkforoctober\r\n\r\n#### Installing Symphony\r\n\r\nNow, everything is ready to install Symphony on the server. (As stated previously, it will be necessary to have the proper settings for the local hosting environment, similar to the setup explained by carlos on the Overture Forum Article: [Developing locally with XAMPP Lite 1.5.4 for Windows](http://overture21.com/articles/developing-locally-with-xampp-lite-154-for-windows/).)\r\n\r\nHead over to the \"Twentyone Degrees\":http://21degrees.com.au/products/symphony/ website and download the latest Symphony installer by \"setting up and account\":http://accounts.symphony21.com/ or logging in if you already registered for an account. Your username and password will be used for the primary administrative user of your Symphony account. For each site that you create with this account, you will login with this user and password. You will then be able to create additional Authors and Administrators.\r\n\r\nOnce you have downloaded the @install.php@ file, place the file in the root directory of your virtual host. On my server, I will place the file in the following directory:\r\n\r\n    /Library/WebServer/Documents/sym/pinkforoctober/public/install.php\r\n\r\nIn my web browser, I can navigate to the installer on my server at my virtual host: \r\n\r\n    http://sym.pinkforoctober.site/install.php\r\n\r\nMake sure that the permissions for your root directory are set to 777. Then, simply follow the instructions for the one-step installation procedure and, if all goes well, you should have the application installed in a matter of seconds. When I installed, I chose to \"Start with an empty workspace - Best for other themes or building your own workspace.\" There will be no front page to navigate to, so I\'ll start by logging into Symphony\'s administrative interface. Login with your Symphony account username and password.\r\n\r\n#### A journey of a thousand miles begins with one step\r\n\r\nIf you have made it this far, congratulations! You have installed Symphony and logged in. This is the first step in using Symphony to create websites that take advantage of the power of standards in web design and development.\r\n\r\nWith Symphony installed, we can now start at the beginning: [Building a Symphony Theme: Part 1](/journal/building-a-symphony-theme-part-1/).', '<p>(You&#8217;ll notice that changes will be made to this journal entry as I go, so please bear with me as I go through the process.)</p>\n\n<p>I could develop locally, or I could develop live. This depends on which I believe will be faster: my Mac G5 or my <a href=\"http://textdrive.com/\">TextDrive</a> account. I think I will start locally.</p>\n\n<h3>Local Hosting on the Mac</h3>\n\n<p>If you want to install Symphony locally, you need Apache installed with MySQL and PHP with the XSLT extension turned on, and the Apache rewrite module active (see <a href=\"http://symphony-cms.com/#requirements\">Symphony requirements</a>.</p>\n\n<h4>Setting up the Virtual Host</h4>\n\n<p>As I am working on a Mac, I will head over to Terminal and type the following to update my local hosts file (which I have set up to automatically open these files for editing in TextWrangler. For those who have not done this, replace <code>edit</code> with <code>pico</code> or <code>nano</code> or whatever you prefer as your text editor):</p>\n\n<pre><code>sudo edit /etc/hosts\n</code></pre>\n\n<p>To my hosts file, I will add another virtual host so that I can install a fresh install of Symphony. I will use a particular syntax that allows me to view sites locally and avoid interfering with my ability to reach real domains. For this particular Symphony theme, my virtual domain will be located at @http://sym.pinkforoctober.site/@. So, I need to add this host to my hosts file:</p>\n\n<pre><code>127.0.0.1       sym.pinkforoctober.site\n</code></pre>\n\n<p>I also need to add the virtual domain to my Apache configuration file. So, I locate my file at:</p>\n\n<pre><code>sudo edit /etc/httpd/httpd.conf\n</code></pre>\n\n<p>Then, I add the following at the bottom of the file:</p>\n\n<pre><code>NameVirtualHost 127.0.0.1\n\n&lt;VirtualHost 127.0.0.1&gt;\n    ServerName sym.pinkforoctober.site\n    DocumentRoot /Library/WebServer/Documents/sym/pinkforoctober/public\n&lt;/VirtualHost&gt;\n</code></pre>\n\n<p>While, you&#8217;re at it, you can make sure that the rewrite module is active. Do a search for <code>#LoadModule rewritemodule modules/modrewrite.so</code>. Remove the hash mark <code>#</code> at the beginning of the line. So now it should look like <code>LoadModule rewritemodule modules/modrewrite.so</code>. Now the rewriting engine is turned on.</p>\n\n<p>Since these configuration settings are initialized when the server is started up, I will need to restart the apache server. I like to do this by running a command in Terminal:</p>\n\n<pre><code>sudo apachectl graceful\n</code></pre>\n\n<h4>Creating the Directories</h4>\n\n<p>Now, I can go ahead and create the directory for the Symphony installation on my local Apache server according to the path I have set as the document root in the configuration setting above. My path looks like this:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/pinkforoctober/public\n</code></pre>\n\n<h4>Creating the Database</h4>\n\n<p>The next step would be to open up phpMyAdmin and create a MySQL database for the Symphony installation. I will name the database:</p>\n\n<pre><code>sym_pinkforoctober\n</code></pre>\n\n<h4>Installing Symphony</h4>\n\n<p>Now, everything is ready to install Symphony on the server. (As stated previously, it will be necessary to have the proper settings for the local hosting environment, similar to the setup explained by carlos on the Overture Forum Article: <a href=\"http://overture21.com/articles/developing-locally-with-xampp-lite-154-for-windows/\">Developing locally with XAMPP Lite 1.5.4 for Windows</a>.)</p>\n\n<p>Head over to the &#8220;Twentyone Degrees&#8221;:http://21degrees.com.au/products/symphony/ website and download the latest Symphony installer by &#8220;setting up and account&#8221;:http://accounts.symphony21.com/ or logging in if you already registered for an account. Your username and password will be used for the primary administrative user of your Symphony account. For each site that you create with this account, you will login with this user and password. You will then be able to create additional Authors and Administrators.</p>\n\n<p>Once you have downloaded the @install.php@ file, place the file in the root directory of your virtual host. On my server, I will place the file in the following directory:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/pinkforoctober/public/install.php\n</code></pre>\n\n<p>In my web browser, I can navigate to the installer on my server at my virtual host:</p>\n\n<pre><code>http://sym.pinkforoctober.site/install.php\n</code></pre>\n\n<p>Make sure that the permissions for your root directory are set to 777. Then, simply follow the instructions for the one-step installation procedure and, if all goes well, you should have the application installed in a matter of seconds. When I installed, I chose to &#8220;Start with an empty workspace - Best for other themes or building your own workspace.&#8221; There will be no front page to navigate to, so I&#8217;ll start by logging into Symphony&#8217;s administrative interface. Login with your Symphony account username and password.</p>\n\n<h4>A journey of a thousand miles begins with one step</h4>\n\n<p>If you have made it this far, congratulations! You have installed Symphony and logged in. This is the first step in using Symphony to create websites that take advantage of the power of standards in web design and development.</p>\n\n<p>With Symphony installed, we can now start at the beginning: <a href=\"/journal/building-a-symphony-theme-part-1/\">Building a Symphony Theme: Part 1</a>.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 105, '*Note: I changed horses in mid-stream. The theme being ported to Symphony will be Qwilm instead of Pink for October because of the differences in usage rights.*\r\n\r\nFor a good introduction to XML, XPath and XSLT templating in Symphony, refer to Mark Lewis\'s article in the Overture library: [A Symphony Walkabout](http://overture21.com/articles/a-symphony-walkabout/). Also, the Wiki contains some helpful [screencasts](http://overture21.com/wiki/getting-started/tutorials-and-screencasts) that demonstrate how to navigate the Symphony admin and build specific functionality into your site.\r\n\r\n### The Symphony Admin\r\n\r\nThe first thing you will notice when you login to Symphony is the clean, uncluttered design of the interface.\r\n\r\n![Symphony Admin : Publish : Comments](/workspace/assets/images/sym_comments.jpg)\r\n\r\nBeside the Symphony logo, at the top of the page is the site name, which links to the front page of your website. By default, the name of the site is \"Website Name.\" This will be one of the first things that you should change.\r\n\r\n### Settings\r\n\r\nFirst, though, let\'s take a look at the Settings menu. It contains two submenus: Authors and System Preferences. Choose Authors, and you\'ll see a list of the Authors and Administrators of the site. When you first install Symphony, there is one user. \r\n\r\n![Symphony Admin : Settings : Authors](/workspace/assets/images/sym_settings_menu.jpg)\r\n\r\n#### Author Settings\r\n\r\nClick on the name and you will see the details of the primary administrative user, containing the information provided when you first registered your Symphony account. One thing to notice is the Miscellaneous section, which contains a setting for Formatting Preference. This preference is set for each Author or Administrator. By default, there is only one option: \"None.\" In actuality, Symphony ships with a default text formatter called SimpleHTML. This formatter does one thing: it wraps lines of text separated by two returns with paragraph tags `<p>`. If you would like to add text formatters, such as Textile or Markdown, install the corresponding Campfire Service.\r\n\r\n![Symphony Admin : Settings : Authors : Author Details](/workspace/assets/images/sym_author_edit.jpg)\r\n\r\n#### System Preferences\r\n\r\nNow, select Settings System Preferences and you will find settings for Website Name, Online Status, and Regional Timezone and Date and Time formatting options. The Date and Time settings will be reflected in the Symphony admin for listings of entries where the publish date column is available. Make the appropriate changes to the Website Status and Regional Settings and click on the Save Changes button. A blue bar will appear at the top of the page to indicate that your settings have been saved and the Website Name will change to the name saved. Note that at this time, since I have started with an empty workspace, changes to website status will not affect the front end of the website until the Home and Maintenance pages have been created. Once these page templates are available, the site can be switched to a maintenance mode that gives full access to the front end for administrative users when logged in, but authors and the public will be able to view only the Maintenance page and all links to the site will be redirected to this page.\r\n\r\n![Symphony Admin : Settings : System Preferences Saved](/workspace/assets/images/sym_qwilm_prefsaved.jpg)\r\n\r\n### Campfire Services\r\n\r\nIf you plan to use text formatters other than the default, SimpleHTML, it would be best to install the Campfire Services you need to make these text formatters available before creating any entries. It is currently not possible to change text formatter preferences on a per entry basis, unless you make the change to the Author Settings each time you need to create an entry that uses a different text formatter. An alternative possibility is to make changes directly to the MySQL database through a database administration tool such as phpMyAdmin. It is assumed that a site administrator will choose one text formatter and use it consistently throughout the site. However, provision has been made to notify a user when the text formatter in use for a particular entry differs from the Author\'s formatting preference.\r\n\r\n![Symphony Admin : Campfire : Your Services](/workspace/assets/images/sym_qwilm_campfire_empty.jpg)\r\n\r\nClick on the Get More button and you will find a list of available Campfire Services that can be filtered by Category and Recent Additions to the library. Use the arrows at the bottom of the list to navigate between pages. \r\n\r\n![Symphony Admin : Campfire : Get Campfire Services : Get More](/workspace/assets/images/sym_qwilm_get_cs.jpg)\r\n\r\nMarkdown and Textile are popular text formatters that are available as Campfire Services for Symphony. Install the Campfire Service for the text formatter, choose the installed Campfire Service from the list of installed services and enable it by selecting Enable from the pull-down menu at the bottom of the page. \r\n\r\n![Symphony Admin : Campfire : Your Campfire Services : Enable](/workspace/assets/images/sym_qwilm_cs_enable.jpg)\r\n\r\nNavigate to Settings : Authors to edit the Author Settings, select your Text Formatting preference, and save the text formatting preference that will apply to all entries created by this Author after setting this preference.\r\n\r\n![Symphony Admin : Authors : Textile Formatter](/workspace/assets/images/sym_qwilm_authors_format_menu.jpg)\r\n\r\nCampfire Services are not included in Symphony Themes, but I find Textile to be very helpful in quickly entering content into entries without worrying too much about HTML coding.\r\n\r\n### Blueprints\r\n\r\nIn the Blueprints section, there are three menu items: Pages, Components and Controllers. You may notice that we are working backwards through the main menu items. The Symphony Team has built the interface with the most used section, Publish, featured first. The rest of the items are Administration menus arranged in order of the frequency of use. The Blueprints section contains the HTML, CSS, Javascript, XSLT Templates, XML Data Sources and PHP Events that control the site structure, presentation and behaviours.\r\n\r\n#### Pages\r\n\r\nPages are the templates that control the content for different areas of your site. In the example of a weblog, the standard pages tend to be Home, About, Blog, Archive, and Contact. Each of these pages has a different function and this difference will generally be reflected in the structure and presentation of the content. The Page templates control the structure of individual pages, allowing the template to respond to specific URL schemas. \r\n\r\nA blog page might have a very simple URL schema:\r\n\r\n	/entry/\r\n\r\nAlternatively, a journal may be arranged with a much more complex URL schema to allow for navigation by categories or tags:\r\n\r\n	/journal/tag/entry/\r\n\r\nAn archive may have an even more complex URL schema:\r\n\r\n	/archive/year/month/day/entry/\r\n\r\nWith an empty workspace, there are no pages. \r\n\r\n![Symphony Admin : Pages](/workspace/assets/images/sym_qwilm_pages.jpg)\r\n\r\nSo, we will need to create each page. Click on the Create New button to create a new page template. Each page requires a Title and a Body containing the XSLT template.\r\n\r\n![Symphony Admin : New Page](/workspace/assets/images/sym_qwilm_page_new.jpg)\r\n\r\nSymphony starts off the template with the opening and closing `xsl:template` elements. We could try a simple experiment, knowing that it will fail, but let\'s give it a try and see what happens. Give the new page a Title of \"Home\". In the Body of the new page template, create the following template:\r\n\r\n	<xsl:template match=\"data\">\r\n		<h1>Hello World!</h1>\r\n	</xsl:template>\r\n\r\nClick on the Configure button and you will greeted with several additional options. The URL Handle is automatically generated if you leave this field blank, so we can ignore this field for now. The important thing to note is the Page Type. A home page is a special type of page that must be configured with an \"Index\" Page Type. Select \"Index\", click on the Configure button to close the drawer and click on the Save button to save the New Page. Now try navigating to the Home page by clicking on the URL link. You will discover an error page:\r\n\r\n![Symphony Admin : XSLT Error Page](/workspace/assets/images/sym_xslt_error.jpg)\r\n\r\nAt the bottom of the page will be a link that provides a link to \"Check the page debug information.\" Click on this link and you will be presented with the debug information for this specific page, the Home page. There are three links along the top of the page: XML, XSLT and Output.\r\n\r\nThe XML data associated with the home page is empty:\r\n\r\n![Symphony Admin : Home Page - Debug Information - XML](/workspace/assets/images/sym_debug_home_xml.jpg)\r\n\r\nThe XSLT template contains our code, but the XSLT stylesheet is empty:\r\n\r\n![Symphony Admin : Home Page - Debug Information - XSLT](/workspace/assets/images/sym_debug_home_xslt.jpg)\r\n\r\nBecause the XSLT stylesheet is empty, no output has been parsed:\r\n\r\n![Symphony Admin : Home Page - Debug Information - Output](/workspace/assets/images/sym_debug_home_output.jpg)\r\n\r\nThis is a problem, but it is easily remedied. We could do a couple things, but let\'s try the most basic solution first. We need to define a stylesheet by creating a Master template. Navigate to Blueprints : Components and you will find an area to create Utilities, Masters and Assets.\r\n\r\n![Symphony Admin : Components](/workspace/assets/images/sym_qwilm_components.jpg)\r\n\r\nCreate a new Master template by clicking on the Create New button beside \"Masters\". This brings up a New Master page with a layout similar to the page for creating new Pages. However, the default stylesheet has been automatically generated for you. Click on the Configure button and you\'ll find that the options are different. As with the Pages configuration settings, you can associate a Data Source with a master page and you can also attach Events that allow you to combine the power of PHP with XSLT to do many more things with your site.\r\n\r\n![Symphony Admin : Components : Masters : default](/workspace/assets/images/sym_qwilm_master_default.jpg)\r\n\r\nGive this master page the name \"default\" and click the Save button. Navigate to Blueprints : Pages and click on the name of the Home page to edit the page template. In the Master pull-down menu, choose `default.xsl` and click on the Save button. Click on the URL link for the Home page template to view the Home page in the front end of the site. You should see the heading \"Hello World!\" rendering properly now. In the browser address bar, type `?debug` at the end of the home page URL to view the debug information for the page:\r\n\r\n	http://sym.qwilm.site/home/?debug\r\n\r\nYou will find that the XML data has not changed, since we still have not added any data or data sources. But you will find that the XSLT contains the stylesheet and template, and Output displays the HTML source that was produced by the XSLT template. Congratulations! You have created a working XSLT template.\r\n\r\nThis, of course, is just the beginning. There is no data, there is no dynamic content. So that is next: [Building a Symphony Theme: Part 2](/journal/building-a-symphony-theme-part-2/).', '<p><em>Note: I changed horses in mid-stream. The theme being ported to Symphony will be Qwilm instead of Pink for October because of the differences in usage rights.</em></p>\n\n<p>For a good introduction to XML, XPath and XSLT templating in Symphony, refer to Mark Lewis&#8217;s article in the Overture library: <a href=\"http://overture21.com/articles/a-symphony-walkabout/\">A Symphony Walkabout</a>. Also, the Wiki contains some helpful <a href=\"http://overture21.com/wiki/getting-started/tutorials-and-screencasts\">screencasts</a> that demonstrate how to navigate the Symphony admin and build specific functionality into your site.</p>\n\n<h3>The Symphony Admin</h3>\n\n<p>The first thing you will notice when you login to Symphony is the clean, uncluttered design of the interface.</p>\n\n<p><img src=\"/workspace/assets/images/sym_comments.jpg\" alt=\"Symphony Admin : Publish : Comments\" /></p>\n\n<p>Beside the Symphony logo, at the top of the page is the site name, which links to the front page of your website. By default, the name of the site is &#8220;Website Name.&#8221; This will be one of the first things that you should change.</p>\n\n<h3>Settings</h3>\n\n<p>First, though, let&#8217;s take a look at the Settings menu. It contains two submenus: Authors and System Preferences. Choose Authors, and you&#8217;ll see a list of the Authors and Administrators of the site. When you first install Symphony, there is one user.</p>\n\n<p><img src=\"/workspace/assets/images/sym_settings_menu.jpg\" alt=\"Symphony Admin : Settings : Authors\" /></p>\n\n<h4>Author Settings</h4>\n\n<p>Click on the name and you will see the details of the primary administrative user, containing the information provided when you first registered your Symphony account. One thing to notice is the Miscellaneous section, which contains a setting for Formatting Preference. This preference is set for each Author or Administrator. By default, there is only one option: &#8220;None.&#8221; In actuality, Symphony ships with a default text formatter called SimpleHTML. This formatter does one thing: it wraps lines of text separated by two returns with paragraph tags <code>&lt;p&gt;</code>. If you would like to add text formatters, such as Textile or Markdown, install the corresponding Campfire Service.</p>\n\n<p><img src=\"/workspace/assets/images/sym_author_edit.jpg\" alt=\"Symphony Admin : Settings : Authors : Author Details\" /></p>\n\n<h4>System Preferences</h4>\n\n<p>Now, select Settings System Preferences and you will find settings for Website Name, Online Status, and Regional Timezone and Date and Time formatting options. The Date and Time settings will be reflected in the Symphony admin for listings of entries where the publish date column is available. Make the appropriate changes to the Website Status and Regional Settings and click on the Save Changes button. A blue bar will appear at the top of the page to indicate that your settings have been saved and the Website Name will change to the name saved. Note that at this time, since I have started with an empty workspace, changes to website status will not affect the front end of the website until the Home and Maintenance pages have been created. Once these page templates are available, the site can be switched to a maintenance mode that gives full access to the front end for administrative users when logged in, but authors and the public will be able to view only the Maintenance page and all links to the site will be redirected to this page.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_prefsaved.jpg\" alt=\"Symphony Admin : Settings : System Preferences Saved\" /></p>\n\n<h3>Campfire Services</h3>\n\n<p>If you plan to use text formatters other than the default, SimpleHTML, it would be best to install the Campfire Services you need to make these text formatters available before creating any entries. It is currently not possible to change text formatter preferences on a per entry basis, unless you make the change to the Author Settings each time you need to create an entry that uses a different text formatter. An alternative possibility is to make changes directly to the MySQL database through a database administration tool such as phpMyAdmin. It is assumed that a site administrator will choose one text formatter and use it consistently throughout the site. However, provision has been made to notify a user when the text formatter in use for a particular entry differs from the Author&#8217;s formatting preference.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_campfire_empty.jpg\" alt=\"Symphony Admin : Campfire : Your Services\" /></p>\n\n<p>Click on the Get More button and you will find a list of available Campfire Services that can be filtered by Category and Recent Additions to the library. Use the arrows at the bottom of the list to navigate between pages.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_get_cs.jpg\" alt=\"Symphony Admin : Campfire : Get Campfire Services : Get More\" /></p>\n\n<p>Markdown and Textile are popular text formatters that are available as Campfire Services for Symphony. Install the Campfire Service for the text formatter, choose the installed Campfire Service from the list of installed services and enable it by selecting Enable from the pull-down menu at the bottom of the page.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_cs_enable.jpg\" alt=\"Symphony Admin : Campfire : Your Campfire Services : Enable\" /></p>\n\n<p>Navigate to Settings : Authors to edit the Author Settings, select your Text Formatting preference, and save the text formatting preference that will apply to all entries created by this Author after setting this preference.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_authors_format_menu.jpg\" alt=\"Symphony Admin : Authors : Textile Formatter\" /></p>\n\n<p>Campfire Services are not included in Symphony Themes, but I find Textile to be very helpful in quickly entering content into entries without worrying too much about HTML coding.</p>\n\n<h3>Blueprints</h3>\n\n<p>In the Blueprints section, there are three menu items: Pages, Components and Controllers. You may notice that we are working backwards through the main menu items. The Symphony Team has built the interface with the most used section, Publish, featured first. The rest of the items are Administration menus arranged in order of the frequency of use. The Blueprints section contains the HTML, CSS, Javascript, XSLT Templates, XML Data Sources and PHP Events that control the site structure, presentation and behaviours.</p>\n\n<h4>Pages</h4>\n\n<p>Pages are the templates that control the content for different areas of your site. In the example of a weblog, the standard pages tend to be Home, About, Blog, Archive, and Contact. Each of these pages has a different function and this difference will generally be reflected in the structure and presentation of the content. The Page templates control the structure of individual pages, allowing the template to respond to specific URL schemas.</p>\n\n<p>A blog page might have a very simple URL schema:</p>\n\n<pre><code>/entry/\n</code></pre>\n\n<p>Alternatively, a journal may be arranged with a much more complex URL schema to allow for navigation by categories or tags:</p>\n\n<pre><code>/journal/tag/entry/\n</code></pre>\n\n<p>An archive may have an even more complex URL schema:</p>\n\n<pre><code>/archive/year/month/day/entry/\n</code></pre>\n\n<p>With an empty workspace, there are no pages.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_pages.jpg\" alt=\"Symphony Admin : Pages\" /></p>\n\n<p>So, we will need to create each page. Click on the Create New button to create a new page template. Each page requires a Title and a Body containing the XSLT template.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_page_new.jpg\" alt=\"Symphony Admin : New Page\" /></p>\n\n<p>Symphony starts off the template with the opening and closing <code>xsl:template</code> elements. We could try a simple experiment, knowing that it will fail, but let&#8217;s give it a try and see what happens. Give the new page a Title of &#8220;Home&#8221;. In the Body of the new page template, create the following template:</p>\n\n<pre><code>&lt;xsl:template match=\"data\"&gt;\n    &lt;h1&gt;Hello World!&lt;/h1&gt;\n&lt;/xsl:template&gt;\n</code></pre>\n\n<p>Click on the Configure button and you will greeted with several additional options. The URL Handle is automatically generated if you leave this field blank, so we can ignore this field for now. The important thing to note is the Page Type. A home page is a special type of page that must be configured with an &#8220;Index&#8221; Page Type. Select &#8220;Index&#8221;, click on the Configure button to close the drawer and click on the Save button to save the New Page. Now try navigating to the Home page by clicking on the URL link. You will discover an error page:</p>\n\n<p><img src=\"/workspace/assets/images/sym_xslt_error.jpg\" alt=\"Symphony Admin : XSLT Error Page\" /></p>\n\n<p>At the bottom of the page will be a link that provides a link to &#8220;Check the page debug information.&#8221; Click on this link and you will be presented with the debug information for this specific page, the Home page. There are three links along the top of the page: XML, XSLT and Output.</p>\n\n<p>The XML data associated with the home page is empty:</p>\n\n<p><img src=\"/workspace/assets/images/sym_debug_home_xml.jpg\" alt=\"Symphony Admin : Home Page - Debug Information - XML\" /></p>\n\n<p>The XSLT template contains our code, but the XSLT stylesheet is empty:</p>\n\n<p><img src=\"/workspace/assets/images/sym_debug_home_xslt.jpg\" alt=\"Symphony Admin : Home Page - Debug Information - XSLT\" /></p>\n\n<p>Because the XSLT stylesheet is empty, no output has been parsed:</p>\n\n<p><img src=\"/workspace/assets/images/sym_debug_home_output.jpg\" alt=\"Symphony Admin : Home Page - Debug Information - Output\" /></p>\n\n<p>This is a problem, but it is easily remedied. We could do a couple things, but let&#8217;s try the most basic solution first. We need to define a stylesheet by creating a Master template. Navigate to Blueprints : Components and you will find an area to create Utilities, Masters and Assets.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_components.jpg\" alt=\"Symphony Admin : Components\" /></p>\n\n<p>Create a new Master template by clicking on the Create New button beside &#8220;Masters&#8221;. This brings up a New Master page with a layout similar to the page for creating new Pages. However, the default stylesheet has been automatically generated for you. Click on the Configure button and you&#8217;ll find that the options are different. As with the Pages configuration settings, you can associate a Data Source with a master page and you can also attach Events that allow you to combine the power of PHP with XSLT to do many more things with your site.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_master_default.jpg\" alt=\"Symphony Admin : Components : Masters : default\" /></p>\n\n<p>Give this master page the name &#8220;default&#8221; and click the Save button. Navigate to Blueprints : Pages and click on the name of the Home page to edit the page template. In the Master pull-down menu, choose <code>default.xsl</code> and click on the Save button. Click on the URL link for the Home page template to view the Home page in the front end of the site. You should see the heading &#8220;Hello World!&#8221; rendering properly now. In the browser address bar, type <code>?debug</code> at the end of the home page URL to view the debug information for the page:</p>\n\n<pre><code>http://sym.qwilm.site/home/?debug\n</code></pre>\n\n<p>You will find that the XML data has not changed, since we still have not added any data or data sources. But you will find that the XSLT contains the stylesheet and template, and Output displays the HTML source that was produced by the XSLT template. Congratulations! You have created a working XSLT template.</p>\n\n<p>This, of course, is just the beginning. There is no data, there is no dynamic content. So that is next: <a href=\"/journal/building-a-symphony-theme-part-2/\">Building a Symphony Theme: Part 2</a>.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 108, '#### Set up the Virtual Host\r\n\r\nAs I am working on a Mac, I will head over to Terminal and type the following to update my local hosts file (which I have set up to automatically open these files for editing in TextWrangler. For those who have not done this, replace `edit` with `pico` or `nano` or whatever you prefer as your text editor):\r\n\r\n	sudo edit /etc/hosts\r\n\r\nTo my hosts file, I will add another virtual host so that I can install a fresh install of Symphony. I will use a particular syntax that allows me to view sites locally and avoid interfering with my ability to reach real domains. For this particular Symphony theme, my virtual domain will be located at `http://sym.qwilm.site/`. So, I need to add this host to my hosts file:\r\n\r\n	127.0.0.1       sym.qwilm.site\r\n\r\nI also need to add the virtual domain to my Apache configuration file. So, I locate my file at:\r\n\r\n	sudo edit /etc/httpd/httpd.conf\r\n\r\nThen, I add the following at the bottom of the file:\r\n\r\n	NameVirtualHost 127.0.0.1\r\n	<VirtualHost 127.0.0.1>\r\n	    ServerName sym.qwilm.site\r\n	    DocumentRoot /Library/WebServer/Documents/sym/qwilm/public\r\n	</VirtualHost>\r\n\r\nWhile, you\'re at it, you can make sure that the rewrite module is active. Do a search for `#LoadModule rewritemodule modules/modrewrite.so`. Remove the hash mark `#` at the beginning of the line. So now it should look like `LoadModule rewritemodule modules/modrewrite.so`. Now the rewriting engine is turned on.\r\n\r\nSince these configuration settings are initialized when the server is started up, I will need to restart the apache server. I like to do this by running a command in Terminal:\r\n\r\n	sudo apachectl graceful\r\n\r\n#### Creating the Directories\r\n\r\nNow, I can go ahead and create the directory for the Symphony installation on my local Apache server according to the path I have set as the document root in the configuration setting above. My path looks like this:\r\n\r\n	/Library/WebServer/Documents/sym/qwilm/public\r\n\r\n#### Creating the Database\r\n\r\nThe next step would be to open up phpMyAdmin and create a MySQL database for the Symphony installation. I will name the database:\r\n\r\n	sym_qwilm\r\n\r\n#### Installing Symphony\r\n\r\nNow, everything is ready to install Symphony on the server. (As stated previously, it will be necessary to have the proper settings for the local hosting environment, similar to the setup explained by carlos on the Overture Forum Article: [Developing locally with XAMPP Lite 1.5.4 for Windows](http://overture21.com/articles/developing-locally-with-xampp-lite-154-for-windows/).)\r\n\r\nHead over to the [Twentyone Degrees](http://21degrees.com.au/products/symphony/) website and download the latest Symphony installer by [setting up and account](http://accounts.symphony21.com/) or logging in if you already registered for an account. Your username and password will be used for the primary administrative user of your Symphony account. For each site that you create with this account, you will login with this user and password. You will then be able to create additional Authors and Administrators.\r\n\r\nOnce you have downloaded the `install.php` file, place the file in the root directory of your virtual host. On my server, I will place the file in the following directory:\r\n\r\n	/Library/WebServer/Documents/sym/qwilm/public/install.php\r\n\r\nIn my web browser, I can navigate to the installer on my server at my virtual host: \r\n\r\n	http://sym.qwilm.site/install.php\r\n\r\nMake sure that the permissions for your root directory are set to 777. Then, simply follow the instructions for the one-step installation procedure and, if all goes well, you should have the application installed in a matter of seconds. When I installed, I chose to \"Start with an empty workspace - Best for other themes or building your own workspace.\" There will be no front page to navigate to, so I\'ll start by logging into Symphony\'s administrative interface. Login with your Symphony account username and password.\r\n\r\n#### A journey of a thousand miles begins with one step\r\n\r\nIf you have made it this far, congratulations! You have installed Symphony and logged in. This is the first step in using Symphony to create websites that take advantage of the power of standards in web design and development.\r\n\r\nWith Symphony installed, we can now start at the beginning: [Building a Symphony Theme: Part 1](building-a-symphony-theme-part-1/).', '<h4>Set up the Virtual Host</h4>\n\n<p>As I am working on a Mac, I will head over to Terminal and type the following to update my local hosts file (which I have set up to automatically open these files for editing in TextWrangler. For those who have not done this, replace <code>edit</code> with <code>pico</code> or <code>nano</code> or whatever you prefer as your text editor):</p>\n\n<pre><code>sudo edit /etc/hosts\n</code></pre>\n\n<p>To my hosts file, I will add another virtual host so that I can install a fresh install of Symphony. I will use a particular syntax that allows me to view sites locally and avoid interfering with my ability to reach real domains. For this particular Symphony theme, my virtual domain will be located at <code>http://sym.qwilm.site/</code>. So, I need to add this host to my hosts file:</p>\n\n<pre><code>127.0.0.1       sym.qwilm.site\n</code></pre>\n\n<p>I also need to add the virtual domain to my Apache configuration file. So, I locate my file at:</p>\n\n<pre><code>sudo edit /etc/httpd/httpd.conf\n</code></pre>\n\n<p>Then, I add the following at the bottom of the file:</p>\n\n<pre><code>NameVirtualHost 127.0.0.1\n&lt;VirtualHost 127.0.0.1&gt;\n    ServerName sym.qwilm.site\n    DocumentRoot /Library/WebServer/Documents/sym/qwilm/public\n&lt;/VirtualHost&gt;\n</code></pre>\n\n<p>While, you&#8217;re at it, you can make sure that the rewrite module is active. Do a search for <code>#LoadModule rewritemodule modules/modrewrite.so</code>. Remove the hash mark <code>#</code> at the beginning of the line. So now it should look like <code>LoadModule rewritemodule modules/modrewrite.so</code>. Now the rewriting engine is turned on.</p>\n\n<p>Since these configuration settings are initialized when the server is started up, I will need to restart the apache server. I like to do this by running a command in Terminal:</p>\n\n<pre><code>sudo apachectl graceful\n</code></pre>\n\n<h4>Creating the Directories</h4>\n\n<p>Now, I can go ahead and create the directory for the Symphony installation on my local Apache server according to the path I have set as the document root in the configuration setting above. My path looks like this:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/qwilm/public\n</code></pre>\n\n<h4>Creating the Database</h4>\n\n<p>The next step would be to open up phpMyAdmin and create a MySQL database for the Symphony installation. I will name the database:</p>\n\n<pre><code>sym_qwilm\n</code></pre>\n\n<h4>Installing Symphony</h4>\n\n<p>Now, everything is ready to install Symphony on the server. (As stated previously, it will be necessary to have the proper settings for the local hosting environment, similar to the setup explained by carlos on the Overture Forum Article: <a href=\"http://overture21.com/articles/developing-locally-with-xampp-lite-154-for-windows/\">Developing locally with XAMPP Lite 1.5.4 for Windows</a>.)</p>\n\n<p>Head over to the <a href=\"http://21degrees.com.au/products/symphony/\">Twentyone Degrees</a> website and download the latest Symphony installer by <a href=\"http://accounts.symphony21.com/\">setting up and account</a> or logging in if you already registered for an account. Your username and password will be used for the primary administrative user of your Symphony account. For each site that you create with this account, you will login with this user and password. You will then be able to create additional Authors and Administrators.</p>\n\n<p>Once you have downloaded the <code>install.php</code> file, place the file in the root directory of your virtual host. On my server, I will place the file in the following directory:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/qwilm/public/install.php\n</code></pre>\n\n<p>In my web browser, I can navigate to the installer on my server at my virtual host:</p>\n\n<pre><code>http://sym.qwilm.site/install.php\n</code></pre>\n\n<p>Make sure that the permissions for your root directory are set to 777. Then, simply follow the instructions for the one-step installation procedure and, if all goes well, you should have the application installed in a matter of seconds. When I installed, I chose to &#8220;Start with an empty workspace - Best for other themes or building your own workspace.&#8221; There will be no front page to navigate to, so I&#8217;ll start by logging into Symphony&#8217;s administrative interface. Login with your Symphony account username and password.</p>\n\n<h4>A journey of a thousand miles begins with one step</h4>\n\n<p>If you have made it this far, congratulations! You have installed Symphony and logged in. This is the first step in using Symphony to create websites that take advantage of the power of standards in web design and development.</p>\n\n<p>With Symphony installed, we can now start at the beginning: <a href=\"building-a-symphony-theme-part-1/\">Building a Symphony Theme: Part 1</a>.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 109, '### XSLT Parameters\r\n\r\nFirst, there are several XSL parameters that can be used to start making our page template dynamic. You can find a list of these parameters by navigating to the home page and adding `?debug` to the end of the URL in the address bar.\r\n\r\n	http://sym.qwilm.site/?debug\r\n\r\nClick on the XSLT link at the top of the ?debug page and you will see a list of XSL parameters.\r\n\r\n![?debug XSLT view: XSL Parameters](/workspace/assets/images/sym_qwilm_home_xslt.jpg)\r\n\r\n#### Default Parameters\r\n\r\nWe can use these parameters within our page templates. Let\'s start by adding the name of the site to the default Master template that we have created. Take a look at the list of parameters:\r\n\r\n	<xsl:param name=\"root\" select=\"\'http://sym.qwilm.site\'\" />\r\n	<xsl:param name=\"workspace\" select=\"\'http://sym.qwilm.site/workspace\'\" />\r\n	<xsl:param name=\"current-page\" select=\"\'home\'\" />\r\n	<xsl:param name=\"page-title\" select=\"\'Home\'\" />\r\n	<xsl:param name=\"parent-page\" select=\"\'/\'\" />\r\n	<xsl:param name=\"today\" select=\"\'2006-12-10\'\" />\r\n	<xsl:param name=\"website-name\" select=\"\'qwilm\'\" />\r\n	<xsl:param name=\"symphony-build\" select=\"\'1506\'\" />\r\n	<xsl:param name=\"url-mode\" select=\"\'full\'\" />\r\n	<xsl:param name=\"url-type\" select=\"\'page\'\" />\r\n	<xsl:param name=\"url-handle\" select=\"\'\'\" />\r\n\r\nFor the moment, let me just state that the last three parameters that refer to url are not available for inclusion in your templates (for [reasons](http://overture21.com/forum/comments.php?DiscussionID=641) I won\'t get into here). The rest act as default parameters, generated by Symphony for every page, that can be called from within your template.\r\n\r\nFor example, the `$website-name` parameter uses the System Preference for Website Name. If you change this preference, this will change the value of `$website-name` wherever you have it in your templates.\r\n\r\nThe `$root` parameter refers to the domain that is used when installing Symphony. This value is stored in the `/conf/config.php`, which stores the information that is required for Symphony to access your database and to access the Symphony support server for updates.\r\n\r\nWe can use these two parameters to create a website name that links to the home page. Go to Blueprints : Components and click on default.xsl under Masters to edit the template. Symphony creates a default stylesheet that looks like this:\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n			</head>\r\n			<body>\r\n				<xsl:apply-templates/>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nWe will want to change it to look like this:\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<xsl:apply-templates/>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nYou should now be able to navigate to your home page and view a page that has a link to the home page. So, what just happened here? Well, there is a different syntax for finding values using XSLT depending on whether the value must be output within an element attribute or as the value of an element. For the anchor value `<a>Value</a>` we need to use a `<xsl:value-of select=\"$param\"/>`, but for the attribute value `<a href=\"value\"></a>` we need to use `{$param}`.\r\n\r\nYou might have noticed that the default Master template includes the `$page-title` parameter in the `title` element of the `head` element. It might also be a good idea to include this value as a page title in the body. Let\'s add this value as an `h2` to the xsl:template.\r\n\r\nAdd this after the `h1` element:\r\n\r\n	<h2><xsl:value-of select=\"$page-title\"/></h2>\r\n\r\nSo the xsl:template element looks like this:\r\n\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<h2><xsl:value-of select=\"$page-title\"/></h2>\r\n				<xsl:apply-templates/>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n\r\n### Default Data Sources\r\n\r\nIn addition to the default parameters, there are also default data sources available even before the creation of new sections and custom fields. While it is necessary to create new Data Sources to add the default data to the XML data for a page, the following are a list of the available sources:\r\n\r\n* Authors\r\n* Comments\r\n* Navigation\r\n\r\nThe Authors data is extracted from the Settings : Authors section.\r\n\r\nThe Comments data is extracted from the Publish : Comments section.\r\n\r\nThe Navigation data is extracted from the Blueprints : Pages section.\r\n\r\nThere is also a Static XML source for adding another child node to the XML data apart from the data stored in the database. So, for instance, you could create a node for the months of the year without having to create a section and custom fields for storing this data in the database.\r\n\r\n### Custom Data Sources\r\n\r\nWhen you create a Data Source, you are actually creating a PHP file that is stored in the /workspace/data-sources/ directory. This PHP file extracts data from the MySQL database and outputs the data as XML so Symphony can use XSL templates to transform that XML data into HTML Output. To view the XML data associated with a page, view the ?debug information for the page.\r\n\r\nUnder the Publish menu, there are two menu items by default: Comments and File Manager. Every section that you create has an option to include comments, so that you can enable commenting for blog entries or for photo gallery entries, for instance. Implementing Comments will require attaching an Event, so I will tackle the basics before venturing into the more advanced features of Symphony. \r\n\r\n#### Create a New Data Source: Navigation\r\n\r\nThe Navigation Data Source is the most basic to implement and one of the most useful. So let\'s try this first. Go to Blueprints : Controllers. \r\n\r\n![Symphony Admin : Blueprints : Controllers](/workspace/assets/images/sym_qwilm_controllers_empty.jpg)\r\n\r\nClick on the Create New button beside the Data Sources heading. On the New Data Source page, under Essentials, give the Data Source a Name: Navigation, and choose Navigation under the Source pull-down menu and click on the Save button.\r\n\r\n![Symphony Admin : Blueprints : Controllers : Data Sources : Create New : Navigation](/workspace/assets/images/sym_qwilm_ds_navigation.jpg)\r\n\r\n#### Associate a Data Source with a Master template\r\n\r\nTo use this new Data Source, it must be associated with a page template or master template. Go to Blueprints : Components and choose the default template under Masters. Click on the configure button to view the Master Settings, and click on Navigation in the select box under Data Source XML in the Master Environment. (You can select multiple Data Sources by using the command button on the Mac and the control button in Windows.)\r\n\r\n![Symphony Admin : Blueprints : Components : Masters : default : Configure](/workspace/assets/images/sym_qwilm_master_config_ds.jpg)\r\n\r\nTo see the effect of this change, let\'s create a couple pages first. Go to Blueprints : Pages and click on the Create New button. Add two pages: one with the name, About, and the other with the name, Contact. You won\'t need to configure these pages as we did with the home page, since Symphony will automatically create these pages with a type of \"default\" and a handle that corresponds with the name of the page. Now, view the Home page by clicking on the front page link, the name of the site beside the Symphony logo in the top of the Symphony Admin. View the ?debug information for the page to see the XML data created by the Navigation Data Source.\r\n\r\n![Navigation XML Data](/workspace/assets/images/sym_qwilm_debug_home_nav.jpg)\r\n\r\n### Using XSLT to transform XML data into HTML output\r\n\r\nThe XML data now contains a node element called \"navigation\".\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<data>\r\n		<events />\r\n		<navigation>\r\n			<page handle=\"home\" type=\"index\">\r\n				<title>Home</title>\r\n			</page>\r\n			<page handle=\"about\" type=\"default\">\r\n				<title>About</title>\r\n			</page>\r\n			<page handle=\"contact\" type=\"default\">\r\n				<title>Contact</title>\r\n			</page>\r\n		</navigation>\r\n	</data>\r\n\r\nNow that we have some data to work with, it is possible to tranform this XML data with our default XSL template into HTML output that will be displayed on pages that use the default template. Next, let\'s discover how the transformation happens. It makes sense to start with some sort of navigation to be able to move from one page to another on our site. \r\n\r\n#### The XPath Language\r\n\r\nThe XML data contains values that we will want to display on our page. The XPath language is the means by which XSL extracts values from XML data. An XSLT template establishes patterns for generating HTML output that uses the values extracted from the XML data. Mark Lewis provides a good overview of Symphony\'s role in the XSLT process in his Overture article, [A Symphony Walkabout](http://overture21.com/articles/a-symphony-walkabout/). To help you get started with XML, XPath and XSLT, you can find other [resources](http://overture21.com/wiki/getting-started/xslt-resources) in the Overture Wiki.\r\n\r\nIn Symphony, the root element of the XML data is always the `<data/>` element. For each data source that you associate with a page, a child node will be added to the data element. The name of the node will correspond to the name you created for the Data Source except that the name will consist only of lowercase letters with spaces replaced by hyphens.\r\n\r\n#### Create the Navigation Menu\r\n\r\nTo create the main navigation for the site, we can start by creating an unordered list of links for each of the main sections. So far, we have three pages: Home, About and Contact. It would be fairly easy to create the list without relying on XSLT to do the job. The menu might look something like this:\r\n\r\n	<ul>\r\n		<li><a href=\"http://sym.qwilm.site/home/\">Home</a></li>\r\n		<li><a href=\"http://sym.qwilm.site/about/\">About</a></li>\r\n		<li><a href=\"http://sym.qwilm.site/contact/\">Contact</a></li>\r\n	</ul>\r\n\r\nThis would be fine if we only had three pages to deal with, but if we had several sections, each with multiple pages per section, the reasons for having a means of dynamically creating the menu become clearer. For now, we\'ll keep things simple.\r\n\r\nIt helps to have our intended output figured out before generating the XSL template. So, let\'s use the structure above for dynamically generating the menu, starting with the Home page. When we take a closer look at the XML data, we find that the root node \"data\" contains a node for \"navigation\" which contains three child \"page\" elements. Each of the \"page\" nodes has two attributes: \"handle\" and \"type\". Each page node has a single child element: \"title\". To output the value of an element or attribute, we will use XPath to select the value and the `<xsl:value-of/>` element to output the value of the HTML element or the `{...}` to output the HTML element attribute.\r\n\r\nThe context node is defined by the match value in the `<xsl:template/>` element for the default template. \r\n\r\n	<xsl:template match=\"/\">\r\n\r\nIn this case, it is the root of the XML data, as indicated by `\"/\"`. An absolute path expression would begin with `\"/\"` to indicate the location of the node relative to the root of the XML data. A relative path expression would begin with something other than `\"/\"` to indicate a location relative to the context node. For our default Master template, to find the value of the page node, we can use a relative path expression:\r\n\r\n	data/navigation/page\r\n\r\nFor example, to display the value of the first page in the navigation, we could use the following expression:\r\n\r\n	<h2><xsl:value-of select=\"data/navigation/page/title\"/></h2>\r\n\r\nAdd this to the default template and see what happens by viewing the home page (and the ?debug information, if you are curious):\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<h2><xsl:value-of select=\"data/navigation/page/title\"/></h2>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nNotice how this outputs only the first page. In fact, the expression we are using could apply to any of the three pages in the XML data, but the `<xsl:value-of/>` element can output only a single value, so it defaults to the first element that it finds. How can we output the second page? We can use a predicate to evaluate and filter the node-set based on various criteria, including position in the document order. The second page element can be selected with the following code:\r\n\r\n	<h2><xsl:value-of select=\"data/navigation/page[position()=2]/title\"/></h2>\r\n\r\nThis can also be expressed in shorthand syntax:\r\n\r\n	<h2><xsl:value-of select=\"data/navigation/page[2]/title\"/></h2>\r\n\r\nOr try the following to output the title of the third page:\r\n\r\n	<h2><xsl:value-of select=\"data/navigation/page[3]/title\"/></h2>\r\n\r\nIf we wanted to output all three at once, we need to use `<xsl:for-each/>` to apply the same template for each of the elements that matches the selection criteria.\r\n\r\n	<xsl:for-each select=\"data/navigation/page\">\r\n		<h2><xsl:value-of select=\"title\"/></h2>\r\n	</xsl:for-each>\r\n \r\nThis template is saying, effectively, \"for each page in the navigation, output the title as a second-level heading.\" Notice how the \"page\" element is selected by the for-each \"select\" attribute and how the `<h2>` element contains the \"title\" value.\r\n\r\nWhat we really want is an unordered list, so we need a template that looks more like this:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<li><xsl:value-of select=\"title\"/></li>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nNotice how the `<ul>` element is outside the `<xsl:for-each>` element, since we don\'t need a separate unordered list for each page. Rather, we need three pages to be listed in a single unordered list.\r\n\r\nThis menu will not be very useful until we have included a link to each page. That is where the \"handle\" attribute comes in. Each page has a \"handle\" attribute that represents the title of the page converted to a URL handle by rendering the title in lowercase letters and replacing spaces with hyphens. With XPath, attributes are selected with the \"@\" symbol as in the following expression:\r\n\r\n	<xsl:value-of select=\"data/navigation/page/@handle\"/>\r\n\r\nHowever, when the value is output within an attribute of a HTML element, a different XSL syntax is required, called an Attribute Value Template (AVT), using curly braces:\r\n\r\n	<a href=\"{data/navigation/page/@handle}\">Page Title goes here</a>\r\n\r\nWithin the context of our navigation list, the template should look like this:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<li><a href=\"{@handle}\"><xsl:value-of select=\"title\"/></a></li>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nThis will work fine if we want relative URLs, but we might want absolute URLs, especially if Symphony has been installed somewhere other than the root web directory. In this case, default parameter for the site root will be very useful: `$root`. As mentioned before, the value of the `$root` parameter is determined during the installation of Symphony and is stored in the `conf/config.php` file. It determines the URL for the front page of your site. You can include this parameter in a link as an attribute value:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<li><a href=\"{$root}/{@handle}/\"><xsl:value-of select=\"title\"/></a></li>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nYou should now be able to navigate from page to page.\r\n\r\n#### Using conditionals to display the current page\r\n\r\nNow, the power of Symphony and XSLT shines in being able to dynamically determine the current state of a web page. Going back to our list of default parameters, we will find another tremendously useful parameter: `$current-page`. This is the value of the handle of the current page. As you navigate from one page to another, add ?debug to the end of the address bar and click on the XSLT link to view the changes to the `$current-page` parameter. With CSS, it is possible to apply a class attribute to a list item to display a different style for a current link. Add the following `<style>` element to the `<head>` element of the default template:\r\n\r\n	<style type=\"text/css\">\r\n		li.current a {color:#f00; text-decoration:none;}\r\n	</style>\r\n\r\nAdd a class attribute to the list item for the navigation menu:\r\n\r\n	<li class=\"current\">\r\n\r\nThe default template should now look like this:\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n				<style type=\"text/css\">\r\n					li.current a {color:#f00; text-decoration:none;}\r\n				</style>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<ul>\r\n					<xsl:for-each select=\"data/navigation/page\">\r\n						<li class=\"current\"><a href=\"{$root}/{@handle}/\"><xsl:value-of select=\"title\"/></a></li>\r\n					</xsl:for-each>\r\n				</ul>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nAll of the items in the menu list should now be colored red with no underline. This is not quite what we are after, since we want to apply this style only to the link that represents the current page. We can do this by using a conditional XSL element. XSLT allows for the ability to choose elements based on certain conditions. There are a couple different conditional elements: `<xsl:if>` and `<xsl:when>`. Each of these elements tests for a certain condition, and, if the test is successful, will output whatever is contained within the element.\r\n\r\nIf we want to test whether a link matches the current page, we can use the `<xsl:if>` element like this:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<xsl:if test=\"@handle = $current-page\">\r\n				<li class=\"current\">\r\n					<a href=\"{$root}/{@handle}/\">\r\n						<xsl:value-of select=\"title\"/>\r\n					</a>\r\n				</li>\r\n			</xsl:if>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nThe `<xsl:if>` element tests whether the value of the handle of the `<page>` element in the XML data matches the URL handle of the current page indicated by the value of the default page parameter `$current-page`.\r\n\r\nWe can also test whether a page handle does not match the current page handle with another `<xsl:if>` element by using the operand \"`!=`\", which means \"does not equal\":\r\n\r\n	<xsl:if test=\"@handle != $current-page\">\r\n\r\nWe simply remove the \"current\" class attribute from the list item when the page handle does not match the `$current-page` parameter:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<xsl:if test=\"@handle != $current-page\">\r\n				<li>\r\n					<a href=\"{$root}/{@handle}/\">\r\n						<xsl:value-of select=\"title\"/>\r\n					</a>\r\n				</li>\r\n			</xsl:if>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nTry navigating from page to page and you\'ll see the effect. Using the `<xsl:if>` twice is not very efficient, since each element has to be tested twice. The `<xsl:when>` element allows us to perform an \"if, then\" sort of statement. The `<xsl:when>` element must always be contained by a `<xsl:choose>` element, and can sometimes be accompanied by a sibling `<xsl:otherwise>` element. So we can accomplish the same result as the two `<xsl:if>` elements with the following XSL code:\r\n\r\n	<ul>\r\n		<xsl:for-each select=\"data/navigation/page\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"@handle = $current-page\">\r\n					<li class=\"current\">\r\n						<a href=\"{$root}/{@handle}/\">\r\n							<xsl:value-of select=\"title\"/>\r\n						</a>\r\n					</li>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<li>\r\n						<a href=\"{$root}/{@handle}/\">\r\n							<xsl:value-of select=\"title\"/>\r\n						</a>\r\n					</li>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:for-each>\r\n	</ul>\r\n\r\nThis code is saying, when the page handle matches the current page handle, output the title of the page as a list item with a class attribute of \"current\" and with a link to the associated page; otherwise, output the linked page title as a list item with no class attribute. Now, each `<page>` node is tested only once.\r\n\r\n#### Create a Navigation Template\r\n\r\nWe can reuse this code in other template by creating a named template that can be called from other XSL templates. In Symphony, these templates can exist as Utilities, Page templates or Master templates. We can also add another template to the default Master template.\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n				<style type=\"text/css\">\r\n					li.current a {color:#f00; text-decoration:none;}\r\n				</style>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<xsl:call-template name=\"navigation\"/>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	<xsl:template name=\"navigation\">\r\n		<ul>\r\n			<xsl:for-each select=\"data/navigation/page\">\r\n				<xsl:choose>\r\n					<xsl:when test=\"@handle = $current-page\">\r\n						<li class=\"current\">\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:when>\r\n					<xsl:otherwise>\r\n						<li>\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:otherwise>\r\n				</xsl:choose>\r\n			</xsl:for-each>\r\n		</ul>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nThe named template can be called within another XSL template within the same stylesheet by using this code: \r\n\r\n	<xsl:call-template name=\"navigation\"/>\r\n\r\n#### Create a Utility\r\n\r\nIn Symphony, a Utility can be created to include a template or a group of templates within the XSL stylesheet. Go to Blueprints : Components and click on the \"Create New\" button next to Utilities. A new Utility contains the `<xsl:template>` element to get you started. Give the Utility the name \"Main Menu\" and paste the following into the Body of the Utility: \r\n\r\n	<xsl:template name=\"main-menu\">\r\n		<ul>\r\n			<xsl:for-each select=\"data/navigation/page\">\r\n				<xsl:choose>\r\n					<xsl:when test=\"@handle = $current-page\">\r\n						<li class=\"current\">\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:when>\r\n					<xsl:otherwise>\r\n						<li>\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:otherwise>\r\n				</xsl:choose>\r\n			</xsl:for-each>\r\n		</ul>\r\n	</xsl:template>\r\n\r\nThis is the same template we have in our default Master template, except that the name of the template is \"main-menu\". Click on \"Navigation\" in the Associate with Data Source select box and click on the Save button. (Note that the image below doesn\'t show the same template that we have above.)\r\n\r\n![Symphony Admin : Blueprints : Components : Utilities : Main Menu](/workspace/assets/images/sym_qwilm_util_main-menu.jpg)\r\n\r\nWe have already associated the Navigation Data Source with the default Master template, so we can go to the default Master template (Blueprints : Components : Masters : default) and change the `<xsl:call-template>` element:\r\n\r\n	<xsl:call-template name=\"main-menu\"/>\r\n\r\nView the front page of your site and you will see the same thing we had before, except that the template is being read from the template named \"main-menu\" stored in the \"Main Menu\" Utility. You can change the name of the Utility to \"Navigation\" and because the Utility is associated with the Navigation Data Source, the \"main-menu\" template will still be included in the stylesheet for the pages associated with the default template. At this point, it is possible to delete the \"navigation\" template from default Master template. We can do this without using the Symphony Admin. Find the location of the default.xsl file where you installed Symphony. My file is located here on my hard drive:\r\n\r\n	/Library/WebServer/Documents/sym/qwilm/public/workspace/masters/default.xsl\r\n\r\nNow you can open the default.xsl file and delete the \"navigation\" template. You can also find the navigation.xsl file (if you have changed the name of the \"Main Menu\" utility to \"Navigation\", otherwise, the file name will be main-menu.xsl. You can find this file in the `/workspace/utilities/` directory. On my Mac, the file is here:\r\n\r\n	/Library/WebServer/Documents/sym/qwilm/public/workspace/utilities/navigation.xsl\r\n\r\n#### Adjusting the home page link\r\n\r\nOne thing that you might consider a problem is that the Home page link is also given a handle of \"home\" so that the URL is:\r\n\r\n	http://sym.qwilm.site/home/\r\n\r\nIf you would rather that the link to the home page be the root of your site, you will need to test for another condition. For this, we can use the page \"type\" attribute to filter out the Home page and apply a different template for the output of this page link. As with any XML document, though, it is important to write well-formed code to keep all elements closed, either with opening and closing tags or with self-closing tags. This prevents us from being able to wrap the conditional elements only around the opening `<li>` tag and adding the \"current\" class attribute only when the conditions are right. The conditional element must contain the entire list item element from opening tag `<li>` to closing tag `</li>`. While it is rather verbose, it does afford us the functionality of dynamically assigning the \"current\" class to the current page menu item. Two additional conditions must be tested which apply a different template, omitting the handle from the link URL, when the type attribute is also equal to the string value of \'index\':\r\n\r\n	<xsl:template name=\"main-menu\">\r\n		<ul>\r\n			<xsl:for-each select=\"data/navigation/page\">\r\n				<xsl:choose>\r\n					<xsl:when test=\"@handle=$current-page and @type=\'index\'\">\r\n						<li class=\"current\">\r\n							<a href=\"{$root}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:when>\r\n					<xsl:when test=\"@handle!=$current-page and @type=\'index\'\">\r\n						<li>\r\n							<a href=\"{$root}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:when>\r\n					<xsl:when test=\"@handle=$current-page\">\r\n						<li class=\"current\">\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:when>\r\n					<xsl:otherwise>\r\n						<li>\r\n							<a href=\"{$root}/{@handle}/\">\r\n								<xsl:value-of select=\"title\"/>\r\n							</a>\r\n						</li>\r\n					</xsl:otherwise>\r\n				</xsl:choose>\r\n			</xsl:for-each>\r\n		</ul>\r\n	</xsl:template>\r\n\r\n#### Modifying files with a text editor\r\n\r\nWhile each file must be created in Symphony so that metadata can be stored in the database relating to the Data Sources and/or Events that have been associated with a Master template, it is possible to modify the XSL file in a text editor. This can speed up development as you can have multiple XSL files open in your text editor while you quickly test the effect of modifications to your templates on the front end of your site in your web browser. Using an FTP application that can open files from a remote server to modify them locally in a text editor can be much quicker than navigating back and forth between pages in Symphony and you may benefit from the ability to undo and redo changes to your XSL templates. The same is true for Masters, Pages and Utilities, which all exist as XSL files on the server. \r\n\r\nSince all the files you create in Symphony are stored in the workspace directory, it is possible to swap out the workspace with another workspace and completely change the behaviour and style of the site. However, to do this with an existing install of Symphony, it is necessary to have exactly the same database structure as before. Otherwise, it would be best to start with a fresh Symphony install to switch to a new theme. Since the latest version of Symphony allows for an amazing degree of back-end customization, differences in database structures prevent the ability to switch to different themes on the fly. For this reason, it would make sense for the Symphony community to develop some standard frameworks for various types of websites to facilitate this sort of theme switching, without worrying that swapping out the workspace might break the site.\r\n\r\n### Next: Sections and Custom Fields\r\n\r\nNow that we are starting to become familiar with creating Masters, Pages, Utilities and Data Sources, we should start to develop some content. Next, in [Building a Symphony Theme: Part 4](/journal/building-a-symphony-theme-part-4/) we will create Sections and Custom Fields to manage our content. This is where things start to become really exciting: the degree to which you can customize the Symphony Admin pages as well as the structure and functionality of your data.', '<h3>XSLT Parameters</h3>\n\n<p>First, there are several XSL parameters that can be used to start making our page template dynamic. You can find a list of these parameters by navigating to the home page and adding <code>?debug</code> to the end of the URL in the address bar.</p>\n\n<pre><code>http://sym.qwilm.site/?debug\n</code></pre>\n\n<p>Click on the XSLT link at the top of the ?debug page and you will see a list of XSL parameters.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_home_xslt.jpg\" alt=\"?debug XSLT view: XSL Parameters\" /></p>\n\n<h4>Default Parameters</h4>\n\n<p>We can use these parameters within our page templates. Let&#8217;s start by adding the name of the site to the default Master template that we have created. Take a look at the list of parameters:</p>\n\n<pre><code>&lt;xsl:param name=\"root\" select=\"\'http://sym.qwilm.site\'\" /&gt;\n&lt;xsl:param name=\"workspace\" select=\"\'http://sym.qwilm.site/workspace\'\" /&gt;\n&lt;xsl:param name=\"current-page\" select=\"\'home\'\" /&gt;\n&lt;xsl:param name=\"page-title\" select=\"\'Home\'\" /&gt;\n&lt;xsl:param name=\"parent-page\" select=\"\'/\'\" /&gt;\n&lt;xsl:param name=\"today\" select=\"\'2006-12-10\'\" /&gt;\n&lt;xsl:param name=\"website-name\" select=\"\'qwilm\'\" /&gt;\n&lt;xsl:param name=\"symphony-build\" select=\"\'1506\'\" /&gt;\n&lt;xsl:param name=\"url-mode\" select=\"\'full\'\" /&gt;\n&lt;xsl:param name=\"url-type\" select=\"\'page\'\" /&gt;\n&lt;xsl:param name=\"url-handle\" select=\"\'\'\" /&gt;\n</code></pre>\n\n<p>For the moment, let me just state that the last three parameters that refer to url are not available for inclusion in your templates (for <a href=\"http://overture21.com/forum/comments.php?DiscussionID=641\">reasons</a> I won&#8217;t get into here). The rest act as default parameters, generated by Symphony for every page, that can be called from within your template.</p>\n\n<p>For example, the <code>$website-name</code> parameter uses the System Preference for Website Name. If you change this preference, this will change the value of <code>$website-name</code> wherever you have it in your templates.</p>\n\n<p>The <code>$root</code> parameter refers to the domain that is used when installing Symphony. This value is stored in the <code>/conf/config.php</code>, which stores the information that is required for Symphony to access your database and to access the Symphony support server for updates.</p>\n\n<p>We can use these two parameters to create a website name that links to the home page. Go to Blueprints : Components and click on default.xsl under Masters to edit the template. Symphony creates a default stylesheet that looks like this:</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;xsl:apply-templates/&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>We will want to change it to look like this:</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;xsl:apply-templates/&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>You should now be able to navigate to your home page and view a page that has a link to the home page. So, what just happened here? Well, there is a different syntax for finding values using XSLT depending on whether the value must be output within an element attribute or as the value of an element. For the anchor value <code>&lt;a&gt;Value&lt;/a&gt;</code> we need to use a <code>&lt;xsl:value-of select=\"$param\"/&gt;</code>, but for the attribute value <code>&lt;a href=\"value\"&gt;&lt;/a&gt;</code> we need to use <code>{$param}</code>.</p>\n\n<p>You might have noticed that the default Master template includes the <code>$page-title</code> parameter in the <code>title</code> element of the <code>head</code> element. It might also be a good idea to include this value as a page title in the body. Let&#8217;s add this value as an <code>h2</code> to the xsl:template.</p>\n\n<p>Add this after the <code>h1</code> element:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/h2&gt;\n</code></pre>\n\n<p>So the xsl:template element looks like this:</p>\n\n<pre><code>&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;h2&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/h2&gt;\n            &lt;xsl:apply-templates/&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n</code></pre>\n\n<h3>Default Data Sources</h3>\n\n<p>In addition to the default parameters, there are also default data sources available even before the creation of new sections and custom fields. While it is necessary to create new Data Sources to add the default data to the XML data for a page, the following are a list of the available sources:</p>\n\n<ul>\n<li>Authors</li>\n<li>Comments</li>\n<li>Navigation</li>\n</ul>\n\n<p>The Authors data is extracted from the Settings : Authors section.</p>\n\n<p>The Comments data is extracted from the Publish : Comments section.</p>\n\n<p>The Navigation data is extracted from the Blueprints : Pages section.</p>\n\n<p>There is also a Static XML source for adding another child node to the XML data apart from the data stored in the database. So, for instance, you could create a node for the months of the year without having to create a section and custom fields for storing this data in the database.</p>\n\n<h3>Custom Data Sources</h3>\n\n<p>When you create a Data Source, you are actually creating a PHP file that is stored in the /workspace/data-sources/ directory. This PHP file extracts data from the MySQL database and outputs the data as XML so Symphony can use XSL templates to transform that XML data into HTML Output. To view the XML data associated with a page, view the ?debug information for the page.</p>\n\n<p>Under the Publish menu, there are two menu items by default: Comments and File Manager. Every section that you create has an option to include comments, so that you can enable commenting for blog entries or for photo gallery entries, for instance. Implementing Comments will require attaching an Event, so I will tackle the basics before venturing into the more advanced features of Symphony.</p>\n\n<h4>Create a New Data Source: Navigation</h4>\n\n<p>The Navigation Data Source is the most basic to implement and one of the most useful. So let&#8217;s try this first. Go to Blueprints : Controllers.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_controllers_empty.jpg\" alt=\"Symphony Admin : Blueprints : Controllers\" /></p>\n\n<p>Click on the Create New button beside the Data Sources heading. On the New Data Source page, under Essentials, give the Data Source a Name: Navigation, and choose Navigation under the Source pull-down menu and click on the Save button.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_ds_navigation.jpg\" alt=\"Symphony Admin : Blueprints : Controllers : Data Sources : Create New : Navigation\" /></p>\n\n<h4>Associate a Data Source with a Master template</h4>\n\n<p>To use this new Data Source, it must be associated with a page template or master template. Go to Blueprints : Components and choose the default template under Masters. Click on the configure button to view the Master Settings, and click on Navigation in the select box under Data Source XML in the Master Environment. (You can select multiple Data Sources by using the command button on the Mac and the control button in Windows.)</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_master_config_ds.jpg\" alt=\"Symphony Admin : Blueprints : Components : Masters : default : Configure\" /></p>\n\n<p>To see the effect of this change, let&#8217;s create a couple pages first. Go to Blueprints : Pages and click on the Create New button. Add two pages: one with the name, About, and the other with the name, Contact. You won&#8217;t need to configure these pages as we did with the home page, since Symphony will automatically create these pages with a type of &#8220;default&#8221; and a handle that corresponds with the name of the page. Now, view the Home page by clicking on the front page link, the name of the site beside the Symphony logo in the top of the Symphony Admin. View the ?debug information for the page to see the XML data created by the Navigation Data Source.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_debug_home_nav.jpg\" alt=\"Navigation XML Data\" /></p>\n\n<h3>Using XSLT to transform XML data into HTML output</h3>\n\n<p>The XML data now contains a node element called &#8220;navigation&#8221;.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;data&gt;\n    &lt;events /&gt;\n    &lt;navigation&gt;\n        &lt;page handle=\"home\" type=\"index\"&gt;\n            &lt;title&gt;Home&lt;/title&gt;\n        &lt;/page&gt;\n        &lt;page handle=\"about\" type=\"default\"&gt;\n            &lt;title&gt;About&lt;/title&gt;\n        &lt;/page&gt;\n        &lt;page handle=\"contact\" type=\"default\"&gt;\n            &lt;title&gt;Contact&lt;/title&gt;\n        &lt;/page&gt;\n    &lt;/navigation&gt;\n&lt;/data&gt;\n</code></pre>\n\n<p>Now that we have some data to work with, it is possible to tranform this XML data with our default XSL template into HTML output that will be displayed on pages that use the default template. Next, let&#8217;s discover how the transformation happens. It makes sense to start with some sort of navigation to be able to move from one page to another on our site.</p>\n\n<h4>The XPath Language</h4>\n\n<p>The XML data contains values that we will want to display on our page. The XPath language is the means by which XSL extracts values from XML data. An XSLT template establishes patterns for generating HTML output that uses the values extracted from the XML data. Mark Lewis provides a good overview of Symphony&#8217;s role in the XSLT process in his Overture article, <a href=\"http://overture21.com/articles/a-symphony-walkabout/\">A Symphony Walkabout</a>. To help you get started with XML, XPath and XSLT, you can find other <a href=\"http://overture21.com/wiki/getting-started/xslt-resources\">resources</a> in the Overture Wiki.</p>\n\n<p>In Symphony, the root element of the XML data is always the <code>&lt;data/&gt;</code> element. For each data source that you associate with a page, a child node will be added to the data element. The name of the node will correspond to the name you created for the Data Source except that the name will consist only of lowercase letters with spaces replaced by hyphens.</p>\n\n<h4>Create the Navigation Menu</h4>\n\n<p>To create the main navigation for the site, we can start by creating an unordered list of links for each of the main sections. So far, we have three pages: Home, About and Contact. It would be fairly easy to create the list without relying on XSLT to do the job. The menu might look something like this:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;li&gt;&lt;a href=\"http://sym.qwilm.site/home/\"&gt;Home&lt;/a&gt;&lt;/li&gt;\n    &lt;li&gt;&lt;a href=\"http://sym.qwilm.site/about/\"&gt;About&lt;/a&gt;&lt;/li&gt;\n    &lt;li&gt;&lt;a href=\"http://sym.qwilm.site/contact/\"&gt;Contact&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>This would be fine if we only had three pages to deal with, but if we had several sections, each with multiple pages per section, the reasons for having a means of dynamically creating the menu become clearer. For now, we&#8217;ll keep things simple.</p>\n\n<p>It helps to have our intended output figured out before generating the XSL template. So, let&#8217;s use the structure above for dynamically generating the menu, starting with the Home page. When we take a closer look at the XML data, we find that the root node &#8220;data&#8221; contains a node for &#8220;navigation&#8221; which contains three child &#8220;page&#8221; elements. Each of the &#8220;page&#8221; nodes has two attributes: &#8220;handle&#8221; and &#8220;type&#8221;. Each page node has a single child element: &#8220;title&#8221;. To output the value of an element or attribute, we will use XPath to select the value and the <code>&lt;xsl:value-of/&gt;</code> element to output the value of the HTML element or the <code>{...}</code> to output the HTML element attribute.</p>\n\n<p>The context node is defined by the match value in the <code>&lt;xsl:template/&gt;</code> element for the default template.</p>\n\n<pre><code>&lt;xsl:template match=\"/\"&gt;\n</code></pre>\n\n<p>In this case, it is the root of the XML data, as indicated by <code>\"/\"</code>. An absolute path expression would begin with <code>\"/\"</code> to indicate the location of the node relative to the root of the XML data. A relative path expression would begin with something other than <code>\"/\"</code> to indicate a location relative to the context node. For our default Master template, to find the value of the page node, we can use a relative path expression:</p>\n\n<pre><code>data/navigation/page\n</code></pre>\n\n<p>For example, to display the value of the first page in the navigation, we could use the following expression:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"data/navigation/page/title\"/&gt;&lt;/h2&gt;\n</code></pre>\n\n<p>Add this to the default template and see what happens by viewing the home page (and the ?debug information, if you are curious):</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;h2&gt;&lt;xsl:value-of select=\"data/navigation/page/title\"/&gt;&lt;/h2&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>Notice how this outputs only the first page. In fact, the expression we are using could apply to any of the three pages in the XML data, but the <code>&lt;xsl:value-of/&gt;</code> element can output only a single value, so it defaults to the first element that it finds. How can we output the second page? We can use a predicate to evaluate and filter the node-set based on various criteria, including position in the document order. The second page element can be selected with the following code:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"data/navigation/page[position()=2]/title\"/&gt;&lt;/h2&gt;\n</code></pre>\n\n<p>This can also be expressed in shorthand syntax:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"data/navigation/page[2]/title\"/&gt;&lt;/h2&gt;\n</code></pre>\n\n<p>Or try the following to output the title of the third page:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"data/navigation/page[3]/title\"/&gt;&lt;/h2&gt;\n</code></pre>\n\n<p>If we wanted to output all three at once, we need to use <code>&lt;xsl:for-each/&gt;</code> to apply the same template for each of the elements that matches the selection criteria.</p>\n\n<pre><code>&lt;xsl:for-each select=\"data/navigation/page\"&gt;\n    &lt;h2&gt;&lt;xsl:value-of select=\"title\"/&gt;&lt;/h2&gt;\n&lt;/xsl:for-each&gt;\n</code></pre>\n\n<p>This template is saying, effectively, &#8220;for each page in the navigation, output the title as a second-level heading.&#8221; Notice how the &#8220;page&#8221; element is selected by the for-each &#8220;select&#8221; attribute and how the <code>&lt;h2&gt;</code> element contains the &#8220;title&#8221; value.</p>\n\n<p>What we really want is an unordered list, so we need a template that looks more like this:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;li&gt;&lt;xsl:value-of select=\"title\"/&gt;&lt;/li&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>Notice how the <code>&lt;ul&gt;</code> element is outside the <code>&lt;xsl:for-each&gt;</code> element, since we don&#8217;t need a separate unordered list for each page. Rather, we need three pages to be listed in a single unordered list.</p>\n\n<p>This menu will not be very useful until we have included a link to each page. That is where the &#8220;handle&#8221; attribute comes in. Each page has a &#8220;handle&#8221; attribute that represents the title of the page converted to a URL handle by rendering the title in lowercase letters and replacing spaces with hyphens. With XPath, attributes are selected with the &#8220;@&#8221; symbol as in the following expression:</p>\n\n<pre><code>&lt;xsl:value-of select=\"data/navigation/page/@handle\"/&gt;\n</code></pre>\n\n<p>However, when the value is output within an attribute of a HTML element, a different XSL syntax is required, called an Attribute Value Template (AVT), using curly braces:</p>\n\n<pre><code>&lt;a href=\"{data/navigation/page/@handle}\"&gt;Page Title goes here&lt;/a&gt;\n</code></pre>\n\n<p>Within the context of our navigation list, the template should look like this:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;li&gt;&lt;a href=\"{@handle}\"&gt;&lt;xsl:value-of select=\"title\"/&gt;&lt;/a&gt;&lt;/li&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>This will work fine if we want relative URLs, but we might want absolute URLs, especially if Symphony has been installed somewhere other than the root web directory. In this case, default parameter for the site root will be very useful: <code>$root</code>. As mentioned before, the value of the <code>$root</code> parameter is determined during the installation of Symphony and is stored in the <code>conf/config.php</code> file. It determines the URL for the front page of your site. You can include this parameter in a link as an attribute value:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;li&gt;&lt;a href=\"{$root}/{@handle}/\"&gt;&lt;xsl:value-of select=\"title\"/&gt;&lt;/a&gt;&lt;/li&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>You should now be able to navigate from page to page.</p>\n\n<h4>Using conditionals to display the current page</h4>\n\n<p>Now, the power of Symphony and XSLT shines in being able to dynamically determine the current state of a web page. Going back to our list of default parameters, we will find another tremendously useful parameter: <code>$current-page</code>. This is the value of the handle of the current page. As you navigate from one page to another, add ?debug to the end of the address bar and click on the XSLT link to view the changes to the <code>$current-page</code> parameter. With CSS, it is possible to apply a class attribute to a list item to display a different style for a current link. Add the following <code>&lt;style&gt;</code> element to the <code>&lt;head&gt;</code> element of the default template:</p>\n\n<pre><code>&lt;style type=\"text/css\"&gt;\n    li.current a {color:#f00; text-decoration:none;}\n&lt;/style&gt;\n</code></pre>\n\n<p>Add a class attribute to the list item for the navigation menu:</p>\n\n<pre><code>&lt;li class=\"current\"&gt;\n</code></pre>\n\n<p>The default template should now look like this:</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n            &lt;style type=\"text/css\"&gt;\n                li.current a {color:#f00; text-decoration:none;}\n            &lt;/style&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;ul&gt;\n                &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n                    &lt;li class=\"current\"&gt;&lt;a href=\"{$root}/{@handle}/\"&gt;&lt;xsl:value-of select=\"title\"/&gt;&lt;/a&gt;&lt;/li&gt;\n                &lt;/xsl:for-each&gt;\n            &lt;/ul&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>All of the items in the menu list should now be colored red with no underline. This is not quite what we are after, since we want to apply this style only to the link that represents the current page. We can do this by using a conditional XSL element. XSLT allows for the ability to choose elements based on certain conditions. There are a couple different conditional elements: <code>&lt;xsl:if&gt;</code> and <code>&lt;xsl:when&gt;</code>. Each of these elements tests for a certain condition, and, if the test is successful, will output whatever is contained within the element.</p>\n\n<p>If we want to test whether a link matches the current page, we can use the <code>&lt;xsl:if&gt;</code> element like this:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;xsl:if test=\"@handle = $current-page\"&gt;\n            &lt;li class=\"current\"&gt;\n                &lt;a href=\"{$root}/{@handle}/\"&gt;\n                    &lt;xsl:value-of select=\"title\"/&gt;\n                &lt;/a&gt;\n            &lt;/li&gt;\n        &lt;/xsl:if&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>The <code>&lt;xsl:if&gt;</code> element tests whether the value of the handle of the <code>&lt;page&gt;</code> element in the XML data matches the URL handle of the current page indicated by the value of the default page parameter <code>$current-page</code>.</p>\n\n<p>We can also test whether a page handle does not match the current page handle with another <code>&lt;xsl:if&gt;</code> element by using the operand &#8220;<code>!=</code>&#8221;, which means &#8220;does not equal&#8221;:</p>\n\n<pre><code>&lt;xsl:if test=\"@handle != $current-page\"&gt;\n</code></pre>\n\n<p>We simply remove the &#8220;current&#8221; class attribute from the list item when the page handle does not match the <code>$current-page</code> parameter:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;xsl:if test=\"@handle != $current-page\"&gt;\n            &lt;li&gt;\n                &lt;a href=\"{$root}/{@handle}/\"&gt;\n                    &lt;xsl:value-of select=\"title\"/&gt;\n                &lt;/a&gt;\n            &lt;/li&gt;\n        &lt;/xsl:if&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>Try navigating from page to page and you&#8217;ll see the effect. Using the <code>&lt;xsl:if&gt;</code> twice is not very efficient, since each element has to be tested twice. The <code>&lt;xsl:when&gt;</code> element allows us to perform an &#8220;if, then&#8221; sort of statement. The <code>&lt;xsl:when&gt;</code> element must always be contained by a <code>&lt;xsl:choose&gt;</code> element, and can sometimes be accompanied by a sibling <code>&lt;xsl:otherwise&gt;</code> element. So we can accomplish the same result as the two <code>&lt;xsl:if&gt;</code> elements with the following XSL code:</p>\n\n<pre><code>&lt;ul&gt;\n    &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"@handle = $current-page\"&gt;\n                &lt;li class=\"current\"&gt;\n                    &lt;a href=\"{$root}/{@handle}/\"&gt;\n                        &lt;xsl:value-of select=\"title\"/&gt;\n                    &lt;/a&gt;\n                &lt;/li&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:otherwise&gt;\n                &lt;li&gt;\n                    &lt;a href=\"{$root}/{@handle}/\"&gt;\n                        &lt;xsl:value-of select=\"title\"/&gt;\n                    &lt;/a&gt;\n                &lt;/li&gt;\n            &lt;/xsl:otherwise&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:for-each&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>This code is saying, when the page handle matches the current page handle, output the title of the page as a list item with a class attribute of &#8220;current&#8221; and with a link to the associated page; otherwise, output the linked page title as a list item with no class attribute. Now, each <code>&lt;page&gt;</code> node is tested only once.</p>\n\n<h4>Create a Navigation Template</h4>\n\n<p>We can reuse this code in other template by creating a named template that can be called from other XSL templates. In Symphony, these templates can exist as Utilities, Page templates or Master templates. We can also add another template to the default Master template.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n            &lt;style type=\"text/css\"&gt;\n                li.current a {color:#f00; text-decoration:none;}\n            &lt;/style&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;xsl:call-template name=\"navigation\"/&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;xsl:template name=\"navigation\"&gt;\n    &lt;ul&gt;\n        &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n            &lt;xsl:choose&gt;\n                &lt;xsl:when test=\"@handle = $current-page\"&gt;\n                    &lt;li class=\"current\"&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:when&gt;\n                &lt;xsl:otherwise&gt;\n                    &lt;li&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:otherwise&gt;\n            &lt;/xsl:choose&gt;\n        &lt;/xsl:for-each&gt;\n    &lt;/ul&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>The named template can be called within another XSL template within the same stylesheet by using this code:</p>\n\n<pre><code>&lt;xsl:call-template name=\"navigation\"/&gt;\n</code></pre>\n\n<h4>Create a Utility</h4>\n\n<p>In Symphony, a Utility can be created to include a template or a group of templates within the XSL stylesheet. Go to Blueprints : Components and click on the &#8220;Create New&#8221; button next to Utilities. A new Utility contains the <code>&lt;xsl:template&gt;</code> element to get you started. Give the Utility the name &#8220;Main Menu&#8221; and paste the following into the Body of the Utility:</p>\n\n<pre><code>&lt;xsl:template name=\"main-menu\"&gt;\n    &lt;ul&gt;\n        &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n            &lt;xsl:choose&gt;\n                &lt;xsl:when test=\"@handle = $current-page\"&gt;\n                    &lt;li class=\"current\"&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:when&gt;\n                &lt;xsl:otherwise&gt;\n                    &lt;li&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:otherwise&gt;\n            &lt;/xsl:choose&gt;\n        &lt;/xsl:for-each&gt;\n    &lt;/ul&gt;\n&lt;/xsl:template&gt;\n</code></pre>\n\n<p>This is the same template we have in our default Master template, except that the name of the template is &#8220;main-menu&#8221;. Click on &#8220;Navigation&#8221; in the Associate with Data Source select box and click on the Save button. (Note that the image below doesn&#8217;t show the same template that we have above.)</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_util_main-menu.jpg\" alt=\"Symphony Admin : Blueprints : Components : Utilities : Main Menu\" /></p>\n\n<p>We have already associated the Navigation Data Source with the default Master template, so we can go to the default Master template (Blueprints : Components : Masters : default) and change the <code>&lt;xsl:call-template&gt;</code> element:</p>\n\n<pre><code>&lt;xsl:call-template name=\"main-menu\"/&gt;\n</code></pre>\n\n<p>View the front page of your site and you will see the same thing we had before, except that the template is being read from the template named &#8220;main-menu&#8221; stored in the &#8220;Main Menu&#8221; Utility. You can change the name of the Utility to &#8220;Navigation&#8221; and because the Utility is associated with the Navigation Data Source, the &#8220;main-menu&#8221; template will still be included in the stylesheet for the pages associated with the default template. At this point, it is possible to delete the &#8220;navigation&#8221; template from default Master template. We can do this without using the Symphony Admin. Find the location of the default.xsl file where you installed Symphony. My file is located here on my hard drive:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/qwilm/public/workspace/masters/default.xsl\n</code></pre>\n\n<p>Now you can open the default.xsl file and delete the &#8220;navigation&#8221; template. You can also find the navigation.xsl file (if you have changed the name of the &#8220;Main Menu&#8221; utility to &#8220;Navigation&#8221;, otherwise, the file name will be main-menu.xsl. You can find this file in the <code>/workspace/utilities/</code> directory. On my Mac, the file is here:</p>\n\n<pre><code>/Library/WebServer/Documents/sym/qwilm/public/workspace/utilities/navigation.xsl\n</code></pre>\n\n<h4>Adjusting the home page link</h4>\n\n<p>One thing that you might consider a problem is that the Home page link is also given a handle of &#8220;home&#8221; so that the URL is:</p>\n\n<pre><code>http://sym.qwilm.site/home/\n</code></pre>\n\n<p>If you would rather that the link to the home page be the root of your site, you will need to test for another condition. For this, we can use the page &#8220;type&#8221; attribute to filter out the Home page and apply a different template for the output of this page link. As with any XML document, though, it is important to write well-formed code to keep all elements closed, either with opening and closing tags or with self-closing tags. This prevents us from being able to wrap the conditional elements only around the opening <code>&lt;li&gt;</code> tag and adding the &#8220;current&#8221; class attribute only when the conditions are right. The conditional element must contain the entire list item element from opening tag <code>&lt;li&gt;</code> to closing tag <code>&lt;/li&gt;</code>. While it is rather verbose, it does afford us the functionality of dynamically assigning the &#8220;current&#8221; class to the current page menu item. Two additional conditions must be tested which apply a different template, omitting the handle from the link URL, when the type attribute is also equal to the string value of &#8216;index&#8217;:</p>\n\n<pre><code>&lt;xsl:template name=\"main-menu\"&gt;\n    &lt;ul&gt;\n        &lt;xsl:for-each select=\"data/navigation/page\"&gt;\n            &lt;xsl:choose&gt;\n                &lt;xsl:when test=\"@handle=$current-page and @type=\'index\'\"&gt;\n                    &lt;li class=\"current\"&gt;\n                        &lt;a href=\"{$root}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:when&gt;\n                &lt;xsl:when test=\"@handle!=$current-page and @type=\'index\'\"&gt;\n                    &lt;li&gt;\n                        &lt;a href=\"{$root}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:when&gt;\n                &lt;xsl:when test=\"@handle=$current-page\"&gt;\n                    &lt;li class=\"current\"&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:when&gt;\n                &lt;xsl:otherwise&gt;\n                    &lt;li&gt;\n                        &lt;a href=\"{$root}/{@handle}/\"&gt;\n                            &lt;xsl:value-of select=\"title\"/&gt;\n                        &lt;/a&gt;\n                    &lt;/li&gt;\n                &lt;/xsl:otherwise&gt;\n            &lt;/xsl:choose&gt;\n        &lt;/xsl:for-each&gt;\n    &lt;/ul&gt;\n&lt;/xsl:template&gt;\n</code></pre>\n\n<h4>Modifying files with a text editor</h4>\n\n<p>While each file must be created in Symphony so that metadata can be stored in the database relating to the Data Sources and/or Events that have been associated with a Master template, it is possible to modify the XSL file in a text editor. This can speed up development as you can have multiple XSL files open in your text editor while you quickly test the effect of modifications to your templates on the front end of your site in your web browser. Using an FTP application that can open files from a remote server to modify them locally in a text editor can be much quicker than navigating back and forth between pages in Symphony and you may benefit from the ability to undo and redo changes to your XSL templates. The same is true for Masters, Pages and Utilities, which all exist as XSL files on the server.</p>\n\n<p>Since all the files you create in Symphony are stored in the workspace directory, it is possible to swap out the workspace with another workspace and completely change the behaviour and style of the site. However, to do this with an existing install of Symphony, it is necessary to have exactly the same database structure as before. Otherwise, it would be best to start with a fresh Symphony install to switch to a new theme. Since the latest version of Symphony allows for an amazing degree of back-end customization, differences in database structures prevent the ability to switch to different themes on the fly. For this reason, it would make sense for the Symphony community to develop some standard frameworks for various types of websites to facilitate this sort of theme switching, without worrying that swapping out the workspace might break the site.</p>\n\n<h3>Next: Sections and Custom Fields</h3>\n\n<p>Now that we are starting to become familiar with creating Masters, Pages, Utilities and Data Sources, we should start to develop some content. Next, in <a href=\"/journal/building-a-symphony-theme-part-4/\">Building a Symphony Theme: Part 4</a> we will create Sections and Custom Fields to manage our content. This is where things start to become really exciting: the degree to which you can customize the Symphony Admin pages as well as the structure and functionality of your data.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 110, '### Creating a Section and Custom Fields\r\n\r\nFor the areas of your site that contain static content, you may not need anything more than a text field for the Title and a text area for the Body. We will also need some way to associate the content with a particular page. In the interests of keeping things simple, we\'ll do just that. Go to the Structure menu and select Sections. \r\n\r\n![Symphony Admin : Structure : Sections](/workspace/assets/images/sym_qwilm_sections.jpg)\r\n\r\n#### Create a New Section\r\n\r\nClick on the Create New button and give the section the name \"Content\". It\'s not likely that we\'ll need comments for this type of content so we can deselect the check box beside \"Enable comments for this section\". You can also choose whether you would like to display the Date and Time widget to select the Publish Date for each entry. \r\n\r\nThere are couple check boxes under the heading \"Show the following columns\". This allows you to customize how the entries are listed in the Symphony Admin. \r\n\r\n![Symphony Admin : Structure : Sections : Content](/workspace/assets/images/sym_qwilm_sections_content.jpg)\r\n\r\n#### View the Content Entries\r\n\r\nFor each Section that you create, a new Custom Field, named \"Title\", will be created. Go to the Publish menu and you will see that a new Section has been added to the menu. Comments and File Manager will always appear at the bottom of the Publish menu. Select the Content Section from the Publish menu and you will see the column headings for the list of entries, but we have yet to create any entries.\r\n\r\n![Symphony Admin : Publish : Content](/workspace/assets/images/sym_qwilm_content_empty.jpg)\r\n\r\n#### Create a New Content Entry\r\n\r\nClick on the Create New button and you will see a text input field labeled \"Title\" and the \"Date and Time\" widget (a calendar and a list of time values as a pull-down menu) for the Publish Date. If you resize the browser window, you will notice that the \"Title\" input field has a fluid width, while the \"Date and Time\" widget maintains a fixed width.\r\n\r\n![Symphony Admin : Publish : Content : Create New](/workspace/assets/images/sym_qwilm_content_entry_01.jpg)\r\n\r\n#### The Primary Custom Field\r\n\r\nAs I mentioned above, a Custom Field was created automatically when the new Section was created. Go to the Structure menu and select Custom Fields and you will find a list of Custom Fields. At the moment there is only one Custom Field associated with the Content Section.\r\n\r\n![Symphony Admin : Structure : Custom Fields](/workspace/assets/images/sym_qwilm_fields_list_title.jpg)\r\n\r\nClick on the title of the Custom Field to edit it. The \"Title\" Custom Field comes with a warning message because it is a Primary Custom Field:\r\n\r\nbq. *This custom field is linked to the Content section, so you cannot delete or re-associate it, and it must use either a text input or text area field type.* \r\n\r\nIt is possible to add a description that will appear to the right of the label for the Custom Field, but this is optional. It is also possible to apply validation rules for each Custom Field. By default, the Primary Custom Field is a required field.\r\n\r\n![Symphony Admin : Structure : Custom Fields : Title](/workspace/assets/images/sym_qwilm_fields_title.jpg)\r\n\r\n#### Create New Custom Fields\r\n\r\nFor the Content section, we will create three new Custom Fields: Body, Page and Photo, just so we can see how it is possible to customize the placement of these fields in the Admin pages. Go to Structure : Custom Fields : Create New and give it the name, \"Body\". Select \"Text Area\" under Field Type and give the text area a depth of 15 rows. Associate the Custom Field with the Content Section (since there is no other Section, it should be selected already), and leave the Location as \"Main Content\". Click the Save button.\r\n\r\n![Symphony Admin : Structure : Custom Fields : Create New : Body](/workspace/assets/images/sym_qwilm_fields_body.jpg)\r\n\r\nNext, create a new Custom Field called \"Page\" with a \"Select Box\" Field Type, with the Options: \"Home, About, Contact, Maintenance\" and a Location in the \"Sidebar\".\r\n\r\n![Symphony Admin : Structure : Custom Fields : Create New : Page](/workspace/assets/images/sym_qwilm_fields_page.jpg)\r\n\r\nFinally, create one more Custom Field called \"Photo\" with a \"File Attachment\" Field Type with \"/workspace/upload/\" selected as the Destination Folder and a Location in the \"Drawer\".\r\n\r\n![Symphony Admin : Structure : Custom Fields : Create New : Photo](/workspace/assets/images/sym_qwilm_fields_photo.jpg)\r\n\r\nGo to Structure : Sections and click on \"Content\" to edit the Section. You can select the check box next to \"Page\" to view this column in the entries list. Now, when you go to Publish : Content, you will see the additional column (still no entries yet). Click on Create New and you will see the new customized interface you just created for the Content Section. \r\n\r\n![Symphony Admin : Publish : Content : Create New](/workspace/assets/images/sym_qwilm_content_entry.jpg)\r\n\r\nClick on the \"More Options\" button to view the upload link for the Photo file attachment field.\r\n\r\n![Symphony Admin : Publish : Content : Create New : Options](/workspace/assets/images/sym_qwilm_content_options.jpg)\r\n\r\n#### Create Content\r\n\r\nFor the moment, I am going to ignore the Photo field as we start creating some basic content for the site. Now we can create an entry for each page. For my home page, I have given the page a Title: \"Welcome\" and selected \"Home\" from the pull-down menu under Page. For the Body, I have the following:\r\n\r\nbq. _Welcome to my website. I am currently in the process of developing a theme for the Symphony Web Publishing System. Please stay tuned while I assemble this website._\r\n\r\n![Symphony Admin : Publish : Content : Create New : Welcome](/workspace/assets/images/sym_qwilm_content_welcome.jpg)\r\n\r\nCreate another entry for the About page, selecting \"About\" from the Page pull-down menu. Then create two more entries, one for the Contact page and the Maintenance page, making sure that you select the appropriate page from the Page pull-down menu for each entry. When you are finished, you should be able to go to Publish : Content to view the list of entries, showing the page that each entry is associated with.\r\n\r\n![Symphony Admin : Publish : Content](/workspace/assets/images/sym_qwilm_content_list.jpg)\r\n\r\n### Transforming Content Data into HTML Output\r\n\r\nTo display our content, we will be retracing our steps in familiar territory, since the same process that we used for creating the navigation template for the main menu will be the same process that we will be using to transform the Content data we have just created into HTML output that we can display on our pages. The difference will be that the templates we build will be specific to individual pages rather than Master templates that apply to several pages.\r\n\r\nThe process goes something like this:\r\n\r\n* Create the Data Source\r\n* Associate the Data Source with a Master or Page Template\r\n* Create the XSL Template\r\n* Test the front end\r\n* Troubleshoot any problems using the ?debug information\r\n\r\n#### The Data Source Editor\r\n\r\nTo view the Data Source Editor, go to Blueprints : Controllers : Data Sources : Create New. Now that we have a new Section, the New Data Source page will look a little different than when we had created the Navigation Data Source. There are a number of options available to us that were not there before. The Data Source Editor responds to the selection of different sources by dynamically offering different options. The Source pull-down menu has defaulted to the selection of the first available Data Source, which is now the Content Section. \r\n\r\n![Symphony Admin : Blueprints : Controllers : Data Sources : Content](/workspace/assets/images/sym_qwilm_ds_content.jpg)\r\n\r\nSo, what are all these options and why would you use them? Well, the XML data associated with a particular Section can become quite large and, if the XSLT template is required to process a very large amount of data, this will increase the amount of time necessary to transform the XML data into HTML output, meaning page load times will become longer than necessary. No one wants a slow site, so it is best to select only the data that is necessary to produce the desired output. Symphony makes it possible to customize the XML Data Source to fit the needs of the page by filtering the data by: \r\n\r\n* URL Parameters\r\n* Custom Field Values\r\n* XML Elements (as part of the Format Options)\r\n* Maximum Number of Records per Page\r\n* Page Numbers\r\n\r\nThere are also some formatting options for the XML data:\r\n\r\n* Entry List\r\n* Group by Date\r\n* Archive Overview\r\n\r\nAn Entry List has the following XML structure:\r\n\r\n	<entries section=\"entries\">\r\n		<entry id=\"102\" handle=\"entry-title\">\r\n			<date>2007-01-03</date>\r\n			<time>12:07</time>\r\n			<author />\r\n			<fields>\r\n				<title handle=\"entry-title\">Entry Title</title>\r\n				<body word-count=\"7\"><p>The body of the entry goes here.</p></body>\r\n			</fields>\r\n			<comments count=\"0\" spam=\"0\" />\r\n		</entry>\r\n	</entries>\r\n\r\nA Data Source that has a Group by Date format has the following XML structure:\r\n\r\n	<entries-grouped-by-date section=\"entries\">\r\n		<year value=\"2007\">\r\n			<month value=\"01\">\r\n				<day value=\"03\">\r\n					<entry id=\"102\" handle=\"entry-title\">\r\n						<date>2007-01-03</date>\r\n						<time>12:07</time>\r\n						<author />\r\n						<fields>\r\n							<title handle=\"entry-title\">Entry Title</title>\r\n							<body word-count=\"7\"><p>The body of the entry goes here.</p></body>\r\n						</fields>\r\n						<comments count=\"0\" spam=\"0\" />\r\n					</entry>\r\n				</day>\r\n			</month>\r\n		</year>\r\n	</entries-grouped-by-date>\r\n\r\nAn Archive Overview has the following XML structure:\r\n\r\n	<archive-overview section=\"entries\" year-start=\"2006\" year-end=\"2007\">\r\n		<year value=\"2007\">\r\n			<month value=\"01\" entry-count=\"2\" />\r\n		</year>\r\n		<year value=\"2006\">\r\n			<month value=\"12\" entry-count=\"0\" />\r\n			<month value=\"11\" entry-count=\"1\" />\r\n			<month value=\"10\" entry-count=\"5\" />\r\n			<month value=\"09\" entry-count=\"5\" />\r\n			<month value=\"08\" entry-count=\"0\" />\r\n			<month value=\"07\" entry-count=\"0\" />\r\n			<month value=\"06\" entry-count=\"0\" />\r\n			<month value=\"05\" entry-count=\"0\" />\r\n			<month value=\"04\" entry-count=\"0\" />\r\n			<month value=\"03\" entry-count=\"0\" />\r\n			<month value=\"02\" entry-count=\"0\" />\r\n			<month value=\"01\" entry-count=\"0\" />\r\n		</year>\r\n	</archive-overview>\r\n\r\nThe Archive Overview and Group by Date formats are intended for features such as a blog archive or listings of news articles which are sorted by date. The Entry List format works well for most applications.\r\n\r\nFinally, the entries can be sorted by the Publish Date, either in ascending order (earliest first) or descending order (latest first). [Note to the Symphony Team: it would be amazing if it were possible to add other options for sorting the XML Data Sources, such as alphabetically, or by custom field to control how entries are listed in each Section.] XSLT offers the `<xsl:sort/>` element to be able to sort the data in other ways for the HTML output.\r\n\r\n#### Create the Data Source\r\n\r\nFor our page content, the Entry List format will work fine. The only fields we really need are the title, body and page elements. (I won\'t be displaying photos with the content, so I will not include this element in the Data Source, since I will address image handling in another tutorial.)\r\n\r\nSo, let\'s go ahead and create a new Data Source with the following features:\r\n\r\n* Name: Content\r\n* Source: Content\r\n* Format Style: Entry List\r\n* Included Elements: title, body, page\r\n* Sort Results by: Ascending Date\r\n* Limit Options: remove limits (leave these fields blank)\r\n\r\n(It is not likely that we will have more than 50 records in our Content section, so it doesn\'t really matter whether we change the Limit Options or not.)\r\n\r\n#### Associate the Data Source with a Master or Page Template\r\n\r\nIt is possible to associate a Data Source with a Master template and/or a Page template. If we remember back to the Navigation template, we associated the Navigation Data Source with the default Master template. Since all our pages use the default Master template, we can easily include the Content Data Source in the Data Source XML for all pages by configuring the default Master template to include the Content Data Source. Otherwise, you can modify the Page Settings by configuring each page to include the Content Data Source. Note that when a Data Source is attached to a Master template, any page the uses this Master template will have an asterisk (*) next to the name of this Data Source in the Page Settings in the select box for Data Source XML. \r\n\r\nSo, let\'s go ahead and attach the Content Data Source to the default Master template by going to Blueprints : Components : Masters : default.xsl. Click on the Configure button and select \"Content\" in the Master Settings : Data Source XML select box and click the Save button.\r\n\r\nWe should now be able to go the home page and view the ?debug information for the page. The XML data should now contain the `<content>` node with four `<entry>` elements. \r\n\r\n#### Create the XSL Template\r\n\r\nNow, we can start creating the XSL templates for our pages. However, before we get there, I need to modify the default Master template.\r\n\r\nIn Part 3, you may have noticed that I obliterated my page heading `<h2>` element by turning it into a list item element for the navigation. Rather than add this back into the default Master template, we can add this code to the Page template. At the same time, I also removed the `<xsl:apply-templates/>` element. This is important to include in the default Master template if we want our Page templates to be included in the XSL stylesheet for each page. First, however, let\'s try something else, because it will be easier than modifying each of our page templates. By adding code to the default Master template, we can affect all our pages. So, go to Blueprints : Components : Masters : default.xsl and add the following code below the `<xsl:call-template name=\"main-menu\"/>` element:\r\n\r\n	<h2><xsl:value-of select=\"$page-title\"/></h2>\r\n	<xsl:copy-of select=\"data/content/entry[fields/page/@handle=$current-page]/fields/body/*\"/>\r\n\r\nThe default Master template should look like this:\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	<xsl:template match=\"/\">\r\n		<html>\r\n			<head>\r\n				<title><xsl:value-of select=\"$page-title\"/></title>\r\n				<style type=\"text/css\">\r\n					li.current a {color:#f00; text-decoration:none;}\r\n				</style>\r\n			</head>\r\n			<body>\r\n				<h1>\r\n					<a href=\"{$root}/\" title=\"Home Page\">\r\n						<xsl:value-of select=\"$website-name\"/>\r\n					</a>\r\n				</h1>\r\n				<xsl:call-template name=\"main-menu\"/>\r\n				<h2><xsl:value-of select=\"$page-title\"/></h2>\r\n				<xsl:copy-of select=\"data/content/entry[fields/page/@handle=$current-page]/fields/body/*\"/>\r\n			</body>\r\n		</html>\r\n	</xsl:template>\r\n	</xsl:stylesheet>\r\n\r\nWhat just happened here? Well, we used a `<xsl:copy-of/>` element to select data from the XML Data Source attached to our default Master template and thereby attached to each of our pages. The \"select\" attribute of the xsl:copy-of element is selecting a node set based on the context node being matched by the default Master template, which is the root of the XML data, indicated by:\r\n\r\n	<xsl:template match=\"/\">\r\n\r\nUsing XPath to find each entry node in the Content Section, we use the following relative expression:\r\n\r\n	select=\"data/content/entry\"\r\n\r\nBut we also want to test for a specific condition: that the handle of the \"Page\" Custom Field for the entry we want to display matches the current page handle. So, we test each entry by using a predicate, a conditional statement enclosed in square brackets:\r\n\r\n	[fields/page/@handle=$current-page]\r\n\r\nOnce we have found the matching entry, we find the Custom Field for the Body of the entry with this expression, relative to the selected entry:\r\n\r\n	fields/body\r\n\r\nAnd, since the `<body>` element contains child elements, such as `<p>` elements, we use the asterisk (*) to copy all the elements contained by the `<body>` element.\r\n\r\nWhy use `<xsl:copy-of/>` instead of `<xsl:value-of/>`? Symphony defaults to some sort of text formatter to ensure that text gets wrapped in some sort of HTML element, at the very least some paragraph tags: `<p>`. Because of this, there are child elements within the `<body>` element and the value of the `<body>` element is empty. So, `<xsl:value-of/>` would return no value. On the other hand, `<xsl:copy-of/>` will reproduce the child elements that are selected. Using the asterisk (*) will select all child elements.\r\n\r\n#### We have content, but no style?\r\n\r\nSo, there we have it! A fully functioning Symphony theme. Well, it ain\'t pretty, but it works. But if our site has no style, who will want to read it? And surely there are some features that are missing. And surely not all of our pages are going to look the same.\r\n\r\nSymphony is all about content *and* style. It\'s time to add some style to our site. Enter Cascading Style Sheets (CSS) in the next installment: [Building a Symphony Theme: Part 5](/journal/building-a-symphony-theme-part-5/) - Integrating CSS and Creating the Entries Section.', '<h3>Creating a Section and Custom Fields</h3>\n\n<p>For the areas of your site that contain static content, you may not need anything more than a text field for the Title and a text area for the Body. We will also need some way to associate the content with a particular page. In the interests of keeping things simple, we&#8217;ll do just that. Go to the Structure menu and select Sections.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_sections.jpg\" alt=\"Symphony Admin : Structure : Sections\" /></p>\n\n<h4>Create a New Section</h4>\n\n<p>Click on the Create New button and give the section the name &#8220;Content&#8221;. It&#8217;s not likely that we&#8217;ll need comments for this type of content so we can deselect the check box beside &#8220;Enable comments for this section&#8221;. You can also choose whether you would like to display the Date and Time widget to select the Publish Date for each entry.</p>\n\n<p>There are couple check boxes under the heading &#8220;Show the following columns&#8221;. This allows you to customize how the entries are listed in the Symphony Admin.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_sections_content.jpg\" alt=\"Symphony Admin : Structure : Sections : Content\" /></p>\n\n<h4>View the Content Entries</h4>\n\n<p>For each Section that you create, a new Custom Field, named &#8220;Title&#8221;, will be created. Go to the Publish menu and you will see that a new Section has been added to the menu. Comments and File Manager will always appear at the bottom of the Publish menu. Select the Content Section from the Publish menu and you will see the column headings for the list of entries, but we have yet to create any entries.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_empty.jpg\" alt=\"Symphony Admin : Publish : Content\" /></p>\n\n<h4>Create a New Content Entry</h4>\n\n<p>Click on the Create New button and you will see a text input field labeled &#8220;Title&#8221; and the &#8220;Date and Time&#8221; widget (a calendar and a list of time values as a pull-down menu) for the Publish Date. If you resize the browser window, you will notice that the &#8220;Title&#8221; input field has a fluid width, while the &#8220;Date and Time&#8221; widget maintains a fixed width.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_entry_01.jpg\" alt=\"Symphony Admin : Publish : Content : Create New\" /></p>\n\n<h4>The Primary Custom Field</h4>\n\n<p>As I mentioned above, a Custom Field was created automatically when the new Section was created. Go to the Structure menu and select Custom Fields and you will find a list of Custom Fields. At the moment there is only one Custom Field associated with the Content Section.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_fields_list_title.jpg\" alt=\"Symphony Admin : Structure : Custom Fields\" /></p>\n\n<p>Click on the title of the Custom Field to edit it. The &#8220;Title&#8221; Custom Field comes with a warning message because it is a Primary Custom Field:</p>\n\n<p>bq. <em>This custom field is linked to the Content section, so you cannot delete or re-associate it, and it must use either a text input or text area field type.</em></p>\n\n<p>It is possible to add a description that will appear to the right of the label for the Custom Field, but this is optional. It is also possible to apply validation rules for each Custom Field. By default, the Primary Custom Field is a required field.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_fields_title.jpg\" alt=\"Symphony Admin : Structure : Custom Fields : Title\" /></p>\n\n<h4>Create New Custom Fields</h4>\n\n<p>For the Content section, we will create three new Custom Fields: Body, Page and Photo, just so we can see how it is possible to customize the placement of these fields in the Admin pages. Go to Structure : Custom Fields : Create New and give it the name, &#8220;Body&#8221;. Select &#8220;Text Area&#8221; under Field Type and give the text area a depth of 15 rows. Associate the Custom Field with the Content Section (since there is no other Section, it should be selected already), and leave the Location as &#8220;Main Content&#8221;. Click the Save button.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_fields_body.jpg\" alt=\"Symphony Admin : Structure : Custom Fields : Create New : Body\" /></p>\n\n<p>Next, create a new Custom Field called &#8220;Page&#8221; with a &#8220;Select Box&#8221; Field Type, with the Options: &#8220;Home, About, Contact, Maintenance&#8221; and a Location in the &#8220;Sidebar&#8221;.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_fields_page.jpg\" alt=\"Symphony Admin : Structure : Custom Fields : Create New : Page\" /></p>\n\n<p>Finally, create one more Custom Field called &#8220;Photo&#8221; with a &#8220;File Attachment&#8221; Field Type with &#8220;/workspace/upload/&#8221; selected as the Destination Folder and a Location in the &#8220;Drawer&#8221;.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_fields_photo.jpg\" alt=\"Symphony Admin : Structure : Custom Fields : Create New : Photo\" /></p>\n\n<p>Go to Structure : Sections and click on &#8220;Content&#8221; to edit the Section. You can select the check box next to &#8220;Page&#8221; to view this column in the entries list. Now, when you go to Publish : Content, you will see the additional column (still no entries yet). Click on Create New and you will see the new customized interface you just created for the Content Section.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_entry.jpg\" alt=\"Symphony Admin : Publish : Content : Create New\" /></p>\n\n<p>Click on the &#8220;More Options&#8221; button to view the upload link for the Photo file attachment field.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_options.jpg\" alt=\"Symphony Admin : Publish : Content : Create New : Options\" /></p>\n\n<h4>Create Content</h4>\n\n<p>For the moment, I am going to ignore the Photo field as we start creating some basic content for the site. Now we can create an entry for each page. For my home page, I have given the page a Title: &#8220;Welcome&#8221; and selected &#8220;Home&#8221; from the pull-down menu under Page. For the Body, I have the following:</p>\n\n<p>bq. <em>Welcome to my website. I am currently in the process of developing a theme for the Symphony Web Publishing System. Please stay tuned while I assemble this website.</em></p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_welcome.jpg\" alt=\"Symphony Admin : Publish : Content : Create New : Welcome\" /></p>\n\n<p>Create another entry for the About page, selecting &#8220;About&#8221; from the Page pull-down menu. Then create two more entries, one for the Contact page and the Maintenance page, making sure that you select the appropriate page from the Page pull-down menu for each entry. When you are finished, you should be able to go to Publish : Content to view the list of entries, showing the page that each entry is associated with.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_content_list.jpg\" alt=\"Symphony Admin : Publish : Content\" /></p>\n\n<h3>Transforming Content Data into HTML Output</h3>\n\n<p>To display our content, we will be retracing our steps in familiar territory, since the same process that we used for creating the navigation template for the main menu will be the same process that we will be using to transform the Content data we have just created into HTML output that we can display on our pages. The difference will be that the templates we build will be specific to individual pages rather than Master templates that apply to several pages.</p>\n\n<p>The process goes something like this:</p>\n\n<ul>\n<li>Create the Data Source</li>\n<li>Associate the Data Source with a Master or Page Template</li>\n<li>Create the XSL Template</li>\n<li>Test the front end</li>\n<li>Troubleshoot any problems using the ?debug information</li>\n</ul>\n\n<h4>The Data Source Editor</h4>\n\n<p>To view the Data Source Editor, go to Blueprints : Controllers : Data Sources : Create New. Now that we have a new Section, the New Data Source page will look a little different than when we had created the Navigation Data Source. There are a number of options available to us that were not there before. The Data Source Editor responds to the selection of different sources by dynamically offering different options. The Source pull-down menu has defaulted to the selection of the first available Data Source, which is now the Content Section.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_ds_content.jpg\" alt=\"Symphony Admin : Blueprints : Controllers : Data Sources : Content\" /></p>\n\n<p>So, what are all these options and why would you use them? Well, the XML data associated with a particular Section can become quite large and, if the XSLT template is required to process a very large amount of data, this will increase the amount of time necessary to transform the XML data into HTML output, meaning page load times will become longer than necessary. No one wants a slow site, so it is best to select only the data that is necessary to produce the desired output. Symphony makes it possible to customize the XML Data Source to fit the needs of the page by filtering the data by:</p>\n\n<ul>\n<li>URL Parameters</li>\n<li>Custom Field Values</li>\n<li>XML Elements (as part of the Format Options)</li>\n<li>Maximum Number of Records per Page</li>\n<li>Page Numbers</li>\n</ul>\n\n<p>There are also some formatting options for the XML data:</p>\n\n<ul>\n<li>Entry List</li>\n<li>Group by Date</li>\n<li>Archive Overview</li>\n</ul>\n\n<p>An Entry List has the following XML structure:</p>\n\n<pre><code>&lt;entries section=\"entries\"&gt;\n    &lt;entry id=\"102\" handle=\"entry-title\"&gt;\n        &lt;date&gt;2007-01-03&lt;/date&gt;\n        &lt;time&gt;12:07&lt;/time&gt;\n        &lt;author /&gt;\n        &lt;fields&gt;\n            &lt;title handle=\"entry-title\"&gt;Entry Title&lt;/title&gt;\n            &lt;body word-count=\"7\"&gt;&lt;p&gt;The body of the entry goes here.&lt;/p&gt;&lt;/body&gt;\n        &lt;/fields&gt;\n        &lt;comments count=\"0\" spam=\"0\" /&gt;\n    &lt;/entry&gt;\n&lt;/entries&gt;\n</code></pre>\n\n<p>A Data Source that has a Group by Date format has the following XML structure:</p>\n\n<pre><code>&lt;entries-grouped-by-date section=\"entries\"&gt;\n    &lt;year value=\"2007\"&gt;\n        &lt;month value=\"01\"&gt;\n            &lt;day value=\"03\"&gt;\n                &lt;entry id=\"102\" handle=\"entry-title\"&gt;\n                    &lt;date&gt;2007-01-03&lt;/date&gt;\n                    &lt;time&gt;12:07&lt;/time&gt;\n                    &lt;author /&gt;\n                    &lt;fields&gt;\n                        &lt;title handle=\"entry-title\"&gt;Entry Title&lt;/title&gt;\n                        &lt;body word-count=\"7\"&gt;&lt;p&gt;The body of the entry goes here.&lt;/p&gt;&lt;/body&gt;\n                    &lt;/fields&gt;\n                    &lt;comments count=\"0\" spam=\"0\" /&gt;\n                &lt;/entry&gt;\n            &lt;/day&gt;\n        &lt;/month&gt;\n    &lt;/year&gt;\n&lt;/entries-grouped-by-date&gt;\n</code></pre>\n\n<p>An Archive Overview has the following XML structure:</p>\n\n<pre><code>&lt;archive-overview section=\"entries\" year-start=\"2006\" year-end=\"2007\"&gt;\n    &lt;year value=\"2007\"&gt;\n        &lt;month value=\"01\" entry-count=\"2\" /&gt;\n    &lt;/year&gt;\n    &lt;year value=\"2006\"&gt;\n        &lt;month value=\"12\" entry-count=\"0\" /&gt;\n        &lt;month value=\"11\" entry-count=\"1\" /&gt;\n        &lt;month value=\"10\" entry-count=\"5\" /&gt;\n        &lt;month value=\"09\" entry-count=\"5\" /&gt;\n        &lt;month value=\"08\" entry-count=\"0\" /&gt;\n        &lt;month value=\"07\" entry-count=\"0\" /&gt;\n        &lt;month value=\"06\" entry-count=\"0\" /&gt;\n        &lt;month value=\"05\" entry-count=\"0\" /&gt;\n        &lt;month value=\"04\" entry-count=\"0\" /&gt;\n        &lt;month value=\"03\" entry-count=\"0\" /&gt;\n        &lt;month value=\"02\" entry-count=\"0\" /&gt;\n        &lt;month value=\"01\" entry-count=\"0\" /&gt;\n    &lt;/year&gt;\n&lt;/archive-overview&gt;\n</code></pre>\n\n<p>The Archive Overview and Group by Date formats are intended for features such as a blog archive or listings of news articles which are sorted by date. The Entry List format works well for most applications.</p>\n\n<p>Finally, the entries can be sorted by the Publish Date, either in ascending order (earliest first) or descending order (latest first). [Note to the Symphony Team: it would be amazing if it were possible to add other options for sorting the XML Data Sources, such as alphabetically, or by custom field to control how entries are listed in each Section.] XSLT offers the <code>&lt;xsl:sort/&gt;</code> element to be able to sort the data in other ways for the HTML output.</p>\n\n<h4>Create the Data Source</h4>\n\n<p>For our page content, the Entry List format will work fine. The only fields we really need are the title, body and page elements. (I won&#8217;t be displaying photos with the content, so I will not include this element in the Data Source, since I will address image handling in another tutorial.)</p>\n\n<p>So, let&#8217;s go ahead and create a new Data Source with the following features:</p>\n\n<ul>\n<li>Name: Content</li>\n<li>Source: Content</li>\n<li>Format Style: Entry List</li>\n<li>Included Elements: title, body, page</li>\n<li>Sort Results by: Ascending Date</li>\n<li>Limit Options: remove limits (leave these fields blank)</li>\n</ul>\n\n<p>(It is not likely that we will have more than 50 records in our Content section, so it doesn&#8217;t really matter whether we change the Limit Options or not.)</p>\n\n<h4>Associate the Data Source with a Master or Page Template</h4>\n\n<p>It is possible to associate a Data Source with a Master template and/or a Page template. If we remember back to the Navigation template, we associated the Navigation Data Source with the default Master template. Since all our pages use the default Master template, we can easily include the Content Data Source in the Data Source XML for all pages by configuring the default Master template to include the Content Data Source. Otherwise, you can modify the Page Settings by configuring each page to include the Content Data Source. Note that when a Data Source is attached to a Master template, any page the uses this Master template will have an asterisk (*) next to the name of this Data Source in the Page Settings in the select box for Data Source XML.</p>\n\n<p>So, let&#8217;s go ahead and attach the Content Data Source to the default Master template by going to Blueprints : Components : Masters : default.xsl. Click on the Configure button and select &#8220;Content&#8221; in the Master Settings : Data Source XML select box and click the Save button.</p>\n\n<p>We should now be able to go the home page and view the ?debug information for the page. The XML data should now contain the <code>&lt;content&gt;</code> node with four <code>&lt;entry&gt;</code> elements.</p>\n\n<h4>Create the XSL Template</h4>\n\n<p>Now, we can start creating the XSL templates for our pages. However, before we get there, I need to modify the default Master template.</p>\n\n<p>In Part 3, you may have noticed that I obliterated my page heading <code>&lt;h2&gt;</code> element by turning it into a list item element for the navigation. Rather than add this back into the default Master template, we can add this code to the Page template. At the same time, I also removed the <code>&lt;xsl:apply-templates/&gt;</code> element. This is important to include in the default Master template if we want our Page templates to be included in the XSL stylesheet for each page. First, however, let&#8217;s try something else, because it will be easier than modifying each of our page templates. By adding code to the default Master template, we can affect all our pages. So, go to Blueprints : Components : Masters : default.xsl and add the following code below the <code>&lt;xsl:call-template name=\"main-menu\"/&gt;</code> element:</p>\n\n<pre><code>&lt;h2&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/h2&gt;\n&lt;xsl:copy-of select=\"data/content/entry[fields/page/@handle=$current-page]/fields/body/*\"/&gt;\n</code></pre>\n\n<p>The default Master template should look like this:</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n&lt;xsl:template match=\"/\"&gt;\n    &lt;html&gt;\n        &lt;head&gt;\n            &lt;title&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/title&gt;\n            &lt;style type=\"text/css\"&gt;\n                li.current a {color:#f00; text-decoration:none;}\n            &lt;/style&gt;\n        &lt;/head&gt;\n        &lt;body&gt;\n            &lt;h1&gt;\n                &lt;a href=\"{$root}/\" title=\"Home Page\"&gt;\n                    &lt;xsl:value-of select=\"$website-name\"/&gt;\n                &lt;/a&gt;\n            &lt;/h1&gt;\n            &lt;xsl:call-template name=\"main-menu\"/&gt;\n            &lt;h2&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/h2&gt;\n            &lt;xsl:copy-of select=\"data/content/entry[fields/page/@handle=$current-page]/fields/body/*\"/&gt;\n        &lt;/body&gt;\n    &lt;/html&gt;\n&lt;/xsl:template&gt;\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>What just happened here? Well, we used a <code>&lt;xsl:copy-of/&gt;</code> element to select data from the XML Data Source attached to our default Master template and thereby attached to each of our pages. The &#8220;select&#8221; attribute of the xsl:copy-of element is selecting a node set based on the context node being matched by the default Master template, which is the root of the XML data, indicated by:</p>\n\n<pre><code>&lt;xsl:template match=\"/\"&gt;\n</code></pre>\n\n<p>Using XPath to find each entry node in the Content Section, we use the following relative expression:</p>\n\n<pre><code>select=\"data/content/entry\"\n</code></pre>\n\n<p>But we also want to test for a specific condition: that the handle of the &#8220;Page&#8221; Custom Field for the entry we want to display matches the current page handle. So, we test each entry by using a predicate, a conditional statement enclosed in square brackets:</p>\n\n<pre><code>[fields/page/@handle=$current-page]\n</code></pre>\n\n<p>Once we have found the matching entry, we find the Custom Field for the Body of the entry with this expression, relative to the selected entry:</p>\n\n<pre><code>fields/body\n</code></pre>\n\n<p>And, since the <code>&lt;body&gt;</code> element contains child elements, such as <code>&lt;p&gt;</code> elements, we use the asterisk (*) to copy all the elements contained by the <code>&lt;body&gt;</code> element.</p>\n\n<p>Why use <code>&lt;xsl:copy-of/&gt;</code> instead of <code>&lt;xsl:value-of/&gt;</code>? Symphony defaults to some sort of text formatter to ensure that text gets wrapped in some sort of HTML element, at the very least some paragraph tags: <code>&lt;p&gt;</code>. Because of this, there are child elements within the <code>&lt;body&gt;</code> element and the value of the <code>&lt;body&gt;</code> element is empty. So, <code>&lt;xsl:value-of/&gt;</code> would return no value. On the other hand, <code>&lt;xsl:copy-of/&gt;</code> will reproduce the child elements that are selected. Using the asterisk (*) will select all child elements.</p>\n\n<h4>We have content, but no style?</h4>\n\n<p>So, there we have it! A fully functioning Symphony theme. Well, it ain&#8217;t pretty, but it works. But if our site has no style, who will want to read it? And surely there are some features that are missing. And surely not all of our pages are going to look the same.</p>\n\n<p>Symphony is all about content <em>and</em> style. It&#8217;s time to add some style to our site. Enter Cascading Style Sheets (CSS) in the next installment: <a href=\"/journal/building-a-symphony-theme-part-5/\">Building a Symphony Theme: Part 5</a> - Integrating CSS and Creating the Entries Section.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 106, '#### First, A Little History\r\n\r\nThe Symphony 1.5 Public Release was to be named [Symphony 1.2](http://overture21.com/forum/comments.php?DiscussionID=299) and was to be the introduction of a new distribution model: rather than providing a separate serial number and installer for each purchased license to allow installation of a single site, the Symphony Team released the application to the public for free. The application remains the intellectual property of Twentyone Degrees, so Symphony has [not been released as open source software](http://overture21.com/forum/comments.php?DiscussionID=556). However, for each registered Symphony account, multiple sites can be installed. The changes and improvements made to Symphony 1.1 were significant, so the public release was called Symphony 1.5 rather than Symphony 1.2. Extensive changes and improvements were made to the database structure and interface which allowed for greater levels of application customization. Unfortunately, the changes were extensive enough to make updating existing sites unfeasible. A means for migrating sites from Symphony 1.1 to Symphony 1.5 has not yet materialized, although it is said to be on the to do list.\r\n\r\n#### Symphony Status Widget\r\n\r\n<img class=\"right\" src=\"/workspace/assets/images/sym_widgets_update_avail.jpg\" alt=\"Symphony Updates Available\"/> When an update is available for the Symphony application or for any installed Campfire Services, a Status Widget located in the upper right of the Symphony Admin will be highlighted green. Click on the Status Widget icon to view Recent Entries, Recent Comments and System Updates. Under System Updates, you will find any available updates for Symphony and for Campfire Services as well as information about the version currently installed.\r\n\r\n![Symphony Admin : System Updates Available](/workspace/assets/images/sym_status_open_cubic.jpg)\r\n\r\nTo update Symphony to the latest version, click on the update link: Get Symphony 1.5.06. You will be greeted with an Install button with instructions and details about the update. It is highly recommended that you backup your database and workspace folder before performing the update. For our Symphony theme building exercise, this may be a worthwhile exercise as well, though not necessary, since it might be just as easy to reinstall by dropping all the tables from your database, deleting all the Symphony files from the server and running the installer again.\r\n\r\n![Symphony Admin : Update Symphony](/workspace/assets/images/sym_update_install.jpg)\r\n\r\nOnce you are satisfied that you have the means to return to the way things were, should anything go wrong during the update process, feel free to click on the shiny green Install button. If all goes well, you should be greeted by the Publish page. (My update worked quite well, but I was greeted by a blank page. I clicked on my back button to get back to the Symphony Admin, then clicked on the Status Widget to find that my site had indeed been updated to Symphony 1.5.06. We\'ll see if the Symphony Team is able to clean up this minor behaviour glitch in short order.)\r\n\r\n#### Other Widgets\r\n\r\nWhile we are on the subject of widgets, you might like to take a look at the Search and Calendar Widgets as well. The Symphony Admin has some lovely AJAX drawers that reveal other means of finding and creating entries.\r\n\r\n##### Search Widget\r\n\r\nFind the entry you are looking for by key word.\r\n\r\n![Symphony Admin : Search Widget](/workspace/assets/images/sym_search_widget_cubic.jpg)\r\n\r\n##### Calendar Widget\r\n\r\nFind an entry by date.\r\n\r\n![Symphony Admin : Calendar Widget](/workspace/assets/images/sym_calendar_widget_cubic.jpg)\r\n\r\nNow, back to our regularly scheduled programming: [Building a Symphony Theme: Part 2](/journal/building-a-symphony-theme-part-2/)', '<h4>First, A Little History</h4>\n\n<p>The Symphony 1.5 Public Release was to be named <a href=\"http://overture21.com/forum/comments.php?DiscussionID=299\">Symphony 1.2</a> and was to be the introduction of a new distribution model: rather than providing a separate serial number and installer for each purchased license to allow installation of a single site, the Symphony Team released the application to the public for free. The application remains the intellectual property of Twentyone Degrees, so Symphony has <a href=\"http://overture21.com/forum/comments.php?DiscussionID=556\">not been released as open source software</a>. However, for each registered Symphony account, multiple sites can be installed. The changes and improvements made to Symphony 1.1 were significant, so the public release was called Symphony 1.5 rather than Symphony 1.2. Extensive changes and improvements were made to the database structure and interface which allowed for greater levels of application customization. Unfortunately, the changes were extensive enough to make updating existing sites unfeasible. A means for migrating sites from Symphony 1.1 to Symphony 1.5 has not yet materialized, although it is said to be on the to do list.</p>\n\n<h4>Symphony Status Widget</h4>\n\n<p><img class=\"right\" src=\"/workspace/assets/images/sym_widgets_update_avail.jpg\" alt=\"Symphony Updates Available\"/> When an update is available for the Symphony application or for any installed Campfire Services, a Status Widget located in the upper right of the Symphony Admin will be highlighted green. Click on the Status Widget icon to view Recent Entries, Recent Comments and System Updates. Under System Updates, you will find any available updates for Symphony and for Campfire Services as well as information about the version currently installed.</p>\n\n<p><img src=\"/workspace/assets/images/sym_status_open_cubic.jpg\" alt=\"Symphony Admin : System Updates Available\" /></p>\n\n<p>To update Symphony to the latest version, click on the update link: Get Symphony 1.5.06. You will be greeted with an Install button with instructions and details about the update. It is highly recommended that you backup your database and workspace folder before performing the update. For our Symphony theme building exercise, this may be a worthwhile exercise as well, though not necessary, since it might be just as easy to reinstall by dropping all the tables from your database, deleting all the Symphony files from the server and running the installer again.</p>\n\n<p><img src=\"/workspace/assets/images/sym_update_install.jpg\" alt=\"Symphony Admin : Update Symphony\" /></p>\n\n<p>Once you are satisfied that you have the means to return to the way things were, should anything go wrong during the update process, feel free to click on the shiny green Install button. If all goes well, you should be greeted by the Publish page. (My update worked quite well, but I was greeted by a blank page. I clicked on my back button to get back to the Symphony Admin, then clicked on the Status Widget to find that my site had indeed been updated to Symphony 1.5.06. We&#8217;ll see if the Symphony Team is able to clean up this minor behaviour glitch in short order.)</p>\n\n<h4>Other Widgets</h4>\n\n<p>While we are on the subject of widgets, you might like to take a look at the Search and Calendar Widgets as well. The Symphony Admin has some lovely AJAX drawers that reveal other means of finding and creating entries.</p>\n\n<h5>Search Widget</h5>\n\n<p>Find the entry you are looking for by key word.</p>\n\n<p><img src=\"/workspace/assets/images/sym_search_widget_cubic.jpg\" alt=\"Symphony Admin : Search Widget\" /></p>\n\n<h5>Calendar Widget</h5>\n\n<p>Find an entry by date.</p>\n\n<p><img src=\"/workspace/assets/images/sym_calendar_widget_cubic.jpg\" alt=\"Symphony Admin : Calendar Widget\" /></p>\n\n<p>Now, back to our regularly scheduled programming: <a href=\"/journal/building-a-symphony-theme-part-2/\">Building a Symphony Theme: Part 2</a></p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 111, '### Creating the Theme\r\n\r\nSince we are creating a theme for Symphony based on the qwilm theme created by [Lokesh Dhakar](http://www.huddletogether.com/), let\'s link our templates to an external CSS file that contains the styles for the theme, using relative links for the images used by the CSS stylesheet. All the files that we create in Symphony are stored in the `/workspace/` folder so that we can easily move the site to a different location on the server, or to an entirely different server. Essentially, the `/symphony/` directory contains the application, through which you administer your site, and the `/workspace/` directory contains all the files that are specific to your site and control the page structures, behaviours and styles. Note that Symphony\'s File Manager allows us to create files only in the `/workspace/` directory, but it cannot create additional directories. While it is not necessary to store external CSS files in the `/workspace/` directory, it makes sense to do so, especially when developing a theme. In effect, everything that exists in the workspace directory is the theme. Change the `/workspace/` directory and you can have a completely different site.\r\n\r\n#### Connect to the CSS file\r\n\r\nDownload the [ZIP file](/workspace/files/qwilm_css.zip) that contains the CSS and image files for the qwilm theme. The files are all contained within a directory named \"css\". Place this directory in the `/workspace/` directory. The style.css file within the `/css/` directory contains style declarations with relative URLs for images in the `/css/images/` directory. The Symphony File Manager allows us to save and view GIF, JPEG, PNG, CSS,  Javascript, XSL and PHP files contained in any directory or subdirectory within the `/workspace/` directory. Symphony finds all the CSS and Javascript files in the `/workspace/` directory and displays a list of links to each of these files in the Blueprints : Components page under the heading \"Assets\". To modify the style.css file, you can click on the link to open and edit the file. You can also upload files to any directory or subdirectory in your `/workspace/` directory by going to Publish : File Manager and clicking on the upload button. View the files in the `/workspace/` directory by selecting the directory you would like to view from the pull-down menu in the upper right corner of the page.\r\n\r\nYou can view a list of the image files in the `/workspace/css/images/` directory and you should see something like this:\r\n\r\n![Symphony Admin : Publish : File Manager : CSS Images](/workspace/assets/images/sym_qwilm_file_manager_01.jpg)\r\n\r\nAdd the following code to the `<head>` element of the default.xsl Master template:\r\n\r\n	<link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"{$root}/workspace/css/style.css\" />\r\n\r\nYou could also use the following without the `$root` parameter, since you would need some additional XSLT code to properly add the value for `$root` to the URL. \r\n\r\n	<style type=\"text/css\" media=\"screen\">\r\n		@import url(/workspace/css/style.css);\r\n	</style>\r\n\r\nIf you are interested in dynamically modifying the URL for the CSS file, it is possible to use the XSL concatenate function to create the text string for the `import directive:\r\n\r\n	<style type=\"text/css\" media=\"screen\">\r\n		<xsl:value-of select=\"concat(\'`import url(\',$root,\'/workspace/css/style.css);\')\"/>\r\n	</style>\r\n\r\nWe can view the front end of our site and see that the pages are now connected to the CSS file. \r\n\r\n#### Duplicate the intended HTML structure\r\n\r\nNow, we need to duplicate the intended HTML structure before the pages will display properly. The easiest way to accomplish this would be to copy the HTML structure into the Master template, then start replacing the static HTML elements with XSLT templates. In part two, I provided the basic page structure of the qwilm theme with some sample content that represents most of the HTML elements that we will need to reproduce with our XSLT templates.\r\n\r\nFirst, let\'s create a new file called qwilm.html by going to Blueprints : Components : Assets : Create New and give the asset the name qwilm.html and paste the HTML page from Part 2 into the body of this new asset. \r\n\r\n![Symphony Admin : Blueprints : Components](/workspace/assets/images/sym_qwilm_components_02.jpg)\r\n\r\nIf you would rather, you can also download the [qwilm.html](/workspace/files/qwilm.html) file and upload the file to your `/workspace/` directory by going to Publish : File Manager and clicking on the Upload button. \r\n\r\n![Symphony Admin : Publish : File Manager : Upload](/workspace/assets/images/sym_qwilm_file_upload.jpg)\r\n\r\nNavigate to this test page at the following address:\r\n\r\n	http://sym.qwilm.site/workspace/qwilm.html\r\n\r\nNow, we should be able to see the structure and style displaying as intended. \r\n\r\n#### Replace static HTML elements with XSLT code\r\n\r\nTo apply this structure to our templates, let\'s copy all the elements inside the `<body>` element and paste these into the `<body>` element of the default Master template. For now, replace everything that we have created so far in the `<body>` element of the default.xsl template. You can copy these elements from the code samples below to place the XSL code into the appropriate areas of the intended page structure.\r\n\r\nThe website name should appear in two different places in the qwilm theme. The `<h1>` element has been hidden by a CSS rule, but the element is still there. Find the `<div id=\"header\">` element and replace it with the following:\r\n\r\n	<div id=\"header\">\r\n		<h1>\r\n			<a href=\"{$root}/\" title=\"Home\">\r\n				<xsl:value-of select=\"$website-name\"/>\r\n			</a>\r\n		</h1>\r\n	</div>\r\n\r\nThere is another `<div>` element at the bottom of the page that contains the home page link. While the `<h1>` at the top of the page is hidden by a CSS rule, this `<h3>` element at the bottom becomes the home page link that displays on the page. Replace this with the following:\r\n\r\n	<div class=\"box sidebar\" id=\"sidebar-3\">\r\n		<h3>\r\n			<a href=\"{$root}/\" title=\"Home\">\r\n				<xsl:value-of select=\"$website-name\"/>\r\n			</a>\r\n		</h3>\r\n	</div>\r\n\r\nThe page heading and the content body can go in the \"sidebar-2\" `<div>` element. We\'ll keep the list of Meta links for now, even though the feed links don\'t yet point to anything that exists.\r\n\r\n	<div class=\"box sidebar\" id=\"sidebar-2\">\r\n		<ul>\r\n			<li>\r\n				<h2>Main Menu</h2>\r\n				<xsl:call-template name=\"main-menu\"/>\r\n			</li>\r\n			<li>\r\n				<h2><xsl:value-of select=\"$page-title\"/></h2>\r\n				<xsl:copy-of select=\"data/content/entry[fields/page/`handle=$current-page]/fields/body/*\"/>\r\n			</li>\r\n			<li>\r\n				<h2>Meta</h2>\r\n				<ul>\r\n					<li><a href=\"/feed/\" title=\"Syndicate this site using RSS 2.0\">Entries <abbr title=\"Really Simple Syndication\">RSS</abbr></a></li>\r\n					<li><a href=\"/comments/feed/\" title=\"The latest comments to all posts in RSS\">Comments <abbr title=\"Really Simple Syndication\">RSS</abbr></a></li>\r\n					<li><a href=\"http://21degrees.com.au/products/symphony/\" \r\n					title=\"The Symphony Web Publishing System from Twentyone Degrees\">Symphony</a></li>\r\n				</ul>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n\r\nIf all goes well, you should see a page that looks like this (depending on the size of your browser window):\r\n\r\n<a href=\"/workspace/assets/images/sym_qwilm_home_04.jpg\">\r\n<img src=\"/image/1/540/0/assets/images/sym_qwilm_home_04.jpg\" \r\ntitle=\"qwilm theme : Home Page : Click to view a larger image\" \r\nalt=\"qwilm theme : Home Page : Click to view a larger image\" />\r\n</a>\r\n\r\nTo view the full-size image of the theme, click on the image. Use the back button of your browser to return to this page. \r\n\r\n#### Symphony\'s Image Function\r\n\r\nJust as an aside, Symphony has a great built-in image function that uses PHP to dynamically resize images on the fly before sending the results to the browser. For the above image, I uploaded only the full-size image. Symphony has created the smaller image for me. The HTML code to accomplish this bit of magic is as follows:\r\n\r\n	<a href=\"/workspace/assets/images/sym_qwilm_home_04.jpg\">\r\n		<img src=\"/image/540/0/0/fff/assets/images/sym_qwilm_home_04.jpg\" \r\n			title=\"qwilm theme : Home Page : Click to view a larger image\" \r\n			alt=\"qwilm theme : Home Page : Click to view a larger image\" />\r\n	</a>\r\n\r\nFor details on how to utilize this in your templates, refer to the Overture Forum thread regarding [Symphony\'s built-in image functions(Overture Forum: built in image functions)](http://overture21.com/forum/comments.php?DiscussionID=191&page=1#Item_0) or view the [Image Function(Overture Wiki: Image Function)](http://overture21.com/wiki/templating-system/development-tools/image-manipulation-function) entry in the Overture Wiki.\r\n\r\nFor the sake of demonstration, following are some links for different sizes of this same image:\r\n\r\n* [40 pixels wide](/image/40/0/0/fff/images/sym_qwilm_home_04.jpg)\r\n* [100 pixels wide](/image/100/0/0/fff/images/sym_qwilm_home_04.jpg)\r\n* [200 pixels wide](/image/200/0/0/fff/images/sym_qwilm_home_04.jpg)\r\n* [300 pixels wide](/image/300/0/0/fff/images/sym_qwilm_home_04.jpg)\r\n* [100 pixels tall](/image/0/100/0/fff/images/sym_qwilm_home_04.jpg)\r\n* [200 pixels tall](/image/0/200/0/fff/images/sym_qwilm_home_04.jpg)\r\n\r\nThis image function opens up some interesting possibilities, such as using Symphony to manage an image library and dynamically serve XML data and images to Flash for [SlideShowPro](http://slideshowpro.net/), or using Lokesh Dhakar\'s very own [Lightbox](http://www.huddletogether.com/projects/lightbox2/) to develop a CSS image gallery. But, I\'ll get to that some time later.\r\n\r\n### Adding the Blogging Features\r\n\r\nLokesh Dhakar\'s qwilm design, which he describes as \"just as simple blog,\" was intended to be used as a [WordPress blog theme](http://themes.wordpress.net/columns/3-columns/61/qwilm-03/), so it contains the usual features: Archives, Recent Posts, Categories, Search, Comments and XML/RSS feeds. All of these items are content related to weblog entries and the different ways you can find entries (archives, recent, categories, search) or interact with them (reading and posting comments, receiving notification of the latest additions through a RSS news reader). These features go beyond the basic Data Source that we created for the Content Section. We could use the Content Section, but we don\'t want the static content being mixed with weblog entries. We could use XSLT to filter the results so as not to include static content. But why not create another Section to create a clear separation in the XML data between static content and weblog entries? So, let\'s create another Section for weblog entries called \"Entries\".\r\n\r\n#### Determine what Custom Fields are required\r\n\r\nIt is possible to create several Custom Fields to associate with a Section, then create a Data Source and later add some additional Custom Fields. However, these new Custom Fields are not automatically added to the Data Source we created before. To include the new Custom Fields, we need to go back to Blueprints : Controllers : Data Sources to modify the Data Source to include the new Custom Fields. The same principle holds true if you rename a Custom Field. The Data Source you created previous to the name change will be looking for the old name for the Custom Field and will not find it. The Data Source needs to be updated to include the Custom Field with its new name.\r\n\r\nFor this reason, it is good to create all the custom fields that will be associated with a Section before creating the Data Source, or we might find ourselves returning again and again to the Data Sources Editor to update the Data Source. To keep the page load time down, we may want to limit the amount of data we pass to the XSLT processor. To do this, we may create many different Data Sources which use the same source, but have been optimized to filter entries based on a number of different conditions. If at any time we add another Custom Field to the Section that we want to include in all these Data Sources, we\'ll need to update each Data Source individually.\r\n\r\nFirst, then, let\'s create a list of the items that we need to display:\r\n\r\n* Title\r\n* Date and Time\r\n* Excerpt\r\n* Body\r\n* Photo\r\n* Photo Caption\r\n* Categories\r\n* Tags (I just threw this one in)\r\n\r\n#### Create the Entries Section\r\n\r\nGo to Structure : Sections and create a new Section called \"Entries.\" This time, keep all the defaults selected, including \"Enable comments for this section.\"\r\n\r\n![Symphony Admin : Structure : Sections : New Section](/workspace/assets/images/sym_qwilm_sections_entries.jpg)\r\n\r\nSave the new Section and we will find ourselves back at the Sections list, which shows that a Primary field has been created with the name \"Title\". Click on this link and we can change the name of the Primary field to \"Entry Title\".\r\n\r\n#### Create Custom Fields associated with the Entries Section\r\n\r\nIt is possible to have several Custom Fields with the same name but used for different sections. For instance, a Custom Field called \"Title\" will be common for most sections. It may be necessary to differentiate between these fields in the XSL code. The simplest way to ensure that the XSL code can differentiate between these fields is to give them a different name. There may be instances where you might want to apply the same template to Data Sources from multiple Sections, in which case, it makes sense to create Custom Fields with the same name. For the sake of this tutorial, I will allow Custom Fields with identical names, although some have recommended otherwise on the Overture Forum (some [problems](http://overture21.com/forum/comments.php?DiscussionID=547) and [fixes](http://overture21.com/forum/comments.php?DiscussionID=831) have been noted due to identical names). \r\n\r\nGo to Structure : Custom Fields and create Custom Fields with the following names, choosing the settings shown in parentheses with this syntax: (type, attribute; location). We will configure each of these Custom Fields to be associated with the \"Entries\" Section:\r\n\r\n_Note that you will need to create a new directory in the `/workspace/` directory for the Entry Photos -- unfortunately, Symphony cannot do this (yet). When you create this directory, ensure that it has been assigned the privileges necessary to allow Symphony to read and write files to it._\r\n\r\n* Title (Primary Custom Field, created automatically)\r\n* Publish Date and Time (created automatically)\r\n* Excerpt (text area, 10 rows; main content)\r\n* Body (text area, 25 rows; main content)\r\n* Photo (file attachment, directory: `workspace/photos/`; drawer)\r\n* Photo Caption (text input; drawer)\r\n* Categories (select box, multiple items: Yes, options: General, Technology, Personal, Work; sidebar)\r\n* Tags (text input, description: \"Comma separated tags\", Split by commas: Yes; main content)\r\n* Publish (checkbox with description: Publish this entry, Checked by default: Yes; sidebar)\r\n\r\nNow, go to Structure : Sections and click on the Reorder button in the upper right. You can control the order of the menu items in the Publish menu by reordering the Sections. Click on the row for Entries and drag the row to the top position in the list, the click on the Done button.\r\n\r\n![Symphony Admin : Structure : Sections : Reorder](/workspace/assets/images/sym_qwilm_sections_reorder.jpg)\r\n\r\nClick on the name of the Entries Section to edit it and click on the checkbox next to Publish so we can add the Publish field to the columns displayed in the Entries list.\r\n\r\nGo to the Publish menu to see the new Entries Section added to the top of the menu. Select Entries and click on the Create New button. (At this point, if your `/workspace/photos/` directory is not writable, you will see an error until you fix the privileges for the directory. Set permissions to 777 or 755 depending on server requirements.) If all goes well, we should see our new Entries Section, including a couple of additional Custom Fields that can be accessed by clicking on the More Options button. We may not have a photo to associate with every entry, so we can keep the associated Custom Fields from cluttering the page, but they are there when we need them.\r\n\r\n#### Create the Data Source\r\n\r\nWe can go ahead and start creating entries, but we won\'t be able to do anything with the data in our templates until we have created a Data Source to associate with our Master and/or Page templates. Let\'s go ahead and do this now. Go to Blueprints : Controllers : Data Sources : Create New, give the Data Source the name \"Entries\" and use the Entries Section as the source. By default, several elements are selected under Format Options : Included Elements. These elements will work fine for what we want to accomplish. As blogs tend to order entries by starting with the most recent entries, choose \"Descending Date (latest first)\" from the pull-down menu under Format Options : Sort Results by. Save the Data Source and we\'ll be ready to start building the rest of the theme.\r\n\r\nWe have connected to the CSS stylesheet and we have the Section and Custom Fields created, ready to receive data for the Entries Section. Stay tuned for Part 6, when we will develop the templates that will get the rest of the site working.', '<h3>Creating the Theme</h3>\n\n<p>Since we are creating a theme for Symphony based on the qwilm theme created by <a href=\"http://www.huddletogether.com/\">Lokesh Dhakar</a>, let&#8217;s link our templates to an external CSS file that contains the styles for the theme, using relative links for the images used by the CSS stylesheet. All the files that we create in Symphony are stored in the <code>/workspace/</code> folder so that we can easily move the site to a different location on the server, or to an entirely different server. Essentially, the <code>/symphony/</code> directory contains the application, through which you administer your site, and the <code>/workspace/</code> directory contains all the files that are specific to your site and control the page structures, behaviours and styles. Note that Symphony&#8217;s File Manager allows us to create files only in the <code>/workspace/</code> directory, but it cannot create additional directories. While it is not necessary to store external CSS files in the <code>/workspace/</code> directory, it makes sense to do so, especially when developing a theme. In effect, everything that exists in the workspace directory is the theme. Change the <code>/workspace/</code> directory and you can have a completely different site.</p>\n\n<h4>Connect to the CSS file</h4>\n\n<p>Download the <a href=\"/workspace/files/qwilm_css.zip\">ZIP file</a> that contains the CSS and image files for the qwilm theme. The files are all contained within a directory named &#8220;css&#8221;. Place this directory in the <code>/workspace/</code> directory. The style.css file within the <code>/css/</code> directory contains style declarations with relative URLs for images in the <code>/css/images/</code> directory. The Symphony File Manager allows us to save and view GIF, JPEG, PNG, CSS,  Javascript, XSL and PHP files contained in any directory or subdirectory within the <code>/workspace/</code> directory. Symphony finds all the CSS and Javascript files in the <code>/workspace/</code> directory and displays a list of links to each of these files in the Blueprints : Components page under the heading &#8220;Assets&#8221;. To modify the style.css file, you can click on the link to open and edit the file. You can also upload files to any directory or subdirectory in your <code>/workspace/</code> directory by going to Publish : File Manager and clicking on the upload button. View the files in the <code>/workspace/</code> directory by selecting the directory you would like to view from the pull-down menu in the upper right corner of the page.</p>\n\n<p>You can view a list of the image files in the <code>/workspace/css/images/</code> directory and you should see something like this:</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_file_manager_01.jpg\" alt=\"Symphony Admin : Publish : File Manager : CSS Images\" /></p>\n\n<p>Add the following code to the <code>&lt;head&gt;</code> element of the default.xsl Master template:</p>\n\n<pre><code>&lt;link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"{$root}/workspace/css/style.css\" /&gt;\n</code></pre>\n\n<p>You could also use the following without the <code>$root</code> parameter, since you would need some additional XSLT code to properly add the value for <code>$root</code> to the URL.</p>\n\n<pre><code>&lt;style type=\"text/css\" media=\"screen\"&gt;\n    @import url(/workspace/css/style.css);\n&lt;/style&gt;\n</code></pre>\n\n<p>If you are interested in dynamically modifying the URL for the CSS file, it is possible to use the XSL concatenate function to create the text string for the `import directive:</p>\n\n<pre><code>&lt;style type=\"text/css\" media=\"screen\"&gt;\n    &lt;xsl:value-of select=\"concat(\'`import url(\',$root,\'/workspace/css/style.css);\')\"/&gt;\n&lt;/style&gt;\n</code></pre>\n\n<p>We can view the front end of our site and see that the pages are now connected to the CSS file.</p>\n\n<h4>Duplicate the intended HTML structure</h4>\n\n<p>Now, we need to duplicate the intended HTML structure before the pages will display properly. The easiest way to accomplish this would be to copy the HTML structure into the Master template, then start replacing the static HTML elements with XSLT templates. In part two, I provided the basic page structure of the qwilm theme with some sample content that represents most of the HTML elements that we will need to reproduce with our XSLT templates.</p>\n\n<p>First, let&#8217;s create a new file called qwilm.html by going to Blueprints : Components : Assets : Create New and give the asset the name qwilm.html and paste the HTML page from Part 2 into the body of this new asset.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_components_02.jpg\" alt=\"Symphony Admin : Blueprints : Components\" /></p>\n\n<p>If you would rather, you can also download the <a href=\"/workspace/files/qwilm.html\">qwilm.html</a> file and upload the file to your <code>/workspace/</code> directory by going to Publish : File Manager and clicking on the Upload button.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_file_upload.jpg\" alt=\"Symphony Admin : Publish : File Manager : Upload\" /></p>\n\n<p>Navigate to this test page at the following address:</p>\n\n<pre><code>http://sym.qwilm.site/workspace/qwilm.html\n</code></pre>\n\n<p>Now, we should be able to see the structure and style displaying as intended.</p>\n\n<h4>Replace static HTML elements with XSLT code</h4>\n\n<p>To apply this structure to our templates, let&#8217;s copy all the elements inside the <code>&lt;body&gt;</code> element and paste these into the <code>&lt;body&gt;</code> element of the default Master template. For now, replace everything that we have created so far in the <code>&lt;body&gt;</code> element of the default.xsl template. You can copy these elements from the code samples below to place the XSL code into the appropriate areas of the intended page structure.</p>\n\n<p>The website name should appear in two different places in the qwilm theme. The <code>&lt;h1&gt;</code> element has been hidden by a CSS rule, but the element is still there. Find the <code>&lt;div id=\"header\"&gt;</code> element and replace it with the following:</p>\n\n<pre><code>&lt;div id=\"header\"&gt;\n    &lt;h1&gt;\n        &lt;a href=\"{$root}/\" title=\"Home\"&gt;\n            &lt;xsl:value-of select=\"$website-name\"/&gt;\n        &lt;/a&gt;\n    &lt;/h1&gt;\n&lt;/div&gt;\n</code></pre>\n\n<p>There is another <code>&lt;div&gt;</code> element at the bottom of the page that contains the home page link. While the <code>&lt;h1&gt;</code> at the top of the page is hidden by a CSS rule, this <code>&lt;h3&gt;</code> element at the bottom becomes the home page link that displays on the page. Replace this with the following:</p>\n\n<pre><code>&lt;div class=\"box sidebar\" id=\"sidebar-3\"&gt;\n    &lt;h3&gt;\n        &lt;a href=\"{$root}/\" title=\"Home\"&gt;\n            &lt;xsl:value-of select=\"$website-name\"/&gt;\n        &lt;/a&gt;\n    &lt;/h3&gt;\n&lt;/div&gt;\n</code></pre>\n\n<p>The page heading and the content body can go in the &#8220;sidebar-2&#8221; <code>&lt;div&gt;</code> element. We&#8217;ll keep the list of Meta links for now, even though the feed links don&#8217;t yet point to anything that exists.</p>\n\n<pre><code>&lt;div class=\"box sidebar\" id=\"sidebar-2\"&gt;\n    &lt;ul&gt;\n        &lt;li&gt;\n            &lt;h2&gt;Main Menu&lt;/h2&gt;\n            &lt;xsl:call-template name=\"main-menu\"/&gt;\n        &lt;/li&gt;\n        &lt;li&gt;\n            &lt;h2&gt;&lt;xsl:value-of select=\"$page-title\"/&gt;&lt;/h2&gt;\n            &lt;xsl:copy-of select=\"data/content/entry[fields/page/`handle=$current-page]/fields/body/*\"/&gt;\n        &lt;/li&gt;\n        &lt;li&gt;\n            &lt;h2&gt;Meta&lt;/h2&gt;\n            &lt;ul&gt;\n                &lt;li&gt;&lt;a href=\"/feed/\" title=\"Syndicate this site using RSS 2.0\"&gt;Entries &lt;abbr title=\"Really Simple Syndication\"&gt;RSS&lt;/abbr&gt;&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=\"/comments/feed/\" title=\"The latest comments to all posts in RSS\"&gt;Comments &lt;abbr title=\"Really Simple Syndication\"&gt;RSS&lt;/abbr&gt;&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=\"http://21degrees.com.au/products/symphony/\" \n                title=\"The Symphony Web Publishing System from Twentyone Degrees\"&gt;Symphony&lt;/a&gt;&lt;/li&gt;\n            &lt;/ul&gt;\n        &lt;/li&gt;\n    &lt;/ul&gt;\n&lt;/div&gt;\n</code></pre>\n\n<p>If all goes well, you should see a page that looks like this (depending on the size of your browser window):</p>\n\n<p><a href=\"/workspace/assets/images/sym_qwilm_home_04.jpg\">\n<img src=\"/image/1/540/0/assets/images/sym_qwilm_home_04.jpg\" \ntitle=\"qwilm theme : Home Page : Click to view a larger image\" \nalt=\"qwilm theme : Home Page : Click to view a larger image\" />\n</a></p>\n\n<p>To view the full-size image of the theme, click on the image. Use the back button of your browser to return to this page.</p>\n\n<h4>Symphony&#8217;s Image Function</h4>\n\n<p>Just as an aside, Symphony has a great built-in image function that uses PHP to dynamically resize images on the fly before sending the results to the browser. For the above image, I uploaded only the full-size image. Symphony has created the smaller image for me. The HTML code to accomplish this bit of magic is as follows:</p>\n\n<pre><code>&lt;a href=\"/workspace/assets/images/sym_qwilm_home_04.jpg\"&gt;\n    &lt;img src=\"/image/540/0/0/fff/assets/images/sym_qwilm_home_04.jpg\" \n        title=\"qwilm theme : Home Page : Click to view a larger image\" \n        alt=\"qwilm theme : Home Page : Click to view a larger image\" /&gt;\n&lt;/a&gt;\n</code></pre>\n\n<p>For details on how to utilize this in your templates, refer to the Overture Forum thread regarding <a href=\"http://overture21.com/forum/comments.php?DiscussionID=191&amp;page=1#Item_0\">Symphony&#8217;s built-in image functions(Overture Forum: built in image functions)</a> or view the <a href=\"http://overture21.com/wiki/templating-system/development-tools/image-manipulation-function\">Image Function(Overture Wiki: Image Function)</a> entry in the Overture Wiki.</p>\n\n<p>For the sake of demonstration, following are some links for different sizes of this same image:</p>\n\n<ul>\n<li><a href=\"/image/40/0/0/fff/images/sym_qwilm_home_04.jpg\">40 pixels wide</a></li>\n<li><a href=\"/image/100/0/0/fff/images/sym_qwilm_home_04.jpg\">100 pixels wide</a></li>\n<li><a href=\"/image/200/0/0/fff/images/sym_qwilm_home_04.jpg\">200 pixels wide</a></li>\n<li><a href=\"/image/300/0/0/fff/images/sym_qwilm_home_04.jpg\">300 pixels wide</a></li>\n<li><a href=\"/image/0/100/0/fff/images/sym_qwilm_home_04.jpg\">100 pixels tall</a></li>\n<li><a href=\"/image/0/200/0/fff/images/sym_qwilm_home_04.jpg\">200 pixels tall</a></li>\n</ul>\n\n<p>This image function opens up some interesting possibilities, such as using Symphony to manage an image library and dynamically serve XML data and images to Flash for <a href=\"http://slideshowpro.net/\">SlideShowPro</a>, or using Lokesh Dhakar&#8217;s very own <a href=\"http://www.huddletogether.com/projects/lightbox2/\">Lightbox</a> to develop a CSS image gallery. But, I&#8217;ll get to that some time later.</p>\n\n<h3>Adding the Blogging Features</h3>\n\n<p>Lokesh Dhakar&#8217;s qwilm design, which he describes as &#8220;just as simple blog,&#8221; was intended to be used as a <a href=\"http://themes.wordpress.net/columns/3-columns/61/qwilm-03/\">WordPress blog theme</a>, so it contains the usual features: Archives, Recent Posts, Categories, Search, Comments and XML/RSS feeds. All of these items are content related to weblog entries and the different ways you can find entries (archives, recent, categories, search) or interact with them (reading and posting comments, receiving notification of the latest additions through a RSS news reader). These features go beyond the basic Data Source that we created for the Content Section. We could use the Content Section, but we don&#8217;t want the static content being mixed with weblog entries. We could use XSLT to filter the results so as not to include static content. But why not create another Section to create a clear separation in the XML data between static content and weblog entries? So, let&#8217;s create another Section for weblog entries called &#8220;Entries&#8221;.</p>\n\n<h4>Determine what Custom Fields are required</h4>\n\n<p>It is possible to create several Custom Fields to associate with a Section, then create a Data Source and later add some additional Custom Fields. However, these new Custom Fields are not automatically added to the Data Source we created before. To include the new Custom Fields, we need to go back to Blueprints : Controllers : Data Sources to modify the Data Source to include the new Custom Fields. The same principle holds true if you rename a Custom Field. The Data Source you created previous to the name change will be looking for the old name for the Custom Field and will not find it. The Data Source needs to be updated to include the Custom Field with its new name.</p>\n\n<p>For this reason, it is good to create all the custom fields that will be associated with a Section before creating the Data Source, or we might find ourselves returning again and again to the Data Sources Editor to update the Data Source. To keep the page load time down, we may want to limit the amount of data we pass to the XSLT processor. To do this, we may create many different Data Sources which use the same source, but have been optimized to filter entries based on a number of different conditions. If at any time we add another Custom Field to the Section that we want to include in all these Data Sources, we&#8217;ll need to update each Data Source individually.</p>\n\n<p>First, then, let&#8217;s create a list of the items that we need to display:</p>\n\n<ul>\n<li>Title</li>\n<li>Date and Time</li>\n<li>Excerpt</li>\n<li>Body</li>\n<li>Photo</li>\n<li>Photo Caption</li>\n<li>Categories</li>\n<li>Tags (I just threw this one in)</li>\n</ul>\n\n<h4>Create the Entries Section</h4>\n\n<p>Go to Structure : Sections and create a new Section called &#8220;Entries.&#8221; This time, keep all the defaults selected, including &#8220;Enable comments for this section.&#8221;</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_sections_entries.jpg\" alt=\"Symphony Admin : Structure : Sections : New Section\" /></p>\n\n<p>Save the new Section and we will find ourselves back at the Sections list, which shows that a Primary field has been created with the name &#8220;Title&#8221;. Click on this link and we can change the name of the Primary field to &#8220;Entry Title&#8221;.</p>\n\n<h4>Create Custom Fields associated with the Entries Section</h4>\n\n<p>It is possible to have several Custom Fields with the same name but used for different sections. For instance, a Custom Field called &#8220;Title&#8221; will be common for most sections. It may be necessary to differentiate between these fields in the XSL code. The simplest way to ensure that the XSL code can differentiate between these fields is to give them a different name. There may be instances where you might want to apply the same template to Data Sources from multiple Sections, in which case, it makes sense to create Custom Fields with the same name. For the sake of this tutorial, I will allow Custom Fields with identical names, although some have recommended otherwise on the Overture Forum (some <a href=\"http://overture21.com/forum/comments.php?DiscussionID=547\">problems</a> and <a href=\"http://overture21.com/forum/comments.php?DiscussionID=831\">fixes</a> have been noted due to identical names).</p>\n\n<p>Go to Structure : Custom Fields and create Custom Fields with the following names, choosing the settings shown in parentheses with this syntax: (type, attribute; location). We will configure each of these Custom Fields to be associated with the &#8220;Entries&#8221; Section:</p>\n\n<p><em>Note that you will need to create a new directory in the <code>/workspace/</code> directory for the Entry Photos &#8211; unfortunately, Symphony cannot do this (yet). When you create this directory, ensure that it has been assigned the privileges necessary to allow Symphony to read and write files to it.</em></p>\n\n<ul>\n<li>Title (Primary Custom Field, created automatically)</li>\n<li>Publish Date and Time (created automatically)</li>\n<li>Excerpt (text area, 10 rows; main content)</li>\n<li>Body (text area, 25 rows; main content)</li>\n<li>Photo (file attachment, directory: <code>workspace/photos/</code>; drawer)</li>\n<li>Photo Caption (text input; drawer)</li>\n<li>Categories (select box, multiple items: Yes, options: General, Technology, Personal, Work; sidebar)</li>\n<li>Tags (text input, description: &#8220;Comma separated tags&#8221;, Split by commas: Yes; main content)</li>\n<li>Publish (checkbox with description: Publish this entry, Checked by default: Yes; sidebar)</li>\n</ul>\n\n<p>Now, go to Structure : Sections and click on the Reorder button in the upper right. You can control the order of the menu items in the Publish menu by reordering the Sections. Click on the row for Entries and drag the row to the top position in the list, the click on the Done button.</p>\n\n<p><img src=\"/workspace/assets/images/sym_qwilm_sections_reorder.jpg\" alt=\"Symphony Admin : Structure : Sections : Reorder\" /></p>\n\n<p>Click on the name of the Entries Section to edit it and click on the checkbox next to Publish so we can add the Publish field to the columns displayed in the Entries list.</p>\n\n<p>Go to the Publish menu to see the new Entries Section added to the top of the menu. Select Entries and click on the Create New button. (At this point, if your <code>/workspace/photos/</code> directory is not writable, you will see an error until you fix the privileges for the directory. Set permissions to 777 or 755 depending on server requirements.) If all goes well, we should see our new Entries Section, including a couple of additional Custom Fields that can be accessed by clicking on the More Options button. We may not have a photo to associate with every entry, so we can keep the associated Custom Fields from cluttering the page, but they are there when we need them.</p>\n\n<h4>Create the Data Source</h4>\n\n<p>We can go ahead and start creating entries, but we won&#8217;t be able to do anything with the data in our templates until we have created a Data Source to associate with our Master and/or Page templates. Let&#8217;s go ahead and do this now. Go to Blueprints : Controllers : Data Sources : Create New, give the Data Source the name &#8220;Entries&#8221; and use the Entries Section as the source. By default, several elements are selected under Format Options : Included Elements. These elements will work fine for what we want to accomplish. As blogs tend to order entries by starting with the most recent entries, choose &#8220;Descending Date (latest first)&#8221; from the pull-down menu under Format Options : Sort Results by. Save the Data Source and we&#8217;ll be ready to start building the rest of the theme.</p>\n\n<p>We have connected to the CSS stylesheet and we have the Section and Custom Fields created, ready to receive data for the Entries Section. Stay tuned for Part 6, when we will develop the templates that will get the rest of the site working.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 112, 'At least, that\'s where I see potential in Symphony as a design industry workhorse that can accomplish everything that I need to do in my business. I think we just need more people to discover the power and flexibility of this application and its ability to organize your data and allow you to do anything you want with your data, within the confines of current web technologies.\r\n\r\nAt any rate, this is just a quick blurb to say, if you are looking for the Book on Symphony, I have produced one by printing these tutorials on Building a Symphony Theme to a series of PDF files from Safari in Mac OS X. I assembled the parts into a single document with Adobe Acrobat, and I am making it available here for download. This is an unfinished work, but for those who like a little light bathroom reading, or want to peruse the volume at their leisure while sipping on a tall mocha latte at their local coffee house, you can start to imagine your digital life orchestrated with Symphonic elegance by a single, finely crafted web application.\r\n\r\n#### Download the Book on Symphony\r\n\r\n[Building a Symphony Theme](/workspace/files/BuildingASymphonyTheme.pdf)\r\nA work in progress, PDF format, 2.1 Mb.', '<p>At least, that&#8217;s where I see potential in Symphony as a design industry workhorse that can accomplish everything that I need to do in my business. I think we just need more people to discover the power and flexibility of this application and its ability to organize your data and allow you to do anything you want with your data, within the confines of current web technologies.</p>\n\n<p>At any rate, this is just a quick blurb to say, if you are looking for the Book on Symphony, I have produced one by printing these tutorials on Building a Symphony Theme to a series of PDF files from Safari in Mac OS X. I assembled the parts into a single document with Adobe Acrobat, and I am making it available here for download. This is an unfinished work, but for those who like a little light bathroom reading, or want to peruse the volume at their leisure while sipping on a tall mocha latte at their local coffee house, you can start to imagine your digital life orchestrated with Symphonic elegance by a single, finely crafted web application.</p>\n\n<h4>Download the Book on Symphony</h4>\n\n<p><a href=\"/workspace/files/BuildingASymphonyTheme.pdf\">Building a Symphony Theme</a>\nA work in progress, PDF format, 2.1 Mb.</p>\n');
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 107, '### Masters, Pages and Utilities\r\n\r\nIn Symphony, there are three methods available to reuse HTML code and templates: Masters, Pages and Utilities. Master templates are generally used as containers for structural elements of your site which will be used across several pages. Pages contain the main content for each page. Utilities contain the various blocks of content, lists or menus that are used to make up a page.\r\n\r\n![Masters, Pages and Templates](/workspace/assets/images/sym_masters_pages_utilities.jpg)\r\n\r\n#### Masters\r\n\r\nIf the site has one basic template, it is likely that you may need a single Master template that contains a header and a footer that will be used throughout the site.\r\n\r\n#### Pages\r\n\r\nThe content will change from one page to another, so the templates for the content structure for each page will be contained in Page templates. \r\n\r\n#### Utilities\r\n\r\nUtilities are reusable templates that can be applied within a Master template, a Page template, or even within another Utility, as shown in the diagram above. For example, a Utility could dynamically generate the main navigation, or a section menu, or a sideblog, or a list of categories, or a list of archive months, or a list of recent entries, or a format for entries and comments. Probably one of the most useful Utilities will be used to generate different formats for displaying dates and times.\r\n\r\n### Creating the Page Structure\r\n\r\nGetting back to the task at hand, building the -Pink for October- qwilm Theme in Symphony, the first step will be to create the page structure using Masters, Pages and Utilities. We\'ll use the diagram above as a model for building our templates.\r\n\r\nStart with the basic XHTML page structure, and I do mean XHTML. The page structure has to be valid or XSLT will reject it. XSLT cannot transform XML that is not well-formed and that refers not only to the XML data, but also the XHTML structure. Every element needs to be properly closed, whether it is a self-closing element or an element with opening and closing tags.\r\n\r\n-Since we have permission from [Derek Punsalan](http://5thirtyone.com/) to use the [Pink for October Theme](http://5thirtyone.com/archives/684) he created for WordPress, we can grab his HTML source code and download the CSS and image files that control the structure and presentation of the pages.- (Always be sure that you have permission before duplicating the design of an existing site so that you stay well within the law and within the limits of ethical behaviour in regard to the intellectual property rights of others.) \r\n\r\n#### Plan B: qwilm!\r\n\r\n_On closer inspection, I discovered that Derek Punsalan is limiting distribution of the theme to downloads only from his own site, which means I will not be able to continue porting this theme. Time to go to Plan B._\r\n\r\nThere have been requests in the forum for the [Fresh Theme](http://www.bartelme.at/journal/archive/fresh_theme_for_ee/) from [Bartelme Design](http://www.bartelme.at/) or the [qwilm! Theme](http://themes.wordpress.net/columns/3-columns/61/qwilm-03/) by Lokesh Dhakar of [HuddleTogether](http://www.huddletogether.com/). I think I will opt for the latter, unless someone has strong objections otherwise.\r\n\r\nJames Steel ([lostbear](http://overture21.com/forum/account.php?u=784)) has kindly posted to the Overture Forum a [ZIP package](http://overture21.com/forum/comments.php?DiscussionID=609&amp;page=1#Item_0) containing the stripped-down HTML file and the CSS and image files that we can use as a starting point. Thank you, James.\r\n\r\nI have recreated the HTML code to include examples of the items that we will need to code in Symphony. I also offer the the CSS, HTML and image files for download from this link. Here is the raw HTML code that I will be working with:\r\n\r\n	<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n	<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n	<head>\r\n	<title>Lokesh Dhakar | qwilm Theme </title> \r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n	<meta name=\"generator\" content=\"Symphony 1.5.06\" />\r\n	<meta name=\"copyright\" content=\"Copyright Lokesh Dhakar\" />\r\n	<style type=\"text/css\" media=\"screen\">\r\n	@import url( /workspace/css/style.css );\r\n	</style>\r\n	</head>\r\n	<body>\r\n	<div id=\"quick-nav\">\r\n	<a href=\"/\"><img src=\"/workspace/css/images/home_icon.gif\" alt=\"goto homepage\" width=\"16\" height=\"14\" /></a>\r\n	<a href=\"mailto:name@example.com\"><img src=\"/workspace/css/images/email_icon.gif\" alt=\"mail me!\" /></a>\r\n	<a href=\"/feed/\"><img src=\"/workspace/css/images/rss_icon.gif\" alt=\"grab RSS 2.0 feed\" width=\"16\" height=\"16\" /></a>\r\n	</div>\r\n	<div id=\"header\">\r\n	<h1><a href=\"/\">Lokesh Dhakar | qwilm Theme </a></h1>\r\n	</div>\r\n	<div id=\"wrapper\">\r\n	<div id=\"content\" class=\"box\">\r\n	<div class=\"post\">\r\n	<h2 class=\"posttitle\" id=\"post-67\">\r\n	<a href=\"#\" rel=\"bookmark\" title=\"Permanent link\">Finding some time for a Symphony Theme</a>\r\n	</h2>\r\n	<p class=\"postmeta\">December 8, 2006 | 4:07 am</p>\r\n	<div class=\"postentry\">\r\n	<p>Will it ever happen?</p>\r\n	<p>I\'ve been waiting forever for a new theme to try out.</p>\r\n	</div>\r\n	<p class=\"postfeedback\">\r\n	<a href=\"#\" class=\"commentslink\" title=\"Add your comments\">Comments</a>\r\n	</p>\r\n	</div>\r\n	<div class=\"post\">\r\n	<h2 class=\"posttitle\" id=\"post-65\"><a href=\"/2006/09/26/long-time-no-updates/\" rel=\"bookmark\" title=\"Permanent link to Long time, no updates.\">Long time, no updates.</a></h2>\r\n	<p class=\"postmeta\">September 26, 2006 | 7:04 pm</p>\r\n	<div class=\"postentry\">\r\n	<p>I\'ve been busy busy, but things are starting to settle down a wee bit. \r\n	Expect updates, new things, email replies, and more.\r\n	</p>\r\n	</div>\r\n	<p class=\"postfeedback\">\r\n	<a href=\"#\" class=\"commentslink\" title=\"Add your comments\">Comments (20)</a>\r\n	</p>\r\n	</div>\r\n	<div class=\"post\">\r\n	<h2 class=\"posttitle\" id=\"post-63\">\r\n	<a href=\"#\" rel=\"bookmark\" title=\"Permanent link to New job and Adobe Flex\">Quiet and happening</a>\r\n	</h2>\r\n	<p class=\"postmeta\">June 11, 2006 | 3:44 pm</p>\r\n	<div class=\"postentry\">\r\n	<p>Things have been quiet on the blog front but lots has been happening on other fronts. \r\n	I can catch you up in about three paragraphs. Here goes.\r\n	</p>\r\n	</div>\r\n	<p class=\"postfeedback\">\r\n	<a href=\"#\" class=\"commentslink\" title=\"Add your comments\">Comments (22)</a>\r\n	</p>\r\n	</div>\r\n	<h2 id=\"comments\">20 Comments</h2>\r\n	<p><a href=\"#postcomment\" class=\"commentslink\" title=\"Jump to the comments form\">Jump to Comment Form</a></p>\r\n	<ol id=\"commentlist\">\r\n	<li class=\"alt\" id=\"comment-10358\">\r\n	<h3 class=\"commenttitle\"><a href=\"#comment-10358\" title=\"Permanent link to this comment\">#1</a> bauhouse</h3>\r\n	<p class=\"commentmeta\">December 9, 2006 @ 7:49 pm</p>\r\n	<p>What a lovely site design, Lokesh. Do you mind if I use it for a Symphony theme?</p>\r\n	</li>\r\n	<li class=\"alt\" id=\"comment-10358\">\r\n	<h3 class=\"commenttitle\"><a href=\"#comment-10358\" title=\"Permanent link to this comment\">#2</a> Stephen</h3>\r\n	<p class=\"commentmeta\">November 6, 2006 @ 8:30 am</p>\r\n	<p>@Lokesh, you\'ve really done a great job with this simple design.</p>\r\n	</li>\r\n	<li class=\"alt\" id=\"comment-10358\">\r\n	<h3 class=\"commenttitle\"><a href=\"#comment-10358\" title=\"Permanent link to this comment\">#3</a> Bau</h3>\r\n	<p class=\"commentmeta\">September 26, 2006 @ 6:32 pm</p>\r\n	<p>I think this would be perfect as a Symphony theme. That would be awesome.</p>\r\n	</li>\r\n	</ol>\r\n	<h2 id=\"postcomment\">Leave a Comment</h2>\r\n	<form action=\"http://www.huddletogether.com/wp-comments-post.php\" method=\"post\" id=\"commentform\">\r\n	<p>\r\n	<input type=\"text\" name=\"author\" id=\"author\" value=\"\" size=\"30\" tabindex=\"1\" />\r\n	<label for=\"author\">Name </label>\r\n	</p>\r\n	<p>\r\n	<input type=\"text\" name=\"email\" id=\"email\" value=\"\" size=\"30\" tabindex=\"2\" />\r\n	<label for=\"email\">E-mail </label>\r\n	</p>\r\n	<p>\r\n	<textarea name=\"comment\" id=\"comment\" cols=\"70\" rows=\"10\" tabindex=\"4\"></textarea>\r\n	</p>\r\n	<p>\r\n	<input name=\"submit\" type=\"submit\" id=\"submit\" tabindex=\"5\" value=\"Submit Comment\" />\r\n	<input type=\"hidden\" name=\"comment_post_ID\" value=\"67\" />\r\n	</p>\r\n	</form>\r\n	</div>\r\n	<div class=\"box sidebar\" id=\"sidebar-1\">\r\n	<ul>\r\n	<li>\r\n	<h2>Archives</h2>\r\n	<ul>\r\n	<li><a href=\'/archives/2006/12/\' title=\'December 2006\'>December 2006</a></li>\r\n	<li><a href=\'/archives/2006/09/\' title=\'September 2006\'>September 2006</a></li>\r\n	<li><a href=\'/archives/2006/06/\' title=\'June 2006\'>June 2006</a></li>\r\n	<li><a href=\'/archives/2006/05/\' title=\'May 2006\'>May 2006</a></li>\r\n	<li><a href=\'/archives/2006/04/\' title=\'April 2006\'>April 2006</a></li>\r\n	<li><a href=\'/archives/2006/03/\' title=\'March 2006\'>March 2006</a></li>\r\n	<li><a href=\'/archives/2006/02/\' title=\'February 2006\'>February 2006</a></li>\r\n	<li><a href=\'/archives/2006/01/\' title=\'January 2006\'>January 2006</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<h2>Recent Posts</h2>\r\n	<ul>\r\n	<li><a href=\'/archives/2006/12/08/finding-some-time/\' title=\'Messageboard registration\'>Finding some time</a></li>\r\n	<li><a href=\'/archives/2006/09/26/long-time-no-updates/\' title=\'Long time, no updates.\'>Long time, no updates.</a></li>\r\n	<li><a href=\'/archives/2006/06/11/quiet-and-happening/\' title=\'New job and Adobe Flex\'>Quiet and happening</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<h2>Projects</h2>\r\n	<ul>\r\n	<li><a href=\"http://www.huddletogether.com/projects/lightbox/\">Lightbox JS</a></li>\r\n	<li><a href=\"http://www.huddletogether.com/projects/lightbox2/\">Lightbox JS v2.0</a></li>\r\n	<li><a href=\"http://themes.wordpress.net/columns/3-columns/61/qwilm-03/\">Wordpress Theme</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<h2>Photos</h2>\r\n	<ul id=\"photo-galleries\">\r\n	<li><a href=\"/gallery/europe/\">My Trip to Europe</a></li>\r\n	<li><a href=\"/gallery/roadtrip/\">My Roadtrip</a></li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<h2>Categories</h2>\r\n	<ul>\r\n	<li><a href=\"/category/general/\" title=\"View all posts filed under General\">General</a></li>\r\n	<li><a href=\"/category/technology/\" title=\"View all posts filed under Technology\">Technology</a></li>\r\n	<li><a href=\"/category/personal/\" title=\"View all posts filed under Personal\">Personal</a></li>\r\n	<li><a href=\"/category/work/\" title=\"View all posts filed under Work\">Work</a></li>\r\n	</ul>		\r\n	</li>\r\n	<li>\r\n	<h2>Search</h2>\r\n	<div id=\"search-wrapper\">\r\n	<form method=\"get\" id=\"searchform\" action=\"#\">\r\n	<div>\r\n	<input type=\"text\" value=\"\" name=\"\" id=\"\" />\r\n	<input type=\"submit\" id=\"searchsubmit\" value=\"Search\" />\r\n	</div>\r\n	</form>\r\n	</div>\r\n	</li>\r\n	</ul>\r\n	</div>\r\n	<div class=\"box sidebar\" id=\"sidebar-2\">\r\n	<ul>\r\n	<li>\r\n	<h2>About</h2>\r\n	<p>My name is Stephen Bau. I\'m 38 and I live in Abbotsford, BC where I work as a graphic designer.</p>\r\n	<p>This is just a <a href=\"http://21degrees.com.au/products/symphony/\" \r\n	title=\"The Symphony Web Publishing System from Twentyone Degrees\">Symphony</a> \r\n	blog theme based on the WordPress theme created by Lokesh Dhakar of \r\n	<a href=\"http://www.huddletogether.com/\">Huddle Together</a>.</p>\r\n	</li>\r\n	<li>\r\n	<h2>Contact</h2>\r\n	<p><a href=\"/contact/\" title=\"Contact Form\">Send me an email</a></p>\r\n	</li>\r\n	<li>\r\n	<h2>Meta</h2>\r\n	<ul>\r\n	<li><a href=\"/feed/\" title=\"Syndicate this site using RSS 2.0\">Entries <abbr title=\"Really Simple Syndication\">RSS</abbr></a></li>\r\n	<li><a href=\"/comments/feed/\" title=\"The latest comments to all posts in RSS\">Comments <abbr title=\"Really Simple Syndication\">RSS</abbr></a></li>\r\n	<li><a href=\"http://21degrees.com.au/products/symphony/\" \r\n	title=\"The Symphony Web Publishing System from Twentyone Degrees\">Symphony</a></li>\r\n	</ul>\r\n	</li>\r\n	</ul>\r\n	</div>\r\n	<div class=\"box sidebar\" id=\"sidebar-3\">\r\n	<h3><a href=\"/\" title=\"Home\">qwilm</a></h3>\r\n	</div>\r\n	</div>\r\n	</body>\r\n	</html>\r\n\r\nNow, it\'s time to see what Symphony can do. Let\'s start with the default parameters and data sources in [Building a Symphony Theme: Part 3](/journal/building-a-symphony-theme-part-3/).', '<h3>Masters, Pages and Utilities</h3>\n\n<p>In Symphony, there are three methods available to reuse HTML code and templates: Masters, Pages and Utilities. Master templates are generally used as containers for structural elements of your site which will be used across several pages. Pages contain the main content for each page. Utilities contain the various blocks of content, lists or menus that are used to make up a page.</p>\n\n<p><img src=\"/workspace/assets/images/sym_masters_pages_utilities.jpg\" alt=\"Masters, Pages and Templates\" /></p>\n\n<h4>Masters</h4>\n\n<p>If the site has one basic template, it is likely that you may need a single Master template that contains a header and a footer that will be used throughout the site.</p>\n\n<h4>Pages</h4>\n\n<p>The content will change from one page to another, so the templates for the content structure for each page will be contained in Page templates.</p>\n\n<h4>Utilities</h4>\n\n<p>Utilities are reusable templates that can be applied within a Master template, a Page template, or even within another Utility, as shown in the diagram above. For example, a Utility could dynamically generate the main navigation, or a section menu, or a sideblog, or a list of categories, or a list of archive months, or a list of recent entries, or a format for entries and comments. Probably one of the most useful Utilities will be used to generate different formats for displaying dates and times.</p>\n\n<h3>Creating the Page Structure</h3>\n\n<p>Getting back to the task at hand, building the -Pink for October- qwilm Theme in Symphony, the first step will be to create the page structure using Masters, Pages and Utilities. We&#8217;ll use the diagram above as a model for building our templates.</p>\n\n<p>Start with the basic XHTML page structure, and I do mean XHTML. The page structure has to be valid or XSLT will reject it. XSLT cannot transform XML that is not well-formed and that refers not only to the XML data, but also the XHTML structure. Every element needs to be properly closed, whether it is a self-closing element or an element with opening and closing tags.</p>\n\n<p>-Since we have permission from <a href=\"http://5thirtyone.com/\">Derek Punsalan</a> to use the <a href=\"http://5thirtyone.com/archives/684\">Pink for October Theme</a> he created for WordPress, we can grab his HTML source code and download the CSS and image files that control the structure and presentation of the pages.- (Always be sure that you have permission before duplicating the design of an existing site so that you stay well within the law and within the limits of ethical behaviour in regard to the intellectual property rights of others.)</p>\n\n<h4>Plan B: qwilm!</h4>\n\n<p><em>On closer inspection, I discovered that Derek Punsalan is limiting distribution of the theme to downloads only from his own site, which means I will not be able to continue porting this theme. Time to go to Plan B.</em></p>\n\n<p>There have been requests in the forum for the <a href=\"http://www.bartelme.at/journal/archive/fresh_theme_for_ee/\">Fresh Theme</a> from <a href=\"http://www.bartelme.at/\">Bartelme Design</a> or the <a href=\"http://themes.wordpress.net/columns/3-columns/61/qwilm-03/\">qwilm! Theme</a> by Lokesh Dhakar of <a href=\"http://www.huddletogether.com/\">HuddleTogether</a>. I think I will opt for the latter, unless someone has strong objections otherwise.</p>\n\n<p>James Steel (<a href=\"http://overture21.com/forum/account.php?u=784\">lostbear</a>) has kindly posted to the Overture Forum a <a href=\"http://overture21.com/forum/comments.php?DiscussionID=609&amp;page=1#Item_0\">ZIP package</a> containing the stripped-down HTML file and the CSS and image files that we can use as a starting point. Thank you, James.</p>\n\n<p>I have recreated the HTML code to include examples of the items that we will need to code in Symphony. I also offer the the CSS, HTML and image files for download from this link. Here is the raw HTML code that I will be working with:</p>\n\n<pre><code>&lt;!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\"&gt;\n&lt;html xmlns=\"http://www.w3.org/1999/xhtml\"&gt;\n&lt;head&gt;\n&lt;title&gt;Lokesh Dhakar | qwilm Theme &lt;/title&gt; \n&lt;meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /&gt;\n&lt;meta name=\"generator\" content=\"Symphony 1.5.06\" /&gt;\n&lt;meta name=\"copyright\" content=\"Copyright Lokesh Dhakar\" /&gt;\n&lt;style type=\"text/css\" media=\"screen\"&gt;\n@import url( /workspace/css/style.css );\n&lt;/style&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div id=\"quick-nav\"&gt;\n&lt;a href=\"/\"&gt;&lt;img src=\"/workspace/css/images/home_icon.gif\" alt=\"goto homepage\" width=\"16\" height=\"14\" /&gt;&lt;/a&gt;\n&lt;a href=\"mailto:name@example.com\"&gt;&lt;img src=\"/workspace/css/images/email_icon.gif\" alt=\"mail me!\" /&gt;&lt;/a&gt;\n&lt;a href=\"/feed/\"&gt;&lt;img src=\"/workspace/css/images/rss_icon.gif\" alt=\"grab RSS 2.0 feed\" width=\"16\" height=\"16\" /&gt;&lt;/a&gt;\n&lt;/div&gt;\n&lt;div id=\"header\"&gt;\n&lt;h1&gt;&lt;a href=\"/\"&gt;Lokesh Dhakar | qwilm Theme &lt;/a&gt;&lt;/h1&gt;\n&lt;/div&gt;\n&lt;div id=\"wrapper\"&gt;\n&lt;div id=\"content\" class=\"box\"&gt;\n&lt;div class=\"post\"&gt;\n&lt;h2 class=\"posttitle\" id=\"post-67\"&gt;\n&lt;a href=\"#\" rel=\"bookmark\" title=\"Permanent link\"&gt;Finding some time for a Symphony Theme&lt;/a&gt;\n&lt;/h2&gt;\n&lt;p class=\"postmeta\"&gt;December 8, 2006 | 4:07 am&lt;/p&gt;\n&lt;div class=\"postentry\"&gt;\n&lt;p&gt;Will it ever happen?&lt;/p&gt;\n&lt;p&gt;I\'ve been waiting forever for a new theme to try out.&lt;/p&gt;\n&lt;/div&gt;\n&lt;p class=\"postfeedback\"&gt;\n&lt;a href=\"#\" class=\"commentslink\" title=\"Add your comments\"&gt;Comments&lt;/a&gt;\n&lt;/p&gt;\n&lt;/div&gt;\n&lt;div class=\"post\"&gt;\n&lt;h2 class=\"posttitle\" id=\"post-65\"&gt;&lt;a href=\"/2006/09/26/long-time-no-updates/\" rel=\"bookmark\" title=\"Permanent link to Long time, no updates.\"&gt;Long time, no updates.&lt;/a&gt;&lt;/h2&gt;\n&lt;p class=\"postmeta\"&gt;September 26, 2006 | 7:04 pm&lt;/p&gt;\n&lt;div class=\"postentry\"&gt;\n&lt;p&gt;I\'ve been busy busy, but things are starting to settle down a wee bit. \nExpect updates, new things, email replies, and more.\n&lt;/p&gt;\n&lt;/div&gt;\n&lt;p class=\"postfeedback\"&gt;\n&lt;a href=\"#\" class=\"commentslink\" title=\"Add your comments\"&gt;Comments (20)&lt;/a&gt;\n&lt;/p&gt;\n&lt;/div&gt;\n&lt;div class=\"post\"&gt;\n&lt;h2 class=\"posttitle\" id=\"post-63\"&gt;\n&lt;a href=\"#\" rel=\"bookmark\" title=\"Permanent link to New job and Adobe Flex\"&gt;Quiet and happening&lt;/a&gt;\n&lt;/h2&gt;\n&lt;p class=\"postmeta\"&gt;June 11, 2006 | 3:44 pm&lt;/p&gt;\n&lt;div class=\"postentry\"&gt;\n&lt;p&gt;Things have been quiet on the blog front but lots has been happening on other fronts. \nI can catch you up in about three paragraphs. Here goes.\n&lt;/p&gt;\n&lt;/div&gt;\n&lt;p class=\"postfeedback\"&gt;\n&lt;a href=\"#\" class=\"commentslink\" title=\"Add your comments\"&gt;Comments (22)&lt;/a&gt;\n&lt;/p&gt;\n&lt;/div&gt;\n&lt;h2 id=\"comments\"&gt;20 Comments&lt;/h2&gt;\n&lt;p&gt;&lt;a href=\"#postcomment\" class=\"commentslink\" title=\"Jump to the comments form\"&gt;Jump to Comment Form&lt;/a&gt;&lt;/p&gt;\n&lt;ol id=\"commentlist\"&gt;\n&lt;li class=\"alt\" id=\"comment-10358\"&gt;\n&lt;h3 class=\"commenttitle\"&gt;&lt;a href=\"#comment-10358\" title=\"Permanent link to this comment\"&gt;#1&lt;/a&gt; bauhouse&lt;/h3&gt;\n&lt;p class=\"commentmeta\"&gt;December 9, 2006 @ 7:49 pm&lt;/p&gt;\n&lt;p&gt;What a lovely site design, Lokesh. Do you mind if I use it for a Symphony theme?&lt;/p&gt;\n&lt;/li&gt;\n&lt;li class=\"alt\" id=\"comment-10358\"&gt;\n&lt;h3 class=\"commenttitle\"&gt;&lt;a href=\"#comment-10358\" title=\"Permanent link to this comment\"&gt;#2&lt;/a&gt; Stephen&lt;/h3&gt;\n&lt;p class=\"commentmeta\"&gt;November 6, 2006 @ 8:30 am&lt;/p&gt;\n&lt;p&gt;@Lokesh, you\'ve really done a great job with this simple design.&lt;/p&gt;\n&lt;/li&gt;\n&lt;li class=\"alt\" id=\"comment-10358\"&gt;\n&lt;h3 class=\"commenttitle\"&gt;&lt;a href=\"#comment-10358\" title=\"Permanent link to this comment\"&gt;#3&lt;/a&gt; Bau&lt;/h3&gt;\n&lt;p class=\"commentmeta\"&gt;September 26, 2006 @ 6:32 pm&lt;/p&gt;\n&lt;p&gt;I think this would be perfect as a Symphony theme. That would be awesome.&lt;/p&gt;\n&lt;/li&gt;\n&lt;/ol&gt;\n&lt;h2 id=\"postcomment\"&gt;Leave a Comment&lt;/h2&gt;\n&lt;form action=\"http://www.huddletogether.com/wp-comments-post.php\" method=\"post\" id=\"commentform\"&gt;\n&lt;p&gt;\n&lt;input type=\"text\" name=\"author\" id=\"author\" value=\"\" size=\"30\" tabindex=\"1\" /&gt;\n&lt;label for=\"author\"&gt;Name &lt;/label&gt;\n&lt;/p&gt;\n&lt;p&gt;\n&lt;input type=\"text\" name=\"email\" id=\"email\" value=\"\" size=\"30\" tabindex=\"2\" /&gt;\n&lt;label for=\"email\"&gt;E-mail &lt;/label&gt;\n&lt;/p&gt;\n&lt;p&gt;\n&lt;textarea name=\"comment\" id=\"comment\" cols=\"70\" rows=\"10\" tabindex=\"4\"&gt;&lt;/textarea&gt;\n&lt;/p&gt;\n&lt;p&gt;\n&lt;input name=\"submit\" type=\"submit\" id=\"submit\" tabindex=\"5\" value=\"Submit Comment\" /&gt;\n&lt;input type=\"hidden\" name=\"comment_post_ID\" value=\"67\" /&gt;\n&lt;/p&gt;\n&lt;/form&gt;\n&lt;/div&gt;\n&lt;div class=\"box sidebar\" id=\"sidebar-1\"&gt;\n&lt;ul&gt;\n&lt;li&gt;\n&lt;h2&gt;Archives&lt;/h2&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/12/\' title=\'December 2006\'&gt;December 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/09/\' title=\'September 2006\'&gt;September 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/06/\' title=\'June 2006\'&gt;June 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/05/\' title=\'May 2006\'&gt;May 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/04/\' title=\'April 2006\'&gt;April 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/03/\' title=\'March 2006\'&gt;March 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/02/\' title=\'February 2006\'&gt;February 2006&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/01/\' title=\'January 2006\'&gt;January 2006&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Recent Posts&lt;/h2&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/12/08/finding-some-time/\' title=\'Messageboard registration\'&gt;Finding some time&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/09/26/long-time-no-updates/\' title=\'Long time, no updates.\'&gt;Long time, no updates.&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\'/archives/2006/06/11/quiet-and-happening/\' title=\'New job and Adobe Flex\'&gt;Quiet and happening&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Projects&lt;/h2&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;a href=\"http://www.huddletogether.com/projects/lightbox/\"&gt;Lightbox JS&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"http://www.huddletogether.com/projects/lightbox2/\"&gt;Lightbox JS v2.0&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"http://themes.wordpress.net/columns/3-columns/61/qwilm-03/\"&gt;Wordpress Theme&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Photos&lt;/h2&gt;\n&lt;ul id=\"photo-galleries\"&gt;\n&lt;li&gt;&lt;a href=\"/gallery/europe/\"&gt;My Trip to Europe&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"/gallery/roadtrip/\"&gt;My Roadtrip&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Categories&lt;/h2&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;a href=\"/category/general/\" title=\"View all posts filed under General\"&gt;General&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"/category/technology/\" title=\"View all posts filed under Technology\"&gt;Technology&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"/category/personal/\" title=\"View all posts filed under Personal\"&gt;Personal&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"/category/work/\" title=\"View all posts filed under Work\"&gt;Work&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;       \n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Search&lt;/h2&gt;\n&lt;div id=\"search-wrapper\"&gt;\n&lt;form method=\"get\" id=\"searchform\" action=\"#\"&gt;\n&lt;div&gt;\n&lt;input type=\"text\" value=\"\" name=\"\" id=\"\" /&gt;\n&lt;input type=\"submit\" id=\"searchsubmit\" value=\"Search\" /&gt;\n&lt;/div&gt;\n&lt;/form&gt;\n&lt;/div&gt;\n&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/div&gt;\n&lt;div class=\"box sidebar\" id=\"sidebar-2\"&gt;\n&lt;ul&gt;\n&lt;li&gt;\n&lt;h2&gt;About&lt;/h2&gt;\n&lt;p&gt;My name is Stephen Bau. I\'m 38 and I live in Abbotsford, BC where I work as a graphic designer.&lt;/p&gt;\n&lt;p&gt;This is just a &lt;a href=\"http://21degrees.com.au/products/symphony/\" \ntitle=\"The Symphony Web Publishing System from Twentyone Degrees\"&gt;Symphony&lt;/a&gt; \nblog theme based on the WordPress theme created by Lokesh Dhakar of \n&lt;a href=\"http://www.huddletogether.com/\"&gt;Huddle Together&lt;/a&gt;.&lt;/p&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Contact&lt;/h2&gt;\n&lt;p&gt;&lt;a href=\"/contact/\" title=\"Contact Form\"&gt;Send me an email&lt;/a&gt;&lt;/p&gt;\n&lt;/li&gt;\n&lt;li&gt;\n&lt;h2&gt;Meta&lt;/h2&gt;\n&lt;ul&gt;\n&lt;li&gt;&lt;a href=\"/feed/\" title=\"Syndicate this site using RSS 2.0\"&gt;Entries &lt;abbr title=\"Really Simple Syndication\"&gt;RSS&lt;/abbr&gt;&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"/comments/feed/\" title=\"The latest comments to all posts in RSS\"&gt;Comments &lt;abbr title=\"Really Simple Syndication\"&gt;RSS&lt;/abbr&gt;&lt;/a&gt;&lt;/li&gt;\n&lt;li&gt;&lt;a href=\"http://21degrees.com.au/products/symphony/\" \ntitle=\"The Symphony Web Publishing System from Twentyone Degrees\"&gt;Symphony&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/li&gt;\n&lt;/ul&gt;\n&lt;/div&gt;\n&lt;div class=\"box sidebar\" id=\"sidebar-3\"&gt;\n&lt;h3&gt;&lt;a href=\"/\" title=\"Home\"&gt;qwilm&lt;/a&gt;&lt;/h3&gt;\n&lt;/div&gt;\n&lt;/div&gt;\n&lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n\n<p>Now, it&#8217;s time to see what Symphony can do. Let&#8217;s start with the default parameters and data sources in <a href=\"/journal/building-a-symphony-theme-part-3/\">Building a Symphony Theme: Part 3</a>.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (50, 101, 100);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (49, 101, 99);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (48, 101, 98);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (47, 101, 97);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (46, 101, 96);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (10, 112, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (36, 110, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (25, 108, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (34, 105, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (30, 107, NULL);
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `relation_id`) VALUES (33, 109, NULL);

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (2, 112, NULL);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (28, 110, NULL);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (17, 108, NULL);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (26, 105, NULL);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (22, 107, NULL);
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `relation_id`) VALUES (25, 109, NULL);

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (46, 12, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (45, 13, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (85, 101, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (83, 102, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (26, 103, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (28, 104, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (75, 105, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (71, 107, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (66, 108, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (74, 109, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (77, 110, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (82, 111, 22);
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `relation_id`) VALUES (51, 112, 22);

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (48, 12, 9);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (47, 13, 9);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (90, 101, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (87, 102, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (28, 103, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (30, 104, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (79, 105, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (95, 106, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (75, 107, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (70, 108, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (78, 109, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (81, 110, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (86, 111, 10);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (53, 112, 10);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 12, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 13, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 105, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 107, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 108, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 109, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 110, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 111, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 112, 'symphony-cms', 'Symphony CMS');

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 1, 'The main navigation menu', '<p>The main navigation menu</p>\n');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 2, 'The secondary navigation menu', '<p>The secondary navigation menu</p>\n');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (46, 12, '2006-09-01T00:00:00-07:00', 1157094000, 1157094000);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (45, 13, '2006-09-03T00:00:00-07:00', 1157266800, 1157266800);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (85, 101, '2006-09-15T00:00:00-07:00', 1158303600, 1158303600);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (83, 102, '2006-09-22T00:00:00-07:00', 1158908400, 1158908400);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (26, 103, '2006-10-27T00:00:00-07:00', 1161932400, 1161932400);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (28, 104, '2006-10-27T00:00:00-07:00', 1161932400, 1161932400);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (75, 105, '2006-10-28T21:06:00-07:00', 1162094760, 1162094760);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (90, 106, '2006-10-29T21:06:00-08:00', 1162184760, 1162184760);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (71, 107, '2006-10-29T23:08:00-08:00', 1162192080, 1162192080);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (66, 108, '2006-11-30T01:09:00-08:00', 1164877740, 1164877740);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (74, 109, '2007-01-02T09:00:00-08:00', 1167757200, 1167757200);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (77, 110, '2007-01-04T03:01:00-08:00', 1167908460, 1167908460);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (82, 111, '2007-01-06T10:35:00-08:00', 1168108500, 1168108500);
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (51, 112, '2007-02-09T11:35:00-08:00', 1171049700, 1171049700);

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (46, 12, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (45, 13, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (85, 101, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (83, 102, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (26, 103, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (28, 104, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (75, 105, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (90, 106, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (71, 107, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (66, 108, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (74, 109, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (77, 110, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (82, 111, 1);
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `author_id`) VALUES (51, 112, 1);

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (46, 12, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (45, 13, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (85, 101, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (83, 102, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (26, 103, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (28, 104, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (75, 105, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (90, 106, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (71, 107, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (66, 108, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (74, 109, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (77, 110, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (82, 111, 'yes');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `value`) VALUES (51, 112, 'yes');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (46, 12, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (45, 13, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (85, 101, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (83, 102, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (26, 103, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (28, 104, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (75, 105, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (90, 106, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (71, 107, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (66, 108, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (74, 109, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (77, 110, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (82, 111, 'no');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `value`) VALUES (51, 112, 'no');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (118, 14, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 113, 'subtraction', 'Subtraction');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 114, 'getty-images', 'Getty Images');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 115, 'release-core-fonts', 'Release Core Fonts');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 116, 'istockphoto', 'iStockphoto');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 117, 'globe-printers', 'Globe Printers');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 118, 'domain7', 'Domain7');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 119, 'crazy-egg', 'Crazy Egg');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 120, 'getting-real-with-jason-fried', 'Getting Real with Jason Fried');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 164, 'mark-boulton', 'Mark Boulton');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 165, 'css-zen-garden', 'CSS Zen Garden');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 166, 'shorty', 'Shorty');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 167, 'flow', 'Flow');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 168, 'veer', 'Veer');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 169, 'freecsscart', 'freeCSScart');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 170, 'web-20-logos', 'Web 2.0 Logos');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 171, 'relay', 'Relay');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 172, 'thickbox', 'ThickBox');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 173, 'cody-lindley', 'Cody Lindley');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 174, 'a-list-apart', 'A List Apart');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 176, 'symphony-showcase', 'Symphony Showcase');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 177, 'edward-eliot', 'Edward Eliot');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 178, 'marketcircle', 'Marketcircle');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 179, 'textmate', 'TextMate');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 180, 'yojimbo', 'Yojimbo');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 181, 'transmit', 'Transmit');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 182, 'bitrocket', 'BitRocket');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (120, 183, 'inquisitor', 'Inquisitor');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 184, 'testxslt', 'TestXSLT');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 185, 'joyent-connector', 'Joyent Connector');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 186, 'mamp', 'MAMP');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (117, 187, 'skedit', 'skEdit');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 188, 'cyberduck', 'Cyberduck');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 189, 'on-the-job', 'On The Job');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (136, 190, 'iratchet', 'iRatchet');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (135, 191, 'cha-ching', 'Cha-Ching');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 192, 'ibiz', 'iBiz');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 193, 'quicksilver', 'QuickSilver');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 194, 'design-agency-international', 'Design Agency International');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 195, 'typoasis', 'Typoasis');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 196, 'stockxchng', 'stock.xchng');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 197, 'logo-lounge', 'Logo Lounge');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 198, 'textpattern', 'Textpattern');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 211, 'textile', 'Textile');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 212, 'windows-internet-explorer-7', 'Windows Internet Explorer 7');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 175, 'symphony-forum', 'Symphony Forum');

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (118, 14, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (93, 113, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (99, 114, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (112, 115, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (100, 116, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (128, 117, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (130, 118, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (142, 119, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (87, 120, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (96, 164, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (104, 165, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (132, 166, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (110, 167, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (102, 168, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (126, 169, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (111, 170, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (131, 171, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (98, 172, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (94, 173, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (105, 174, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (124, 175, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (125, 176, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (97, 177, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (141, 178, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (121, 179, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (140, 180, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (139, 181, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (134, 182, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (120, 183, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (119, 184, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (108, 185, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (138, 186, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (117, 187, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (116, 188, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (137, 189, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (136, 190, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (135, 191, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (106, 192, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (115, 193, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (114, 194, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (107, 195, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (101, 196, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (113, 197, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (109, 198, 7);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (90, 211, 3);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `relation_id`) VALUES (91, 212, 3);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 14, 'http-symphony-cmscom', 'http://symphony-cms.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 113, 'http-wwwsubtractioncom', 'http://www.subtraction.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 114, 'http-wwwgettyimagescom', 'http://www.gettyimages.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 115, 'http-wwwdesignbyfirecom-p=30', 'http://www.designbyfire.com/?p=30');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 116, 'http-wwwistockphotocom', 'http://www.istockphoto.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (119, 117, 'http-wwwglobeprinterscom', 'http://www.globeprinters.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (121, 118, 'http-wwwdomain7com', 'http://www.domain7.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 119, 'http-wwwcrazyeggcom', 'http://www.crazyegg.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 120, 'http-wwwadobecom-designcenter-thinktank-gettingreal', 'http://www.adobe.com/designcenter/thinktank/gettingreal/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 164, 'http-wwwmarkboultoncouk', 'http://www.markboulton.co.uk/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 165, 'http-wwwcsszengardencom', 'http://www.csszengarden.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (122, 166, 'http-wwwget-shortycom', 'http://www.get-shorty.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 168, 'http-wwwveercom', 'http://www.veer.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (117, 169, 'http-wwwfreecsscartcom-indexphp-about-freecsscart', 'http://www.freecsscart.com/index.php/about-freecsscart/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 170, 'http-wwwflickrcom-photos-jonastherkildsen-122881874', 'http://www.flickr.com/photos/jonastherkildsen/122881874/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 172, 'http-jquerycom-demo-thickbox', 'http://jquery.com/demo/thickbox/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 173, 'http-wwwcodylindleycom', 'http://www.codylindley.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 174, 'http-wwwalistapartcom', 'http://www.alistapart.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 176, 'http-symphony-cmscom-explore', 'http://symphony-cms.com/explore/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (89, 177, 'http-wwwejeliotcom', 'http://www.ejeliot.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 178, 'http-marketcirclecom', 'http://marketcircle.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 179, 'http-macromatescom', 'http://macromates.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 180, 'http-wwwbarebonescom-products-yojimbo', 'http://www.barebones.com/products/yojimbo/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 181, 'http-wwwpaniccom-transmit', 'http://www.panic.com/transmit/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 183, 'http-wwwinquisitorxcom-safari', 'http://www.inquisitorx.com/safari/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 184, 'http-wwwentropych-software-macosx-testxslt', 'http://www.entropy.ch/software/macosx/#testxslt');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 185, 'http-joyentcom', 'http://joyent.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 186, 'http-mampinfo-en-home', 'http://mamp.info/en/home/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 187, 'http-sktiorg', 'http://skti.org/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 188, 'http-cyberduckch', 'http://cyberduck.ch/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 189, 'http-wwwstuntsoftwarecom-onthejob', 'http://www.stuntsoftware.com/OnTheJob/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 190, 'http-wwwprettygoodsoftwareorg-iratchet', 'http://www.prettygoodsoftware.org/iratchet/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 191, 'http-wwwchachingappcom', 'http://www.chachingapp.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 192, 'http-wwwiggsoftwarecom-ibiz-indexhtml', 'http://www.iggsoftware.com/ibiz/index.html');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 193, 'http-quicksilverblacktreecom', 'http://quicksilver.blacktree.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 194, 'http-wwwdesign-agencycom', 'http://www.design-agency.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 195, 'http-moorstationorg-typoasis', 'http://moorstation.org/typoasis/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 196, 'http-wwwsxchu', 'http://www.sxc.hu/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 197, 'https-wwwlogoloungecom', 'https://www.logolounge.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 198, 'http-textpatterncom', 'http://textpattern.com/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 211, 'http-textismcom-tools-textile', 'http://textism.com/tools/textile/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 212, 'http-wwwmicrosoftcom-windows-ie-defaultmspx-mg-id=10010', 'http://www.microsoft.com/windows/ie/default.mspx?mg_ID=10010');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 175, 'http-wwwsymphony-cmscom-discuss', 'http://www.symphony-cms.com/discuss/');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (123, 182, 'http-wwwbitrocketorg', 'http://www.bitrocket.org/');

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (118, 14, 'Open source XSLT content management system', '<p>Open source XSLT content management system</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (93, 113, 'Subtraction is the personal website of Khoi Vinh, a co-founder and, as of 31 Dec 2005, a former employee of \"Behavior\":http://www.behaviordesign.com/, a leading interaction design studio in New York City. He now works as the Design Director of \"NYTimes.com\":http://www.nytimes.com/. He has also been working on a project called \"Shorty\":http://www.get-shorty.com/ that takes ridiculously long URLs and creates short aliases.', '<p>Subtraction is the personal website of Khoi Vinh, a co-founder and, as of 31 Dec 2005, a former employee of &#8220;Behavior&#8221;:http://www.behaviordesign.com/, a leading interaction design studio in New York City. He now works as the Design Director of &#8220;NYTimes.com&#8221;:http://www.nytimes.com/. He has also been working on a project called &#8220;Shorty&#8221;:http://www.get-shorty.com/ that takes ridiculously long URLs and creates short aliases.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 114, 'First there was PhotoDisc, then there was Getty Images. The two became one and bought up as much as they could. They are still considered the premier resource for stock photography, both royalty-free and rights-managed. Expect to pay a premium for these images, especially if you choose rights-managed imagery.', '<p>First there was PhotoDisc, then there was Getty Images. The two became one and bought up as much as they could. They are still considered the premier resource for stock photography, both royalty-free and rights-managed. Expect to pay a premium for these images, especially if you choose rights-managed imagery.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 115, 'On Khoi Vinh\'s site, \"Subtraction\":http://www.subtraction.com/, one post ranked high on his list of things Elsewhere: an open letter to John Warnock written by Andrei Michael Herasimchuk at \"Design by Fire\":http://www.designbyfire.com/.', '<p>On Khoi Vinh&#8217;s site, &#8220;Subtraction&#8221;:http://www.subtraction.com/, one post ranked high on his list of things Elsewhere: an open letter to John Warnock written by Andrei Michael Herasimchuk at &#8220;Design by Fire&#8221;:http://www.designbyfire.com/.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 116, 'For inexpensive stock photography and illustration, there is no better source on the web. Getty Images now owns them, but things appear to be the same as before, and all is still well. For highly specific subject matter, iStockphoto may not be the best source, but for sheer affordability, it\'s hard to beat.', '<p>For inexpensive stock photography and illustration, there is no better source on the web. Getty Images now owns them, but things appear to be the same as before, and all is still well. For highly specific subject matter, iStockphoto may not be the best source, but for sheer affordability, it&#8217;s hard to beat.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (128, 117, 'With a total of 12 printing machines at their disposal, they are capable of handling almost any project, small or large. Their pressroom is made up of 95% quality Heidelberg printing machines. If they cannot accommodate a project in-house, they will outsource the project for you, take care of all the details and deliver on time quality printed project. I trust Globe Printers with all my printing.', '<p>With a total of 12 printing machines at their disposal, they are capable of handling almost any project, small or large. Their pressroom is made up of 95% quality Heidelberg printing machines. If they cannot accommodate a project in-house, they will outsource the project for you, take care of all the details and deliver on time quality printed project. I trust Globe Printers with all my printing.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (130, 118, 'Domain7 provides a complete range of web solutions & services, from site design to site hosting, large online system development to pre-built web management tools.\r\n\r\nRouteOne is a technology infrastructure built to help companies and organizations with their web initiatives. RouteOne tools provide a broad array of \"snap together\" modules for managing just about any web need - from web store-fronts to large corporate Intranets and everything in between. Based on this design, you can enjoy rapid deployments of custom web solutions.', '<p>Domain7 provides a complete range of web solutions &amp; services, from site design to site hosting, large online system development to pre-built web management tools.</p>\n\n<p>RouteOne is a technology infrastructure built to help companies and organizations with their web initiatives. RouteOne tools provide a broad array of &#8220;snap together&#8221; modules for managing just about any web need - from web store-fronts to large corporate Intranets and everything in between. Based on this design, you can enjoy rapid deployments of custom web solutions.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 120, 'Khoi Vinh, Design Director for NYTimes.com, and author of Subtraction, his personal weblog, has contributed to the Adobe Designer Center Think Tank, writing about the approach of Jason Fried, president of 37 signals. 37 signals has carved out a place on the web as a creator of paradigm shifting applications developed in Ruby on Rails including Basecamp, Backpack, and Campfire.', '<p>Khoi Vinh, Design Director for NYTimes.com, and author of Subtraction, his personal weblog, has contributed to the Adobe Designer Center Think Tank, writing about the approach of Jason Fried, president of 37 signals. 37 signals has carved out a place on the web as a creator of paradigm shifting applications developed in Ruby on Rails including Basecamp, Backpack, and Campfire.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 164, 'This is primarily designed to be a portfolio presence for Mark Boulton, who lives near and works in the capital of Wales, Cardiff. He publishes articles related to typography, design, and information architecture.', '<p>This is primarily designed to be a portfolio presence for Mark Boulton, who lives near and works in the capital of Wales, Cardiff. He publishes articles related to typography, design, and information architecture.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 165, 'The site that started it all for me: XHTML, CSS, Web Standards and the beauty of the separation of structure and presentation. The site was created by a good Canadian kid, Dave Shea of [mezzoblue](http://www.mezzoblue.com/). The site has been such a phenomenon that it also has a companion book: The Zen of CSS Design.', '<p>The site that started it all for me: XHTML, CSS, Web Standards and the beauty of the separation of structure and presentation. The site was created by a good Canadian kid, Dave Shea of <a href=\"http://www.mezzoblue.com/\">mezzoblue</a>. The site has been such a phenomenon that it also has a companion book: The Zen of CSS Design.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 166, 'Khoi Vinh has been working on a project called [Shorty](http://www.get-shorty.com/) that takes ridiculously long URLs and creates short aliases.\r\n', '<p>Khoi Vinh has been working on a project called <a href=\"http://www.get-shorty.com/\">Shorty</a> that takes ridiculously long URLs and creates short aliases.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 167, 'Mark Boulton has been writing about [managing work flow](http://www.markboulton.co.uk/journal/comments/sorting_my_workflow_out/), and thinking about cash flow, and a [new application](http://www.markboulton.co.uk/journal/comments/flow_a_money_manager_for_freelancers_and_small_businesses/) that he has been working on.', '<p>Mark Boulton has been writing about <a href=\"http://www.markboulton.co.uk/journal/comments/sorting_my_workflow_out/\">managing work flow</a>, and thinking about cash flow, and a <a href=\"http://www.markboulton.co.uk/journal/comments/flow_a_money_manager_for_freelancers_and_small_businesses/\">new application</a> that he has been working on.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 168, '*Visual Elements for Creatives.* A website dedicated to the needs of designers, and they are many and expensive. Veer makes them look beautiful, affordable and desirable: photography, illustration, type, motion graphics and clips, and other merchandise and ideas for creative types.', '<p><em>Visual Elements for Creatives.</em> A website dedicated to the needs of designers, and they are many and expensive. Veer makes them look beautiful, affordable and desirable: photography, illustration, type, motion graphics and clips, and other merchandise and ideas for creative types.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (126, 169, 'The e-commerce side of the web 2.0 experience has been severely lacking, so a team has been put together to address this problem. What is freeCSScart?', '<p>The e-commerce side of the web 2.0 experience has been severely lacking, so a team has been put together to address this problem. What is freeCSScart?</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 170, 'Jonas Therkildsen has collected a full page of Web 2.0 logos, and assembled them into a collage representing the latest trend in web design and application development.', '<p>Jonas Therkildsen has collected a full page of Web 2.0 logos, and assembled them into a collage representing the latest trend in web design and application development.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (131, 171, 'Work with files on your web server as you would on your desktop. Relay allows you to:\r\n\r\n* drag-n-drop files and folders\r\n* dynamic loading file structure\r\n* upload progress bar\r\n* thumbnail view, including pdf\r\n* multiple users & accounts', '<p>Work with files on your web server as you would on your desktop. Relay allows you to:</p>\n\n<ul>\n<li>drag-n-drop files and folders</li>\n<li>dynamic loading file structure</li>\n<li>upload progress bar</li>\n<li>thumbnail view, including pdf</li>\n<li>multiple users &amp; accounts</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 172, 'ThickBox is a webpage UI dialog widget written in JavaScript on top of the [jQuery](http://www.jquery.com/) library. Its function is to show a single image, multiple images, inline content, iframed content, or content served through AJAX in a hybrid modal.', '<p>ThickBox is a webpage UI dialog widget written in JavaScript on top of the <a href=\"http://www.jquery.com/\">jQuery</a> library. Its function is to show a single image, multiple images, inline content, iframed content, or content served through AJAX in a hybrid modal.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 173, 'Cody Lindley reflects on Web development, Web standards, CSS, XHTML, CMS, site optimization, PHP, MySQL, Macromedia Flash, accessibility, information architecture, visual design, interaction design, and information design. This core content is augmented with insights from his personal life, miscellaneous topics and professional work.', '<p>Cody Lindley reflects on Web development, Web standards, CSS, XHTML, CMS, site optimization, PHP, MySQL, Macromedia Flash, accessibility, information architecture, visual design, interaction design, and information design. This core content is augmented with insights from his personal life, miscellaneous topics and professional work.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 174, 'Jefferey Zeldman\'s online publication \"For people who make websites\": A List Apart Magazine explores the design, development, and meaning of web content, with a special focus on web standards and best practices.', '<p>Jefferey Zeldman&#8217;s online publication &#8220;For people who make websites&#8221;: A List Apart Magazine explores the design, development, and meaning of web content, with a special focus on web standards and best practices.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (124, 175, 'The online forum for [Symphony](http://bauhouse.ca/resources/applications/symphony-cms/) users. Learn how to use Symphony and get involved with a growing community of developers who are using web standards to build their sites.', '<p>The online forum for <a href=\"http://bauhouse.ca/resources/applications/symphony-cms/\">Symphony</a> users. Learn how to use Symphony and get involved with a growing community of developers who are using web standards to build their sites.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (125, 176, 'Symphony is a web publishing application built in PHP and MySQL for building sites using web standards: CSS, XHTML, XML and XSLT. Symphony has been developed by Twentyone Degree in Brisbane, Australia. It fills a niche between open source blogging applications and enterprise content management systems and frameworks.', '<p>Symphony is a web publishing application built in PHP and MySQL for building sites using web standards: CSS, XHTML, XML and XSLT. Symphony has been developed by Twentyone Degree in Brisbane, Australia. It fills a niche between open source blogging applications and enterprise content management systems and frameworks.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 177, 'Web Standards, PHP, HTML, CSS, JavaScript and other related technologies. Ed Eliot is a web development manager for Yahoo! based in London. He is particularly interested in developing sites which adhere to modern web standards. Since working at Yahoo! He has also discovered a whole new meaning to cross browser testing. Note the recently published [Yahoo! Graded Browser Support](http://developer.yahoo.com/yui/articles/gbs/gbs.html) document.', '<p>Web Standards, PHP, HTML, CSS, JavaScript and other related technologies. Ed Eliot is a web development manager for Yahoo! based in London. He is particularly interested in developing sites which adhere to modern web standards. Since working at Yahoo! He has also discovered a whole new meaning to cross browser testing. Note the recently published <a href=\"http://developer.yahoo.com/yui/articles/gbs/gbs.html\">Yahoo! Graded Browser Support</a> document.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 178, 'Marketcircle Inc. develops award-winning business applications for Mac OS X, including Daylite business productivity management software, and Billings, a practical time-billing and invoicing application. Incorporated in 1999, Marketcircle Inc. is located in Toronto, Canada, with offices in London, United Kingdom, and partners worldwide.', '<p>Marketcircle Inc. develops award-winning business applications for Mac OS X, including Daylite business productivity management software, and Billings, a practical time-billing and invoicing application. Incorporated in 1999, Marketcircle Inc. is located in Toronto, Canada, with offices in London, United Kingdom, and partners worldwide.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 179, 'TextMate brings Apple\'s approach to operating systems into the world of text editors. By bridging UNIX underpinnings and GUI, TextMate cherry-picks the best of both worlds to the benefit of expert scripters and novice users alike.', '<p>TextMate brings Apple&#8217;s approach to operating systems into the world of text editors. By bridging UNIX underpinnings and GUI, TextMate cherry-picks the best of both worlds to the benefit of expert scripters and novice users alike.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 180, '**Yojimbo-Your effortless, reliable information organizer for Mac OS X.** Yojimbo makes keeping all the small (or even large) bits of information that pour in every day organized and accessible. It is so simple, there is no learning curve. Yojimbo\'s mechanism for collecting, storing and finding information is so natural and effortless, it will change your life -- without changing the way you work.', '<p><strong>Yojimbo-Your effortless, reliable information organizer for Mac OS X.</strong> Yojimbo makes keeping all the small (or even large) bits of information that pour in every day organized and accessible. It is so simple, there is no learning curve. Yojimbo&#8217;s mechanism for collecting, storing and finding information is so natural and effortless, it will change your life &#8211; without changing the way you work.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (139, 181, 'FTP, or File Transfer Protocol, is the universal way to send, receive, and manage your files and folders using the internet. If you manage a web site, need to send a file to a friend running an FTP server, need to post eBay images to a image host, or download a lot of software updates, then Transmit is the perfect program for you: it makes FTP easy and fun!', '<p>FTP, or File Transfer Protocol, is the universal way to send, receive, and manage your files and folders using the internet. If you manage a web site, need to send a file to a friend running an FTP server, need to post eBay images to a image host, or download a lot of software updates, then Transmit is the perfect program for you: it makes FTP easy and fun!</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (120, 183, 'A Mac OS X instant search plugin for Safari from David Watanabe.', '<p>A Mac OS X instant search plugin for Safari from David Watanabe.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 184, 'Marc Liyanage\'s free Mac OS X application for testing XSLT. \r\n\r\n> TestXSLT is a small, AppleScript-able Cocoa application for experimenting with the XSLT and XSL-FO languages on Mac OS X.\r\n> \r\n> It uses the Sablotron, Gnome Libxslt, Saxon and Xalan-J XSLT processors, the FOP XSL-FO rendering engine, has lots of new features and a friendly user interface that makes playing around and learning XSLT fun.\r\n', '<p>Marc Liyanage&#8217;s free Mac OS X application for testing XSLT.</p>\n\n<blockquote>\n  <p>TestXSLT is a small, AppleScript-able Cocoa application for experimenting with the XSLT and XSL-FO languages on Mac OS X.</p>\n  \n  <p>It uses the Sablotron, Gnome Libxslt, Saxon and Xalan-J XSLT processors, the FOP XSL-FO rendering engine, has lots of new features and a friendly user interface that makes playing around and learning XSLT fun.</p>\n</blockquote>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 185, 'Joyent offers simple, powerful, web-based software that provides small teams with email, calendars, contacts, and shared applications.\r\n\r\nJoyent is also responsible for [TextDrive](http://www.textdrive.com/) (started by [Textpattern](http://www.textpattern.com/)\'s very own [Dean Allen](http://www.textism.com/)), [Strongspace](http://www.strongspace.com/) and their newest offering [Bingo!](http://www.bingodisk.com/)', '<p>Joyent offers simple, powerful, web-based software that provides small teams with email, calendars, contacts, and shared applications.</p>\n\n<p>Joyent is also responsible for <a href=\"http://www.textdrive.com/\">TextDrive</a> (started by <a href=\"http://www.textpattern.com/\">Textpattern</a>&#8217;s very own <a href=\"http://www.textism.com/\">Dean Allen</a>), <a href=\"http://www.strongspace.com/\">Strongspace</a> and their newest offering <a href=\"http://www.bingodisk.com/\">Bingo!</a></p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (138, 186, 'The abbreviation MAMP stands for: Macintosh, Apache, Mysql and PHP. With just a few mouse-clicks, you can install Apache, PHP and MySQL for Mac OS X! MAMP installs a local server enviroment in a matter of seconds on your Mac OS X computer, be it PowerBook or iMac.', '<p>The abbreviation MAMP stands for: Macintosh, Apache, Mysql and PHP. With just a few mouse-clicks, you can install Apache, PHP and MySQL for Mac OS X! MAMP installs a local server enviroment in a matter of seconds on your Mac OS X computer, be it PowerBook or iMac.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (117, 187, 'skEdit is a text editor for Mac OS X (10.3 or later), with a focus on web design and development.', '<p>skEdit is a text editor for Mac OS X (10.3 or later), with a focus on web design and development.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 188, 'Cyberduck is an open source FTP and SFTP (SSH Secure File Transfer) browser licenced under the GPL with an easy to use interface, integration with external editors and support for many Mac OS X system technologies such as Spotlight, Bonjour, the Keychain and AppleScript.', '<p>Cyberduck is an open source FTP and SFTP (SSH Secure File Transfer) browser licenced under the GPL with an easy to use interface, integration with external editors and support for many Mac OS X system technologies such as Spotlight, Bonjour, the Keychain and AppleScript.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (137, 189, 'On The Job is an unobtrusive, easy to use time tracker. It\'s not bloated with features you\'ll never use, yet it\'s powerful enough to handle all of your time tracking needs. On The Job is perfect for anyone billing by the hour.\r\n\r\nVia [Glenn Wolsey: On The Job - Time Tracking Made Easy](http://www.glennwolsey.com/?p=33)', '<p>On The Job is an unobtrusive, easy to use time tracker. It&#8217;s not bloated with features you&#8217;ll never use, yet it&#8217;s powerful enough to handle all of your time tracking needs. On The Job is perfect for anyone billing by the hour.</p>\n\n<p>Via <a href=\"http://www.glennwolsey.com/?p=33\">Glenn Wolsey: On The Job - Time Tracking Made Easy</a></p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (136, 190, 'Ratchet is a new Tiger-only Invoicing and Billing application written in Objective-C/Cocoa. iRatchet provides the features and functionality common to billing and invoicing apps, (tracking hourly and fixed entries, multiple clients/projects, timers, pdf output, emailing of invoices, etc.), it excells in workflow, mileage tracking, web integration and ease-of-use.', '<p>Ratchet is a new Tiger-only Invoicing and Billing application written in Objective-C/Cocoa. iRatchet provides the features and functionality common to billing and invoicing apps, (tracking hourly and fixed entries, multiple clients/projects, timers, pdf output, emailing of invoices, etc.), it excells in workflow, mileage tracking, web integration and ease-of-use.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (135, 191, 'Cha-Ching is a fun and easy to use money manager, done Mac OS X style. A tag based database lets you organize and search for your incoming and outgoing transactions your way. With Cha-Ching, you can also organize pending transactions, so you can keep track of the the cash you owe the electric company as well as the cash others might owe you -- and with iCal integration, you\'ll never forget a payment. Cha-Ching also offers fun little doodads you may have not expected -- you can keep a photo inventory of your purchased items for insurance and tax purposes, or just for fun.', '<p>Cha-Ching is a fun and easy to use money manager, done Mac OS X style. A tag based database lets you organize and search for your incoming and outgoing transactions your way. With Cha-Ching, you can also organize pending transactions, so you can keep track of the the cash you owe the electric company as well as the cash others might owe you &#8211; and with iCal integration, you&#8217;ll never forget a payment. Cha-Ching also offers fun little doodads you may have not expected &#8211; you can keep a photo inventory of your purchased items for insurance and tax purposes, or just for fun.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 192, 'iBiz is an easy to use time-billing and invoicing application. It integrates with iCal and Address Book, offers tax support, easily generates custom invoices and does all data saving behind the scenes for you.', '<p>iBiz is an easy to use time-billing and invoicing application. It integrates with iCal and Address Book, offers tax support, easily generates custom invoices and does all data saving behind the scenes for you.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 193, 'Search. Command. Act without Doing.\r\n\r\nQuicksilver\'s greatest strength, however, is not search. Any item you are able to find, drag, or otherwise pull into its universe is endowed with many potential uses. Hitting tab takes you to the action field, where you can use the same adaptive search to select what you would like to do. Among other things, files can be emailed, copied, compressed. Text can be modified, transmitted between programs, or searched for on the web. Some actions even support an indirect object, so you can send an item to a person, move files to another folder, or open files with a specific application.', '<p>Search. Command. Act without Doing.</p>\n\n<p>Quicksilver&#8217;s greatest strength, however, is not search. Any item you are able to find, drag, or otherwise pull into its universe is endowed with many potential uses. Hitting tab takes you to the action field, where you can use the same adaptive search to select what you would like to do. Among other things, files can be emailed, copied, compressed. Text can be modified, transmitted between programs, or searched for on the web. Some actions even support an indirect object, so you can send an item to a person, move files to another folder, or open files with a specific application.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 194, 'If you are looking for someone to hire for your next design project, there is a directory of selected design companies and professionals available here. It would be interesting to know what their criteria are for making their selections.', '<p>If you are looking for someone to hire for your next design project, there is a directory of selected design companies and professionals available here. It would be interesting to know what their criteria are for making their selections.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 195, 'A collection of digital revivals and original typeface designs, featuring primarily scripts of various origins.', '<p>A collection of digital revivals and original typeface designs, featuring primarily scripts of various origins.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 196, 'The leading free stock photo site. Share your photos with fellow designers. SXC is a friendly community of photography addicts who generously offer their works to the public free of charge. The gallery contains over 200,000 stock photos by more than 15,000 photographers.', '<p>The leading free stock photo site. Share your photos with fellow designers. SXC is a friendly community of photography addicts who generously offer their works to the public free of charge. The gallery contains over 200,000 stock photos by more than 15,000 photographers.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 197, 'LogoLounge allows designers to share their ideas and concepts with peers and clients. As a member of LogoLounge ($100.00 annual fee), you can search through thousands of logos created by designers and firms known and unknown, as well as upload your own logos.', '<p>LogoLounge allows designers to share their ideas and concepts with peers and clients. As a member of LogoLounge ($100.00 annual fee), you can search through thousands of logos created by designers and firms known and unknown, as well as upload your own logos.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 198, 'Textpattern is a free, flexible, elegant, easy-to-use content management system for all kinds of websites, even weblogs. Many of the sites that I have developed were built with Textpattern, and it has served me and my clients very well. However, now that I have discovered [Symphony](http://21degrees.com.au/products/symphony/), I am finding the flexibility of Symphony to be far superior.\r\n\r\nTextpattern 4.04 has just been released, so it may be worth revisiting. One of the main improvements would include the release of [Textile 2.0](http://thresholdstate.com/threshold/4210/textile-two-point-oh) as part of the core Textpattern code.', '<p>Textpattern is a free, flexible, elegant, easy-to-use content management system for all kinds of websites, even weblogs. Many of the sites that I have developed were built with Textpattern, and it has served me and my clients very well. However, now that I have discovered <a href=\"http://21degrees.com.au/products/symphony/\">Symphony</a>, I am finding the flexibility of Symphony to be far superior.</p>\n\n<p>Textpattern 4.04 has just been released, so it may be worth revisiting. One of the main improvements would include the release of <a href=\"http://thresholdstate.com/threshold/4210/textile-two-point-oh\">Textile 2.0</a> as part of the core Textpattern code.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 211, '#### Textile: A Humane Web Text Generator.\r\n\r\nTextile has been one of the many benefits of working with Textpattern as a content management system. It is a way of formatting text in HTML without knowing anything about HTML.', '<h4>Textile: A Humane Web Text Generator.</h4>\n\n<p>Textile has been one of the many benefits of working with Textpattern as a content management system. It is a way of formatting text in HTML without knowing anything about HTML.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 212, 'Windows Internet Explorer 7 was released by Microsoft on October 18, 2006. This announcement is good step forward for standards compliant web design as many, though not all, of the issues that have plagued the aging web browser have been resolved.', '<p>Windows Internet Explorer 7 was released by Microsoft on October 18, 2006. This announcement is good step forward for standards compliant web design as many, though not all, of the issues that have plagued the aging web browser have been resolved.</p>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (142, 119, '**Visualize your visitors.** Track, Evaluate and Improve your site: Get a clear picture of where your visitors are clicking and enhance your site\'s results. This tool offers a few ways to see what people are interested in: \r\n\r\n* Overlay: Get the details on each individual element - how many times a link is clicked.\r\n* List: View a full summary of raw click data\r\n* Heat Map: See what\'s hot and what\'s not on your site', '<p><strong>Visualize your visitors.</strong> Track, Evaluate and Improve your site: Get a clear picture of where your visitors are clicking and enhance your site&#8217;s results. This tool offers a few ways to see what people are interested in:</p>\n\n<ul>\n<li>Overlay: Get the details on each individual element - how many times a link is clicked.</li>\n<li>List: View a full summary of raw click data</li>\n<li>Heat Map: See what&#8217;s hot and what&#8217;s not on your site</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (134, 182, 'According to Wikipedia, \r\n\r\n> BitTorrent is the name of a peer-to-peer (P2P) file distribution protocol, and is the name of a free software implementation of that protocol. The protocol was originally designed and created by programmer Bram Cohen, and is now maintained by BitTorrent Inc. BitTorrent is designed to distribute large amounts of data widely without incurring the corresponding consumption in costly server and bandwidth resources.\r\n\r\nBitRocket is a Mac OS X client using the BitTorrent protocol.', '<p>According to Wikipedia,</p>\n\n<blockquote>\n  <p>BitTorrent is the name of a peer-to-peer (P2P) file distribution protocol, and is the name of a free software implementation of that protocol. The protocol was originally designed and created by programmer Bram Cohen, and is now maintained by BitTorrent Inc. BitTorrent is designed to distribute large amounts of data widely without incurring the corresponding consumption in costly server and bandwidth resources.</p>\n</blockquote>\n\n<p>BitRocket is a Mac OS X client using the BitTorrent protocol.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (118, 14, 'Symphony is an open source content management system designed to let developers program exclusively in the XSLT templating language.\r\n\r\nThe philosophy behind Symphony is that nothing should be sacrificed for flexibility – developers should have full control over their website’s markup, URLs and data structures.', '<p>Symphony is an open source content management system designed to let developers program exclusively in the XSLT templating language.</p>\n\n<p>The philosophy behind Symphony is that nothing should be sacrificed for flexibility – developers should have full control over their website’s markup, URLs and data structures.</p>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (93, 113, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 114, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 115, 'Andrei, with all due respect, invites Mr. Warnock of [Adobe Systems](http://www.adobe.com/aboutadobe/pressroom/executivebios/johnwarnock.html) to release a number of core fonts to the public domain to rescue the web from \"the likes of Arial\". I would certainly welcome this possibility, as the limits of publishing on the web have moved some designers to adopt proprietary technologies, such as Flash, to overcome the dearth of high quality typefaces that are universally available for use on the web.\r\n\r\n#### Arial Under Fire\r\n\r\nPoor Arial gets little respect, even though the intention of the designers, [Robin Nicholas](http://www.monotypefonts.com/Foundry/DesignerProfiles.asp?show=nicholas) and Patricia Saunders, was never to replace Helvetica, but to provide a contemporary sans serif design for Apple Computer\'s, at the time (1990), new [TrueType](http://en.wikipedia.org/wiki/TrueType) font format.\r\n\r\nWhile every PostScript printer generally ships with support for a core set of fonts, not every printer is a PostScript printer. Operating systems also ship with their own core set of fonts. Microsoft chose to bypass higher type licensing costs by commissioning their own fonts to ship with their Windows operating system, Arial being one of those fonts. [Arial](http://en.wikipedia.org/wiki/Arial) has since been the topic of much controversy because of the lack of copyright protection on type designs and what is considered the indiscriminate theft of designs through the proliferation of fonts that mimick or duplicate the original designs. Arial has come under fire for being one of these fonts.\r\n\r\nMacUser published an article, Twenty/20 in their July 2005 edition, ([available as a PDF file](http://www.fontwise.com/PDFs/Twenty20_080705.pdf) from www.fontwise.com) regarding the poor reputation of Arial, in effect coming to its defense as a legitimate and unique type design. The similarity in the widths of the glyphs does, however, raise suspicion as to Microsoft\'s intention to replace Helvetica. More than likely, it is Microsoft\'s mere involvement that raises the most suspicion.\r\n\r\n#### A Presumption of Generosity\r\n\r\nIf we cannot presume upon the generosity of John Warnock I have wondered whether there may be a groundswell of support for the development of an opensource typeface design. Yet, I can\'t imagine how designers would be able to agree on what might be the best design direction for such a project. Also, the likelyhood that designers would scramble to work on a project for which there would be no possibility for remuneration is slim to none.', '<p>Andrei, with all due respect, invites Mr. Warnock of <a href=\"http://www.adobe.com/aboutadobe/pressroom/executivebios/johnwarnock.html\">Adobe Systems</a> to release a number of core fonts to the public domain to rescue the web from &#8220;the likes of Arial&#8221;. I would certainly welcome this possibility, as the limits of publishing on the web have moved some designers to adopt proprietary technologies, such as Flash, to overcome the dearth of high quality typefaces that are universally available for use on the web.</p>\n\n<h4>Arial Under Fire</h4>\n\n<p>Poor Arial gets little respect, even though the intention of the designers, <a href=\"http://www.monotypefonts.com/Foundry/DesignerProfiles.asp?show=nicholas\">Robin Nicholas</a> and Patricia Saunders, was never to replace Helvetica, but to provide a contemporary sans serif design for Apple Computer&#8217;s, at the time (1990), new <a href=\"http://en.wikipedia.org/wiki/TrueType\">TrueType</a> font format.</p>\n\n<p>While every PostScript printer generally ships with support for a core set of fonts, not every printer is a PostScript printer. Operating systems also ship with their own core set of fonts. Microsoft chose to bypass higher type licensing costs by commissioning their own fonts to ship with their Windows operating system, Arial being one of those fonts. <a href=\"http://en.wikipedia.org/wiki/Arial\">Arial</a> has since been the topic of much controversy because of the lack of copyright protection on type designs and what is considered the indiscriminate theft of designs through the proliferation of fonts that mimick or duplicate the original designs. Arial has come under fire for being one of these fonts.</p>\n\n<p>MacUser published an article, Twenty/20 in their July 2005 edition, (<a href=\"http://www.fontwise.com/PDFs/Twenty20_080705.pdf\">available as a PDF file</a> from www.fontwise.com) regarding the poor reputation of Arial, in effect coming to its defense as a legitimate and unique type design. The similarity in the widths of the glyphs does, however, raise suspicion as to Microsoft&#8217;s intention to replace Helvetica. More than likely, it is Microsoft&#8217;s mere involvement that raises the most suspicion.</p>\n\n<h4>A Presumption of Generosity</h4>\n\n<p>If we cannot presume upon the generosity of John Warnock I have wondered whether there may be a groundswell of support for the development of an opensource typeface design. Yet, I can&#8217;t imagine how designers would be able to agree on what might be the best design direction for such a project. Also, the likelyhood that designers would scramble to work on a project for which there would be no possibility for remuneration is slim to none.</p>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (100, 116, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (128, 117, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (130, 118, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (142, 119, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 120, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 164, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 165, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (132, 166, 'According to Khoi:\r\n\r\n> The critical difference between Shorty and TinyURL is that Shorty resides on your server. You install it (all you need is a MySQL database and PHP) and you then have the power of TinyURL and its ilk, but rather than being tied to a third party, it\'s a part of your brand.\r\n\r\n#### Related Links\r\n\r\n* [Subtraction: Announcing Shorty](http://www.subtraction.com/archives/2006/0824_announcing_s.php)', '<p>According to Khoi:</p>\n\n<blockquote>\n  <p>The critical difference between Shorty and TinyURL is that Shorty resides on your server. You install it (all you need is a MySQL database and PHP) and you then have the power of TinyURL and its ilk, but rather than being tied to a third party, it&#8217;s a part of your brand.</p>\n</blockquote>\n\n<h4>Related Links</h4>\n\n<ul>\n<li><a href=\"http://www.subtraction.com/archives/2006/0824_announcing_s.php\">Subtraction: Announcing Shorty</a></li>\n</ul>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (110, 167, 'I have been in search of an application such as this, and I began to wonder whether something like this might be possible with Symphony from Twentyone Degrees. Mark had built an application using Expression Engine, but decided to develop the application further. It appears that [Keeran](http://www.keeran.com/2006/08/25/simple-money-management-for-freelancers-and-small-businesses/) has joined in this endeavour and is very likely building this application in Ruby on Rails. News should be appearing soon.\r\n\r\n**Note**: It appears that the getflowing.com project has been abandoned.', '<p>I have been in search of an application such as this, and I began to wonder whether something like this might be possible with Symphony from Twentyone Degrees. Mark had built an application using Expression Engine, but decided to develop the application further. It appears that <a href=\"http://www.keeran.com/2006/08/25/simple-money-management-for-freelancers-and-small-businesses/\">Keeran</a> has joined in this endeavour and is very likely building this application in Ruby on Rails. News should be appearing soon.</p>\n\n<p><strong>Note</strong>: It appears that the getflowing.com project has been abandoned.</p>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 168, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (126, 169, '> Imagine the ability to make a shopping-cart look the way you want. No, not just be able change the background color of a table, but completely change the form and function of a shopping cart with a switch of your css file. Now imagine that it is utilizing 100% CSS2 and xhtml standards. Then, imagine that you could set-up and fully customize this shopping cart in a matter of hours. Finally, imagine that it was Free! This will no longer be just an object of imagination.', '<blockquote>\n  <p>Imagine the ability to make a shopping-cart look the way you want. No, not just be able change the background color of a table, but completely change the form and function of a shopping cart with a switch of your css file. Now imagine that it is utilizing 100% CSS2 and xhtml standards. Then, imagine that you could set-up and fully customize this shopping cart in a matter of hours. Finally, imagine that it was Free! This will no longer be just an object of imagination.</p>\n</blockquote>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 170, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (131, 171, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (98, 172, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 173, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 174, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (124, 175, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (125, 176, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (97, 177, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (141, 178, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (121, 179, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (140, 180, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (139, 181, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (134, 182, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (120, 183, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (119, 184, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (108, 185, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (138, 186, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (117, 187, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (116, 188, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (137, 189, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (136, 190, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (135, 191, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 192, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 193, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 194, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 195, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 196, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (113, 197, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (109, 198, NULL, NULL);
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 211, '[Textile 2.0 Announcement](http://www.thresholdstate.com/threshold/4210/textile-two-point-oh)', '<p><a href=\"http://www.thresholdstate.com/threshold/4210/textile-two-point-oh\">Textile 2.0 Announcement</a></p>\n');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 212, 'Those who have desired to closely follow the World Wide Web Consortium\'s recommendations for properly structured (XHTML) and styled (CSS) web documents have found rendering inconsistencies between several browsers on various platforms to be a major source of frustration in their work. Internet Explorer 6 has been the subject of much of that frustration, because it has not been updated since it was released 5 years ago. Much has changed in that time, but because Explorer has been the most used browser for several years by virtue of its widespread distribution as the default browser on the Windows operating system, much of the web design community has been either waiting for the update or recommending other browsers, such as [FireFox](http://www.mozilla.com/firefox/).\r\n\r\nIt remains to be seen how quickly the new browser will be adopted. However, Microsoft is strongly recommending that all Windows XP users upgrade their browsers. It is widely known that there are serious security problems related to using Explorer. Understandably, Microsoft is calling Explorer 7 a [critical update](http://fupeg.blogspot.com/2006/10/ie7-released-to-masses.html).\r\n\r\nThe interface has been cleaned up and sites that have been designed for standards compliant browsers are rendering very well in the updated browser. While Explorer has been able to catch up, many prefer other browsers. For Mac users, Explorer is no longer supported, so it is highly recommended that anyone using Explorer on the Mac use other standards compliant browsers, such as [Safari](http://www.apple.com/macosx/features/safari/) or [Firefox](http://www.mozilla.com/firefox/.', '<p>Those who have desired to closely follow the World Wide Web Consortium&#8217;s recommendations for properly structured (XHTML) and styled (CSS) web documents have found rendering inconsistencies between several browsers on various platforms to be a major source of frustration in their work. Internet Explorer 6 has been the subject of much of that frustration, because it has not been updated since it was released 5 years ago. Much has changed in that time, but because Explorer has been the most used browser for several years by virtue of its widespread distribution as the default browser on the Windows operating system, much of the web design community has been either waiting for the update or recommending other browsers, such as <a href=\"http://www.mozilla.com/firefox/\">FireFox</a>.</p>\n\n<p>It remains to be seen how quickly the new browser will be adopted. However, Microsoft is strongly recommending that all Windows XP users upgrade their browsers. It is widely known that there are serious security problems related to using Explorer. Understandably, Microsoft is calling Explorer 7 a <a href=\"http://fupeg.blogspot.com/2006/10/ie7-released-to-masses.html\">critical update</a>.</p>\n\n<p>The interface has been cleaned up and sites that have been designed for standards compliant browsers are rendering very well in the updated browser. While Explorer has been able to catch up, many prefer other browsers. For Mac users, Explorer is no longer supported, so it is highly recommended that anyone using Explorer on the Mac use other standards compliant browsers, such as <a href=\"http://www.apple.com/macosx/features/safari/\">Safari</a> or [Firefox](http://www.mozilla.com/firefox/.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (118, 14, '2009-07-06T06:38:00-07:00', 1246887480, 1246887480);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (93, 113, '2006-09-19T22:59:00-07:00', 1158731940, 1158731940);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (99, 114, '2006-09-20T00:47:00-07:00', 1158738420, 1158738420);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (112, 115, '2006-09-20T08:00:00-07:00', 1158764400, 1158764400);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (100, 116, '2006-09-24T13:06:00-07:00', 1159128360, 1159128360);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (128, 117, '2006-09-24T22:36:00-07:00', 1159162560, 1159162560);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (130, 118, '2006-09-24T22:41:00-07:00', 1159162860, 1159162860);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (142, 119, '2006-09-24T22:43:00-07:00', 1159162980, 1159162980);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (87, 120, '2006-09-24T22:47:00-07:00', 1159163220, 1159163220);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (96, 164, '2006-09-24T22:48:00-07:00', 1159163280, 1159163280);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (104, 165, '2006-09-24T22:50:00-07:00', 1159163400, 1159163400);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (132, 166, '2006-09-24T23:01:00-07:00', 1159164060, 1159164060);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (110, 167, '2006-09-24T23:01:00-07:00', 1159164060, 1159164060);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (102, 168, '2006-09-24T01:08:00-07:00', 1159085280, 1159085280);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (126, 169, '2006-09-24T23:04:00-07:00', 1159164240, 1159164240);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (111, 170, '2006-09-25T08:59:00-07:00', 1159199940, 1159199940);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (131, 171, '2006-09-29T13:34:00-07:00', 1159562040, 1159562040);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (98, 172, '2006-09-29T13:38:00-07:00', 1159562280, 1159562280);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (94, 173, '2006-09-29T13:44:00-07:00', 1159562640, 1159562640);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (105, 174, '2006-09-29T13:51:00-07:00', 1159563060, 1159563060);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (124, 175, '2006-09-29T13:57:00-07:00', 1159563420, 1159563420);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (125, 176, '2006-09-29T13:59:00-07:00', 1159563540, 1159563540);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (97, 177, '2006-09-29T14:09:00-07:00', 1159564140, 1159564140);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (141, 178, '2006-09-30T08:50:00-07:00', 1159631400, 1159631400);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (121, 179, '2006-10-02T08:54:00-07:00', 1159804440, 1159804440);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (140, 180, '2006-10-04T09:22:00-07:00', 1159978920, 1159978920);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (139, 181, '2006-10-04T09:30:00-07:00', 1159979400, 1159979400);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (134, 182, '2006-10-04T09:34:00-07:00', 1159979640, 1159979640);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (120, 183, '2006-10-04T09:41:00-07:00', 1159980060, 1159980060);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (119, 184, '2006-10-04T09:46:00-07:00', 1159980360, 1159980360);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (108, 185, '2006-10-04T09:51:00-07:00', 1159980660, 1159980660);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (138, 186, '2006-10-04T09:56:00-07:00', 1159980960, 1159980960);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (117, 187, '2006-10-04T09:58:00-07:00', 1159981080, 1159981080);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (116, 188, '2006-10-04T09:59:00-07:00', 1159981140, 1159981140);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (137, 189, '2006-10-05T09:17:00-07:00', 1160065020, 1160065020);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (136, 190, '2006-10-05T09:22:00-07:00', 1160065320, 1160065320);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (135, 191, '2006-10-05T09:23:00-07:00', 1160065380, 1160065380);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (106, 192, '2006-10-05T09:26:00-07:00', 1160065560, 1160065560);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (115, 193, '2006-10-05T09:32:00-07:00', 1160065920, 1160065920);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (114, 194, '2006-10-05T10:15:00-07:00', 1160068500, 1160068500);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (107, 195, '2006-10-12T13:33:00-07:00', 1160685180, 1160685180);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (101, 196, '2006-10-13T08:44:00-07:00', 1160754240, 1160754240);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (113, 197, '2006-10-13T18:36:00-07:00', 1160789760, 1160789760);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (109, 198, '2006-10-17T22:24:00-07:00', 1161149040, 1161149040);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (90, 211, '2006-10-17T23:26:00-07:00', 1161152760, 1161152760);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (91, 212, '2006-10-20T19:55:00-07:00', 1161399300, 1161399300);

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 11, 'home', 'Home');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 21, 'about', 'About');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 22, 'journal', 'Journal');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 27, 'portfolio', 'Portfolio');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 31, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 33, 'imagine', 'Imagine');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 36, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 43, 'theory', 'Theory');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 44, 'research', 'Research');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 45, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 53, 'design', 'Design');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 54, 'identity', 'Identity');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 55, 'print', 'Print');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 56, 'web', 'Web');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 57, 'type', 'Type');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 58, 'build', 'Build');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 59, 'people', 'People');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 60, 'relationships', 'Relationships');
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 61, 'community', 'Community');

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (180, 14, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (153, 113, 199);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (161, 114, 200);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (162, 116, 200);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (190, 117, 213);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (192, 118, 202);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (204, 119, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (140, 120, 205);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (158, 164, 199);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (166, 165, 65);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (194, 166, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (172, 167, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (164, 168, 200);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (188, 169, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (193, 171, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (160, 172, 204);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (154, 173, 199);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (167, 174, 65);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (186, 175, 65);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (187, 176, 9);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (159, 177, 199);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (203, 178, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (183, 179, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (202, 180, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (201, 181, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (196, 182, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (170, 185, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (200, 186, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (179, 187, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (178, 188, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (199, 189, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (198, 190, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (197, 191, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (168, 192, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (176, 194, 202);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (163, 196, 200);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (175, 197, 63);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (171, 198, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (169, 195, 9);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (177, 193, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (182, 183, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (181, 184, 201);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (174, 115, 205);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (173, 170, 63);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (149, 211, 204);
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `relation_id`) VALUES (150, 212, 201);

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 14, 'php', 'PHP');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (106, 14, 'open-source', 'Open Source');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (105, 14, 'cms', 'CMS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 114, 'photography', 'Photography');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 116, 'photography', 'Photography');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (90, 165, 'css', 'CSS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (134, 166, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (132, 169, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 172, 'scripts', 'Scripts');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (130, 176, 'open-source', 'Open Source');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (114, 179, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (152, 178, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (150, 180, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (148, 181, 'ftp', 'FTP');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (149, 181, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (147, 181, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (113, 183, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (111, 184, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (145, 186, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (103, 187, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (143, 189, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (139, 191, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (141, 190, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (96, 192, 'invoicing', 'Invoicing');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (99, 195, 'typography', 'Typography');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (87, 196, 'photography', 'Photography');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (100, 198, 'cms', 'CMS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (112, 183, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (110, 184, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 164, 'design', 'Design');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (91, 165, 'design', 'Design');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (92, 165, 'xhtml', 'XHTML');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (93, 174, 'css', 'CSS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (94, 174, 'design', 'Design');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (95, 174, 'xhtml', 'XHTML');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (97, 192, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (98, 192, 'time-tracking', 'Time-Tracking');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (101, 167, 'finances', 'Finances');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (102, 170, 'design', 'Design');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (104, 187, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 14, 'xml', 'XML');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 14, 'xslt', 'XSLT');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (115, 179, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (129, 176, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (126, 175, 'open-source', 'Open Source');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (125, 175, 'cms', 'CMS');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (124, 175, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (127, 175, 'xml', 'XML');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (128, 175, 'xslt', 'XSLT');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (131, 176, 'xslt', 'XSLT');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (137, 182, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (138, 182, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (140, 191, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (142, 190, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (144, 189, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (146, 186, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (151, 180, 'mac', 'Mac');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (153, 178, 'mac', 'Mac');

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (118, 14, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (93, 113, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (99, 114, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (112, 115, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (100, 116, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (128, 117, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (130, 118, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (142, 119, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (87, 120, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (96, 164, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (104, 165, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (132, 166, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (110, 167, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (102, 168, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (126, 169, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (111, 170, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (131, 171, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (98, 172, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (94, 173, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (105, 174, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (124, 175, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (125, 176, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (97, 177, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (141, 178, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (121, 179, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (140, 180, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (139, 181, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (134, 182, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (120, 183, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (119, 184, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (108, 185, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (138, 186, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (117, 187, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (116, 188, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (137, 189, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (136, 190, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (135, 191, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (106, 192, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (115, 193, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (114, 194, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (107, 195, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (101, 196, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (113, 197, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (109, 198, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (90, 211, 'yes');
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `value`) VALUES (91, 212, 'yes');

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (118, 14, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (93, 113, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (99, 114, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (112, 115, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (100, 116, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (128, 117, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (130, 118, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (142, 119, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (87, 120, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (96, 164, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (104, 165, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (132, 166, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (110, 167, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (102, 168, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (126, 169, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (111, 170, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (131, 171, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (98, 172, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (94, 173, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (105, 174, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (124, 175, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (125, 176, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (97, 177, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (141, 178, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (121, 179, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (140, 180, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (139, 181, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (134, 182, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (120, 183, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (119, 184, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (108, 185, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (138, 186, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (117, 187, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (116, 188, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (137, 189, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (136, 190, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (135, 191, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (106, 192, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (115, 193, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (114, 194, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (107, 195, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (101, 196, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (113, 197, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (109, 198, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (90, 211, 'no');
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`) VALUES (91, 212, 'no');

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_36` ***

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 9, 'design', 'Design');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 10, 'technology', 'Technology');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 8, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 63, 'identity', 'Identity');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 64, 'print', 'Print');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 65, 'web', 'Web');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 66, 'type', 'Type');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 199, 'weblogs', 'Weblogs');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 200, 'photography', 'Photography');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 201, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 203, 'galleries', 'Galleries');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 202, 'studios-and-agencies', 'Studios and Agencies');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 204, 'scripts', 'Scripts');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 205, 'articles', 'Articles');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 213, 'printers', 'Printers');

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (6, 11, 1, 'Home', 'home');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (54, 21, 2, 'About', 'about');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (68, 22, 3, 'Journal', 'journal');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (67, 27, 5, 'Portfolio', 'portfolio');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (17, 30, 6, 'Resources', 'resources');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (62, 31, 7, 'Contact', 'contact');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (36, 33, 8, 'Imagine', 'imagine');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (33, 36, 19, 'Resources', 'resources');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (34, 43, 20, 'Theory', 'theory');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (38, 44, 21, 'Research', 'research');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (41, 45, 22, 'Strategy', 'strategy');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (37, 53, 9, 'Design', 'design');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (42, 54, 11, 'Identity', 'identity');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (43, 55, 12, 'Print', 'print');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (44, 56, 13, 'Web', 'web');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (60, 57, 14, 'Type', 'type');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (46, 58, 10, 'Build', 'build');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (49, 59, 23, 'People', 'people');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (52, 60, 24, 'Relationships', 'relationships');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (64, 61, 25, 'Community', 'community');

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 9, 'Researching, conceptualizing and developing ideas for real world applications', '<p>Researching, conceptualizing and developing ideas for real world applications</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 10, 'The tools that we use to get the job done', '<p>The tools that we use to get the job done</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 8, 'Defining the best course of action and developing a plan to implement it', '<p>Defining the best course of action and developing a plan to implement it</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 63, 'The physical form of abstract ideas and qualitative characteristics ', '<p>The physical form of abstract ideas and qualitative characteristics</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 66, NULL, NULL);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 199, 'Personal blogs, commentary and articles on the web', '<p>Personal blogs, commentary and articles on the web</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 200, 'Sourcing photography for design and creative on the web', '<p>Sourcing photography for design and creative on the web</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 201, 'Sites featuring web and desktop applications', '<p>Sites featuring web and desktop applications</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 202, 'Sites detailing capabilities and portfolios of design studios', '<p>Sites detailing capabilities and portfolios of design studios</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 203, 'Galleries showcasing the best of site design and development', '<p>Galleries showcasing the best of site design and development</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 204, 'Software and scripts for web development and desktop applications', '<p>Software and scripts for web development and desktop applications</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 205, 'Articles and such', '<p>Articles and such</p>\n');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 213, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 8, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 9, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 10, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 63, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 64, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 66, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 199, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 200, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 201, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 202, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 203, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 204, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 205, NULL, NULL);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 213, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_42` ***

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 11, 'the-elementary-forms', 'The Elementary Forms');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 21, 'putting-ideas-into-practice', 'Putting Ideas into Practice');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 22, 'flow-of-consciousness', 'Flow of Consciousness');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 27, 'design-as-adapting-to-change', 'Design as Adapting to Change');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'learning-by-doing', 'Learning by Doing');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 31, 'send-me-a-message', 'Send Me a Message');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 33, 'imagine-something-better', 'Imagine Something Better');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 43, 'ideas-about-design', 'Ideas About Design');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 36, 'adapting-to-changing-technology', 'Adapting to Changing Technology');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 53, 'design-to-make-an-impact', 'Design to Make an Impact');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 44, 'design-thinking', 'Design Thinking');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 45, 'a-cohesive-plan-for-change', 'A Cohesive Plan for Change');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 54, 'putting-a-face-to-the-name', 'Putting a Face to the Name');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 55, 'an-ancient-art-a-technological-revolution', 'An Ancient Art, A Technological Revolution');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 56, 'focusing-on-user-experience', 'Focusing on User Experience');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 57, 'the-democratization-of-typography', 'The Democratization of Typography');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 58, 'build-your-business-and-your-community', 'Build your business and your community');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 59, 'empowering-people-to-build', 'Empowering People to Build');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 60, 'connecting-people', 'Connecting People');
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 61, 'coming-together-to-achieve-common-goals', 'Coming Together to Achieve Common Goals');

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_50` ***

-- *** STRUCTURE: `tbl_entries_data_51` ***
DROP TABLE IF EXISTS `tbl_entries_data_51`;
CREATE TABLE `tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_51` ***

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_54` ***

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***

-- *** STRUCTURE: `tbl_entries_data_56` ***
DROP TABLE IF EXISTS `tbl_entries_data_56`;
CREATE TABLE `tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_57` ***

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_58` ***

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 96, 'more-than-words', 'More Than Words');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 97, 'behold-the-power', 'Behold The Power');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 98, 'share-the-love-version-1', 'Share the Love, Version 1');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 99, 'share-the-love-version-2', 'Share the Love, Version 2');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 100, 'cubic', 'Cubic');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 121, 'master-pages-utilities', 'Master, Pages, Utilities');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 122, 'qwilm-theme-controllers', 'Qwilm Theme Controllers');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 123, 'qwilm-home-page-xslt-template', 'Qwilm Home Page XSLT Template');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 124, 'qwilm-navigation-data-source', 'Qwilm Navigation Data Source');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 125, 'qwilm-master-page-data-source-configuration', 'Qwilm Master Page Data Source Configuration');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 126, 'qwilm-navigation-xml-data', 'Qwilm Navigation XML Data');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 127, 'qwilm-main-menu-utility', 'Qwilm Main Menu Utility');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 128, 'symphony-admin-comments', 'Symphony Admin: Comments');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 129, 'symphony-admin-settings-menu', 'Symphony Admin: Settings Menu');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 130, 'symphony-author-details', 'Symphony: Author Details');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 131, 'symphony-preferences', 'Symphony: Preferences');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 132, 'symphony-campfire-services', 'Symphony Campfire Services');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 133, 'symphony-get-campfire-services', 'Symphony: Get Campfire Services');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 134, 'symphony-enable-campfire-services', 'Symphony: Enable Campfire Services');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 135, 'symphony-author-details', 'Symphony: Author Details');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 136, 'symphony-pages', 'Symphony: Pages');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 137, 'symphony-new-page', 'Symphony: New Page');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 138, 'symphony-xslt-error', 'Symphony XSLT Error');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 139, 'symphony-debug-page-xml', 'Symphony Debug Page: XML');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 140, 'symphony-debug-page-xslt', 'Symphony Debug Page: XSLT');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 141, 'symphony-debug-page-output', 'Symphony Debug Page: Output');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 142, 'qwilm-symphony-components', 'Qwilm: Symphony Components');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 143, 'qwilm-default-master-template', 'Qwilm: Default Master Template');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 144, 'qwilm-symphony-sections', 'Qwilm: Symphony Sections');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 145, 'qwilm-symphony-sections', 'Qwilm: Symphony Sections');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 146, 'qwilm-symphony-content-entries-empty', 'Qwilm: Symphony Content Entries (Empty)');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 147, 'qwilm-symphony-content-entry', 'Qwilm: Symphony Content Entry');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 148, 'qwilm-symphony-fields-list', 'Qwilm: Symphony Fields List');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 149, 'qwilm-title-field', 'Qwilm: Title Field');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 150, 'qwilm-body-field', 'Qwilm: Body Field');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 151, 'qwilm-page-field', 'Qwilm: Page Field');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 152, 'qwilm-photo-field', 'Qwilm: Photo Field');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 153, 'qwilm-content-entry', 'Qwilm: Content Entry');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 154, 'qwilm-content-options', 'Qwilm: Content Options');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 155, 'qwilm-content-welcome', 'Qwilm: Content - Welcome');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 156, 'qwilm-content-list', 'Qwilm: Content List');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 157, 'qwilm-content-data-source', 'Qwilm: Content Data Source');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (76, 158, 'symphony-file-manager', 'Symphony File Manager');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 159, 'symphony-components', 'Symphony Components');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 160, 'symphony-file-upload', 'Symphony File Upload');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 161, 'symphony-sections-entries', 'Symphony Sections Entries');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 162, 'symphony-reorder-sections', 'Symphony: Reorder Sections');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 163, 'qwilm-home', 'Qwilm Home');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 206, 'symphony-cubic-status', 'Symphony Cubic Status');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 207, 'symphony-widgets-update-available', 'Symphony Widgets - Update Available');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 208, 'symphony-install-update', 'Symphony Install Update');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 209, 'symphony-search-widget', 'Symphony Search Widget');
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 210, 'symphony-calendar-widget', 'Symphony Calendar Widget');

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 11, 'The Bauhouse is the portfolio site and web development sandbox of Stephen Bau, Designer and Web Developer', '<p>The Bauhouse is the portfolio site and web development sandbox of Stephen Bau, Designer and Web Developer</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 22, NULL, NULL);
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 21, '#### Bauhouse Design\r\n\r\nThe Bauhouse is the digital sandbox and personal portfolio of Stephen Bau, Professional Member of the Society of Graphic Designers of Canada.\r\n\r\nIn the world of social media, bauhouse is my screen name. You\'ll find that I spend most of my time on the Symphony CMS forum and on GitHub, designing and developing with XML, XSLT, XHTML and CSS.\r\n', '<h4>Bauhouse Design</h4>\n\n<p>The Bauhouse is the digital sandbox and personal portfolio of Stephen Bau, Professional Member of the Society of Graphic Designers of Canada.</p>\n\n<p>In the world of social media, bauhouse is my screen name. You&#8217;ll find that I spend most of my time on the Symphony CMS forum and on GitHub, designing and developing with XML, XSLT, XHTML and CSS.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 27, 'Creating a body of work while adapting to the changing tools of the trade', '<p>Creating a body of work while adapting to the changing tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 30, 'So many things to learn and do', '<p>So many things to learn and do</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 31, '#### Contact Form Notes\r\n\r\n* It\'s preferred to use the contact form rather than email. There is always a chance for emails to be picked up as spam.\r\n* I will generally reply to messages within 24 hours unless I am horribly swamped.', '<h4>Contact Form Notes</h4>\n\n<ul>\n<li>It&#8217;s preferred to use the contact form rather than email. There is always a chance for emails to be picked up as spam.</li>\n<li>I will generally reply to messages within 24 hours unless I am horribly swamped.</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 33, 'It starts with an idea to meet a need, to solve a problem, to overcome a challenge, to improve upon the status quo, to reach beyond the ordinary, to realize a dream. Then comes the part where the world of ideas meets everyday life. All these ideas we have are very abstract and subjective. How can we bring these ideas into reality and accomplish these goals and objectives in the real world? Here is where design can help.', '<p>It starts with an idea to meet a need, to solve a problem, to overcome a challenge, to improve upon the status quo, to reach beyond the ordinary, to realize a dream. Then comes the part where the world of ideas meets everyday life. All these ideas we have are very abstract and subjective. How can we bring these ideas into reality and accomplish these goals and objectives in the real world? Here is where design can help.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 36, 'The tools of the trade from pencils, pens, rapidographs and rubylith to fonts, software and hardware to CMYK printing, foil stamping, stochastic screens and paper stocks: The breadth and depth of resources required for competence in graphic design and strategic corporate communications grows as technology advances. Here, I try to catalog some of those resources.', '<p>The tools of the trade from pencils, pens, rapidographs and rubylith to fonts, software and hardware to CMYK printing, foil stamping, stochastic screens and paper stocks: The breadth and depth of resources required for competence in graphic design and strategic corporate communications grows as technology advances. Here, I try to catalog some of those resources.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 43, 'Line. Shape. Colour. Texture. Type. Grid. Style. \r\n\r\nStandards. Accessibility. Usability.\r\n\r\nBranding. Identity. Design.', '<p>Line. Shape. Colour. Texture. Type. Grid. Style.</p>\n\n<p>Standards. Accessibility. Usability.</p>\n\n<p>Branding. Identity. Design.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 44, 'Studies and experiments regarding design.', '<p>Studies and experiments regarding design.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 45, 'Putting it all together requires a process that can take a project from brief, proposal and concept to design, application, and implementation, assessing results and ensuring quality and consistency.', '<p>Putting it all together requires a process that can take a project from brief, proposal and concept to design, application, and implementation, assessing results and ensuring quality and consistency.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 53, 'Design brings ideas to life. Design is communication using technology, the tools humans create to make life better. The technology of the alphabet is one of those tools, and its uses have expanded from inscribed stone to printing press to electronic media, transforming the way we live. Design develops ideas, tools, objects and processes that transform culture by creating culture, bringing to life new ways of thinking and living.', '<p>Design brings ideas to life. Design is communication using technology, the tools humans create to make life better. The technology of the alphabet is one of those tools, and its uses have expanded from inscribed stone to printing press to electronic media, transforming the way we live. Design develops ideas, tools, objects and processes that transform culture by creating culture, bringing to life new ways of thinking and living.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 54, 'Who am I? What do I do? What is my purpose? What do I value most? Why am I here? These basic questions have complex answers. The answers we decide form our identity, which then becomes the foundation for self-perceptions and actions. Your visual identity is the face that the world sees. Your brand identity is the heart of who you are.', '<p>Who am I? What do I do? What is my purpose? What do I value most? Why am I here? These basic questions have complex answers. The answers we decide form our identity, which then becomes the foundation for self-perceptions and actions. Your visual identity is the face that the world sees. Your brand identity is the heart of who you are.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 55, 'Printing has always been intimately connected with advances in technology. The Chinese are credited with the invention of moveable type (Bi Sheng invented the use of clay type in 1041), but the number of characters used in the complex Chinese pictographic writing system made the process impractical. The Koreans developed a phonetic writing system which was better suited to the use of the movable type printing press, which Chwe Yun-Ui invented in 1234 during the Goryeo Dynasty, an ancient Korean nation. In Western European tradition, Johann Gutenberg is credited with the invention of the movable type printing press, sparking a cultural revolution through the spread of ideas.', '<p>Printing has always been intimately connected with advances in technology. The Chinese are credited with the invention of moveable type (Bi Sheng invented the use of clay type in 1041), but the number of characters used in the complex Chinese pictographic writing system made the process impractical. The Koreans developed a phonetic writing system which was better suited to the use of the movable type printing press, which Chwe Yun-Ui invented in 1234 during the Goryeo Dynasty, an ancient Korean nation. In Western European tradition, Johann Gutenberg is credited with the invention of the movable type printing press, sparking a cultural revolution through the spread of ideas.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 56, 'The internet has come of age. The world wide web is everywhere. Where at one time corporations and individuals quickly bought up domain names to secure a presence on the web, information dissemination and consumption on the internet is becoming more sophisticated and complex. The ideas and interests of science quickly gave way to the dominance of commerce on the web, and web designers adopted various technologies in attempts to improve the quality and aesthetics of communication. It soon became apparent that with attempts to overcome the limitations of the medium and a growing reliance on proprietary technologies, there was a need for standards. The Web Standards and open source movements have changed the way websites look and work, with greater emphasis placed on the accessibility of information and the quality of the user experience.', '<p>The internet has come of age. The world wide web is everywhere. Where at one time corporations and individuals quickly bought up domain names to secure a presence on the web, information dissemination and consumption on the internet is becoming more sophisticated and complex. The ideas and interests of science quickly gave way to the dominance of commerce on the web, and web designers adopted various technologies in attempts to improve the quality and aesthetics of communication. It soon became apparent that with attempts to overcome the limitations of the medium and a growing reliance on proprietary technologies, there was a need for standards. The Web Standards and open source movements have changed the way websites look and work, with greater emphasis placed on the accessibility of information and the quality of the user experience.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 57, 'Since the European invention of the printing press, traditionally attributed to Gutenberg in 1451, type design or typography has progressed relatively slowly over the centuries, until the past century. At one time a highly skilled profession, requiring a lengthy apprenticeship to learn the craft, type design has been revolutionized by the accessibility of inexpensive font design software. The result has been an exponential proliferation of typeface designs and fonts.\r\n', '<p>Since the European invention of the printing press, traditionally attributed to Gutenberg in 1451, type design or typography has progressed relatively slowly over the centuries, until the past century. At one time a highly skilled profession, requiring a lengthy apprenticeship to learn the craft, type design has been revolutionized by the accessibility of inexpensive font design software. The result has been an exponential proliferation of typeface designs and fonts.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 58, 'Design goes beyond the pragmatic application of visual style to cultural artifacts. In other words, design is more than making things look pretty. It is a business management tool that enhances the ability of an individual or group of individuals to build relationships with the people in their community, locally and globally, and to realize their vision to meet needs, solve problems, overcome challenges and realize dreams.', '<p>Design goes beyond the pragmatic application of visual style to cultural artifacts. In other words, design is more than making things look pretty. It is a business management tool that enhances the ability of an individual or group of individuals to build relationships with the people in their community, locally and globally, and to realize their vision to meet needs, solve problems, overcome challenges and realize dreams.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 59, 'Design empowers individuals by providing the tools necessary to reach one\'s goals and objectives. The process of thinking through a problem helps to define the challenges and the changes necessary to overcome them. These changes can make an effective impression in the community, distilling complex messages into creative expressions of thoughtfully considered ideas.', '<p>Design empowers individuals by providing the tools necessary to reach one&#8217;s goals and objectives. The process of thinking through a problem helps to define the challenges and the changes necessary to overcome them. These changes can make an effective impression in the community, distilling complex messages into creative expressions of thoughtfully considered ideas.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 60, 'How does one thing relate to another? How do people relate to one another? Building a brand and building a customer base or broad support for an idea, cause or product requires building relationships.\r\n', '<p>How does one thing relate to another? How do people relate to one another? Building a brand and building a customer base or broad support for an idea, cause or product requires building relationships.</p>\n');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 61, 'What is community? Common space. Common thoughts. Common language. Common world. Where anything is held in common, there is community. The global village has many voices wanting to be heard. Community is built on the ability to listen and to understand.', '<p>What is community? Common space. Common thoughts. Common language. Common world. Where anything is held in common, there is community. The global village has many voices wanting to be heard. Community is built on the ability to listen and to understand.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 96, 'A Symphony Theme', '<p>A Symphony Theme</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 97, 'A Symphony Theme', '<p>A Symphony Theme</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 98, 'A Symphony Theme', '<p>A Symphony Theme</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 99, 'A Symphony Theme', '<p>A Symphony Theme</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 100, 'A Symphony Theme', '<p>A Symphony Theme</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 121, 'Symphony template structure', '<p>Symphony template structure</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 122, 'Building a Symphony Theme: Part 3', '<p>Building a Symphony Theme: Part 3</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 123, 'Home Page Template', '<p>Home Page Template</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 124, 'Navigation Data Source', '<p>Navigation Data Source</p>\n');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 125, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 126, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 127, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 128, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 129, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 130, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 131, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 132, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (48, 133, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 134, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 135, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 136, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 137, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 138, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 139, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 140, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 141, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 142, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 143, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 144, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 145, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 146, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 147, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 148, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 149, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 150, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 151, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (70, 152, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (71, 153, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 154, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 155, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 156, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 157, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 158, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 159, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 160, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (79, 161, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 162, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 163, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 206, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 207, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 208, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 209, NULL, NULL);
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 210, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 96, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 97, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 98, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 99, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 100, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 121, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 122, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 123, 'Building a Symphony Theme: Part 3', '<p>Building a Symphony Theme: Part 3</p>\n');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 124, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 125, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 126, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 127, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 128, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 129, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 130, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 131, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (47, 132, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (48, 133, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 134, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (51, 135, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 136, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (53, 137, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 138, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 139, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 140, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 141, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 142, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 143, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 144, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 145, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 146, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 147, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 148, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 149, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 150, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 151, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (70, 152, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (71, 153, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 154, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 155, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 156, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 157, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 158, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 159, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 160, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (79, 161, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 162, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 163, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 206, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 207, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 208, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 209, NULL, NULL);
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 210, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 96, '/assets/images/sym_more-than-words.png', 52785, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-02-16T22:40:14-08:00\";s:5:\"width\";i:880;s:6:\"height\";i:657;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 97, '/assets/images/sym_behold-the-power.png', 41465, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-02-16T22:41:33-08:00\";s:5:\"width\";i:880;s:6:\"height\";i:657;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 98, '/assets/images/sym_share-the-love-v1.png', 30293, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-02-16T22:42:26-08:00\";s:5:\"width\";i:880;s:6:\"height\";i:657;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (32, 99, '/assets/images/sym_share-the-love-v2.png', 30124, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-02-16T22:43:20-08:00\";s:5:\"width\";i:880;s:6:\"height\";i:657;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 100, '/assets/images/sym_cubic.png', 23987, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-02-16T22:44:21-08:00\";s:5:\"width\";i:880;s:6:\"height\";i:657;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (34, 121, '/assets/images/sym_masters_pages_utilities.jpg', 20658, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T08:43:31-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (35, 122, '/assets/images/sym_qwilm_controllers_empty.jpg', 17073, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:03:47-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:309;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (36, 123, '/assets/images/sym_qwilm_home_xslt.jpg', 100636, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:05:28-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 124, '/assets/images/sym_qwilm_ds_navigation.jpg', 29230, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:14:03-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (39, 125, '/assets/images/sym_qwilm_master_config_ds.jpg', 33566, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:15:49-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:462;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (41, 126, '/assets/images/sym_qwilm_debug_home_nav.jpg', 25786, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:17:37-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:424;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (42, 127, '/assets/images/sym_qwilm_util_main-menu.jpg', 37677, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:19:00-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:567;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (43, 128, '/assets/images/sym_comments.jpg', 22270, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:26:37-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:339;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (44, 129, '/assets/images/sym_settings_menu.jpg', 33409, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:27:42-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:339;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (45, 130, '/assets/images/sym_author_edit.jpg', 37892, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:28:36-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:592;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (46, 131, '/assets/images/sym_qwilm_prefsaved.jpg', 38071, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T09:29:31-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (47, 132, '/assets/images/sym_qwilm_campfire_empty.jpg', 20578, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:23:20-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (48, 133, '/assets/images/sym_qwilm_get_cs.jpg', 45090, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:24:43-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:559;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (49, 134, '/assets/images/sym_qwilm_cs_enable.jpg', 25932, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:26:23-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:366;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 135, '/assets/images/sym_qwilm_authors_format_menu.jpg', 38588, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:27:15-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 136, '/assets/images/sym_qwilm_pages.jpg', 19016, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:28:24-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 137, '/assets/images/sym_qwilm_page_new.jpg', 26147, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:28:56-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 138, '/assets/images/sym_xslt_error.jpg', 34596, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:30:15-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:463;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 139, '/assets/images/sym_debug_home_xml.jpg', 13253, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:30:55-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:278;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 140, '/assets/images/sym_debug_home_xslt.jpg', 14480, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:31:16-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:278;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 141, '/assets/images/sym_debug_home_output.jpg', 9033, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:32:08-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:278;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 142, '/assets/images/sym_qwilm_components.jpg', 18432, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:32:59-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:309;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 143, '/assets/images/sym_qwilm_master_default.jpg', 40396, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:33:39-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 144, '/assets/images/sym_qwilm_sections.jpg', 18385, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:37:06-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:309;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 145, '/assets/images/sym_qwilm_sections_content.jpg', 29086, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:37:51-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 146, '/assets/images/sym_qwilm_content_empty.jpg', 20754, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:38:22-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 147, '/assets/images/sym_qwilm_content_entry_01.jpg', 27981, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:39:09-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 148, '/assets/images/sym_qwilm_fields_list_title.jpg', 20862, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:41:15-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (67, 149, '/assets/images/sym_qwilm_fields_title.jpg', 32173, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:42:16-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:501;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (68, 150, '/assets/images/sym_qwilm_fields_body.jpg', 28846, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:45:32-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:463;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 151, '/assets/images/sym_qwilm_fields_page.jpg', 32272, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:45:58-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 152, '/assets/images/sym_qwilm_fields_photo.jpg', 29338, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:46:25-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:501;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (71, 153, '/assets/images/sym_qwilm_content_entry.jpg', 33318, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:57:02-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (72, 154, '/assets/images/sym_qwilm_content_options.jpg', 37515, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:57:37-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 155, '/assets/images/sym_qwilm_content_welcome.jpg', 41379, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:58:35-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:598;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 156, '/assets/images/sym_qwilm_content_list.jpg', 31788, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:59:07-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:424;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 157, '/assets/images/sym_qwilm_ds_content.jpg', 40641, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T10:59:49-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:613;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 158, '/assets/images/sym_qwilm_file_manager_01.jpg', 53279, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:03:27-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 159, '/assets/images/sym_qwilm_components_02.jpg', 21200, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:04:20-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 160, '/assets/images/sym_qwilm_file_upload.jpg', 35304, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:04:54-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 161, '/assets/images/sym_qwilm_sections_entries.jpg', 29296, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:05:24-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:540;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 162, '/assets/images/sym_qwilm_sections_reorder.jpg', 21490, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:06:02-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:347;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 163, '/assets/images/sym_qwilm_home_04.jpg', 151620, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-20T11:09:20-08:00\";s:5:\"width\";i:1050;s:6:\"height\";i:1309;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 206, '/assets/images/sym_status_open_cubic.jpg', 41551, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-27T08:52:17-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:548;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 207, '/assets/images/sym_widgets_update_avail.jpg', 2071, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-27T08:55:09-08:00\";s:5:\"width\";i:164;s:6:\"height\";i:116;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (84, 208, '/assets/images/sym_update_install.jpg', 50891, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-27T08:56:38-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:548;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (85, 209, '/assets/images/sym_search_widget_cubic.jpg', 33912, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-27T08:59:25-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:548;}');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (86, 210, '/assets/images/sym_calendar_widget_cubic.jpg', 40661, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-27T08:59:46-08:00\";s:5:\"width\";i:540;s:6:\"height\";i:548;}');

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_63` ***
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'the-wild-orange-spa-logo-design', 'the Wild Orange spa Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'big-bear-classic', 'Big Bear Classic');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'hilfsaktion-maertyrerkirche-website', 'Hilfsaktion Maertyrerkirche Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'bpa-group-website', 'BPA Group Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'renter-registry-logo', 'Renter Registry Logo');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'bpa-group-presentation-cover', 'BPA Group Presentation Cover');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'rcabc-invitation', 'RCABC Invitation');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'bristol-gardens-logo', 'Bristol Gardens Logo');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'st-johns-logo', 'St John\'s Logo');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'u-turn-logo', 'U-Turn Logo');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'the-wild-orange-spa-calendar-2006', 'The Wild Orange Spa Calendar 2006');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'columbia-national-investments-logo', 'Columbia National Investments Logo');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'idop-2004-website', 'IDOP 2004 Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'columbia-national-website', 'Columbia National Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'life-above-the-rim-logo-design', 'Life Above the Rim Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, '300ccom-website', '300C.com Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'design-one-website', 'Design One Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'international-christian-response-website', 'International Christian Response Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'the-rice-raiser-website', 'The Rice Raiser Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'the-rice-raiser-logo-design', 'The Rice Raiser Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'pacific-coastal-airlines-website', 'Pacific Coastal Airlines Website');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'camp-qwanoes-classic-crest', 'Camp Qwanoes Classic Crest');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'sahara-furniture-catalog', 'Sahara Furniture Catalog');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'quantex-capital-corporation-logo-design', 'Quantex Capital Corporation Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'the-total-package-logo-design', 'The Total Package Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'sahara-furniture', 'Sahara Furniture');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'bc-boys-a-provincial-championships', 'BC Boys A Provincial Championships');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'moonrattles-logo-design', 'MoonRattles Logo Design');
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'arbutus-meadows-logo-design', 'Arbutus Meadows Logo Design');

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_64` ***
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 70, 'http-wwwbpa-groupcom', 'http://www.bpa-group.com/');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 79, 'http-wwwdesignprojectxcom-idop', 'http://www.designprojectx.com/idop/');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 80, 'http-wwwdesignprojectxcom-cni', 'http://www.designprojectx.com/cni/');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 82, 'http-www300ccom', 'http://www.300c.com/');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 84, 'http-wwwchristianresponseorg', 'http://www.christianresponse.org/');
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 85, 'http-wwwriceraiserorg', 'http://www.riceraiser.org/');

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (2, 67, '2003-09-09T00:00:00-07:00', 1063090800, 1063090800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (85, 68, '2005-12-09T00:00:00-08:00', 1134115200, 1134115200);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (88, 69, '2004-11-03T00:00:00-08:00', 1099468800, 1099468800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (86, 70, '2004-03-01T00:00:00-08:00', 1078128000, 1078128000);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (84, 71, '2003-09-05T00:00:00-07:00', 1062745200, 1062745200);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (83, 72, '2006-03-27T00:00:00-08:00', 1143446400, 1143446400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (82, 73, '2002-06-15T00:00:00-07:00', 1024124400, 1024124400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (81, 74, '1989-12-01T00:00:00-08:00', 628502400, 628502400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (80, 75, '1989-07-01T00:00:00-07:00', 615279600, 615279600);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (79, 76, '1994-04-14T00:00:00-07:00', 766306800, 766306800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (78, 77, '2005-12-01T00:00:00-08:00', 1133424000, 1133424000);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (77, 78, '2005-09-01T00:00:00-07:00', 1125558000, 1125558000);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (74, 79, '2004-07-22T00:00:00-07:00', 1090479600, 1090479600);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (73, 80, '2005-08-16T00:00:00-07:00', 1124175600, 1124175600);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (68, 81, '1993-07-12T00:00:00-07:00', 742460400, 742460400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (67, 82, '2005-12-17T00:00:00-08:00', 1134806400, 1134806400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (66, 83, '2002-12-01T00:00:00-08:00', 1038729600, 1038729600);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (65, 84, '2005-03-02T00:00:00-08:00', 1109750400, 1109750400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (64, 85, '2005-05-05T00:00:00-07:00', 1115276400, 1115276400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (63, 86, '2005-01-18T00:00:00-08:00', 1106035200, 1106035200);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (62, 87, '2004-05-24T00:00:00-07:00', 1085382000, 1085382000);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (61, 88, '1994-06-14T00:00:00-07:00', 771577200, 771577200);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (60, 89, '2004-04-14T00:00:00-07:00', 1081926000, 1081926000);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (59, 90, '2005-04-21T00:00:00-07:00', 1114066800, 1114066800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (58, 91, '1994-06-17T00:00:00-07:00', 771836400, 771836400);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (57, 92, '2004-02-12T00:00:00-08:00', 1076572800, 1076572800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (56, 93, '2004-02-04T00:00:00-08:00', 1075881600, 1075881600);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (55, 94, '2006-09-08T00:00:00-07:00', 1157698800, 1157698800);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (54, 95, '2005-11-07T00:00:00-08:00', 1131350400, 1131350400);

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'the-wild-orange-spa', 'the Wild Orange spa');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'st-john-brebeuf-secondary-school', 'St John Brebeuf Secondary School');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'international-christian-response', 'International Christian Response');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'bpa-group', 'BPA Group');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'renterregistrycom', 'RenterRegistry.com');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'bpa-group', 'BPA Group');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'roofing-contractors-association-of-bc', 'Roofing Contractors Association of BC');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'bristol-gardens', 'Bristol Gardens');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'st-johns-school', 'St John\'s School');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'south-delta-baptist-church', 'South Delta Baptist Church');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'the-wild-orange-spa', 'The Wild Orange Spa');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'columbia-national-investments', 'Columbia National Investments');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'international-day-of-prayer', 'International Day of Prayer');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'columbia-national-investments', 'Columbia National Investments');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'south-delta-baptist-church', 'South Delta Baptist Church');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, 'manfred-leiser', 'Manfred Leiser');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'design-one-graphics-group', 'Design One Graphics Group');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'international-christian-response', 'International Christian Response');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'hunger-response-international', 'Hunger Response International');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'the-rice-raiser', 'The Rice Raiser');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'design-one-graphics-group', 'Design One Graphics Group');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'camp-qwanoes', 'Camp Qwanoes');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'sahara-furniture-manufacturing', 'Sahara Furniture Manufacturing');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'quantex-capital-corporation', 'Quantex Capital Corporation');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'campus-crusade-for-christ-canada', 'Campus Crusade for Christ Canada');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'sahara-furniture-manufacturing', 'Sahara Furniture Manufacturing');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'st-john-brebeuf-secondary-school', 'St John Brebeuf Secondary School');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'moonrattles', 'MoonRattles');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'arbutus-meadows', 'Arbutus Meadows');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'corporate-identity', 'Corporate Identity');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'hilfsaktion-maertyrerkirche-website-redesign', 'Hilfsaktion Maertyrerkirche Website Redesign');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'website-design', 'Website Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'renter-registry-website', 'Renter Registry Website');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'presentation-cover', 'Presentation Cover');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'grand-opening-invitation', 'Grand Opening Invitation');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'u-turn-t-shirt-design', 'U-Turn T-shirt Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'calendar-2006', 'Calendar 2006');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'corporate-identity', 'Corporate Identity');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'idop-2004-faith-on-the-frontline', 'IDOP 2004: Faith on the Frontline');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'website-design', 'Website Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'life-above-the-rim-logo-design', 'Life Above the Rim Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, '300ccom-website', '300C.com Website');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'website-design', 'Website Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'website-design', 'Website Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'the-rice-raiser-website', 'The Rice Raiser Website');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'pacific-coastal-airlines-website', 'Pacific Coastal Airlines Website');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'tshirt-design', 'Tshirt Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'catalog-design', 'Catalog Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'the-total-package', 'The Total Package');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'logo-design', 'Logo Design');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'corporate-identity', 'Corporate Identity');
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'corporate-identity', 'Corporate Identity');

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (1, 67, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (84, 68, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (87, 69, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (85, 70, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (83, 71, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (82, 72, 64);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (81, 73, 64);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (80, 74, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (79, 75, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (78, 76, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (77, 77, 64);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (76, 78, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (73, 79, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (72, 80, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (67, 81, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (66, 82, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (65, 83, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (64, 84, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (63, 85, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (62, 86, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (61, 87, 65);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (60, 88, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (59, 89, 64);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (58, 90, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (57, 91, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (56, 92, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (55, 93, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (54, 94, 63);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (53, 95, 63);

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 67, 'Building a brand from a napkin sketch to a first class spa in Abbotsford has been a process of adding one thing to another, maintaining a high level of visual style with a minimalist design aesthetic.', '<p>Building a brand from a napkin sketch to a first class spa in Abbotsford has been a process of adding one thing to another, maintaining a high level of visual style with a minimalist design aesthetic.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 68, 'The St John Brebeuf Secondary School Basketball Team logo, featuring a fierce bear equal to the skills represented by this top ranking highschool team.', '<p>The St John Brebeuf Secondary School Basketball Team logo, featuring a fierce bear equal to the skills represented by this top ranking highschool team.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (88, 69, 'Hilfsaktion Märtyrerkirche, in Switzerland, needed a redesigned website developed using XHTML, CSS and TYPO3. It needed to be multi-lingual (German and French) to be able to serve the same content for their French counterpart, Aide aux Eglises Martyres. This solution also incorporated Flash to feature testimonies of persecuted Christians in various countries.', '<p>Hilfsaktion Märtyrerkirche, in Switzerland, needed a redesigned website developed using XHTML, CSS and TYPO3. It needed to be multi-lingual (German and French) to be able to serve the same content for their French counterpart, Aide aux Eglises Martyres. This solution also incorporated Flash to feature testimonies of persecuted Christians in various countries.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 70, 'An architecture/engineering group with offices in Vancouver, Seattle, Los Angeles and Shanghai needed a website to position themselves as an international entity. Partnering with Tom Abbühl of Grafus, we developed this site in Flash for the BPA Group.', '<p>An architecture/engineering group with offices in Vancouver, Seattle, Los Angeles and Shanghai needed a website to position themselves as an international entity. Partnering with Tom Abbühl of Grafus, we developed this site in Flash for the BPA Group.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 71, 'The idea itself had some merit: a website that helped landlords qualify renters based on past renting history and helped renters find good landlords. So I came up with the idea of building a dwelling out of the letter R and building a street that had houses for landlords and tenants. Since the site would have three parts to it for landlords, renters and administrators, the lights would turn on when you moused over the icon that represented the entrance to each portion of the site. You can view the results of my experiments for the website layout on my test site. Unfortunately, the project did not progress past the conceptual stage.', '<p>The idea itself had some merit: a website that helped landlords qualify renters based on past renting history and helped renters find good landlords. So I came up with the idea of building a dwelling out of the letter R and building a street that had houses for landlords and tenants. Since the site would have three parts to it for landlords, renters and administrators, the lights would turn on when you moused over the icon that represented the entrance to each portion of the site. You can view the results of my experiments for the website layout on my test site. Unfortunately, the project did not progress past the conceptual stage.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 72, 'As the work of Bogdanov Pao and Associates extended from Vancouver to Seattle, Los Angeles and Shanghai, the visual identity required strengthening. Proposals were wrapped in covers that consisted of a logo and address. To establish a much more international feel and continue enhancing the BPA Group brand, the presentation covers were redesigned, but in a way that maintained the ability to bind the presentations inhouse.', '<p>As the work of Bogdanov Pao and Associates extended from Vancouver to Seattle, Los Angeles and Shanghai, the visual identity required strengthening. Proposals were wrapped in covers that consisted of a logo and address. To establish a much more international feel and continue enhancing the BPA Group brand, the presentation covers were redesigned, but in a way that maintained the ability to bind the presentations inhouse.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 73, 'I love this piece because it was finally a chance to do something out of the ordinary and play around with an architectural design style, drawing some inspiration from the unique roof design that is the main feature of the building for which this invitation announced the Phase II Grand Opening Gala.', '<p>I love this piece because it was finally a chance to do something out of the ordinary and play around with an architectural design style, drawing some inspiration from the unique roof design that is the main feature of the building for which this invitation announced the Phase II Grand Opening Gala.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 74, 'A logo I designed for a residential development while employed at Doug Fleming Graphics, again before the age of Adobe Illustrator. This was hand drawn and inked with a rapidograph and brush. The part I liked best were the fiddly bits and the swash of the letter R that completes the circle. However, the Senior Designer took issue with the fiddly bits, convinced that they wouldn\'t reproduce well. I came back the next day to find that my work had been replaced with the leaves redrawn in reverse. I liked my original so much better, I redrew it in Illustrator for my portfolio.', '<p>A logo I designed for a residential development while employed at Doug Fleming Graphics, again before the age of Adobe Illustrator. This was hand drawn and inked with a rapidograph and brush. The part I liked best were the fiddly bits and the swash of the letter R that completes the circle. However, the Senior Designer took issue with the fiddly bits, convinced that they wouldn&#8217;t reproduce well. I came back the next day to find that my work had been replaced with the leaves redrawn in reverse. I liked my original so much better, I redrew it in Illustrator for my portfolio.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 75, 'This is one of the first logos I had the opportunity to design while working for Doug Fleming back in my first year out of design school and working in a downtown Vancouver design studio. Yaletown was definitely not what it is now. I can remember drawing this logo by hand with french curves and set squares, cutting the rubylith, taking the camera ready artwork to the process camera and developing PMTs in the darkroom for the various sizes required for the brochure I helped to paste up. Doug ended up designing the cover of the brochure with a blind embossed logo.', '<p>This is one of the first logos I had the opportunity to design while working for Doug Fleming back in my first year out of design school and working in a downtown Vancouver design studio. Yaletown was definitely not what it is now. I can remember drawing this logo by hand with french curves and set squares, cutting the rubylith, taking the camera ready artwork to the process camera and developing PMTs in the darkroom for the various sizes required for the brochure I helped to paste up. Doug ended up designing the cover of the brochure with a blind embossed logo.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (79, 76, 'What does it take to turn a life around? Signposts provide warnings that can be heeded or not. This T-shirt design for a church youth group presentation was silkscreened white on a black shirt.', '<p>What does it take to turn a life around? Signposts provide warnings that can be heeded or not. This T-shirt design for a church youth group presentation was silkscreened white on a black shirt.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 77, 'The calendar was a great idea that came too soon. You may have to wait until 2007 to see this calendar on your desk.', '<p>The calendar was a great idea that came too soon. You may have to wait until 2007 to see this calendar on your desk.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 78, 'After operating without a logo for over a decade, it was time to start branding their company as they put forward ideas and proposals for discussions with federal and provincial governments. Because their business encompassed many activities: land development, project management, building construction and financial investments, the challenge was to produce an identity that would encompass these facets and allow for future growth.', '<p>After operating without a logo for over a decade, it was time to start branding their company as they put forward ideas and proposals for discussions with federal and provincial governments. Because their business encompassed many activities: land development, project management, building construction and financial investments, the challenge was to produce an identity that would encompass these facets and allow for future growth.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 79, 'The International Day of Prayer is an event the reminds us to pray for Christians who are being persecuted for believing that God so loved the world that he gave his only son. The inexplicable happened when God gave his son to the world in the form of baby born in an insignificant town, a mere outpost of the cruel Roman Empire, as a member of one of the most hated races in history, as a child who had nowhere but a feeding trough to begin his days on earth. Somehow, by Jesus\' suffering and death, God ripped a whole in the fabric of time, entered his creation, and changed it forever. He has ushered in an upside down kingdom by proclaiming, \"Blessed are the persecuted.\" The IDOP website was redesigned for the International Day of Prayer Canada, held in November 2004. The project involved creating the logo, developing the website and authoring a CD with resources for participating churches and groups. The site was built with XHTML and CSS, but also featured a Flash movie to be used as an introduction to the theme for that year: Faith on the Frontline.', '<p>The International Day of Prayer is an event the reminds us to pray for Christians who are being persecuted for believing that God so loved the world that he gave his only son. The inexplicable happened when God gave his son to the world in the form of baby born in an insignificant town, a mere outpost of the cruel Roman Empire, as a member of one of the most hated races in history, as a child who had nowhere but a feeding trough to begin his days on earth. Somehow, by Jesus&#8217; suffering and death, God ripped a whole in the fabric of time, entered his creation, and changed it forever. He has ushered in an upside down kingdom by proclaiming, &#8220;Blessed are the persecuted.&#8221; The IDOP website was redesigned for the International Day of Prayer Canada, held in November 2004. The project involved creating the logo, developing the website and authoring a CD with resources for participating churches and groups. The site was built with XHTML and CSS, but also featured a Flash movie to be used as an introduction to the theme for that year: Faith on the Frontline.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 80, 'A land development, project management and building construction company approached me to create a logo design for them. The partners had been operating without a logo for over a decade, but it was time to start branding their company as they put forward ideas and proposals for discussions with federal and provincial governments. A website would be one more step toward establishing credibility. This design was my proposal. This is one of those projects that I wish I had been able to finish, but because of a change in personnel (my contact left the company), that never happened. You can still view the CSS layout I developed on my test site.', '<p>A land development, project management and building construction company approached me to create a logo design for them. The partners had been operating without a logo for over a decade, but it was time to start branding their company as they put forward ideas and proposals for discussions with federal and provincial governments. A website would be one more step toward establishing credibility. This design was my proposal. This is one of those projects that I wish I had been able to finish, but because of a change in personnel (my contact left the company), that never happened. You can still view the CSS layout I developed on my test site.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 81, 'South Delta Baptist Church was running a basketball camp for kids in the neighbourhood. Colourful T-shirts were one of the benefits of taking part in the game.', '<p>South Delta Baptist Church was running a basketball camp for kids in the neighbourhood. Colourful T-shirts were one of the benefits of taking part in the game.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 82, 'Some like it hot. For those who do, they can find Hot Deals on Hotels, Cruises and Travel Packages at 300C.com. Building this site in Textpattern allowed for an easily maintained site, with a content management system that manages associations between cities, regions and countries. The XHTML and CSS based layout seamlessly integrates with affiliate marketing systems and booking engines.', '<p>Some like it hot. For those who do, they can find Hot Deals on Hotels, Cruises and Travel Packages at 300C.com. Building this site in Textpattern allowed for an easily maintained site, with a content management system that manages associations between cities, regions and countries. The XHTML and CSS based layout seamlessly integrates with affiliate marketing systems and booking engines.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 84, 'Trying to develop an information rich site without endangering the very people we are trying to help is quite a challenge. Christians face terrible suffering and persecution around the world, but this news seldom rates very high in the priorities of the mainstream press. International Christian Response exists to provide a means of responding to the needs of persecuted Christians.', '<p>Trying to develop an information rich site without endangering the very people we are trying to help is quite a challenge. Christians face terrible suffering and persecution around the world, but this news seldom rates very high in the priorities of the mainstream press. International Christian Response exists to provide a means of responding to the needs of persecuted Christians.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 85, 'Students, teachers and community leaders are the intended audience for a site that is promoting a novel idea for raising food and raising funds: The Rice Raiser. The project informs young people about hunger, both locally and globally, and provides a means by which students can get involved in feeding people in their own neighbourhoods and in communities around the world. We were delighted to find The Rice Raiser featured on CSS Beauty.', '<p>Students, teachers and community leaders are the intended audience for a site that is promoting a novel idea for raising food and raising funds: The Rice Raiser. The project informs young people about hunger, both locally and globally, and provides a means by which students can get involved in feeding people in their own neighbourhoods and in communities around the world. We were delighted to find The Rice Raiser featured on CSS Beauty.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 86, 'The mission of Hunger Response International is to educate and mobilize people to respond to the needs of the hungry both locally and globally. The organization grew out of the success of The Rice Raiser, a food drive / fund raiser designed to feed the poor both locally and internationally at the same time. The Rice Raiser provides inclusive opportunity for Canadians to learn about and actively address global hunger.', '<p>The mission of Hunger Response International is to educate and mobilize people to respond to the needs of the hungry both locally and globally. The organization grew out of the success of The Rice Raiser, a food drive / fund raiser designed to feed the poor both locally and internationally at the same time. The Rice Raiser provides inclusive opportunity for Canadians to learn about and actively address global hunger.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 87, 'This website design for Pacific Coastal Airlines was developed in partnership with Design One using web standards. The flight booking system was set up by InteliSys with additional backend coding by PhenixFilms.', '<p>This website design for Pacific Coastal Airlines was developed in partnership with Design One using web standards. The flight booking system was set up by InteliSys with additional backend coding by PhenixFilms.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 88, 'Camp Qwanoes is a camp for all ages, and this design was meant to appeal to mature campers.', '<p>Camp Qwanoes is a camp for all ages, and this design was meant to appeal to mature campers.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 89, 'In reaching a North American retail market, Sahara Furniture Manufacturing needed a means to present their furniture in the best possible light.', '<p>In reaching a North American retail market, Sahara Furniture Manufacturing needed a means to present their furniture in the best possible light.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 90, 'The challenge was to design a logo with a solid corporate look for Quantex, a merchant bank which raises capital to buy and grow businesses.', '<p>The challenge was to design a logo with a solid corporate look for Quantex, a merchant bank which raises capital to buy and grow businesses.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 91, 'Campus Crusade for Christ wanted to produce a package of materials, including a magazine, video and a Bible to provide to those who attended their youth events. The Total Package was produced as something tangible to take away from an experience that may have represented a first step toward a changed life. This logo tied all the pieces of The Total Package together.', '<p>Campus Crusade for Christ wanted to produce a package of materials, including a magazine, video and a Bible to provide to those who attended their youth events. The Total Package was produced as something tangible to take away from an experience that may have represented a first step toward a changed life. This logo tied all the pieces of The Total Package together.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 92, 'A new furniture catalog designed to position Sahara Furniture as a world-class manufacturer of high quality furniture required a logo design that worked well with the design. The design alludes to both the sand dunes of the Sahara and wood grain.', '<p>A new furniture catalog designed to position Sahara Furniture as a world-class manufacturer of high quality furniture required a logo design that worked well with the design. The design alludes to both the sand dunes of the Sahara and wood grain.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 93, 'St John Brebeuf School hosted the 2004 BC Boys \"A\" Provincial Basketball Championships. This logo was created for the program, T-shirts and other promotional materials.', '<p>St John Brebeuf School hosted the 2004 BC Boys &#8220;A&#8221; Provincial Basketball Championships. This logo was created for the program, T-shirts and other promotional materials.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 94, 'MoonRattles is developing a business to provide tools to ethnically diverse families to enable parents to help connect their children with their cultural heritage and historical roots. These tools will be offered as individual kits or on a subscription basis to provide educational materials and suggestions for activities related to music, literature, history, language, food and other heritage topics.', '<p>MoonRattles is developing a business to provide tools to ethnically diverse families to enable parents to help connect their children with their cultural heritage and historical roots. These tools will be offered as individual kits or on a subscription basis to provide educational materials and suggestions for activities related to music, literature, history, language, food and other heritage topics.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 95, 'Arbutus Meadows Equestrian Centre in Nanoose Bay is home to a large indoor arena and over 140 acres of land, suitable for trail rides, show jumping, and even indoor motorcross racing. A new visual identity is helping to raise the profile of this multi-use facility.', '<p>Arbutus Meadows Equestrian Centre in Nanoose Bay is home to a large indoor arena and over 140 acres of land, suitable for trail rides, show jumping, and even indoor motorcross racing. A new visual identity is helping to raise the profile of this multi-use facility.</p>\n');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 83, 'While I was working at Design One and before I knew how to use Flash, I had an idea to build a website for our design firm that had a splash of Flash. In an effort to convince ourselves and our clients that adherence to a process would ensure the best design solutions, I came up with a rather esoteric means of describing our design process. It went something like this: \r\n\r\n### The Conceptual Process in Four Dimensions\r\n\r\nThe four dimensions of time and space provide a visual metaphor for the design process at work. An idea is an abstract concept that has no concrete reality beyond the imagination. Design is the process of realizing an idea: bringing an idea to reality, making imagination tangible.\r\n\r\n#### Idea\r\n\r\nIt starts with an idea. A point of origin. A single pixel of light. The nucleus of an idea. A spark of creativity. From a vast ocean of ideas emerges a singular vision of the future. Design starts with helping you define your needs, goals and desired results.\r\n\r\n#### Direction\r\n\r\nThe first dimension: **width**\r\n\r\nAn idea starts to become real as it gains momentum in a particular direction. It enters the first dimension of the conceptual process, moving one step closer to reality from the world of pure abstraction. Research and information gathering add dimension to the initial idea. \r\n\r\n#### Shape\r\n\r\nThe second dimension: **height**\r\n\r\nOnce a direction has been established for the idea, a number of different concepts can start to take shape. Through exploration and experimentation, an idea takes on added dimension. At this stage, rough concepts are developed based on the research gathered previously.\r\n\r\n#### Structure\r\n\r\nThe third dimension: **depth**\r\n\r\nThe shape becomes the basis for a fully three-dimensional structure. Throughout production of the finished project, the different sides of a design problem and the various possible points of view are considered to ensure impact and consistency across all media and applications.\r\n\r\n#### Reality\r\n\r\nThe fourth dimension: **time**\r\n\r\nThe idea becomes reality when it enters real time. It becomes a tangible entity that can be tested based on its ability to produce real world results: increased sales, a more cohesive corporate identity, greater brand presence, by building relationships between your business and the marketplace.', '<p>While I was working at Design One and before I knew how to use Flash, I had an idea to build a website for our design firm that had a splash of Flash. In an effort to convince ourselves and our clients that adherence to a process would ensure the best design solutions, I came up with a rather esoteric means of describing our design process. It went something like this:</p>\n\n<h3>The Conceptual Process in Four Dimensions</h3>\n\n<p>The four dimensions of time and space provide a visual metaphor for the design process at work. An idea is an abstract concept that has no concrete reality beyond the imagination. Design is the process of realizing an idea: bringing an idea to reality, making imagination tangible.</p>\n\n<h4>Idea</h4>\n\n<p>It starts with an idea. A point of origin. A single pixel of light. The nucleus of an idea. A spark of creativity. From a vast ocean of ideas emerges a singular vision of the future. Design starts with helping you define your needs, goals and desired results.</p>\n\n<h4>Direction</h4>\n\n<p>The first dimension: <strong>width</strong></p>\n\n<p>An idea starts to become real as it gains momentum in a particular direction. It enters the first dimension of the conceptual process, moving one step closer to reality from the world of pure abstraction. Research and information gathering add dimension to the initial idea.</p>\n\n<h4>Shape</h4>\n\n<p>The second dimension: <strong>height</strong></p>\n\n<p>Once a direction has been established for the idea, a number of different concepts can start to take shape. Through exploration and experimentation, an idea takes on added dimension. At this stage, rough concepts are developed based on the research gathered previously.</p>\n\n<h4>Structure</h4>\n\n<p>The third dimension: <strong>depth</strong></p>\n\n<p>The shape becomes the basis for a fully three-dimensional structure. Throughout production of the finished project, the different sides of a design problem and the various possible points of view are considered to ensure impact and consistency across all media and applications.</p>\n\n<h4>Reality</h4>\n\n<p>The fourth dimension: <strong>time</strong></p>\n\n<p>The idea becomes reality when it enters real time. It becomes a tangible entity that can be tested based on its ability to produce real world results: increased sales, a more cohesive corporate identity, greater brand presence, by building relationships between your business and the marketplace.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 11, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 21, '#### Domain7\r\n\r\nSince 2007, I have been working as Lead Designer at Domain7 Solutions Inc, Vancouver, BC, Canada.\r\n\r\n#### Bauhouse Visual Communications\r\n\r\nI have been practicing design since 1988 and established Bauhouse Visual Communications in 1991 in homage to the influential Bauhaus schools in Germany and Chicago. \r\n\r\n#### The Bauhaus\r\n\r\nThe Bauhaus has had a strong aesthetic influence on my design, though I do not have a house style. In fact, much of my design could be considered antithetical to the Modernist ideals of the Bauhaus. As a person of faith, I am both intrigued and disturbed by the high philosophical ideals of Modernism and by the notions of faith propounded in the Bauhaus manifesto of 1919.\r\n\r\nI struggle between the sacred and the secular, the east and the west, the altruistic and the commercial, the elitist and the populist, the rare and the common, the modern and the postmodern. I am both and I am neither. Yet all of it informs my identity and my design.', '<h4>Domain7</h4>\n\n<p>Since 2007, I have been working as Lead Designer at Domain7 Solutions Inc, Vancouver, BC, Canada.</p>\n\n<h4>Bauhouse Visual Communications</h4>\n\n<p>I have been practicing design since 1988 and established Bauhouse Visual Communications in 1991 in homage to the influential Bauhaus schools in Germany and Chicago.</p>\n\n<h4>The Bauhaus</h4>\n\n<p>The Bauhaus has had a strong aesthetic influence on my design, though I do not have a house style. In fact, much of my design could be considered antithetical to the Modernist ideals of the Bauhaus. As a person of faith, I am both intrigued and disturbed by the high philosophical ideals of Modernism and by the notions of faith propounded in the Bauhaus manifesto of 1919.</p>\n\n<p>I struggle between the sacred and the secular, the east and the west, the altruistic and the commercial, the elitist and the populist, the rare and the common, the modern and the postmodern. I am both and I am neither. Yet all of it informs my identity and my design.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 22, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 27, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 30, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 31, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 33, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 36, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 45, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 53, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 54, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 55, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 56, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 57, '#### The OpenType Format\r\n\r\nThanks to Adobe Systems, we now have PostScript technology that allows the ability to use mathematical descriptions of type outlines that can be scaled to any size. Adobe has been converting all their fonts to a new format that they have developed that finally does away with cross-platform compatibility problems, called OpenType. The primary benefit is the ability to access more than 256 characters within a single font file. This allows for greater typographic control and features, including automatic application of ligatures, small caps, lining and old style figures, and character variants.\r\n\r\nThe OpenType format provides a flexibility that did not exist with the older TrueType and PostScript formats, and this was enough of an incentive for me to invest in the purchase of a [license](/journal/font-licensing/) for the [Adobe OpenType Collection](http://monotypefonts.com/WhatsNew/pr-display.asp?year=2006&pr=279), with over 2900 typefaces.', '<h4>The OpenType Format</h4>\n\n<p>Thanks to Adobe Systems, we now have PostScript technology that allows the ability to use mathematical descriptions of type outlines that can be scaled to any size. Adobe has been converting all their fonts to a new format that they have developed that finally does away with cross-platform compatibility problems, called OpenType. The primary benefit is the ability to access more than 256 characters within a single font file. This allows for greater typographic control and features, including automatic application of ligatures, small caps, lining and old style figures, and character variants.</p>\n\n<p>The OpenType format provides a flexibility that did not exist with the older TrueType and PostScript formats, and this was enough of an incentive for me to invest in the purchase of a <a href=\"/journal/font-licensing/\">license</a> for the <a href=\"http://monotypefonts.com/WhatsNew/pr-display.asp?year=2006&amp;pr=279\">Adobe OpenType Collection</a>, with over 2900 typefaces.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 58, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (49, 59, NULL, NULL);
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 61, '#### Open Source Software\r\n\r\nThe best tools are often the simplest. Open source applications and community-contributed tools are helping people to focus on what they do best. Finding the best tool also requires some knowledge of the available options and choosing the one that is the best fit for the job.\r\n\r\nCommunities are coming together to produce standards that help aid the flow of ideas and communication. Individual contributions to collaborative projects are helping to make technology better and easier to use. Web Standards, Open Source Software, and distributed version control systems are helping to bring people together to create the best tools. Tap in to the power of the collective.', '<h4>Open Source Software</h4>\n\n<p>The best tools are often the simplest. Open source applications and community-contributed tools are helping people to focus on what they do best. Finding the best tool also requires some knowledge of the available options and choosing the one that is the best fit for the job.</p>\n\n<p>Communities are coming together to produce standards that help aid the flow of ideas and communication. Individual contributions to collaborative projects are helping to make technology better and easier to use. Web Standards, Open Source Software, and distributed version control systems are helping to bring people together to create the best tools. Tap in to the power of the collective.</p>\n');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (52, 60, 'Technology can often be a barrier to entry. Design seeks to remove the barriers and use technology as a means to connect, through words, images, messages, and media. Ultimately, it is an aid to facilitate the kind of communication that simply cannot be improved upon: face to face, meaningful conversation, where people are able to listen and to understand at various levels of verbal and non-verbal communication. Design enhances the experience, by clarifying and simplifying ideas so they can be easier and better understood.', '<p>Technology can often be a barrier to entry. Design seeks to remove the barriers and use technology as a means to connect, through words, images, messages, and media. Ultimately, it is an aid to facilitate the kind of communication that simply cannot be improved upon: face to face, meaningful conversation, where people are able to listen and to understand at various levels of verbal and non-verbal communication. Design enhances the experience, by clarifying and simplifying ideas so they can be easier and better understood.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 67, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 68, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (88, 69, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 70, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 71, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 72, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 73, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 74, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 75, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (79, 76, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (78, 77, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (77, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 80, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (68, 81, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (67, 82, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (66, 83, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (65, 84, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (64, 85, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (63, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (62, 87, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (61, 88, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (60, 89, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (59, 90, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (58, 91, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (57, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (56, 93, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (55, 94, NULL, NULL);
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (54, 95, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'international-christian-response', 'International Christian Response');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'grafus', 'Grafus');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'design-one-graphics-group', 'Design One Graphics Group');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'doug-fleming-graphics-now-fleming-design', 'Doug Fleming Graphics (now Fleming Design)');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'doug-fleming-graphics-now-fleming-design', 'Doug Fleming Graphics (now Fleming Design)');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'evangelical-fellowship-of-canada', 'Evangelical Fellowship of Canada');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'design-one-graphics-group', 'Design One Graphics Group');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'international-christian-response', 'International Christian Response');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'hunger-response-international', 'Hunger Response International');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'viperlink-communications', 'Viperlink Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'domain7', 'Domain7');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'bauhouse-visual-communications', 'Bauhouse Visual Communications');

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'organization', 'Organization');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'web-design-firm', 'Web Design Firm');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'employer', 'Employer');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'organization', 'Organization');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'employer', 'Employer');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'organization', 'Organization');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'organization', 'Organization');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'advertising-agency', 'Advertising Agency');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'design-studio', 'Design Studio');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'web-design-firm', 'Web Design Firm');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'design-studio', 'Design Studio');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 70, 'tom-abbuehl', 'Tom Abbühl');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 73, 'craig-davies', 'Craig Davies');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 74, 'doug-fleming', 'Doug Fleming');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 75, 'doug-fleming', 'Doug Fleming');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 83, 'craig-davies', 'Craig Davies');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 87, 'craig-davies', 'Craig Davies');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 90, 'sabrina-draper', 'Sabrina Draper');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 91, 'george-pytlik-campus-crusade-for-christ', 'George Pytlik, Campus Crusade for Christ');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 94, 'shawn-neumann', 'Shawn Neumann');

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 94, 'tracey-falk', 'Tracey Falk');

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (85, 68, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (88, 69, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (86, 70, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (84, 71, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (83, 72, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (82, 73, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (81, 74, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (80, 75, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (79, 76, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 77, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 78, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 79, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 80, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 81, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 82, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 83, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 84, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 85, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (63, 86, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 87, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 88, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 89, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 90, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 91, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 92, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 93, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 95, 'stephen-bau', 'Stephen Bau');

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'getty-images', 'Getty Images');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 89, 'bob-fugger', 'Bob Fugger');

-- *** STRUCTURE: `tbl_entries_data_77` ***
DROP TABLE IF EXISTS `tbl_entries_data_77`;
CREATE TABLE `tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_77` ***
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 67, 'globe-printers', 'Globe Printers');
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 89, 'globe-printers', 'Globe Printers');
INSERT INTO `tbl_entries_data_77` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 90, 'globe-printers', 'Globe Printers');

-- *** STRUCTURE: `tbl_entries_data_78` ***
DROP TABLE IF EXISTS `tbl_entries_data_78`;
CREATE TABLE `tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_78` ***

-- *** STRUCTURE: `tbl_entries_data_79` ***
DROP TABLE IF EXISTS `tbl_entries_data_79`;
CREATE TABLE `tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_79` ***
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo.gif', 6888, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 68, '/assets/portfolio/sjb-big_bear_logo.jpg', 16630, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 70, '/assets/portfolio/bpa-web_bridges.jpg', 23910, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-23T12:19:46-07:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 71, '/assets/portfolio/rentreg-logo.jpg', 10835, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T13:00:06-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 72, '/assets/portfolio/bpa-prescover.jpg', 32658, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T12:58:17-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 73, '/assets/portfolio/d1-rcabc_invite.jpg', 15732, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:52:51-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 74, '/assets/portfolio/dfg-bristol_gardens.gif', 6818, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:48:17-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 75, '/assets/portfolio/dfg-stjohns_logo.gif', 7473, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:43:34-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 76, '/assets/portfolio/sdbc-uturn_logo.jpg', 15468, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:41:29-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 81, '/assets/portfolio/sdbc-abovetherim.gif', 12129, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:22:19-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 83, '/assets/portfolio/d1-web_process.jpg', 15820, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:46:35-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 95, '/assets/portfolio/amec-logo.gif', 7857, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:15:16-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 94, '/assets/portfolio/d7-moonrattles_logo.gif', 10181, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:31:56-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 93, '/assets/portfolio/sjb-boysbasketball_logo.gif', 21254, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T09:31:17-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 92, '/assets/portfolio/sfm-logo.gif', 8593, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:18:45-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 91, '/assets/portfolio/ccc-totalpackage_logo.jpg', 18975, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:21:46-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 90, '/assets/portfolio/vlc-quantex_logo.gif', 6535, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:26:50-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 89, '/assets/portfolio/sfm-catalog.jpg', 21718, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:28:56-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 88, '/assets/portfolio/qwa-crest_logo.gif', 10747, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:32:34-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 87, '/assets/portfolio/d1-pca_web_home.jpg', 34892, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:35:00-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 86, '/assets/portfolio/hri-riceraiser_logo.jpg', 12781, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:37:16-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 85, '/assets/portfolio/hri-riceraiser_web.jpg', 31644, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:40:59-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 84, '/assets/portfolio/icr-web_home.jpg', 27976, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:43:10-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 82, '/assets/portfolio/300c-web_home.jpg', 35928, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:02:03-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 79, '/assets/portfolio/idop-web_home.jpg', 25571, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:25:20-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 80, '/assets/portfolio/cni-web_home.jpg', 27676, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:29:33-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 78, '/assets/portfolio/cni-logo.gif', 4318, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:31:30-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 77, '/assets/portfolio/wos-calendar_oct2006.jpg', 13704, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:35:19-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 69, '/assets/portfolio/hmk-web_home.jpg', 22339, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T20:51:30-08:00\";s:5:\"width\";i:323;s:6:\"height\";i:215;}');

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (6, 11, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (54, 21, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (68, 22, NULL);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (67, 27, NULL);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (17, 30, 1);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (62, 31, NULL);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (36, 33, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (33, 36, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (34, 43, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (38, 44, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (41, 45, 33);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (37, 53, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (42, 54, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (43, 55, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (44, 56, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (60, 57, 53);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (46, 58, 2);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (49, 59, 58);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (52, 60, 58);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `relation_id`) VALUES (64, 61, 58);

-- *** STRUCTURE: `tbl_entries_data_80` ***
DROP TABLE IF EXISTS `tbl_entries_data_80`;
CREATE TABLE `tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_80` ***
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_med.gif', 3532, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 68, '/assets/portfolio/sjb-big_bear_logo_med.jpg', 8370, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 70, '/assets/portfolio/bpa-web_med.jpg', 5725, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-23T12:19:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 71, '/assets/portfolio/rentreg-logo_med.jpg', 5294, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T13:00:06-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 72, '/assets/portfolio/bpa-prescover_med.jpg', 8535, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T12:58:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 73, '/assets/portfolio/d1-rcabc_invite_med.jpg', 5096, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:52:51-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 74, '/assets/portfolio/dfg-bristol_gardens_med.gif', 4792, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:48:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 75, '/assets/portfolio/dfg-stjohns_logo_med.gif', 3907, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:43:34-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 76, '/assets/portfolio/sdbc-uturn_logo_med.jpg', 6276, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:41:29-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 80, '/assets/portfolio/cni-web_med.jpg', 6659, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:29:33-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 81, '/assets/portfolio/sdbc-abovetherim_med.gif', 4223, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:22:19-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 83, '/assets/portfolio/d1-web_med.jpg', 3784, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:46:35-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 95, '/assets/portfolio/amec-logo_med.gif', 2510, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:15:16-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 94, '/assets/portfolio/d7-moonrattles_logo_med.gif', 5152, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:31:56-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 93, '/assets/portfolio/sjb-boysbask_logo_med.gif', 7898, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T09:31:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 92, '/assets/portfolio/sfm-logo_med.gif', 2406, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:18:45-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 91, '/assets/portfolio/ccc-totalpackage_med.gif', 5372, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:21:46-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 90, '/assets/portfolio/vlc-quantex_logo_med.gif', 3223, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:26:50-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 89, '/assets/portfolio/sfm-catalog_med.jpg', 5715, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:28:56-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 88, '/assets/portfolio/qwa-crest_logo_med.gif', 6930, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:32:34-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 87, '/assets/portfolio/d1-pca_website_med.jpg', 6323, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:35:00-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 86, '/assets/portfolio/hri-riceraiser_med.jpg', 3597, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:37:16-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 85, '/assets/portfolio/hri-riceraiser_site_med.jpg', 6336, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:40:59-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 84, '/assets/portfolio/icr-website_med.jpg', 6259, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:43:10-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 82, '/assets/portfolio/300c-web_med.jpg', 9721, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:02:03-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 79, '/assets/portfolio/idop-web_med.jpg', 4765, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:25:20-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 78, '/assets/portfolio/cni-logo_med.gif', 1526, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:31:30-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 77, '/assets/portfolio/wos-calendar_med.jpg', 5375, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:35:19-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 69, '/assets/portfolio/hmk-web_med.jpg', 5743, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T20:51:30-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');

-- *** STRUCTURE: `tbl_entries_data_81` ***
DROP TABLE IF EXISTS `tbl_entries_data_81`;
CREATE TABLE `tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_81` ***
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_med_off.gif', 2209, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 68, '/assets/portfolio/sjb-big_bear_logo_med_off.jpg', 4119, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 70, '/assets/portfolio/bpa-web_med_off.jpg', 2662, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-23T12:19:46-07:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 71, '/assets/portfolio/rentreg-logo_med_off.jpg', 2063, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T13:00:06-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 72, '/assets/portfolio/bpa-prescover_med_off.jpg', 3371, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T12:58:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 73, '/assets/portfolio/d1-rcabc_invite_med_off.jpg', 2297, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:52:51-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 74, '/assets/portfolio/dfg-bristol_gardens_med_off.gif', 4250, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:48:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 75, '/assets/portfolio/dfg-stjohns_logo_med_off.gif', 3398, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:43:34-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 76, '/assets/portfolio/sdbc-uturn_logo_med_off.jpg', 2152, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:41:29-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 80, '/assets/portfolio/cni-web_med_off.jpg', 3129, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:29:33-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 81, '/assets/portfolio/sdbc-abovetherim_med_off.gif', 3557, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:22:19-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 83, '/assets/portfolio/d1-web_med_off.jpg', 1931, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:46:35-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 95, '/assets/portfolio/amec-logo_med_off.gif', 1563, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:15:16-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 94, '/assets/portfolio/d7-moonrattles_logo_med_off.gif', 4326, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:31:56-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 93, '/assets/portfolio/sjb-boysbask_logo_med_off.gif', 5270, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T09:31:17-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 92, '/assets/portfolio/sfm-logo_med_off.gif', 1595, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:18:45-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 91, '/assets/portfolio/ccc-totalpackage_med_off.gif', 4150, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:21:46-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 90, '/assets/portfolio/vlc-quantex_logo_med_off.gif', 2239, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:26:50-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 89, '/assets/portfolio/sfm-catalog_med_off.jpg', 2475, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:28:56-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 88, '/assets/portfolio/qwa-crest_logo_med_off.gif', 5111, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:32:34-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 87, '/assets/portfolio/d1-pca_website_med_off.jpg', 3041, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:35:00-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 86, '/assets/portfolio/hri-riceraiser_med_off.jpg', 1979, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:37:16-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 85, '/assets/portfolio/hri-riceraiser_site_med_off.jpg', 2841, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:40:59-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 84, '/assets/portfolio/icr-website_med_off.jpg', 3320, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:43:10-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 82, '/assets/portfolio/300c-web_med_off.jpg', 3748, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:02:03-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 79, '/assets/portfolio/idop-web_med_off.jpg', 1731, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:25:20-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 78, '/assets/portfolio/cni-logo_med_off.gif', 1477, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:31:30-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 77, '/assets/portfolio/wos-calendar_med_off.jpg', 2280, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:35:19-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 69, '/assets/portfolio/hmk-web_med_off.jpg', 2711, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T20:51:30-08:00\";s:5:\"width\";i:107;s:6:\"height\";i:107;}');

-- *** STRUCTURE: `tbl_entries_data_82` ***
DROP TABLE IF EXISTS `tbl_entries_data_82`;
CREATE TABLE `tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_82` ***
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_thb.gif', 1542, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 68, '/assets/portfolio/sjb-bears_logo_thb.gif', 2218, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 70, '/assets/portfolio/bpa-web_thb.jpg', 1692, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-23T12:19:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 71, '/assets/portfolio/rentreg-logo_thb.jpg', 2421, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T13:00:06-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 72, '/assets/portfolio/bpa-prescover_thb.jpg', 2539, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T12:58:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 73, '/assets/portfolio/d1-rcabc_invite_thb.jpg', 2127, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:52:51-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 74, '/assets/portfolio/dfg-bristol_gardens_thb.gif', 1153, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:48:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 75, '/assets/portfolio/dfg-stjohns_logo_thb.gif', 1282, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:43:34-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 76, '/assets/portfolio/sdbc-uturn_logo_thb.jpg', 2260, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:41:29-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 80, '/assets/portfolio/cni-web_thb.jpg', 2228, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:29:33-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 81, '/assets/portfolio/sdbc-abovetherim_thb.gif', 2417, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:22:19-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 83, '/assets/portfolio/d1-web_thb.jpg', 1062, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:46:35-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 95, '/assets/portfolio/amec-logo_thb.gif', 1572, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:15:16-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 94, '/assets/portfolio/d7-moonrattles_logo_thb.gif', 2616, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:31:56-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 93, '/assets/portfolio/sjb-boysbask_logo_thb.gif', 3605, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T09:31:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 92, '/assets/portfolio/sfm-logo_thb.gif', 1589, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:18:45-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 91, '/assets/portfolio/ccc-totalpackage_thb.gif', 2610, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:21:46-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 90, '/assets/portfolio/vlc-quantex_logo_thb.gif', 1944, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:26:50-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 89, '/assets/portfolio/sfm-catalog_thb.jpg', 1975, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:28:56-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 88, '/assets/portfolio/qwa-crest_logo_thb.gif', 2004, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:32:34-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 87, '/assets/portfolio/d1-pca_website_thb.jpg', 1958, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:35:00-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 86, '/assets/portfolio/hri-riceraiser_thb.jpg', 2269, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:37:16-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 85, '/assets/portfolio/hri-riceraiser_site_thb.jpg', 1801, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:40:59-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 84, '/assets/portfolio/icr-website_thb.jpg', 1564, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:43:10-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 82, '/assets/portfolio/300c-web_thb.jpg', 3171, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:02:03-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 79, '/assets/portfolio/idop-web_thb.jpg', 2289, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:25:20-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 78, '/assets/portfolio/cni-logo_thb.gif', 860, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:31:30-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 77, '/assets/portfolio/wos-calendar_thb.jpg', 1683, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:35:19-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 69, '/assets/portfolio/hmk-web_thb.jpg', 2031, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T20:51:30-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');

-- *** STRUCTURE: `tbl_entries_data_83` ***
DROP TABLE IF EXISTS `tbl_entries_data_83`;
CREATE TABLE `tbl_entries_data_83` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_83` ***
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 67, '/assets/portfolio/wos-logo_thb_off.gif', 798, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:10:11-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (81, 68, '/assets/portfolio/sjb-bears_logo_thb_off.gif', 1432, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2009-07-21T22:33:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (82, 70, '/assets/portfolio/bpa-web_thb_off.jpg', 966, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2009-07-23T12:19:46-07:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (80, 71, '/assets/portfolio/rentreg-logo_thb_off.jpg', 1036, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T13:00:06-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (79, 72, '/assets/portfolio/bpa-prescover_thb_off.jpg', 1179, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T12:58:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (78, 73, '/assets/portfolio/d1-rcabc_invite_thb_off.jpg', 1117, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:52:51-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (77, 74, '/assets/portfolio/dfg-bristol_gardens_thb_off.gif', 1203, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:48:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (76, 75, '/assets/portfolio/dfg-stjohns_logo_thb_off.gif', 1239, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:43:34-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (75, 76, '/assets/portfolio/sdbc-uturn_logo_thb_off.jpg', 844, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:41:29-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (69, 80, '/assets/portfolio/cni-web_thb_off.jpg', 1135, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:29:33-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (65, 81, '/assets/portfolio/sdbc-abovetherim_thb_off.gif', 2325, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:22:19-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (63, 83, '/assets/portfolio/d1-web_thb_off.jpg', 766, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:46:35-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (51, 95, '/assets/portfolio/amec-logo_thb_off.gif', 939, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:15:16-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (52, 94, '/assets/portfolio/d7-moonrattles_logo_thb_off.gif', 2005, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T08:31:56-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (53, 93, '/assets/portfolio/sjb-boysbask_logo_thb_off.gif', 2284, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T09:31:17-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (54, 92, '/assets/portfolio/sfm-logo_thb_off.gif', 1166, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:18:45-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (55, 91, '/assets/portfolio/ccc-totalpackage_thb_off.gif', 1747, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:21:46-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (56, 90, '/assets/portfolio/vlc-quantex_logo_thb_off.gif', 1458, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:26:50-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (57, 89, '/assets/portfolio/sfm-catalog_thb_off.jpg', 972, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:28:56-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (58, 88, '/assets/portfolio/qwa-crest_logo_thb_off.gif', 1232, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:32:34-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (59, 87, '/assets/portfolio/d1-pca_website_thb_off.jpg', 998, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:35:00-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (60, 86, '/assets/portfolio/hri-riceraiser_thb_off.jpg', 1288, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:37:16-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (61, 85, '/assets/portfolio/hri-riceraiser_site_thb_off.jpg', 1018, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:40:59-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (62, 84, '/assets/portfolio/icr-website_thb_off.jpg', 944, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T10:43:10-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (64, 82, '/assets/portfolio/300c-web_thb_off.jpg', 1319, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:02:03-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (70, 79, '/assets/portfolio/idop-web_thb_off.jpg', 1278, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:25:20-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (73, 78, '/assets/portfolio/cni-logo_thb_off.gif', 846, 'image/gif', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:31:30-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (74, 77, '/assets/portfolio/wos-calendar_thb_off.jpg', 886, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T11:35:19-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (83, 69, '/assets/portfolio/hmk-web_thb_off.jpg', 1324, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-02-14T20:51:30-08:00\";s:5:\"width\";i:53;s:6:\"height\";i:53;}');

-- *** STRUCTURE: `tbl_entries_data_84` ***
DROP TABLE IF EXISTS `tbl_entries_data_84`;
CREATE TABLE `tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_84` ***
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (3, 11, 15);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (47, 21, 19);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (57, 22, 23);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (56, 27, 25);
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
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (50, 57, 49);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (39, 58, 18);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (42, 59, 50);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (45, 60, 51);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (53, 61, 52);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (51, 31, NULL);

-- *** STRUCTURE: `tbl_entries_data_85` ***
DROP TABLE IF EXISTS `tbl_entries_data_85`;
CREATE TABLE `tbl_entries_data_85` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_85` ***
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (1, 63, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (2, 64, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (3, 65, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (4, 66, 62);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (8, 199, 7);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (6, 200, 7);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (7, 201, 7);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (15, 202, 7);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (10, 203, 7);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (14, 204, 3);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (16, 205, 3);
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `relation_id`) VALUES (17, 213, 7);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (6, 11, 1);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (54, 21, 2);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (68, 22, 3);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (67, 27, 4);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (17, 30, 5);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (62, 31, 6);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (36, 33, 7);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (33, 36, 8);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (34, 43, 9);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (38, 44, 10);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (41, 45, 11);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (37, 53, 12);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (42, 54, 13);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (43, 55, 14);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (44, 56, 15);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (60, 57, 16);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (46, 58, 17);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (49, 59, 18);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (52, 60, 19);
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (64, 61, 20);

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
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 12, 0, '2009-07-23 12:14:54', '2009-07-23 19:14:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 12, 0, '2009-07-23 12:17:26', '2009-07-23 19:17:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 12, 0, '2009-07-23 12:23:34', '2009-07-23 19:23:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 12, 0, '2009-07-23 12:32:23', '2009-07-23 19:32:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 12, 0, '2009-07-23 12:43:00', '2009-07-23 19:43:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 12, 0, '2009-07-23 12:43:08', '2009-07-23 19:43:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 12, 0, '2009-07-23 12:43:37', '2009-07-23 19:43:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 12, 0, '2009-07-23 12:43:45', '2009-07-23 19:43:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 12, 0, '2009-07-23 12:43:52', '2009-07-23 19:43:52');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (78, 12, 0, '2009-07-23 12:43:57', '2009-07-23 19:43:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 12, 0, '2009-07-23 12:44:02', '2009-07-23 19:44:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 12, 0, '2009-07-23 12:44:06', '2009-07-23 19:44:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 12, 0, '2009-07-23 12:44:12', '2009-07-23 19:44:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (82, 12, 0, '2009-07-23 12:44:50', '2009-07-23 19:44:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 12, 0, '2009-07-23 12:44:58', '2009-07-23 19:44:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 12, 0, '2009-07-23 12:45:06', '2009-07-23 19:45:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 12, 0, '2009-07-23 12:45:11', '2009-07-23 19:45:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 12, 0, '2009-07-23 12:45:16', '2009-07-23 19:45:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 12, 0, '2009-07-23 12:45:21', '2009-07-23 19:45:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 12, 0, '2009-07-23 12:45:27', '2009-07-23 19:45:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 12, 0, '2009-07-23 12:45:33', '2009-07-23 19:45:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 12, 0, '2009-07-23 12:45:41', '2009-07-23 19:45:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 12, 0, '2009-07-23 12:45:47', '2009-07-23 19:45:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 12, 0, '2009-07-23 12:45:53', '2009-07-23 19:45:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 12, 0, '2009-07-23 12:45:58', '2009-07-23 19:45:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 12, 0, '2009-07-23 12:46:07', '2009-07-23 19:46:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 12, 0, '2009-07-23 12:46:13', '2009-07-23 19:46:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 11, 1, '2010-02-16 22:40:14', '2010-02-17 06:40:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 11, 1, '2010-02-16 22:41:33', '2010-02-17 06:41:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 11, 1, '2010-02-16 22:42:27', '2010-02-17 06:42:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (99, 11, 1, '2010-02-16 22:43:20', '2010-02-17 06:43:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (100, 11, 1, '2010-02-16 22:44:21', '2010-02-17 06:44:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (101, 3, 1, '2010-02-16 22:48:19', '2010-02-17 06:48:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (102, 3, 1, '2010-02-17 06:24:55', '2010-02-17 14:24:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (103, 3, 1, '2010-02-17 06:55:24', '2010-02-17 14:55:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (104, 3, 1, '2010-02-17 07:01:41', '2010-02-17 15:01:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (105, 3, 1, '2010-02-17 07:27:54', '2010-02-17 15:27:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (106, 3, 1, '2010-02-17 07:30:40', '2010-02-17 15:30:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 3, 1, '2010-02-17 07:33:02', '2010-02-17 15:33:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 3, 1, '2010-02-17 07:34:01', '2010-02-17 15:34:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (109, 3, 1, '2010-02-17 07:34:57', '2010-02-17 15:34:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 3, 1, '2010-02-17 07:36:49', '2010-02-17 15:36:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (111, 3, 1, '2010-02-17 07:37:41', '2010-02-17 15:37:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (112, 3, 1, '2010-02-17 07:38:37', '2010-02-17 15:38:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (113, 4, 1, '2010-02-18 22:34:04', '2010-02-19 06:34:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (114, 4, 1, '2010-02-18 22:38:55', '2010-02-19 06:38:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (115, 4, 1, '2010-02-18 23:11:05', '2010-02-19 07:11:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (116, 4, 1, '2010-02-18 23:12:46', '2010-02-19 07:12:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (117, 4, 1, '2010-02-19 07:09:30', '2010-02-19 15:09:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (118, 4, 1, '2010-02-19 07:10:43', '2010-02-19 15:10:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (119, 4, 1, '2010-02-19 07:12:20', '2010-02-19 15:12:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (120, 4, 1, '2010-02-19 07:13:30', '2010-02-19 15:13:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (121, 11, 1, '2010-02-20 08:43:31', '2010-02-20 16:43:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (122, 11, 1, '2010-02-20 09:03:47', '2010-02-20 17:03:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (123, 11, 1, '2010-02-20 09:05:28', '2010-02-20 17:05:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (124, 11, 1, '2010-02-20 09:14:03', '2010-02-20 17:14:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (125, 11, 1, '2010-02-20 09:15:49', '2010-02-20 17:15:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (126, 11, 1, '2010-02-20 09:17:37', '2010-02-20 17:17:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (127, 11, 1, '2010-02-20 09:19:00', '2010-02-20 17:19:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (128, 11, 1, '2010-02-20 09:26:37', '2010-02-20 17:26:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (129, 11, 1, '2010-02-20 09:27:42', '2010-02-20 17:27:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (130, 11, 1, '2010-02-20 09:28:36', '2010-02-20 17:28:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (131, 11, 1, '2010-02-20 09:29:31', '2010-02-20 17:29:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (132, 11, 1, '2010-02-20 10:23:20', '2010-02-20 18:23:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (133, 11, 1, '2010-02-20 10:24:43', '2010-02-20 18:24:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (134, 11, 1, '2010-02-20 10:26:23', '2010-02-20 18:26:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (135, 11, 1, '2010-02-20 10:27:16', '2010-02-20 18:27:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (136, 11, 1, '2010-02-20 10:28:24', '2010-02-20 18:28:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (137, 11, 1, '2010-02-20 10:28:56', '2010-02-20 18:28:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (138, 11, 1, '2010-02-20 10:30:15', '2010-02-20 18:30:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (139, 11, 1, '2010-02-20 10:30:55', '2010-02-20 18:30:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (140, 11, 1, '2010-02-20 10:31:16', '2010-02-20 18:31:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (141, 11, 1, '2010-02-20 10:32:08', '2010-02-20 18:32:08');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (142, 11, 1, '2010-02-20 10:32:59', '2010-02-20 18:32:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (143, 11, 1, '2010-02-20 10:33:39', '2010-02-20 18:33:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (144, 11, 1, '2010-02-20 10:37:06', '2010-02-20 18:37:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (145, 11, 1, '2010-02-20 10:37:51', '2010-02-20 18:37:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (146, 11, 1, '2010-02-20 10:38:22', '2010-02-20 18:38:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (147, 11, 1, '2010-02-20 10:39:10', '2010-02-20 18:39:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (148, 11, 1, '2010-02-20 10:41:15', '2010-02-20 18:41:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (149, 11, 1, '2010-02-20 10:42:16', '2010-02-20 18:42:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (150, 11, 1, '2010-02-20 10:45:32', '2010-02-20 18:45:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (151, 11, 1, '2010-02-20 10:45:58', '2010-02-20 18:45:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (152, 11, 1, '2010-02-20 10:46:25', '2010-02-20 18:46:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (153, 11, 1, '2010-02-20 10:57:02', '2010-02-20 18:57:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (154, 11, 1, '2010-02-20 10:57:37', '2010-02-20 18:57:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (155, 11, 1, '2010-02-20 10:58:35', '2010-02-20 18:58:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (156, 11, 1, '2010-02-20 10:59:07', '2010-02-20 18:59:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (157, 11, 1, '2010-02-20 10:59:49', '2010-02-20 18:59:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (158, 11, 1, '2010-02-20 11:03:27', '2010-02-20 19:03:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (159, 11, 1, '2010-02-20 11:04:20', '2010-02-20 19:04:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (160, 11, 1, '2010-02-20 11:04:54', '2010-02-20 19:04:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (161, 11, 1, '2010-02-20 11:05:24', '2010-02-20 19:05:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (162, 11, 1, '2010-02-20 11:06:02', '2010-02-20 19:06:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (163, 11, 1, '2010-02-20 11:09:20', '2010-02-20 19:09:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (164, 4, 1, '2010-02-21 09:47:05', '2010-02-21 17:47:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (165, 4, 1, '2010-02-21 09:48:09', '2010-02-21 17:48:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (166, 4, 1, '2010-02-21 09:57:05', '2010-02-21 17:57:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (167, 4, 1, '2010-02-21 11:17:31', '2010-02-21 19:17:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (168, 4, 1, '2010-02-21 11:26:20', '2010-02-21 19:26:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (169, 4, 1, '2010-02-21 11:31:58', '2010-02-21 19:31:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (170, 4, 1, '2010-02-21 11:34:59', '2010-02-21 19:34:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (171, 4, 1, '2010-02-21 11:36:56', '2010-02-21 19:36:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (172, 4, 1, '2010-02-21 11:38:33', '2010-02-21 19:38:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (173, 4, 1, '2010-02-21 11:41:29', '2010-02-21 19:41:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (174, 4, 1, '2010-02-21 11:43:14', '2010-02-21 19:43:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (175, 4, 1, '2010-02-21 11:48:01', '2010-02-21 19:48:01');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (176, 4, 1, '2010-02-21 11:49:36', '2010-02-21 19:49:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (177, 4, 1, '2010-02-21 11:51:13', '2010-02-21 19:51:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (178, 4, 1, '2010-02-21 11:52:29', '2010-02-21 19:52:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (179, 4, 1, '2010-02-21 11:53:42', '2010-02-21 19:53:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (180, 4, 1, '2010-02-21 11:57:43', '2010-02-21 19:57:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (181, 4, 1, '2010-02-21 11:59:38', '2010-02-21 19:59:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (182, 4, 1, '2010-02-21 12:02:37', '2010-02-21 20:02:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (183, 4, 1, '2010-02-21 12:06:35', '2010-02-21 20:06:35');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (184, 4, 1, '2010-02-21 12:08:51', '2010-02-21 20:08:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (185, 4, 1, '2010-02-21 12:12:11', '2010-02-21 20:12:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (186, 4, 1, '2010-02-21 12:15:48', '2010-02-21 20:15:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (187, 4, 1, '2010-02-21 12:20:11', '2010-02-21 20:20:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (188, 4, 1, '2010-02-21 12:22:24', '2010-02-21 20:22:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (189, 4, 1, '2010-02-21 12:28:39', '2010-02-21 20:28:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (190, 4, 1, '2010-02-21 12:29:59', '2010-02-21 20:29:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (191, 4, 1, '2010-02-21 12:32:30', '2010-02-21 20:32:30');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (192, 4, 1, '2010-02-21 12:34:02', '2010-02-21 20:34:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (193, 4, 1, '2010-02-21 12:36:53', '2010-02-21 20:36:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (194, 4, 1, '2010-02-21 12:37:51', '2010-02-21 20:37:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (195, 4, 1, '2010-02-21 12:39:21', '2010-02-21 20:39:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (196, 4, 1, '2010-02-21 12:40:44', '2010-02-21 20:40:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (197, 4, 1, '2010-02-21 12:42:26', '2010-02-21 20:42:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (198, 4, 1, '2010-02-21 12:45:40', '2010-02-21 20:45:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (199, 6, 1, '2010-02-21 14:33:42', '2010-02-21 22:33:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (200, 6, 1, '2010-02-21 14:34:54', '2010-02-21 22:34:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (201, 6, 1, '2010-02-21 14:40:42', '2010-02-21 22:40:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (202, 6, 1, '2010-02-21 15:07:37', '2010-02-21 23:07:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (203, 6, 1, '2010-02-21 15:17:13', '2010-02-21 23:17:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (204, 6, 1, '2010-02-21 15:43:05', '2010-02-21 23:43:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (205, 6, 1, '2010-02-21 18:02:41', '2010-02-22 02:02:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (206, 11, 1, '2010-02-27 08:52:17', '2010-02-27 16:52:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (207, 11, 1, '2010-02-27 08:55:09', '2010-02-27 16:55:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (208, 11, 1, '2010-02-27 08:56:39', '2010-02-27 16:56:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (209, 11, 1, '2010-02-27 08:59:25', '2010-02-27 16:59:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (210, 11, 1, '2010-02-27 08:59:47', '2010-02-27 16:59:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (211, 4, 1, '2010-02-27 11:01:34', '2010-02-27 19:01:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (212, 4, 1, '2010-02-27 11:04:39', '2010-02-27 19:04:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (213, 6, 1, '2010-02-27 11:56:00', '2010-02-27 19:56:00');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (35, 'content_type_mappings', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'entity_diagram', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (37, 'export_ensemble', 'enabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'enhancedtaglist', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'numberfield', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'pagesfield', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (53, 'referencelink', 'enabled', '1.3.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (38, 'reflectionfield', 'enabled', '1.0.8');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (39, 'selectbox_link_field', 'enabled', 1.18);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (36, 'debugdevkit', 'enabled', '1.0.5');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (40, 'jit_image_manipulation', 'enabled', 1.07);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (42, 'maintenance_mode', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (43, 'markdown', 'enabled', 1.9);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (44, 'order_entries', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (45, 'profiledevkit', 'enabled', '1.0.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (41, 'logsdevkit', 'enabled', '1.0.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (57, 'export_install_file', 'disabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (34, 'browsedevkit', 'enabled', '1.0.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (56, 'publishfiltering', 'enabled', 1.004);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 35, '/frontend/', 'FrontendPreRenderHeaders', 'setContentType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 36, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (74, 53, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (52, 38, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (51, 38, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 38, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 37, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (53, 40, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (61, 42, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (60, 42, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (59, 42, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (58, 42, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (57, 42, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (64, 44, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (63, 44, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (66, 45, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (65, 45, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 34, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 36, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (56, 41, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (55, 41, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 34, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (54, 40, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (62, 42, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (77, 56, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');

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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Category', 'category', 'selectbox_link', 3, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Tags', 'tags', 'enhancedtaglist', 3, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Date', 'date', 'date', 3, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Author', 'author', 'author', 3, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Publish', 'publish', 'checkbox', 3, 'no', 11, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Enable Comments', 'enable-comments', 'checkbox', 3, 'no', 12, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Type', 'type', 'selectbox_link', 4, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'URL', 'url', 'input', 4, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 4, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Body', 'body', 'textarea', 4, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Date', 'date', 'date', 4, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Category', 'category', 'selectbox_link', 4, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Tags', 'tags', 'enhancedtaglist', 4, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Publish', 'publish', 'checkbox', 4, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Enable Comments', 'enable-comments', 'checkbox', 4, 'no', 11, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Image', 'image', 'upload', 4, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'File', 'file', 'upload', 4, 'no', 5, 'sidebar', 'no');
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
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, 'category', 'navigation,next_section,portfolio,previous_section,section,section_image,section_images', 'login', 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'About', 'about', NULL, NULL, 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, NULL, 'Journal', 'journal', NULL, 'entry', 'about,archive_overview,categories,entries,entry,entry_images,navigation,next_section,previous_section,section,section_image,section_images', 'login', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'Archive', 'archive', 'journal', 'year/month', 'about,archive_entry_list,archive_overview,navigation', 'login', 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, NULL, 'Portfolio', 'portfolio', NULL, NULL, 'navigation,next_section,portfolio,previous_section,section,section_image,section_images', 'login', 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, NULL, 'Resources', 'resources', NULL, 'category/entry', 'about,categories,navigation,next_section,previous_section,resource,resources,resources_by_category,section,section_image,section_images', 'login', 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, NULL, 'Contact', 'contact', NULL, NULL, 'navigation,next_section,previous_section,section', 'login', 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, NULL, 'Imagine', 'imagine', NULL, 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, NULL, 'Design', 'design', NULL, 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 13);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, NULL, 'Build', 'build', NULL, 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, 9, 'Identity', 'identity', 'design', 'entry', 'navigation,next_section,portfolio_by_media,previous_section,section,section_image,section_images', 'login', 14);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 9, 'Print', 'print', 'design', 'entry', 'navigation,next_section,portfolio_by_media,previous_section,section,section_image,section_images', 'login', 15);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 9, 'Web', 'web', 'design', 'entry', 'navigation,next_section,portfolio_by_media,previous_section,section,section_image,section_images', 'login', 16);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, 9, 'Type', 'type', 'design', 'entry', 'navigation,next_section,portfolio_by_media,previous_section,section,section_image,section_images', 'login', 17);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (15, 3, 'Category', 'category', 'journal', 'category/entry', 'about,categories,entries_by_category,navigation', 'login', 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, NULL, 'RSS', 'rss', NULL, NULL, 'resources_rss,rss', NULL, 22);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, NULL, 'Page not found', 404, NULL, NULL, 'navigation', 'login', 24);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, 8, 'Resources', 'resources', 'imagine', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (20, 8, 'Theory', 'theory', 'imagine', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, 8, 'Research', 'research', 'imagine', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 11);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (22, 8, 'Strategy', 'strategy', 'imagine', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (23, 10, 'People', 'people', 'build', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (24, 10, 'Relationships', 'relationships', 'build', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 20);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (25, 10, 'Community', 'community', 'build', 'entry', 'navigation,next_section,previous_section,section,section_image,section_images', 'login', 21);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (26, NULL, 'Import', 'import', NULL, 'a', 'section_schema_portfolio', 'login,save_portfolio', 25);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (125, 1, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (178, 3, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (128, 2, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (124, 1, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (131, 5, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (203, 6, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (60, 8, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (141, 9, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (147, 10, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (28, 17, 'maintenance');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (29, 17, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (119, 16, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (45, 18, 404);
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (46, 18, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (126, 1, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (127, 2, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (179, 3, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (132, 5, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (202, 6, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (136, 7, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (135, 7, 'main');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (61, 8, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (137, 19, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (138, 20, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (139, 21, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (140, 22, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (142, 9, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (172, 11, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (173, 12, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (174, 13, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (175, 14, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (148, 10, 'tabs');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (149, 23, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (150, 24, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (151, 25, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (200, 4, 'nav');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (201, 15, 'nav');

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Menus', 'menus', 3, NULL, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Sections', 'sections', 0, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Journal', 'journal', 1, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Resources', 'resources', 2, 29, 'desc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Types', 'types', 4, NULL, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Categories', 'categories', 5, 39, 'asc', 'no', 'Meta');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Comments', 'comments', 6, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Messages', 'messages', 7, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Notes', 'notes', 8, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Files', 'files', 9, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Images', 'images', 10, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Portfolio', 'portfolio', 11, NULL, 'asc', 'no', 'Assets');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (162, 11, 59, 3, 15, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (81, 11, 59, 2, 84, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (164, 2, 3, 3, 17, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (148, 5, 37, 4, 25, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (149, 6, 39, 4, 31, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (165, 6, 39, 3, 18, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (23, 3, 11, 7, 46, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (24, 4, 24, 7, 47, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (61, 6, 39, 12, 68, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (163, 10, 56, 3, 16, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (80, 2, 3, 2, 8, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (55, 5, 37, 6, 85, 'no');
