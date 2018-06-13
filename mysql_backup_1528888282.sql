

CREATE TABLE `column_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `min_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `max_value` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') COLLATE utf8_bin DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Columns';




CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Host","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","User","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Select_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Insert_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Update_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Delete_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Create_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Drop_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Reload_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Shutdown_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Process_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","File_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Grant_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","References_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Index_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Alter_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Show_db_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Super_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Create_tmp_table_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Lock_tables_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Execute_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Repl_slave_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","user","Repl_client_priv","2012-06-18 14:56:21","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","Host","2012-06-18 14:57:17","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","Db","2012-06-18 14:57:17","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","User","2012-06-18 14:57:17","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","Table_name","2012-06-18 14:57:17","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","Table_priv","2012-06-18 14:57:17","Select");
INSERT INTO columns_priv VALUES("localhost","mysql","pma","tables_priv","Column_priv","2012-06-18 14:57:17","Select");



CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

INSERT INTO db VALUES("%","test","","Y","Y","Y","Y","Y","Y","N","Y","Y","Y","Y","Y","Y","Y","Y","N","N","Y","Y");
INSERT INTO db VALUES("%","test\_%","","Y","Y","Y","Y","Y","Y","N","Y","Y","Y","Y","Y","Y","Y","Y","N","N","Y","Y");
INSERT INTO db VALUES("localhost","phpmyadmin","pma","Y","Y","Y","Y","N","N","N","N","N","N","N","N","N","N","N","N","Y","N","N");



CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';




CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';




CREATE TABLE `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';




CREATE TABLE `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Replication slave GTID position';




CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

INSERT INTO help_category VALUES("1","Geographic","0","");
INSERT INTO help_category VALUES("2","Polygon properties","35","");
INSERT INTO help_category VALUES("3","WKT","35","");
INSERT INTO help_category VALUES("4","Numeric Functions","39","");
INSERT INTO help_category VALUES("5","Plugins","36","");
INSERT INTO help_category VALUES("6","MBR","35","");
INSERT INTO help_category VALUES("7","Control flow functions","39","");
INSERT INTO help_category VALUES("8","Transactions","36","");
INSERT INTO help_category VALUES("9","Help Metadata","36","");
INSERT INTO help_category VALUES("10","Account Management","36","");
INSERT INTO help_category VALUES("11","Point properties","35","");
INSERT INTO help_category VALUES("12","Encryption Functions","39","");
INSERT INTO help_category VALUES("13","LineString properties","35","");
INSERT INTO help_category VALUES("14","Miscellaneous Functions","39","");
INSERT INTO help_category VALUES("15","Logical operators","39","");
INSERT INTO help_category VALUES("16","Functions and Modifiers for Use with GROUP BY","36","");
INSERT INTO help_category VALUES("17","Information Functions","39","");
INSERT INTO help_category VALUES("18","Storage Engines","36","");
INSERT INTO help_category VALUES("19","Comparison operators","39","");
INSERT INTO help_category VALUES("20","Bit Functions","39","");
INSERT INTO help_category VALUES("21","Table Maintenance","36","");
INSERT INTO help_category VALUES("22","User-Defined Functions","36","");
INSERT INTO help_category VALUES("23","Data Types","36","");
INSERT INTO help_category VALUES("24","Compound Statements","36","");
INSERT INTO help_category VALUES("25","Geometry constructors","35","");
INSERT INTO help_category VALUES("26","GeometryCollection properties","1","");
INSERT INTO help_category VALUES("27","Administration","36","");
INSERT INTO help_category VALUES("28","Data Manipulation","36","");
INSERT INTO help_category VALUES("29","Utility","36","");
INSERT INTO help_category VALUES("30","Language Structure","36","");
INSERT INTO help_category VALUES("31","Geometry relations","35","");
INSERT INTO help_category VALUES("32","Date and Time Functions","39","");
INSERT INTO help_category VALUES("33","WKB","35","");
INSERT INTO help_category VALUES("34","Procedures","36","");
INSERT INTO help_category VALUES("35","Geographic Features","36","");
INSERT INTO help_category VALUES("36","Contents","0","");
INSERT INTO help_category VALUES("37","Geometry properties","35","");
INSERT INTO help_category VALUES("38","String Functions","39","");
INSERT INTO help_category VALUES("39","Functions","36","");
INSERT INTO help_category VALUES("40","Data Definition","36","");



CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

INSERT INTO help_keyword VALUES("0","JOIN");
INSERT INTO help_keyword VALUES("1","HOST");
INSERT INTO help_keyword VALUES("2","REPEAT");
INSERT INTO help_keyword VALUES("3","SERIALIZABLE");
INSERT INTO help_keyword VALUES("4","REPLACE");
INSERT INTO help_keyword VALUES("5","AT");
INSERT INTO help_keyword VALUES("6","SCHEDULE");
INSERT INTO help_keyword VALUES("7","RETURNS");
INSERT INTO help_keyword VALUES("8","STARTS");
INSERT INTO help_keyword VALUES("9","MASTER_SSL_CA");
INSERT INTO help_keyword VALUES("10","NCHAR");
INSERT INTO help_keyword VALUES("11","ONLY");
INSERT INTO help_keyword VALUES("12","COLUMNS");
INSERT INTO help_keyword VALUES("13","COMPLETION");
INSERT INTO help_keyword VALUES("14","WORK");
INSERT INTO help_keyword VALUES("15","DATETIME");
INSERT INTO help_keyword VALUES("16","MODE");
INSERT INTO help_keyword VALUES("17","OPEN");
INSERT INTO help_keyword VALUES("18","INTEGER");
INSERT INTO help_keyword VALUES("19","ESCAPE");
INSERT INTO help_keyword VALUES("20","VALUE");
INSERT INTO help_keyword VALUES("21","MASTER_SSL_VERIFY_SERVER_CERT");
INSERT INTO help_keyword VALUES("22","SQL_BIG_RESULT");
INSERT INTO help_keyword VALUES("23","DROP");
INSERT INTO help_keyword VALUES("24","GEOMETRYCOLLECTIONFROMWKB");
INSERT INTO help_keyword VALUES("25","EVENTS");
INSERT INTO help_keyword VALUES("26","MONTH");
INSERT INTO help_keyword VALUES("27","PROFILES");
INSERT INTO help_keyword VALUES("28","DUPLICATE");
INSERT INTO help_keyword VALUES("29","REPLICATION");
INSERT INTO help_keyword VALUES("30","UNLOCK");
INSERT INTO help_keyword VALUES("31","STATS_PERSISTENT");
INSERT INTO help_keyword VALUES("32","INNODB");
INSERT INTO help_keyword VALUES("33","YEAR_MONTH");
INSERT INTO help_keyword VALUES("34","SUBJECT");
INSERT INTO help_keyword VALUES("35","MASTER_RETRY_COUNT");
INSERT INTO help_keyword VALUES("36","PREPARE");
INSERT INTO help_keyword VALUES("37","LOCK");
INSERT INTO help_keyword VALUES("38","CHECK");
INSERT INTO help_keyword VALUES("39","FULL");
INSERT INTO help_keyword VALUES("40","INT4");
INSERT INTO help_keyword VALUES("41","BY");
INSERT INTO help_keyword VALUES("42","NO");
INSERT INTO help_keyword VALUES("43","MINUTE");
INSERT INTO help_keyword VALUES("44","PARTITION");
INSERT INTO help_keyword VALUES("45","DATA");
INSERT INTO help_keyword VALUES("46","DAY");
INSERT INTO help_keyword VALUES("47","SHARE");
INSERT INTO help_keyword VALUES("48","REAL");
INSERT INTO help_keyword VALUES("49","SEPARATOR");
INSERT INTO help_keyword VALUES("50","MESSAGE_TEXT");
INSERT INTO help_keyword VALUES("51","MASTER_HEARTBEAT_PERIOD");
INSERT INTO help_keyword VALUES("52","DELETE");
INSERT INTO help_keyword VALUES("53","ON");
INSERT INTO help_keyword VALUES("54","COLUMN_NAME");
INSERT INTO help_keyword VALUES("55","CONNECTION");
INSERT INTO help_keyword VALUES("56","CLOSE");
INSERT INTO help_keyword VALUES("57","MASTER_SSL_CRLPATH");
INSERT INTO help_keyword VALUES("58","X509");
INSERT INTO help_keyword VALUES("59","USE");
INSERT INTO help_keyword VALUES("60","SUBCLASS_ORIGIN");
INSERT INTO help_keyword VALUES("61","WHERE");
INSERT INTO help_keyword VALUES("62","PRIVILEGES");
INSERT INTO help_keyword VALUES("63","SPATIAL");
INSERT INTO help_keyword VALUES("64","EVENT");
INSERT INTO help_keyword VALUES("65","SUPER");
INSERT INTO help_keyword VALUES("66","SQL_BUFFER_RESULT");
INSERT INTO help_keyword VALUES("67","IGNORE");
INSERT INTO help_keyword VALUES("68","SHA2");
INSERT INTO help_keyword VALUES("69","QUICK");
INSERT INTO help_keyword VALUES("70","SIGNED");
INSERT INTO help_keyword VALUES("71","SECURITY");
INSERT INTO help_keyword VALUES("72","POLYGONFROMWKB");
INSERT INTO help_keyword VALUES("73","FALSE");
INSERT INTO help_keyword VALUES("74","LEVEL");
INSERT INTO help_keyword VALUES("75","FORCE");
INSERT INTO help_keyword VALUES("76","BINARY");
INSERT INTO help_keyword VALUES("77","TO");
INSERT INTO help_keyword VALUES("78","CHANGE");
INSERT INTO help_keyword VALUES("79","CURRENT_USER");
INSERT INTO help_keyword VALUES("80","HOUR_MINUTE");
INSERT INTO help_keyword VALUES("81","UPDATE");
INSERT INTO help_keyword VALUES("82","PRESERVE");
INSERT INTO help_keyword VALUES("83","TABLE_NAME");
INSERT INTO help_keyword VALUES("84","INTO");
INSERT INTO help_keyword VALUES("85","FEDERATED");
INSERT INTO help_keyword VALUES("86","VARYING");
INSERT INTO help_keyword VALUES("87","HOUR_SECOND");
INSERT INTO help_keyword VALUES("88","SQL_AFTER_GTIDS");
INSERT INTO help_keyword VALUES("89","VARIABLE");
INSERT INTO help_keyword VALUES("90","ROLLBACK");
INSERT INTO help_keyword VALUES("91","PROCEDURE");
INSERT INTO help_keyword VALUES("92","TIMESTAMP");
INSERT INTO help_keyword VALUES("93","IMPORT");
INSERT INTO help_keyword VALUES("94","AGAINST");
INSERT INTO help_keyword VALUES("95","CHECKSUM");
INSERT INTO help_keyword VALUES("96","SQL_BEFORE_GTIDS");
INSERT INTO help_keyword VALUES("97","COUNT");
INSERT INTO help_keyword VALUES("98","LONGBINARY");
INSERT INTO help_keyword VALUES("99","THEN");
INSERT INTO help_keyword VALUES("100","INSERT");
INSERT INTO help_keyword VALUES("101","ENGINES");
INSERT INTO help_keyword VALUES("102","HANDLER");
INSERT INTO help_keyword VALUES("103","PORT");
INSERT INTO help_keyword VALUES("104","DAY_SECOND");
INSERT INTO help_keyword VALUES("105","EXISTS");
INSERT INTO help_keyword VALUES("106","MUTEX");
INSERT INTO help_keyword VALUES("107","HELP_DATE");
INSERT INTO help_keyword VALUES("108","RELEASE");
INSERT INTO help_keyword VALUES("109","BOOLEAN");
INSERT INTO help_keyword VALUES("110","MOD");
INSERT INTO help_keyword VALUES("111","DEFAULT");
INSERT INTO help_keyword VALUES("112","TYPE");
INSERT INTO help_keyword VALUES("113","NO_WRITE_TO_BINLOG");
INSERT INTO help_keyword VALUES("114","OPTIMIZE");
INSERT INTO help_keyword VALUES("115","SQLSTATE");
INSERT INTO help_keyword VALUES("116","RESET");
INSERT INTO help_keyword VALUES("117","CLASS_ORIGIN");
INSERT INTO help_keyword VALUES("118","INSTALL");
INSERT INTO help_keyword VALUES("119","ITERATE");
INSERT INTO help_keyword VALUES("120","DO");
INSERT INTO help_keyword VALUES("121","BIGINT");
INSERT INTO help_keyword VALUES("122","SET");
INSERT INTO help_keyword VALUES("123","ISSUER");
INSERT INTO help_keyword VALUES("124","DATE");
INSERT INTO help_keyword VALUES("125","STATUS");
INSERT INTO help_keyword VALUES("126","FULLTEXT");
INSERT INTO help_keyword VALUES("127","COMMENT");
INSERT INTO help_keyword VALUES("128","MASTER_CONNECT_RETRY");
INSERT INTO help_keyword VALUES("129","INNER");
INSERT INTO help_keyword VALUES("130","RELAYLOG");
INSERT INTO help_keyword VALUES("131","STOP");
INSERT INTO help_keyword VALUES("132","MASTER_LOG_FILE");
INSERT INTO help_keyword VALUES("133","MRG_MYISAM");
INSERT INTO help_keyword VALUES("134","PRECISION");
INSERT INTO help_keyword VALUES("135","REQUIRE");
INSERT INTO help_keyword VALUES("136","TRAILING");
INSERT INTO help_keyword VALUES("137","PARTITIONS");
INSERT INTO help_keyword VALUES("138","LONG");
INSERT INTO help_keyword VALUES("139","OPTION");
INSERT INTO help_keyword VALUES("140","REORGANIZE");
INSERT INTO help_keyword VALUES("141","ELSE");
INSERT INTO help_keyword VALUES("142","DEALLOCATE");
INSERT INTO help_keyword VALUES("143","IO_THREAD");
INSERT INTO help_keyword VALUES("144","CASE");
INSERT INTO help_keyword VALUES("145","CIPHER");
INSERT INTO help_keyword VALUES("146","STATS_AUTO_RECALC");
INSERT INTO help_keyword VALUES("147","CONTINUE");
INSERT INTO help_keyword VALUES("148","FROM");
INSERT INTO help_keyword VALUES("149","READ");
INSERT INTO help_keyword VALUES("150","LEFT");
INSERT INTO help_keyword VALUES("151","ELSEIF");
INSERT INTO help_keyword VALUES("152","MINUTE_SECOND");
INSERT INTO help_keyword VALUES("153","COMPACT");
INSERT INTO help_keyword VALUES("154","DEC");
INSERT INTO help_keyword VALUES("155","FOR");
INSERT INTO help_keyword VALUES("156","WARNINGS");
INSERT INTO help_keyword VALUES("157","MIN_ROWS");
INSERT INTO help_keyword VALUES("158","STRING");
INSERT INTO help_keyword VALUES("159","CONDITION");
INSERT INTO help_keyword VALUES("160","ROW_COUNT");
INSERT INTO help_keyword VALUES("161","ENCLOSED");
INSERT INTO help_keyword VALUES("162","FUNCTION");
INSERT INTO help_keyword VALUES("163","AGGREGATE");
INSERT INTO help_keyword VALUES("164","NUMBER");
INSERT INTO help_keyword VALUES("165","FIELDS");
INSERT INTO help_keyword VALUES("166","INT3");
INSERT INTO help_keyword VALUES("167","ARCHIVE");
INSERT INTO help_keyword VALUES("168","AVG_ROW_LENGTH");
INSERT INTO help_keyword VALUES("169","ADD");
INSERT INTO help_keyword VALUES("170","KILL");
INSERT INTO help_keyword VALUES("171","FLOAT4");
INSERT INTO help_keyword VALUES("172","TABLESPACE");
INSERT INTO help_keyword VALUES("173","VIEW");
INSERT INTO help_keyword VALUES("174","ALGORITHM");
INSERT INTO help_keyword VALUES("175","REPEATABLE");
INSERT INTO help_keyword VALUES("176","INFILE");
INSERT INTO help_keyword VALUES("177","HELP_VERSION");
INSERT INTO help_keyword VALUES("178","ORDER");
INSERT INTO help_keyword VALUES("179","MASTER_SSL_CRL");
INSERT INTO help_keyword VALUES("180","USING");
INSERT INTO help_keyword VALUES("181","CONSTRAINT_CATALOG");
INSERT INTO help_keyword VALUES("182","MIDDLEINT");
INSERT INTO help_keyword VALUES("183","GRANT");
INSERT INTO help_keyword VALUES("184","UNSIGNED");
INSERT INTO help_keyword VALUES("185","DECIMAL");
INSERT INTO help_keyword VALUES("186","GEOMETRYFROMTEXT");
INSERT INTO help_keyword VALUES("187","INDEXES");
INSERT INTO help_keyword VALUES("188","DEFAULT_AUTH");
INSERT INTO help_keyword VALUES("189","FOREIGN");
INSERT INTO help_keyword VALUES("190","CACHE");
INSERT INTO help_keyword VALUES("191","HOSTS");
INSERT INTO help_keyword VALUES("192","MYSQL_ERRNO");
INSERT INTO help_keyword VALUES("193","COMMIT");
INSERT INTO help_keyword VALUES("194","SCHEMAS");
INSERT INTO help_keyword VALUES("195","LEADING");
INSERT INTO help_keyword VALUES("196","SNAPSHOT");
INSERT INTO help_keyword VALUES("197","CONSTRAINT_NAME");
INSERT INTO help_keyword VALUES("198","DECLARE");
INSERT INTO help_keyword VALUES("199","LOAD");
INSERT INTO help_keyword VALUES("200","SQL_CACHE");
INSERT INTO help_keyword VALUES("201","CONVERT");
INSERT INTO help_keyword VALUES("202","DYNAMIC");
INSERT INTO help_keyword VALUES("203","COLLATE");
INSERT INTO help_keyword VALUES("204","POLYGONFROMTEXT");
INSERT INTO help_keyword VALUES("205","BYTE");
INSERT INTO help_keyword VALUES("206","GLOBAL");
INSERT INTO help_keyword VALUES("207","LINESTRINGFROMWKB");
INSERT INTO help_keyword VALUES("208","WHEN");
INSERT INTO help_keyword VALUES("209","HAVING");
INSERT INTO help_keyword VALUES("210","AS");
INSERT INTO help_keyword VALUES("211","STARTING");
INSERT INTO help_keyword VALUES("212","RELOAD");
INSERT INTO help_keyword VALUES("213","AUTOCOMMIT");
INSERT INTO help_keyword VALUES("214","REVOKE");
INSERT INTO help_keyword VALUES("215","GRANTS");
INSERT INTO help_keyword VALUES("216","OUTER");
INSERT INTO help_keyword VALUES("217","CURSOR_NAME");
INSERT INTO help_keyword VALUES("218","EXPIRE");
INSERT INTO help_keyword VALUES("219","SQL_AFTER_MTS_GAPS");
INSERT INTO help_keyword VALUES("220","FLOOR");
INSERT INTO help_keyword VALUES("221","EXPLAIN");
INSERT INTO help_keyword VALUES("222","WITH");
INSERT INTO help_keyword VALUES("223","AFTER");
INSERT INTO help_keyword VALUES("224","STD");
INSERT INTO help_keyword VALUES("225","CSV");
INSERT INTO help_keyword VALUES("226","DISABLE");
INSERT INTO help_keyword VALUES("227","UNINSTALL");
INSERT INTO help_keyword VALUES("228","OUTFILE");
INSERT INTO help_keyword VALUES("229","LOW_PRIORITY");
INSERT INTO help_keyword VALUES("230","FILE");
INSERT INTO help_keyword VALUES("231","SCHEMA");
INSERT INTO help_keyword VALUES("232","SONAME");
INSERT INTO help_keyword VALUES("233","POW");
INSERT INTO help_keyword VALUES("234","DUAL");
INSERT INTO help_keyword VALUES("235","MULTIPOINTFROMWKB");
INSERT INTO help_keyword VALUES("236","INDEX");
INSERT INTO help_keyword VALUES("237","MULTIPOINTFROMTEXT");
INSERT INTO help_keyword VALUES("238","DEFINER");
INSERT INTO help_keyword VALUES("239","MASTER_BIND");
INSERT INTO help_keyword VALUES("240","REMOVE");
INSERT INTO help_keyword VALUES("241","EXTENDED");
INSERT INTO help_keyword VALUES("242","MULTILINESTRINGFROMWKB");
INSERT INTO help_keyword VALUES("243","CROSS");
INSERT INTO help_keyword VALUES("244","CONTRIBUTORS");
INSERT INTO help_keyword VALUES("245","GROUP");
INSERT INTO help_keyword VALUES("246","NATIONAL");
INSERT INTO help_keyword VALUES("247","SHA");
INSERT INTO help_keyword VALUES("248","UNDO");
INSERT INTO help_keyword VALUES("249","IGNORE_SERVER_IDS");
INSERT INTO help_keyword VALUES("250","MASTER_AUTO_POSITION");
INSERT INTO help_keyword VALUES("251","ZEROFILL");
INSERT INTO help_keyword VALUES("252","CLIENT");
INSERT INTO help_keyword VALUES("253","MASTER_PASSWORD");
INSERT INTO help_keyword VALUES("254","OWNER");
INSERT INTO help_keyword VALUES("255","RELAY_LOG_FILE");
INSERT INTO help_keyword VALUES("256","TRUE");
INSERT INTO help_keyword VALUES("257","CHARACTER");
INSERT INTO help_keyword VALUES("258","MASTER_USER");
INSERT INTO help_keyword VALUES("259","SCHEMA_NAME");
INSERT INTO help_keyword VALUES("260","TABLE");
INSERT INTO help_keyword VALUES("261","ENGINE");
INSERT INTO help_keyword VALUES("262","INSERT_METHOD");
INSERT INTO help_keyword VALUES("263","CASCADE");
INSERT INTO help_keyword VALUES("264","RELAY_LOG_POS");
INSERT INTO help_keyword VALUES("265","SQL_CALC_FOUND_ROWS");
INSERT INTO help_keyword VALUES("266","UNION");
INSERT INTO help_keyword VALUES("267","MYISAM");
INSERT INTO help_keyword VALUES("268","LEAVE");
INSERT INTO help_keyword VALUES("269","MODIFY");
INSERT INTO help_keyword VALUES("270","MATCH");
INSERT INTO help_keyword VALUES("271","MASTER_LOG_POS");
INSERT INTO help_keyword VALUES("272","DISTINCTROW");
INSERT INTO help_keyword VALUES("273","DESC");
INSERT INTO help_keyword VALUES("274","TIME");
INSERT INTO help_keyword VALUES("275","NUMERIC");
INSERT INTO help_keyword VALUES("276","EXPANSION");
INSERT INTO help_keyword VALUES("277","CODE");
INSERT INTO help_keyword VALUES("278","CURSOR");
INSERT INTO help_keyword VALUES("279","GEOMETRYCOLLECTIONFROMTEXT");
INSERT INTO help_keyword VALUES("280","CHAIN");
INSERT INTO help_keyword VALUES("281","FLUSH");
INSERT INTO help_keyword VALUES("282","CREATE");
INSERT INTO help_keyword VALUES("283","DESCRIBE");
INSERT INTO help_keyword VALUES("284","MAX_UPDATES_PER_HOUR");
INSERT INTO help_keyword VALUES("285","INT2");
INSERT INTO help_keyword VALUES("286","PROCESSLIST");
INSERT INTO help_keyword VALUES("287","ENDS");
INSERT INTO help_keyword VALUES("288","LOGS");
INSERT INTO help_keyword VALUES("289","RECOVER");
INSERT INTO help_keyword VALUES("290","DISCARD");
INSERT INTO help_keyword VALUES("291","HEAP");
INSERT INTO help_keyword VALUES("292","RETURNED_SQLSTATE");
INSERT INTO help_keyword VALUES("293","EXCHANGE");
INSERT INTO help_keyword VALUES("294","SOUNDS");
INSERT INTO help_keyword VALUES("295","BETWEEN");
INSERT INTO help_keyword VALUES("296","MULTILINESTRINGFROMTEXT");
INSERT INTO help_keyword VALUES("297","REPAIR");
INSERT INTO help_keyword VALUES("298","PACK_KEYS");
INSERT INTO help_keyword VALUES("299","FAST");
INSERT INTO help_keyword VALUES("300","VALUES");
INSERT INTO help_keyword VALUES("301","CALL");
INSERT INTO help_keyword VALUES("302","GET");
INSERT INTO help_keyword VALUES("303","LOOP");
INSERT INTO help_keyword VALUES("304","VARCHARACTER");
INSERT INTO help_keyword VALUES("305","BEFORE");
INSERT INTO help_keyword VALUES("306","TRUNCATE");
INSERT INTO help_keyword VALUES("307","SHOW");
INSERT INTO help_keyword VALUES("308","ALL");
INSERT INTO help_keyword VALUES("309","REDUNDANT");
INSERT INTO help_keyword VALUES("310","USER_RESOURCES");
INSERT INTO help_keyword VALUES("311","PARTIAL");
INSERT INTO help_keyword VALUES("312","BINLOG");
INSERT INTO help_keyword VALUES("313","END");
INSERT INTO help_keyword VALUES("314","SECOND");
INSERT INTO help_keyword VALUES("315","AND");
INSERT INTO help_keyword VALUES("316","FLOAT8");
INSERT INTO help_keyword VALUES("317","PREV");
INSERT INTO help_keyword VALUES("318","HOUR");
INSERT INTO help_keyword VALUES("319","SELECT");
INSERT INTO help_keyword VALUES("320","DATABASES");
INSERT INTO help_keyword VALUES("321","OR");
INSERT INTO help_keyword VALUES("322","IDENTIFIED");
INSERT INTO help_keyword VALUES("323","WRAPPER");
INSERT INTO help_keyword VALUES("324","MASTER_SSL_CIPHER");
INSERT INTO help_keyword VALUES("325","SQL_SLAVE_SKIP_COUNTER");
INSERT INTO help_keyword VALUES("326","BOTH");
INSERT INTO help_keyword VALUES("327","BOOL");
INSERT INTO help_keyword VALUES("328","YEAR");
INSERT INTO help_keyword VALUES("329","MASTER_PORT");
INSERT INTO help_keyword VALUES("330","CONCURRENT");
INSERT INTO help_keyword VALUES("331","HELP");
INSERT INTO help_keyword VALUES("332","UNIQUE");
INSERT INTO help_keyword VALUES("333","TRIGGERS");
INSERT INTO help_keyword VALUES("334","PROCESS");
INSERT INTO help_keyword VALUES("335","OPTIONS");
INSERT INTO help_keyword VALUES("336","RESIGNAL");
INSERT INTO help_keyword VALUES("337","CONSISTENT");
INSERT INTO help_keyword VALUES("338","MASTER_SSL");
INSERT INTO help_keyword VALUES("339","DATE_ADD");
INSERT INTO help_keyword VALUES("340","MAX_CONNECTIONS_PER_HOUR");
INSERT INTO help_keyword VALUES("341","LIKE");
INSERT INTO help_keyword VALUES("342","PLUGIN");
INSERT INTO help_keyword VALUES("343","FETCH");
INSERT INTO help_keyword VALUES("344","IN");
INSERT INTO help_keyword VALUES("345","COLUMN");
INSERT INTO help_keyword VALUES("346","DIAGNOSTICS");
INSERT INTO help_keyword VALUES("347","DUMPFILE");
INSERT INTO help_keyword VALUES("348","USAGE");
INSERT INTO help_keyword VALUES("349","EXECUTE");
INSERT INTO help_keyword VALUES("350","MEMORY");
INSERT INTO help_keyword VALUES("351","CEIL");
INSERT INTO help_keyword VALUES("352","QUERY");
INSERT INTO help_keyword VALUES("353","MASTER_HOST");
INSERT INTO help_keyword VALUES("354","LINES");
INSERT INTO help_keyword VALUES("355","PLUGIN_DIR");
INSERT INTO help_keyword VALUES("356","SQL_THREAD");
INSERT INTO help_keyword VALUES("357","SERVER");
INSERT INTO help_keyword VALUES("358","MAX_QUERIES_PER_HOUR");
INSERT INTO help_keyword VALUES("359","MASTER_SSL_CERT");
INSERT INTO help_keyword VALUES("360","MULTIPOLYGONFROMWKB");
INSERT INTO help_keyword VALUES("361","TRANSACTION");
INSERT INTO help_keyword VALUES("362","DAY_MINUTE");
INSERT INTO help_keyword VALUES("363","STDDEV");
INSERT INTO help_keyword VALUES("364","DATE_SUB");
INSERT INTO help_keyword VALUES("365","REBUILD");
INSERT INTO help_keyword VALUES("366","GEOMETRYFROMWKB");
INSERT INTO help_keyword VALUES("367","INT1");
INSERT INTO help_keyword VALUES("368","RENAME");
INSERT INTO help_keyword VALUES("369","PARSER");
INSERT INTO help_keyword VALUES("370","RIGHT");
INSERT INTO help_keyword VALUES("371","ALTER");
INSERT INTO help_keyword VALUES("372","MAX_ROWS");
INSERT INTO help_keyword VALUES("373","SOCKET");
INSERT INTO help_keyword VALUES("374","STRAIGHT_JOIN");
INSERT INTO help_keyword VALUES("375","NATURAL");
INSERT INTO help_keyword VALUES("376","VARIABLES");
INSERT INTO help_keyword VALUES("377","ESCAPED");
INSERT INTO help_keyword VALUES("378","SHA1");
INSERT INTO help_keyword VALUES("379","KEY_BLOCK_SIZE");
INSERT INTO help_keyword VALUES("380","PASSWORD");
INSERT INTO help_keyword VALUES("381","OFFSET");
INSERT INTO help_keyword VALUES("382","CHAR");
INSERT INTO help_keyword VALUES("383","NEXT");
INSERT INTO help_keyword VALUES("384","ERRORS");
INSERT INTO help_keyword VALUES("385","SQL_LOG_BIN");
INSERT INTO help_keyword VALUES("386","TEMPORARY");
INSERT INTO help_keyword VALUES("387","COMMITTED");
INSERT INTO help_keyword VALUES("388","SQL_SMALL_RESULT");
INSERT INTO help_keyword VALUES("389","UPGRADE");
INSERT INTO help_keyword VALUES("390","XA");
INSERT INTO help_keyword VALUES("391","BEGIN");
INSERT INTO help_keyword VALUES("392","DELAY_KEY_WRITE");
INSERT INTO help_keyword VALUES("393","PROFILE");
INSERT INTO help_keyword VALUES("394","MEDIUM");
INSERT INTO help_keyword VALUES("395","INTERVAL");
INSERT INTO help_keyword VALUES("396","SSL");
INSERT INTO help_keyword VALUES("397","DAY_HOUR");
INSERT INTO help_keyword VALUES("398","NAME");
INSERT INTO help_keyword VALUES("399","REFERENCES");
INSERT INTO help_keyword VALUES("400","AES_ENCRYPT");
INSERT INTO help_keyword VALUES("401","STORAGE");
INSERT INTO help_keyword VALUES("402","ISOLATION");
INSERT INTO help_keyword VALUES("403","CEILING");
INSERT INTO help_keyword VALUES("404","EVERY");
INSERT INTO help_keyword VALUES("405","INT8");
INSERT INTO help_keyword VALUES("406","AUTHORS");
INSERT INTO help_keyword VALUES("407","RESTRICT");
INSERT INTO help_keyword VALUES("408","UNCOMMITTED");
INSERT INTO help_keyword VALUES("409","LINESTRINGFROMTEXT");
INSERT INTO help_keyword VALUES("410","IS");
INSERT INTO help_keyword VALUES("411","NOT");
INSERT INTO help_keyword VALUES("412","ANALYSE");
INSERT INTO help_keyword VALUES("413","DES_KEY_FILE");
INSERT INTO help_keyword VALUES("414","SIGNAL");
INSERT INTO help_keyword VALUES("415","COMPRESSED");
INSERT INTO help_keyword VALUES("416","START");
INSERT INTO help_keyword VALUES("417","PLUGINS");
INSERT INTO help_keyword VALUES("418","SAVEPOINT");
INSERT INTO help_keyword VALUES("419","IF");
INSERT INTO help_keyword VALUES("420","ROWS");
INSERT INTO help_keyword VALUES("421","PRIMARY");
INSERT INTO help_keyword VALUES("422","PURGE");
INSERT INTO help_keyword VALUES("423","USER");
INSERT INTO help_keyword VALUES("424","LAST");
INSERT INTO help_keyword VALUES("425","EXIT");
INSERT INTO help_keyword VALUES("426","KEYS");
INSERT INTO help_keyword VALUES("427","LIMIT");
INSERT INTO help_keyword VALUES("428","KEY");
INSERT INTO help_keyword VALUES("429","MERGE");
INSERT INTO help_keyword VALUES("430","UNTIL");
INSERT INTO help_keyword VALUES("431","SQL_NO_CACHE");
INSERT INTO help_keyword VALUES("432","DELAYED");
INSERT INTO help_keyword VALUES("433","CONSTRAINT_SCHEMA");
INSERT INTO help_keyword VALUES("434","ANALYZE");
INSERT INTO help_keyword VALUES("435","CONSTRAINT");
INSERT INTO help_keyword VALUES("436","SERIAL");
INSERT INTO help_keyword VALUES("437","ACTION");
INSERT INTO help_keyword VALUES("438","WRITE");
INSERT INTO help_keyword VALUES("439","SESSION");
INSERT INTO help_keyword VALUES("440","DATABASE");
INSERT INTO help_keyword VALUES("441","NULL");
INSERT INTO help_keyword VALUES("442","POWER");
INSERT INTO help_keyword VALUES("443","USE_FRM");
INSERT INTO help_keyword VALUES("444","TERMINATED");
INSERT INTO help_keyword VALUES("445","SLAVE");
INSERT INTO help_keyword VALUES("446","NVARCHAR");
INSERT INTO help_keyword VALUES("447","ASC");
INSERT INTO help_keyword VALUES("448","RETURN");
INSERT INTO help_keyword VALUES("449","OPTIONALLY");
INSERT INTO help_keyword VALUES("450","ENABLE");
INSERT INTO help_keyword VALUES("451","DIRECTORY");
INSERT INTO help_keyword VALUES("452","MAX_USER_CONNECTIONS");
INSERT INTO help_keyword VALUES("453","WHILE");
INSERT INTO help_keyword VALUES("454","LOCAL");
INSERT INTO help_keyword VALUES("455","DISTINCT");
INSERT INTO help_keyword VALUES("456","AES_DECRYPT");
INSERT INTO help_keyword VALUES("457","MASTER_SSL_KEY");
INSERT INTO help_keyword VALUES("458","NONE");
INSERT INTO help_keyword VALUES("459","TABLES");
INSERT INTO help_keyword VALUES("460","<>");
INSERT INTO help_keyword VALUES("461","EXPORT");
INSERT INTO help_keyword VALUES("462","RLIKE");
INSERT INTO help_keyword VALUES("463","TRIGGER");
INSERT INTO help_keyword VALUES("464","COLLATION");
INSERT INTO help_keyword VALUES("465","SHUTDOWN");
INSERT INTO help_keyword VALUES("466","HIGH_PRIORITY");
INSERT INTO help_keyword VALUES("467","BTREE");
INSERT INTO help_keyword VALUES("468","FIRST");
INSERT INTO help_keyword VALUES("469","COALESCE");
INSERT INTO help_keyword VALUES("470","CATALOG_NAME");
INSERT INTO help_keyword VALUES("471","MASTER");
INSERT INTO help_keyword VALUES("472","FIXED");
INSERT INTO help_keyword VALUES("473","MULTIPOLYGONFROMTEXT");
INSERT INTO help_keyword VALUES("474","ROW_FORMAT");



CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

INSERT INTO help_relation VALUES("0","0");
INSERT INTO help_relation VALUES("444","0");
INSERT INTO help_relation VALUES("247","1");
INSERT INTO help_relation VALUES("125","2");
INSERT INTO help_relation VALUES("236","3");
INSERT INTO help_relation VALUES("267","4");
INSERT INTO help_relation VALUES("330","4");
INSERT INTO help_relation VALUES("480","4");
INSERT INTO help_relation VALUES("308","5");
INSERT INTO help_relation VALUES("308","6");
INSERT INTO help_relation VALUES("472","6");
INSERT INTO help_relation VALUES("58","7");
INSERT INTO help_relation VALUES("308","8");
INSERT INTO help_relation VALUES("359","9");
INSERT INTO help_relation VALUES("227","10");
INSERT INTO help_relation VALUES("236","11");
INSERT INTO help_relation VALUES("337","11");
INSERT INTO help_relation VALUES("490","11");
INSERT INTO help_relation VALUES("245","12");
INSERT INTO help_relation VALUES("273","12");
INSERT INTO help_relation VALUES("438","12");
INSERT INTO help_relation VALUES("480","12");
INSERT INTO help_relation VALUES("508","12");
INSERT INTO help_relation VALUES("308","13");
INSERT INTO help_relation VALUES("472","13");
INSERT INTO help_relation VALUES("337","14");
INSERT INTO help_relation VALUES("124","15");
INSERT INTO help_relation VALUES("307","16");
INSERT INTO help_relation VALUES("444","16");
INSERT INTO help_relation VALUES("13","17");
INSERT INTO help_relation VALUES("62","17");
INSERT INTO help_relation VALUES("332","17");
INSERT INTO help_relation VALUES("438","17");
INSERT INTO help_relation VALUES("58","18");
INSERT INTO help_relation VALUES("262","18");
INSERT INTO help_relation VALUES("202","19");
INSERT INTO help_relation VALUES("199","20");
INSERT INTO help_relation VALUES("267","20");
INSERT INTO help_relation VALUES("315","20");
INSERT INTO help_relation VALUES("383","20");
INSERT INTO help_relation VALUES("505","20");
INSERT INTO help_relation VALUES("359","21");
INSERT INTO help_relation VALUES("444","22");
INSERT INTO help_relation VALUES("6","23");
INSERT INTO help_relation VALUES("51","23");
INSERT INTO help_relation VALUES("144","23");
INSERT INTO help_relation VALUES("217","23");
INSERT INTO help_relation VALUES("277","23");
INSERT INTO help_relation VALUES("279","23");
INSERT INTO help_relation VALUES("358","23");
INSERT INTO help_relation VALUES("381","23");
INSERT INTO help_relation VALUES("397","23");
INSERT INTO help_relation VALUES("408","23");
INSERT INTO help_relation VALUES("425","23");
INSERT INTO help_relation VALUES("478","23");
INSERT INTO help_relation VALUES("508","23");
INSERT INTO help_relation VALUES("317","24");
INSERT INTO help_relation VALUES("69","25");
INSERT INTO help_relation VALUES("95","25");
INSERT INTO help_relation VALUES("224","25");
INSERT INTO help_relation VALUES("201","26");
INSERT INTO help_relation VALUES("47","27");
INSERT INTO help_relation VALUES("315","28");
INSERT INTO help_relation VALUES("109","29");
INSERT INTO help_relation VALUES("25","30");
INSERT INTO help_relation VALUES("245","31");
INSERT INTO help_relation VALUES("245","32");
INSERT INTO help_relation VALUES("438","32");
INSERT INTO help_relation VALUES("201","33");
INSERT INTO help_relation VALUES("109","34");
INSERT INTO help_relation VALUES("359","35");
INSERT INTO help_relation VALUES("24","36");
INSERT INTO help_relation VALUES("381","36");
INSERT INTO help_relation VALUES("490","36");
INSERT INTO help_relation VALUES("25","37");
INSERT INTO help_relation VALUES("51","37");
INSERT INTO help_relation VALUES("113","37");
INSERT INTO help_relation VALUES("444","37");
INSERT INTO help_relation VALUES("508","37");
INSERT INTO help_relation VALUES("221","38");
INSERT INTO help_relation VALUES("245","38");
INSERT INTO help_relation VALUES("508","38");
INSERT INTO help_relation VALUES("163","39");
INSERT INTO help_relation VALUES("245","39");
INSERT INTO help_relation VALUES("273","39");
INSERT INTO help_relation VALUES("438","39");
INSERT INTO help_relation VALUES("500","39");
INSERT INTO help_relation VALUES("262","40");
INSERT INTO help_relation VALUES("32","41");
INSERT INTO help_relation VALUES("48","41");
INSERT INTO help_relation VALUES("109","41");
INSERT INTO help_relation VALUES("245","41");
INSERT INTO help_relation VALUES("303","41");
INSERT INTO help_relation VALUES("330","41");
INSERT INTO help_relation VALUES("444","41");
INSERT INTO help_relation VALUES("445","41");
INSERT INTO help_relation VALUES("480","41");
INSERT INTO help_relation VALUES("508","41");
INSERT INTO help_relation VALUES("245","42");
INSERT INTO help_relation VALUES("514","42");
INSERT INTO help_relation VALUES("201","43");
INSERT INTO help_relation VALUES("0","44");
INSERT INTO help_relation VALUES("32","44");
INSERT INTO help_relation VALUES("245","44");
INSERT INTO help_relation VALUES("267","44");
INSERT INTO help_relation VALUES("315","44");
INSERT INTO help_relation VALUES("330","44");
INSERT INTO help_relation VALUES("444","44");
INSERT INTO help_relation VALUES("480","44");
INSERT INTO help_relation VALUES("508","44");
INSERT INTO help_relation VALUES("114","45");
INSERT INTO help_relation VALUES("245","45");
INSERT INTO help_relation VALUES("247","45");
INSERT INTO help_relation VALUES("480","45");
INSERT INTO help_relation VALUES("201","46");
INSERT INTO help_relation VALUES("444","47");
INSERT INTO help_relation VALUES("58","48");
INSERT INTO help_relation VALUES("416","48");
INSERT INTO help_relation VALUES("445","49");
INSERT INTO help_relation VALUES("170","50");
INSERT INTO help_relation VALUES("199","50");
INSERT INTO help_relation VALUES("505","50");
INSERT INTO help_relation VALUES("359","51");
INSERT INTO help_relation VALUES("32","52");
INSERT INTO help_relation VALUES("245","52");
INSERT INTO help_relation VALUES("514","52");
INSERT INTO help_relation VALUES("0","53");
INSERT INTO help_relation VALUES("308","53");
INSERT INTO help_relation VALUES("472","53");
INSERT INTO help_relation VALUES("514","53");
INSERT INTO help_relation VALUES("170","54");
INSERT INTO help_relation VALUES("199","54");
INSERT INTO help_relation VALUES("505","54");
INSERT INTO help_relation VALUES("97","55");
INSERT INTO help_relation VALUES("245","55");
INSERT INTO help_relation VALUES("33","56");
INSERT INTO help_relation VALUES("62","56");
INSERT INTO help_relation VALUES("359","57");
INSERT INTO help_relation VALUES("109","58");
INSERT INTO help_relation VALUES("0","59");
INSERT INTO help_relation VALUES("35","59");
INSERT INTO help_relation VALUES("170","60");
INSERT INTO help_relation VALUES("199","60");
INSERT INTO help_relation VALUES("505","60");
INSERT INTO help_relation VALUES("32","61");
INSERT INTO help_relation VALUES("48","61");
INSERT INTO help_relation VALUES("62","61");
INSERT INTO help_relation VALUES("106","62");
INSERT INTO help_relation VALUES("109","62");
INSERT INTO help_relation VALUES("135","62");
INSERT INTO help_relation VALUES("113","63");
INSERT INTO help_relation VALUES("508","63");
INSERT INTO help_relation VALUES("192","64");
INSERT INTO help_relation VALUES("308","64");
INSERT INTO help_relation VALUES("408","64");
INSERT INTO help_relation VALUES("472","64");
INSERT INTO help_relation VALUES("109","65");
INSERT INTO help_relation VALUES("444","66");
INSERT INTO help_relation VALUES("0","67");
INSERT INTO help_relation VALUES("48","67");
INSERT INTO help_relation VALUES("315","67");
INSERT INTO help_relation VALUES("330","67");
INSERT INTO help_relation VALUES("444","67");
INSERT INTO help_relation VALUES("480","67");
INSERT INTO help_relation VALUES("508","67");
INSERT INTO help_relation VALUES("295","68");
INSERT INTO help_relation VALUES("32","69");
INSERT INTO help_relation VALUES("221","69");
INSERT INTO help_relation VALUES("243","69");
INSERT INTO help_relation VALUES("124","70");
INSERT INTO help_relation VALUES("109","71");
INSERT INTO help_relation VALUES("54","72");
INSERT INTO help_relation VALUES("253","72");
INSERT INTO help_relation VALUES("206","73");
INSERT INTO help_relation VALUES("236","74");
INSERT INTO help_relation VALUES("0","75");
INSERT INTO help_relation VALUES("26","76");
INSERT INTO help_relation VALUES("124","76");
INSERT INTO help_relation VALUES("148","76");
INSERT INTO help_relation VALUES("148","77");
INSERT INTO help_relation VALUES("359","77");
INSERT INTO help_relation VALUES("506","77");
INSERT INTO help_relation VALUES("359","78");
INSERT INTO help_relation VALUES("508","78");
INSERT INTO help_relation VALUES("308","79");
INSERT INTO help_relation VALUES("472","79");
INSERT INTO help_relation VALUES("201","80");
INSERT INTO help_relation VALUES("48","81");
INSERT INTO help_relation VALUES("315","81");
INSERT INTO help_relation VALUES("444","81");
INSERT INTO help_relation VALUES("514","81");
INSERT INTO help_relation VALUES("308","82");
INSERT INTO help_relation VALUES("472","82");
INSERT INTO help_relation VALUES("170","83");
INSERT INTO help_relation VALUES("199","83");
INSERT INTO help_relation VALUES("505","83");
INSERT INTO help_relation VALUES("267","84");
INSERT INTO help_relation VALUES("315","84");
INSERT INTO help_relation VALUES("410","84");
INSERT INTO help_relation VALUES("444","84");
INSERT INTO help_relation VALUES("245","85");
INSERT INTO help_relation VALUES("142","86");
INSERT INTO help_relation VALUES("201","87");
INSERT INTO help_relation VALUES("423","88");
INSERT INTO help_relation VALUES("327","89");
INSERT INTO help_relation VALUES("337","90");
INSERT INTO help_relation VALUES("490","90");
INSERT INTO help_relation VALUES("506","90");
INSERT INTO help_relation VALUES("12","91");
INSERT INTO help_relation VALUES("103","91");
INSERT INTO help_relation VALUES("168","91");
INSERT INTO help_relation VALUES("181","91");
INSERT INTO help_relation VALUES("232","91");
INSERT INTO help_relation VALUES("438","91");
INSERT INTO help_relation VALUES("444","91");
INSERT INTO help_relation VALUES("478","91");
INSERT INTO help_relation VALUES("518","91");
INSERT INTO help_relation VALUES("59","92");
INSERT INTO help_relation VALUES("357","92");
INSERT INTO help_relation VALUES("480","93");
INSERT INTO help_relation VALUES("508","93");
INSERT INTO help_relation VALUES("307","94");
INSERT INTO help_relation VALUES("212","95");
INSERT INTO help_relation VALUES("245","95");
INSERT INTO help_relation VALUES("423","96");
INSERT INTO help_relation VALUES("228","97");
INSERT INTO help_relation VALUES("299","97");
INSERT INTO help_relation VALUES("424","97");
INSERT INTO help_relation VALUES("401","98");
INSERT INTO help_relation VALUES("20","99");
INSERT INTO help_relation VALUES("36","99");
INSERT INTO help_relation VALUES("49","99");
INSERT INTO help_relation VALUES("107","100");
INSERT INTO help_relation VALUES("167","100");
INSERT INTO help_relation VALUES("315","100");
INSERT INTO help_relation VALUES("517","100");
INSERT INTO help_relation VALUES("399","101");
INSERT INTO help_relation VALUES("438","101");
INSERT INTO help_relation VALUES("62","102");
INSERT INTO help_relation VALUES("417","102");
INSERT INTO help_relation VALUES("247","103");
INSERT INTO help_relation VALUES("201","104");
INSERT INTO help_relation VALUES("6","105");
INSERT INTO help_relation VALUES("277","105");
INSERT INTO help_relation VALUES("308","105");
INSERT INTO help_relation VALUES("340","105");
INSERT INTO help_relation VALUES("358","105");
INSERT INTO help_relation VALUES("397","105");
INSERT INTO help_relation VALUES("408","105");
INSERT INTO help_relation VALUES("438","106");
INSERT INTO help_relation VALUES("448","106");
INSERT INTO help_relation VALUES("63","107");
INSERT INTO help_relation VALUES("337","108");
INSERT INTO help_relation VALUES("490","108");
INSERT INTO help_relation VALUES("506","108");
INSERT INTO help_relation VALUES("274","109");
INSERT INTO help_relation VALUES("307","109");
INSERT INTO help_relation VALUES("66","110");
INSERT INTO help_relation VALUES("352","110");
INSERT INTO help_relation VALUES("114","111");
INSERT INTO help_relation VALUES("245","111");
INSERT INTO help_relation VALUES("267","111");
INSERT INTO help_relation VALUES("315","111");
INSERT INTO help_relation VALUES("340","111");
INSERT INTO help_relation VALUES("364","111");
INSERT INTO help_relation VALUES("383","111");
INSERT INTO help_relation VALUES("508","111");
INSERT INTO help_relation VALUES("508","112");
INSERT INTO help_relation VALUES("179","113");
INSERT INTO help_relation VALUES("243","113");
INSERT INTO help_relation VALUES("321","113");
INSERT INTO help_relation VALUES("512","113");
INSERT INTO help_relation VALUES("321","114");
INSERT INTO help_relation VALUES("508","114");
INSERT INTO help_relation VALUES("199","115");
INSERT INTO help_relation VALUES("505","115");
INSERT INTO help_relation VALUES("85","116");
INSERT INTO help_relation VALUES("145","116");
INSERT INTO help_relation VALUES("281","116");
INSERT INTO help_relation VALUES("323","116");
INSERT INTO help_relation VALUES("170","117");
INSERT INTO help_relation VALUES("199","117");
INSERT INTO help_relation VALUES("505","117");
INSERT INTO help_relation VALUES("479","118");
INSERT INTO help_relation VALUES("71","119");
INSERT INTO help_relation VALUES("72","120");
INSERT INTO help_relation VALUES("308","120");
INSERT INTO help_relation VALUES("472","120");
INSERT INTO help_relation VALUES("523","120");
INSERT INTO help_relation VALUES("119","121");
INSERT INTO help_relation VALUES("48","122");
INSERT INTO help_relation VALUES("101","122");
INSERT INTO help_relation VALUES("114","122");
INSERT INTO help_relation VALUES("183","122");
INSERT INTO help_relation VALUES("199","122");
INSERT INTO help_relation VALUES("245","122");
INSERT INTO help_relation VALUES("250","122");
INSERT INTO help_relation VALUES("259","122");
INSERT INTO help_relation VALUES("267","122");
INSERT INTO help_relation VALUES("315","122");
INSERT INTO help_relation VALUES("327","122");
INSERT INTO help_relation VALUES("330","122");
INSERT INTO help_relation VALUES("337","122");
INSERT INTO help_relation VALUES("340","122");
INSERT INTO help_relation VALUES("438","122");
INSERT INTO help_relation VALUES("444","122");
INSERT INTO help_relation VALUES("480","122");
INSERT INTO help_relation VALUES("505","122");
INSERT INTO help_relation VALUES("508","122");
INSERT INTO help_relation VALUES("514","122");
INSERT INTO help_relation VALUES("109","123");
INSERT INTO help_relation VALUES("74","124");
INSERT INTO help_relation VALUES("124","124");
INSERT INTO help_relation VALUES("201","124");
INSERT INTO help_relation VALUES("390","124");
INSERT INTO help_relation VALUES("37","125");
INSERT INTO help_relation VALUES("117","125");
INSERT INTO help_relation VALUES("120","125");
INSERT INTO help_relation VALUES("181","125");
INSERT INTO help_relation VALUES("335","125");
INSERT INTO help_relation VALUES("428","125");
INSERT INTO help_relation VALUES("438","125");
INSERT INTO help_relation VALUES("448","125");
INSERT INTO help_relation VALUES("113","126");
INSERT INTO help_relation VALUES("245","126");
INSERT INTO help_relation VALUES("508","126");
INSERT INTO help_relation VALUES("113","127");
INSERT INTO help_relation VALUES("245","127");
INSERT INTO help_relation VALUES("308","127");
INSERT INTO help_relation VALUES("472","127");
INSERT INTO help_relation VALUES("359","128");
INSERT INTO help_relation VALUES("0","129");
INSERT INTO help_relation VALUES("224","130");
INSERT INTO help_relation VALUES("289","131");
INSERT INTO help_relation VALUES("359","132");
INSERT INTO help_relation VALUES("245","133");
INSERT INTO help_relation VALUES("416","134");
INSERT INTO help_relation VALUES("109","135");
INSERT INTO help_relation VALUES("503","136");
INSERT INTO help_relation VALUES("139","137");
INSERT INTO help_relation VALUES("401","138");
INSERT INTO help_relation VALUES("109","139");
INSERT INTO help_relation VALUES("135","139");
INSERT INTO help_relation VALUES("508","140");
INSERT INTO help_relation VALUES("36","141");
INSERT INTO help_relation VALUES("49","141");
INSERT INTO help_relation VALUES("381","142");
INSERT INTO help_relation VALUES("289","143");
INSERT INTO help_relation VALUES("423","143");
INSERT INTO help_relation VALUES("36","144");
INSERT INTO help_relation VALUES("49","144");
INSERT INTO help_relation VALUES("109","145");
INSERT INTO help_relation VALUES("245","146");
INSERT INTO help_relation VALUES("417","147");
INSERT INTO help_relation VALUES("32","148");
INSERT INTO help_relation VALUES("69","148");
INSERT INTO help_relation VALUES("224","148");
INSERT INTO help_relation VALUES("438","148");
INSERT INTO help_relation VALUES("444","148");
INSERT INTO help_relation VALUES("503","148");
INSERT INTO help_relation VALUES("25","149");
INSERT INTO help_relation VALUES("62","149");
INSERT INTO help_relation VALUES("236","149");
INSERT INTO help_relation VALUES("337","149");
INSERT INTO help_relation VALUES("490","149");
INSERT INTO help_relation VALUES("0","150");
INSERT INTO help_relation VALUES("20","151");
INSERT INTO help_relation VALUES("201","152");
INSERT INTO help_relation VALUES("245","153");
INSERT INTO help_relation VALUES("369","154");
INSERT INTO help_relation VALUES("179","155");
INSERT INTO help_relation VALUES("354","155");
INSERT INTO help_relation VALUES("417","155");
INSERT INTO help_relation VALUES("438","155");
INSERT INTO help_relation VALUES("444","155");
INSERT INTO help_relation VALUES("481","155");
INSERT INTO help_relation VALUES("424","156");
INSERT INTO help_relation VALUES("438","156");
INSERT INTO help_relation VALUES("245","157");
INSERT INTO help_relation VALUES("58","158");
INSERT INTO help_relation VALUES("354","159");
INSERT INTO help_relation VALUES("170","160");
INSERT INTO help_relation VALUES("480","161");
INSERT INTO help_relation VALUES("58","162");
INSERT INTO help_relation VALUES("168","162");
INSERT INTO help_relation VALUES("209","162");
INSERT INTO help_relation VALUES("217","162");
INSERT INTO help_relation VALUES("279","162");
INSERT INTO help_relation VALUES("297","162");
INSERT INTO help_relation VALUES("370","162");
INSERT INTO help_relation VALUES("379","162");
INSERT INTO help_relation VALUES("428","162");
INSERT INTO help_relation VALUES("438","162");
INSERT INTO help_relation VALUES("478","162");
INSERT INTO help_relation VALUES("58","163");
INSERT INTO help_relation VALUES("170","164");
INSERT INTO help_relation VALUES("438","165");
INSERT INTO help_relation VALUES("480","165");
INSERT INTO help_relation VALUES("137","166");
INSERT INTO help_relation VALUES("245","167");
INSERT INTO help_relation VALUES("245","168");
INSERT INTO help_relation VALUES("508","168");
INSERT INTO help_relation VALUES("38","169");
INSERT INTO help_relation VALUES("508","169");
INSERT INTO help_relation VALUES("97","170");
INSERT INTO help_relation VALUES("348","171");
INSERT INTO help_relation VALUES("508","172");
INSERT INTO help_relation VALUES("91","173");
INSERT INTO help_relation VALUES("277","173");
INSERT INTO help_relation VALUES("502","173");
INSERT INTO help_relation VALUES("51","174");
INSERT INTO help_relation VALUES("113","174");
INSERT INTO help_relation VALUES("508","174");
INSERT INTO help_relation VALUES("236","175");
INSERT INTO help_relation VALUES("330","176");
INSERT INTO help_relation VALUES("480","176");
INSERT INTO help_relation VALUES("104","177");
INSERT INTO help_relation VALUES("32","178");
INSERT INTO help_relation VALUES("48","178");
INSERT INTO help_relation VALUES("444","178");
INSERT INTO help_relation VALUES("445","178");
INSERT INTO help_relation VALUES("508","178");
INSERT INTO help_relation VALUES("359","179");
INSERT INTO help_relation VALUES("0","180");
INSERT INTO help_relation VALUES("32","180");
INSERT INTO help_relation VALUES("50","180");
INSERT INTO help_relation VALUES("170","181");
INSERT INTO help_relation VALUES("199","181");
INSERT INTO help_relation VALUES("505","181");
INSERT INTO help_relation VALUES("137","182");
INSERT INTO help_relation VALUES("109","183");
INSERT INTO help_relation VALUES("135","183");
INSERT INTO help_relation VALUES("124","184");
INSERT INTO help_relation VALUES("262","184");
INSERT INTO help_relation VALUES("274","184");
INSERT INTO help_relation VALUES("325","184");
INSERT INTO help_relation VALUES("348","184");
INSERT INTO help_relation VALUES("369","184");
INSERT INTO help_relation VALUES("416","184");
INSERT INTO help_relation VALUES("58","185");
INSERT INTO help_relation VALUES("89","185");
INSERT INTO help_relation VALUES("124","185");
INSERT INTO help_relation VALUES("476","186");
INSERT INTO help_relation VALUES("438","187");
INSERT INTO help_relation VALUES("423","188");
INSERT INTO help_relation VALUES("245","189");
INSERT INTO help_relation VALUES("247","189");
INSERT INTO help_relation VALUES("508","189");
INSERT INTO help_relation VALUES("514","189");
INSERT INTO help_relation VALUES("60","190");
INSERT INTO help_relation VALUES("85","190");
INSERT INTO help_relation VALUES("410","190");
INSERT INTO help_relation VALUES("338","191");
INSERT INTO help_relation VALUES("438","191");
INSERT INTO help_relation VALUES("170","192");
INSERT INTO help_relation VALUES("199","192");
INSERT INTO help_relation VALUES("505","192");
INSERT INTO help_relation VALUES("337","193");
INSERT INTO help_relation VALUES("490","193");
INSERT INTO help_relation VALUES("92","194");
INSERT INTO help_relation VALUES("438","194");
INSERT INTO help_relation VALUES("503","195");
INSERT INTO help_relation VALUES("337","196");
INSERT INTO help_relation VALUES("490","196");
INSERT INTO help_relation VALUES("170","197");
INSERT INTO help_relation VALUES("199","197");
INSERT INTO help_relation VALUES("505","197");
INSERT INTO help_relation VALUES("354","198");
INSERT INTO help_relation VALUES("364","198");
INSERT INTO help_relation VALUES("417","198");
INSERT INTO help_relation VALUES("481","198");
INSERT INTO help_relation VALUES("410","199");
INSERT INTO help_relation VALUES("480","199");
INSERT INTO help_relation VALUES("444","200");
INSERT INTO help_relation VALUES("124","201");
INSERT INTO help_relation VALUES("454","201");
INSERT INTO help_relation VALUES("245","202");
INSERT INTO help_relation VALUES("114","203");
INSERT INTO help_relation VALUES("245","203");
INSERT INTO help_relation VALUES("340","203");
INSERT INTO help_relation VALUES("464","204");
INSERT INTO help_relation VALUES("510","205");
INSERT INTO help_relation VALUES("101","206");
INSERT INTO help_relation VALUES("236","206");
INSERT INTO help_relation VALUES("327","206");
INSERT INTO help_relation VALUES("335","206");
INSERT INTO help_relation VALUES("439","206");
INSERT INTO help_relation VALUES("499","207");
INSERT INTO help_relation VALUES("36","208");
INSERT INTO help_relation VALUES("49","208");
INSERT INTO help_relation VALUES("444","209");
INSERT INTO help_relation VALUES("0","210");
INSERT INTO help_relation VALUES("25","210");
INSERT INTO help_relation VALUES("444","210");
INSERT INTO help_relation VALUES("480","211");
INSERT INTO help_relation VALUES("109","212");
INSERT INTO help_relation VALUES("337","213");
INSERT INTO help_relation VALUES("135","214");
INSERT INTO help_relation VALUES("360","215");
INSERT INTO help_relation VALUES("438","215");
INSERT INTO help_relation VALUES("0","216");
INSERT INTO help_relation VALUES("170","217");
INSERT INTO help_relation VALUES("199","217");
INSERT INTO help_relation VALUES("505","217");
INSERT INTO help_relation VALUES("466","218");
INSERT INTO help_relation VALUES("423","219");
INSERT INTO help_relation VALUES("119","220");
INSERT INTO help_relation VALUES("139","221");
INSERT INTO help_relation VALUES("109","222");
INSERT INTO help_relation VALUES("113","222");
INSERT INTO help_relation VALUES("245","222");
INSERT INTO help_relation VALUES("307","222");
INSERT INTO help_relation VALUES("508","222");
INSERT INTO help_relation VALUES("508","223");
INSERT INTO help_relation VALUES("389","224");
INSERT INTO help_relation VALUES("245","225");
INSERT INTO help_relation VALUES("480","225");
INSERT INTO help_relation VALUES("308","226");
INSERT INTO help_relation VALUES("472","226");
INSERT INTO help_relation VALUES("508","226");
INSERT INTO help_relation VALUES("161","227");
INSERT INTO help_relation VALUES("444","228");
INSERT INTO help_relation VALUES("25","229");
INSERT INTO help_relation VALUES("32","229");
INSERT INTO help_relation VALUES("48","229");
INSERT INTO help_relation VALUES("267","229");
INSERT INTO help_relation VALUES("315","229");
INSERT INTO help_relation VALUES("330","229");
INSERT INTO help_relation VALUES("480","229");
INSERT INTO help_relation VALUES("109","230");
INSERT INTO help_relation VALUES("114","231");
INSERT INTO help_relation VALUES("340","231");
INSERT INTO help_relation VALUES("358","231");
INSERT INTO help_relation VALUES("413","231");
INSERT INTO help_relation VALUES("438","231");
INSERT INTO help_relation VALUES("58","232");
INSERT INTO help_relation VALUES("396","233");
INSERT INTO help_relation VALUES("154","234");
INSERT INTO help_relation VALUES("507","235");
INSERT INTO help_relation VALUES("0","236");
INSERT INTO help_relation VALUES("38","236");
INSERT INTO help_relation VALUES("51","236");
INSERT INTO help_relation VALUES("60","236");
INSERT INTO help_relation VALUES("113","236");
INSERT INTO help_relation VALUES("245","236");
INSERT INTO help_relation VALUES("410","236");
INSERT INTO help_relation VALUES("414","236");
INSERT INTO help_relation VALUES("438","236");
INSERT INTO help_relation VALUES("508","236");
INSERT INTO help_relation VALUES("225","237");
INSERT INTO help_relation VALUES("308","238");
INSERT INTO help_relation VALUES("472","238");
INSERT INTO help_relation VALUES("359","239");
INSERT INTO help_relation VALUES("508","240");
INSERT INTO help_relation VALUES("139","241");
INSERT INTO help_relation VALUES("243","241");
INSERT INTO help_relation VALUES("152","242");
INSERT INTO help_relation VALUES("0","243");
INSERT INTO help_relation VALUES("4","244");
INSERT INTO help_relation VALUES("438","244");
INSERT INTO help_relation VALUES("444","245");
INSERT INTO help_relation VALUES("142","246");
INSERT INTO help_relation VALUES("227","246");
INSERT INTO help_relation VALUES("483","247");
INSERT INTO help_relation VALUES("417","248");
INSERT INTO help_relation VALUES("359","249");
INSERT INTO help_relation VALUES("359","250");
INSERT INTO help_relation VALUES("262","251");
INSERT INTO help_relation VALUES("274","251");
INSERT INTO help_relation VALUES("325","251");
INSERT INTO help_relation VALUES("348","251");
INSERT INTO help_relation VALUES("369","251");
INSERT INTO help_relation VALUES("416","251");
INSERT INTO help_relation VALUES("109","252");
INSERT INTO help_relation VALUES("359","253");
INSERT INTO help_relation VALUES("247","254");
INSERT INTO help_relation VALUES("359","255");
INSERT INTO help_relation VALUES("206","256");
INSERT INTO help_relation VALUES("114","257");
INSERT INTO help_relation VALUES("142","257");
INSERT INTO help_relation VALUES("183","257");
INSERT INTO help_relation VALUES("227","257");
INSERT INTO help_relation VALUES("245","257");
INSERT INTO help_relation VALUES("330","257");
INSERT INTO help_relation VALUES("340","257");
INSERT INTO help_relation VALUES("438","257");
INSERT INTO help_relation VALUES("444","257");
INSERT INTO help_relation VALUES("480","257");
INSERT INTO help_relation VALUES("359","258");
INSERT INTO help_relation VALUES("170","259");
INSERT INTO help_relation VALUES("199","259");
INSERT INTO help_relation VALUES("505","259");
INSERT INTO help_relation VALUES("38","260");
INSERT INTO help_relation VALUES("64","260");
INSERT INTO help_relation VALUES("117","260");
INSERT INTO help_relation VALUES("153","260");
INSERT INTO help_relation VALUES("212","260");
INSERT INTO help_relation VALUES("221","260");
INSERT INTO help_relation VALUES("243","260");
INSERT INTO help_relation VALUES("245","260");
INSERT INTO help_relation VALUES("321","260");
INSERT INTO help_relation VALUES("397","260");
INSERT INTO help_relation VALUES("421","260");
INSERT INTO help_relation VALUES("438","260");
INSERT INTO help_relation VALUES("508","260");
INSERT INTO help_relation VALUES("512","260");
INSERT INTO help_relation VALUES("245","261");
INSERT INTO help_relation VALUES("438","261");
INSERT INTO help_relation VALUES("448","261");
INSERT INTO help_relation VALUES("508","261");
INSERT INTO help_relation VALUES("245","262");
INSERT INTO help_relation VALUES("245","263");
INSERT INTO help_relation VALUES("277","263");
INSERT INTO help_relation VALUES("397","263");
INSERT INTO help_relation VALUES("514","263");
INSERT INTO help_relation VALUES("359","264");
INSERT INTO help_relation VALUES("444","265");
INSERT INTO help_relation VALUES("411","266");
INSERT INTO help_relation VALUES("245","267");
INSERT INTO help_relation VALUES("172","268");
INSERT INTO help_relation VALUES("508","269");
INSERT INTO help_relation VALUES("307","270");
INSERT INTO help_relation VALUES("359","271");
INSERT INTO help_relation VALUES("444","272");
INSERT INTO help_relation VALUES("139","273");
INSERT INTO help_relation VALUES("444","273");
INSERT INTO help_relation VALUES("445","273");
INSERT INTO help_relation VALUES("124","274");
INSERT INTO help_relation VALUES("200","274");
INSERT INTO help_relation VALUES("418","274");
INSERT INTO help_relation VALUES("369","275");
INSERT INTO help_relation VALUES("307","276");
INSERT INTO help_relation VALUES("297","277");
INSERT INTO help_relation VALUES("518","277");
INSERT INTO help_relation VALUES("481","278");
INSERT INTO help_relation VALUES("385","279");
INSERT INTO help_relation VALUES("337","280");
INSERT INTO help_relation VALUES("85","281");
INSERT INTO help_relation VALUES("179","281");
INSERT INTO help_relation VALUES("12","282");
INSERT INTO help_relation VALUES("16","282");
INSERT INTO help_relation VALUES("38","282");
INSERT INTO help_relation VALUES("58","282");
INSERT INTO help_relation VALUES("113","282");
INSERT INTO help_relation VALUES("153","282");
INSERT INTO help_relation VALUES("168","282");
INSERT INTO help_relation VALUES("192","282");
INSERT INTO help_relation VALUES("209","282");
INSERT INTO help_relation VALUES("245","282");
INSERT INTO help_relation VALUES("247","282");
INSERT INTO help_relation VALUES("303","282");
INSERT INTO help_relation VALUES("308","282");
INSERT INTO help_relation VALUES("340","282");
INSERT INTO help_relation VALUES("370","282");
INSERT INTO help_relation VALUES("413","282");
INSERT INTO help_relation VALUES("438","282");
INSERT INTO help_relation VALUES("502","282");
INSERT INTO help_relation VALUES("139","283");
INSERT INTO help_relation VALUES("109","284");
INSERT INTO help_relation VALUES("126","285");
INSERT INTO help_relation VALUES("438","286");
INSERT INTO help_relation VALUES("500","286");
INSERT INTO help_relation VALUES("308","287");
INSERT INTO help_relation VALUES("26","288");
INSERT INTO help_relation VALUES("148","288");
INSERT INTO help_relation VALUES("438","288");
INSERT INTO help_relation VALUES("490","289");
INSERT INTO help_relation VALUES("508","290");
INSERT INTO help_relation VALUES("245","291");
INSERT INTO help_relation VALUES("170","292");
INSERT INTO help_relation VALUES("508","293");
INSERT INTO help_relation VALUES("455","294");
INSERT INTO help_relation VALUES("82","295");
INSERT INTO help_relation VALUES("316","296");
INSERT INTO help_relation VALUES("243","297");
INSERT INTO help_relation VALUES("508","297");
INSERT INTO help_relation VALUES("245","298");
INSERT INTO help_relation VALUES("221","299");
INSERT INTO help_relation VALUES("267","300");
INSERT INTO help_relation VALUES("315","300");
INSERT INTO help_relation VALUES("433","301");
INSERT INTO help_relation VALUES("170","302");
INSERT INTO help_relation VALUES("185","303");
INSERT INTO help_relation VALUES("142","304");
INSERT INTO help_relation VALUES("148","305");
INSERT INTO help_relation VALUES("421","306");
INSERT INTO help_relation VALUES("508","306");
INSERT INTO help_relation VALUES("4","307");
INSERT INTO help_relation VALUES("7","307");
INSERT INTO help_relation VALUES("12","307");
INSERT INTO help_relation VALUES("18","307");
INSERT INTO help_relation VALUES("23","307");
INSERT INTO help_relation VALUES("26","307");
INSERT INTO help_relation VALUES("37","307");
INSERT INTO help_relation VALUES("47","307");
INSERT INTO help_relation VALUES("69","307");
INSERT INTO help_relation VALUES("92","307");
INSERT INTO help_relation VALUES("95","307");
INSERT INTO help_relation VALUES("106","307");
INSERT INTO help_relation VALUES("117","307");
INSERT INTO help_relation VALUES("120","307");
INSERT INTO help_relation VALUES("153","307");
INSERT INTO help_relation VALUES("163","307");
INSERT INTO help_relation VALUES("181","307");
INSERT INTO help_relation VALUES("183","307");
INSERT INTO help_relation VALUES("192","307");
INSERT INTO help_relation VALUES("209","307");
INSERT INTO help_relation VALUES("224","307");
INSERT INTO help_relation VALUES("256","307");
INSERT INTO help_relation VALUES("273","307");
INSERT INTO help_relation VALUES("297","307");
INSERT INTO help_relation VALUES("299","307");
INSERT INTO help_relation VALUES("332","307");
INSERT INTO help_relation VALUES("335","307");
INSERT INTO help_relation VALUES("338","307");
INSERT INTO help_relation VALUES("360","307");
INSERT INTO help_relation VALUES("399","307");
INSERT INTO help_relation VALUES("413","307");
INSERT INTO help_relation VALUES("414","307");
INSERT INTO help_relation VALUES("424","307");
INSERT INTO help_relation VALUES("428","307");
INSERT INTO help_relation VALUES("438","307");
INSERT INTO help_relation VALUES("439","307");
INSERT INTO help_relation VALUES("448","307");
INSERT INTO help_relation VALUES("500","307");
INSERT INTO help_relation VALUES("518","307");
INSERT INTO help_relation VALUES("521","307");
INSERT INTO help_relation VALUES("109","308");
INSERT INTO help_relation VALUES("135","308");
INSERT INTO help_relation VALUES("281","308");
INSERT INTO help_relation VALUES("411","308");
INSERT INTO help_relation VALUES("444","308");
INSERT INTO help_relation VALUES("245","309");
INSERT INTO help_relation VALUES("179","310");
INSERT INTO help_relation VALUES("245","311");
INSERT INTO help_relation VALUES("69","312");
INSERT INTO help_relation VALUES("440","312");
INSERT INTO help_relation VALUES("20","313");
INSERT INTO help_relation VALUES("36","313");
INSERT INTO help_relation VALUES("49","313");
INSERT INTO help_relation VALUES("125","313");
INSERT INTO help_relation VALUES("180","313");
INSERT INTO help_relation VALUES("185","313");
INSERT INTO help_relation VALUES("490","313");
INSERT INTO help_relation VALUES("523","313");
INSERT INTO help_relation VALUES("201","314");
INSERT INTO help_relation VALUES("82","315");
INSERT INTO help_relation VALUES("174","315");
INSERT INTO help_relation VALUES("416","316");
INSERT INTO help_relation VALUES("62","317");
INSERT INTO help_relation VALUES("201","318");
INSERT INTO help_relation VALUES("139","319");
INSERT INTO help_relation VALUES("167","319");
INSERT INTO help_relation VALUES("267","319");
INSERT INTO help_relation VALUES("315","319");
INSERT INTO help_relation VALUES("444","319");
INSERT INTO help_relation VALUES("92","320");
INSERT INTO help_relation VALUES("438","320");
INSERT INTO help_relation VALUES("78","321");
INSERT INTO help_relation VALUES("109","322");
INSERT INTO help_relation VALUES("303","322");
INSERT INTO help_relation VALUES("330","322");
INSERT INTO help_relation VALUES("247","323");
INSERT INTO help_relation VALUES("359","324");
INSERT INTO help_relation VALUES("101","325");
INSERT INTO help_relation VALUES("503","326");
INSERT INTO help_relation VALUES("65","327");
INSERT INTO help_relation VALUES("274","327");
INSERT INTO help_relation VALUES("201","328");
INSERT INTO help_relation VALUES("359","329");
INSERT INTO help_relation VALUES("330","330");
INSERT INTO help_relation VALUES("480","330");
INSERT INTO help_relation VALUES("67","331");
INSERT INTO help_relation VALUES("461","331");
INSERT INTO help_relation VALUES("508","332");
INSERT INTO help_relation VALUES("18","333");
INSERT INTO help_relation VALUES("438","333");
INSERT INTO help_relation VALUES("109","334");
INSERT INTO help_relation VALUES("198","335");
INSERT INTO help_relation VALUES("247","335");
INSERT INTO help_relation VALUES("199","336");
INSERT INTO help_relation VALUES("337","337");
INSERT INTO help_relation VALUES("490","337");
INSERT INTO help_relation VALUES("359","338");
INSERT INTO help_relation VALUES("201","339");
INSERT INTO help_relation VALUES("109","340");
INSERT INTO help_relation VALUES("438","341");
INSERT INTO help_relation VALUES("455","341");
INSERT INTO help_relation VALUES("161","342");
INSERT INTO help_relation VALUES("438","342");
INSERT INTO help_relation VALUES("479","342");
INSERT INTO help_relation VALUES("205","343");
INSERT INTO help_relation VALUES("69","344");
INSERT INTO help_relation VALUES("224","344");
INSERT INTO help_relation VALUES("307","344");
INSERT INTO help_relation VALUES("444","344");
INSERT INTO help_relation VALUES("508","345");
INSERT INTO help_relation VALUES("170","346");
INSERT INTO help_relation VALUES("444","347");
INSERT INTO help_relation VALUES("109","348");
INSERT INTO help_relation VALUES("50","349");
INSERT INTO help_relation VALUES("109","349");
INSERT INTO help_relation VALUES("444","350");
INSERT INTO help_relation VALUES("467","351");
INSERT INTO help_relation VALUES("85","352");
INSERT INTO help_relation VALUES("97","352");
INSERT INTO help_relation VALUES("307","352");
INSERT INTO help_relation VALUES("359","353");
INSERT INTO help_relation VALUES("330","354");
INSERT INTO help_relation VALUES("480","354");
INSERT INTO help_relation VALUES("423","355");
INSERT INTO help_relation VALUES("289","356");
INSERT INTO help_relation VALUES("423","356");
INSERT INTO help_relation VALUES("6","357");
INSERT INTO help_relation VALUES("198","357");
INSERT INTO help_relation VALUES("247","357");
INSERT INTO help_relation VALUES("109","358");
INSERT INTO help_relation VALUES("359","359");
INSERT INTO help_relation VALUES("70","360");
INSERT INTO help_relation VALUES("236","361");
INSERT INTO help_relation VALUES("337","361");
INSERT INTO help_relation VALUES("201","362");
INSERT INTO help_relation VALUES("218","363");
INSERT INTO help_relation VALUES("201","364");
INSERT INTO help_relation VALUES("508","365");
INSERT INTO help_relation VALUES("81","366");
INSERT INTO help_relation VALUES("274","367");
INSERT INTO help_relation VALUES("64","368");
INSERT INTO help_relation VALUES("375","368");
INSERT INTO help_relation VALUES("472","368");
INSERT INTO help_relation VALUES("508","368");
INSERT INTO help_relation VALUES("113","369");
INSERT INTO help_relation VALUES("245","369");
INSERT INTO help_relation VALUES("508","369");
INSERT INTO help_relation VALUES("0","370");
INSERT INTO help_relation VALUES("38","371");
INSERT INTO help_relation VALUES("91","371");
INSERT INTO help_relation VALUES("109","371");
INSERT INTO help_relation VALUES("114","371");
INSERT INTO help_relation VALUES("198","371");
INSERT INTO help_relation VALUES("232","371");
INSERT INTO help_relation VALUES("379","371");
INSERT INTO help_relation VALUES("466","371");
INSERT INTO help_relation VALUES("472","371");
INSERT INTO help_relation VALUES("508","371");
INSERT INTO help_relation VALUES("245","372");
INSERT INTO help_relation VALUES("247","373");
INSERT INTO help_relation VALUES("0","374");
INSERT INTO help_relation VALUES("444","374");
INSERT INTO help_relation VALUES("0","375");
INSERT INTO help_relation VALUES("438","376");
INSERT INTO help_relation VALUES("439","376");
INSERT INTO help_relation VALUES("480","377");
INSERT INTO help_relation VALUES("483","378");
INSERT INTO help_relation VALUES("245","379");
INSERT INTO help_relation VALUES("109","380");
INSERT INTO help_relation VALUES("247","380");
INSERT INTO help_relation VALUES("250","380");
INSERT INTO help_relation VALUES("303","380");
INSERT INTO help_relation VALUES("423","380");
INSERT INTO help_relation VALUES("466","380");
INSERT INTO help_relation VALUES("444","381");
INSERT INTO help_relation VALUES("124","382");
INSERT INTO help_relation VALUES("510","382");
INSERT INTO help_relation VALUES("62","383");
INSERT INTO help_relation VALUES("299","384");
INSERT INTO help_relation VALUES("438","384");
INSERT INTO help_relation VALUES("259","385");
INSERT INTO help_relation VALUES("397","386");
INSERT INTO help_relation VALUES("236","387");
INSERT INTO help_relation VALUES("444","388");
INSERT INTO help_relation VALUES("114","389");
INSERT INTO help_relation VALUES("221","389");
INSERT INTO help_relation VALUES("490","390");
INSERT INTO help_relation VALUES("180","391");
INSERT INTO help_relation VALUES("337","391");
INSERT INTO help_relation VALUES("490","391");
INSERT INTO help_relation VALUES("245","392");
INSERT INTO help_relation VALUES("256","393");
INSERT INTO help_relation VALUES("221","394");
INSERT INTO help_relation VALUES("201","395");
INSERT INTO help_relation VALUES("308","395");
INSERT INTO help_relation VALUES("109","396");
INSERT INTO help_relation VALUES("201","397");
INSERT INTO help_relation VALUES("114","398");
INSERT INTO help_relation VALUES("109","399");
INSERT INTO help_relation VALUES("245","399");
INSERT INTO help_relation VALUES("514","399");
INSERT INTO help_relation VALUES("493","400");
INSERT INTO help_relation VALUES("399","401");
INSERT INTO help_relation VALUES("236","402");
INSERT INTO help_relation VALUES("498","403");
INSERT INTO help_relation VALUES("308","404");
INSERT INTO help_relation VALUES("325","405");
INSERT INTO help_relation VALUES("7","406");
INSERT INTO help_relation VALUES("438","406");
INSERT INTO help_relation VALUES("277","407");
INSERT INTO help_relation VALUES("397","407");
INSERT INTO help_relation VALUES("514","407");
INSERT INTO help_relation VALUES("236","408");
INSERT INTO help_relation VALUES("290","409");
INSERT INTO help_relation VALUES("111","410");
INSERT INTO help_relation VALUES("197","410");
INSERT INTO help_relation VALUES("239","410");
INSERT INTO help_relation VALUES("306","410");
INSERT INTO help_relation VALUES("111","411");
INSERT INTO help_relation VALUES("306","411");
INSERT INTO help_relation VALUES("308","411");
INSERT INTO help_relation VALUES("340","411");
INSERT INTO help_relation VALUES("415","411");
INSERT INTO help_relation VALUES("103","412");
INSERT INTO help_relation VALUES("179","413");
INSERT INTO help_relation VALUES("505","414");
INSERT INTO help_relation VALUES("245","415");
INSERT INTO help_relation VALUES("337","416");
INSERT INTO help_relation VALUES("423","416");
INSERT INTO help_relation VALUES("490","416");
INSERT INTO help_relation VALUES("23","417");
INSERT INTO help_relation VALUES("506","418");
INSERT INTO help_relation VALUES("6","419");
INSERT INTO help_relation VALUES("20","419");
INSERT INTO help_relation VALUES("252","419");
INSERT INTO help_relation VALUES("277","419");
INSERT INTO help_relation VALUES("308","419");
INSERT INTO help_relation VALUES("340","419");
INSERT INTO help_relation VALUES("358","419");
INSERT INTO help_relation VALUES("397","419");
INSERT INTO help_relation VALUES("408","419");
INSERT INTO help_relation VALUES("330","420");
INSERT INTO help_relation VALUES("508","421");
INSERT INTO help_relation VALUES("148","422");
INSERT INTO help_relation VALUES("247","423");
INSERT INTO help_relation VALUES("303","423");
INSERT INTO help_relation VALUES("375","423");
INSERT INTO help_relation VALUES("423","423");
INSERT INTO help_relation VALUES("425","423");
INSERT INTO help_relation VALUES("466","423");
INSERT INTO help_relation VALUES("62","424");
INSERT INTO help_relation VALUES("417","425");
INSERT INTO help_relation VALUES("414","426");
INSERT INTO help_relation VALUES("438","426");
INSERT INTO help_relation VALUES("508","426");
INSERT INTO help_relation VALUES("32","427");
INSERT INTO help_relation VALUES("48","427");
INSERT INTO help_relation VALUES("62","427");
INSERT INTO help_relation VALUES("69","427");
INSERT INTO help_relation VALUES("224","427");
INSERT INTO help_relation VALUES("444","427");
INSERT INTO help_relation VALUES("38","428");
INSERT INTO help_relation VALUES("245","428");
INSERT INTO help_relation VALUES("315","428");
INSERT INTO help_relation VALUES("508","428");
INSERT INTO help_relation VALUES("514","428");
INSERT INTO help_relation VALUES("245","429");
INSERT INTO help_relation VALUES("125","430");
INSERT INTO help_relation VALUES("444","431");
INSERT INTO help_relation VALUES("267","432");
INSERT INTO help_relation VALUES("315","432");
INSERT INTO help_relation VALUES("517","432");
INSERT INTO help_relation VALUES("170","433");
INSERT INTO help_relation VALUES("199","433");
INSERT INTO help_relation VALUES("505","433");
INSERT INTO help_relation VALUES("508","434");
INSERT INTO help_relation VALUES("512","434");
INSERT INTO help_relation VALUES("245","435");
INSERT INTO help_relation VALUES("508","435");
INSERT INTO help_relation VALUES("245","436");
INSERT INTO help_relation VALUES("383","436");
INSERT INTO help_relation VALUES("245","437");
INSERT INTO help_relation VALUES("514","437");
INSERT INTO help_relation VALUES("25","438");
INSERT INTO help_relation VALUES("236","438");
INSERT INTO help_relation VALUES("337","438");
INSERT INTO help_relation VALUES("490","438");
INSERT INTO help_relation VALUES("236","439");
INSERT INTO help_relation VALUES("327","439");
INSERT INTO help_relation VALUES("335","439");
INSERT INTO help_relation VALUES("439","439");
INSERT INTO help_relation VALUES("114","440");
INSERT INTO help_relation VALUES("247","440");
INSERT INTO help_relation VALUES("340","440");
INSERT INTO help_relation VALUES("358","440");
INSERT INTO help_relation VALUES("413","440");
INSERT INTO help_relation VALUES("438","440");
INSERT INTO help_relation VALUES("197","441");
INSERT INTO help_relation VALUES("306","441");
INSERT INTO help_relation VALUES("514","441");
INSERT INTO help_relation VALUES("254","442");
INSERT INTO help_relation VALUES("243","443");
INSERT INTO help_relation VALUES("480","444");
INSERT INTO help_relation VALUES("120","445");
INSERT INTO help_relation VALUES("281","445");
INSERT INTO help_relation VALUES("289","445");
INSERT INTO help_relation VALUES("308","445");
INSERT INTO help_relation VALUES("338","445");
INSERT INTO help_relation VALUES("423","445");
INSERT INTO help_relation VALUES("472","445");
INSERT INTO help_relation VALUES("142","446");
INSERT INTO help_relation VALUES("444","447");
INSERT INTO help_relation VALUES("445","447");
INSERT INTO help_relation VALUES("258","448");
INSERT INTO help_relation VALUES("480","449");
INSERT INTO help_relation VALUES("308","450");
INSERT INTO help_relation VALUES("472","450");
INSERT INTO help_relation VALUES("508","450");
INSERT INTO help_relation VALUES("114","451");
INSERT INTO help_relation VALUES("245","451");
INSERT INTO help_relation VALUES("109","452");
INSERT INTO help_relation VALUES("523","453");
INSERT INTO help_relation VALUES("25","454");
INSERT INTO help_relation VALUES("179","454");
INSERT INTO help_relation VALUES("243","454");
INSERT INTO help_relation VALUES("321","454");
INSERT INTO help_relation VALUES("330","454");
INSERT INTO help_relation VALUES("480","454");
INSERT INTO help_relation VALUES("512","454");
INSERT INTO help_relation VALUES("57","455");
INSERT INTO help_relation VALUES("228","455");
INSERT INTO help_relation VALUES("266","455");
INSERT INTO help_relation VALUES("404","455");
INSERT INTO help_relation VALUES("411","455");
INSERT INTO help_relation VALUES("444","455");
INSERT INTO help_relation VALUES("445","455");
INSERT INTO help_relation VALUES("457","455");
INSERT INTO help_relation VALUES("260","456");
INSERT INTO help_relation VALUES("359","457");
INSERT INTO help_relation VALUES("109","458");
INSERT INTO help_relation VALUES("25","459");
INSERT INTO help_relation VALUES("163","459");
INSERT INTO help_relation VALUES("332","459");
INSERT INTO help_relation VALUES("438","459");
INSERT INTO help_relation VALUES("522","460");
INSERT INTO help_relation VALUES("179","461");
INSERT INTO help_relation VALUES("19","462");
INSERT INTO help_relation VALUES("16","463");
INSERT INTO help_relation VALUES("144","463");
INSERT INTO help_relation VALUES("438","463");
INSERT INTO help_relation VALUES("438","464");
INSERT INTO help_relation VALUES("521","464");
INSERT INTO help_relation VALUES("109","465");
INSERT INTO help_relation VALUES("315","466");
INSERT INTO help_relation VALUES("444","466");
INSERT INTO help_relation VALUES("113","467");
INSERT INTO help_relation VALUES("62","468");
INSERT INTO help_relation VALUES("245","468");
INSERT INTO help_relation VALUES("508","468");
INSERT INTO help_relation VALUES("508","469");
INSERT INTO help_relation VALUES("170","470");
INSERT INTO help_relation VALUES("199","470");
INSERT INTO help_relation VALUES("505","470");
INSERT INTO help_relation VALUES("26","471");
INSERT INTO help_relation VALUES("37","471");
INSERT INTO help_relation VALUES("145","471");
INSERT INTO help_relation VALUES("148","471");
INSERT INTO help_relation VALUES("359","471");
INSERT INTO help_relation VALUES("245","472");
INSERT INTO help_relation VALUES("369","472");
INSERT INTO help_relation VALUES("363","473");
INSERT INTO help_relation VALUES("245","474");



CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

INSERT INTO help_topic VALUES("0","JOIN","28","MySQL supports the following JOIN syntaxes for the table_references
part of SELECT statements and multiple-table DELETE and UPDATE
statements:

table_references:
    table_reference [, table_reference] ...

table_reference:
    table_factor
  | join_table

table_factor:
    tbl_name [PARTITION (partition_names)] 
        [[AS] alias] [index_hint_list]
  | table_subquery [AS] alias
  | ( table_references )
  | { OJ table_reference LEFT OUTER JOIN table_reference
        ON conditional_expr }

join_table:
    table_reference [INNER | CROSS] JOIN table_factor [join_condition]
  | table_reference STRAIGHT_JOIN table_factor
  | table_reference STRAIGHT_JOIN table_factor ON conditional_expr
  | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition
  | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor

join_condition:
    ON conditional_expr
  | USING (column_list)

index_hint_list:
    index_hint [, index_hint] ...

index_hint:
    USE {INDEX|KEY}
      [FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])
  | IGNORE {INDEX|KEY}
      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)
  | FORCE {INDEX|KEY}
      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)

index_list:
    index_name [, index_name] ...

A table reference is also known as a join expression.

In MySQL 5.6.2 and later, a table reference (when it refers to a
partitioned table) may contain a PARTITION option, including a
comma-separated list of partitions, subpartitions, or both. This option
follows the name of the table and precedes any alias declaration. The
effect of this option is that rows are selected only from the listed
partitions or subpartitions---in other words, any partitions or
subpartitions not named in the list are ignored For more information,
see http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.

The syntax of table_factor is extended in comparison with the SQL
Standard. The latter accepts only table_reference, not a list of them
inside a pair of parentheses.

This is a conservative extension if we consider each comma in a list of
table_reference items as equivalent to an inner join. For example:

SELECT * FROM t1 LEFT JOIN (t2, t3, t4)
                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)

is equivalent to:

SELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)
                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)

In MySQL, JOIN, CROSS JOIN, and INNER JOIN are syntactic equivalents
(they can replace each other). In standard SQL, they are not
equivalent. INNER JOIN is used with an ON clause, CROSS JOIN is used
otherwise.

In general, parentheses can be ignored in join expressions containing
only inner join operations. MySQL also supports nested joins (see
http://dev.mysql.com/doc/refman/5.6/en/nested-join-optimization.html).

Index hints can be specified to affect how the MySQL optimizer makes
use of indexes. For more information, see
http://dev.mysql.com/doc/refman/5.6/en/index-hints.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/join.html

","SELECT left_tbl.*
  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id
  WHERE right_tbl.id IS NULL;
","http://dev.mysql.com/doc/refman/5.6/en/join.html");
INSERT INTO help_topic VALUES("1","HEX","38","Syntax:
HEX(str), HEX(N)

For a string argument str, HEX() returns a hexadecimal string
representation of str where each character in str is converted to two
hexadecimal digits. The inverse of this operation is performed by the
UNHEX() function.

For a numeric argument N, HEX() returns a hexadecimal string
representation of the value of N treated as a longlong (BIGINT) number.
This is equivalent to CONV(N,10,16). The inverse of this operation is
performed by CONV(HEX(N),16,10).

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT 0x616263, HEX('abc'), UNHEX(HEX('abc'));
        -> 'abc', 616263, 'abc'
mysql> SELECT HEX(255), CONV(HEX(255),16,10);
        -> 'FF', 255
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("2","CONTAINS","31","Contains(g1,g2)

Returns 1 or 0 to indicate whether g1 completely contains g2. This
tests the opposite relationship as Within().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("3","SRID","37","SRID(g)

Returns an integer indicating the Spatial Reference System ID for the
geometry value g.

In MySQL, the SRID value is just an integer associated with the
geometry value. All calculations are done assuming Euclidean (planar)
geometry.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT SRID(GeomFromText('LineString(1 1,2 2)',101));
+-----------------------------------------------+
| SRID(GeomFromText('LineString(1 1,2 2)',101)) |
+-----------------------------------------------+
|                                           101 |
+-----------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("4","SHOW CONTRIBUTORS","27","Syntax:
SHOW CONTRIBUTORS

The SHOW CONTRIBUTORS statement displays information about the people
who contribute to MySQL source or to causes that we support. For each
contributor, it displays Name, Location, and Comment values.

This statement is removed as of MySQL 5.6.8.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-contributors.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-contributors.html");
INSERT INTO help_topic VALUES("5","VARIANCE","16","Syntax:
VARIANCE(expr)

Returns the population standard variance of expr. This is an extension
to standard SQL. The standard SQL function VAR_POP() can be used
instead.

VARIANCE() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("6","DROP SERVER","40","Syntax:
DROP SERVER [ IF EXISTS ] server_name

Drops the server definition for the server named server_name. The
corresponding row in the mysql.servers table is deleted. This statement
requires the SUPER privilege.

Dropping a server for a table does not affect any FEDERATED tables that
used this connection information when they were created. See [HELP
CREATE SERVER].

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-server.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-server.html");
INSERT INTO help_topic VALUES("7","SHOW AUTHORS","27","Syntax:
SHOW AUTHORS

The SHOW AUTHORS statement displays information about the people who
work on MySQL. For each author, it displays Name, Location, and Comment
values.

This statement is removed as of MySQL 5.6.8.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-authors.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-authors.html");
INSERT INTO help_topic VALUES("8","CONCAT","38","Syntax:
CONCAT(str1,str2,...)

Returns the string that results from concatenating the arguments. May
have one or more arguments. If all arguments are nonbinary strings, the
result is a nonbinary string. If the arguments include any binary
strings, the result is a binary string. A numeric argument is converted
to its equivalent nonbinary string form.

CONCAT() returns NULL if any argument is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT CONCAT('My', 'S', 'QL');
        -> 'MySQL'
mysql> SELECT CONCAT('My', NULL, 'QL');
        -> NULL
mysql> SELECT CONCAT(14.3);
        -> '14.3'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("9","GEOMETRY HIERARCHY","35","Geometry is the base class. It is an abstract class. The instantiable
subclasses of Geometry are restricted to zero-, one-, and
two-dimensional geometric objects that exist in two-dimensional
coordinate space. All instantiable geometry classes are defined so that
valid instances of a geometry class are topologically closed (that is,
all defined geometries include their boundary).

The base Geometry class has subclasses for Point, Curve, Surface, and
GeometryCollection:

o Point represents zero-dimensional objects.

o Curve represents one-dimensional objects, and has subclass
  LineString, with sub-subclasses Line and LinearRing.

o Surface is designed for two-dimensional objects and has subclass
  Polygon.

o GeometryCollection has specialized zero-, one-, and two-dimensional
  collection classes named MultiPoint, MultiLineString, and
  MultiPolygon for modeling geometries corresponding to collections of
  Points, LineStrings, and Polygons, respectively. MultiCurve and
  MultiSurface are introduced as abstract superclasses that generalize
  the collection interfaces to handle Curves and Surfaces.

Geometry, Curve, Surface, MultiCurve, and MultiSurface are defined as
noninstantiable classes. They define a common set of methods for their
subclasses and are included for extensibility.

Point, LineString, Polygon, GeometryCollection, MultiPoint,
MultiLineString, and MultiPolygon are instantiable classes.

URL: http://dev.mysql.com/doc/refman/5.6/en/gis-geometry-class-hierarchy.html

","","http://dev.mysql.com/doc/refman/5.6/en/gis-geometry-class-hierarchy.html");
INSERT INTO help_topic VALUES("10","CHAR FUNCTION","38","Syntax:
CHAR(N,... [USING charset_name])

CHAR() interprets each argument N as an integer and returns a string
consisting of the characters given by the code values of those
integers. NULL values are skipped.
By default, CHAR() returns a binary string. To produce a string in a
given character set, use the optional USING clause:

mysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));
+---------------------+--------------------------------+
| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |
+---------------------+--------------------------------+
| binary              | utf8                           |
+---------------------+--------------------------------+

If USING is given and the result string is illegal for the given
character set, a warning is issued. Also, if strict SQL mode is
enabled, the result from CHAR() becomes NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT CHAR(77,121,83,81,'76');
        -> 'MySQL'
mysql> SELECT CHAR(77,77.3,'77.3');
        -> 'MMM'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("11","SHOW CREATE TRIGGER","27","Syntax:
SHOW CREATE TRIGGER trigger_name

This statement shows a CREATE TRIGGER statement that creates the given
trigger.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-trigger.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-create-trigger.html");
INSERT INTO help_topic VALUES("12","SHOW CREATE PROCEDURE","27","Syntax:
SHOW CREATE PROCEDURE proc_name

This statement is a MySQL extension. It returns the exact string that
can be used to re-create the named stored procedure. A similar
statement, SHOW CREATE FUNCTION, displays information about stored
functions (see [HELP SHOW CREATE FUNCTION]).

Both statements require that you be the owner of the routine or have
SELECT access to the mysql.proc table. If you do not have privileges
for the routine itself, the value displayed for the Create Procedure or
Create Function field will be NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-procedure.html

","mysql> SHOW CREATE PROCEDURE test.simpleproc\G
*************************** 1. row ***************************
           Procedure: simpleproc
            sql_mode:
    Create Procedure: CREATE PROCEDURE `simpleproc`(OUT param1 INT)
                      BEGIN
                      SELECT COUNT(*) INTO param1 FROM t;
                      END
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci

mysql> SHOW CREATE FUNCTION test.hello\G
*************************** 1. row ***************************
            Function: hello
            sql_mode:
     Create Function: CREATE FUNCTION `hello`(s CHAR(20))
                      RETURNS CHAR(50)
                      RETURN CONCAT('Hello, ',s,'!')
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci
","http://dev.mysql.com/doc/refman/5.6/en/show-create-procedure.html");
INSERT INTO help_topic VALUES("13","OPEN","24","Syntax:
OPEN cursor_name

This statement opens a previously declared cursor. For an example, see
http://dev.mysql.com/doc/refman/5.6/en/cursors.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/open.html

","","http://dev.mysql.com/doc/refman/5.6/en/open.html");
INSERT INTO help_topic VALUES("14","ST_INTERSECTS","31","ST_Intersects(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially intersects g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("15","LOWER","38","Syntax:
LOWER(str)

Returns the string str with all characters changed to lowercase
according to the current character set mapping. The default is latin1
(cp1252 West European).

mysql> SELECT LOWER('QUADRATICALLY');
        -> 'quadratically'

LOWER() (and UPPER()) are ineffective when applied to binary strings
(BINARY, VARBINARY, BLOB). To perform lettercase conversion, convert
the string to a nonbinary string:

mysql> SET @str = BINARY 'New York';
mysql> SELECT LOWER(@str), LOWER(CONVERT(@str USING latin1));
+-------------+-----------------------------------+
| LOWER(@str) | LOWER(CONVERT(@str USING latin1)) |
+-------------+-----------------------------------+
| New York    | new york                          |
+-------------+-----------------------------------+

For Unicode character sets, LOWER() and UPPER() work accounting to
Unicode Collation Algorithm (UCA) 5.2.0 for xxx_unicode_520_ci
collations and for language-specific collations that are derived from
them. For other Unicode collations, LOWER() and UPPER() work accounting
to Unicode Collation Algorithm (UCA) 4.0.0. See
http://dev.mysql.com/doc/refman/5.6/en/charset-unicode-sets.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("16","CREATE TRIGGER","40","Syntax:
CREATE
    [DEFINER = { user | CURRENT_USER }]
    TRIGGER trigger_name trigger_time trigger_event
    ON tbl_name FOR EACH ROW trigger_body

This statement creates a new trigger. A trigger is a named database
object that is associated with a table, and that activates when a
particular event occurs for the table. The trigger becomes associated
with the table named tbl_name, which must refer to a permanent table.
You cannot associate a trigger with a TEMPORARY table or a view.

CREATE TRIGGER requires the TRIGGER privilege for the table associated
with the trigger. The statement might also require the SUPER privilege,
depending on the DEFINER value, as described later in this section. If
binary logging is enabled, CREATE TRIGGER might require the SUPER
privilege, as described in
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.

The DEFINER clause determines the security context to be used when
checking access privileges at trigger activation time. See later in
this section for more information.

trigger_time is the trigger action time. It can be BEFORE or AFTER to
indicate that the trigger activates before or after each row to be
modified.

trigger_event indicates the kind of statement that activates the
trigger. The trigger_event can be one of the following:

o INSERT: The trigger is activated whenever a new row is inserted into
  the table; for example, through INSERT, LOAD DATA, and REPLACE
  statements.

o UPDATE: The trigger is activated whenever a row is modified; for
  example, through UPDATE statements.

o DELETE: The trigger is activated whenever a row is deleted from the
  table; for example, through DELETE and REPLACE statements. However,
  DROP TABLE and TRUNCATE TABLE statements on the table do not activate
  this trigger, because they do not use DELETE. Dropping a partition
  does not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].

URL: http://dev.mysql.com/doc/refman/5.6/en/create-trigger.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-trigger.html");
INSERT INTO help_topic VALUES("17","MONTH","32","Syntax:
MONTH(date)

Returns the month for date, in the range 1 to 12 for January to
December, or 0 for dates such as '0000-00-00' or '2008-00-00' that have
a zero month part.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MONTH('2008-02-03');
        -> 2
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("18","SHOW TRIGGERS","27","Syntax:
SHOW TRIGGERS [{FROM | IN} db_name]
    [LIKE 'pattern' | WHERE expr]

SHOW TRIGGERS lists the triggers currently defined for tables in a
database (the default database unless a FROM clause is given). This
statement returns results only for databases and tables for which you
have the TRIGGER privilege. The LIKE clause, if present, indicates
which table names to match and causes the statement to display triggers
for those tables. The WHERE clause can be given to select rows using
more general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

For the trigger ins_sum as defined in
http://dev.mysql.com/doc/refman/5.6/en/triggers.html, the output of
this statement is as shown here:

mysql> SHOW TRIGGERS LIKE 'acc%'\G
*************************** 1. row ***************************
             Trigger: ins_sum
               Event: INSERT
               Table: account
           Statement: SET @sum = @sum + NEW.amount
              Timing: BEFORE
             Created: NULL
            sql_mode:
             Definer: myname@localhost
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci

character_set_client is the session value of the character_set_client
system variable when the trigger was created. collation_connection is
the session value of the collation_connection system variable when the
trigger was created. Database Collation is the collation of the
database with which the trigger is associated.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-triggers.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-triggers.html");
INSERT INTO help_topic VALUES("19","REGEXP","38","Syntax:
expr REGEXP pat, expr RLIKE pat

Performs a pattern match of a string expression expr against a pattern
pat. The pattern can be an extended regular expression. The syntax for
regular expressions is discussed in
http://dev.mysql.com/doc/refman/5.6/en/regexp.html. Returns 1 if expr
matches pat; otherwise it returns 0. If either expr or pat is NULL, the
result is NULL. RLIKE is a synonym for REGEXP, provided for mSQL
compatibility.

The pattern need not be a literal string. For example, it can be
specified as a string expression or table column.

*Note*: Because MySQL uses the C escape syntax in strings (for example,
"\n" to represent the newline character), you must double any "\" that
you use in your REGEXP strings.

REGEXP is not case sensitive, except when used with binary strings.

URL: http://dev.mysql.com/doc/refman/5.6/en/regexp.html

","mysql> SELECT 'Monty!' REGEXP '.*';
        -> 1
mysql> SELECT 'new*\n*line' REGEXP 'new\\*.\\*line';
        -> 1
mysql> SELECT 'a' REGEXP 'A', 'a' REGEXP BINARY 'A';
        -> 1  0
mysql> SELECT 'a' REGEXP '^[a-d]';
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/regexp.html");
INSERT INTO help_topic VALUES("20","IF STATEMENT","24","Syntax:
IF search_condition THEN statement_list
    [ELSEIF search_condition THEN statement_list] ...
    [ELSE statement_list]
END IF

The IF statement for stored programs implements a basic conditional
construct.

*Note*: There is also an IF() function, which differs from the IF
statement described here. See
http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html. The
IF statement can have THEN, ELSE, and ELSEIF clauses, and it is
terminated with END IF.

If the search_condition evaluates to true, the corresponding THEN or
ELSEIF clause statement_list executes. If no search_condition matches,
the ELSE clause statement_list executes.

Each statement_list consists of one or more SQL statements; an empty
statement_list is not permitted.

URL: http://dev.mysql.com/doc/refman/5.6/en/if.html

","","http://dev.mysql.com/doc/refman/5.6/en/if.html");
INSERT INTO help_topic VALUES("21","VALIDATE_PASSWORD_STRENGTH","12","Syntax:
VALIDATE_PASSWORD_STRENGTH(str)

Given an argument representing a cleartext password, this function
returns an integer to indicate how strong the password is. The return
value ranges from 0 (weak) to 100 (strong).

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("22","WITHIN","31","Within(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially within g2. This
tests the opposite relationship as Contains().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("23","SHOW PLUGINS","27","Syntax:
SHOW PLUGINS

SHOW PLUGINS displays information about server plugins. Plugin
information is also available in the INFORMATION_SCHEMA.PLUGINS table.
See http://dev.mysql.com/doc/refman/5.6/en/plugins-table.html.

Example of SHOW PLUGINS output:

mysql> SHOW PLUGINS\G
*************************** 1. row ***************************
   Name: binlog
 Status: ACTIVE
   Type: STORAGE ENGINE
Library: NULL
License: GPL
*************************** 2. row ***************************
   Name: CSV
 Status: ACTIVE
   Type: STORAGE ENGINE
Library: NULL
License: GPL
*************************** 3. row ***************************
   Name: MEMORY
 Status: ACTIVE
   Type: STORAGE ENGINE
Library: NULL
License: GPL
*************************** 4. row ***************************
   Name: MyISAM
 Status: ACTIVE
   Type: STORAGE ENGINE
Library: NULL
License: GPL
...

URL: http://dev.mysql.com/doc/refman/5.6/en/show-plugins.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-plugins.html");
INSERT INTO help_topic VALUES("24","PREPARE","8","Syntax:
PREPARE stmt_name FROM preparable_stmt

The PREPARE statement prepares a SQL statement and assigns it a name,
stmt_name, by which to refer to the statement later. The prepared
statement is executed with EXECUTE and released with DEALLOCATE
PREPARE. For examples, see
http://dev.mysql.com/doc/refman/5.6/en/sql-syntax-prepared-statements.h
tml.

Statement names are not case sensitive. preparable_stmt is either a
string literal or a user variable that contains the text of the SQL
statement. The text must represent a single statement, not multiple
statements. Within the statement, ? characters can be used as parameter
markers to indicate where data values are to be bound to the query
later when you execute it. The ? characters should not be enclosed
within quotation marks, even if you intend to bind them to string
values. Parameter markers can be used only where data values should
appear, not for SQL keywords, identifiers, and so forth.

If a prepared statement with the given name already exists, it is
deallocated implicitly before the new statement is prepared. This means
that if the new statement contains an error and cannot be prepared, an
error is returned and no statement with the given name exists.

The scope of a prepared statement is the session within which it is
created, which as several implications:

o A prepared statement created in one session is not available to other
  sessions.

o When a session ends, whether normally or abnormally, its prepared
  statements no longer exist. If auto-reconnect is enabled, the client
  is not notified that the connection was lost. For this reason,
  clients may wish to disable auto-reconnect. See
  http://dev.mysql.com/doc/refman/5.6/en/auto-reconnect.html.

o A prepared statement created within a stored program continues to
  exist after the program finishes executing and can be executed
  outside the program later.

o A statement prepared in stored program context cannot refer to stored
  procedure or function parameters or local variables because they go
  out of scope when the program ends and would be unavailable were the
  statement to be executed later outside the program. As a workaround,
  refer instead to user-defined variables, which also have session
  scope; see
  http://dev.mysql.com/doc/refman/5.6/en/user-variables.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/prepare.html

","","http://dev.mysql.com/doc/refman/5.6/en/prepare.html");
INSERT INTO help_topic VALUES("25","LOCK","8","Syntax:
LOCK TABLES
    tbl_name [[AS] alias] lock_type
    [, tbl_name [[AS] alias] lock_type] ...

lock_type:
    READ [LOCAL]
  | [LOW_PRIORITY] WRITE

UNLOCK TABLES

MySQL enables client sessions to acquire table locks explicitly for the
purpose of cooperating with other sessions for access to tables, or to
prevent other sessions from modifying tables during periods when a
session requires exclusive access to them. A session can acquire or
release locks only for itself. One session cannot acquire locks for
another session or release locks held by another session.

Locks may be used to emulate transactions or to get more speed when
updating tables. This is explained in more detail later in this
section.

LOCK TABLES explicitly acquires table locks for the current client
session. Table locks can be acquired for base tables or views. You must
have the LOCK TABLES privilege, and the SELECT privilege for each
object to be locked.

For view locking, LOCK TABLES adds all base tables used in the view to
the set of tables to be locked and locks them automatically. If you
lock a table explicitly with LOCK TABLES, any tables used in triggers
are also locked implicitly, as described in
http://dev.mysql.com/doc/refman/5.6/en/lock-tables-and-triggers.html.

UNLOCK TABLES explicitly releases any table locks held by the current
session. LOCK TABLES implicitly releases any table locks held by the
current session before acquiring new locks.

Another use for UNLOCK TABLES is to release the global read lock
acquired with the FLUSH TABLES WITH READ LOCK statement, which enables
you to lock all tables in all databases. See [HELP FLUSH]. (This is a
very convenient way to get backups if you have a file system such as
Veritas that can take snapshots in time.)

URL: http://dev.mysql.com/doc/refman/5.6/en/lock-tables.html

","","http://dev.mysql.com/doc/refman/5.6/en/lock-tables.html");
INSERT INTO help_topic VALUES("26","SHOW BINARY LOGS","27","Syntax:
SHOW BINARY LOGS
SHOW MASTER LOGS

Lists the binary log files on the server. This statement is used as
part of the procedure described in [HELP PURGE BINARY LOGS], that shows
how to determine which logs can be purged.

mysql> SHOW BINARY LOGS;
+---------------+-----------+
| Log_name      | File_size |
+---------------+-----------+
| binlog.000015 |    724935 |
| binlog.000016 |    733481 |
+---------------+-----------+

URL: http://dev.mysql.com/doc/refman/5.6/en/show-binary-logs.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-binary-logs.html");
INSERT INTO help_topic VALUES("27","POLYGON","25","Polygon(ls1,ls2,...)

Constructs a Polygon value from a number of LineString or WKB
LineString arguments. If any argument does not represent a LinearRing
(that is, not a closed and simple LineString), the return value is
NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("28","MINUTE","32","Syntax:
MINUTE(time)

Returns the minute for time, in the range 0 to 59.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MINUTE('2008-02-03 10:05:03');
        -> 5
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("29","MID","38","Syntax:
MID(str,pos,len)

MID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("30","CONNECTION_ID","17","Syntax:
CONNECTION_ID()

Returns the connection ID (thread ID) for the connection. Every
connection has an ID that is unique among the set of currently
connected clients.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT CONNECTION_ID();
        -> 23786
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("31","FROM_BASE64()","38","Syntax:
FROM_BASE64(str)

Takes a string encoded with the base-64 encoded rules used by
TO_BASE64() and returns the decoded result as a binary string. The
result is NULL if the argument is NULL or not a valid base-64 string.
See the description of TO_BASE64() for details about the encoding and
decoding rules.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT TO_BASE64('abc'), FROM_BASE64(TO_BASE64('abc'));
        -> 'JWJj', 'abc'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("32","DELETE","28","Syntax:
DELETE is a DML statement that removes rows from a table.

Single-table syntax:

DELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name
    [PARTITION (partition_name,...)]
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

The DELETE statement deletes rows from tbl_name and returns the number
of deleted rows. To check the number of deleted rows, call the
ROW_COUNT() function described in
http://dev.mysql.com/doc/refman/5.6/en/information-functions.html.

Main Clauses

The conditions in the optional WHERE clause identify which rows to
delete. With no WHERE clause, all rows are deleted.

where_condition is an expression that evaluates to true for each row to
be deleted. It is specified as described in
http://dev.mysql.com/doc/refman/5.6/en/select.html.

If the ORDER BY clause is specified, the rows are deleted in the order
that is specified. The LIMIT clause places a limit on the number of
rows that can be deleted. These clauses apply to single-table deletes,
but not multi-table deletes.

Multiple-table syntax:

DELETE [LOW_PRIORITY] [QUICK] [IGNORE]
    tbl_name[.*] [, tbl_name[.*]] ...
    FROM table_references
    [WHERE where_condition]

Or:

DELETE [LOW_PRIORITY] [QUICK] [IGNORE]
    FROM tbl_name[.*] [, tbl_name[.*]] ...
    USING table_references
    [WHERE where_condition]

Privileges

You need the DELETE privilege on a table to delete rows from it. You
need only the SELECT privilege for any columns that are only read, such
as those named in the WHERE clause.

Performance

When you do not need to know the number of deleted rows, the TRUNCATE
TABLE statement is a faster way to empty a table than a DELETE
statement with no WHERE clause. Unlike DELETE, TRUNCATE TABLE cannot be
used within a transaction or if you have a lock on the table. See [HELP
TRUNCATE TABLE] and [HELP LOCK].

The speed of delete operations may also be affected by factors
discussed in http://dev.mysql.com/doc/refman/5.6/en/delete-speed.html.

To ensure that a given DELETE statement does not take too much time,
the MySQL-specific LIMIT row_count clause for DELETE specifies the
maximum number of rows to be deleted. If the number of rows to delete
is larger than the limit, repeat the DELETE statement until the number
of affected rows is less than the LIMIT value.

Subqueries

Currently, you cannot delete from a table and select from the same
table in a subquery.

Partitioned Tables

Beginning with MySQL 5.6.2, DELETE supports explicit partition
selection using the PARTITION option, which takes a comma-separated
list of the names of one or more partitions or subpartitions (or both)
from which to select rows to be dropped. Partitions not included in the
list are ignored. Given a partitioned table t with a partition named
p0, executing the statement DELETE FROM t PARTITION (p0) has the same
effect on the table as executing ALTER TABLE t TRUNCATE PARTITION (p0);
in both cases, all rows in partition p0 are dropped.

PARTITION can be used along with a WHERE condition, in which case the
condition is tested only on rows in the listed partitions. For example,
DELETE FROM t PARTITION (p0) WHERE c < 5 deletes rows only from
partition p0 for which the condition c < 5 is true; rows in any other
partitions are not checked and thus not affected by the DELETE.

The PARTITION option can also be used in multiple-table DELETE
statements. You can use up to one such option per table named in the
FROM option.

See http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html,
for more information and examples.

URL: http://dev.mysql.com/doc/refman/5.6/en/delete.html

","","http://dev.mysql.com/doc/refman/5.6/en/delete.html");
INSERT INTO help_topic VALUES("33","CLOSE","24","Syntax:
CLOSE cursor_name

This statement closes a previously opened cursor. For an example, see
http://dev.mysql.com/doc/refman/5.6/en/cursors.html.

An error occurs if the cursor is not open.

If not closed explicitly, a cursor is closed at the end of the BEGIN
... END block in which it was declared.

URL: http://dev.mysql.com/doc/refman/5.6/en/close.html

","","http://dev.mysql.com/doc/refman/5.6/en/close.html");
INSERT INTO help_topic VALUES("34","REPLACE FUNCTION","38","Syntax:
REPLACE(str,from_str,to_str)

Returns the string str with all occurrences of the string from_str
replaced by the string to_str. REPLACE() performs a case-sensitive
match when searching for from_str.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT REPLACE('www.mysql.com', 'w', 'Ww');
        -> 'WwWwWw.mysql.com'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("35","USE","29","Syntax:
USE db_name

The USE db_name statement tells MySQL to use the db_name database as
the default (current) database for subsequent statements. The database
remains the default until the end of the session or another USE
statement is issued:

USE db1;
SELECT COUNT(*) FROM mytable;   # selects from db1.mytable
USE db2;
SELECT COUNT(*) FROM mytable;   # selects from db2.mytable

URL: http://dev.mysql.com/doc/refman/5.6/en/use.html

","","http://dev.mysql.com/doc/refman/5.6/en/use.html");
INSERT INTO help_topic VALUES("36","CASE OPERATOR","7","Syntax:
CASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN
result ...] [ELSE result] END

CASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]
[ELSE result] END

The first version returns the result where value=compare_value. The
second version returns the result for the first condition that is true.
If there was no matching result value, the result after ELSE is
returned, or NULL if there is no ELSE part.

URL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html

","mysql> SELECT CASE 1 WHEN 1 THEN 'one'
    ->     WHEN 2 THEN 'two' ELSE 'more' END;
        -> 'one'
mysql> SELECT CASE WHEN 1>0 THEN 'true' ELSE 'false' END;
        -> 'true'
mysql> SELECT CASE BINARY 'B'
    ->     WHEN 'a' THEN 1 WHEN 'b' THEN 2 END;
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html");
INSERT INTO help_topic VALUES("37","SHOW MASTER STATUS","27","Syntax:
SHOW MASTER STATUS

This statement provides status information about the binary log files
of the master. It requires either the SUPER or REPLICATION CLIENT
privilege.

Example:

mysql> SHOW MASTER STATUS\G
*************************** 1. row ***************************
             File: master-bin.000002
         Position: 1307
     Binlog_Do_DB: test
 Binlog_Ignore_DB: manual, mysql
Executed_Gtid_Set: 3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5
1 row in set (0.00 sec)

URL: http://dev.mysql.com/doc/refman/5.6/en/show-master-status.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-master-status.html");
INSERT INTO help_topic VALUES("38","SPATIAL","35","For MyISAM tables, MySQL can create spatial indexes using syntax
similar to that for creating regular indexes, but extended with the
SPATIAL keyword. Currently, columns in spatial indexes must be declared
NOT NULL. The following examples demonstrate how to create spatial
indexes:

o With CREATE TABLE:

CREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g)) ENGINE=MyISAM;

o With ALTER TABLE:

ALTER TABLE geom ADD SPATIAL INDEX(g);

o With CREATE INDEX:

CREATE SPATIAL INDEX sp_index ON geom (g);

For MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage
engines that support nonspatial indexing of spatial columns, the engine
creates a B-tree index. A B-tree index on spatial values will be useful
for exact-value lookups, but not for range scans.

For more information on indexing spatial columns, see [HELP CREATE
INDEX].

To drop spatial indexes, use ALTER TABLE or DROP INDEX:

o With ALTER TABLE:

ALTER TABLE geom DROP INDEX g;

o With DROP INDEX:

DROP INDEX sp_index ON geom;

Example: Suppose that a table geom contains more than 32,000
geometries, which are stored in the column g of type GEOMETRY. The
table also has an AUTO_INCREMENT column fid for storing object ID
values.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-indexes.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-indexes.html");
INSERT INTO help_topic VALUES("39","TO_SECONDS","32","Syntax:
TO_SECONDS(expr)

Given a date or datetime expr, returns a the number of seconds since
the year 0. If expr is not a valid date or datetime value, returns
NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TO_SECONDS(950501);
        -> 62966505600
mysql> SELECT TO_SECONDS('2009-11-29');
        -> 63426672000
mysql> SELECT TO_SECONDS('2009-11-29 13:43:32');
        -> 63426721412
mysql> SELECT TO_SECONDS( NOW() );
        -> 63426721458
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("40","TIMESTAMPDIFF","32","Syntax:
TIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)

Returns datetime_expr2 - datetime_expr1, where datetime_expr1 and
datetime_expr2 are date or datetime expressions. One expression may be
a date and the other a datetime; a date value is treated as a datetime
having the time part '00:00:00' where necessary. The unit for the
result (an integer) is given by the unit argument. The legal values for
unit are the same as those listed in the description of the
TIMESTAMPADD() function.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIMESTAMPDIFF(MONTH,'2003-02-01','2003-05-01');
        -> 3
mysql> SELECT TIMESTAMPDIFF(YEAR,'2002-05-01','2001-01-01');
        -> -1
mysql> SELECT TIMESTAMPDIFF(MINUTE,'2003-02-01','2003-05-01 12:05:55');
        -> 128885
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("41","REVERSE","38","Syntax:
REVERSE(str)

Returns the string str with the order of the characters reversed.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT REVERSE('abc');
        -> 'cba'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("42","ISNULL","19","Syntax:
ISNULL(expr)

If expr is NULL, ISNULL() returns 1, otherwise it returns 0.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT ISNULL(1+1);
        -> 0
mysql> SELECT ISNULL(1/0);
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("43","BINARY","23","BINARY(M)

The BINARY type is similar to the CHAR type, but stores binary byte
strings rather than nonbinary character strings. M represents the
column length in bytes.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("44","BLOB DATA TYPE","23","A BLOB is a binary large object that can hold a variable amount of
data. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.
These differ only in the maximum length of the values they can hold.
The four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These
correspond to the four BLOB types and have the same maximum lengths and
storage requirements. See
http://dev.mysql.com/doc/refman/5.6/en/storage-requirements.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/blob.html

","","http://dev.mysql.com/doc/refman/5.6/en/blob.html");
INSERT INTO help_topic VALUES("45","CURRENT_USER","17","Syntax:
CURRENT_USER, CURRENT_USER()

Returns the user name and host name combination for the MySQL account
that the server used to authenticate the current client. This account
determines your access privileges. The return value is a string in the
utf8 character set.

The value of CURRENT_USER() can differ from the value of USER().

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT USER();
        -> 'davida@localhost'
mysql> SELECT * FROM mysql.user;
ERROR 1044: Access denied for user ''@'localhost' to
database 'mysql'
mysql> SELECT CURRENT_USER();
        -> '@localhost'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("46","<=","19","Syntax:
<=

Less than or equal:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 0.1 <= 2;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("47","SHOW PROFILES","27","Syntax:
SHOW PROFILES

The SHOW PROFILES statement, together with SHOW PROFILE, displays
profiling information that indicates resource usage for statements
executed during the course of the current session. For more
information, see [HELP SHOW PROFILE].

*Note*: These statements are deprecated as of MySQL 5.6.7 and will be
removed in a future MySQL release. Use the Performance Schema instead;
see http://dev.mysql.com/doc/refman/5.6/en/performance-schema.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-profiles.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-profiles.html");
INSERT INTO help_topic VALUES("48","UPDATE","28","Syntax:
Single-table syntax:

UPDATE [LOW_PRIORITY] [IGNORE] table_reference
    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...
    [WHERE where_condition]
    [ORDER BY ...]
    [LIMIT row_count]

Multiple-table syntax:

UPDATE [LOW_PRIORITY] [IGNORE] table_references
    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...
    [WHERE where_condition]

For the single-table syntax, the UPDATE statement updates columns of
existing rows in the named table with new values. The SET clause
indicates which columns to modify and the values they should be given.
Each value can be given as an expression, or the keyword DEFAULT to set
a column explicitly to its default value. The WHERE clause, if given,
specifies the conditions that identify which rows to update. With no
WHERE clause, all rows are updated. If the ORDER BY clause is
specified, the rows are updated in the order that is specified. The
LIMIT clause places a limit on the number of rows that can be updated.

For the multiple-table syntax, UPDATE updates rows in each table named
in table_references that satisfy the conditions. In this case, ORDER BY
and LIMIT cannot be used.

For partitioned tables, both the single-single and multiple-table forms
of this statement support the use of a PARTITION option as part of a
table reference. This option takes a list of one or more partitions or
subpartitions (or both). Only the partitions (or subpartitions) listed
are checked for matches, and a row that is not in any of these
partitions or subpartitions is not updated, whether it satisfies the
where_condition or not.

*Note*: Unlike the case when using PARTITION with an INSERT or REPLACE
statement, an otherwise valid UPDATE ... PARTITION statement is
considered successful even if no rows in the listed partitions (or
subpartitions) match the where_condition.

See http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html,
for more information and examples.

where_condition is an expression that evaluates to true for each row to
be updated. For expression syntax, see
http://dev.mysql.com/doc/refman/5.6/en/expressions.html.

table_references and where_condition are is specified as described in
http://dev.mysql.com/doc/refman/5.6/en/select.html.

You need the UPDATE privilege only for columns referenced in an UPDATE
that are actually updated. You need only the SELECT privilege for any
columns that are read but not modified.

The UPDATE statement supports the following modifiers:

o With the LOW_PRIORITY keyword, execution of the UPDATE is delayed
  until no other clients are reading from the table. This affects only
  storage engines that use only table-level locking (such as MyISAM,
  MEMORY, and MERGE).

o With the IGNORE keyword, the update statement does not abort even if
  errors occur during the update. Rows for which duplicate-key
  conflicts occur are not updated. Rows for which columns are updated
  to values that would cause data conversion errors are updated to the
  closest valid values instead.

URL: http://dev.mysql.com/doc/refman/5.6/en/update.html

","","http://dev.mysql.com/doc/refman/5.6/en/update.html");
INSERT INTO help_topic VALUES("49","CASE STATEMENT","24","Syntax:
CASE case_value
    WHEN when_value THEN statement_list
    [WHEN when_value THEN statement_list] ...
    [ELSE statement_list]
END CASE

Or:

CASE
    WHEN search_condition THEN statement_list
    [WHEN search_condition THEN statement_list] ...
    [ELSE statement_list]
END CASE

The CASE statement for stored programs implements a complex conditional
construct.

*Note*: There is also a CASE expression, which differs from the CASE
statement described here. See
http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html. The
CASE statement cannot have an ELSE NULL clause, and it is terminated
with END CASE instead of END.

For the first syntax, case_value is an expression. This value is
compared to the when_value expression in each WHEN clause until one of
them is equal. When an equal when_value is found, the corresponding
THEN clause statement_list executes. If no when_value is equal, the
ELSE clause statement_list executes, if there is one.

This syntax cannot be used to test for equality with NULL because NULL
= NULL is false. See
http://dev.mysql.com/doc/refman/5.6/en/working-with-null.html.

For the second syntax, each WHEN clause search_condition expression is
evaluated until one is true, at which point its corresponding THEN
clause statement_list executes. If no search_condition is equal, the
ELSE clause statement_list executes, if there is one.

If no when_value or search_condition matches the value tested and the
CASE statement contains no ELSE clause, a Case not found for CASE
statement error results.

Each statement_list consists of one or more SQL statements; an empty
statement_list is not permitted.

To handle situations where no value is matched by any WHEN clause, use
an ELSE containing an empty BEGIN ... END block, as shown in this
example. (The indentation used here in the ELSE clause is for purposes
of clarity only, and is not otherwise significant.)

DELIMITER |

CREATE PROCEDURE p()
  BEGIN
    DECLARE v INT DEFAULT 1;

    CASE v
      WHEN 2 THEN SELECT v;
      WHEN 3 THEN SELECT 0;
      ELSE
        BEGIN
        END;
    END CASE;
  END;
  |

URL: http://dev.mysql.com/doc/refman/5.6/en/case.html

","","http://dev.mysql.com/doc/refman/5.6/en/case.html");
INSERT INTO help_topic VALUES("50","EXECUTE STATEMENT","8","Syntax:
EXECUTE stmt_name
    [USING @var_name [, @var_name] ...]

After preparing a statement with PREPARE, you execute it with an
EXECUTE statement that refers to the prepared statement name. If the
prepared statement contains any parameter markers, you must supply a
USING clause that lists user variables containing the values to be
bound to the parameters. Parameter values can be supplied only by user
variables, and the USING clause must name exactly as many variables as
the number of parameter markers in the statement.

You can execute a given prepared statement multiple times, passing
different variables to it or setting the variables to different values
before each execution.

URL: http://dev.mysql.com/doc/refman/5.6/en/execute.html

","","http://dev.mysql.com/doc/refman/5.6/en/execute.html");
INSERT INTO help_topic VALUES("51","DROP INDEX","40","Syntax:
DROP INDEX index_name ON tbl_name
    [algorithm_option | lock_option] ...

algorithm_option:
    ALGORITHM [=] {DEFAULT|INPLACE|COPY}

lock_option:
    LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}

DROP INDEX drops the index named index_name from the table tbl_name.
This statement is mapped to an ALTER TABLE statement to drop the index.
See [HELP ALTER TABLE].

To drop a primary key, the index name is always PRIMARY, which must be
specified as a quoted identifier because PRIMARY is a reserved word:

DROP INDEX `PRIMARY` ON t;

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-index.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-index.html");
INSERT INTO help_topic VALUES("52","ABS","4","Syntax:
ABS(X)

Returns the absolute value of X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ABS(2);
        -> 2
mysql> SELECT ABS(-32);
        -> 32
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("53","IS_IPV4","14","Syntax:
IS_IPV4(expr)

Returns 1 if the argument is a valid IPv4 address specified as a
string, 0 otherwise.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT IS_IPV4('10.0.5.9'), IS_IPV4('10.0.5.256');
        -> 1, 0
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("54","POLYFROMWKB","33","PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])

Constructs a POLYGON value using its WKB representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("55","NOT LIKE","38","Syntax:
expr NOT LIKE pat [ESCAPE 'escape_char']

This is the same as NOT (expr LIKE pat [ESCAPE 'escape_char']).

URL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html");
INSERT INTO help_topic VALUES("56","SPACE","38","Syntax:
SPACE(N)

Returns a string consisting of N space characters.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT SPACE(6);
        -> '      '
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("57","MAX","16","Syntax:
MAX([DISTINCT] expr)

Returns the maximum value of expr. MAX() may take a string argument; in
such cases, it returns the maximum string value. See
http://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html. The DISTINCT
keyword can be used to find the maximum of the distinct values of expr,
however, this produces the same result as omitting DISTINCT.

MAX() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT student_name, MIN(test_score), MAX(test_score)
    ->        FROM student
    ->        GROUP BY student_name;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("58","CREATE FUNCTION UDF","22","Syntax:
CREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}
    SONAME shared_library_name

A user-defined function (UDF) is a way to extend MySQL with a new
function that works like a native (built-in) MySQL function such as
ABS() or CONCAT().

function_name is the name that should be used in SQL statements to
invoke the function. The RETURNS clause indicates the type of the
function's return value. DECIMAL is a legal value after RETURNS, but
currently DECIMAL functions return string values and should be written
like STRING functions.

shared_library_name is the basename of the shared object file that
contains the code that implements the function. The file must be
located in the plugin directory. This directory is given by the value
of the plugin_dir system variable. For more information, see
http://dev.mysql.com/doc/refman/5.6/en/udf-compiling.html.

To create a function, you must have the INSERT privilege for the mysql
database. This is necessary because CREATE FUNCTION adds a row to the
mysql.func system table that records the function's name, type, and
shared library name. If you do not have this table, you should run the
mysql_upgrade command to create it. See
http://dev.mysql.com/doc/refman/5.6/en/mysql-upgrade.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-function-udf.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-function-udf.html");
INSERT INTO help_topic VALUES("59","TIMESTAMP","23","TIMESTAMP[(fsp)]

A timestamp. The range is '1970-01-01 00:00:01.000000' UTC to
'2038-01-19 03:14:07.999999' UTC. TIMESTAMP values are stored as the
number of seconds since the epoch ('1970-01-01 00:00:00' UTC). A
TIMESTAMP cannot represent the value '1970-01-01 00:00:00' because that
is equivalent to 0 seconds from the epoch and the value 0 is reserved
for representing '0000-00-00 00:00:00', the "zero" TIMESTAMP value.

As of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may
be given to specify fractional seconds precision. A value of 0
signifies that there is no fractional part. If omitted, the default
precision is 0.

The way the server handles TIMESTAMP definitions depends on the value
of the explicit_defaults_for_timestamp system variable (see
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html).
By default, explicit_defaults_for_timestamp is disabled and the server
handles TIMESTAMP as follows:

Unless specified otherwise, the first TIMESTAMP column in a table is
defined to be automatically set to the date and time of the most recent
modification if not explicitly assigned a value. This makes TIMESTAMP
useful for recording the timestamp of an INSERT or UPDATE operation.
You can also set any TIMESTAMP column to the current date and time by
assigning it a NULL value, unless it has been defined with the NULL
attribute to permit NULL values.

Automatic initialization and updating to the current date and time can
be specified using DEFAULT CURRENT_TIMESTAMP and ON UPDATE
CURRENT_TIMESTAMP column definition clauses. By default, the first
TIMESTAMP column has these properties, as previously noted. As of MySQL
5.6.5, any TIMESTAMP column in a table can be defined to have these
properties. Before 5.6.5, at most one TIMESTAMP column per table can
have them, but it is possible to suppress them for the first column and
instead assign them to a different TIMESTAMP column. See
http://dev.mysql.com/doc/refman/5.6/en/timestamp-initialization.html.

If explicit_defaults_for_timestamp is enabled, there is no automatic
assignment of the DEFAULT CURRENT_TIMESTAMP or ON UPDATE
CURRENT_TIMESTAMP attributes to any TIMESTAMP column. They must be
included explicitly in the column definition. Also, any TIMESTAMP not
explicitly declared as NOT NULL permits NULL values.

explicit_defaults_for_timestamp is available as of MySQL 5.6.6. Before
5.6.6, the server handles TIMESTAMP as discussed for
explicit_defaults_for_timestamp disabled. Those behaviors, while they
remain the default, are nonstandard and are deprecated as of 5.6.6. For
discussion regarding upgrading to an installation with
explicit_defaults_for_timestamp enabled, see
http://dev.mysql.com/doc/refman/5.6/en/upgrading-from-previous-series.h
tml.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html");
INSERT INTO help_topic VALUES("60","CACHE INDEX","27","Syntax:
CACHE INDEX
  tbl_index_list [, tbl_index_list] ...
  [PARTITION (partition_list | ALL)]
  IN key_cache_name

tbl_index_list:
  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]

partition_list:
  partition_name[, partition_name][, ...]

The CACHE INDEX statement assigns table indexes to a specific key
cache. It is used only for MyISAM tables. After the indexes have been
assigned, they can be preloaded into the cache if desired with LOAD
INDEX INTO CACHE.

The following statement assigns indexes from the tables t1, t2, and t3
to the key cache named hot_cache:

mysql> CACHE INDEX t1, t2, t3 IN hot_cache;
+---------+--------------------+----------+----------+
| Table   | Op                 | Msg_type | Msg_text |
+---------+--------------------+----------+----------+
| test.t1 | assign_to_keycache | status   | OK       |
| test.t2 | assign_to_keycache | status   | OK       |
| test.t3 | assign_to_keycache | status   | OK       |
+---------+--------------------+----------+----------+

URL: http://dev.mysql.com/doc/refman/5.6/en/cache-index.html

","","http://dev.mysql.com/doc/refman/5.6/en/cache-index.html");
INSERT INTO help_topic VALUES("61","COMPRESS","12","Syntax:
COMPRESS(string_to_compress)

Compresses a string and returns the result as a binary string. This
function requires MySQL to have been compiled with a compression
library such as zlib. Otherwise, the return value is always NULL. The
compressed string can be uncompressed with UNCOMPRESS().

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT LENGTH(COMPRESS(REPEAT('a',1000)));
        -> 21
mysql> SELECT LENGTH(COMPRESS(''));
        -> 0
mysql> SELECT LENGTH(COMPRESS('a'));
        -> 13
mysql> SELECT LENGTH(COMPRESS(REPEAT('a',16)));
        -> 15
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("62","HANDLER","28","Syntax:
HANDLER tbl_name OPEN [ [AS] alias]

HANDLER tbl_name READ index_name { = | <= | >= | < | > } (value1,value2,...)
    [ WHERE where_condition ] [LIMIT ... ]
HANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }
    [ WHERE where_condition ] [LIMIT ... ]
HANDLER tbl_name READ { FIRST | NEXT }
    [ WHERE where_condition ] [LIMIT ... ]

HANDLER tbl_name CLOSE

The HANDLER statement provides direct access to table storage engine
interfaces. It is available for InnoDB and MyISAM tables.

URL: http://dev.mysql.com/doc/refman/5.6/en/handler.html

","","http://dev.mysql.com/doc/refman/5.6/en/handler.html");
INSERT INTO help_topic VALUES("63","HELP_DATE","9","This help information was generated from the MySQL 5.6 Reference Manual
on: 2013-04-05
","","");
INSERT INTO help_topic VALUES("64","RENAME TABLE","40","Syntax:
RENAME TABLE tbl_name TO new_tbl_name
    [, tbl_name2 TO new_tbl_name2] ...

This statement renames one or more tables.

The rename operation is done atomically, which means that no other
session can access any of the tables while the rename is running. For
example, if you have an existing table old_table, you can create
another table new_table that has the same structure but is empty, and
then replace the existing table with the empty one as follows (assuming
that backup_table does not already exist):

URL: http://dev.mysql.com/doc/refman/5.6/en/rename-table.html

","CREATE TABLE new_table (...);
RENAME TABLE old_table TO backup_table, new_table TO old_table;
","http://dev.mysql.com/doc/refman/5.6/en/rename-table.html");
INSERT INTO help_topic VALUES("65","BOOLEAN","23","BOOL, BOOLEAN

These types are synonyms for TINYINT(1). A value of zero is considered
false. Nonzero values are considered true:

mysql> SELECT IF(0, 'true', 'false');
+------------------------+
| IF(0, 'true', 'false') |
+------------------------+
| false                  |
+------------------------+

mysql> SELECT IF(1, 'true', 'false');
+------------------------+
| IF(1, 'true', 'false') |
+------------------------+
| true                   |
+------------------------+

mysql> SELECT IF(2, 'true', 'false');
+------------------------+
| IF(2, 'true', 'false') |
+------------------------+
| true                   |
+------------------------+

However, the values TRUE and FALSE are merely aliases for 1 and 0,
respectively, as shown here:

mysql> SELECT IF(0 = FALSE, 'true', 'false');
+--------------------------------+
| IF(0 = FALSE, 'true', 'false') |
+--------------------------------+
| true                           |
+--------------------------------+

mysql> SELECT IF(1 = TRUE, 'true', 'false');
+-------------------------------+
| IF(1 = TRUE, 'true', 'false') |
+-------------------------------+
| true                          |
+-------------------------------+

mysql> SELECT IF(2 = TRUE, 'true', 'false');
+-------------------------------+
| IF(2 = TRUE, 'true', 'false') |
+-------------------------------+
| false                         |
+-------------------------------+

mysql> SELECT IF(2 = FALSE, 'true', 'false');
+--------------------------------+
| IF(2 = FALSE, 'true', 'false') |
+--------------------------------+
| false                          |
+--------------------------------+

The last two statements display the results shown because 2 is equal to
neither 1 nor 0.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("66","MOD","4","Syntax:
MOD(N,M), N % M, N MOD M

Modulo operation. Returns the remainder of N divided by M.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT MOD(234, 10);
        -> 4
mysql> SELECT 253 % 7;
        -> 1
mysql> SELECT MOD(29,9);
        -> 2
mysql> SELECT 29 MOD 9;
        -> 2
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("67","HELP STATEMENT","29","Syntax:
HELP 'search_string'

The HELP statement returns online information from the MySQL Reference
manual. Its proper operation requires that the help tables in the mysql
database be initialized with help topic information (see
http://dev.mysql.com/doc/refman/5.6/en/server-side-help-support.html).

The HELP statement searches the help tables for the given search string
and displays the result of the search. The search string is not case
sensitive.

The search string can contain the the wildcard characters "%" and "_".
These have the same meaning as for pattern-matching operations
performed with the LIKE operator. For example, HELP 'rep%' returns a
list of topics that begin with rep.

URL: http://dev.mysql.com/doc/refman/5.6/en/help.html

","","http://dev.mysql.com/doc/refman/5.6/en/help.html");
INSERT INTO help_topic VALUES("68","UCASE","38","Syntax:
UCASE(str)

UCASE() is a synonym for UPPER().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("69","SHOW BINLOG EVENTS","27","Syntax:
SHOW BINLOG EVENTS
   [IN 'log_name'] [FROM pos] [LIMIT [offset,] row_count]

Shows the events in the binary log. If you do not specify 'log_name',
the first binary log is displayed.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-binlog-events.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-binlog-events.html");
INSERT INTO help_topic VALUES("70","MPOLYFROMWKB","33","MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])

Constructs a MULTIPOLYGON value using its WKB representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("71","ITERATE","24","Syntax:
ITERATE label

ITERATE can appear only within LOOP, REPEAT, and WHILE statements.
ITERATE means "start the loop again."

URL: http://dev.mysql.com/doc/refman/5.6/en/iterate.html

","","http://dev.mysql.com/doc/refman/5.6/en/iterate.html");
INSERT INTO help_topic VALUES("72","DO","28","Syntax:
DO expr [, expr] ...

DO executes the expressions but does not return any results. In most
respects, DO is shorthand for SELECT expr, ..., but has the advantage
that it is slightly faster when you do not care about the result.

DO is useful primarily with functions that have side effects, such as
RELEASE_LOCK().

URL: http://dev.mysql.com/doc/refman/5.6/en/do.html

","","http://dev.mysql.com/doc/refman/5.6/en/do.html");
INSERT INTO help_topic VALUES("73","CHAR_LENGTH","38","Syntax:
CHAR_LENGTH(str)

Returns the length of the string str, measured in characters. A
multi-byte character counts as a single character. This means that for
a string containing five 2-byte characters, LENGTH() returns 10,
whereas CHAR_LENGTH() returns 5.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("74","DATE","23","DATE

A date. The supported range is '1000-01-01' to '9999-12-31'. MySQL
displays DATE values in 'YYYY-MM-DD' format, but permits assignment of
values to DATE columns using either strings or numbers.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html");
INSERT INTO help_topic VALUES("75","EXTRACTVALUE","38","Syntax:
ExtractValue(xml_frag, xpath_expr)

ExtractValue() takes two string arguments, a fragment of XML markup
xml_frag and an XPath expression xpath_expr (also known as a locator);
it returns the text (CDATA) of the first text node which is a child of
the elements or elements matched by the XPath expression. In MySQL
5.6.6 and earlier, the XPath expression could contain at most 127
characters. This limitation was lifted in MySQL 5.6.7. (Bug #13007062,
Bug#62429)

Using this function is the equivalent of performing a match using the
xpath_expr after appending /text(). In other words,
ExtractValue('<a><b>Sakila</b></a>', '/a/b') and
ExtractValue('<a><b>Sakila</b></a>', '/a/b/text()') produce the same
result.

If multiple matches are found, the content of the first child text node
of each matching element is returned (in the order matched) as a
single, space-delimited string.

If no matching text node is found for the expression (including the
implicit /text())---for whatever reason, as long as xpath_expr is
valid, and xml_frag consists of elements which are properly nested and
closed---an empty string is returned. No distinction is made between a
match on an empty element and no match at all. This is by design.

If you need to determine whether no matching element was found in
xml_frag or such an element was found but contained no child text
nodes, you should test the result of an expression that uses the XPath
count() function. For example, both of these statements return an empty
string, as shown here:

mysql> SELECT ExtractValue('<a><b/></a>', '/a/b');
+-------------------------------------+
| ExtractValue('<a><b/></a>', '/a/b') |
+-------------------------------------+
|                                     |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT ExtractValue('<a><c/></a>', '/a/b');
+-------------------------------------+
| ExtractValue('<a><c/></a>', '/a/b') |
+-------------------------------------+
|                                     |
+-------------------------------------+
1 row in set (0.00 sec)

However, you can determine whether there was actually a matching
element using the following:

mysql> SELECT ExtractValue('<a><b/></a>', 'count(/a/b)');
+-------------------------------------+
| ExtractValue('<a><b/></a>', 'count(/a/b)') |
+-------------------------------------+
| 1                                   |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT ExtractValue('<a><c/></a>', 'count(/a/b)');
+-------------------------------------+
| ExtractValue('<a><c/></a>', 'count(/a/b)') |
+-------------------------------------+
| 0                                   |
+-------------------------------------+
1 row in set (0.01 sec)

*Important*: ExtractValue() returns only CDATA, and does not return any
tags that might be contained within a matching tag, nor any of their
content (see the result returned as val1 in the following example).

URL: http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html

","mysql> SELECT
    ->   ExtractValue('<a>ccc<b>ddd</b></a>', '/a') AS val1,
    ->   ExtractValue('<a>ccc<b>ddd</b></a>', '/a/b') AS val2,
    ->   ExtractValue('<a>ccc<b>ddd</b></a>', '//b') AS val3,
    ->   ExtractValue('<a>ccc<b>ddd</b></a>', '/b') AS val4,
    ->   ExtractValue('<a>ccc<b>ddd</b><b>eee</b></a>', '//b') AS val5;

+------+------+------+------+---------+
| val1 | val2 | val3 | val4 | val5    |
+------+------+------+------+---------+
| ccc  | ddd  | ddd  |      | ddd eee |
+------+------+------+------+---------+
","http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html");
INSERT INTO help_topic VALUES("76","OLD_PASSWORD","12","Syntax:
OLD_PASSWORD(str)

OLD_PASSWORD() was added when the implementation of PASSWORD() was
changed in MySQL 4.1 to improve security. OLD_PASSWORD() returns the
value of the pre-4.1 implementation of PASSWORD() as a string, and is
intended to permit you to reset passwords for any pre-4.1 clients that
need to connect to your version 5.6 MySQL server without locking them
out. See http://dev.mysql.com/doc/refman/5.6/en/password-hashing.html.

The return value is a nonbinary string in the connection character set.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("77","FORMAT","38","Syntax:
FORMAT(X,D[,locale])

Formats the number X to a format like '#,###,###.##', rounded to D
decimal places, and returns the result as a string. If D is 0, the
result has no decimal point or fractional part.

The optional third parameter enables a locale to be specified to be
used for the result number's decimal point, thousands separator, and
grouping between separators. Permissible locale values are the same as
the legal values for the lc_time_names system variable (see
http://dev.mysql.com/doc/refman/5.6/en/locale-support.html). If no
locale is specified, the default is 'en_US'.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT FORMAT(12332.123456, 4);
        -> '12,332.1235'
mysql> SELECT FORMAT(12332.1,4);
        -> '12,332.1000'
mysql> SELECT FORMAT(12332.2,0);
        -> '12,332'
mysql> SELECT FORMAT(12332.2,2,'de_DE');
        -> '12.332,20'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("78","||","15","Syntax:
OR, ||

Logical OR. When both operands are non-NULL, the result is 1 if any
operand is nonzero, and 0 otherwise. With a NULL operand, the result is
1 if the other operand is nonzero, and NULL otherwise. If both operands
are NULL, the result is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html

","mysql> SELECT 1 || 1;
        -> 1
mysql> SELECT 1 || 0;
        -> 1
mysql> SELECT 0 || 0;
        -> 0
mysql> SELECT 0 || NULL;
        -> NULL
mysql> SELECT 1 || NULL;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html");
INSERT INTO help_topic VALUES("79","BIT_LENGTH","38","Syntax:
BIT_LENGTH(str)

Returns the length of the string str in bits.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT BIT_LENGTH('text');
        -> 32
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("80","EXTERIORRING","2","ExteriorRing(poly)

Returns the exterior ring of the Polygon value poly as a LineString.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @poly =
    -> 'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))';
mysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));
+-------------------------------------------+
| AsText(ExteriorRing(GeomFromText(@poly))) |
+-------------------------------------------+
| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |
+-------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("81","GEOMFROMWKB","33","GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])

Constructs a geometry value of any type using its WKB representation
and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("82","BETWEEN AND","19","Syntax:
expr BETWEEN min AND max

If expr is greater than or equal to min and expr is less than or equal
to max, BETWEEN returns 1, otherwise it returns 0. This is equivalent
to the expression (min <= expr AND expr <= max) if all the arguments
are of the same type. Otherwise type conversion takes place according
to the rules described in
http://dev.mysql.com/doc/refman/5.6/en/type-conversion.html, but
applied to all the three arguments.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 2 BETWEEN 1 AND 3, 2 BETWEEN 3 and 1;
        -> 1, 0
mysql> SELECT 1 BETWEEN 2 AND 3;
        -> 0
mysql> SELECT 'b' BETWEEN 'a' AND 'c';
        -> 1
mysql> SELECT 2 BETWEEN 2 AND '3';
        -> 1
mysql> SELECT 2 BETWEEN 2 AND 'x-3';
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("83","MULTIPOLYGON","25","MultiPolygon(poly1,poly2,...)

Constructs a MultiPolygon value from a set of Polygon or WKB Polygon
arguments.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("84","LEFT","38","Syntax:
LEFT(str,len)

Returns the leftmost len characters from the string str, or NULL if any
argument is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT LEFT('foobarbar', 5);
        -> 'fooba'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("85","FLUSH QUERY CACHE","27","You can defragment the query cache to better utilize its memory with
the FLUSH QUERY CACHE statement. The statement does not remove any
queries from the cache.

The RESET QUERY CACHE statement removes all query results from the
query cache. The FLUSH TABLES statement also does this.

URL: http://dev.mysql.com/doc/refman/5.6/en/query-cache-status-and-maintenance.html

","","http://dev.mysql.com/doc/refman/5.6/en/query-cache-status-and-maintenance.html");
INSERT INTO help_topic VALUES("86","SET DATA TYPE","23","SET('value1','value2',...) [CHARACTER SET charset_name] [COLLATE
collation_name]

A set. A string object that can have zero or more values, each of which
must be chosen from the list of values 'value1', 'value2', ... SET
values are represented internally as integers.

A SET column can have a maximum of 64 distinct members. A table can
have no more than 255 unique element list definitions among its ENUM
and SET columns considered as a group. For more information on this
limit, see http://dev.mysql.com/doc/refman/5.6/en/limits-frm-file.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("87","RAND","4","Syntax:
RAND(), RAND(N)

Returns a random floating-point value v in the range 0 <= v < 1.0. If a
constant integer argument N is specified, it is used as the seed value,
which produces a repeatable sequence of column values. In the following
example, note that the sequences of values produced by RAND(3) is the
same both places where it occurs.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> CREATE TABLE t (i INT);
Query OK, 0 rows affected (0.42 sec)

mysql> INSERT INTO t VALUES(1),(2),(3);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT i, RAND() FROM t;
+------+------------------+
| i    | RAND()           |
+------+------------------+
|    1 | 0.61914388706828 |
|    2 | 0.93845168309142 |
|    3 | 0.83482678498591 |
+------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT i, RAND(3) FROM t;
+------+------------------+
| i    | RAND(3)          |
+------+------------------+
|    1 | 0.90576975597606 |
|    2 | 0.37307905813035 |
|    3 | 0.14808605345719 |
+------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT i, RAND() FROM t;
+------+------------------+
| i    | RAND()           |
+------+------------------+
|    1 | 0.35877890638893 |
|    2 | 0.28941420772058 |
|    3 | 0.37073435016976 |
+------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT i, RAND(3) FROM t;
+------+------------------+
| i    | RAND(3)          |
+------+------------------+
|    1 | 0.90576975597606 |
|    2 | 0.37307905813035 |
|    3 | 0.14808605345719 |
+------+------------------+
3 rows in set (0.01 sec)
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("88","RPAD","38","Syntax:
RPAD(str,len,padstr)

Returns the string str, right-padded with the string padstr to a length
of len characters. If str is longer than len, the return value is
shortened to len characters.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT RPAD('hi',5,'?');
        -> 'hi???'
mysql> SELECT RPAD('hi',1,'?');
        -> 'h'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("89","DEC","23","DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]
[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]

These types are synonyms for DECIMAL. The FIXED synonym is available
for compatibility with other database systems.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("90","ELT","38","Syntax:
ELT(N,str1,str2,str3,...)

ELT() returns the Nth element of the list of strings: str1 if N = 1,
str2 if N = 2, and so on. Returns NULL if N is less than 1 or greater
than the number of arguments. ELT() is the complement of FIELD().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT ELT(1, 'ej', 'Heja', 'hej', 'foo');
        -> 'ej'
mysql> SELECT ELT(4, 'ej', 'Heja', 'hej', 'foo');
        -> 'foo'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("91","ALTER VIEW","40","Syntax:
ALTER
    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]
    VIEW view_name [(column_list)]
    AS select_statement
    [WITH [CASCADED | LOCAL] CHECK OPTION]

This statement changes the definition of a view, which must exist. The
syntax is similar to that for CREATE VIEW and the effect is the same as
for CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement
requires the CREATE VIEW and DROP privileges for the view, and some
privilege for each column referred to in the SELECT statement. ALTER
VIEW is permitted only to the definer or users with the SUPER
privilege.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-view.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-view.html");
INSERT INTO help_topic VALUES("92","SHOW DATABASES","27","Syntax:
SHOW {DATABASES | SCHEMAS}
    [LIKE 'pattern' | WHERE expr]

SHOW DATABASES lists the databases on the MySQL server host. SHOW
SCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,
indicates which database names to match. The WHERE clause can be given
to select rows using more general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

You see only those databases for which you have some kind of privilege,
unless you have the global SHOW DATABASES privilege. You can also get
this list using the mysqlshow command.

If the server was started with the --skip-show-database option, you
cannot use this statement at all unless you have the SHOW DATABASES
privilege.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-databases.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-databases.html");
INSERT INTO help_topic VALUES("93","SEC_TO_TIME","32","Syntax:
SEC_TO_TIME(seconds)

Returns the seconds argument, converted to hours, minutes, and seconds,
as a TIME value. The range of the result is constrained to that of the
TIME data type. A warning occurs if the argument corresponds to a value
outside that range.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT SEC_TO_TIME(2378);
        -> '00:39:38'
mysql> SELECT SEC_TO_TIME(2378) + 0;
        -> 3938
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("94","LOCATE","38","Syntax:
LOCATE(substr,str), LOCATE(substr,str,pos)

The first syntax returns the position of the first occurrence of
substring substr in string str. The second syntax returns the position
of the first occurrence of substring substr in string str, starting at
position pos. Returns 0 if substr is not in str.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT LOCATE('bar', 'foobarbar');
        -> 4
mysql> SELECT LOCATE('xbar', 'foobar');
        -> 0
mysql> SELECT LOCATE('bar', 'foobarbar', 5);
        -> 7
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("95","SHOW EVENTS","27","Syntax:
SHOW EVENTS [{FROM | IN} schema_name]
    [LIKE 'pattern' | WHERE expr]

This statement displays information about Event Manager events. It
requires the EVENT privilege for the database from which the events are
to be shown.

In its simplest form, SHOW EVENTS lists all of the events in the
current schema:

mysql> SELECT CURRENT_USER(), SCHEMA();
+----------------+----------+
| CURRENT_USER() | SCHEMA() |
+----------------+----------+
| jon@ghidora    | myschema |
+----------------+----------+
1 row in set (0.00 sec)

mysql> SHOW EVENTS\G
*************************** 1. row ***************************
                  Db: myschema
                Name: e_daily
             Definer: jon@ghidora
           Time zone: SYSTEM
                Type: RECURRING
          Execute at: NULL
      Interval value: 10
      Interval field: SECOND
              Starts: 2006-02-09 10:41:23
                Ends: NULL
              Status: ENABLED
          Originator: 0
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci

To see events for a specific schema, use the FROM clause. For example,
to see events for the test schema, use the following statement:

SHOW EVENTS FROM test;

The LIKE clause, if present, indicates which event names to match. The
WHERE clause can be given to select rows using more general conditions,
as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-events.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-events.html");
INSERT INTO help_topic VALUES("96","LONGTEXT","23","LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]

A TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)
characters. The effective maximum length is less if the value contains
multi-byte characters. The effective maximum length of LONGTEXT columns
also depends on the configured maximum packet size in the client/server
protocol and available memory. Each LONGTEXT value is stored using a
4-byte length prefix that indicates the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("97","KILL","27","Syntax:
KILL [CONNECTION | QUERY] thread_id

Each connection to mysqld runs in a separate thread. You can see which
threads are running with the SHOW PROCESSLIST statement and kill a
thread with the KILL thread_id statement.

KILL permits an optional CONNECTION or QUERY modifier:

o KILL CONNECTION is the same as KILL with no modifier: It terminates
  the connection associated with the given thread_id.

o KILL QUERY terminates the statement that the connection is currently
  executing, but leaves the connection itself intact.

If you have the PROCESS privilege, you can see all threads. If you have
the SUPER privilege, you can kill all threads and statements.
Otherwise, you can see and kill only your own threads and statements.

You can also use the mysqladmin processlist and mysqladmin kill
commands to examine and kill threads.

*Note*: You cannot use KILL with the Embedded MySQL Server library
because the embedded server merely runs inside the threads of the host
application. It does not create any connection threads of its own.

URL: http://dev.mysql.com/doc/refman/5.6/en/kill.html

","","http://dev.mysql.com/doc/refman/5.6/en/kill.html");
INSERT INTO help_topic VALUES("98","DISJOINT","31","Disjoint(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially disjoint from (does
not intersect) g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("99","LPAD","38","Syntax:
LPAD(str,len,padstr)

Returns the string str, left-padded with the string padstr to a length
of len characters. If str is longer than len, the return value is
shortened to len characters.


URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT LPAD('hi',4,'??');
        -> '??hi'
mysql> SELECT LPAD('hi',1,'??');
        -> 'h'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("100","OVERLAPS","31","Overlaps(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially overlaps g2. The term
spatially overlaps is used if two geometries intersect and their
intersection results in a geometry of the same dimension but not equal
to either of the given geometries.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("101","SET GLOBAL SQL_SLAVE_SKIP_COUNTER","8","Syntax:
SET GLOBAL sql_slave_skip_counter = N

This statement skips the next N events from the master. This is useful
for recovering from replication stops caused by a statement.

This statement is valid only when the slave threads are not running.
Otherwise, it produces an error.

URL: http://dev.mysql.com/doc/refman/5.6/en/set-global-sql-slave-skip-counter.html

","","http://dev.mysql.com/doc/refman/5.6/en/set-global-sql-slave-skip-counter.html");
INSERT INTO help_topic VALUES("102","MBREQUAL","6","MBREqual(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangles of
the two geometries g1 and g2 are the same.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("103","PROCEDURE ANALYSE","34","Syntax:
ANALYSE([max_elements[,max_memory]])

ANALYSE() examines the result from a query and returns an analysis of
the results that suggests optimal data types for each column that may
help reduce table sizes. To obtain this analysis, append PROCEDURE
ANALYSE to the end of a SELECT statement:

SELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])

For example:

SELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);

The results show some statistics for the values returned by the query,
and propose an optimal data type for the columns. This can be helpful
for checking your existing tables, or after importing new data. You may
need to try different settings for the arguments so that PROCEDURE
ANALYSE() does not suggest the ENUM data type when it is not
appropriate.

The arguments are optional and are used as follows:

o max_elements (default 256) is the maximum number of distinct values
  that ANALYSE() notices per column. This is used by ANALYSE() to check
  whether the optimal data type should be of type ENUM; if there are
  more than max_elements distinct values, then ENUM is not a suggested
  type.

o max_memory (default 8192) is the maximum amount of memory that
  ANALYSE() should allocate per column while trying to find all
  distinct values.

URL: http://dev.mysql.com/doc/refman/5.6/en/procedure-analyse.html

","","http://dev.mysql.com/doc/refman/5.6/en/procedure-analyse.html");
INSERT INTO help_topic VALUES("104","HELP_VERSION","9","This help information was generated from the MySQL 5.6 Reference Manual
on: 2013-04-05 (revision: 34849)

This information applies to MySQL 5.6 through 5.6.12.
","","");
INSERT INTO help_topic VALUES("105","CHARACTER_LENGTH","38","Syntax:
CHARACTER_LENGTH(str)

CHARACTER_LENGTH() is a synonym for CHAR_LENGTH().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("106","SHOW PRIVILEGES","27","Syntax:
SHOW PRIVILEGES

SHOW PRIVILEGES shows the list of system privileges that the MySQL
server supports. The exact list of privileges depends on the version of
your server.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-privileges.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-privileges.html");
INSERT INTO help_topic VALUES("107","INSERT FUNCTION","38","Syntax:
INSERT(str,pos,len,newstr)

Returns the string str, with the substring beginning at position pos
and len characters long replaced by the string newstr. Returns the
original string if pos is not within the length of the string. Replaces
the rest of the string from position pos if len is not within the
length of the rest of the string. Returns NULL if any argument is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT INSERT('Quadratic', 3, 4, 'What');
        -> 'QuWhattic'
mysql> SELECT INSERT('Quadratic', -1, 4, 'What');
        -> 'Quadratic'
mysql> SELECT INSERT('Quadratic', 3, 100, 'What');
        -> 'QuWhat'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("108","XOR","15","Syntax:
XOR

Logical XOR. Returns NULL if either operand is NULL. For non-NULL
operands, evaluates to 1 if an odd number of operands is nonzero,
otherwise 0 is returned.

URL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html

","mysql> SELECT 1 XOR 1;
        -> 0
mysql> SELECT 1 XOR 0;
        -> 1
mysql> SELECT 1 XOR NULL;
        -> NULL
mysql> SELECT 1 XOR 1 XOR 1;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html");
INSERT INTO help_topic VALUES("109","GRANT","10","Syntax:
GRANT
    priv_type [(column_list)]
      [, priv_type [(column_list)]] ...
    ON [object_type] priv_level
    TO user_specification [, user_specification] ...
    [REQUIRE {NONE | ssl_option [[AND] ssl_option] ...}]
    [WITH with_option ...]

GRANT PROXY ON user_specification
    TO user_specification [, user_specification] ...
    [WITH GRANT OPTION]

object_type:
    TABLE
  | FUNCTION
  | PROCEDURE

priv_level:
    *
  | *.*
  | db_name.*
  | db_name.tbl_name
  | tbl_name
  | db_name.routine_name

user_specification:
    user
    [
        IDENTIFIED BY [PASSWORD] 'password'
      | IDENTIFIED WITH auth_plugin [AS 'auth_string']
    ]

ssl_option:
    SSL
  | X509
  | CIPHER 'cipher'
  | ISSUER 'issuer'
  | SUBJECT 'subject'

with_option:
    GRANT OPTION
  | MAX_QUERIES_PER_HOUR count
  | MAX_UPDATES_PER_HOUR count
  | MAX_CONNECTIONS_PER_HOUR count
  | MAX_USER_CONNECTIONS count

The GRANT statement grants privileges to MySQL user accounts. GRANT
also serves to specify other account characteristics such as use of
secure connections and limits on access to server resources. To use
GRANT, you must have the GRANT OPTION privilege, and you must have the
privileges that you are granting.

Normally, a database administrator first uses CREATE USER to create an
account, then GRANT to define its privileges and characteristics. For
example:

CREATE USER 'jeffrey'@'localhost' IDENTIFIED BY 'mypass';
GRANT ALL ON db1.* TO 'jeffrey'@'localhost';
GRANT SELECT ON db2.invoice TO 'jeffrey'@'localhost';
GRANT USAGE ON *.* TO 'jeffrey'@'localhost' WITH MAX_QUERIES_PER_HOUR 90;

However, if an account named in a GRANT statement does not already
exist, GRANT may create it under the conditions described later in the
discussion of the NO_AUTO_CREATE_USER SQL mode.

The REVOKE statement is related to GRANT and enables administrators to
remove account privileges. See [HELP REVOKE].

When successfully executed from the mysql program, GRANT responds with
Query OK, 0 rows affected. To determine what privileges result from the
operation, use SHOW GRANTS. See [HELP SHOW GRANTS].

URL: http://dev.mysql.com/doc/refman/5.6/en/grant.html

","","http://dev.mysql.com/doc/refman/5.6/en/grant.html");
INSERT INTO help_topic VALUES("110","MBRINTERSECTS","6","MBRIntersects(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangles of
the two geometries g1 and g2 intersect.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("111","IS NOT","19","Syntax:
IS NOT boolean_value

Tests a value against a boolean value, where boolean_value can be TRUE,
FALSE, or UNKNOWN.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;
        -> 1, 1, 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("112","SQRT","4","Syntax:
SQRT(X)

Returns the square root of a nonnegative number X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT SQRT(4);
        -> 2
mysql> SELECT SQRT(20);
        -> 4.4721359549996
mysql> SELECT SQRT(-16);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("113","CREATE INDEX","40","Syntax:
CREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name
    [index_type]
    ON tbl_name (index_col_name,...)
    [algorithm_option | lock_option] ...

index_col_name:
    col_name [(length)] [ASC | DESC]

index_type:
    USING {BTREE | HASH}

index_option:
    KEY_BLOCK_SIZE [=] value
  | index_type
  | WITH PARSER parser_name
  | COMMENT 'string'

algorithm_option:
    ALGORITHM [=] {DEFAULT|INPLACE|COPY}

lock_option:
    LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}

CREATE INDEX is mapped to an ALTER TABLE statement to create indexes.
See [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY
KEY; use ALTER TABLE instead. For more information about indexes, see
http://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-index.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-index.html");
INSERT INTO help_topic VALUES("114","ALTER DATABASE","40","Syntax:
ALTER {DATABASE | SCHEMA} [db_name]
    alter_specification ...
ALTER {DATABASE | SCHEMA} db_name
    UPGRADE DATA DIRECTORY NAME

alter_specification:
    [DEFAULT] CHARACTER SET [=] charset_name
  | [DEFAULT] COLLATE [=] collation_name

ALTER DATABASE enables you to change the overall characteristics of a
database. These characteristics are stored in the db.opt file in the
database directory. To use ALTER DATABASE, you need the ALTER privilege
on the database. ALTER SCHEMA is a synonym for ALTER DATABASE.

The database name can be omitted from the first syntax, in which case
the statement applies to the default database.

National Language Characteristics

The CHARACTER SET clause changes the default database character set.
The COLLATE clause changes the default database collation.
http://dev.mysql.com/doc/refman/5.6/en/charset.html, discusses
character set and collation names.

You can see what character sets and collations are available using,
respectively, the SHOW CHARACTER SET and SHOW COLLATION statements. See
[HELP SHOW CHARACTER SET], and [HELP SHOW COLLATION], for more
information.

If you change the default character set or collation for a database,
stored routines that use the database defaults must be dropped and
recreated so that they use the new defaults. (In a stored routine,
variables with character data types use the database defaults if the
character set or collation are not specified explicitly. See [HELP
CREATE PROCEDURE].)

Upgrading from Versions Older than MySQL 5.1

The syntax that includes the UPGRADE DATA DIRECTORY NAME clause updates
the name of the directory associated with the database to use the
encoding implemented in MySQL 5.1 for mapping database names to
database directory names (see
http://dev.mysql.com/doc/refman/5.6/en/identifier-mapping.html). This
clause is for use under these conditions:

o It is intended when upgrading MySQL to 5.1 or later from older
  versions.

o It is intended to update a database directory name to the current
  encoding format if the name contains special characters that need
  encoding.

o The statement is used by mysqlcheck (as invoked by mysql_upgrade).

For example, if a database in MySQL 5.0 has the name a-b-c, the name
contains instances of the - (dash) character. In MySQL 5.0, the
database directory is also named a-b-c, which is not necessarily safe
for all file systems. In MySQL 5.1 and later, the same database name is
encoded as a@002db@002dc to produce a file system-neutral directory
name.

When a MySQL installation is upgraded to MySQL 5.1 or later from an
older version,the server displays a name such as a-b-c (which is in the
old format) as #mysql50#a-b-c, and you must refer to the name using the
#mysql50# prefix. Use UPGRADE DATA DIRECTORY NAME in this case to
explicitly tell the server to re-encode the database directory name to
the current encoding format:

ALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;

After executing this statement, you can refer to the database as a-b-c
without the special #mysql50# prefix.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-database.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-database.html");
INSERT INTO help_topic VALUES("115","GEOMETRYN","26","GeometryN(gc,N)

Returns the N-th geometry in the GeometryCollection value gc.
Geometries are numbered beginning with 1.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @gc = 'GeometryCollection(Point(1 1),LineString(2 2, 3 3))';
mysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));
+----------------------------------------+
| AsText(GeometryN(GeomFromText(@gc),1)) |
+----------------------------------------+
| POINT(1 1)                             |
+----------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("116","<<","20","Syntax:
<<

Shifts a longlong (BIGINT) number to the left.

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 1 << 2;
        -> 4
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("117","SHOW TABLE STATUS","27","Syntax:
SHOW TABLE STATUS [{FROM | IN} db_name]
    [LIKE 'pattern' | WHERE expr]

SHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of
information about each non-TEMPORARY table. You can also get this list
using the mysqlshow --status db_name command. The LIKE clause, if
present, indicates which table names to match. The WHERE clause can be
given to select rows using more general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-table-status.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-table-status.html");
INSERT INTO help_topic VALUES("118","ASCII","38","Syntax:
ASCII(str)

Returns the numeric value of the leftmost character of the string str.
Returns 0 if str is the empty string. Returns NULL if str is NULL.
ASCII() works for 8-bit characters.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT ASCII('2');
        -> 50
mysql> SELECT ASCII(2);
        -> 50
mysql> SELECT ASCII('dx');
        -> 100
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("119","DIV","4","Syntax:
DIV

Integer division. Similar to FLOOR(), but is safe with BIGINT values.

In MySQL 5.6, if either operand has a noninteger type, the operands are
converted to DECIMAL and divided using DECIMAL arithmetic before
converting the result to BIGINT. If the result exceeds BIGINT range, an
error occurs.

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT 5 DIV 2;
        -> 2
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("120","SHOW SLAVE STATUS","27","Syntax:
SHOW SLAVE STATUS

This statement provides status information on essential parameters of
the slave threads. It requires either the SUPER or REPLICATION CLIENT
privilege.

If you issue this statement using the mysql client, you can use a \G
statement terminator rather than a semicolon to obtain a more readable
vertical layout:

mysql> SHOW SLAVE STATUS\G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: localhost
                  Master_User: root
                  Master_Port: 13000
                Connect_Retry: 60
              Master_Log_File: master-bin.000002
          Read_Master_Log_Pos: 1307
               Relay_Log_File: slave-relay-bin.000003
                Relay_Log_Pos: 1508
        Relay_Master_Log_File: master-bin.000002
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB:
          Replicate_Ignore_DB:
           Replicate_Do_Table:
       Replicate_Ignore_Table:
      Replicate_Wild_Do_Table:
  Replicate_Wild_Ignore_Table:
                   Last_Errno: 0
                   Last_Error:
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 1307
              Relay_Log_Space: 1858
              Until_Condition: None
               Until_Log_File:
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File:
           Master_SSL_CA_Path:
              Master_SSL_Cert:
            Master_SSL_Cipher:
               Master_SSL_Key:
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error:
               Last_SQL_Errno: 0
               Last_SQL_Error:
  Replicate_Ignore_Server_Ids:
             Master_Server_Id: 1
                  Master_UUID: 3e11fa47-71ca-11e1-9e33-c80aa9429562
             Master_Info_File: /var/mysqld.2/data/master.info
                    SQL_Delay: 0
          SQL_Remaining_Delay: NULL
      Slave_SQL_Running_State: Slave has read all relay log; waiting for the slave I/O thread to update it
           Master_Retry_Count: 10
                  Master_Bind:
      Last_IO_Error_Timestamp:
     Last_SQL_Error_Timestamp:
               Master_SSL_Crl:
           Master_SSL_Crlpath:
           Retrieved_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5
            Executed_Gtid_Set: 3e11fa47-71ca-11e1-9e33-c80aa9429562:1-5
                Auto_Position: 1
1 row in set (0.00 sec)

URL: http://dev.mysql.com/doc/refman/5.6/en/show-slave-status.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-slave-status.html");
INSERT INTO help_topic VALUES("121","GEOMETRY","35","MySQL provides a standard way of creating spatial columns for geometry
types, for example, with CREATE TABLE or ALTER TABLE. Currently,
spatial columns are supported for MyISAM, InnoDB, NDB
(http://dev.mysql.com/doc/refman/5.5/en/mysql-cluster.html), and
ARCHIVE tables. See also the annotations about spatial indexes under
[HELP SPATIAL].

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-columns.html

","CREATE TABLE geom (g GEOMETRY);
","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-columns.html");
INSERT INTO help_topic VALUES("122","&","20","Syntax:
&

Bitwise AND:

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 29 & 15;
        -> 13
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("123","ASSIGN-EQUAL","15","Syntax:
=

This operator is used to perform value assignments in two cases,
described in the next two paragraphs.

Within a SET statement, = is treated as an assignment operator that
causes the user variable on the left hand side of the operator to take
on the value to its right. (In other words, when used in a SET
statement, = is treated identically to :=.) The value on the right hand
side may be a literal value, another variable storing a value, or any
legal expression that yields a scalar value, including the result of a
query (provided that this value is a scalar value). You can perform
multiple assignments in the same SET statement.

In the SET clause of an UPDATE statement, = also acts as an assignment
operator; in this case, however, it causes the column named on the left
hand side of the operator to assume the value given to the right,
provided any WHERE conditions that are part of the UPDATE are met. You
can make multiple assignments in the same SET clause of an UPDATE
statement.

In any other context, = is treated as a comparison operator.

URL: http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html

","mysql> SELECT @var1, @var2;
        -> NULL, NULL
mysql> SELECT @var1 := 1, @var2;
        -> 1, NULL
mysql> SELECT @var1, @var2;
        -> 1, NULL
mysql> SELECT @var1, @var2 := @var1;
        -> 1, 1
mysql> SELECT @var1, @var2;
        -> 1, 1
","http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html");
INSERT INTO help_topic VALUES("124","CONVERT","38","Syntax:
CONVERT(expr,type), CONVERT(expr USING transcoding_name)

The CONVERT() and CAST() functions take an expression of any type and
produce a result value of a specified type.

The type for the result can be one of the following values:

o BINARY[(N)]

o CHAR[(N)]

o DATE

o DATETIME

o DECIMAL[(M[,D])]

o SIGNED [INTEGER]

o TIME

o UNSIGNED [INTEGER]

BINARY produces a string with the BINARY data type. See
http://dev.mysql.com/doc/refman/5.6/en/binary-varbinary.html for a
description of how this affects comparisons. If the optional length N
is given, BINARY(N) causes the cast to use no more than N bytes of the
argument. Values shorter than N bytes are padded with 0x00 bytes to a
length of N.

CHAR(N) causes the cast to use no more than N characters of the
argument.

CAST() and CONVERT(... USING ...) are standard SQL syntax. The
non-USING form of CONVERT() is ODBC syntax.

CONVERT() with USING is used to convert data between different
character sets. In MySQL, transcoding names are the same as the
corresponding character set names. For example, this statement converts
the string 'abc' in the default character set to the corresponding
string in the utf8 character set:

SELECT CONVERT('abc' USING utf8);

URL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html

","SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);
","http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html");
INSERT INTO help_topic VALUES("125","REPEAT LOOP","24","Syntax:
[begin_label:] REPEAT
    statement_list
UNTIL search_condition
END REPEAT [end_label]

The statement list within a REPEAT statement is repeated until the
search_condition expression is true. Thus, a REPEAT always enters the
loop at least once. statement_list consists of one or more statements,
each terminated by a semicolon (;) statement delimiter.

A REPEAT statement can be labeled. For the rules regarding label use,
see [HELP labels].

URL: http://dev.mysql.com/doc/refman/5.6/en/repeat.html

","mysql> delimiter //

mysql> CREATE PROCEDURE dorepeat(p1 INT)
    -> BEGIN
    ->   SET @x = 0;
    ->   REPEAT
    ->     SET @x = @x + 1;
    ->   UNTIL @x > p1 END REPEAT;
    -> END
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> CALL dorepeat(1000)//
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT @x//
+------+
| @x   |
+------+
| 1001 |
+------+
1 row in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/repeat.html");
INSERT INTO help_topic VALUES("126","SMALLINT","23","SMALLINT[(M)] [UNSIGNED] [ZEROFILL]

A small integer. The signed range is -32768 to 32767. The unsigned
range is 0 to 65535.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("127","DOUBLE PRECISION","23","DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]
[ZEROFILL]

These types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT
SQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("128","ORD","38","Syntax:
ORD(str)

If the leftmost character of the string str is a multi-byte character,
returns the code for that character, calculated from the numeric values
of its constituent bytes using this formula:

  (1st byte code)
+ (2nd byte code * 256)
+ (3rd byte code * 2562) ...

If the leftmost character is not a multi-byte character, ORD() returns
the same value as the ASCII() function.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT ORD('2');
        -> 50
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("129","ENVELOPE","37","Envelope(g)

Returns the Minimum Bounding Rectangle (MBR) for the geometry value g.
The result is returned as a Polygon value.

The polygon is defined by the corner points of the bounding box:

POLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT AsText(Envelope(GeomFromText('LineString(1 1,2 2)')));
+-------------------------------------------------------+
| AsText(Envelope(GeomFromText('LineString(1 1,2 2)'))) |
+-------------------------------------------------------+
| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |
+-------------------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("130","INET_ATON","14","Syntax:
INET_ATON(expr)

Given the dotted-quad representation of an IPv4 network address as a
string, returns an integer that represents the numeric value of the
address in network byte order (big endian). INET_ATON() returns NULL if
it does not understand its argument.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT INET_ATON('10.0.5.9');
        -> 167773449
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("131","ISSIMPLE","37","IsSimple(g)

Returns 1 if the geometry value g has no anomalous geometric points,
such as self-intersection or self-tangency. IsSimple() returns 0 if the
argument is not simple, and NULL if it is NULL.

The description of each instantiable geometric class given earlier in
the chapter includes the specific conditions that cause an instance of
that class to be classified as not simple. (See [HELP Geometry
hierarchy].)

Prior to MySQL 5.6.1, this function always returns 0.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("132","- BINARY","4","Syntax:
-

Subtraction:

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT 3-5;
        -> -2
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("133","WKT DEFINITION","3","The Well-Known Text (WKT) representation of Geometry is designed to
exchange geometry data in ASCII form. For a Backus-Naur grammar that
specifies the formal production rules for writing WKT values, see the
OpenGIS specification document referenced in
http://dev.mysql.com/doc/refman/5.6/en/spatial-extensions.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/gis-wkt-format.html

","","http://dev.mysql.com/doc/refman/5.6/en/gis-wkt-format.html");
INSERT INTO help_topic VALUES("134","CURRENT_TIME","32","Syntax:
CURRENT_TIME, CURRENT_TIME([fsp])

CURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("135","REVOKE","10","Syntax:
REVOKE
    priv_type [(column_list)]
      [, priv_type [(column_list)]] ...
    ON [object_type] priv_level
    FROM user [, user] ...

REVOKE ALL PRIVILEGES, GRANT OPTION
    FROM user [, user] ...

REVOKE PROXY ON user
    FROM user [, user] ...

The REVOKE statement enables system administrators to revoke privileges
from MySQL accounts. Each account name uses the format described in
http://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:

REVOKE INSERT ON *.* FROM 'jeffrey'@'localhost';

If you specify only the user name part of the account name, a host name
part of '%' is used.

For details on the levels at which privileges exist, the permissible
priv_type and priv_level values, and the syntax for specifying users
and passwords, see [HELP GRANT]

To use the first REVOKE syntax, you must have the GRANT OPTION
privilege, and you must have the privileges that you are revoking.

To revoke all privileges, use the second syntax, which drops all
global, database, table, column, and routine privileges for the named
user or users:

REVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...

To use this REVOKE syntax, you must have the global CREATE USER
privilege or the UPDATE privilege for the mysql database.

URL: http://dev.mysql.com/doc/refman/5.6/en/revoke.html

","","http://dev.mysql.com/doc/refman/5.6/en/revoke.html");
INSERT INTO help_topic VALUES("136","LAST_DAY","32","Syntax:
LAST_DAY(date)

Takes a date or datetime value and returns the corresponding value for
the last day of the month. Returns NULL if the argument is invalid.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT LAST_DAY('2003-02-05');
        -> '2003-02-28'
mysql> SELECT LAST_DAY('2004-02-05');
        -> '2004-02-29'
mysql> SELECT LAST_DAY('2004-01-01 01:01:01');
        -> '2004-01-31'
mysql> SELECT LAST_DAY('2003-03-32');
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("137","MEDIUMINT","23","MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]

A medium-sized integer. The signed range is -8388608 to 8388607. The
unsigned range is 0 to 16777215.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("138","RTRIM","38","Syntax:
RTRIM(str)

Returns the string str with trailing space characters removed.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT RTRIM('barbar   ');
        -> 'barbar'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("139","EXPLAIN","29","Syntax:
{EXPLAIN | DESCRIBE | DESC}
    tbl_name [col_name | wild]

{EXPLAIN | DESCRIBE | DESC}
    [explain_type] explainable_stmt

explain_type:
    EXTENDED
  | PARTITIONS
  | FORMAT = format_name

format_name:
    TRADITIONAL
  | JSON

explainable_stmt:
      SELECT statement
    | DELETE statement
    | INSERT statement
    | REPLACE statement
    | UPDATE statement

The DESCRIBE and EXPLAIN statements are synonyms. In practice, the
DESCRIBE keyword is more often used to obtain information about table
structure, whereas EXPLAIN is used to obtain a query execution plan
(that is, an explanation of how MySQL would execute a query). The
following discussion uses the DESCRIBE and EXPLAIN keywords in
accordance with those uses, but the MySQL parser treats them as
completely synonymous.

Obtaining Table Structure Information

DESCRIBE provides information about the columns in a table. It is a
shortcut for SHOW COLUMNS FROM. These statements also display
information for views. (See [HELP SHOW COLUMNS].)

col_name can be a column name, or a string containing the SQL "%" and
"_" wildcard characters to obtain output only for the columns with
names matching the string. There is no need to enclose the string
within quotation marks unless it contains spaces or other special
characters.

mysql> DESCRIBE City;
+------------+----------+------+-----+---------+----------------+
| Field      | Type     | Null | Key | Default | Extra          |
+------------+----------+------+-----+---------+----------------+
| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |
| Name       | char(35) | NO   |     |         |                |
| Country    | char(3)  | NO   | UNI |         |                |
| District   | char(20) | YES  | MUL |         |                |
| Population | int(11)  | NO   |     | 0       |                |
+------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

The description for SHOW COLUMNS provides more information about the
output columns (see [HELP SHOW COLUMNS]).

If the data types differ from what you expect them to be based on a
CREATE TABLE statement, note that MySQL sometimes changes data types
when you create or alter a table. The conditions under which this
occurs are described in
http://dev.mysql.com/doc/refman/5.6/en/silent-column-changes.html.

The DESCRIBE statement is provided for compatibility with Oracle.

The SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements
also provide information about tables. See [HELP SHOW].

Obtaining Query Execution Plan Information

The EXPLAIN statement provides a way to obtain information about how
MySQL executes a statement:

o When you precede a statement with the keyword EXPLAIN, MySQL displays
  information from the optimizer about the statement execution plan.
  That is, MySQL explains how it would process the statement, including
  information about how tables are joined and in which order. EXPLAIN
  EXTENDED can be used to obtain additional information.

  As of MySQL 5.6.3, EXPLAIN provides information about SELECT, DELETE,
  INSERT, REPLACE, and UPDATE statements. Before MySQL 5.6.3, EXPLAIN
  provides information only about SELECT statements.

  For information about using EXPLAIN and EXPLAIN EXTENDED to obtain
  query execution plan information, see
  http://dev.mysql.com/doc/refman/5.6/en/using-explain.html.

o EXPLAIN PARTITIONS is useful only when examining queries involving
  partitioned tables. For details, see
  http://dev.mysql.com/doc/refman/5.6/en/partitioning-info.html.

o As of MySQL 5.6.5, the FORMAT option can be used to select the output
  format. TRADITIONAL presents the output in tabular format. This is
  the default if no FORMAT option is present. JSON format displays the
  information in JSON format. With FORMAT = JSON, the output includes
  extended and partition information.

URL: http://dev.mysql.com/doc/refman/5.6/en/explain.html

","","http://dev.mysql.com/doc/refman/5.6/en/explain.html");
INSERT INTO help_topic VALUES("140","DEGREES","4","Syntax:
DEGREES(X)

Returns the argument X, converted from radians to degrees.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT DEGREES(PI());
        -> 180
mysql> SELECT DEGREES(PI() / 2);
        -> 90
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("141","- UNARY","4","Syntax:
-

Unary minus. This operator changes the sign of the operand.

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT - 2;
        -> -2
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("142","VARCHAR","23","[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE
collation_name]

A variable-length string. M represents the maximum column length in
characters. The range of M is 0 to 65,535. The effective maximum length
of a VARCHAR is subject to the maximum row size (65,535 bytes, which is
shared among all columns) and the character set used. For example, utf8
characters can require up to three bytes per character, so a VARCHAR
column that uses the utf8 character set can be declared to be a maximum
of 21,844 characters. See
http://dev.mysql.com/doc/refman/5.6/en/column-count-limit.html.

MySQL stores VARCHAR values as a 1-byte or 2-byte length prefix plus
data. The length prefix indicates the number of bytes in the value. A
VARCHAR column uses one length byte if values require no more than 255
bytes, two length bytes if values may require more than 255 bytes.

*Note*: MySQL 5.6 follows the standard SQL specification, and does not
remove trailing spaces from VARCHAR values.

VARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the
standard SQL way to define that a VARCHAR column should use some
predefined character set. MySQL 4.1 and up uses utf8 as this predefined
character set.
http://dev.mysql.com/doc/refman/5.6/en/charset-national.html. NVARCHAR
is shorthand for NATIONAL VARCHAR.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("143","UNHEX","38","Syntax:

UNHEX(str)

For a string argument str, UNHEX(str) performs the inverse operation of
HEX(str). That is, it interprets each pair of characters in the
argument as a hexadecimal number and converts it to the character
represented by the number. The return value is a binary string.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT UNHEX('4D7953514C');
        -> 'MySQL'
mysql> SELECT 0x4D7953514C;
        -> 'MySQL'
mysql> SELECT UNHEX(HEX('string'));
        -> 'string'
mysql> SELECT HEX(UNHEX('1267'));
        -> '1267'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("144","DROP TRIGGER","40","Syntax:
DROP TRIGGER [IF EXISTS] [schema_name.]trigger_name

This statement drops a trigger. The schema (database) name is optional.
If the schema is omitted, the trigger is dropped from the default
schema. DROP TRIGGER requires the TRIGGER privilege for the table
associated with the trigger.

Use IF EXISTS to prevent an error from occurring for a trigger that
does not exist. A NOTE is generated for a nonexistent trigger when
using IF EXISTS. See [HELP SHOW WARNINGS].

Triggers for a table are also dropped if you drop the table.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-trigger.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-trigger.html");
INSERT INTO help_topic VALUES("145","RESET MASTER","8","Syntax:
RESET MASTER

Deletes all binary log files listed in the index file, resets the
binary log index file to be empty, and creates a new binary log file.

In MySQL 5.6.5 and later, RESET MASTER also clears the values of the
gtid_purged system variable (known as gtid_lost in MySQL 5.6.8 and
earlier) as well as the global value of the gtid_executed (gtid_done,
prior to MySQL 5.6.9) system variable (but not its session value); that
is, executing this statement sets each of these values to an empty
string ('').

This statement is intended to be used only when the master is started
for the first time.

URL: http://dev.mysql.com/doc/refman/5.6/en/reset-master.html

","","http://dev.mysql.com/doc/refman/5.6/en/reset-master.html");
INSERT INTO help_topic VALUES("146","PI","4","Syntax:
PI()

Returns the value of π (pi). The default number of decimal places
displayed is seven, but MySQL uses the full double-precision value
internally.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT PI();
        -> 3.141593
mysql> SELECT PI()+0.000000000000000000;
        -> 3.141592653589793116
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("147","/","4","Syntax:
/

Division:

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT 3/5;
        -> 0.60
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("148","PURGE BINARY LOGS","8","Syntax:
PURGE { BINARY | MASTER } LOGS
    { TO 'log_name' | BEFORE datetime_expr }

The binary log is a set of files that contain information about data
modifications made by the MySQL server. The log consists of a set of
binary log files, plus an index file (see
http://dev.mysql.com/doc/refman/5.6/en/binary-log.html).

The PURGE BINARY LOGS statement deletes all the binary log files listed
in the log index file prior to the specified log file name or date.
BINARY and MASTER are synonyms. Deleted log files also are removed from
the list recorded in the index file, so that the given log file becomes
the first in the list.

This statement has no effect if the server was not started with the
--log-bin option to enable binary logging.

URL: http://dev.mysql.com/doc/refman/5.6/en/purge-binary-logs.html

","PURGE BINARY LOGS TO 'mysql-bin.010';
PURGE BINARY LOGS BEFORE '2008-04-02 22:46:26';
","http://dev.mysql.com/doc/refman/5.6/en/purge-binary-logs.html");
INSERT INTO help_topic VALUES("149","STDDEV_SAMP","16","Syntax:
STDDEV_SAMP(expr)

Returns the sample standard deviation of expr (the square root of
VAR_SAMP().

STDDEV_SAMP() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("150","ST_TOUCHES","31","ST_Touches(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially touches g2. Two
geometries spatially touch if the interiors of the geometries do not
intersect, but the boundary of one of the geometries intersects either
the boundary or the interior of the other.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("151","SCHEMA","17","Syntax:
SCHEMA()

This function is a synonym for DATABASE().

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("152","MLINEFROMWKB","33","MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])

Constructs a MULTILINESTRING value using its WKB representation and
SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("153","SHOW CREATE TABLE","27","Syntax:
SHOW CREATE TABLE tbl_name

Shows the CREATE TABLE statement that creates the given table. To use
this statement, you must have some privilege for the table. This
statement also works with views.
SHOW CREATE TABLE quotes table and column names according to the value
of the sql_quote_show_create option. See
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-table.html

","mysql> SHOW CREATE TABLE t\G
*************************** 1. row ***************************
       Table: t
Create Table: CREATE TABLE t (
  id INT(11) default NULL auto_increment,
  s char(60) default NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM
","http://dev.mysql.com/doc/refman/5.6/en/show-create-table.html");
INSERT INTO help_topic VALUES("154","DUAL","28","You are permitted to specify DUAL as a dummy table name in situations
where no tables are referenced:

mysql> SELECT 1 + 1 FROM DUAL;
        -> 2

DUAL is purely for the convenience of people who require that all
SELECT statements should have FROM and possibly other clauses. MySQL
may ignore the clauses. MySQL does not require FROM DUAL if no tables
are referenced.

URL: http://dev.mysql.com/doc/refman/5.6/en/select.html

","","http://dev.mysql.com/doc/refman/5.6/en/select.html");
INSERT INTO help_topic VALUES("155","INSTR","38","Syntax:
INSTR(str,substr)

Returns the position of the first occurrence of substring substr in
string str. This is the same as the two-argument form of LOCATE(),
except that the order of the arguments is reversed.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT INSTR('foobarbar', 'bar');
        -> 4
mysql> SELECT INSTR('xbar', 'foobar');
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("156",">=","19","Syntax:
>=

Greater than or equal:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 2 >= 2;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("157","EXP","4","Syntax:
EXP(X)

Returns the value of e (the base of natural logarithms) raised to the
power of X. The inverse of this function is LOG() (using a single
argument only) or LN().

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT EXP(2);
        -> 7.3890560989307
mysql> SELECT EXP(-2);
        -> 0.13533528323661
mysql> SELECT EXP(0);
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("158","POINTN","13","PointN(ls,N)

Returns the N-th Point in the Linestring value ls. Points are numbered
beginning with 1.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @ls = 'LineString(1 1,2 2,3 3)';
mysql> SELECT AsText(PointN(GeomFromText(@ls),2));
+-------------------------------------+
| AsText(PointN(GeomFromText(@ls),2)) |
+-------------------------------------+
| POINT(2 2)                          |
+-------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("159","OCT","38","Syntax:
OCT(N)

Returns a string representation of the octal value of N, where N is a
longlong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns
NULL if N is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT OCT(12);
        -> '14'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("160","SYSDATE","32","Syntax:
SYSDATE()

Returns the current date and time as a value in 'YYYY-MM-DD HH:MM:SS'
or YYYYMMDDHHMMSS format, depending on whether the function is used in
a string or numeric context.

SYSDATE() returns the time at which it executes. This differs from the
behavior for NOW(), which returns a constant time that indicates the
time at which the statement began to execute. (Within a stored function
or trigger, NOW() returns the time at which the function or triggering
statement began to execute.)

mysql> SELECT NOW(), SLEEP(2), NOW();
+---------------------+----------+---------------------+
| NOW()               | SLEEP(2) | NOW()               |
+---------------------+----------+---------------------+
| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |
+---------------------+----------+---------------------+

mysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();
+---------------------+----------+---------------------+
| SYSDATE()           | SLEEP(2) | SYSDATE()           |
+---------------------+----------+---------------------+
| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |
+---------------------+----------+---------------------+

In addition, the SET TIMESTAMP statement affects the value returned by
NOW() but not by SYSDATE(). This means that timestamp settings in the
binary log have no effect on invocations of SYSDATE().

Because SYSDATE() can return different values even within the same
statement, and is not affected by SET TIMESTAMP, it is nondeterministic
and therefore unsafe for replication if statement-based binary logging
is used. If that is a problem, you can use row-based logging.

Alternatively, you can use the --sysdate-is-now option to cause
SYSDATE() to be an alias for NOW(). This works if the option is used on
both the master and the slave.

The nondeterministic nature of SYSDATE() also means that indexes cannot
be used for evaluating expressions that refer to it.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("161","UNINSTALL PLUGIN","5","Syntax:
UNINSTALL PLUGIN plugin_name

This statement removes an installed server plugin. It requires the
DELETE privilege for the mysql.plugin table.

plugin_name must be the name of some plugin that is listed in the
mysql.plugin table. The server executes the plugin's deinitialization
function and removes the row for the plugin from the mysql.plugin
table, so that subsequent server restarts will not load and initialize
the plugin. UNINSTALL PLUGIN does not remove the plugin's shared
library file.

URL: http://dev.mysql.com/doc/refman/5.6/en/uninstall-plugin.html

","","http://dev.mysql.com/doc/refman/5.6/en/uninstall-plugin.html");
INSERT INTO help_topic VALUES("162","ASBINARY","33","AsBinary(g), AsWKB(g)

Converts a value in internal geometry format to its WKB representation
and returns the binary result.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html

","SELECT AsBinary(g) FROM geom;
","http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html");
INSERT INTO help_topic VALUES("163","SHOW TABLES","27","Syntax:
SHOW [FULL] TABLES [{FROM | IN} db_name]
    [LIKE 'pattern' | WHERE expr]

SHOW TABLES lists the non-TEMPORARY tables in a given database. You can
also get this list using the mysqlshow db_name command. The LIKE
clause, if present, indicates which table names to match. The WHERE
clause can be given to select rows using more general conditions, as
discussed in http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

Matching performed by the LIKE clause is dependent on the setting of
the lower_case_table_names system variable.

This statement also lists any views in the database. The FULL modifier
is supported such that SHOW FULL TABLES displays a second output
column. Values for the second column are BASE TABLE for a table and
VIEW for a view.

If you have no privileges for a base table or view, it does not show up
in the output from SHOW TABLES or mysqlshow db_name.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-tables.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-tables.html");
INSERT INTO help_topic VALUES("164","MAKEDATE","32","Syntax:
MAKEDATE(year,dayofyear)

Returns a date, given year and day-of-year values. dayofyear must be
greater than 0 or the result is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MAKEDATE(2011,31), MAKEDATE(2011,32);
        -> '2011-01-31', '2011-02-01'
mysql> SELECT MAKEDATE(2011,365), MAKEDATE(2014,365);
        -> '2011-12-31', '2014-12-31'
mysql> SELECT MAKEDATE(2011,0);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("165","BINARY OPERATOR","38","Syntax:
BINARY

The BINARY operator casts the string following it to a binary string.
This is an easy way to force a column comparison to be done byte by
byte rather than character by character. This causes the comparison to
be case sensitive even if the column is not defined as BINARY or BLOB.
BINARY also causes trailing spaces to be significant.

URL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html

","mysql> SELECT 'a' = 'A';
        -> 1
mysql> SELECT BINARY 'a' = 'A';
        -> 0
mysql> SELECT 'a' = 'a ';
        -> 1
mysql> SELECT BINARY 'a' = 'a ';
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html");
INSERT INTO help_topic VALUES("166","MBROVERLAPS","6","MBROverlaps(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangles of
the two geometries g1 and g2 overlap. The term spatially overlaps is
used if two geometries intersect and their intersection results in a
geometry of the same dimension but not equal to either of the given
geometries.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("167","INSERT SELECT","28","Syntax:
INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name 
    [PARTITION (partition_name,...)]
    [(col_name,...)]
    SELECT ...
    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]

With INSERT ... SELECT, you can quickly insert many rows into a table
from one or many tables. For example:

INSERT INTO tbl_temp2 (fld_id)
  SELECT tbl_temp1.fld_order_id
  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;

URL: http://dev.mysql.com/doc/refman/5.6/en/insert-select.html

","","http://dev.mysql.com/doc/refman/5.6/en/insert-select.html");
INSERT INTO help_topic VALUES("168","CREATE PROCEDURE","40","Syntax:
CREATE
    [DEFINER = { user | CURRENT_USER }]
    PROCEDURE sp_name ([proc_parameter[,...]])
    [characteristic ...] routine_body

CREATE
    [DEFINER = { user | CURRENT_USER }]
    FUNCTION sp_name ([func_parameter[,...]])
    RETURNS type
    [characteristic ...] routine_body

proc_parameter:
    [ IN | OUT | INOUT ] param_name type

func_parameter:
    param_name type

type:
    Any valid MySQL data type

characteristic:
    COMMENT 'string'
  | LANGUAGE SQL
  | [NOT] DETERMINISTIC
  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
  | SQL SECURITY { DEFINER | INVOKER }

routine_body:
    Valid SQL routine statement

These statements create stored routines. By default, a routine is
associated with the default database. To associate the routine
explicitly with a given database, specify the name as db_name.sp_name
when you create it.

The CREATE FUNCTION statement is also used in MySQL to support UDFs
(user-defined functions). See
http://dev.mysql.com/doc/refman/5.6/en/adding-functions.html. A UDF can
be regarded as an external stored function. Stored functions share
their namespace with UDFs. See
http://dev.mysql.com/doc/refman/5.6/en/function-resolution.html, for
the rules describing how the server interprets references to different
kinds of functions.

To invoke a stored procedure, use the CALL statement (see [HELP CALL]).
To invoke a stored function, refer to it in an expression. The function
returns a value during expression evaluation.

CREATE PROCEDURE and CREATE FUNCTION require the CREATE ROUTINE
privilege. They might also require the SUPER privilege, depending on
the DEFINER value, as described later in this section. If binary
logging is enabled, CREATE FUNCTION might require the SUPER privilege,
as described in
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.

By default, MySQL automatically grants the ALTER ROUTINE and EXECUTE
privileges to the routine creator. This behavior can be changed by
disabling the automatic_sp_privileges system variable. See
http://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.

The DEFINER and SQL SECURITY clauses specify the security context to be
used when checking access privileges at routine execution time, as
described later in this section.

If the routine name is the same as the name of a built-in SQL function,
a syntax error occurs unless you use a space between the name and the
following parenthesis when defining the routine or invoking it later.
For this reason, avoid using the names of existing SQL functions for
your own stored routines.

The IGNORE_SPACE SQL mode applies to built-in functions, not to stored
routines. It is always permissible to have spaces after a stored
routine name, regardless of whether IGNORE_SPACE is enabled.

The parameter list enclosed within parentheses must always be present.
If there are no parameters, an empty parameter list of () should be
used. Parameter names are not case sensitive.

Each parameter is an IN parameter by default. To specify otherwise for
a parameter, use the keyword OUT or INOUT before the parameter name.

*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a
PROCEDURE. For a FUNCTION, parameters are always regarded as IN
parameters.

An IN parameter passes a value into a procedure. The procedure might
modify the value, but the modification is not visible to the caller
when the procedure returns. An OUT parameter passes a value from the
procedure back to the caller. Its initial value is NULL within the
procedure, and its value is visible to the caller when the procedure
returns. An INOUT parameter is initialized by the caller, can be
modified by the procedure, and any change made by the procedure is
visible to the caller when the procedure returns.

For each OUT or INOUT parameter, pass a user-defined variable in the
CALL statement that invokes the procedure so that you can obtain its
value when the procedure returns. If you are calling the procedure from
within another stored procedure or function, you can also pass a
routine parameter or local routine variable as an IN or INOUT
parameter.

Routine parameters cannot be referenced in statements prepared within
the routine; see
http://dev.mysql.com/doc/refman/5.6/en/stored-program-restrictions.html
.

The following example shows a simple stored procedure that uses an OUT
parameter:

mysql> delimiter //

mysql> CREATE PROCEDURE simpleproc (OUT param1 INT)
    -> BEGIN
    ->   SELECT COUNT(*) INTO param1 FROM t;
    -> END//
Query OK, 0 rows affected (0.00 sec)

mysql> delimiter ;

mysql> CALL simpleproc(@a);
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT @a;
+------+
| @a   |
+------+
| 3    |
+------+
1 row in set (0.00 sec)

The example uses the mysql client delimiter command to change the
statement delimiter from ; to // while the procedure is being defined.
This enables the ; delimiter used in the procedure body to be passed
through to the server rather than being interpreted by mysql itself.
See
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-defining.html.

The RETURNS clause may be specified only for a FUNCTION, for which it
is mandatory. It indicates the return type of the function, and the
function body must contain a RETURN value statement. If the RETURN
statement returns a value of a different type, the value is coerced to
the proper type. For example, if a function specifies an ENUM or SET
value in the RETURNS clause, but the RETURN statement returns an
integer, the value returned from the function is the string for the
corresponding ENUM member of set of SET members.

The following example function takes a parameter, performs an operation
using an SQL function, and returns the result. In this case, it is
unnecessary to use delimiter because the function definition contains
no internal ; statement delimiters:

mysql> CREATE FUNCTION hello (s CHAR(20))
mysql> RETURNS CHAR(50) DETERMINISTIC
    -> RETURN CONCAT('Hello, ',s,'!');
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT hello('world');
+----------------+
| hello('world') |
+----------------+
| Hello, world!  |
+----------------+
1 row in set (0.00 sec)

Parameter types and function return types can be declared to use any
valid data type. The COLLATE attribute can be used if preceded by the
CHARACTER SET attribute.

The routine_body consists of a valid SQL routine statement. This can be
a simple statement such as SELECT or INSERT, or a compound statement
written using BEGIN and END. Compound statements can contain
declarations, loops, and other control structure statements. The syntax
for these statements is described in
http://dev.mysql.com/doc/refman/5.6/en/sql-syntax-compound-statements.h
tml.

MySQL permits routines to contain DDL statements, such as CREATE and
DROP. MySQL also permits stored procedures (but not stored functions)
to contain SQL transaction statements such as COMMIT. Stored functions
may not contain statements that perform explicit or implicit commit or
rollback. Support for these statements is not required by the SQL
standard, which states that each DBMS vendor may decide whether to
permit them.

Statements that return a result set can be used within a stored
procedure but not within a stored function. This prohibition includes
SELECT statements that do not have an INTO var_list clause and other
statements such as SHOW, EXPLAIN, and CHECK TABLE. For statements that
can be determined at function definition time to return a result set, a
Not allowed to return a result set from a function error occurs
(ER_SP_NO_RETSET). For statements that can be determined only at
runtime to return a result set, a PROCEDURE %s can't return a result
set in the given context error occurs (ER_SP_BADSELECT).

USE statements within stored routines are not permitted. When a routine
is invoked, an implicit USE db_name is performed (and undone when the
routine terminates). The causes the routine to have the given default
database while it executes. References to objects in databases other
than the routine default database should be qualified with the
appropriate database name.

For additional information about statements that are not permitted in
stored routines, see
http://dev.mysql.com/doc/refman/5.6/en/stored-program-restrictions.html
.

For information about invoking stored procedures from within programs
written in a language that has a MySQL interface, see [HELP CALL].

MySQL stores the sql_mode system variable setting that is in effect at
the time a routine is created, and always executes the routine with
this setting in force, regardless of the server SQL mode in effect when
the routine is invoked.

The switch from the SQL mode of the invoker to that of the routine
occurs after evaluation of arguments and assignment of the resulting
values to routine parameters. If you define a routine in strict SQL
mode but invoke it in nonstrict mode, assignment of arguments to
routine parameters does not take place in strict mode. If you require
that expressions passed to a routine be assigned in strict SQL mode,
you should invoke the routine with strict mode in effect.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-procedure.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-procedure.html");
INSERT INTO help_topic VALUES("169","SQL_THREAD_WAIT_AFTER_GTIDS","17","Syntax:
SQL_THREAD_WAIT_AFTER_GTIDS(gtid_set[, timeout])

SQL_THREAD_WAIT_AFTER_GTIDS() was added in MySQL 5.6.5, and replaced by
WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS() in MySQL 5.6.9. (Bug #14775984)

For more information, see
http://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html");
INSERT INTO help_topic VALUES("170","GET DIAGNOSTICS","24","Syntax:
GET [CURRENT] DIAGNOSTICS
{
    statement_information_item
    [, statement_information_item] ... 
  | CONDITION condition_number
    condition_information_item
    [, condition_information_item] ...
}

statement_information_item:
    target = statement_information_item_name

condition_information_item:
    target = condition_information_item_name

statement_information_item_name:
    NUMBER
  | ROW_COUNT

condition_information_item_name:
    CLASS_ORIGIN
  | SUBCLASS_ORIGIN
  | RETURNED_SQLSTATE
  | MESSAGE_TEXT
  | MYSQL_ERRNO
  | CONSTRAINT_CATALOG
  | CONSTRAINT_SCHEMA
  | CONSTRAINT_NAME
  | CATALOG_NAME
  | SCHEMA_NAME
  | TABLE_NAME
  | COLUMN_NAME
  | CURSOR_NAME

condition_number, target:
    (see following discussion)

SQL statements produce diagnostic information that populates the
diagnostics area. The GET DIAGNOSTICS statement enables applications to
inspect this information. No special privileges are required to execute
GET DIAGNOSTICS, which is available as of MySQL 5.6.4.

The keyword CURRENT means to retrieve information from the current
diagnostics area. In MySQL, it has no effect because that is the
default behavior.

For a description of the diagnostics area, see
http://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html. Briefly,
it contains two kinds of information:

o Statement information, such as the affected-rows count or the number
  of conditions that occurred.

o Condition information, such as the error code and message. If a
  statement raises multiple conditions, this part of the diagnostics
  area has a condition area for each one. If a statement raises no
  conditions, this part of the diagnostics area is empty.

For a statement that produces three conditions, the diagnostics area
contains statement and condition information like this:

Statement information:
  row count
  ... other statement information items ...
Condition area list:
  Condition area 1:
    error code for condition 1
    error message for condition 1
    ... other condition information items ...
  Condition area 2:
    error code for condition 2:
    error message for condition 2
    ... other condition information items ...
  Condition area 3:
    error code for condition 3
    error message for condition 3
    ... other condition information items ...

GET DIAGNOSTICS can obtain either statement or condition information,
but not both in the same statement:

o To obtain statement information, retrieve the desired statement items
  into target variables:

GET DIAGNOSTICS @p1 = ROW_COUNT, @p2 = NUMBER;

o To obtain condition information, specify the condition number and
  retrieve the desired condition items into target variables:

GET DIAGNOSTICS CONDITION 1
  @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;

The retrieval list specifies one or more target = item_name
assignments, separated by commas. Each assignment names a target
variable and either a statement_information_item_name or
condition_information_item_name designator, depending on whether the
statement retrieves statement or condition information.

Valid target designators for storing item information can be stored
procedure or function parameters, stored program local variables
declared with DECLARE, or user-defined variables.

Valid condition_number designators can be stored procedure or function
parameters, stored program local variables declared with DECLARE,
user-defined variables, system variables, or literals. A character
literal may include a _charset introducer. A warning occurs if the
condition number is not in the range from 1 to the number of condition
areas that have information. In this case, the warning is added to the
diagnostics area without clearing it.

GET DIAGNOSTICS is typically used within stored programs, but it is a
MySQL extension that it is permitted outside that context to check the
execution of any SQL statement. For example, if you invoke the mysql
client program, you can enter these statements at the prompt:

mysql> DROP TABLE test.no_such_table;
ERROR 1051 (42S02): Unknown table 'test.no_such_table'
mysql> GET DIAGNOSTICS CONDITION 1
    ->   @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;
mysql> SELECT @p1, @p2;
+-------+------------------------------------+
| @p1   | @p2                                |
+-------+------------------------------------+
| 42S02 | Unknown table 'test.no_such_table' |
+-------+------------------------------------+

Currently, not all condition items recognized by GET DIAGNOSTICS are
populated when a condition occurs. For example:

mysql> GET DIAGNOSTICS CONDITION 1
    ->   @p3 = SCHEMA_NAME, @p4 = TABLE_NAME;
mysql> SELECT @p3, @p4;
+------+------+
| @p3  | @p4  |
+------+------+
|      |      |
+------+------+

For information about permissible statement and condition information
items, and which ones are populated when a condition occurs, see
http://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html#diagnostic
s-area-information-items.

Here is an example that uses GET DIAGNOSTICS and an exception handler
in stored procedure context to assess the outcome of an insert
operation. If the insert was successful, the procedure also uses GET
DIAGNOSTICS to get the rows-affected count. This shows that you can use
GET DIAGNOSTICS multiple times to retrieve information about a
statement as long as the diagnostics area has not been cleared.

CREATE PROCEDURE do_insert(value INT)
BEGIN
  -- declare variables to hold diagnostics area information
  DECLARE code CHAR(5) DEFAULT '00000';
  DECLARE msg TEXT;
  DECLARE rows INT;
  DECLARE result TEXT;
  -- declare exception handler for failed insert
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
      GET DIAGNOSTICS CONDITION 1
        code = RETURNED_SQLSTATE, msg = MESSAGE_TEXT;
    END;

  -- perform the insert
  INSERT INTO t1 (int_col) VALUES(value);
  -- check whether the insert was successful
  IF code = '00000' THEN
    GET DIAGNOSTICS rows = ROW_COUNT;
    SET result = CONCAT('insert succeeded, row count = ',rows);
  ELSE
    SET result = CONCAT('insert failed, error = ',code,', message = ',msg);
  END IF;
  -- say what happened
  SELECT result;
END;

Suppose that t1.int_col is an integer column that is declared as NOT
NULL. The procedure produces these results:

mysql> CALL do_insert(1);
+---------------------------------+
| result                          |
+---------------------------------+
| insert succeeded, row count = 1 |
+---------------------------------+

mysql> CALL do_insert(NULL);
+-------------------------------------------------------------------------+
| result                                                                  |
+-------------------------------------------------------------------------+
| insert failed, error = 23000, message = Column 'int_col' cannot be null |
+-------------------------------------------------------------------------+

URL: http://dev.mysql.com/doc/refman/5.6/en/get-diagnostics.html

","","http://dev.mysql.com/doc/refman/5.6/en/get-diagnostics.html");
INSERT INTO help_topic VALUES("171","NOT REGEXP","38","Syntax:
expr NOT REGEXP pat, expr NOT RLIKE pat

This is the same as NOT (expr REGEXP pat).

URL: http://dev.mysql.com/doc/refman/5.6/en/regexp.html

","","http://dev.mysql.com/doc/refman/5.6/en/regexp.html");
INSERT INTO help_topic VALUES("172","LEAVE","24","Syntax:
LEAVE label

This statement is used to exit the flow control construct that has the
given label. If the label is for the outermost stored program block,
LEAVE exits the program.

LEAVE can be used within BEGIN ... END or loop constructs (LOOP,
REPEAT, WHILE).

URL: http://dev.mysql.com/doc/refman/5.6/en/leave.html

","","http://dev.mysql.com/doc/refman/5.6/en/leave.html");
INSERT INTO help_topic VALUES("173","NOT IN","19","Syntax:
expr NOT IN (value,...)

This is the same as NOT (expr IN (value,...)).

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("174","&&","15","Syntax:
AND, &&

Logical AND. Evaluates to 1 if all operands are nonzero and not NULL,
to 0 if one or more operands are 0, otherwise NULL is returned.

URL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html

","mysql> SELECT 1 && 1;
        -> 1
mysql> SELECT 1 && 0;
        -> 0
mysql> SELECT 1 && NULL;
        -> NULL
mysql> SELECT 0 && NULL;
        -> 0
mysql> SELECT NULL && 0;
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html");
INSERT INTO help_topic VALUES("175","X","11","X(p)

Returns the X-coordinate value for the Point object p as a
double-precision number.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT X(POINT(56.7, 53.34));
+-----------------------+
| X(POINT(56.7, 53.34)) |
+-----------------------+
|                  56.7 |
+-----------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("176","FOUND_ROWS","17","Syntax:
FOUND_ROWS()

A SELECT statement may include a LIMIT clause to restrict the number of
rows the server returns to the client. In some cases, it is desirable
to know how many rows the statement would have returned without the
LIMIT, but without running the statement again. To obtain this row
count, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,
and then invoke FOUND_ROWS() afterward:

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name
    -> WHERE id > 100 LIMIT 10;
mysql> SELECT FOUND_ROWS();
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("177","CROSSES","31","Crosses(g1,g2)

Returns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon
or a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,
returns 0.

The term spatially crosses denotes a spatial relation between two given
geometries that has the following properties:

o The two geometries intersect

o Their intersection results in a geometry that has a dimension that is
  one less than the maximum dimension of the two given geometries

o Their intersection is not equal to either of the two given geometries

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("178","BIT_XOR","16","Syntax:
BIT_XOR(expr)

Returns the bitwise XOR of all bits in expr. The calculation is
performed with 64-bit (BIGINT) precision.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("179","FLUSH","27","Syntax:
FLUSH [NO_WRITE_TO_BINLOG | LOCAL]
    flush_option [, flush_option] ...

The FLUSH statement has several variant forms that clear or reload
various internal caches, flush tables, or acquire locks. To execute
FLUSH, you must have the RELOAD privilege. Specific flush options might
require additional privileges, as described later.

By default, the server writes FLUSH statements to the binary log so
that they replicate to replication slaves. To suppress logging, use the
optional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.

*Note*: FLUSH LOGS, FLUSH TABLES WITH READ LOCK (with or without a
table list), and FLUSH TABLES tbl_name ... FOR EXPORT are not written
to the binary log in any case because they would cause problems if
replicated to a slave.

The FLUSH statement causes an implicit commit. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

The RESET statement is similar to FLUSH. See [HELP RESET], for
information about using the RESET statement with replication.

URL: http://dev.mysql.com/doc/refman/5.6/en/flush.html

","","http://dev.mysql.com/doc/refman/5.6/en/flush.html");
INSERT INTO help_topic VALUES("180","BEGIN END","24","Syntax:
[begin_label:] BEGIN
    [statement_list]
END [end_label]

BEGIN ... END syntax is used for writing compound statements, which can
appear within stored programs (stored procedures and functions,
triggers, and events). A compound statement can contain multiple
statements, enclosed by the BEGIN and END keywords. statement_list
represents a list of one or more statements, each terminated by a
semicolon (;) statement delimiter. The statement_list itself is
optional, so the empty compound statement (BEGIN END) is legal.

BEGIN ... END blocks can be nested.

Use of multiple statements requires that a client is able to send
statement strings containing the ; statement delimiter. In the mysql
command-line client, this is handled with the delimiter command.
Changing the ; end-of-statement delimiter (for example, to //) permit ;
to be used in a program body. For an example, see
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-defining.html.

A BEGIN ... END block can be labeled. See [HELP labels].

URL: http://dev.mysql.com/doc/refman/5.6/en/begin-end.html

","","http://dev.mysql.com/doc/refman/5.6/en/begin-end.html");
INSERT INTO help_topic VALUES("181","SHOW PROCEDURE STATUS","27","Syntax:
SHOW PROCEDURE STATUS
    [LIKE 'pattern' | WHERE expr]

This statement is a MySQL extension. It returns characteristics of a
stored procedure, such as the database, name, type, creator, creation
and modification dates, and character set information. A similar
statement, SHOW FUNCTION STATUS, displays information about stored
functions (see [HELP SHOW FUNCTION STATUS]).

The LIKE clause, if present, indicates which procedure or function
names to match. The WHERE clause can be given to select rows using more
general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-procedure-status.html

","mysql> SHOW PROCEDURE STATUS LIKE 'sp1'\G
*************************** 1. row ***************************
                  Db: test
                Name: sp1
                Type: PROCEDURE
             Definer: testuser@localhost
            Modified: 2004-08-03 15:29:37
             Created: 2004-08-03 15:29:37
       Security_type: DEFINER
             Comment:
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci
","http://dev.mysql.com/doc/refman/5.6/en/show-procedure-status.html");
INSERT INTO help_topic VALUES("182","STDDEV_POP","16","Syntax:
STDDEV_POP(expr)

Returns the population standard deviation of expr (the square root of
VAR_POP()). You can also use STD() or STDDEV(), which are equivalent
but not standard SQL.

STDDEV_POP() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("183","SHOW CHARACTER SET","27","Syntax:
SHOW CHARACTER SET
    [LIKE 'pattern' | WHERE expr]

The SHOW CHARACTER SET statement shows all available character sets.
The LIKE clause, if present, indicates which character set names to
match. The WHERE clause can be given to select rows using more general
conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html. For example:

mysql> SHOW CHARACTER SET LIKE 'latin%';
+---------+-----------------------------+-------------------+--------+
| Charset | Description                 | Default collation | Maxlen |
+---------+-----------------------------+-------------------+--------+
| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |
| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |
| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |
| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |
+---------+-----------------------------+-------------------+--------+

URL: http://dev.mysql.com/doc/refman/5.6/en/show-character-set.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-character-set.html");
INSERT INTO help_topic VALUES("184","INTERSECTS","31","Intersects(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially intersects g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("185","LOOP","24","Syntax:
[begin_label:] LOOP
    statement_list
END LOOP [end_label]

LOOP implements a simple loop construct, enabling repeated execution of
the statement list, which consists of one or more statements, each
terminated by a semicolon (;) statement delimiter. The statements
within the loop are repeated until the loop is terminated. Usually,
this is accomplished with a LEAVE statement. Within a stored function,
RETURN can also be used, which exits the function entirely.

Neglecting to include a loop-termination statement results in an
infinite loop.

A LOOP statement can be labeled. For the rules regarding label use, see
[HELP labels].

URL: http://dev.mysql.com/doc/refman/5.6/en/loop.html

","CREATE PROCEDURE doiterate(p1 INT)
BEGIN
  label1: LOOP
    SET p1 = p1 + 1;
    IF p1 < 10 THEN
      ITERATE label1;
    END IF;
    LEAVE label1;
  END LOOP label1;
  SET @x = p1;
END;
","http://dev.mysql.com/doc/refman/5.6/en/loop.html");
INSERT INTO help_topic VALUES("186","GREATEST","19","Syntax:
GREATEST(value1,value2,...)

With two or more arguments, returns the largest (maximum-valued)
argument. The arguments are compared using the same rules as for
LEAST().

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT GREATEST(2,0);
        -> 2
mysql> SELECT GREATEST(34.0,3.0,5.0,767.0);
        -> 767.0
mysql> SELECT GREATEST('B','A','C');
        -> 'C'
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("187","ST_CONTAINS","31","ST_Contains(g1,g2)

Returns 1 or 0 to indicate whether g1 completely contains g2. This
tests the opposite relationship as ST_Within().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("188","BIT_AND","16","Syntax:
BIT_AND(expr)

Returns the bitwise AND of all bits in expr. The calculation is
performed with 64-bit (BIGINT) precision.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("189","SECOND","32","Syntax:
SECOND(time)

Returns the second for time, in the range 0 to 59.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT SECOND('10:05:03');
        -> 3
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("190","MBRCONTAINS","6","MBRContains(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1
contains the Minimum Bounding Rectangle of g2. This tests the opposite
relationship as MBRWithin().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","mysql> SET @g1 = GeomFromText('Polygon((0 0,0 3,3 3,3 0,0 0))');
mysql> SET @g2 = GeomFromText('Point(1 1)');
mysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);
----------------------+----------------------+
| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |
+----------------------+----------------------+
|                    1 |                    0 |
+----------------------+----------------------+
","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("191","COT","4","Syntax:
COT(X)

Returns the cotangent of X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT COT(12);
        -> -1.5726734063977
mysql> SELECT COT(0);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("192","SHOW CREATE EVENT","27","Syntax:
SHOW CREATE EVENT event_name

This statement displays the CREATE EVENT statement needed to re-create
a given event. It requires the EVENT privilege for the database from
which the event is to be shown. For example (using the same event
e_daily defined and then altered in [HELP SHOW EVENTS]):

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-event.html

","mysql> SHOW CREATE EVENT test.e_daily\G
*************************** 1. row ***************************
               Event: e_daily
            sql_mode:
           time_zone: SYSTEM
        Create Event: CREATE EVENT `e_daily`
                        ON SCHEDULE EVERY 1 DAY
                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR
                        ON COMPLETION NOT PRESERVE
                        ENABLE
                        COMMENT 'Saves total number of sessions then
                                clears the table each day'
                        DO BEGIN
                          INSERT INTO site_activity.totals (time, total)
                            SELECT CURRENT_TIMESTAMP, COUNT(*)
                            FROM site_activity.sessions;
                          DELETE FROM site_activity.sessions;
                        END
character_set_client: latin1
collation_connection: latin1_swedish_ci
  Database Collation: latin1_swedish_ci
","http://dev.mysql.com/doc/refman/5.6/en/show-create-event.html");
INSERT INTO help_topic VALUES("193","LOAD_FILE","38","Syntax:
LOAD_FILE(file_name)

Reads the file and returns the file contents as a string. To use this
function, the file must be located on the server host, you must specify
the full path name to the file, and you must have the FILE privilege.
The file must be readable by all and its size less than
max_allowed_packet bytes. If the secure_file_priv system variable is
set to a nonempty directory name, the file to be loaded must be located
in that directory.

If the file does not exist or cannot be read because one of the
preceding conditions is not satisfied, the function returns NULL.

The character_set_filesystem system variable controls interpretation of
file names that are given as literal strings.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> UPDATE t
            SET blob_col=LOAD_FILE('/tmp/picture')
            WHERE id=1;
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("194","POINTFROMTEXT","3","PointFromText(wkt[,srid])

Constructs a POINT value using its WKT representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("195","DATE_FORMAT","32","Syntax:
DATE_FORMAT(date,format)

Formats the date value according to the format string.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');
        -> 'Sunday October 2009'
mysql> SELECT DATE_FORMAT('2007-10-04 22:23:00', '%H:%i:%s');
        -> '22:23:00'
mysql> SELECT DATE_FORMAT('1900-10-04 22:23:00',
    ->                 '%D %y %a %d %m %b %j');
        -> '4th 00 Thu 04 10 Oct 277'
mysql> SELECT DATE_FORMAT('1997-10-04 22:23:00',
    ->                 '%H %k %I %r %T %S %w');
        -> '22 22 10 10:23:00 PM 22:23:00 00 6'
mysql> SELECT DATE_FORMAT('1999-01-01', '%X %V');
        -> '1998 52'
mysql> SELECT DATE_FORMAT('2006-06-00', '%d');
        -> '00'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("196","YEAR","32","Syntax:
YEAR(date)

Returns the year for date, in the range 1000 to 9999, or 0 for the
"zero" date.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT YEAR('1987-01-01');
        -> 1987
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("197","IS NULL","19","Syntax:
IS NULL

Tests whether a value is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;
        -> 0, 0, 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("198","ALTER SERVER","40","Syntax:
ALTER SERVER  server_name
    OPTIONS (option [, option] ...)

Alters the server information for server_name, adjusting any of the
options permitted in the CREATE SERVER statement. The corresponding
fields in the mysql.servers table are updated accordingly. This
statement requires the SUPER privilege.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-server.html

","ALTER SERVER s OPTIONS (USER 'sally');
","http://dev.mysql.com/doc/refman/5.6/en/alter-server.html");
INSERT INTO help_topic VALUES("199","RESIGNAL","24","Syntax:
RESIGNAL [condition_value]
    [SET signal_information_item
    [, signal_information_item] ...]

condition_value:
    SQLSTATE [VALUE] sqlstate_value
  | condition_name

signal_information_item:
    condition_information_item_name = simple_value_specification

condition_information_item_name:
    CLASS_ORIGIN
  | SUBCLASS_ORIGIN
  | MESSAGE_TEXT
  | MYSQL_ERRNO
  | CONSTRAINT_CATALOG
  | CONSTRAINT_SCHEMA
  | CONSTRAINT_NAME
  | CATALOG_NAME
  | SCHEMA_NAME
  | TABLE_NAME
  | COLUMN_NAME
  | CURSOR_NAME

condition_name, simple_value_specification:
    (see following discussion)

RESIGNAL passes on the error condition information that is available
during execution of a condition handler within a compound statement
inside a stored procedure or function, trigger, or event. RESIGNAL may
change some or all information before passing it on. RESIGNAL is
related to SIGNAL, but instead of originating a condition as SIGNAL
does, RESIGNAL relays existing condition information, possibly after
modifying it.

RESIGNAL makes it possible to both handle an error and return the error
information. Otherwise, by executing an SQL statement within the
handler, information that caused the handler's activation is destroyed.
RESIGNAL also can make some procedures shorter if a given handler can
handle part of a situation, then pass the condition "up the line" to
another handler.

No special privileges are required to execute the RESIGNAL statement.

To retrieve information from diagnostics area, use the GET DIAGNOSTICS
statement (see [HELP GET DIAGNOSTICS]). For information about the
diagnostics area, see
http://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html.

For condition_value and signal_information_item, the definitions and
rules are the same for RESIGNAL as for SIGNAL (see [HELP SIGNAL]).

The RESIGNAL statement takes condition_value and SET clauses, both of
which are optional. This leads to several possible uses:

o RESIGNAL alone:

RESIGNAL;

o RESIGNAL with new signal information:

RESIGNAL SET signal_information_item [, signal_information_item] ...;

o RESIGNAL with a condition value and possibly new signal information:

RESIGNAL condition_value
    [SET signal_information_item [, signal_information_item] ...];

URL: http://dev.mysql.com/doc/refman/5.6/en/resignal.html

","","http://dev.mysql.com/doc/refman/5.6/en/resignal.html");
INSERT INTO help_topic VALUES("200","TIME FUNCTION","32","Syntax:
TIME(expr)

Extracts the time part of the time or datetime expression expr and
returns it as a string.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIME('2003-12-31 01:02:03');
        -> '01:02:03'
mysql> SELECT TIME('2003-12-31 01:02:03.000123');
        -> '01:02:03.000123'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("201","DATE_ADD","32","Syntax:
DATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)

These functions perform date arithmetic. The date argument specifies
the starting date or datetime value. expr is an expression specifying
the interval value to be added or subtracted from the starting date.
expr is a string; it may start with a "-" for negative intervals. unit
is a keyword indicating the units in which the expression should be
interpreted.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT '2008-12-31 23:59:59' + INTERVAL 1 SECOND;
        -> '2009-01-01 00:00:00'
mysql> SELECT INTERVAL 1 DAY + '2008-12-31';
        -> '2009-01-01'
mysql> SELECT '2005-01-01' - INTERVAL 1 SECOND;
        -> '2004-12-31 23:59:59'
mysql> SELECT DATE_ADD('2000-12-31 23:59:59',
    ->                 INTERVAL 1 SECOND);
        -> '2001-01-01 00:00:00'
mysql> SELECT DATE_ADD('2010-12-31 23:59:59',
    ->                 INTERVAL 1 DAY);
        -> '2011-01-01 23:59:59'
mysql> SELECT DATE_ADD('2100-12-31 23:59:59',
    ->                 INTERVAL '1:1' MINUTE_SECOND);
        -> '2101-01-01 00:01:00'
mysql> SELECT DATE_SUB('2005-01-01 00:00:00',
    ->                 INTERVAL '1 1:1:1' DAY_SECOND);
        -> '2004-12-30 22:58:59'
mysql> SELECT DATE_ADD('1900-01-01 00:00:00',
    ->                 INTERVAL '-1 10' DAY_HOUR);
        -> '1899-12-30 14:00:00'
mysql> SELECT DATE_SUB('1998-01-02', INTERVAL 31 DAY);
        -> '1997-12-02'
mysql> SELECT DATE_ADD('1992-12-31 23:59:59.000002',
    ->            INTERVAL '1.999999' SECOND_MICROSECOND);
        -> '1993-01-01 00:00:01.000001'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("202","LIKE","38","Syntax:
expr LIKE pat [ESCAPE 'escape_char']

Pattern matching using SQL simple regular expression comparison.
Returns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the
result is NULL.

The pattern need not be a literal string. For example, it can be
specified as a string expression or table column.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html

","mysql> SELECT 'David!' LIKE 'David_';
        -> 1
mysql> SELECT 'David!' LIKE '%D%v%';
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html");
INSERT INTO help_topic VALUES("203","MULTIPOINT","25","MultiPoint(pt1,pt2,...)

Constructs a MultiPoint value using Point or WKB Point arguments.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("204",">>","20","Syntax:
>>

Shifts a longlong (BIGINT) number to the right.

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 4 >> 2;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("205","FETCH","24","Syntax:
FETCH [[NEXT] FROM] cursor_name INTO var_name [, var_name] ...

This statement fetches the next row for the SELECT statement associated
with the specified cursor (which must be open), and advances the cursor
pointer. If a row exists, the fetched columns are stored in the named
variables. The number of columns retrieved by the SELECT statement must
match the number of output variables specified in the FETCH statement.

If no more rows are available, a No Data condition occurs with SQLSTATE
value '02000'. To detect this condition, you can set up a handler for
it (or for a NOT FOUND condition). For an example, see
http://dev.mysql.com/doc/refman/5.6/en/cursors.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/fetch.html

","","http://dev.mysql.com/doc/refman/5.6/en/fetch.html");
INSERT INTO help_topic VALUES("206","TRUE FALSE","30","The constants TRUE and FALSE evaluate to 1 and 0, respectively. The
constant names can be written in any lettercase.

mysql> SELECT TRUE, true, FALSE, false;
        -> 1, 1, 0, 0

URL: http://dev.mysql.com/doc/refman/5.6/en/boolean-literals.html

","","http://dev.mysql.com/doc/refman/5.6/en/boolean-literals.html");
INSERT INTO help_topic VALUES("207","MBRWITHIN","6","MBRWithin(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1
is within the Minimum Bounding Rectangle of g2. This tests the opposite
relationship as MBRContains().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","mysql> SET @g1 = GeomFromText('Polygon((0 0,0 3,3 3,3 0,0 0))');
mysql> SET @g2 = GeomFromText('Polygon((0 0,0 5,5 5,5 0,0 0))');
mysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);
+--------------------+--------------------+
| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |
+--------------------+--------------------+
|                  1 |                  0 |
+--------------------+--------------------+
","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("208","SESSION_USER","17","Syntax:
SESSION_USER()

SESSION_USER() is a synonym for USER().

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("209","SHOW CREATE FUNCTION","27","Syntax:
SHOW CREATE FUNCTION func_name

This statement is similar to SHOW CREATE PROCEDURE but for stored
functions. See [HELP SHOW CREATE PROCEDURE].

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-function.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-create-function.html");
INSERT INTO help_topic VALUES("210","STR_TO_DATE","32","Syntax:
STR_TO_DATE(str,format)

This is the inverse of the DATE_FORMAT() function. It takes a string
str and a format string format. STR_TO_DATE() returns a DATETIME value
if the format string contains both date and time parts, or a DATE or
TIME value if the string contains only date or time parts. If the date,
time, or datetime value extracted from str is illegal, STR_TO_DATE()
returns NULL and produces a warning.

The server scans str attempting to match format to it. The format
string can contain literal characters and format specifiers beginning
with %. Literal characters in format must match literally in str.
Format specifiers in format must match a date or time part in str. For
the specifiers that can be used in format, see the DATE_FORMAT()
function description.

mysql> SELECT STR_TO_DATE('01,5,2013','%d,%m,%Y');
        -> '2013-05-01'
mysql> SELECT STR_TO_DATE('May 1, 2013','%M %d,%Y');
        -> '2013-05-01'

Scanning starts at the beginning of str and fails if format is found
not to match. Extra characters at the end of str are ignored.

mysql> SELECT STR_TO_DATE('a09:30:17','a%h:%i:%s');
        -> '09:30:17'
mysql> SELECT STR_TO_DATE('a09:30:17','%h:%i:%s');
        -> NULL
mysql> SELECT STR_TO_DATE('09:30:17a','%h:%i:%s');
        -> '09:30:17'

Unspecified date or time parts have a value of 0, so incompletely
specified values in str produce a result with some or all parts set to
0:

mysql> SELECT STR_TO_DATE('abc','abc');
        -> '0000-00-00'
mysql> SELECT STR_TO_DATE('9','%m');
        -> '0000-09-00'
mysql> SELECT STR_TO_DATE('9','%s');
        -> '00:00:09'

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("211","Y","11","Y(p)

Returns the Y-coordinate value for the Point object p as a
double-precision number.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT Y(POINT(56.7, 53.34));
+-----------------------+
| Y(POINT(56.7, 53.34)) |
+-----------------------+
|                 53.34 |
+-----------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("212","CHECKSUM TABLE","21","Syntax:
CHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]

CHECKSUM TABLE reports a checksum for the contents of a table. You can
use this statement to verify that the contents are the same before and
after a backup, rollback, or other operation that is intended to put
the data back to a known state. This statement requires the SELECT
privilege for the table.

Performance Considerations

By default, the entire table is read row by row and the checksum is
calculated. For large tables, this could take a long time, thus you
would only perform this operation occasionally. This row-by-row
calculation is what you get with the EXTENDED clause, with InnoDB and
all other storage engines other than MyISAM, and with MyISAM tables not
created with the CHECKSUM=1 clause.

For MyISAM tables created with the CHECKSUM=1 clause, CHECKSUM TABLE or
CHECKSUM TABLE ... QUICK returns the "live" table checksum that can be
returned very fast. If the table does not meet all these conditions,
the QUICK method returns NULL. See [HELP CREATE TABLE] for the syntax
of the CHECKSUM clause.

For a nonexistent table, CHECKSUM TABLE returns NULL and generates a
warning.

Prior to MySQL 5.6.4, CHECKSUM TABLE returned 0 for partitioned tables
unless the EXTENDED option was used. (Bug #11933226, Bug #60681)

The checksum value depends on the table row format. If the row format
changes, the checksum also changes. For example, the storage format for
VARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is
upgraded to MySQL 5.0, the checksum value may change.

URL: http://dev.mysql.com/doc/refman/5.6/en/checksum-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/checksum-table.html");
INSERT INTO help_topic VALUES("213","NUMINTERIORRINGS","2","NumInteriorRings(poly)

Returns the number of interior rings in the Polygon value poly.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @poly =
    -> 'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))';
mysql> SELECT NumInteriorRings(GeomFromText(@poly));
+---------------------------------------+
| NumInteriorRings(GeomFromText(@poly)) |
+---------------------------------------+
|                                     1 |
+---------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("214","INTERIORRINGN","2","InteriorRingN(poly,N)

Returns the N-th interior ring for the Polygon value poly as a
LineString. Rings are numbered beginning with 1.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @poly =
    -> 'Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))';
mysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));
+----------------------------------------------+
| AsText(InteriorRingN(GeomFromText(@poly),1)) |
+----------------------------------------------+
| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |
+----------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("215","UTC_TIME","32","Syntax:
UTC_TIME, UTC_TIME([fsp])

Returns the current UTC time as a value in 'HH:MM:SS' or HHMMSS format,
depending on whether the function is used in a string or numeric
context.

As of MySQL 5.6.4, if the fsp argument is given to specify a fractional
seconds precision from 0 to 6, the return value includes a fractional
seconds part of that many digits. Before 5.6.4, any argument is
ignored.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT UTC_TIME(), UTC_TIME() + 0;
        -> '18:07:53', 180753.000000
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("216","IS_IPV4_COMPAT","14","Syntax:
IS_IPV4_COMPAT(expr)

This function takes an IPv6 address represented in numeric form as a
binary string, as returned by INET6_ATON(). It returns 1 if the
argument is a valid IPv4-compatible IPv6 address, 0 otherwise.
IPv4-compatible addresses have the form ::ipv4_address.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT IS_IPV4_COMPAT(INET6_ATON('::10.0.5.9'));
        -> 1
mysql> SELECT IS_IPV4_COMPAT(INET6_ATON('::ffff:10.0.5.9'));
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("217","DROP FUNCTION","40","The DROP FUNCTION statement is used to drop stored functions and
user-defined functions (UDFs):

o For information about dropping stored functions, see [HELP DROP
  PROCEDURE].

o For information about dropping user-defined functions, see [HELP DROP
  FUNCTION UDF].

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-function.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-function.html");
INSERT INTO help_topic VALUES("218","STDDEV","16","Syntax:
STDDEV(expr)

Returns the population standard deviation of expr. This function is
provided for compatibility with Oracle. The standard SQL function
STDDEV_POP() can be used instead.

This function returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("219","PERIOD_ADD","32","Syntax:
PERIOD_ADD(P,N)

Adds N months to period P (in the format YYMM or YYYYMM). Returns a
value in the format YYYYMM. Note that the period argument P is not a
date value.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT PERIOD_ADD(200801,2);
        -> 200803
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("220","RIGHT","38","Syntax:
RIGHT(str,len)

Returns the rightmost len characters from the string str, or NULL if
any argument is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT RIGHT('foobarbar', 4);
        -> 'rbar'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("221","CHECK TABLE","21","Syntax:
CHECK TABLE tbl_name [, tbl_name] ... [option] ...

option = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}

CHECK TABLE checks a table or tables for errors. CHECK TABLE works for
InnoDB, MyISAM, ARCHIVE, and CSV tables. For MyISAM tables, the key
statistics are updated as well.

To check a table, you must have some privilege for it.

CHECK TABLE can also check views for problems, such as tables that are
referenced in the view definition that no longer exist.

CHECK TABLE is supported for partitioned tables, and you can use ALTER
TABLE ... CHECK PARTITION to check one or more partitions; for more
information, see [HELP ALTER TABLE], and
http://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

URL: http://dev.mysql.com/doc/refman/5.6/en/check-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/check-table.html");
INSERT INTO help_topic VALUES("222","BIN","38","Syntax:
BIN(N)

Returns a string representation of the binary value of N, where N is a
longlong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns
NULL if N is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT BIN(12);
        -> '1100'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("223","MULTILINESTRING","25","MultiLineString(ls1,ls2,...)

Constructs a MultiLineString value using LineString or WKB LineString
arguments.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("224","SHOW RELAYLOG EVENTS","27","Syntax:
SHOW RELAYLOG EVENTS
   [IN 'log_name'] [FROM pos] [LIMIT [offset,] row_count]

Shows the events in the relay log of a replication slave. If you do not
specify 'log_name', the first relay log is displayed. This statement
has no effect on the master.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-relaylog-events.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-relaylog-events.html");
INSERT INTO help_topic VALUES("225","MPOINTFROMTEXT","3","MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])

Constructs a MULTIPOINT value using its WKT representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("226","SUBSTR","38","Syntax:
SUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str
FROM pos FOR len)

SUBSTR() is a synonym for SUBSTRING().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("227","CHAR","23","[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE
collation_name]

A fixed-length string that is always right-padded with spaces to the
specified length when stored. M represents the column length in
characters. The range of M is 0 to 255. If M is omitted, the length is
1.

*Note*: Trailing spaces are removed when CHAR values are retrieved
unless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("228","COUNT DISTINCT","16","Syntax:
COUNT(DISTINCT expr,[expr...])

Returns a count of the number of rows with different non-NULL expr
values.

COUNT(DISTINCT) returns 0 if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT COUNT(DISTINCT results) FROM student;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("229","SHOW CREATE VIEW","27","Syntax:
SHOW CREATE VIEW view_name

This statement shows a CREATE VIEW statement that creates the given
view.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-view.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-create-view.html");
INSERT INTO help_topic VALUES("230","INTERVAL","19","Syntax:
INTERVAL(N,N1,N2,N3,...)

Returns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All
arguments are treated as integers. It is required that N1 < N2 < N3 <
... < Nn for this function to work correctly. This is because a binary
search is used (very fast).

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);
        -> 3
mysql> SELECT INTERVAL(10, 1, 10, 100, 1000);
        -> 2
mysql> SELECT INTERVAL(22, 23, 30, 44, 200);
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("231","FROM_DAYS","32","Syntax:
FROM_DAYS(N)

Given a day number N, returns a DATE value.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT FROM_DAYS(730669);
        -> '2007-07-03'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("232","ALTER PROCEDURE","40","Syntax:
ALTER PROCEDURE proc_name [characteristic ...]

characteristic:
    COMMENT 'string'
  | LANGUAGE SQL
  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
  | SQL SECURITY { DEFINER | INVOKER }

This statement can be used to change the characteristics of a stored
procedure. More than one change may be specified in an ALTER PROCEDURE
statement. However, you cannot change the parameters or body of a
stored procedure using this statement; to make such changes, you must
drop and re-create the procedure using DROP PROCEDURE and CREATE
PROCEDURE.

You must have the ALTER ROUTINE privilege for the procedure. By
default, that privilege is granted automatically to the procedure
creator. This behavior can be changed by disabling the
automatic_sp_privileges system variable. See
http://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-procedure.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-procedure.html");
INSERT INTO help_topic VALUES("233","BIT_COUNT","20","Syntax:
BIT_COUNT(N)

Returns the number of bits that are set in the argument N.

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT BIT_COUNT(29), BIT_COUNT(b'101010');
        -> 4, 3
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("234","ST_WITHIN","31","ST_Within(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially within g2. This
tests the opposite relationship as ST_Contains().

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("235","ACOS","4","Syntax:
ACOS(X)

Returns the arc cosine of X, that is, the value whose cosine is X.
Returns NULL if X is not in the range -1 to 1.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ACOS(1);
        -> 0
mysql> SELECT ACOS(1.0001);
        -> NULL
mysql> SELECT ACOS(0);
        -> 1.5707963267949
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("236","ISOLATION","8","Syntax:
SET [GLOBAL | SESSION] TRANSACTION
    transaction_characteristic [, transaction_characteristic] ...

transaction_characteristic:
    ISOLATION LEVEL level
  | READ WRITE
  | READ ONLY

level:
     REPEATABLE READ
   | READ COMMITTED
   | READ UNCOMMITTED
   | SERIALIZABLE

This statement specifies transaction characteristics. It takes a list
of one or more characteristic values separated by commas. These
characteristics set the transaction isolation level or access mode. The
isolation level is used for operations on InnoDB tables. The access
mode may be specified as of MySQL 5.6.5 and indicates whether
transactions operate in read/write or read-only mode.

In addition, SET TRANSACTION can include an optional GLOBAL or SESSION
keyword to indicate the scope of the statement.

Scope of Transaction Characteristics

You can set transaction characteristics globally, for the current
session, or for the next transaction:

o With the GLOBAL keyword, the statement applies globally for all
  subsequent sessions. Existing sessions are unaffected.

o With the SESSION keyword, the statement applies to all subsequent
  transactions performed within the current session.

o Without any SESSION or GLOBAL keyword, the statement applies to the
  next (not started) transaction performed within the current session.

A global change to transaction characteristics requires the SUPER
privilege. Any session is free to change its session characteristics
(even in the middle of a transaction), or the characteristics for its
next transaction.

SET TRANSACTION without GLOBAL or SESSION is not permitted while there
is an active transaction:

mysql> START TRANSACTION;
Query OK, 0 rows affected (0.02 sec)

mysql> SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
ERROR 1568 (25001): Transaction characteristics can't be changed
while a transaction is in progress

To set the global default isolation level at server startup, use the
--transaction-isolation=level option to mysqld on the command line or
in an option file. Values of level for this option use dashes rather
than spaces, so the permissible values are READ-UNCOMMITTED,
READ-COMMITTED, REPEATABLE-READ, or SERIALIZABLE. For example, to set
the default isolation level to REPEATABLE READ, use these lines in the
[mysqld] section of an option file:

[mysqld]
transaction-isolation = REPEATABLE-READ

It is possible to check or set the global and session transaction
isolation levels at runtime by using the tx_isolation system variable:

SELECT @@GLOBAL.tx_isolation, @@tx_isolation;
SET GLOBAL tx_isolation='REPEATABLE-READ';
SET SESSION tx_isolation='SERIALIZABLE';

Similarly, to set the transaction access mode at server startup or at
runtime, use the --transaction-read-only option or tx_read_only system
variable. By default, these are OFF (the mode is read/write) but can be
set to ON for a default mode of read only.

Setting the global or session value of tx_isolation or tx_read_only is
equivalent to setting the isolation level or access mode with SET
GLOBAL TRANSACTION or SET SESSION TRANSACTION.

Details and Usage of Isolation Levels

InnoDB supports each of the transaction isolation levels described here
using different locking strategies. You can enforce a high degree of
consistency with the default REPEATABLE READ level, for operations on
crucial data where ACID compliance is important. Or you can relax the
consistency rules with READ COMMITTED or even READ UNCOMMITTED, in
situations such as bulk reporting where precise consistency and
repeatable results are less important than minimizing the amount of
overhead for locking. SERIALIZABLE enforces even stricter rules than
REPEATABLE READ, and is used mainly in specialized situations, such as
with XA transactions and for troubleshooting issues with concurrency
and deadlocks.

For full information about how these isolation levels work with InnoDB
transactions, see
http://dev.mysql.com/doc/refman/5.6/en/innodb-transaction-model.html.
In particular, for additional information about InnoDB record-level
locks and how it uses them to execute various types of statements, see
http://dev.mysql.com/doc/refman/5.6/en/innodb-record-level-locks.html
and http://dev.mysql.com/doc/refman/5.6/en/innodb-locks-set.html.

The following list describes how MySQL supports the different
transaction levels. The list goes from the most commonly used level to
the least used.

o REPEATABLE READ

  This is the default isolation level for InnoDB. For consistent reads,
  there is an important difference from the READ COMMITTED isolation
  level: All consistent reads within the same transaction read the
  snapshot established by the first read. This convention means that if
  you issue several plain (nonlocking) SELECT statements within the
  same transaction, these SELECT statements are consistent also with
  respect to each other. See
  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.

  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),
  UPDATE, and DELETE statements, locking depends on whether the
  statement uses a unique index with a unique search condition, or a
  range-type search condition. For a unique index with a unique search
  condition, InnoDB locks only the index record found, not the gap
  before it. For other search conditions, InnoDB locks the index range
  scanned, using gap locks or next-key locks to block insertions by
  other sessions into the gaps covered by the range.

o READ COMMITTED

  A somewhat Oracle-like isolation level with respect to consistent
  (nonlocking) reads: Each consistent read, even within the same
  transaction, sets and reads its own fresh snapshot. See
  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.

  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),
  InnoDB locks only index records, not the gaps before them, and thus
  permits the free insertion of new records next to locked records. For
  UPDATE and DELETE statements, locking depends on whether the
  statement uses a unique index with a unique search condition (such as
  WHERE id = 100), or a range-type search condition (such as WHERE id >
  100). For a unique index with a unique search condition, InnoDB locks
  only the index record found, not the gap before it. For range-type
  searches, InnoDB locks the index range scanned, using gap locks or
  next-key locks to block insertions by other sessions into the gaps
  covered by the range. This is necessary because "phantom rows" must
  be blocked for MySQL replication and recovery to work.

  *Note*: In MySQL 5.6, if the READ COMMITTED isolation level is used,
  or the deprecated innodb_locks_unsafe_for_binlog system variable is
  enabled, there is no InnoDB gap locking except for foreign-key
  constraint checking and duplicate-key checking. Also, record locks
  for nonmatching rows are released after MySQL has evaluated the WHERE
  condition. If you use READ COMMITTED or enable
  innodb_locks_unsafe_for_binlog, you must use row-based binary
  logging.

o READ UNCOMMITTED

  SELECT statements are performed in a nonlocking fashion, but a
  possible earlier version of a row might be used. Thus, using this
  isolation level, such reads are not consistent. This is also called a
  dirty read. Otherwise, this isolation level works like READ
  COMMITTED.

o SERIALIZABLE

  This level is like REPEATABLE READ, but InnoDB implicitly converts
  all plain SELECT statements to SELECT ... LOCK IN SHARE MODE if
  autocommit is disabled. If autocommit is enabled, the SELECT is its
  own transaction. It therefore is known to be read only and can be
  serialized if performed as a consistent (nonlocking) read and need
  not block for other transactions. (To force a plain SELECT to block
  if other transactions have modified the selected rows, disable
  autocommit.)

Transaction Access Mode

As of MySQL 5.6.5, the transaction access mode may be specified with
SET TRANSACTION. By default, a transaction takes place in read/write
mode, with both reads and writes permitted to tables used in the
transaction. This mode may be specified explicitly using an access mode
of READ WRITE.

If the transaction access mode is set to READ ONLY, changes to tables
are prohibited. This may enable storage engines to make performance
improvements that are possible when writes are not permitted.

It is not permitted to specify both READ WRITE and READ ONLY in the
same statement.

In read-only mode, it remains possible to change tables created with
the TEMPORARY keyword using DML statements. Changes made with DDL
statements are not permitted, just as with permanent tables.

The READ WRITE and READ ONLY access modes also may be specified for an
individual transaction using the START TRANSACTION statement.

URL: http://dev.mysql.com/doc/refman/5.6/en/set-transaction.html

","","http://dev.mysql.com/doc/refman/5.6/en/set-transaction.html");
INSERT INTO help_topic VALUES("237","SIN","4","Syntax:
SIN(X)

Returns the sine of X, where X is given in radians.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT SIN(PI());
        -> 1.2246063538224e-16
mysql> SELECT ROUND(SIN(PI()));
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("238","BUFFER","26","Buffer(g,d)

Returns a geometry that represents all points whose distance from the
geometry value g is less than or equal to a distance of d.

Buffer() supports negative distances for polygons, multipolygons, and
geometry collections containing polygons or multipolygons. For point,
multipoint, linestring, multilinestring, and geometry collections not
containing any polygons or multipolygons, Buffer() with a negative
distance returns NULL.

Prior to MySQL 5.6.1, this function is unimplemented.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-that-create-new-geometries-from-existing-ones.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-that-create-new-geometries-from-existing-ones.html");
INSERT INTO help_topic VALUES("239","IS","19","Syntax:
IS boolean_value

Tests a value against a boolean value, where boolean_value can be TRUE,
FALSE, or UNKNOWN.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;
        -> 1, 1, 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("240","GET_FORMAT","32","Syntax:
GET_FORMAT({DATE|TIME|DATETIME}, {'EUR'|'USA'|'JIS'|'ISO'|'INTERNAL'})

Returns a format string. This function is useful in combination with
the DATE_FORMAT() and the STR_TO_DATE() functions.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DATE_FORMAT('2003-10-03',GET_FORMAT(DATE,'EUR'));
        -> '03.10.2003'
mysql> SELECT STR_TO_DATE('10.31.2003',GET_FORMAT(DATE,'USA'));
        -> '2003-10-31'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("241","TINYBLOB","23","TINYBLOB

A BLOB column with a maximum length of 255 (28 - 1) bytes. Each
TINYBLOB value is stored using a 1-byte length prefix that indicates
the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("242","USER","17","Syntax:
USER()

Returns the current MySQL user name and host name as a string in the
utf8 character set.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT USER();
        -> 'davida@localhost'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("243","REPAIR TABLE","21","Syntax:
REPAIR [NO_WRITE_TO_BINLOG | LOCAL] TABLE
    tbl_name [, tbl_name] ...
    [QUICK] [EXTENDED] [USE_FRM]

REPAIR TABLE repairs a possibly corrupted table, for certain storage
engines only. By default, it has the same effect as myisamchk --recover
tbl_name.

*Note*: REPAIR TABLE only applies to MyISAM, ARCHIVE, and CSV tables.
See http://dev.mysql.com/doc/refman/5.6/en/myisam-storage-engine.html,
and http://dev.mysql.com/doc/refman/5.6/en/archive-storage-engine.html,
and http://dev.mysql.com/doc/refman/5.6/en/csv-storage-engine.html

This statement requires SELECT and INSERT privileges for the table.

REPAIR TABLE is supported for partitioned tables. However, the USE_FRM
option cannot be used with this statement on a partitioned table.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

You can use ALTER TABLE ... REPAIR PARTITION to repair one or more
partitions; for more information, see [HELP ALTER TABLE], and
http://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/repair-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/repair-table.html");
INSERT INTO help_topic VALUES("244","MERGE","18","The MERGE storage engine, also known as the MRG_MyISAM engine, is a
collection of identical MyISAM tables that can be used as one.
"Identical" means that all tables have identical column and index
information. You cannot merge MyISAM tables in which the columns are
listed in a different order, do not have exactly the same columns, or
have the indexes in different order. However, any or all of the MyISAM
tables can be compressed with myisampack. See
http://dev.mysql.com/doc/refman/5.6/en/myisampack.html. Differences in
table options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not
matter.

URL: http://dev.mysql.com/doc/refman/5.6/en/merge-storage-engine.html

","mysql> CREATE TABLE t1 (
    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->    message CHAR(20)) ENGINE=MyISAM;
mysql> CREATE TABLE t2 (
    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ->    message CHAR(20)) ENGINE=MyISAM;
mysql> INSERT INTO t1 (message) VALUES ('Testing'),('table'),('t1');
mysql> INSERT INTO t2 (message) VALUES ('Testing'),('table'),('t2');
mysql> CREATE TABLE total (
    ->    a INT NOT NULL AUTO_INCREMENT,
    ->    message CHAR(20), INDEX(a))
    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;
","http://dev.mysql.com/doc/refman/5.6/en/merge-storage-engine.html");
INSERT INTO help_topic VALUES("245","CREATE TABLE","40","Syntax:
CREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
    (create_definition,...)
    [table_options]
    [partition_options]

Or:

CREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
    [(create_definition,...)]
    [table_options]
    [partition_options]
    select_statement

Or:

CREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
    { LIKE old_tbl_name | (LIKE old_tbl_name) }

create_definition:
    col_name column_definition
  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)
      [index_option] ...
  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)
      [index_option] ...
  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]
      [index_name] [index_type] (index_col_name,...)
      [index_option] ...
  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)
      [index_option] ...
  | [CONSTRAINT [symbol]] FOREIGN KEY
      [index_name] (index_col_name,...) reference_definition
  | CHECK (expr)

column_definition:
    data_type [NOT NULL | NULL] [DEFAULT default_value]
      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]
      [COMMENT 'string']
      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]
      [reference_definition]

data_type:
    BIT[(length)]
  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]
  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]
  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]
  | INT[(length)] [UNSIGNED] [ZEROFILL]
  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]
  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]
  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | DECIMAL[(length[,decimals])] [UNSIGNED] [ZEROFILL]
  | NUMERIC[(length[,decimals])] [UNSIGNED] [ZEROFILL]
  | DATE
  | TIME
  | TIMESTAMP
  | DATETIME
  | YEAR
  | CHAR[(length)]
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | VARCHAR(length)
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | BINARY[(length)]
  | VARBINARY(length)
  | TINYBLOB
  | BLOB
  | MEDIUMBLOB
  | LONGBLOB
  | TINYTEXT [BINARY]
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | TEXT [BINARY]
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | MEDIUMTEXT [BINARY]
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | LONGTEXT [BINARY]
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | ENUM(value1,value2,value3,...)
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | SET(value1,value2,value3,...)
      [CHARACTER SET charset_name] [COLLATE collation_name]
  | spatial_type

index_col_name:
    col_name [(length)] [ASC | DESC]

index_type:
    USING {BTREE | HASH}

index_option:
    KEY_BLOCK_SIZE [=] value
  | index_type
  | WITH PARSER parser_name
  | COMMENT 'string'

reference_definition:
    REFERENCES tbl_name (index_col_name,...)
      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]
      [ON DELETE reference_option]
      [ON UPDATE reference_option]

reference_option:
    RESTRICT | CASCADE | SET NULL | NO ACTION

table_options:
    table_option [[,] table_option] ...

table_option:
    ENGINE [=] engine_name
  | AUTO_INCREMENT [=] value
  | AVG_ROW_LENGTH [=] value
  | [DEFAULT] CHARACTER SET [=] charset_name
  | CHECKSUM [=] {0 | 1}
  | [DEFAULT] COLLATE [=] collation_name
  | COMMENT [=] 'string'
  | CONNECTION [=] 'connect_string'
  | DATA DIRECTORY [=] 'absolute path to directory'
  | DELAY_KEY_WRITE [=] {0 | 1}
  | INDEX DIRECTORY [=] 'absolute path to directory'
  | INSERT_METHOD [=] { NO | FIRST | LAST }
  | KEY_BLOCK_SIZE [=] value
  | MAX_ROWS [=] value
  | MIN_ROWS [=] value
  | PACK_KEYS [=] {0 | 1 | DEFAULT}
  | PASSWORD [=] 'string'
  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}
  | STATS_AUTO_RECALC [=] {DEFAULT|0|1}
  | STATS_PERSISTENT [=] {DEFAULT|0|1}
  | UNION [=] (tbl_name[,tbl_name]...)

partition_options:
    PARTITION BY
        { [LINEAR] HASH(expr)
        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list)
        | RANGE{(expr) | COLUMNS(column_list)}
        | LIST{(expr) | COLUMNS(column_list)} }
    [PARTITIONS num]
    [SUBPARTITION BY
        { [LINEAR] HASH(expr)
        | [LINEAR] KEY [ALGORITHM={1|2}] (column_list) }
      [SUBPARTITIONS num]
    ]
    [(partition_definition [, partition_definition] ...)]

partition_definition:
    PARTITION partition_name
        [VALUES 
            {LESS THAN {(expr | value_list) | MAXVALUE} 
            | 
            IN (value_list)}]
        [[STORAGE] ENGINE [=] engine_name]
        [COMMENT [=] 'comment_text' ]
        [DATA DIRECTORY [=] 'data_dir']
        [INDEX DIRECTORY [=] 'index_dir']
        [MAX_ROWS [=] max_number_of_rows]
        [MIN_ROWS [=] min_number_of_rows]
        [(subpartition_definition [, subpartition_definition] ...)]

subpartition_definition:
    SUBPARTITION logical_name
        [[STORAGE] ENGINE [=] engine_name]
        [COMMENT [=] 'comment_text' ]
        [DATA DIRECTORY [=] 'data_dir']
        [INDEX DIRECTORY [=] 'index_dir']
        [MAX_ROWS [=] max_number_of_rows]
        [MIN_ROWS [=] min_number_of_rows]

select_statement:
    [IGNORE | REPLACE] [AS] SELECT ...   (Some valid select statement)

CREATE TABLE creates a table with the given name. You must have the
CREATE privilege for the table.

Rules for permissible table names are given in
http://dev.mysql.com/doc/refman/5.6/en/identifiers.html. By default,
the table is created in the default database, using the InnoDB storage
engine. An error occurs if the table exists, if there is no default
database, or if the database does not exist.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-table.html");
INSERT INTO help_topic VALUES("246","MICROSECOND","32","Syntax:
MICROSECOND(expr)

Returns the microseconds from the time or datetime expression expr as a
number in the range from 0 to 999999.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MICROSECOND('12:00:00.123456');
        -> 123456
mysql> SELECT MICROSECOND('2009-12-31 23:59:59.000010');
        -> 10
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("247","CREATE SERVER","40","Syntax:
CREATE SERVER server_name
    FOREIGN DATA WRAPPER wrapper_name
    OPTIONS (option [, option] ...)

option:
  { HOST character-literal
  | DATABASE character-literal
  | USER character-literal
  | PASSWORD character-literal
  | SOCKET character-literal
  | OWNER character-literal
  | PORT numeric-literal }

This statement creates the definition of a server for use with the
FEDERATED storage engine. The CREATE SERVER statement creates a new row
in the servers table in the mysql database. This statement requires the
SUPER privilege.

The server_name should be a unique reference to the server. Server
definitions are global within the scope of the server, it is not
possible to qualify the server definition to a specific database.
server_name has a maximum length of 64 characters (names longer than 64
characters are silently truncated), and is case insensitive. You may
specify the name as a quoted string.

The wrapper_name should be mysql, and may be quoted with single
quotation marks. Other values for wrapper_name are not currently
supported.

For each option you must specify either a character literal or numeric
literal. Character literals are UTF-8, support a maximum length of 64
characters and default to a blank (empty) string. String literals are
silently truncated to 64 characters. Numeric literals must be a number
between 0 and 9999, default value is 0.

*Note*: The OWNER option is currently not applied, and has no effect on
the ownership or operation of the server connection that is created.

The CREATE SERVER statement creates an entry in the mysql.servers table
that can later be used with the CREATE TABLE statement when creating a
FEDERATED table. The options that you specify will be used to populate
the columns in the mysql.servers table. The table columns are
Server_name, Host, Db, Username, Password, Port and Socket.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-server.html

","CREATE SERVER s
FOREIGN DATA WRAPPER mysql
OPTIONS (USER 'Remote', HOST '192.168.1.106', DATABASE 'test');
","http://dev.mysql.com/doc/refman/5.6/en/create-server.html");
INSERT INTO help_topic VALUES("248","MAKETIME","32","Syntax:
MAKETIME(hour,minute,second)

Returns a time value calculated from the hour, minute, and second
arguments.

As of MySQL 5.6.4, the second argument can have a fractional part.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MAKETIME(12,15,30);
        -> '12:15:30'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("249","CURDATE","32","Syntax:
CURDATE()

Returns the current date as a value in 'YYYY-MM-DD' or YYYYMMDD format,
depending on whether the function is used in a string or numeric
context.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT CURDATE();
        -> '2008-06-13'
mysql> SELECT CURDATE() + 0;
        -> 20080613
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("250","SET PASSWORD","10","Syntax:
SET PASSWORD [FOR user] =
    {
        PASSWORD('cleartext password')
      | OLD_PASSWORD('cleartext password')
      | 'encrypted password'
    }

The SET PASSWORD statement assigns a password to an existing MySQL user
account. When the read_only system variable is enabled, the SUPER
privilege is required to use SET PASSWORD, in addition to whatever
other privileges might be required.

If the password is specified using the PASSWORD() or OLD_PASSWORD()
function, the cleartext (unencrypted) password should be given as the
argument to the function, which hashes the password and returns the
encrypted password string. If the password is specified without using
either function, it should be the already encrypted password value as a
literal string. In all cases, the encrypted password string must be in
the format required by the authentication method used for the account.

With no FOR user clause, this statement sets the password for the
current user. (To see which account the server authenticated you as,
invoke the CURRENT_USER() function.) Any client who successfully
connects to the server using a nonanonymous account can change the
password for that account.

With a FOR user clause, this statement sets the password for the named
user. You must have the UPDATE privilege for the mysql database to do
this. The user account name uses the format described in
http://dev.mysql.com/doc/refman/5.6/en/account-names.html. The user
value should be given as 'user_name'@'host_name', where 'user_name' and
'host_name' are exactly as listed in the User and Host columns of the
mysql.user table row. (If you specify only a user name, a host name of
'%' is used.) For example, to set the password for an account with User
and Host column values of 'bob' and '%.example.org', write the
statement like this:

SET PASSWORD FOR 'bob'@'%.example.org' = PASSWORD('cleartext password');

That is equivalent to the following statements:

UPDATE mysql.user SET Password=PASSWORD('cleartext password')
  WHERE User='bob' AND Host='%.example.org';
FLUSH PRIVILEGES;

Another way to set the password is to use GRANT:

GRANT USAGE ON *.* TO 'bob'@'%.example.org' IDENTIFIED BY 'cleartext password';

The old_passwords system variable value determines the hashing method
used by PASSWORD(). If you specify the password using that function and
SET PASSWORD rejects the password as not being in the correct format,
it may be necessary to set old_passwords to change the hashing method.
For descriptions of the permitted values, see
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/set-password.html

","","http://dev.mysql.com/doc/refman/5.6/en/set-password.html");
INSERT INTO help_topic VALUES("251","DATABASE","17","Syntax:
DATABASE()

Returns the default (current) database name as a string in the utf8
character set. If there is no default database, DATABASE() returns
NULL. Within a stored routine, the default database is the database
that the routine is associated with, which is not necessarily the same
as the database that is the default in the calling context.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT DATABASE();
        -> 'test'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("252","IF FUNCTION","7","Syntax:
IF(expr1,expr2,expr3)

If expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns
expr2; otherwise it returns expr3. IF() returns a numeric or string
value, depending on the context in which it is used.

URL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html

","mysql> SELECT IF(1>2,2,3);
        -> 3
mysql> SELECT IF(1<2,'yes','no');
        -> 'yes'
mysql> SELECT IF(STRCMP('test','test1'),'no','yes');
        -> 'no'
","http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html");
INSERT INTO help_topic VALUES("253","POINTFROMWKB","33","PointFromWKB(wkb[,srid])

Constructs a POINT value using its WKB representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("254","POWER","4","Syntax:
POWER(X,Y)

This is a synonym for POW().

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("255","ATAN","4","Syntax:
ATAN(X)

Returns the arc tangent of X, that is, the value whose tangent is X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ATAN(2);
        -> 1.1071487177941
mysql> SELECT ATAN(-2);
        -> -1.1071487177941
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("256","SHOW PROFILE","27","Syntax:
SHOW PROFILE [type [, type] ... ]
    [FOR QUERY n]
    [LIMIT row_count [OFFSET offset]]

type:
    ALL
  | BLOCK IO
  | CONTEXT SWITCHES
  | CPU
  | IPC
  | MEMORY
  | PAGE FAULTS
  | SOURCE
  | SWAPS

The SHOW PROFILE and SHOW PROFILES statements display profiling
information that indicates resource usage for statements executed
during the course of the current session.

*Note*: These statements are deprecated as of MySQL 5.6.7 and will be
removed in a future MySQL release. Use the Performance Schema instead;
see http://dev.mysql.com/doc/refman/5.6/en/performance-schema.html.

Profiling is controlled by the profiling session variable, which has a
default value of 0 (OFF). Profiling is enabled by setting profiling to
1 or ON:

mysql> SET profiling = 1;

SHOW PROFILES displays a list of the most recent statements sent to the
server. The size of the list is controlled by the
profiling_history_size session variable, which has a default value of
15. The maximum value is 100. Setting the value to 0 has the practical
effect of disabling profiling.

All statements are profiled except SHOW PROFILE and SHOW PROFILES, so
you will find neither of those statements in the profile list.
Malformed statements are profiled. For example, SHOW PROFILING is an
illegal statement, and a syntax error occurs if you try to execute it,
but it will show up in the profiling list.

SHOW PROFILE displays detailed information about a single statement.
Without the FOR QUERY n clause, the output pertains to the most
recently executed statement. If FOR QUERY n is included, SHOW PROFILE
displays information for statement n. The values of n correspond to the
Query_ID values displayed by SHOW PROFILES.

The LIMIT row_count clause may be given to limit the output to
row_count rows. If LIMIT is given, OFFSET offset may be added to begin
the output offset rows into the full set of rows.

By default, SHOW PROFILE displays Status and Duration columns. The
Status values are like the State values displayed by SHOW PROCESSLIST,
although there might be some minor differences in interpretion for the
two statements for some status values (see
http://dev.mysql.com/doc/refman/5.6/en/thread-information.html).

Optional type values may be specified to display specific additional
types of information:

o ALL displays all information

o BLOCK IO displays counts for block input and output operations

o CONTEXT SWITCHES displays counts for voluntary and involuntary
  context switches

o CPU displays user and system CPU usage times

o IPC displays counts for messages sent and received

o MEMORY is not currently implemented

o PAGE FAULTS displays counts for major and minor page faults

o SOURCE displays the names of functions from the source code, together
  with the name and line number of the file in which the function
  occurs

o SWAPS displays swap counts

Profiling is enabled per session. When a session ends, its profiling
information is lost.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-profile.html

","mysql> SELECT @@profiling;
+-------------+
| @@profiling |
+-------------+
|           0 |
+-------------+
1 row in set (0.00 sec)

mysql> SET profiling = 1;
Query OK, 0 rows affected (0.00 sec)

mysql> DROP TABLE IF EXISTS t1;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> CREATE TABLE T1 (id INT);
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW PROFILES;
+----------+----------+--------------------------+
| Query_ID | Duration | Query                    |
+----------+----------+--------------------------+
|        0 | 0.000088 | SET PROFILING = 1        |
|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |
|        2 | 0.011947 | CREATE TABLE t1 (id INT) |
+----------+----------+--------------------------+
3 rows in set (0.00 sec)

mysql> SHOW PROFILE;
+----------------------+----------+
| Status               | Duration |
+----------------------+----------+
| checking permissions | 0.000040 |
| creating table       | 0.000056 |
| After create         | 0.011363 |
| query end            | 0.000375 |
| freeing items        | 0.000089 |
| logging slow query   | 0.000019 |
| cleaning up          | 0.000005 |
+----------------------+----------+
7 rows in set (0.00 sec)

mysql> SHOW PROFILE FOR QUERY 1;
+--------------------+----------+
| Status             | Duration |
+--------------------+----------+
| query end          | 0.000107 |
| freeing items      | 0.000008 |
| logging slow query | 0.000015 |
| cleaning up        | 0.000006 |
+--------------------+----------+
4 rows in set (0.00 sec)

mysql> SHOW PROFILE CPU FOR QUERY 2;
+----------------------+----------+----------+------------+
| Status               | Duration | CPU_user | CPU_system |
+----------------------+----------+----------+------------+
| checking permissions | 0.000040 | 0.000038 |   0.000002 |
| creating table       | 0.000056 | 0.000028 |   0.000028 |
| After create         | 0.011363 | 0.000217 |   0.001571 |
| query end            | 0.000375 | 0.000013 |   0.000028 |
| freeing items        | 0.000089 | 0.000010 |   0.000014 |
| logging slow query   | 0.000019 | 0.000009 |   0.000010 |
| cleaning up          | 0.000005 | 0.000003 |   0.000002 |
+----------------------+----------+----------+------------+
7 rows in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/show-profile.html");
INSERT INTO help_topic VALUES("257","LN","4","Syntax:
LN(X)

Returns the natural logarithm of X; that is, the base-e logarithm of X.
If X is less than or equal to 0, then NULL is returned.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT LN(2);
        -> 0.69314718055995
mysql> SELECT LN(-2);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("258","RETURN","24","Syntax:
RETURN expr

The RETURN statement terminates execution of a stored function and
returns the value expr to the function caller. There must be at least
one RETURN statement in a stored function. There may be more than one
if the function has multiple exit points.

This statement is not used in stored procedures, triggers, or events.
The LEAVE statement can be used to exit a stored program of those
types.

URL: http://dev.mysql.com/doc/refman/5.6/en/return.html

","","http://dev.mysql.com/doc/refman/5.6/en/return.html");
INSERT INTO help_topic VALUES("259","SET SQL_LOG_BIN","8","Syntax:
SET sql_log_bin = {0|1}

The sql_log_bin variable controls whether logging to the binary log is
done. The default value is 1 (do logging). To change logging for the
current session, change the session value of this variable. The session
user must have the SUPER privilege to set this variable.

In MySQL 5.6, it is not possible to set @@session.sql_log_bin within a
transaction or subquery. (Bug #53437)

URL: http://dev.mysql.com/doc/refman/5.6/en/set-sql-log-bin.html

","","http://dev.mysql.com/doc/refman/5.6/en/set-sql-log-bin.html");
INSERT INTO help_topic VALUES("260","AES_DECRYPT","12","Syntax:
AES_DECRYPT(crypt_str,key_str)

This function decrypts data using the official AES (Advanced Encryption
Standard) algorithm. For more information, see the description of
AES_ENCRYPT().

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("261","COERCIBILITY","17","Syntax:
COERCIBILITY(str)

Returns the collation coercibility value of the string argument.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT COERCIBILITY('abc' COLLATE latin1_swedish_ci);
        -> 0
mysql> SELECT COERCIBILITY(USER());
        -> 3
mysql> SELECT COERCIBILITY('abc');
        -> 4
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("262","INT","23","INT[(M)] [UNSIGNED] [ZEROFILL]

A normal-size integer. The signed range is -2147483648 to 2147483647.
The unsigned range is 0 to 4294967295.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("263","GLENGTH","13","GLength(ls)

Returns as a double-precision number the length of the LineString value
ls in its associated spatial reference.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @ls = 'LineString(1 1,2 2,3 3)';
mysql> SELECT GLength(GeomFromText(@ls));
+----------------------------+
| GLength(GeomFromText(@ls)) |
+----------------------------+
|            2.8284271247462 |
+----------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("264","MAKE_SET","38","Syntax:
MAKE_SET(bits,str1,str2,...)

Returns a set value (a string containing substrings separated by ","
characters) consisting of the strings that have the corresponding bit
in bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL
values in str1, str2, ... are not appended to the result.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT MAKE_SET(1,'a','b','c');
        -> 'a'
mysql> SELECT MAKE_SET(1 | 4,'hello','nice','world');
        -> 'hello,world'
mysql> SELECT MAKE_SET(1 | 4,'hello','nice',NULL,'world');
        -> 'hello'
mysql> SELECT MAKE_SET(0,'a','b','c');
        -> ''
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("265","FIND_IN_SET","38","Syntax:
FIND_IN_SET(str,strlist)

Returns a value in the range of 1 to N if the string str is in the
string list strlist consisting of N substrings. A string list is a
string composed of substrings separated by "," characters. If the first
argument is a constant string and the second is a column of type SET,
the FIND_IN_SET() function is optimized to use bit arithmetic. Returns
0 if str is not in strlist or if strlist is the empty string. Returns
NULL if either argument is NULL. This function does not work properly
if the first argument contains a comma (",") character.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT FIND_IN_SET('b','a,b,c,d');
        -> 2
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("266","MIN","16","Syntax:
MIN([DISTINCT] expr)

Returns the minimum value of expr. MIN() may take a string argument; in
such cases, it returns the minimum string value. See
http://dev.mysql.com/doc/refman/5.6/en/mysql-indexes.html. The DISTINCT
keyword can be used to find the minimum of the distinct values of expr,
however, this produces the same result as omitting DISTINCT.

MIN() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT student_name, MIN(test_score), MAX(test_score)
    ->        FROM student
    ->        GROUP BY student_name;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("267","REPLACE","28","Syntax:
REPLACE [LOW_PRIORITY | DELAYED]
    [INTO] tbl_name
    [PARTITION (partition_name,...)] 
    [(col_name,...)]
    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...

Or:

REPLACE [LOW_PRIORITY | DELAYED]
    [INTO] tbl_name
    [PARTITION (partition_name,...)] 
    SET col_name={expr | DEFAULT}, ...

Or:

REPLACE [LOW_PRIORITY | DELAYED]
    [INTO] tbl_name
    [PARTITION (partition_name,...)]  
    [(col_name,...)]
    SELECT ...

REPLACE works exactly like INSERT, except that if an old row in the
table has the same value as a new row for a PRIMARY KEY or a UNIQUE
index, the old row is deleted before the new row is inserted. See [HELP
INSERT].

REPLACE is a MySQL extension to the SQL standard. It either inserts, or
deletes and inserts. For another MySQL extension to standard SQL---that
either inserts or updates---see
http://dev.mysql.com/doc/refman/5.6/en/insert-on-duplicate.html.

Note that unless the table has a PRIMARY KEY or UNIQUE index, using a
REPLACE statement makes no sense. It becomes equivalent to INSERT,
because there is no index to be used to determine whether a new row
duplicates another.

Values for all columns are taken from the values specified in the
REPLACE statement. Any missing columns are set to their default values,
just as happens for INSERT. You cannot refer to values from the current
row and use them in the new row. If you use an assignment such as SET
col_name = col_name + 1, the reference to the column name on the right
hand side is treated as DEFAULT(col_name), so the assignment is
equivalent to SET col_name = DEFAULT(col_name) + 1.

To use REPLACE, you must have both the INSERT and DELETE privileges for
the table.

Beginning with MySQL 5.6.2, REPLACE supports explicit partition
selection using the PARTITION option with a comma-separated list of
names of partitions, subpartitions, or both. As with INSERT, if it is
not possible to insert the new row into any of these partitions or
subpartitions, the REPLACE statement fails with the error Found a row
not matching the given partition set. See
http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html, for
more information.

URL: http://dev.mysql.com/doc/refman/5.6/en/replace.html

","","http://dev.mysql.com/doc/refman/5.6/en/replace.html");
INSERT INTO help_topic VALUES("268","CURRENT_TIMESTAMP","32","Syntax:
CURRENT_TIMESTAMP, CURRENT_TIMESTAMP([fsp])

CURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("269","GTID_SUBSET","17","Syntax:
GTID_SUBSET(subset,set)

Given two sets of global transaction IDs subset and set, returns true
if all GTIDs in subset are also in set. Returns false otherwise.

URL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html");
INSERT INTO help_topic VALUES("270","VAR_SAMP","16","Syntax:
VAR_SAMP(expr)

Returns the sample variance of expr. That is, the denominator is the
number of rows minus one.

VAR_SAMP() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("271","DATETIME","23","DATETIME[(fsp)]

A date and time combination. The supported range is '1000-01-01
00:00:00.000000' to '9999-12-31 23:59:59.999999'. MySQL displays
DATETIME values in 'YYYY-MM-DD HH:MM:SS[.fraction]' format, but permits
assignment of values to DATETIME columns using either strings or
numbers.

As of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may
be given to specify fractional seconds precision. A value of 0
signifies that there is no fractional part. If omitted, the default
precision is 0.

As of MySQL 5.6.5, automatic initialization and updating to the current
date and time for DATETIME columns can be specified using DEFAULT and
ON UPDATE column definition clauses, as described in
http://dev.mysql.com/doc/refman/5.6/en/timestamp-initialization.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html");
INSERT INTO help_topic VALUES("272","INTEGER","23","INTEGER[(M)] [UNSIGNED] [ZEROFILL]

This type is a synonym for INT.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("273","SHOW COLUMNS","27","Syntax:
SHOW [FULL] COLUMNS {FROM | IN} tbl_name [{FROM | IN} db_name]
    [LIKE 'pattern' | WHERE expr]

SHOW COLUMNS displays information about the columns in a given table.
It also works for views. The LIKE clause, if present, indicates which
column names to match. The WHERE clause can be given to select rows
using more general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

SHOW COLUMNS displays information only for those columns for which you
have some privilege.

mysql> SHOW COLUMNS FROM City;
+------------+----------+------+-----+---------+----------------+
| Field      | Type     | Null | Key | Default | Extra          |
+------------+----------+------+-----+---------+----------------+
| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |
| Name       | char(35) | NO   |     |         |                |
| Country    | char(3)  | NO   | UNI |         |                |
| District   | char(20) | YES  | MUL |         |                |
| Population | int(11)  | NO   |     | 0       |                |
+------------+----------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

If the data types differ from what you expect them to be based on a
CREATE TABLE statement, note that MySQL sometimes changes data types
when you create or alter a table. The conditions under which this
occurs are described in
http://dev.mysql.com/doc/refman/5.6/en/silent-column-changes.html.

The FULL keyword causes the output to include the column collation and
comments, as well as the privileges you have for each column.

You can use db_name.tbl_name as an alternative to the tbl_name FROM
db_name syntax. In other words, these two statements are equivalent:

mysql> SHOW COLUMNS FROM mytable FROM mydb;
mysql> SHOW COLUMNS FROM mydb.mytable;

SHOW COLUMNS displays the following values for each table column:

Field indicates the column name.

Type indicates the column data type.

Collation indicates the collation for nonbinary string columns, or NULL
for other columns. This value is displayed only if you use the FULL
keyword.

The Null field contains YES if NULL values can be stored in the column,
NO if not.

The Key field indicates whether the column is indexed:

o If Key is empty, the column either is not indexed or is indexed only
  as a secondary column in a multiple-column, nonunique index.

o If Key is PRI, the column is a PRIMARY KEY or is one of the columns
  in a multiple-column PRIMARY KEY.

o If Key is UNI, the column is the first column of a UNIQUE index. (A
  UNIQUE index permits multiple NULL values, but you can tell whether
  the column permits NULL by checking the Null field.)

o If Key is MUL, the column is the first column of a nonunique index in
  which multiple occurrences of a given value are permitted within the
  column.

If more than one of the Key values applies to a given column of a
table, Key displays the one with the highest priority, in the order
PRI, UNI, MUL.

A UNIQUE index may be displayed as PRI if it cannot contain NULL values
and there is no PRIMARY KEY in the table. A UNIQUE index may display as
MUL if several columns form a composite UNIQUE index; although the
combination of the columns is unique, each column can still hold
multiple occurrences of a given value.

The Default field indicates the default value that is assigned to the
column. This is NULL if the column has an explicit default of NULL, or
if the column definition has no DEFAULT clause.

The Extra field contains any additional information that is available
about a given column. The value is nonempty in these cases:
auto_increment for columns that have the AUTO_INCREMENT attribute; on
update CURRENT_TIMESTAMP for TIMESTAMP or DATETIME columns that have
the ON UPDATE CURRENT_TIMESTAMP attribute.

Privileges indicates the privileges you have for the column. This value
is displayed only if you use the FULL keyword.

Comment indicates any comment the column has. This value is displayed
only if you use the FULL keyword.

SHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table's
columns with the mysqlshow db_name tbl_name command.

The DESCRIBE statement provides information similar to SHOW COLUMNS.
See http://dev.mysql.com/doc/refman/5.6/en/describe.html.

The SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements
also provide information about tables. See [HELP SHOW].

URL: http://dev.mysql.com/doc/refman/5.6/en/show-columns.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-columns.html");
INSERT INTO help_topic VALUES("274","TINYINT","23","TINYINT[(M)] [UNSIGNED] [ZEROFILL]

A very small integer. The signed range is -128 to 127. The unsigned
range is 0 to 255.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("275","MASTER_POS_WAIT","14","Syntax:
MASTER_POS_WAIT(log_name,log_pos[,timeout])

This function is useful for control of master/slave synchronization. It
blocks until the slave has read and applied all updates up to the
specified position in the master log. The return value is the number of
log events the slave had to wait for to advance to the specified
position. The function returns NULL if the slave SQL thread is not
started, the slave's master information is not initialized, the
arguments are incorrect, or an error occurs. It returns -1 if the
timeout has been exceeded. If the slave SQL thread stops while
MASTER_POS_WAIT() is waiting, the function returns NULL. If the slave
is past the specified position, the function returns immediately.

If a timeout value is specified, MASTER_POS_WAIT() stops waiting when
timeout seconds have elapsed. timeout must be greater than 0; a zero or
negative timeout means no timeout.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("276","^","20","Syntax:
^

Bitwise XOR:

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 1 ^ 1;
        -> 0
mysql> SELECT 1 ^ 0;
        -> 1
mysql> SELECT 11 ^ 3;
        -> 8
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("277","DROP VIEW","40","Syntax:
DROP VIEW [IF EXISTS]
    view_name [, view_name] ...
    [RESTRICT | CASCADE]

DROP VIEW removes one or more views. You must have the DROP privilege
for each view. If any of the views named in the argument list do not
exist, MySQL returns an error indicating by name which nonexisting
views it was unable to drop, but it also drops all of the views in the
list that do exist.

The IF EXISTS clause prevents an error from occurring for views that
don't exist. When this clause is given, a NOTE is generated for each
nonexistent view. See [HELP SHOW WARNINGS].

RESTRICT and CASCADE, if given, are parsed and ignored.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-view.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-view.html");
INSERT INTO help_topic VALUES("278","WEEK","32","Syntax:
WEEK(date[,mode])

This function returns the week number for date. The two-argument form
of WEEK() enables you to specify whether the week starts on Sunday or
Monday and whether the return value should be in the range from 0 to 53
or from 1 to 53. If the mode argument is omitted, the value of the
default_week_format system variable is used. See
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT WEEK('2008-02-20');
        -> 7
mysql> SELECT WEEK('2008-02-20',0);
        -> 7
mysql> SELECT WEEK('2008-02-20',1);
        -> 8
mysql> SELECT WEEK('2008-12-31',1);
        -> 53
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("279","DROP FUNCTION UDF","22","Syntax:
DROP FUNCTION function_name

This statement drops the user-defined function (UDF) named
function_name.

To drop a function, you must have the DELETE privilege for the mysql
database. This is because DROP FUNCTION removes a row from the
mysql.func system table that records the function's name, type, and
shared library name.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-function-udf.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-function-udf.html");
INSERT INTO help_topic VALUES("280","UPDATEXML","38","Syntax:
UpdateXML(xml_target, xpath_expr, new_xml)

This function replaces a single portion of a given fragment of XML
markup xml_target with a new XML fragment new_xml, and then returns the
changed XML. The portion of xml_target that is replaced matches an
XPath expression xpath_expr supplied by the user. In MySQL 5.6.6 and
earlier, the XPath expression could contain at most 127 characters.
This limitation is lifted in MySQL 5.6.7. (Bug #13007062, Bug #62429)

If no expression matching xpath_expr is found, or if multiple matches
are found, the function returns the original xml_target XML fragment.
All three arguments should be strings.

URL: http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html

","mysql> SELECT
    ->   UpdateXML('<a><b>ccc</b><d></d></a>', '/a', '<e>fff</e>') AS val1,
    ->   UpdateXML('<a><b>ccc</b><d></d></a>', '/b', '<e>fff</e>') AS val2,
    ->   UpdateXML('<a><b>ccc</b><d></d></a>', '//b', '<e>fff</e>') AS val3,
    ->   UpdateXML('<a><b>ccc</b><d></d></a>', '/a/d', '<e>fff</e>') AS val4,
    ->   UpdateXML('<a><d></d><b>ccc</b><d></d></a>', '/a/d', '<e>fff</e>') AS val5
    -> \G

*************************** 1. row ***************************
val1: <e>fff</e>
val2: <a><b>ccc</b><d></d></a>
val3: <a><e>fff</e><d></d></a>
val4: <a><b>ccc</b><e>fff</e></a>
val5: <a><d></d><b>ccc</b><d></d></a>
","http://dev.mysql.com/doc/refman/5.6/en/xml-functions.html");
INSERT INTO help_topic VALUES("281","RESET SLAVE","8","Syntax:
RESET SLAVE [ALL]

RESET SLAVE makes the slave forget its replication position in the
master's binary log. This statement is meant to be used for a clean
start: It deletes the master.info and relay-log.info files, all the
relay log files, and starts a new relay log file. It also resets to 0
the replication delay specified with the MASTER_DELAY option to CHANGE
MASTER TO. To use RESET SLAVE, the slave replication threads must be
stopped (use STOP SLAVE if necessary).

*Note*: All relay log files are deleted, even if they have not been
completely executed by the slave SQL thread. (This is a condition
likely to exist on a replication slave if you have issued a STOP SLAVE
statement or if the slave is highly loaded.)

In MySQL 5.6 (unlike the case in MySQL 5.1 and earlier), RESET SLAVE
does not change any replication connection parameters such as master
host, master port, master user, or master password, which are retained
in memory. This means that START SLAVE can be issued without requiring
a CHANGE MASTER TO statement following RESET SLAVE.

Connection parameters are reset if the slave mysqld is shut down
following RESET SLAVE. In MySQL 5.6.3 and later, you can instead use
RESET SLAVE ALL to reset these connection parameters (Bug #11809016).

In MySQL 5.6.7 and later, RESET SLAVE causes an implicit commit of an
ongoing transaction. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

If the slave SQL thread was in the middle of replicating temporary
tables when it was stopped, and RESET SLAVE is issued, these replicated
temporary tables are deleted on the slave.

URL: http://dev.mysql.com/doc/refman/5.6/en/reset-slave.html

","","http://dev.mysql.com/doc/refman/5.6/en/reset-slave.html");
INSERT INTO help_topic VALUES("282","DAY","32","Syntax:
DAY(date)

DAY() is a synonym for DAYOFMONTH().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("283","UUID","14","Syntax:
UUID()

Returns a Universal Unique Identifier (UUID) generated according to
"DCE 1.1: Remote Procedure Call" (Appendix A) CAE (Common Applications
Environment) Specifications published by The Open Group in October 1997
(Document Number C706,
http://www.opengroup.org/public/pubs/catalog/c706.htm).

A UUID is designed as a number that is globally unique in space and
time. Two calls to UUID() are expected to generate two different
values, even if these calls are performed on two separate computers
that are not connected to each other.

A UUID is a 128-bit number represented by a utf8 string of five
hexadecimal numbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:

o The first three numbers are generated from a timestamp.

o The fourth number preserves temporal uniqueness in case the timestamp
  value loses monotonicity (for example, due to daylight saving time).

o The fifth number is an IEEE 802 node number that provides spatial
  uniqueness. A random number is substituted if the latter is not
  available (for example, because the host computer has no Ethernet
  card, or we do not know how to find the hardware address of an
  interface on your operating system). In this case, spatial uniqueness
  cannot be guaranteed. Nevertheless, a collision should have very low
  probability.

  Currently, the MAC address of an interface is taken into account only
  on FreeBSD and Linux. On other operating systems, MySQL uses a
  randomly generated 48-bit number.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT UUID();
        -> '6ccd780c-baba-1026-9564-0040f4311e29'
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("284","SLEEP","14","Syntax:
SLEEP(duration)

Sleeps (pauses) for the number of seconds given by the duration
argument, then returns 0. If SLEEP() is interrupted, it returns 1. The
duration may have a fractional part.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("285","LINESTRING","25","LineString(pt1,pt2,...)

Constructs a LineString value from a number of Point or WKB Point
arguments. If the number of arguments is less than two, the return
value is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("286","NULLIF","7","Syntax:
NULLIF(expr1,expr2)

Returns NULL if expr1 = expr2 is true, otherwise returns expr1. This is
the same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.

URL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html

","mysql> SELECT NULLIF(1,1);
        -> NULL
mysql> SELECT NULLIF(1,2);
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html");
INSERT INTO help_topic VALUES("287","ROUND","4","Syntax:
ROUND(X), ROUND(X,D)

Rounds the argument X to D decimal places. The rounding algorithm
depends on the data type of X. D defaults to 0 if not specified. D can
be negative to cause D digits left of the decimal point of the value X
to become zero.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ROUND(-1.23);
        -> -1
mysql> SELECT ROUND(-1.58);
        -> -2
mysql> SELECT ROUND(1.58);
        -> 2
mysql> SELECT ROUND(1.298, 1);
        -> 1.3
mysql> SELECT ROUND(1.298, 0);
        -> 1
mysql> SELECT ROUND(23.298, -1);
        -> 20
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("288","TIMEDIFF","32","Syntax:
TIMEDIFF(expr1,expr2)

TIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and
expr2 are time or date-and-time expressions, but both must be of the
same type.

The result returned by TIMEDIFF() is limited to the range allowed for
TIME values. Alternatively, you can use either of the functions
TIMESTAMPDIFF() and UNIX_TIMESTAMP(), both of which return integers.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIMEDIFF('2000:01:01 00:00:00',
    ->                 '2000:01:01 00:00:00.000001');
        -> '-00:00:00.000001'
mysql> SELECT TIMEDIFF('2008-12-31 23:59:59.000001',
    ->                 '2008-12-30 01:01:01.000002');
        -> '46:58:57.999999'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("289","STOP SLAVE","8","Syntax:
STOP SLAVE [thread_types]

thread_types:
    [thread_type [, thread_type] ... ]

thread_type: IO_THREAD | SQL_THREAD

Stops the slave threads. STOP SLAVE requires the SUPER privilege.
Recommended best practice is to execute STOP SLAVE on the slave before
stopping the slave server (see
http://dev.mysql.com/doc/refman/5.6/en/server-shutdown.html, for more
information).

When using the row-based logging format: You should execute STOP SLAVE
or STOP SLAVE SQL_THREAD on the slave prior to shutting down the slave
server if you are replicating any tables that use a nontransactional
storage engine (see the Note later in this section).

Like START SLAVE, this statement may be used with the IO_THREAD and
SQL_THREAD options to name the thread or threads to be stopped.

In MySQL 5.6.7 and later, STOP SLAVE causes an implicit commit of an
ongoing transaction. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

*Note*: In MySQL 5.6, STOP SLAVE waits until the current replication
event group affecting one or more nontransactional tables has finished
executing (if there is any such replication group), or until the user
issues a KILL QUERY or KILL CONNECTION statement. (Bug #319, Bug
#38205)

URL: http://dev.mysql.com/doc/refman/5.6/en/stop-slave.html

","","http://dev.mysql.com/doc/refman/5.6/en/stop-slave.html");
INSERT INTO help_topic VALUES("290","LINEFROMTEXT","3","LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])

Constructs a LINESTRING value using its WKT representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("291","ADDTIME","32","Syntax:
ADDTIME(expr1,expr2)

ADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time
or datetime expression, and expr2 is a time expression.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT ADDTIME('2007-12-31 23:59:59.999999', '1 1:1:1.000002');
        -> '2008-01-02 01:01:01.000001'
mysql> SELECT ADDTIME('01:00:00.999999', '02:00:00.999998');
        -> '03:00:01.999997'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("292","UPPER","38","Syntax:
UPPER(str)

Returns the string str with all characters changed to uppercase
according to the current character set mapping. The default is latin1
(cp1252 West European).

mysql> SELECT UPPER('Hej');
        -> 'HEJ'

See the description of LOWER() for information that also applies to
UPPER(). This included information about how to perform lettercase
conversion of binary strings (BINARY, VARBINARY, BLOB) for which these
functions are ineffective, and information about case folding for
Unicode character sets.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("293","MEDIUMBLOB","23","MEDIUMBLOB

A BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each
MEDIUMBLOB value is stored using a 3-byte length prefix that indicates
the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("294","FROM_UNIXTIME","32","Syntax:
FROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)

Returns a representation of the unix_timestamp argument as a value in
'YYYY-MM-DD HH:MM:SS' or YYYYMMDDHHMMSS format, depending on whether
the function is used in a string or numeric context. The value is
expressed in the current time zone. unix_timestamp is an internal
timestamp value such as is produced by the UNIX_TIMESTAMP() function.

If format is given, the result is formatted according to the format
string, which is used the same way as listed in the entry for the
DATE_FORMAT() function.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT FROM_UNIXTIME(1196440219);
        -> '2007-11-30 10:30:19'
mysql> SELECT FROM_UNIXTIME(1196440219) + 0;
        -> 20071130103019.000000
mysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),
    ->                      '%Y %D %M %h:%i:%s %x');
        -> '2007 30th November 10:30:59 2007'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("295","SHA2","12","Syntax:
SHA2(str, hash_length)

Calculates the SHA-2 family of hash functions (SHA-224, SHA-256,
SHA-384, and SHA-512). The first argument is the cleartext string to be
hashed. The second argument indicates the desired bit length of the
result, which must have a value of 224, 256, 384, 512, or 0 (which is
equivalent to 256). If either argument is NULL or the hash length is
not one of the permitted values, the return value is NULL. Otherwise,
the function result is a hash value containing the desired number of
bits. See the notes at the beginning of this section about storing hash
values efficiently.

The return value is a nonbinary string in the connection character set.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT SHA2('abc', 224);
        -> '23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7'
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("296","IFNULL","7","Syntax:
IFNULL(expr1,expr2)

If expr1 is not NULL, IFNULL() returns expr1; otherwise it returns
expr2. IFNULL() returns a numeric or string value, depending on the
context in which it is used.

URL: http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html

","mysql> SELECT IFNULL(1,0);
        -> 1
mysql> SELECT IFNULL(NULL,10);
        -> 10
mysql> SELECT IFNULL(1/0,10);
        -> 10
mysql> SELECT IFNULL(1/0,'yes');
        -> 'yes'
","http://dev.mysql.com/doc/refman/5.6/en/control-flow-functions.html");
INSERT INTO help_topic VALUES("297","SHOW FUNCTION CODE","27","Syntax:
SHOW FUNCTION CODE func_name

This statement is similar to SHOW PROCEDURE CODE but for stored
functions. See [HELP SHOW PROCEDURE CODE].

URL: http://dev.mysql.com/doc/refman/5.6/en/show-function-code.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-function-code.html");
INSERT INTO help_topic VALUES("298","LEAST","19","Syntax:
LEAST(value1,value2,...)

With two or more arguments, returns the smallest (minimum-valued)
argument. The arguments are compared using the following rules:

o If any argument is NULL, the result is NULL. No comparison is needed.

o If the return value is used in an INTEGER context or all arguments
  are integer-valued, they are compared as integers.

o If the return value is used in a REAL context or all arguments are
  real-valued, they are compared as reals.

o If the arguments comprise a mix of numbers and strings, they are
  compared as numbers.

o If any argument is a nonbinary (character) string, the arguments are
  compared as nonbinary strings.

o In all other cases, the arguments are compared as binary strings.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT LEAST(2,0);
        -> 0
mysql> SELECT LEAST(34.0,3.0,5.0,767.0);
        -> 3.0
mysql> SELECT LEAST('B','A','C');
        -> 'A'
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("299","SHOW ERRORS","27","Syntax:
SHOW ERRORS [LIMIT [offset,] row_count]
SHOW COUNT(*) ERRORS

This statement is similar to SHOW WARNINGS, except that it displays
information only for errors, rather than for errors, warnings, and
notes.

The LIMIT clause has the same syntax as for the SELECT statement. See
http://dev.mysql.com/doc/refman/5.6/en/select.html.

The SHOW COUNT(*) ERRORS statement displays the number of errors. You
can also retrieve this number from the error_count variable:

SHOW COUNT(*) ERRORS;
SELECT @@error_count;

SHOW ERRORS and error_count apply only to errors, not warnings or
notes. In other respects, they are similar to SHOW WARNINGS and
warning_count. In particular, SHOW ERRORS cannot display information
for more than max_error_count messages, and error_count can exceed the
value of max_error_count if the number of errors exceeds
max_error_count.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-errors.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-errors.html");
INSERT INTO help_topic VALUES("300","=","19","=

Equal:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 = 0;
        -> 0
mysql> SELECT '0' = 0;
        -> 1
mysql> SELECT '0.0' = 0;
        -> 1
mysql> SELECT '0.01' = 0;
        -> 0
mysql> SELECT '.01' = 0.01;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("301","IS_IPV4_MAPPED","14","Syntax:
IS_IPV4_MAPPED(expr)

This function takes an IPv6 address represented in numeric form as a
binary string, as returned by INET6_ATON(). It returns 1 if the
argument is a valid IPv4-mapped IPv6 address, 0 otherwise. IPv4-mapped
addresses have the form ::ffff:ipv4_address.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT IS_IPV4_MAPPED(INET6_ATON('::10.0.5.9'));
        -> 0
mysql> SELECT IS_IPV4_MAPPED(INET6_ATON('::ffff:10.0.5.9'));
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("302","BOUNDARY","37","Boundary(g)

Returns a geometry that is the closure of the combinatorial boundary of
the geometry value g.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("303","CREATE USER","10","Syntax:
CREATE USER user_specification
    [, user_specification] ...

user_specification:
    user
    [
        IDENTIFIED BY [PASSWORD] 'password'
      | IDENTIFIED WITH auth_plugin [AS 'auth_string']
    ]

The CREATE USER statement creates new MySQL accounts. To use it, you
must have the global CREATE USER privilege or the INSERT privilege for
the mysql database. For each account, CREATE USER creates a new row in
the mysql.user table and assigns the account no privileges. An error
occurs if the account already exists.

For CREATE USER statements that do not specify an IDENTIFIED WITH
auth_plugin clause, the server associates the account with the default
authentication plugin. As of MySQL 5.6.6, this is the plugin named by
the --default-authentication-plugin option at server startup, or
mysql_native_password if that option is not used. Before 5.6.6, the
default plugin is mysql_native_password. For information about
authentication plugins, see
http://dev.mysql.com/doc/refman/5.6/en/pluggable-authentication.html.

Each account name uses the format described in
http://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:

CREATE USER 'jeffrey'@'localhost' IDENTIFIED BY 'mypass';

If you specify only the user name part of the account name, a host name
part of '%' is used.

The user specification may indicate how the user should authenticate
when connecting to the server:

o To enable the user to connect with no password (which is insecure),
  include no IDENTIFIED BY clause:

CREATE USER 'jeffrey'@'localhost';

  In this case, the account uses the default authentication plugin and
  clients must provide no password.

o To assign a password, use IDENTIFIED BY with the literal plaintext
  password value:

CREATE USER 'jeffrey'@'localhost' IDENTIFIED BY 'mypass';

  The account uses the default authentication plugin and clients must
  match the given password.

o To avoid specifying the plaintext password if you know its hash value
  (the value that PASSWORD() would return for the password), specify
  the hash value preceded by the keyword PASSWORD:

CREATE USER 'jeffrey'@'localhost'
IDENTIFIED BY PASSWORD '*90E462C37378CED12064BB3388827D2BA3A9B689';

  The account uses the default authentication plugin and the has must
  be in the format required by that plugin. Clients must match the
  given password.

o To authenticate the account using a specific authentication plugin,
  use IDENTIFIED WITH, where auth_plugin is the plugin name. It can be
  an unquoted name or a quoted string literal. 'auth_string' is an
  optional quoted string literal to pass to the plugin. The plugin
  interprets the meaning of the string, so its format is plugin
  specific. Consult the documentation for a given plugin for
  information about the authentication string values it accepts.

CREATE USER 'jeffrey'@'localhost'
IDENTIFIED WITH my_auth_plugin;

  For connections that use this account, the server invokes the named
  plugin and clients must provide credentials as required for the
  authentication method that the plugin implements. If the server
  cannot find the plugin, either at account-creation time or connect
  time, an error occurs.

The IDENTIFIED BY and IDENTIFIED WITH clauses are mutually exclusive,
so at most one of them can be specified for a given user.

For additional information about setting passwords, see
http://dev.mysql.com/doc/refman/5.6/en/assigning-passwords.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-user.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-user.html");
INSERT INTO help_topic VALUES("304","POINT","25","Point(x,y)

Constructs a Point using its coordinates.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("305","LCASE","38","Syntax:
LCASE(str)

LCASE() is a synonym for LOWER().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("306","IS NOT NULL","19","Syntax:
IS NOT NULL

Tests whether a value is not NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;
        -> 1, 1, 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("307","MATCH AGAINST","38","Syntax:
MATCH (col1,col2,...) AGAINST (expr [search_modifier])

MySQL has support for full-text indexing and searching:

o A full-text index in MySQL is an index of type FULLTEXT.

o Full-text indexes can be used only with InnoDB or MyISAM tables, and
  can be created only for CHAR, VARCHAR, or TEXT columns.

o A FULLTEXT index definition can be given in the CREATE TABLE
  statement when a table is created, or added later using ALTER TABLE
  or CREATE INDEX.

o For large data sets, it is much faster to load your data into a table
  that has no FULLTEXT index and then create the index after that, than
  to load data into a table that has an existing FULLTEXT index.

Full-text searching is performed using MATCH() ... AGAINST syntax.
MATCH() takes a comma-separated list that names the columns to be
searched. AGAINST takes a string to search for, and an optional
modifier that indicates what type of search to perform. The search
string must be a string value that is constant during query evaluation.
This rules out, for example, a table column because that can differ for
each row.

There are three types of full-text searches:

o A natural language search interprets the search string as a phrase in
  natural human language (a phrase in free text). There are no special
  operators. The stopword list applies, controlled by
  innodb_ft_enable_stopword, innodb_ft_server_stopword_table, and
  innodb_ft_user_stopword_table for InnoDB search indexes, and
  ft_stopword_file for MyISAM ones.

o Full-text searches are natural language searches if the IN NATURAL
  LANGUAGE MODE modifier is given or if no modifier is given. For more
  information, see
  http://dev.mysql.com/doc/refman/5.6/en/fulltext-natural-language.html
  .

o A boolean search interprets the search string using the rules of a
  special query language. The string contains the words to search for.
  It can also contain operators that specify requirements such that a
  word must be present or absent in matching rows, or that it should be
  weighted higher or lower than usual. Certain common words (stopwords)
  are omitted from the search index and do not match if present in the
  search string. The IN BOOLEAN MODE modifier specifies a boolean
  search. For more information, see
  http://dev.mysql.com/doc/refman/5.6/en/fulltext-boolean.html.

o A query expansion search is a modification of a natural language
  search. The search string is used to perform a natural language
  search. Then words from the most relevant rows returned by the search
  are added to the search string and the search is done again. The
  query returns the rows from the second search. The IN NATURAL
  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier
  specifies a query expansion search. For more information, see
  http://dev.mysql.com/doc/refman/5.6/en/fulltext-query-expansion.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/fulltext-search.html

","mysql> SELECT id, body, MATCH (title,body) AGAINST
    ('Security implications of running MySQL as root'
    IN NATURAL LANGUAGE MODE) AS score
    FROM articles WHERE MATCH (title,body) AGAINST
    ('Security implications of running MySQL as root'
    IN NATURAL LANGUAGE MODE);
+----+-----------------------+------------------------------------------+
| id | title                 | body                                     |
+----+-----------------------+------------------------------------------+
|  5 | MySQL vs. YourSQL     | In the following database comparison ... |
|  1 | MySQL Tutorial        | DBMS stands for DataBase ...             |
|  3 | Optimizing MySQL      | In this tutorial we will show ...        |
|  6 | MySQL Security        | When configured properly, MySQL ...      |
|  2 | How To Use MySQL Well | After you went through a ...             |
|  4 | 1001 MySQL Tricks     | 1. Never run mysqld as root. 2. ...      |
+----+-----------------------+------------------------------------------+
6 rows in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/fulltext-search.html");
INSERT INTO help_topic VALUES("308","CREATE EVENT","40","Syntax:
CREATE
    [DEFINER = { user | CURRENT_USER }]
    EVENT
    [IF NOT EXISTS]
    event_name
    ON SCHEDULE schedule
    [ON COMPLETION [NOT] PRESERVE]
    [ENABLE | DISABLE | DISABLE ON SLAVE]
    [COMMENT 'comment']
    DO event_body;

schedule:
    AT timestamp [+ INTERVAL interval] ...
  | EVERY interval
    [STARTS timestamp [+ INTERVAL interval] ...]
    [ENDS timestamp [+ INTERVAL interval] ...]

interval:
    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |
              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |
              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}

This statement creates and schedules a new event. The event will not
run unless the Event Scheduler is enabled. For information about
checking Event Scheduler status and enabling it if necessary, see
http://dev.mysql.com/doc/refman/5.6/en/events-configuration.html.

CREATE EVENT requires the EVENT privilege for the schema in which the
event is to be created. It might also require the SUPER privilege,
depending on the DEFINER value, as described later in this section.

The minimum requirements for a valid CREATE EVENT statement are as
follows:

o The keywords CREATE EVENT plus an event name, which uniquely
  identifies the event in a database schema.

o An ON SCHEDULE clause, which determines when and how often the event
  executes.

o A DO clause, which contains the SQL statement to be executed by an
  event.

This is an example of a minimal CREATE EVENT statement:

CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;

The previous statement creates an event named myevent. This event
executes once---one hour following its creation---by running an SQL
statement that increments the value of the myschema.mytable table's
mycol column by 1.

The event_name must be a valid MySQL identifier with a maximum length
of 64 characters. Event names are not case sensitive, so you cannot
have two events named myevent and MyEvent in the same schema. In
general, the rules governing event names are the same as those for
names of stored routines. See
http://dev.mysql.com/doc/refman/5.6/en/identifiers.html.

An event is associated with a schema. If no schema is indicated as part
of event_name, the default (current) schema is assumed. To create an
event in a specific schema, qualify the event name with a schema using
schema_name.event_name syntax.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-event.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-event.html");
INSERT INTO help_topic VALUES("309","MBR DEFINITION","6","Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding
geometry, formed by the minimum and maximum (X,Y) coordinates:

URL: http://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html

","((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))
","http://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html");
INSERT INTO help_topic VALUES("310","GEOMETRYCOLLECTION","25","GeometryCollection(g1,g2,...)

Constructs a GeometryCollection.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("311","*","4","Syntax:
*

Multiplication:

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT 3*5;
        -> 15
mysql> SELECT 18014398509481984*18014398509481984.0;
        -> 324518553658426726783156020576256.0
mysql> SELECT 18014398509481984*18014398509481984;
        -> out-of-range error
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("312","DES_DECRYPT","12","Syntax:
DES_DECRYPT(crypt_str[,key_str])

Decrypts a string encrypted with DES_ENCRYPT(). If an error occurs,
this function returns NULL.

This function works only if MySQL has been configured with SSL support.
See http://dev.mysql.com/doc/refman/5.6/en/ssl-connections.html.

If no key_str argument is given, DES_DECRYPT() examines the first byte
of the encrypted string to determine the DES key number that was used
to encrypt the original string, and then reads the key from the DES key
file to decrypt the message. For this to work, the user must have the
SUPER privilege. The key file can be specified with the --des-key-file
server option.

If you pass this function a key_str argument, that string is used as
the key for decrypting the message.

If the crypt_str argument does not appear to be an encrypted string,
MySQL returns the given crypt_str.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("313","ENDPOINT","13","EndPoint(ls)

Returns the Point that is the endpoint of the LineString value ls.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @ls = 'LineString(1 1,2 2,3 3)';
mysql> SELECT AsText(EndPoint(GeomFromText(@ls)));
+-------------------------------------+
| AsText(EndPoint(GeomFromText(@ls))) |
+-------------------------------------+
| POINT(3 3)                          |
+-------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("314","COUNT","16","Syntax:
COUNT(expr)

Returns a count of the number of non-NULL values of expr in the rows
retrieved by a SELECT statement. The result is a BIGINT value.

COUNT() returns 0 if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT student.student_name,COUNT(*)
    ->        FROM student,course
    ->        WHERE student.student_id=course.student_id
    ->        GROUP BY student_name;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("315","INSERT","28","Syntax:
INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name,...)] 
    [(col_name,...)]
    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...
    [ ON DUPLICATE KEY UPDATE
      col_name=expr
        [, col_name=expr] ... ]

Or:

INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name,...)]
    SET col_name={expr | DEFAULT}, ...
    [ ON DUPLICATE KEY UPDATE
      col_name=expr
        [, col_name=expr] ... ]

Or:

INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name
    [PARTITION (partition_name,...)] 
    [(col_name,...)]
    SELECT ...
    [ ON DUPLICATE KEY UPDATE
      col_name=expr
        [, col_name=expr] ... ]

INSERT inserts new rows into an existing table. The INSERT ... VALUES
and INSERT ... SET forms of the statement insert rows based on
explicitly specified values. The INSERT ... SELECT form inserts rows
selected from another table or tables. INSERT ... SELECT is discussed
further in [HELP INSERT SELECT].

In MySQL 5.6.2 and later, when inserting into a partitioned table, you
can control which partitions and subpartitions accept new rows. The
PARTITION option takes a comma-separated list of the names of one or
more partitions or subpartitions (or both) of the table. If any of the
rows to be inserted by a given INSERT statement do not match one of the
partitions listed, the INSERT statement fails with the error Found a
row not matching the given partition set. See
http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html, for
more information and examples.

URL: http://dev.mysql.com/doc/refman/5.6/en/insert.html

","","http://dev.mysql.com/doc/refman/5.6/en/insert.html");
INSERT INTO help_topic VALUES("316","MLINEFROMTEXT","3","MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])

Constructs a MULTILINESTRING value using its WKT representation and
SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("317","GEOMCOLLFROMWKB","33","GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])

Constructs a GEOMETRYCOLLECTION value using its WKB representation and
SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("318","TINYTEXT","23","TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]

A TEXT column with a maximum length of 255 (28 - 1) characters. The
effective maximum length is less if the value contains multi-byte
characters. Each TINYTEXT value is stored using a 1-byte length prefix
that indicates the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("319","DEFAULT","14","Syntax:
DEFAULT(col_name)

Returns the default value for a table column. An error results if the
column has no default value.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("320","DECODE","12","Syntax:
DECODE(crypt_str,pass_str)

Decrypts the encrypted string crypt_str using pass_str as the password.
crypt_str should be a string returned from ENCODE().

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("321","OPTIMIZE TABLE","21","Syntax:
OPTIMIZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE
    tbl_name [, tbl_name] ...

Reorganizes the physical storage of table data and associated index
data, to reduce storage space and improve I/O efficiency when accessing
the table. The exact changes made to each table depend on the storage
engine used by that table.

Use OPTIMIZE TABLE in these cases, depending on the type of table:

o After doing substantial insert, update, or delete operations on an
  InnoDB table that has its own .ibd file because it was created with
  the innodb_file_per_table option enabled. The table and indexes are
  reorganized, and disk space can be reclaimed for use by the operating
  system.

o After doing substantial insert, update, or delete operations on
  columns that are part of a FULLTEXT index in an InnoDB table. Set the
  configuration option innodb_optimize_fulltext_only=1 first. To keep
  the index maintenance period to a reasonable time, set the
  innodb_ft_num_word_optimize option to specify how many words to
  update in the search index, and run a sequence of OPTIMIZE TABLE
  statements until the search index is fully updated.

o After deleting a large part of a MyISAM or ARCHIVE table, or making
  many changes to a MyISAM or ARCHIVE table with variable-length rows
  (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns). Deleted
  rows are maintained in a linked list and subsequent INSERT operations
  reuse old row positions. You can use OPTIMIZE TABLE to reclaim the
  unused space and to defragment the data file. After extensive changes
  to a table, this statement may also improve performance of statements
  that use the table, sometimes significantly.

This statement requires SELECT and INSERT privileges for the table.

OPTIMIZE TABLE is also supported for partitioned tables. For
information about using this statement with partitioned tables and
table partitions, see
http://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

URL: http://dev.mysql.com/doc/refman/5.6/en/optimize-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/optimize-table.html");
INSERT INTO help_topic VALUES("322","<=>","19","Syntax:
<=>

NULL-safe equal. This operator performs an equality comparison like the
= operator, but returns 1 rather than NULL if both operands are NULL,
and 0 rather than NULL if one operand is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;
        -> 1, 1, 0
mysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;
        -> 1, NULL, NULL
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("323","RESET","27","Syntax:
RESET reset_option [, reset_option] ...

The RESET statement is used to clear the state of various server
operations. You must have the RELOAD privilege to execute RESET.

RESET acts as a stronger version of the FLUSH statement. See [HELP
FLUSH].

The RESET statement causes an implicit commit. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

URL: http://dev.mysql.com/doc/refman/5.6/en/reset.html

","","http://dev.mysql.com/doc/refman/5.6/en/reset.html");
INSERT INTO help_topic VALUES("324","GET_LOCK","14","Syntax:
GET_LOCK(str,timeout)

Tries to obtain a lock with a name given by the string str, using a
timeout of timeout seconds. Returns 1 if the lock was obtained
successfully, 0 if the attempt timed out (for example, because another
client has previously locked the name), or NULL if an error occurred
(such as running out of memory or the thread was killed with mysqladmin
kill). If you have a lock obtained with GET_LOCK(), it is released when
you execute RELEASE_LOCK(), execute a new GET_LOCK(), or your
connection terminates (either normally or abnormally). Locks obtained
with GET_LOCK() do not interact with transactions. That is, committing
a transaction does not release any such locks obtained during the
transaction.

This function can be used to implement application locks or to simulate
record locks. Names are locked on a server-wide basis. If a name has
been locked by one client, GET_LOCK() blocks any request by another
client for a lock with the same name. This enables clients that agree
on a given lock name to use the name to perform cooperative advisory
locking. But be aware that it also enables a client that is not among
the set of cooperating clients to lock a name, either inadvertently or
deliberately, and thus prevent any of the cooperating clients from
locking that name. One way to reduce the likelihood of this is to use
lock names that are database-specific or application-specific. For
example, use lock names of the form db_name.str or app_name.str.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT GET_LOCK('lock1',10);
        -> 1
mysql> SELECT IS_FREE_LOCK('lock2');
        -> 1
mysql> SELECT GET_LOCK('lock2',10);
        -> 1
mysql> SELECT RELEASE_LOCK('lock2');
        -> 1
mysql> SELECT RELEASE_LOCK('lock1');
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("325","BIGINT","23","BIGINT[(M)] [UNSIGNED] [ZEROFILL]

A large integer. The signed range is -9223372036854775808 to
9223372036854775807. The unsigned range is 0 to 18446744073709551615.

SERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("326","CURTIME","32","Syntax:
CURTIME([fsp])

Returns the current time as a value in 'HH:MM:SS' or HHMMSS format,
depending on whether the function is used in a string or numeric
context. The value is expressed in the current time zone.

As of MySQL 5.6.4, if the fsp argument is given to specify a fractional
seconds precision from 0 to 6, the return value includes a fractional
seconds part of that many digits. Before 5.6.4, any argument is
ignored.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT CURTIME();
        -> '23:50:26'
mysql> SELECT CURTIME() + 0;
        -> 235026.000000
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("327","SET","27","Syntax:
SET variable_assignment [, variable_assignment] ...

variable_assignment:
      user_var_name = expr
    | [GLOBAL | SESSION] system_var_name = expr
    | [@@global. | @@session. | @@]system_var_name = expr

The SET statement assigns values to different types of variables that
affect the operation of the server or your client.

URL: http://dev.mysql.com/doc/refman/5.6/en/set-statement.html

","","http://dev.mysql.com/doc/refman/5.6/en/set-statement.html");
INSERT INTO help_topic VALUES("328","TO_BASE64()","38","Syntax:
TO_BASE64(str)

Converts the string argument to base-64 encoded form and returns the
result as a character string with the connection character set and
collation. If the argument is not a string, it is converted to a string
before conversion takes place. The result is NULL if the argument is
NULL. Base-64 encoded strings can be decoded using the the
FROM_BASE64() function.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT TO_BASE64('abc'), FROM_BASE64(TO_BASE64('abc'));
        -> 'JWJj', 'abc'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("329","CONV","4","Syntax:
CONV(N,from_base,to_base)

Converts numbers between different number bases. Returns a string
representation of the number N, converted from base from_base to base
to_base. Returns NULL if any argument is NULL. The argument N is
interpreted as an integer, but may be specified as an integer or a
string. The minimum base is 2 and the maximum base is 36. If to_base is
a negative number, N is regarded as a signed number. Otherwise, N is
treated as unsigned. CONV() works with 64-bit precision.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT CONV('a',16,2);
        -> '1010'
mysql> SELECT CONV('6E',18,8);
        -> '172'
mysql> SELECT CONV(-17,10,-18);
        -> '-H'
mysql> SELECT CONV(10+'10'+'10'+0xa,10,10);
        -> '40'
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("330","LOAD XML","28","Syntax:
LOAD XML [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE 'file_name'
    [REPLACE | IGNORE]
    INTO TABLE [db_name.]tbl_name
    [PARTITION (partition_name,...)]
    [CHARACTER SET charset_name]
    [ROWS IDENTIFIED BY '<tagname>']
    [IGNORE number {LINES | ROWS}]
    [(column_or_user_var,...)]
    [SET col_name = expr,...]

The LOAD XML statement reads data from an XML file into a table. The
file_name must be given as a literal string. The tagname in the
optional ROWS IDENTIFIED BY clause must also be given as a literal
string, and must be surrounded by angle brackets (< and >).

LOAD XML acts as the complement of running the mysql client in XML
output mode (that is, starting the client with the --xml option). To
write data from a table to an XML file, use a command such as the
following one from the system shell:

shell> mysql --xml -e 'SELECT * FROM mytable' > file.xml

To read the file back into a table, use LOAD XML INFILE. By default,
the <row> element is considered to be the equivalent of a database
table row; this can be changed using the ROWS IDENTIFIED BY clause.

This statement supports three different XML formats:

o Column names as attributes and column values as attribute values:

<row column1="value1" column2="value2" .../>

o Column names as tags and column values as the content of these tags:

<row>
  <column1>value1</column1>
  <column2>value2</column2>
</row>

o Column names are the name attributes of <field> tags, and values are
  the contents of these tags:

<row>
  <field name='column1'>value1</field>
  <field name='column2'>value2</field>
</row>

  This is the format used by other MySQL tools, such as mysqldump.

All 3 formats can be used in the same XML file; the import routine
automatically detects the format for each row and interprets it
correctly. Tags are matched based on the tag or attribute name and the
column name.

The following clauses work essentially the same way for LOAD XML as
they do for LOAD DATA:

o LOW_PRIORITY or CONCURRENT

o LOCAL

o REPLACE or IGNORE

o PARTITION

o CHARACTER SET

o (column_or_user_var,...)

o SET

See [HELP LOAD DATA], for more information about these clauses.

The IGNORE number LINES or IGNORE number ROWS clause causes the first
number rows in the XML file to be skipped. It is analogous to the LOAD
DATA statement's IGNORE ... LINES clause.

URL: http://dev.mysql.com/doc/refman/5.6/en/load-xml.html

","","http://dev.mysql.com/doc/refman/5.6/en/load-xml.html");
INSERT INTO help_topic VALUES("331","ASSIGN-VALUE","15","Syntax:
:=

Assignment operator. Causes the user variable on the left hand side of
the operator to take on the value to its right. The value on the right
hand side may be a literal value, another variable storing a value, or
any legal expression that yields a scalar value, including the result
of a query (provided that this value is a scalar value). You can
perform multiple assignments in the same SET statement. You can perform
multiple assignments in the same statement-

Unlike =, the := operator is never interpreted as a comparison
operator. This means you can use := in any valid SQL statement (not
just in SET statements) to assign a value to a variable.

URL: http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html

","mysql> SELECT @var1, @var2;
        -> NULL, NULL
mysql> SELECT @var1 := 1, @var2;
        -> 1, NULL
mysql> SELECT @var1, @var2;
        -> 1, NULL
mysql> SELECT @var1, @var2 := @var1;
        -> 1, 1
mysql> SELECT @var1, @var2;
        -> 1, 1

mysql> SELECT @var1:=COUNT(*) FROM t1;
        -> 4
mysql> SELECT @var1;
        -> 4
","http://dev.mysql.com/doc/refman/5.6/en/assignment-operators.html");
INSERT INTO help_topic VALUES("332","SHOW OPEN TABLES","27","Syntax:
SHOW OPEN TABLES [{FROM | IN} db_name]
    [LIKE 'pattern' | WHERE expr]

SHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open
in the table cache. See
http://dev.mysql.com/doc/refman/5.6/en/table-cache.html. The FROM
clause, if present, restricts the tables shown to those present in the
db_name database. The LIKE clause, if present, indicates which table
names to match. The WHERE clause can be given to select rows using more
general conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-open-tables.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-open-tables.html");
INSERT INTO help_topic VALUES("333","EXTRACT","32","Syntax:
EXTRACT(unit FROM date)

The EXTRACT() function uses the same kinds of unit specifiers as
DATE_ADD() or DATE_SUB(), but extracts parts from the date rather than
performing date arithmetic.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT EXTRACT(YEAR FROM '2009-07-02');
       -> 2009
mysql> SELECT EXTRACT(YEAR_MONTH FROM '2009-07-02 01:02:03');
       -> 200907
mysql> SELECT EXTRACT(DAY_MINUTE FROM '2009-07-02 01:02:03');
       -> 20102
mysql> SELECT EXTRACT(MICROSECOND
    ->                FROM '2003-01-02 10:30:00.000123');
        -> 123
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("334","ENCRYPT","12","Syntax:
ENCRYPT(str[,salt])

Encrypts str using the Unix crypt() system call and returns a binary
string. The salt argument must be a string with at least two characters
or the result will be NULL. If no salt argument is given, a random
value is used.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT ENCRYPT('hello');
        -> 'VxuFAJXVARROc'
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("335","SHOW STATUS","27","Syntax:
SHOW [GLOBAL | SESSION] STATUS
    [LIKE 'pattern' | WHERE expr]

SHOW STATUS provides server status information. This information also
can be obtained using the mysqladmin extended-status command. The LIKE
clause, if present, indicates which variable names to match. The WHERE
clause can be given to select rows using more general conditions, as
discussed in http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.
This statement does not require any privilege. It requires only the
ability to connect to the server.
With a LIKE clause, the statement displays only rows for those
variables with names that match the pattern:

mysql> SHOW STATUS LIKE 'Key%';
+--------------------+----------+
| Variable_name      | Value    |
+--------------------+----------+
| Key_blocks_used    | 14955    |
| Key_read_requests  | 96854827 |
| Key_reads          | 162040   |
| Key_write_requests | 7589728  |
| Key_writes         | 3813196  |
+--------------------+----------+

With the GLOBAL modifier, SHOW STATUS displays the status values for
all connections to MySQL. With SESSION, it displays the status values
for the current connection. If no modifier is present, the default is
SESSION. LOCAL is a synonym for SESSION.

Some status variables have only a global value. For these, you get the
same value for both GLOBAL and SESSION. The scope for each status
variable is listed at
http://dev.mysql.com/doc/refman/5.6/en/server-status-variables.html.

Each invocation of the SHOW STATUS statement uses an internal temporary
table and increments the global Created_tmp_tables value.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-status.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-status.html");
INSERT INTO help_topic VALUES("336","INET6_ATON","14","Syntax:
INET6_ATON(expr)

Given an IPv6 or IPv4 network address as a string, returns a binary
string that represents the numeric value of the address in network byte
order (big endian). Because numeric-format IPv6 addresses require more
bytes than the largest integer type, the representation returned by
this function has the VARBINARY data type: VARBINARY(16) for IPv6
addresses and VARBINARY(4) for IPv4 addresses. If the argument is not a
valid address, INET6_ATON() returns NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT HEX(INET6_ATON('fdfe::5a55:caff:fefa:9089'));
        -> 'FDFE0000000000005A55CAFFFEFA9089'
mysql> SELECT HEX(INET6_ATON('10.0.5.9'));
        -> '0A000509'
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("337","START TRANSACTION","8","Syntax:
START TRANSACTION
    [transaction_characteristic [, transaction_characteristic] ...]

transaction_characteristic:
    WITH CONSISTENT SNAPSHOT
  | READ WRITE
  | READ ONLY

BEGIN [WORK]
COMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
ROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
SET autocommit = {0 | 1}

These statements provide control over use of transactions:

o START TRANSACTION or BEGIN start a new transaction.

o COMMIT commits the current transaction, making its changes permanent.

o ROLLBACK rolls back the current transaction, canceling its changes.

o SET autocommit disables or enables the default autocommit mode for
  the current session.

By default, MySQL runs with autocommit mode enabled. This means that as
soon as you execute a statement that updates (modifies) a table, MySQL
stores the update on disk to make it permanent. The change cannot be
rolled back.

To disable autocommit mode implicitly for a single series of
statements, use the START TRANSACTION statement:

START TRANSACTION;
SELECT @A:=SUM(salary) FROM table1 WHERE type=1;
UPDATE table2 SET summary=@A WHERE type=1;
COMMIT;

With START TRANSACTION, autocommit remains disabled until you end the
transaction with COMMIT or ROLLBACK. The autocommit mode then reverts
to its previous state.

START TRANSACTION permits several modifiers that control transaction
characteristics. To specify multiple modifiers, separate them by
commas.

o The WITH CONSISTENT SNAPSHOT modifier starts a consistent read for
  storage engines that are capable of it. This applies only to InnoDB.
  The effect is the same as issuing a START TRANSACTION followed by a
  SELECT from any InnoDB table. See
  http://dev.mysql.com/doc/refman/5.6/en/innodb-consistent-read.html.
  The WITH CONSISTENT SNAPSHOT modifier does not change the current
  transaction isolation level, so it provides a consistent snapshot
  only if the current isolation level is one that permits consistent
  read (REPEATABLE READ or SERIALIZABLE).

o The READ WRITE and READ ONLY modifiers set the transaction access
  mode. They permit or prohibit changes to tables used in the
  transaction. The READ ONLY restriction prevents the transaction from
  modifying or locking both transactional and nontransactional tables
  that are visible to other transactions; the transaction can still
  modify or lock temporary tables. These modifiers are available as of
  MySQL 5.6.5.

  MySQL enables extra optimizations for queries on InnoDB tables when
  the transaction is known to be read-only. Specifying READ ONLY
  ensures these optimizations are applied in cases where the read-only
  status cannot be determined automatically. See
  http://dev.mysql.com/doc/refman/5.6/en/innodb-performance.html#innodb
  -performance-ro-txn for more information.

  If no access mode is specified, the default mode applies. Unless the
  default has been changed, it is read/write. It is not permitted to
  specify both READ WRITE and READ ONLY in the same statement.

  In read-only mode, it remains possible to change tables created with
  the TEMPORARY keyword using DML statements. Changes made with DDL
  statements are not permitted, just as with permanent tables.

  For additional information about transaction access mode, including
  ways to change the default mode, see [HELP ISOLATION].

  If the read_only system variable is enabled, explicitly starting a
  transaction with START TRANSACTION READ WRITE requires the SUPER
  privilege.

*Important*: Many APIs used for writing MySQL client applications (such
as JDBC) provide their own methods for starting transactions that can
(and sometimes should) be used instead of sending a START TRANSACTION
statement from the client. See
http://dev.mysql.com/doc/refman/5.6/en/connectors-apis.html, or the
documentation for your API, for more information.

To disable autocommit mode explicitly, use the following statement:

SET autocommit=0;

After disabling autocommit mode by setting the autocommit variable to
zero, changes to transaction-safe tables (such as those for InnoDB or
NDB (http://dev.mysql.com/doc/refman/5.5/en/mysql-cluster.html)) are
not made permanent immediately. You must use COMMIT to store your
changes to disk or ROLLBACK to ignore the changes.

autocommit is a session variable and must be set for each session. To
disable autocommit mode for each new connection, see the description of
the autocommit system variable at
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

BEGIN and BEGIN WORK are supported as aliases of START TRANSACTION for
initiating a transaction. START TRANSACTION is standard SQL syntax, is
the recommended way to start an ad-hoc transaction, and permits
modifiers that BEGIN does not.

The BEGIN statement differs from the use of the BEGIN keyword that
starts a BEGIN ... END compound statement. The latter does not begin a
transaction. See [HELP BEGIN END].

*Note*: Within all stored programs (stored procedures and functions,
triggers, and events), the parser treats BEGIN [WORK] as the beginning
of a BEGIN ... END block. Begin a transaction in this context with
START TRANSACTION instead.

The optional WORK keyword is supported for COMMIT and ROLLBACK, as are
the CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for
additional control over transaction completion. The value of the
completion_type system variable determines the default completion
behavior. See
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

The AND CHAIN clause causes a new transaction to begin as soon as the
current one ends, and the new transaction has the same isolation level
as the just-terminated transaction. The RELEASE clause causes the
server to disconnect the current client session after terminating the
current transaction. Including the NO keyword suppresses CHAIN or
RELEASE completion, which can be useful if the completion_type system
variable is set to cause chaining or release completion by default.

URL: http://dev.mysql.com/doc/refman/5.6/en/commit.html

","","http://dev.mysql.com/doc/refman/5.6/en/commit.html");
INSERT INTO help_topic VALUES("338","SHOW SLAVE HOSTS","27","Syntax:
SHOW SLAVE HOSTS

Displays a list of replication slaves currently registered with the
master.

The list is displayed on any server (not just the master server). The
output looks like this:

mysql> SHOW SLAVE HOSTS;
+-----------+-----------+-------+-----------+--------------------------------------+
| Server_id | Host      | Port  | Master_id | Slave_UUID                           |
+-----------+-----------+-------+-----------+--------------------------------------+
|  192168010 | iconnect2 | 3306 | 192168011 | 14cb6624-7f93-11e0-b2c0-c80aa9429562 |
| 1921680101 | athena    | 3306 | 192168011 | 07af4990-f41f-11df-a566-7ac56fdaf645 |
+------------+-----------+------+-----------+--------------------------------------+

o Server_id: The unique server ID of the slave server, as configured in
  the server's option file, or on the command line with
  --server-id=value.

o Host: The host name of the slave server, as configured in the
  server's option file, or on the command line with
  --report-host=host_name. Note that this can differ from the machine
  name as configured in the operating system.

o Port: The port the slave server is listening on.

  In MySQL 5.6.5 and later, a zero in this column means that the slave
  port (--report-port) was not set. Prior to MySQL 5.6.5, 3306 was used
  as the default in such cases (Bug #13333431).

o Master_id: The unique server ID of the master server that the slave
  server is replicating from.

o Slave_UUID: The globally unique ID of this slave, as generated on the
  slave and found in the slave's auto.cnf file.

  This column was added in MySQL 5.6.0.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-slave-hosts.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-slave-hosts.html");
INSERT INTO help_topic VALUES("339","TIME_FORMAT","32","Syntax:
TIME_FORMAT(time,format)

This is used like the DATE_FORMAT() function, but the format string may
contain format specifiers only for hours, minutes, seconds, and
microseconds. Other specifiers produce a NULL value or 0.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIME_FORMAT('100:00:00', '%H %k %h %I %l');
        -> '100 100 04 04 4'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("340","CREATE DATABASE","40","Syntax:
CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
    [create_specification] ...

create_specification:
    [DEFAULT] CHARACTER SET [=] charset_name
  | [DEFAULT] COLLATE [=] collation_name

CREATE DATABASE creates a database with the given name. To use this
statement, you need the CREATE privilege for the database. CREATE
SCHEMA is a synonym for CREATE DATABASE.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-database.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-database.html");
INSERT INTO help_topic VALUES("341","VAR_POP","16","Syntax:
VAR_POP(expr)

Returns the population standard variance of expr. It considers rows as
the whole population, not as a sample, so it has the number of rows as
the denominator. You can also use VARIANCE(), which is equivalent but
is not standard SQL.

VAR_POP() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("342","CONCAT_WS","38","Syntax:
CONCAT_WS(separator,str1,str2,...)

CONCAT_WS() stands for Concatenate With Separator and is a special form
of CONCAT(). The first argument is the separator for the rest of the
arguments. The separator is added between the strings to be
concatenated. The separator can be a string, as can the rest of the
arguments. If the separator is NULL, the result is NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT CONCAT_WS(',','First name','Second name','Last Name');
        -> 'First name,Second name,Last Name'
mysql> SELECT CONCAT_WS(',','First name',NULL,'Last Name');
        -> 'First name,Last Name'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("343","TEXT","23","TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]

A TEXT column with a maximum length of 65,535 (216 - 1) characters. The
effective maximum length is less if the value contains multi-byte
characters. Each TEXT value is stored using a 2-byte length prefix that
indicates the number of bytes in the value.

An optional length M can be given for this type. If this is done, MySQL
creates the column as the smallest TEXT type large enough to hold
values M characters long.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("344","~","20","Syntax:
~

Invert all bits.

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 5 & ~1;
        -> 4
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("345","ASIN","4","Syntax:
ASIN(X)

Returns the arc sine of X, that is, the value whose sine is X. Returns
NULL if X is not in the range -1 to 1.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ASIN(0.2);
        -> 0.20135792079033
mysql> SELECT ASIN('foo');

+-------------+
| ASIN('foo') |
+-------------+
|           0 |
+-------------+
1 row in set, 1 warning (0.00 sec)

mysql> SHOW WARNINGS;
+---------+------+-----------------------------------------+
| Level   | Code | Message                                 |
+---------+------+-----------------------------------------+
| Warning | 1292 | Truncated incorrect DOUBLE value: 'foo' |
+---------+------+-----------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("346","ROW_COUNT","17","Syntax:
ROW_COUNT()

In MySQL 5.6, ROW_COUNT() returns a value as follows:

o DDL statements: 0. This applies to statements such as CREATE TABLE or
  DROP TABLE.

o DML statements other than SELECT: The number of affected rows. This
  applies to statements such as UPDATE, INSERT, or DELETE (as before),
  but now also to statements such as ALTER TABLE and LOAD DATA INFILE.

o SELECT: -1 if the statement returns a result set, or the number of
  rows "affected" if it does not. For example, for SELECT * FROM t1,
  ROW_COUNT() returns -1. For SELECT * FROM t1 INTO OUTFILE
  'file_name', ROW_COUNT() returns the number of rows written to the
  file.

o SIGNAL statements: 0.

For UPDATE statements, the affected-rows value by default is the number
of rows actually changed. If you specify the CLIENT_FOUND_ROWS flag to
mysql_real_connect() when connecting to mysqld, the affected-rows value
is the number of rows "found"; that is, matched by the WHERE clause.

For REPLACE statements, the affected-rows value is 2 if the new row
replaced an old row, because in this case, one row was inserted after
the duplicate was deleted.

For INSERT ... ON DUPLICATE KEY UPDATE statements, the affected-rows
value is 1 if the row is inserted as a new row and 2 if an existing row
is updated.

The ROW_COUNT() value is similar to the value from the
mysql_affected_rows() C API function and the row count that the mysql
client displays following statement execution.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> INSERT INTO t VALUES(1),(2),(3);
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT ROW_COUNT();
+-------------+
| ROW_COUNT() |
+-------------+
|           3 |
+-------------+
1 row in set (0.00 sec)

mysql> DELETE FROM t WHERE i IN(1,2);
Query OK, 2 rows affected (0.00 sec)

mysql> SELECT ROW_COUNT();
+-------------+
| ROW_COUNT() |
+-------------+
|           2 |
+-------------+
1 row in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("347","SIGN","4","Syntax:
SIGN(X)

Returns the sign of the argument as -1, 0, or 1, depending on whether X
is negative, zero, or positive.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT SIGN(-32);
        -> -1
mysql> SELECT SIGN(0);
        -> 0
mysql> SELECT SIGN(234);
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("348","FLOAT","23","FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]

A small (single-precision) floating-point number. Permissible values
are -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to
3.402823466E+38. These are the theoretical limits, based on the IEEE
standard. The actual range might be slightly smaller depending on your
hardware or operating system.

M is the total number of digits and D is the number of digits following
the decimal point. If M and D are omitted, values are stored to the
limits permitted by the hardware. A single-precision floating-point
number is accurate to approximately 7 decimal places.

UNSIGNED, if specified, disallows negative values.

Using FLOAT might give you some unexpected problems because all
calculations in MySQL are done with double precision. See
http://dev.mysql.com/doc/refman/5.6/en/no-matching-rows.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("349","CHARSET","17","Syntax:
CHARSET(str)

Returns the character set of the string argument.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT CHARSET('abc');
        -> 'latin1'
mysql> SELECT CHARSET(CONVERT('abc' USING utf8));
        -> 'utf8'
mysql> SELECT CHARSET(USER());
        -> 'utf8'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("350","SUBDATE","32","Syntax:
SUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)

When invoked with the INTERVAL form of the second argument, SUBDATE()
is a synonym for DATE_SUB(). For information on the INTERVAL unit
argument, see the discussion for DATE_ADD().

mysql> SELECT DATE_SUB('2008-01-02', INTERVAL 31 DAY);
        -> '2007-12-02'
mysql> SELECT SUBDATE('2008-01-02', INTERVAL 31 DAY);
        -> '2007-12-02'

The second form enables the use of an integer value for days. In such
cases, it is interpreted as the number of days to be subtracted from
the date or datetime expression expr.

mysql> SELECT SUBDATE('2008-01-02 12:00:00', 31);
        -> '2007-12-02 12:00:00'

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("351","DAYOFYEAR","32","Syntax:
DAYOFYEAR(date)

Returns the day of the year for date, in the range 1 to 366.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DAYOFYEAR('2007-02-03');
        -> 34
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("352","%","4","Syntax:
N % M, N MOD M

Modulo operation. Returns the remainder of N divided by M. For more
information, see the description for the MOD() function in
http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("353","ASTEXT","3","AsText(g), AsWKT(g)

Converts a value in internal geometry format to its WKT representation
and returns the string result.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html

","mysql> SET @g = 'LineString(1 1,2 2,3 3)';
mysql> SELECT AsText(GeomFromText(@g));
+--------------------------+
| AsText(GeomFromText(@g)) |
+--------------------------+
| LINESTRING(1 1,2 2,3 3)  |
+--------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/functions-to-convert-geometries-between-formats.html");
INSERT INTO help_topic VALUES("354","DECLARE CONDITION","24","Syntax:
DECLARE condition_name CONDITION FOR condition_value

condition_value:
    mysql_error_code
  | SQLSTATE [VALUE] sqlstate_value

The DECLARE ... CONDITION statement declares a named error condition,
associating a name with a condition that needs specific handling. The
name can be referred to in a subsequent DECLARE ... HANDLER statement
(see [HELP DECLARE HANDLER]).

Condition declarations must appear before cursor or handler
declarations.

The condition_value for DECLARE ... CONDITION can be a MySQL error code
(a number) or an SQLSTATE value (a 5-character string literal). You
should not use MySQL error code 0 or SQLSTATE values that begin with
'00', because those indicate success rather than an error condition.
For a list of MySQL error codes and SQLSTATE values, see
http://dev.mysql.com/doc/refman/5.6/en/error-messages-server.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/declare-condition.html

","","http://dev.mysql.com/doc/refman/5.6/en/declare-condition.html");
INSERT INTO help_topic VALUES("355","MONTHNAME","32","Syntax:
MONTHNAME(date)

Returns the full name of the month for date. The language used for the
name is controlled by the value of the lc_time_names system variable
(http://dev.mysql.com/doc/refman/5.6/en/locale-support.html).

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT MONTHNAME('2008-02-03');
        -> 'February'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("356","NUMGEOMETRIES","26","NumGeometries(gc)

Returns the number of geometries in the GeometryCollection value gc.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @gc = 'GeometryCollection(Point(1 1),LineString(2 2, 3 3))';
mysql> SELECT NumGeometries(GeomFromText(@gc));
+----------------------------------+
| NumGeometries(GeomFromText(@gc)) |
+----------------------------------+
|                                2 |
+----------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("357","TIMESTAMP FUNCTION","32","Syntax:
TIMESTAMP(expr), TIMESTAMP(expr1,expr2)

With a single argument, this function returns the date or datetime
expression expr as a datetime value. With two arguments, it adds the
time expression expr2 to the date or datetime expression expr1 and
returns the result as a datetime value.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIMESTAMP('2003-12-31');
        -> '2003-12-31 00:00:00'
mysql> SELECT TIMESTAMP('2003-12-31 12:00:00','12:00:00');
        -> '2004-01-01 00:00:00'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("358","DROP DATABASE","40","Syntax:
DROP {DATABASE | SCHEMA} [IF EXISTS] db_name

DROP DATABASE drops all tables in the database and deletes the
database. Be very careful with this statement! To use DROP DATABASE,
you need the DROP privilege on the database. DROP SCHEMA is a synonym
for DROP DATABASE.

*Important*: When a database is dropped, user privileges on the
database are not automatically dropped. See [HELP GRANT].

IF EXISTS is used to prevent an error from occurring if the database
does not exist.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-database.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-database.html");
INSERT INTO help_topic VALUES("359","CHANGE MASTER TO","8","Syntax:
CHANGE MASTER TO option [, option] ...

option:
    MASTER_BIND = 'interface_name'
  | MASTER_HOST = 'host_name'
  | MASTER_USER = 'user_name'
  | MASTER_PASSWORD = 'password'
  | MASTER_PORT = port_num
  | MASTER_CONNECT_RETRY = interval
  | MASTER_RETRY_COUNT = count
  | MASTER_DELAY = interval
  | MASTER_HEARTBEAT_PERIOD = interval
  | MASTER_LOG_FILE = 'master_log_name'
  | MASTER_LOG_POS = master_log_pos
  | MASTER_AUTO_POSITION = {0|1}
  | RELAY_LOG_FILE = 'relay_log_name'
  | RELAY_LOG_POS = relay_log_pos
  | MASTER_SSL = {0|1}
  | MASTER_SSL_CA = 'ca_file_name'
  | MASTER_SSL_CAPATH = 'ca_directory_name'
  | MASTER_SSL_CERT = 'cert_file_name'
  | MASTER_SSL_CRL = 'crl_file_name'
  | MASTER_SSL_CRLPATH = 'crl_directory_name'
  | MASTER_SSL_KEY = 'key_file_name'
  | MASTER_SSL_CIPHER = 'cipher_list'
  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}
  | IGNORE_SERVER_IDS = (server_id_list)

server_id_list:
    [server_id [, server_id] ... ]

CHANGE MASTER TO changes the parameters that the slave server uses for
connecting to the master server, for reading the master binary log, and
reading the slave relay log. It also updates the contents of the
master.info and relay-log.info files. To use CHANGE MASTER TO, the
slave replication threads must be stopped (use STOP SLAVE if
necessary). In MySQL 5.6.11 and later, gtid_next must also be set to
AUTOMATIC (BUG#16062608).

Options not specified retain their value, except as indicated in the
following discussion. Thus, in most cases, there is no need to specify
options that do not change. For example, if the password to connect to
your MySQL master has changed, you just need to issue these statements
to tell the slave about the new password:

STOP SLAVE; -- if replication was running
CHANGE MASTER TO MASTER_PASSWORD='new3cret';
START SLAVE; -- if you want to restart replication

MASTER_HOST, MASTER_USER, MASTER_PASSWORD, and MASTER_PORT provide
information to the slave about how to connect to its master:

o MASTER_HOST and MASTER_PORT are the host name (or IP address) of the
  master host and its TCP/IP port.

  *Note*: Replication cannot use Unix socket files. You must be able to
  connect to the master MySQL server using TCP/IP.

  If you specify the MASTER_HOST or MASTER_PORT option, the slave
  assumes that the master server is different from before (even if the
  option value is the same as its current value.) In this case, the old
  values for the master binary log file name and position are
  considered no longer applicable, so if you do not specify
  MASTER_LOG_FILE and MASTER_LOG_POS in the statement,
  MASTER_LOG_FILE='' and MASTER_LOG_POS=4 are silently appended to it.

  Setting MASTER_HOST='' (that is, setting its value explicitly to an
  empty string) is not the same as not setting MASTER_HOST at all.
  Beginning with MySQL 5.5, trying to set MASTER_HOST to an empty
  string fails with an error. Previously, setting MASTER_HOST to an
  empty string caused START SLAVE subsequently to fail. (Bug #28796)

  In MySQL 5.6.5 and later, values used for MASTER_HOST and other
  CHANGE MASTER TO options are checked for linefeed (\n or 0x0A)
  characters; the presence of such characters in these values causes
  the statement to fail with ER_MASTER_INFO. (Bug #11758581, Bug
  #50801)

o MASTER_USER and MASTER_PASSWORD are the user name and password of the
  account to use for connecting to the master.

  In MySQL 5.6.4 and later, MASTER_USER cannot be made empty; setting
  MASTER_USER = '' or leaving it unset when setting a value for for
  MASTER_PASSWORD causes an error (Bug #13427949).

  Currently, a password used for a replication slave account is
  effectively limited to 32 characters in length; the password can be
  longer, but any excess characters are truncated. This is not due to
  any limit imposed by the MySQL Server generally, but rather is an
  issue specific to MySQL Replication. (For more information, see Bug
  #43439.)

  The text of a running CHANGE MASTER TO statement, including values
  for MASTER_USER and MASTER_PASSWORD, can be seen in the output of a
  concurrent SHOW PROCESSLIST statement. (The complete text of a START
  SLAVE statement is also visible to SHOW PROCESSLIST.)

The MASTER_SSL_xxx options provide information about using SSL for the
connection. They correspond to the --ssl-xxx options described in
http://dev.mysql.com/doc/refman/5.6/en/ssl-options.html, and
http://dev.mysql.com/doc/refman/5.6/en/replication-solutions-ssl.html.
These options can be changed even on slaves that are compiled without
SSL support. They are saved to the master.info file, but are ignored if
the slave does not have SSL support enabled. MASTER_SSL_CRL and
MASTER_SSL_CRLPATH were added in MySQL 5.6.3.

MASTER_CONNECT_RETRY specifies how many seconds to wait between connect
retries. The default is 60.

MASTER_RETRY_COUNT, added in MySQL 5.6.1, limits the number of
reconnection attempts and updates the value of the Master_Retry_Count
column in the output of SHOW SLAVE STATUS (also added in MySQL 5.6.1).
The default value is 24 * 3600 = 86400. MASTER_RETRY_COUNT is intended
to replace the older --master-retry-count server option, and is now the
preferred method for setting this limit. You are encouraged not to rely
on --master-retry-count in new applications and, when upgrading to
MySQL 5.6.1 or later from earlier versions of MySQL, to update any
existing applications that rely on it, so that they use CHANGE MASTER
TO ... MASTER_RETRY_COUNT instead.

MASTER_DELAY specifies how many seconds behind the master the slave
must lag. An event received from the master is not executed until at
least interval seconds later than its execution on the master. The
default is 0. An error occurs if interval is not a nonnegative integer
in the range from 0 to 231-1. For more information, see
http://dev.mysql.com/doc/refman/5.6/en/replication-delayed.html. This
option was added in MySQL 5.6.0.

MASTER_BIND is for use on replication slaves having multiple network
interfaces, and determines which of the slave's network interfaces is
chosen for connecting to the master.

The address configured with this option, if any, can be seen in the
Master_Bind column of the output from SHOW SLAVE STATUS. If you are
using slave status log tables (server started with
--master-info-repository=TABLE), the value can also be seen as the
Master_bind column of the mysql.slave_master_info table.

The ability to bind a replication slave to a specific network interface
was added in MySQL 5.6.2.

MASTER_HEARTBEAT_PERIOD sets the interval in seconds between
replication heartbeats. Whenever the master's binary log is updated
with an event, the waiting period for the next heartbeat is reset.
interval is a decimal value having the range 0 to 4294967 seconds and a
resolution in milliseconds; the smallest nonzero value is 0.001.
Heartbeats are sent by the master only if there are no unsent events in
the binary log file for a period longer than interval.

If you are logging master connection information to tables,
MASTER_HEARTBEAT_PERIOD can be seen as the value of the Heartbeat
column of the mysql.slave_master_info table.

Setting interval to 0 disables heartbeats altogether. The default value
for interval is equal to the value of slave_net_timeout divided by 2.

Setting @@global.slave_net_timeout to a value less than that of the
current heartbeat interval results in a warning being issued. The
effect of issuing RESET SLAVE on the heartbeat interval is to reset it
to the default value.

MASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the
slave I/O thread should begin reading from the master the next time the
thread starts. RELAY_LOG_FILE and RELAY_LOG_POS are the coordinates at
which the slave SQL thread should begin reading from the relay log the
next time the thread starts. If you specify either of MASTER_LOG_FILE
or MASTER_LOG_POS, you cannot specify RELAY_LOG_FILE or RELAY_LOG_POS.
In MySQL 5.6.5 and later, if you specify either of MASTER_LOG_FILE or
MASTER_LOG_POS, you also cannot specify MASTER_AUTO_POSITION = 1
(described later in this section). If neither of MASTER_LOG_FILE or
MASTER_LOG_POS is specified, the slave uses the last coordinates of the
slave SQL thread before CHANGE MASTER TO was issued. This ensures that
there is no discontinuity in replication, even if the slave SQL thread
was late compared to the slave I/O thread, when you merely want to
change, say, the password to use.

MASTER_AUTO_POSITION was added in MySQL 5.6.5. If MASTER_AUTO_POSITION
= 1 is used with CHANGE MASTER TO, the slave attempts to connect to the
master using the GTID-based replication protocol. In this case, the
coordinates represented by MASTER_LOG_FILE and MASTER_LOG_POS are not
used, and global transaction identifiers are used instead. Thus the use
of either or both of these options together with MASTER_AUTO_POSITION
causes an error.

Beginning with MySQL 5.6.10, you can see whether replication is running
with autopositioning enabled by checking the output of SHOW SLAVE
STATUS. (Bug #15992220)

gtid_mode must also be enabled before issuing CHANGE MASTER TO ...
MASTER_AUTO_POSITION = 1. Otherwise, the statement fails with an error.

To revert to the older file-based replication protocol after using
GTIDs, you can issue a new CHANGE MASTER TO statement that specifies
MASTER_AUTO_POSITION = 0, as well as at least one of MASTER_LOG_FILE or
MASTER_LOG_POSITION.

CHANGE MASTER TO deletes all relay log files and starts a new one,
unless you specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay
log files are kept; the relay_log_purge global variable is set silently
to 0.

Prior to MySQL 5.6.2, RELAY_LOG_FILE required an absolute path.
Beginning with MySQL 5.6.2, the path can be relative, in which case it
is assumed to be relative to the slave's data directory. (Bug #12190)

IGNORE_SERVER_IDS takes a comma-separated list of 0 or more server IDs.
Events originating from the corresponding servers are ignored, with the
exception of log rotation and deletion events, which are still recorded
in the relay log.

In circular replication, the originating server normally acts as the
terminator of its own events, so that they are not applied more than
once. Thus, this option is useful in circular replication when one of
the servers in the circle is removed. Suppose that you have a circular
replication setup with 4 servers, having server IDs 1, 2, 3, and 4, and
server 3 fails. When bridging the gap by starting replication from
server 2 to server 4, you can include IGNORE_SERVER_IDS = (3) in the
CHANGE MASTER TO statement that you issue on server 4 to tell it to use
server 2 as its master instead of server 3. Doing so causes it to
ignore and not to propagate any statements that originated with the
server that is no longer in use.

If a CHANGE MASTER TO statement is issued without any IGNORE_SERVER_IDS
option, any existing list is preserved; RESET SLAVE also has no effect
on the server ID list. To clear the list of ignored servers, it is
necessary to use the option with an empty list:

CHANGE MASTER TO IGNORE_SERVER_IDS = ();

If IGNORE_SERVER_IDS contains the server's own ID and the server was
started with the --replicate-same-server-id option enabled, an error
results.

In MySQL 5.6, the master.info file and the output of SHOW SLAVE STATUS
provide the list of servers that are currently ignored. For more
information, see
http://dev.mysql.com/doc/refman/5.6/en/slave-logs-status.html, and
[HELP SHOW SLAVE STATUS].

In MySQL 5.6, invoking CHANGE MASTER TO causes the previous values for
MASTER_HOST, MASTER_PORT, MASTER_LOG_FILE, and MASTER_LOG_POS to be
written to the error log, along with other information about the
slave's state prior to execution.

In MySQL 5.6.7 and later, CHANGE MASTER TO causes an implicit commit of
an ongoing transaction. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

CHANGE MASTER TO is useful for setting up a slave when you have the
snapshot of the master and have recorded the master binary log
coordinates corresponding to the time of the snapshot. After loading
the snapshot into the slave to synchronize it to the slave, you can run
CHANGE MASTER TO MASTER_LOG_FILE='log_name', MASTER_LOG_POS=log_pos on
the slave to specify the coordinates at which the slave should begin
reading the master binary log.

The following example changes the master server the slave uses and
establishes the master binary log coordinates from which the slave
begins reading. This is used when you want to set up the slave to
replicate the master:

CHANGE MASTER TO
  MASTER_HOST='master2.mycompany.com',
  MASTER_USER='replication',
  MASTER_PASSWORD='bigs3cret',
  MASTER_PORT=3306,
  MASTER_LOG_FILE='master2-bin.001',
  MASTER_LOG_POS=4,
  MASTER_CONNECT_RETRY=10;

The next example shows an operation that is less frequently employed.
It is used when the slave has relay log files that you want it to
execute again for some reason. To do this, the master need not be
reachable. You need only use CHANGE MASTER TO and start the SQL thread
(START SLAVE SQL_THREAD):

CHANGE MASTER TO
  RELAY_LOG_FILE='slave-relay-bin.006',
  RELAY_LOG_POS=4025;

URL: http://dev.mysql.com/doc/refman/5.6/en/change-master-to.html

","","http://dev.mysql.com/doc/refman/5.6/en/change-master-to.html");
INSERT INTO help_topic VALUES("360","SHOW GRANTS","27","Syntax:
SHOW GRANTS [FOR user]

This statement lists the GRANT statement or statements that must be
issued to duplicate the privileges that are granted to a MySQL user
account. The account is named using the same format as for the GRANT
statement; for example, 'jeffrey'@'localhost'. If you specify only the
user name part of the account name, a host name part of '%' is used.
For additional information about specifying account names, see [HELP
GRANT].

mysql> SHOW GRANTS FOR 'root'@'localhost';
+---------------------------------------------------------------------+
| Grants for root@localhost                                           |
+---------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION |
+---------------------------------------------------------------------+

To list the privileges granted to the account that you are using to
connect to the server, you can use any of the following statements:

SHOW GRANTS;
SHOW GRANTS FOR CURRENT_USER;
SHOW GRANTS FOR CURRENT_USER();

If SHOW GRANTS FOR CURRENT_USER (or any of the equivalent syntaxes) is
used in DEFINER context, such as within a stored procedure that is
defined with SQL SECURITY DEFINER), the grants displayed are those of
the definer and not the invoker.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-grants.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-grants.html");
INSERT INTO help_topic VALUES("361","CRC32","4","Syntax:
CRC32(expr)

Computes a cyclic redundancy check value and returns a 32-bit unsigned
value. The result is NULL if the argument is NULL. The argument is
expected to be a string and (if possible) is treated as one if it is
not.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT CRC32('MySQL');
        -> 3259397556
mysql> SELECT CRC32('mysql');
        -> 2501908538
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("362","STARTPOINT","13","StartPoint(ls)

Returns the Point that is the start point of the LineString value ls.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @ls = 'LineString(1 1,2 2,3 3)';
mysql> SELECT AsText(StartPoint(GeomFromText(@ls)));
+---------------------------------------+
| AsText(StartPoint(GeomFromText(@ls))) |
+---------------------------------------+
| POINT(1 1)                            |
+---------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("363","MPOLYFROMTEXT","3","MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])

Constructs a MULTIPOLYGON value using its WKT representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("364","DECLARE VARIABLE","24","Syntax:
DECLARE var_name [, var_name] ... type [DEFAULT value]

This statement declares local variables within stored programs. To
provide a default value for a variable, include a DEFAULT clause. The
value can be specified as an expression; it need not be a constant. If
the DEFAULT clause is missing, the initial value is NULL.

Local variables are treated like stored routine parameters with respect
to data type and overflow checking. See [HELP CREATE PROCEDURE].

Variable declarations must appear before cursor or handler
declarations.

Local variable names are not case sensitive. Permissible characters and
quoting rules are the same as for other identifiers, as described in
http://dev.mysql.com/doc/refman/5.6/en/identifiers.html.

The scope of a local variable is the BEGIN ... END block within which
it is declared. The variable can be referred to in blocks nested within
the declaring block, except those blocks that declare a variable with
the same name.

URL: http://dev.mysql.com/doc/refman/5.6/en/declare-local-variable.html

","","http://dev.mysql.com/doc/refman/5.6/en/declare-local-variable.html");
INSERT INTO help_topic VALUES("365","NOT BETWEEN","19","Syntax:
expr NOT BETWEEN min AND max

This is the same as NOT (expr BETWEEN min AND max).

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("366","YEARWEEK","32","Syntax:
YEARWEEK(date), YEARWEEK(date,mode)

Returns year and week for a date. The mode argument works exactly like
the mode argument to WEEK(). The year in the result may be different
from the year in the date argument for the first and the last week of
the year.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT YEARWEEK('1987-01-01');
        -> 198653
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("367","BIT_OR","16","Syntax:
BIT_OR(expr)

Returns the bitwise OR of all bits in expr. The calculation is
performed with 64-bit (BIGINT) precision.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("368","LOG10","4","Syntax:
LOG10(X)

Returns the base-10 logarithm of X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT LOG10(2);
        -> 0.30102999566398
mysql> SELECT LOG10(100);
        -> 2
mysql> SELECT LOG10(-100);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("369","DECIMAL","23","DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]

A packed "exact" fixed-point number. M is the total number of digits
(the precision) and D is the number of digits after the decimal point
(the scale). The decimal point and (for negative numbers) the "-" sign
are not counted in M. If D is 0, values have no decimal point or
fractional part. The maximum number of digits (M) for DECIMAL is 65.
The maximum number of supported decimals (D) is 30. If D is omitted,
the default is 0. If M is omitted, the default is 10.

UNSIGNED, if specified, disallows negative values.

All basic calculations (+, -, *, /) with DECIMAL columns are done with
a precision of 65 digits.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("370","CREATE FUNCTION","40","The CREATE FUNCTION statement is used to create stored functions and
user-defined functions (UDFs):

o For information about creating stored functions, see [HELP CREATE
  PROCEDURE].

o For information about creating user-defined functions, see [HELP
  CREATE FUNCTION UDF].

URL: http://dev.mysql.com/doc/refman/5.6/en/create-function.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-function.html");
INSERT INTO help_topic VALUES("371","<","19","Syntax:
<

Less than:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 2 < 2;
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("372","MD5","12","Syntax:
MD5(str)

Calculates an MD5 128-bit checksum for the string. The value is
returned as a string of 32 hex digits, or NULL if the argument was
NULL. The return value can, for example, be used as a hash key. See the
notes at the beginning of this section about storing hash values
efficiently.

The return value is a nonbinary string in the connection character set.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT MD5('testing');
        -> 'ae2b1fca515949e5d54fb22b8ed95575'
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("373","DAYOFMONTH","32","Syntax:
DAYOFMONTH(date)

Returns the day of the month for date, in the range 1 to 31, or 0 for
dates such as '0000-00-00' or '2008-00-00' that have a zero day part.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DAYOFMONTH('2007-02-03');
        -> 3
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("374","UNIX_TIMESTAMP","32","Syntax:
UNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)

If called with no argument, returns a Unix timestamp (seconds since
'1970-01-01 00:00:00' UTC) as an unsigned integer. If UNIX_TIMESTAMP()
is called with a date argument, it returns the value of the argument as
seconds since '1970-01-01 00:00:00' UTC. date may be a DATE string, a
DATETIME string, a TIMESTAMP, or a number in the format YYMMDD or
YYYYMMDD. The server interprets date as a value in the current time
zone and converts it to an internal value in UTC. Clients can set their
time zone as described in
http://dev.mysql.com/doc/refman/5.6/en/time-zone-support.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT UNIX_TIMESTAMP();
        -> 1196440210
mysql> SELECT UNIX_TIMESTAMP('2007-11-30 10:30:19');
        -> 1196440219
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("375","RENAME USER","10","Syntax:
RENAME USER old_user TO new_user
    [, old_user TO new_user] ...

The RENAME USER statement renames existing MySQL accounts. To use it,
you must have the global CREATE USER privilege or the UPDATE privilege
for the mysql database. An error occurs if any old account does not
exist or any new account exists. Each account name uses the format
described in http://dev.mysql.com/doc/refman/5.6/en/account-names.html.
For example:

RENAME USER 'jeffrey'@'localhost' TO 'jeff'@'127.0.0.1';

If you specify only the user name part of the account name, a host name
part of '%' is used.

RENAME USER causes the privileges held by the old user to be those held
by the new user. However, RENAME USER does not automatically drop or
invalidate databases or objects within them that the old user created.
This includes stored programs or views for which the DEFINER attribute
names the old user. Attempts to access such objects may produce an
error if they execute in definer security context. (For information
about security context, see
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-security.html.)

The privilege changes take effect as indicated in
http://dev.mysql.com/doc/refman/5.6/en/privilege-changes.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/rename-user.html

","","http://dev.mysql.com/doc/refman/5.6/en/rename-user.html");
INSERT INTO help_topic VALUES("376","NUMPOINTS","13","NumPoints(ls)

Returns the number of Point objects in the LineString value ls.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @ls = 'LineString(1 1,2 2,3 3)';
mysql> SELECT NumPoints(GeomFromText(@ls));
+------------------------------+
| NumPoints(GeomFromText(@ls)) |
+------------------------------+
|                            3 |
+------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("377","LOCALTIMESTAMP","32","Syntax:
LOCALTIMESTAMP, LOCALTIMESTAMP([fsp])

LOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("378","ADDDATE","32","Syntax:
ADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)

When invoked with the INTERVAL form of the second argument, ADDDATE()
is a synonym for DATE_ADD(). The related function SUBDATE() is a
synonym for DATE_SUB(). For information on the INTERVAL unit argument,
see the discussion for DATE_ADD().

mysql> SELECT DATE_ADD('2008-01-02', INTERVAL 31 DAY);
        -> '2008-02-02'
mysql> SELECT ADDDATE('2008-01-02', INTERVAL 31 DAY);
        -> '2008-02-02'

When invoked with the days form of the second argument, MySQL treats it
as an integer number of days to be added to expr.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT ADDDATE('2008-01-02', 31);
        -> '2008-02-02'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("379","ALTER FUNCTION","40","Syntax:
ALTER FUNCTION func_name [characteristic ...]

characteristic:
    COMMENT 'string'
  | LANGUAGE SQL
  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }
  | SQL SECURITY { DEFINER | INVOKER }

This statement can be used to change the characteristics of a stored
function. More than one change may be specified in an ALTER FUNCTION
statement. However, you cannot change the parameters or body of a
stored function using this statement; to make such changes, you must
drop and re-create the function using DROP FUNCTION and CREATE
FUNCTION.

You must have the ALTER ROUTINE privilege for the function. (That
privilege is granted automatically to the function creator.) If binary
logging is enabled, the ALTER FUNCTION statement might also require the
SUPER privilege, as described in
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-logging.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-function.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-function.html");
INSERT INTO help_topic VALUES("380","IS_FREE_LOCK","14","Syntax:
IS_FREE_LOCK(str)

Checks whether the lock named str is free to use (that is, not locked).
Returns 1 if the lock is free (no one is using the lock), 0 if the lock
is in use, and NULL if an error occurs (such as an incorrect argument).

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("381","DEALLOCATE PREPARE","8","Syntax:
{DEALLOCATE | DROP} PREPARE stmt_name

To deallocate a prepared statement produced with PREPARE, use a
DEALLOCATE PREPARE statement that refers to the prepared statement
name. Attempting to execute a prepared statement after deallocating it
results in an error. If too many prepared statements are created and
not deallocated by either the DEALLOCATE PREPARE statement or the end
of the session, you might encounter the upper limit enforced by the
max_prepared_stmt_count system variable.

URL: http://dev.mysql.com/doc/refman/5.6/en/deallocate-prepare.html

","","http://dev.mysql.com/doc/refman/5.6/en/deallocate-prepare.html");
INSERT INTO help_topic VALUES("382","TOUCHES","31","Touches(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially touches g2. Two
geometries spatially touch if the interiors of the geometries do not
intersect, but the boundary of one of the geometries intersects either
the boundary or the interior of the other.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("383","AUTO_INCREMENT","23","The AUTO_INCREMENT attribute can be used to generate a unique identity
for new rows:

URL: http://dev.mysql.com/doc/refman/5.6/en/example-auto-increment.html

","CREATE TABLE animals (
     id MEDIUMINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     PRIMARY KEY (id)
);

INSERT INTO animals (name) VALUES
    ('dog'),('cat'),('penguin'),
    ('lax'),('whale'),('ostrich');

SELECT * FROM animals;
","http://dev.mysql.com/doc/refman/5.6/en/example-auto-increment.html");
INSERT INTO help_topic VALUES("384","UNCOMPRESS","12","Syntax:
UNCOMPRESS(string_to_uncompress)

Uncompresses a string compressed by the COMPRESS() function. If the
argument is not a compressed value, the result is NULL. This function
requires MySQL to have been compiled with a compression library such as
zlib. Otherwise, the return value is always NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT UNCOMPRESS(COMPRESS('any string'));
        -> 'any string'
mysql> SELECT UNCOMPRESS('any string');
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("385","GEOMCOLLFROMTEXT","3","GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])

Constructs a GEOMETRYCOLLECTION value using its WKT representation and
SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("386","LAST_INSERT_ID","17","Syntax:
LAST_INSERT_ID(), LAST_INSERT_ID(expr)

LAST_INSERT_ID() (with no argument) returns a BIGINT (64-bit) value
representing the first automatically generated value successfully
inserted for an AUTO_INCREMENT column as a result of the most recently
executed INSERT statement. The value of LAST_INSERT_ID() remains
unchanged if no rows are successfully inserted.

For example, after inserting a row that generates an AUTO_INCREMENT
value, you can get the value like this:

mysql> SELECT LAST_INSERT_ID();
        -> 195

The currently executing statement does not affect the value of
LAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value
with one statement, and then refer to LAST_INSERT_ID() in a
multiple-row INSERT statement that inserts rows into a table with its
own AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain
stable in the second statement; its value for the second and later rows
is not affected by the earlier row insertions. (However, if you mix
references to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is
undefined.)

If the previous statement returned an error, the value of
LAST_INSERT_ID() is undefined. For transactional tables, if the
statement is rolled back due to an error, the value of LAST_INSERT_ID()
is left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()
is not restored to that before the transaction; it remains as it was at
the point of the ROLLBACK.

Within the body of a stored routine (procedure or function) or a
trigger, the value of LAST_INSERT_ID() changes the same way as for
statements executed outside the body of these kinds of objects. The
effect of a stored routine or trigger upon the value of
LAST_INSERT_ID() that is seen by following statements depends on the
kind of routine:

o If a stored procedure executes statements that change the value of
  LAST_INSERT_ID(), the changed value is seen by statements that follow
  the procedure call.

o For stored functions and triggers that change the value, the value is
  restored when the function or trigger ends, so following statements
  will not see a changed value.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("387","FLOOR","4","Syntax:
FLOOR(X)

Returns the largest integer value not greater than X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT FLOOR(1.23);
        -> 1
mysql> SELECT FLOOR(-1.23);
        -> -2
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("388","COS","4","Syntax:
COS(X)

Returns the cosine of X, where X is given in radians.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT COS(PI());
        -> -1
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("389","STD","16","Syntax:
STD(expr)

Returns the population standard deviation of expr. This is an extension
to standard SQL. The standard SQL function STDDEV_POP() can be used
instead.

This function returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("390","DATE FUNCTION","32","Syntax:
DATE(expr)

Extracts the date part of the date or datetime expression expr.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DATE('2003-12-31 01:02:03');
        -> '2003-12-31'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("391","TAN","4","Syntax:
TAN(X)

Returns the tangent of X, where X is given in radians.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT TAN(PI());
        -> -1.2246063538224e-16
mysql> SELECT TAN(PI()+1);
        -> 1.5574077246549
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("392","WEEKOFYEAR","32","Syntax:
WEEKOFYEAR(date)

Returns the calendar week of the date as a number in the range from 1
to 53. WEEKOFYEAR() is a compatibility function that is equivalent to
WEEK(date,3).

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT WEEKOFYEAR('2008-02-20');
        -> 8
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("393","UNCOMPRESSED_LENGTH","12","Syntax:
UNCOMPRESSED_LENGTH(compressed_string)

Returns the length that the compressed string had before being
compressed.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT('a',30)));
        -> 30
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("394","SUBTIME","32","Syntax:
SUBTIME(expr1,expr2)

SUBTIME() returns expr1 - expr2 expressed as a value in the same format
as expr1. expr1 is a time or datetime expression, and expr2 is a time
expression.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT SUBTIME('2007-12-31 23:59:59.999999','1 1:1:1.000002');
        -> '2007-12-30 22:58:58.999997'
mysql> SELECT SUBTIME('01:00:00.999999', '02:00:00.999998');
        -> '-00:59:59.999999'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("395","LOG2","4","Syntax:
LOG2(X)

Returns the base-2 logarithm of X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT LOG2(65536);
        -> 16
mysql> SELECT LOG2(-100);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("396","POW","4","Syntax:
POW(X,Y)

Returns the value of X raised to the power of Y.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT POW(2,2);
        -> 4
mysql> SELECT POW(2,-2);
        -> 0.25
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("397","DROP TABLE","40","Syntax:
DROP [TEMPORARY] TABLE [IF EXISTS]
    tbl_name [, tbl_name] ...
    [RESTRICT | CASCADE]

DROP TABLE removes one or more tables. You must have the DROP privilege
for each table. All table data and the table definition are removed, so
be careful with this statement! If any of the tables named in the
argument list do not exist, MySQL returns an error indicating by name
which nonexisting tables it was unable to drop, but it also drops all
of the tables in the list that do exist.

*Important*: When a table is dropped, user privileges on the table are
not automatically dropped. See [HELP GRANT].

Note that for a partitioned table, DROP TABLE permanently removes the
table definition, all of its partitions, and all of the data which was
stored in those partitions. It also removes the partitioning definition
(.par) file associated with the dropped table.

Use IF EXISTS to prevent an error from occurring for tables that do not
exist. A NOTE is generated for each nonexistent table when using IF
EXISTS. See [HELP SHOW WARNINGS].

RESTRICT and CASCADE are permitted to make porting easier. In MySQL
5.6, they do nothing.

*Note*: DROP TABLE automatically commits the current active
transaction, unless you use the TEMPORARY keyword.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-table.html");
INSERT INTO help_topic VALUES("398","NOW","32","Syntax:
NOW([fsp])

Returns the current date and time as a value in 'YYYY-MM-DD HH:MM:SS'
or YYYYMMDDHHMMSS format, depending on whether the function is used in
a string or numeric context. The value is expressed in the current time
zone.

As of MySQL 5.6.4, if the fsp argument is given to specify a fractional
seconds precision from 0 to 6, the return value includes a fractional
seconds part of that many digits. Before 5.6.4, any argument is
ignored.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT NOW();
        -> '2007-12-15 23:50:26'
mysql> SELECT NOW() + 0;
        -> 20071215235026.000000
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("399","SHOW ENGINES","27","Syntax:
SHOW [STORAGE] ENGINES

SHOW ENGINES displays status information about the server's storage
engines. This is particularly useful for checking whether a storage
engine is supported, or to see what the default engine is.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-engines.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-engines.html");
INSERT INTO help_topic VALUES("400","IS_IPV6","14","Syntax:
IS_IPV6(expr)

Returns 1 if the argument is a valid IPv6 address specified as a
string, 0 otherwise. This function does not consider IPv4 addresses to
be valid IPv6 addresses.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT IS_IPV6('10.0.5.9'), IS_IPV6('::1');
        -> 0, 1
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("401","LONGBLOB","23","LONGBLOB

A BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)
bytes. The effective maximum length of LONGBLOB columns depends on the
configured maximum packet size in the client/server protocol and
available memory. Each LONGBLOB value is stored using a 4-byte length
prefix that indicates the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("402","ST_OVERLAPS","31","ST_Overlaps(g1,g2)

Returns 1 or 0 to indicate whether g1 spatially overlaps g2. The term
spatially overlaps is used if two geometries intersect and their
intersection results in a geometry of the same dimension but not equal
to either of the given geometries.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("403","YEAR DATA TYPE","23","YEAR[(2|4)]

A year in two-digit or four-digit format. The default is four-digit
format. YEAR(2) or YEAR(4) differ in display format, but have the same
range of values. In four-digit format, values display as 1901 to 2155,
and 0000. In two-digit format, values display as 70 to 69, representing
years from 1970 to 2069. MySQL displays YEAR values in YYYY or
YYformat, but permits assignment of values to YEAR columns using either
strings or numbers.

*Note*: The YEAR(2) data type has certain issues that you should
consider before choosing to use it. As of MySQL 5.6.6, YEAR(2) is
deprecated. YEAR(2) columns in existing tables are treated as before,
but YEAR(2) in new or altered tables are converted to YEAR(4). For more
information, see
http://dev.mysql.com/doc/refman/5.6/en/migrating-to-year4.html.

For additional information about YEAR display format and interpretation
of input values, see http://dev.mysql.com/doc/refman/5.6/en/year.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html");
INSERT INTO help_topic VALUES("404","SUM","16","Syntax:
SUM([DISTINCT] expr)

Returns the sum of expr. If the return set has no rows, SUM() returns
NULL. The DISTINCT keyword can be used to sum only the distinct values
of expr.

SUM() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("405","REPEAT FUNCTION","38","Syntax:
REPEAT(str,count)

Returns a string consisting of the string str repeated count times. If
count is less than 1, returns an empty string. Returns NULL if str or
count are NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT REPEAT('MySQL', 3);
        -> 'MySQLMySQLMySQL'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("406","SOUNDEX","38","Syntax:
SOUNDEX(str)

Returns a soundex string from str. Two strings that sound almost the
same should have identical soundex strings. A standard soundex string
is four characters long, but the SOUNDEX() function returns an
arbitrarily long string. You can use SUBSTRING() on the result to get a
standard soundex string. All nonalphabetic characters in str are
ignored. All international alphabetic characters outside the A-Z range
are treated as vowels.

*Important*: When using SOUNDEX(), you should be aware of the following
limitations:

o This function, as currently implemented, is intended to work well
  with strings that are in the English language only. Strings in other
  languages may not produce reliable results.

o This function is not guaranteed to provide consistent results with
  strings that use multi-byte character sets, including utf-8.

  We hope to remove these limitations in a future release. See Bug
  #22638 for more information.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT SOUNDEX('Hello');
        -> 'H400'
mysql> SELECT SOUNDEX('Quadratically');
        -> 'Q36324'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("407","MBRTOUCHES","6","MBRTouches(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangles of
the two geometries g1 and g2 touch. Two geometries spatially touch if
the interiors of the geometries do not intersect, but the boundary of
one of the geometries intersects either the boundary or the interior of
the other.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("408","DROP EVENT","40","Syntax:
DROP EVENT [IF EXISTS] event_name

This statement drops the event named event_name. The event immediately
ceases being active, and is deleted completely from the server.

If the event does not exist, the error ERROR 1517 (HY000): Unknown
event 'event_name' results. You can override this and cause the
statement to generate a warning for nonexistent events instead using IF
EXISTS.

This statement requires the EVENT privilege for the schema to which the
event to be dropped belongs.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-event.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-event.html");
INSERT INTO help_topic VALUES("409","VARBINARY","23","VARBINARY(M)

The VARBINARY type is similar to the VARCHAR type, but stores binary
byte strings rather than nonbinary character strings. M represents the
maximum column length in bytes.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("410","LOAD INDEX","27","Syntax:
LOAD INDEX INTO CACHE
  tbl_index_list [, tbl_index_list] ...

tbl_index_list:
  tbl_name
    [PARTITION (partition_list | ALL)]
    [[INDEX|KEY] (index_name[, index_name] ...)]
    [IGNORE LEAVES]

partition_list:
    partition_name[, partition_name][, ...]

The LOAD INDEX INTO CACHE statement preloads a table index into the key
cache to which it has been assigned by an explicit CACHE INDEX
statement, or into the default key cache otherwise.

LOAD INDEX INTO CACHE is used only for MyISAM tables. In MySQL 5.6, it
is also supported for partitioned MyISAM tables; in addition, indexes
on partitioned tables can be preloaded for one, several, or all
partitions.

The IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of
the index to be preloaded.

IGNORE LEAVES is also supported for partitioned MyISAM tables.

URL: http://dev.mysql.com/doc/refman/5.6/en/load-index.html

","","http://dev.mysql.com/doc/refman/5.6/en/load-index.html");
INSERT INTO help_topic VALUES("411","UNION","28","Syntax:
SELECT ...
UNION [ALL | DISTINCT] SELECT ...
[UNION [ALL | DISTINCT] SELECT ...]

UNION is used to combine the result from multiple SELECT statements
into a single result set.

The column names from the first SELECT statement are used as the column
names for the results returned. Selected columns listed in
corresponding positions of each SELECT statement should have the same
data type. (For example, the first column selected by the first
statement should have the same type as the first column selected by the
other statements.)

URL: http://dev.mysql.com/doc/refman/5.6/en/union.html

","","http://dev.mysql.com/doc/refman/5.6/en/union.html");
INSERT INTO help_topic VALUES("412","TO_DAYS","32","Syntax:
TO_DAYS(date)

Given a date date, returns a day number (the number of days since year
0).

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TO_DAYS(950501);
        -> 728779
mysql> SELECT TO_DAYS('2007-10-07');
        -> 733321
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("413","SHOW CREATE DATABASE","27","Syntax:
SHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name

Shows the CREATE DATABASE statement that creates the given database. If
the SHOW statement includes an IF NOT EXISTS clause, the output too
includes such a clause. SHOW CREATE SCHEMA is a synonym for SHOW CREATE
DATABASE.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-create-database.html

","mysql> SHOW CREATE DATABASE test\G
*************************** 1. row ***************************
       Database: test
Create Database: CREATE DATABASE `test`
                 /*!40100 DEFAULT CHARACTER SET latin1 */

mysql> SHOW CREATE SCHEMA test\G
*************************** 1. row ***************************
       Database: test
Create Database: CREATE DATABASE `test`
                 /*!40100 DEFAULT CHARACTER SET latin1 */
","http://dev.mysql.com/doc/refman/5.6/en/show-create-database.html");
INSERT INTO help_topic VALUES("414","SHOW INDEX","27","Syntax:
SHOW {INDEX | INDEXES | KEYS}
    {FROM | IN} tbl_name
    [{FROM | IN} db_name]
    [WHERE expr]

SHOW INDEX returns table index information. The format resembles that
of the SQLStatistics call in ODBC. This statement requires some
privilege for any column in the table.
You can use db_name.tbl_name as an alternative to the tbl_name FROM
db_name syntax. These two statements are equivalent:

SHOW INDEX FROM mytable FROM mydb;
SHOW INDEX FROM mydb.mytable;

The WHERE clause can be given to select rows using more general
conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

You can also list a table's indexes with the mysqlshow -k db_name
tbl_name command.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-index.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-index.html");
INSERT INTO help_topic VALUES("415","!","15","Syntax:
NOT, !

Logical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is
nonzero, and NOT NULL returns NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html

","mysql> SELECT NOT 10;
        -> 0
mysql> SELECT NOT 0;
        -> 1
mysql> SELECT NOT NULL;
        -> NULL
mysql> SELECT ! (1+1);
        -> 0
mysql> SELECT ! 1+1;
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/logical-operators.html");
INSERT INTO help_topic VALUES("416","DOUBLE","23","DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]

A normal-size (double-precision) floating-point number. Permissible
values are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and
2.2250738585072014E-308 to 1.7976931348623157E+308. These are the
theoretical limits, based on the IEEE standard. The actual range might
be slightly smaller depending on your hardware or operating system.

M is the total number of digits and D is the number of digits following
the decimal point. If M and D are omitted, values are stored to the
limits permitted by the hardware. A double-precision floating-point
number is accurate to approximately 15 decimal places.

UNSIGNED, if specified, disallows negative values.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("417","DECLARE HANDLER","24","Syntax:
DECLARE handler_action HANDLER
    FOR condition_value [, condition_value] ...
    statement

handler_action:
    CONTINUE
  | EXIT
  | UNDO

condition_value:
    mysql_error_code
  | SQLSTATE [VALUE] sqlstate_value
  | condition_name
  | SQLWARNING
  | NOT FOUND
  | SQLEXCEPTION

The DECLARE ... HANDLER statement specifies a handler that deals with
one or more conditions. If one of these conditions occurs, the
specified statement executes. statement can be a simple statement such
as SET var_name = value, or a compound statement written using BEGIN
and END (see [HELP BEGIN END]).

Handler declarations must appear after variable or condition
declarations.

The handler_action value indicates what action the handler takes after
execution of the handler statement:

o CONTINUE: Execution of the current program continues.

o EXIT: Execution terminates for the BEGIN ... END compound statement
  in which the handler is declared. This is true even if the condition
  occurs in an inner block.

o UNDO: Not supported.

The condition_value for DECLARE ... HANDLER indicates the specific
condition or class of conditions that activates the handler:

o A MySQL error code (a number) or an SQLSTATE value (a 5-character
  string literal). You should not use MySQL error code 0 or SQLSTATE
  values that begin with '00', because those indicate success rather
  than an error condition. For a list of MySQL error codes and SQLSTATE
  values, see
  http://dev.mysql.com/doc/refman/5.6/en/error-messages-server.html.

o A condition name previously specified with DECLARE ... CONDITION. A
  condition name can be associated with a MySQL error code or SQLSTATE
  value. See [HELP DECLARE CONDITION].

o SQLWARNING is shorthand for the class of SQLSTATE values that begin
  with '01'.

o NOT FOUND is shorthand for the class of SQLSTATE values that begin
  with '02'. This is relevant within the context of cursors and is used
  to control what happens when a cursor reaches the end of a data set.
  If no more rows are available, a No Data condition occurs with
  SQLSTATE value '02000'. To detect this condition, you can set up a
  handler for it (or for a NOT FOUND condition). For an example, see
  http://dev.mysql.com/doc/refman/5.6/en/cursors.html. This condition
  also occurs for SELECT ... INTO var_list statements that retrieve no
  rows.

o SQLEXCEPTION is shorthand for the class of SQLSTATE values that do
  not begin with '00', '01', or '02'.

For information about how the server chooses handlers when a condition
occurs, see http://dev.mysql.com/doc/refman/5.6/en/handler-scope.html.

If a condition occurs for which no handler has been declared, the
action taken depends on the condition class:

o For SQLEXCEPTION conditions, the stored program terminates at the
  statement that raised the condition, as if there were an EXIT
  handler. If the program was called by another stored program, the
  calling program handles the condition using the handler selection
  rules applied to its own handlers.

o For SQLWARNING conditions, the program continues executing, as if
  there were a CONTINUE handler.

o For NOT FOUND conditions, if the condition was raised normally, the
  action is CONTINUE. If it was raised by SIGNAL or RESIGNAL, the
  action is EXIT.

URL: http://dev.mysql.com/doc/refman/5.6/en/declare-handler.html

","mysql> CREATE TABLE test.t (s1 INT, PRIMARY KEY (s1));
Query OK, 0 rows affected (0.00 sec)

mysql> delimiter //

mysql> CREATE PROCEDURE handlerdemo ()
    -> BEGIN
    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET @x2 = 1;
    ->   SET @x = 1;
    ->   INSERT INTO test.t VALUES (1);
    ->   SET @x = 2;
    ->   INSERT INTO test.t VALUES (1);
    ->   SET @x = 3;
    -> END;
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> CALL handlerdemo()//
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT @x//
    +------+
    | @x   |
    +------+
    | 3    |
    +------+
    1 row in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/declare-handler.html");
INSERT INTO help_topic VALUES("418","TIME","23","TIME[(fsp)]

A time. The range is '-838:59:59.000000' to '838:59:59.000000'. MySQL
displays TIME values in 'HH:MM:SS[.fraction]' format, but permits
assignment of values to TIME columns using either strings or numbers.

As of MySQL 5.6.4, an optional fsp value in the range from 0 to 6 may
be given to specify fractional seconds precision. A value of 0
signifies that there is no fractional part. If omitted, the default
precision is 0.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-type-overview.html");
INSERT INTO help_topic VALUES("419","SYSTEM_USER","17","Syntax:
SYSTEM_USER()

SYSTEM_USER() is a synonym for USER().

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("420","CURRENT_DATE","32","Syntax:
CURRENT_DATE, CURRENT_DATE()

CURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("421","TRUNCATE TABLE","40","Syntax:
TRUNCATE [TABLE] tbl_name

TRUNCATE TABLE empties a table completely. It requires the DROP
privilege.

Logically, TRUNCATE TABLE is similar to a DELETE statement that deletes
all rows, or a sequence of DROP TABLE and CREATE TABLE statements. To
achieve high performance, it bypasses the DML method of deleting data.
Thus, it cannot be rolled back, it does not cause ON DELETE triggers to
fire, and it cannot be performed for InnoDB tables with parent-child
foreign key relationships.

Although TRUNCATE TABLE is similar to DELETE, it is classified as a DDL
statement rather than a DML statement. It differs from DELETE in the
following ways in MySQL 5.6:

o Truncate operations drop and re-create the table, which is much
  faster than deleting rows one by one, particularly for large tables.

o Truncate operations cause an implicit commit, and so cannot be rolled
  back.

o Truncation operations cannot be performed if the session holds an
  active table lock.

o TRUNCATE TABLE fails for an InnoDB table if there are any FOREIGN KEY
  constraints from other tables that reference the table. Foreign key
  constraints between columns of the same table are permitted.

o Truncation operations do not return a meaningful value for the number
  of deleted rows. The usual result is "0 rows affected," which should
  be interpreted as "no information."

o As long as the table format file tbl_name.frm is valid, the table can
  be re-created as an empty table with TRUNCATE TABLE, even if the data
  or index files have become corrupted.

o Any AUTO_INCREMENT value is reset to its start value. This is true
  even for MyISAM and InnoDB, which normally do not reuse sequence
  values.

o When used with partitioned tables, TRUNCATE TABLE preserves the
  partitioning; that is, the data and index files are dropped and
  re-created, while the partition definitions (.par) file is
  unaffected.

o The TRUNCATE TABLE statement does not invoke ON DELETE triggers.

URL: http://dev.mysql.com/doc/refman/5.6/en/truncate-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/truncate-table.html");
INSERT INTO help_topic VALUES("422","AREA","2","Area(poly)

Returns as a double-precision number the area of the Polygon value
poly, as measured in its spatial reference system.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SET @poly = 'Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))';
mysql> SELECT Area(GeomFromText(@poly));
+---------------------------+
| Area(GeomFromText(@poly)) |
+---------------------------+
|                         4 |
+---------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("423","START SLAVE","8","Syntax:
START SLAVE [thread_types] [until_option] [connection_options]

thread_types:
    [thread_type [, thread_type] ... ]

thread_type: 
    IO_THREAD | SQL_THREAD

until_option:
    UNTIL {   {SQL_BEFORE_GTIDS | SQL_AFTER_GTIDS} = gtid_set
          |   MASTER_LOG_FILE = 'log_name', MASTER_LOG_POS = log_pos
          |   RELAY_LOG_FILE = 'log_name', RELAY_LOG_POS = log_pos
          |   SQL_AFTER_MTS_GAPS  }

connection_options: 
    [USER='user_name'] [PASSWORD='user_pass'] [DEFAULT_AUTH='plugin_name'] [PLUGIN_DIR='plugin_dir']


gtid_set:
    uuid_set [, uuid_set] ...
    | ''

uuid_set:
    uuid:interval[:interval]...

uuid:
    hhhhhhhh-hhhh-hhhh-hhhh-hhhhhhhhhhhh

h:
    [0-9,A-F]

interval:
    n[-n]

    (n >= 1) 

START SLAVE with no thread_type options starts both of the slave
threads. The I/O thread reads events from the master server and stores
them in the relay log. The SQL thread reads events from the relay log
and executes them. START SLAVE requires the SUPER privilege.

If START SLAVE succeeds in starting the slave threads, it returns
without any error. However, even in that case, it might be that the
slave threads start and then later stop (for example, because they do
not manage to connect to the master or read its binary log, or some
other problem). START SLAVE does not warn you about this. You must
check the slave's error log for error messages generated by the slave
threads, or check that they are running satisfactorily with SHOW SLAVE
STATUS.

In MySQL 5.6.7 and later, START SLAVE causes an implicit commit of an
ongoing transaction. See
http://dev.mysql.com/doc/refman/5.6/en/implicit-commit.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

MySQL 5.6.4 and later supports pluggable user-password authentication
with START SLAVE with the USER, PASSWORD, DEFAULT_AUTH and PLUGIN_DIR
options, as described in the following list:

o USER: User name. Cannot be set to an empty or null string, or left
  unset if PASSWORD is used.

o PASSWORD: Password.

o DEFAULT_AUTH: Name of plugin; default is MySQL native authentication.

o PLUGIN_DIR: Location of plugin.

Starting with MySQL 5.6.4, you cannot use the SQL_THREAD option when
specifying USER, PASSWORD, or both. (Bug #13083642).

See
http://dev.mysql.com/doc/refman/5.6/en/pluggable-authentication.html,
for more information.

If an insecure connection is used with any these options, the server
issues the warning Sending passwords in plain text without SSL/TLS is
extremely insecure.

Starting with MySQL 5.6.6, START SLAVE ... UNTIL supports two
additional options for use with global transaction identifiers (GTIDs)
(see http://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html).
Each of these takes a set of one or more global transaction identifiers
gtid_set as an argument (see
http://dev.mysql.com/doc/refman/5.6/en/replication-gtids-concepts.html#
replication-gtids-concepts-gtid-sets, for more information).

When no thread_type is specified, START SLAVE UNTIL SQL_BEFORE_GTIDS
causes both the slave SQL thread to process and the slave I/O thread to
fetch transactions until both of them have reached the first
transaction whose GTID is listed in the gtid_set. START SLAVE UNTIL
SQL_AFTER_GTIDS causes the slave threads to process all transactions
until the last transaction in the gtid_set has been processed by both
threads. In other words, START SLAVE UNTIL SQL_BEFORE_GTIDS causes the
slave SQL to process and I/O threads to fetch all transactions
occurring before the first GTID in the gtid_set is reached, and START
SLAVE UNTIL SQL_AFTER_GTIDS causes the slave threads to handle all
transactions, including those whose GTIDs are found in gtid_set, until
each has encountered a transaction whose GTID is not part of the set.
SQL_BEFORE_GTIDS and SQL_AFTER_GTIDS each support the SQL_THREAD and
IO_THREAD options.

For example, START SLAVE SQL_THREAD UNTIL SQL_BEFORE_GTIDS =
3E11FA47-71CA-11E1-9E33-C80AA9429562:11-56 causes the slave SQL thread
to process all transactions originating from the master whose
server_uuid is 3E11FA47-71CA-11E1-9E33-C80AA9429562 until it encounters
the transaction having sequence number 11; it then stops without
processing this transaction. In other words, all transactions up to and
including the transaction with sequence number 10 are processed.
Executing START SLAVE IO_THREAD UNTIL SQL_AFTER_GTIDS =
3E11FA47-71CA-11E1-9E33-C80AA9429562:11-56, on the other hand, would
cause the slave I/O thread to obtain all transactions just mentioned
from the master, including all of the transactions having the sequence
numbers 11 through 56, and then to stop without processing any
additional transactions; that is, the transaction having sequence
number 56 would be the last transaction fetched by the slave I/O
thread.

With neither the SQL_THREAD option nor the IO_THREAD option, the
previous statement would cause the slave SQL thread to execute all
transactions originating from this master, including all transactions
with sequence numbers 11 through 56, and then to stop without
processing any additional transactions. The same command would also
cause the slave I/O thread to start. When the SQL thread reaches the
condition, it is stopped. In other words, START SLAVE UNTIL
SQL_BEFORE_GTIDS has the same effect as START SLAVE SQL_THREAD,
IO_THREAD UNTIL SQL_BEFORE_GTIDS; the slave SQL thread and slave I/O
thread are each started, and the SQL thread continues executing
transactions until the stop condition for that thread is met.
(Similarly, START SLAVE UNTIL SQL_AFTER_GTIDS is effectively the same
as START SLAVE SQL_THREAD, IO_THREAD UNTIL SQL_AFTER_GTIDS.)

*Note*: The SQL_BEFORE_GTIDS and SQL_AFTER_GTIDS keywords are present
in the MySQL 5.6.5 server; however, neither of them functioned
correctly as options with START SLAVE [SQL_THREAD | IO_THREAD] UNTIL in
that version, and are therefore supported beginning only with MySQL
5.6.6. (Bug#13810456)

START SLAVE UNTIL SQL_AFTER_MTS_GAPS is available in MySQL 5.6.6 or
later. This statement causes a multi-threaded slave's SQL threads to
run until no more gaps are found in the relay log, and then to stop.
This statement can take an SQL_THREAD option, but the effects of the
statement remain unchanged. It has no effect on the slave I/O thread
(and cannot be used with the IO_THREAD option). START SLAVE UNTIL
SQL_AFTER_MTS_GAPS should be used before switching the slave from
multi-threaded mode to single-threaded mode (that is, when resetting
slave_parallel_workers back to 0 from a positive, nonzero value) after
slave has failed with errors in multi-threaded mode.

To change a failed multi-threaded slave to single-threaded mode, you
can issue the following series of statements, in the order shown:

START SLAVE UNTIL SQL_AFTER_MTS_GAPS;

SET @@GLOBAL.slave_parallel_workers = 0;

START SLAVE SQL_THREAD;

If you were running the failed multi-threaded slave with
relay_log_recovery enabled, then you must issue START SLAVE UNTIL
SQL_AFTER_MTS_GAPS prior to executing CHANGE MASTER TO. Otherwise the
latter statement fails.

*Note*: It is possible to view the entire text of a running START SLAVE
... statement, including any USER or PASSWORD values used, in the
output of SHOW PROCESSLIST. This is also true for the text of a running
CHANGE MASTER TO statement, including any values it employs for
MASTER_USER or MASTER_PASSWORD.

URL: http://dev.mysql.com/doc/refman/5.6/en/start-slave.html

","","http://dev.mysql.com/doc/refman/5.6/en/start-slave.html");
INSERT INTO help_topic VALUES("424","SHOW WARNINGS","27","Syntax:
SHOW WARNINGS [LIMIT [offset,] row_count]
SHOW COUNT(*) WARNINGS

SHOW WARNINGS shows information about the conditions (errors, warnings,
and notes) that resulted from the last statement in the current session
that generated messages. It shows nothing if the last statement used a
table and generated no messages. (That is, a statement that uses a
table but generates no messages clears the message list.) Statements
that do not use tables and do not generate messages have no effect on
the message list.

Warnings are generated for DML statements such as INSERT, UPDATE, and
LOAD DATA INFILE as well as DDL statements such as CREATE TABLE and
ALTER TABLE.

SHOW WARNINGS is also used following EXPLAIN EXTENDED, to display the
extra information generated by EXPLAIN when the EXTENDED keyword is
used. See http://dev.mysql.com/doc/refman/5.6/en/explain-extended.html.

The LIMIT clause has the same syntax as for the SELECT statement. See
http://dev.mysql.com/doc/refman/5.6/en/select.html.

A related statement, SHOW ERRORS, shows only the error conditions (it
excludes warnings and notes). See [HELP SHOW ERRORS]. GET DIAGNOSTICS
can be used to examine information for individual conditions. See [HELP
GET DIAGNOSTICS].

The SHOW COUNT(*) WARNINGS statement displays the total number of
errors, warnings, and notes. You can also retrieve this number from the
warning_count system variable:

SHOW COUNT(*) WARNINGS;
SELECT @@warning_count;

URL: http://dev.mysql.com/doc/refman/5.6/en/show-warnings.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-warnings.html");
INSERT INTO help_topic VALUES("425","DROP USER","10","Syntax:
DROP USER user [, user] ...

The DROP USER statement removes one or more MySQL accounts and their
privileges. It removes privilege rows for the account from all grant
tables. To use this statement, you must have the global CREATE USER
privilege or the DELETE privilege for the mysql database. Each account
name uses the format described in
http://dev.mysql.com/doc/refman/5.6/en/account-names.html. For example:

DROP USER 'jeffrey'@'localhost';

If you specify only the user name part of the account name, a host name
part of '%' is used.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-user.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-user.html");
INSERT INTO help_topic VALUES("426","SUBSTRING","38","Syntax:
SUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),
SUBSTRING(str FROM pos FOR len)

The forms without a len argument return a substring from string str
starting at position pos. The forms with a len argument return a
substring len characters long from string str, starting at position
pos. The forms that use FROM are standard SQL syntax. It is also
possible to use a negative value for pos. In this case, the beginning
of the substring is pos characters from the end of the string, rather
than the beginning. A negative value may be used for pos in any of the
forms of this function.

For all forms of SUBSTRING(), the position of the first character in
the string from which the substring is to be extracted is reckoned as
1.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT SUBSTRING('Quadratically',5);
        -> 'ratically'
mysql> SELECT SUBSTRING('foobarbar' FROM 4);
        -> 'barbar'
mysql> SELECT SUBSTRING('Quadratically',5,6);
        -> 'ratica'
mysql> SELECT SUBSTRING('Sakila', -3);
        -> 'ila'
mysql> SELECT SUBSTRING('Sakila', -5, 3);
        -> 'aki'
mysql> SELECT SUBSTRING('Sakila' FROM -4 FOR 2);
        -> 'ki'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("427","ISEMPTY","37","IsEmpty(g)

This function is a placeholder that returns 0 for any valid geometry
value, 1 for any invalid geometry value or NULL.

MySQL does not support GIS EMPTY values such as POINT EMPTY.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("428","SHOW FUNCTION STATUS","27","Syntax:
SHOW FUNCTION STATUS
    [LIKE 'pattern' | WHERE expr]

This statement is similar to SHOW PROCEDURE STATUS but for stored
functions. See [HELP SHOW PROCEDURE STATUS].

URL: http://dev.mysql.com/doc/refman/5.6/en/show-function-status.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-function-status.html");
INSERT INTO help_topic VALUES("429","LTRIM","38","Syntax:
LTRIM(str)

Returns the string str with leading space characters removed.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT LTRIM('  barbar');
        -> 'barbar'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("430","ST_CROSSES","31","ST_Crosses(g1,g2)

Returns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon
or a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,
returns 0.

The term spatially crosses denotes a spatial relation between two given
geometries that has the following properties:

o The two geometries intersect

o Their intersection results in a geometry that has a dimension that is
  one less than the maximum dimension of the two given geometries

o Their intersection is not equal to either of the two given geometries

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("431","VALUES","14","Syntax:
VALUES(col_name)

In an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the
VALUES(col_name) function in the UPDATE clause to refer to column
values from the INSERT portion of the statement. In other words,
VALUES(col_name) in the UPDATE clause refers to the value of col_name
that would be inserted, had no duplicate-key conflict occurred. This
function is especially useful in multiple-row inserts. The VALUES()
function is meaningful only in the ON DUPLICATE KEY UPDATE clause of
INSERT statements and returns NULL otherwise. See
http://dev.mysql.com/doc/refman/5.6/en/insert-on-duplicate.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)
    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("432","MBRDISJOINT","6","MBRDisjoint(g1,g2)

Returns 1 or 0 to indicate whether the Minimum Bounding Rectangles of
the two geometries g1 and g2 are disjoint (do not intersect).

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("433","CALL","28","Syntax:
CALL sp_name([parameter[,...]])
CALL sp_name[()]

The CALL statement invokes a stored procedure that was defined
previously with CREATE PROCEDURE.

Stored procedures that take no arguments can be invoked without
parentheses. That is, CALL p() and CALL p are equivalent.

CALL can pass back values to its caller using parameters that are
declared as OUT or INOUT parameters. When the procedure returns, a
client program can also obtain the number of rows affected for the
final statement executed within the routine: At the SQL level, call the
ROW_COUNT() function; from the C API, call the mysql_affected_rows()
function.

URL: http://dev.mysql.com/doc/refman/5.6/en/call.html

","","http://dev.mysql.com/doc/refman/5.6/en/call.html");
INSERT INTO help_topic VALUES("434","ENCODE","12","Syntax:
ENCODE(str,pass_str)

Encrypt str using pass_str as the password. To decrypt the result, use
DECODE().

The result is a binary string of the same length as str.

The strength of the encryption is based on how good the random
generator is. It should suffice for short strings.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("435","SUBSTRING_INDEX","38","Syntax:
SUBSTRING_INDEX(str,delim,count)

Returns the substring from string str before count occurrences of the
delimiter delim. If count is positive, everything to the left of the
final delimiter (counting from the left) is returned. If count is
negative, everything to the right of the final delimiter (counting from
the right) is returned. SUBSTRING_INDEX() performs a case-sensitive
match when searching for delim.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT SUBSTRING_INDEX('www.mysql.com', '.', 2);
        -> 'www.mysql'
mysql> SELECT SUBSTRING_INDEX('www.mysql.com', '.', -2);
        -> 'mysql.com'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("436","TIMESTAMPADD","32","Syntax:
TIMESTAMPADD(unit,interval,datetime_expr)

Adds the integer expression interval to the date or datetime expression
datetime_expr. The unit for interval is given by the unit argument,
which should be one of the following values: MICROSECOND
(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or
YEAR.

The unit value may be specified using one of keywords as shown, or with
a prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIMESTAMPADD(MINUTE,1,'2003-01-02');
        -> '2003-01-02 00:01:00'
mysql> SELECT TIMESTAMPADD(WEEK,1,'2003-01-02');
        -> '2003-01-09'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("437","TRUNCATE","4","Syntax:
TRUNCATE(X,D)

Returns the number X, truncated to D decimal places. If D is 0, the
result has no decimal point or fractional part. D can be negative to
cause D digits left of the decimal point of the value X to become zero.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT TRUNCATE(1.223,1);
        -> 1.2
mysql> SELECT TRUNCATE(1.999,1);
        -> 1.9
mysql> SELECT TRUNCATE(1.999,0);
        -> 1
mysql> SELECT TRUNCATE(-1.999,1);
        -> -1.9
mysql> SELECT TRUNCATE(122,-2);
       -> 100
mysql> SELECT TRUNCATE(10.28*100,0);
       -> 1028
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("438","SHOW","27","SHOW has many forms that provide information about databases, tables,
columns, or status information about the server. This section describes
those following:

SHOW AUTHORS
SHOW {BINARY | MASTER} LOGS
SHOW BINLOG EVENTS [IN 'log_name'] [FROM pos] [LIMIT [offset,] row_count]
SHOW CHARACTER SET [like_or_where]
SHOW COLLATION [like_or_where]
SHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]
SHOW CONTRIBUTORS
SHOW CREATE DATABASE db_name
SHOW CREATE EVENT event_name
SHOW CREATE FUNCTION func_name
SHOW CREATE PROCEDURE proc_name
SHOW CREATE TABLE tbl_name
SHOW CREATE TRIGGER trigger_name
SHOW CREATE VIEW view_name
SHOW DATABASES [like_or_where]
SHOW ENGINE engine_name {STATUS | MUTEX}
SHOW [STORAGE] ENGINES
SHOW ERRORS [LIMIT [offset,] row_count]
SHOW EVENTS
SHOW FUNCTION CODE func_name
SHOW FUNCTION STATUS [like_or_where]
SHOW GRANTS FOR user
SHOW INDEX FROM tbl_name [FROM db_name]
SHOW MASTER STATUS
SHOW OPEN TABLES [FROM db_name] [like_or_where]
SHOW PLUGINS
SHOW PROCEDURE CODE proc_name
SHOW PROCEDURE STATUS [like_or_where]
SHOW PRIVILEGES
SHOW [FULL] PROCESSLIST
SHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]
SHOW PROFILES
SHOW SLAVE HOSTS
SHOW SLAVE STATUS
SHOW [GLOBAL | SESSION] STATUS [like_or_where]
SHOW TABLE STATUS [FROM db_name] [like_or_where]
SHOW [FULL] TABLES [FROM db_name] [like_or_where]
SHOW TRIGGERS [FROM db_name] [like_or_where]
SHOW [GLOBAL | SESSION] VARIABLES [like_or_where]
SHOW WARNINGS [LIMIT [offset,] row_count]

like_or_where:
    LIKE 'pattern'
  | WHERE expr

If the syntax for a given SHOW statement includes a LIKE 'pattern'
part, 'pattern' is a string that can contain the SQL "%" and "_"
wildcard characters. The pattern is useful for restricting statement
output to matching values.

Several SHOW statements also accept a WHERE clause that provides more
flexibility in specifying which rows to display. See
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/show.html

","","http://dev.mysql.com/doc/refman/5.6/en/show.html");
INSERT INTO help_topic VALUES("439","SHOW VARIABLES","27","Syntax:
SHOW [GLOBAL | SESSION] VARIABLES
    [LIKE 'pattern' | WHERE expr]

SHOW VARIABLES shows the values of MySQL system variables. This
information also can be obtained using the mysqladmin variables
command. The LIKE clause, if present, indicates which variable names to
match. The WHERE clause can be given to select rows using more general
conditions, as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html. This
statement does not require any privilege. It requires only the ability
to connect to the server.

With the GLOBAL modifier, SHOW VARIABLES displays the values that are
used for new connections to MySQL. In MySQL 5.6, if a variable has no
global value, no value is displayed. With SESSION, SHOW VARIABLES
displays the values that are in effect for the current connection. If
no modifier is present, the default is SESSION. LOCAL is a synonym for
SESSION.
With a LIKE clause, the statement displays only rows for those
variables with names that match the pattern. To obtain the row for a
specific variable, use a LIKE clause as shown:

SHOW VARIABLES LIKE 'max_join_size';
SHOW SESSION VARIABLES LIKE 'max_join_size';

To get a list of variables whose name match a pattern, use the "%"
wildcard character in a LIKE clause:

SHOW VARIABLES LIKE '%size%';
SHOW GLOBAL VARIABLES LIKE '%size%';

Wildcard characters can be used in any position within the pattern to
be matched. Strictly speaking, because "_" is a wildcard that matches
any single character, you should escape it as "\_" to match it
literally. In practice, this is rarely necessary.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-variables.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-variables.html");
INSERT INTO help_topic VALUES("440","BINLOG","27","Syntax:
BINLOG 'str'

BINLOG is an internal-use statement. It is generated by the mysqlbinlog
program as the printable representation of certain events in binary log
files. (See http://dev.mysql.com/doc/refman/5.6/en/mysqlbinlog.html.)
The 'str' value is a base 64-encoded string the that server decodes to
determine the data change indicated by the corresponding event. This
statement requires the SUPER privilege.

URL: http://dev.mysql.com/doc/refman/5.6/en/binlog.html

","","http://dev.mysql.com/doc/refman/5.6/en/binlog.html");
INSERT INTO help_topic VALUES("441","ST_DISJOINT","31","ST_Disjoint(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially disjoint from (does
not intersect) g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("442","ATAN2","4","Syntax:
ATAN(Y,X), ATAN2(Y,X)

Returns the arc tangent of the two variables X and Y. It is similar to
calculating the arc tangent of Y / X, except that the signs of both
arguments are used to determine the quadrant of the result.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT ATAN(-2,2);
        -> -0.78539816339745
mysql> SELECT ATAN2(PI(),0);
        -> 1.5707963267949
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("443","HOUR","32","Syntax:
HOUR(time)

Returns the hour for time. The range of the return value is 0 to 23 for
time-of-day values. However, the range of TIME values actually is much
larger, so HOUR can return values greater than 23.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT HOUR('10:05:03');
        -> 10
mysql> SELECT HOUR('272:59:59');
        -> 272
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("444","SELECT","28","Syntax:
SELECT
    [ALL | DISTINCT | DISTINCTROW ]
      [HIGH_PRIORITY]
      [STRAIGHT_JOIN]
      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]
      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]
    select_expr [, select_expr ...]
    [FROM table_references
      [PARTITION partition_list]
    [WHERE where_condition]
    [GROUP BY {col_name | expr | position}
      [ASC | DESC], ... [WITH ROLLUP]]
    [HAVING where_condition]
    [ORDER BY {col_name | expr | position}
      [ASC | DESC], ...]
    [LIMIT {[offset,] row_count | row_count OFFSET offset}]
    [PROCEDURE procedure_name(argument_list)]
    [INTO OUTFILE 'file_name'
        [CHARACTER SET charset_name]
        export_options
      | INTO DUMPFILE 'file_name'
      | INTO var_name [, var_name]]
    [FOR UPDATE | LOCK IN SHARE MODE]]

SELECT is used to retrieve rows selected from one or more tables, and
can include UNION statements and subqueries. See [HELP UNION], and
http://dev.mysql.com/doc/refman/5.6/en/subqueries.html.

The most commonly used clauses of SELECT statements are these:

o Each select_expr indicates a column that you want to retrieve. There
  must be at least one select_expr.

o table_references indicates the table or tables from which to retrieve
  rows. Its syntax is described in [HELP JOIN].

o Starting in MySQL 5.6.2, SELECT supports explicit partition selection
  using the PARTITION keyword with a list of partitions or
  subpartitions (or both) following the name of the table in a
  table_reference (see [HELP JOIN]). In this case, rows are selected
  only from the partitions listed, and any other partitions of the
  table are ignored. For more information and examples, see
  http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.

  In MySQL 5.6.6 and later, SELECT ... PARTITION from tables using
  storage engines such as MyISAM that perform table-level locks (and
  thus partition locks) lock only the partitions or subpartitions named
  by the PARTITION option.

  See
  http://dev.mysql.com/doc/refman/5.6/en/partitioning-limitations-locki
  ng.html, for more information.

o The WHERE clause, if given, indicates the condition or conditions
  that rows must satisfy to be selected. where_condition is an
  expression that evaluates to true for each row to be selected. The
  statement selects all rows if there is no WHERE clause.

  In the WHERE expression, you can use any of the functions and
  operators that MySQL supports, except for aggregate (summary)
  functions. See
  http://dev.mysql.com/doc/refman/5.6/en/expressions.html, and
  http://dev.mysql.com/doc/refman/5.6/en/functions.html.

SELECT can also be used to retrieve rows computed without reference to
any table.

URL: http://dev.mysql.com/doc/refman/5.6/en/select.html

","","http://dev.mysql.com/doc/refman/5.6/en/select.html");
INSERT INTO help_topic VALUES("445","GROUP_CONCAT","16","Syntax:
GROUP_CONCAT(expr)

This function returns a string result with the concatenated non-NULL
values from a group. It returns NULL if there are no non-NULL values.
The full syntax is as follows:

GROUP_CONCAT([DISTINCT] expr [,expr ...]
             [ORDER BY {unsigned_integer | col_name | expr}
                 [ASC | DESC] [,col_name ...]]
             [SEPARATOR str_val])

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT student_name,
    ->     GROUP_CONCAT(test_score)
    ->     FROM student
    ->     GROUP BY student_name;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("446","BENCHMARK","17","Syntax:
BENCHMARK(count,expr)

The BENCHMARK() function executes the expression expr repeatedly count
times. It may be used to time how quickly MySQL processes the
expression. The result value is always 0. The intended use is from
within the mysql client, which reports query execution times:

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT BENCHMARK(1000000,ENCODE('hello','goodbye'));
+----------------------------------------------+
| BENCHMARK(1000000,ENCODE('hello','goodbye')) |
+----------------------------------------------+
|                                            0 |
+----------------------------------------------+
1 row in set (4.74 sec)
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("447","NAME_CONST","14","Syntax:
NAME_CONST(name,value)

Returns the given value. When used to produce a result set column,
NAME_CONST() causes the column to have the given name. The arguments
should be constants.

mysql> SELECT NAME_CONST('myname', 14);
+--------+
| myname |
+--------+
|     14 |
+--------+

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("448","SHOW ENGINE","27","Syntax:
SHOW ENGINE engine_name {STATUS | MUTEX}

SHOW ENGINE displays operational information about a storage engine.
The following statements currently are supported:

SHOW ENGINE INNODB STATUS
SHOW ENGINE INNODB MUTEX
SHOW ENGINE PERFORMANCE_SCHEMA STATUS

SHOW ENGINE INNODB STATUS displays extensive information from the
standard InnoDB Monitor about the state of the InnoDB storage engine.
For information about the standard monitor and other InnoDB Monitors
that provide information about InnoDB processing, see
http://dev.mysql.com/doc/refman/5.6/en/innodb-monitors.html.

SHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. The
statement displays the following fields:

o Type

  Always InnoDB.

o Name

  The source file where the mutex is implemented, and the line number
  in the file where the mutex is created. The line number may change
  depending on your version of MySQL.

o Status

  The mutex status. This field displays several values if UNIV_DEBUG
  was defined at MySQL compilation time (for example, in include/univ.i
  in the InnoDB part of the MySQL source tree). If UNIV_DEBUG was not
  defined, the statement displays only the os_waits value. In the
  latter case (without UNIV_DEBUG), the information on which the output
  is based is insufficient to distinguish regular mutexes and mutexes
  that protect rw-locks (which permit multiple readers or a single
  writer). Consequently, the output may appear to contain multiple rows
  for the same mutex.

  o count indicates how many times the mutex was requested.

  o spin_waits indicates how many times the spinlock had to run.

  o spin_rounds indicates the number of spinlock rounds. (spin_rounds
    divided by spin_waits provides the average round count.)

  o os_waits indicates the number of operating system waits. This
    occurs when the spinlock did not work (the mutex was not locked
    during the spinlock and it was necessary to yield to the operating
    system and wait).

  o os_yields indicates the number of times a the thread trying to lock
    a mutex gave up its timeslice and yielded to the operating system
    (on the presumption that permitting other threads to run will free
    the mutex so that it can be locked).

  o os_wait_times indicates the amount of time (in ms) spent in
    operating system waits, if the timed_mutexes system variable is 1
    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so
    os_wait_times is 0. timed_mutexes is off by default.

Information from this statement can be used to diagnose system
problems. For example, large values of spin_waits and spin_rounds may
indicate scalability problems.

Use SHOW ENGINE PERFORMANCE_SCHEMA STATUS to inspect the internal
operation of the Performance Schema code:

mysql> SHOW ENGINE PERFORMANCE_SCHEMA STATUS\G
...
*************************** 3. row ***************************
  Type: performance_schema
  Name: events_waits_history.row_size
Status: 76
*************************** 4. row ***************************
  Type: performance_schema
  Name: events_waits_history.row_count
Status: 10000
*************************** 5. row ***************************
  Type: performance_schema
  Name: events_waits_history.memory
Status: 760000
...
*************************** 57. row ***************************
  Type: performance_schema
  Name: performance_schema.memory
Status: 26459600
...

This statement is intended to help the DBA understand the effects that
different Performance Schema options have on memory requirements.

Name values consist of two parts, which name an internal buffer and a
buffer attribute, respectively. Interpret buffer names as follows:

o An internal buffer that is not exposed as a table is named within
  parentheses. Examples: (pfs_cond_class).row_size,
  (pfs_mutex_class).memory.

o An internal buffer that is exposed as a table in the
  performance_schema database is named after the table, without
  parentheses. Examples: events_waits_history.row_size,
  mutex_instances.row_count.

o A value that applies to the Performance Schema as a whole begins with
  performance_schema. Example: performance_schema.memory.

Buffer attributes have these meanings:

o row_size is the size of the internal record used by the
  implementation, such as the size of a row in a table. row_size values
  cannot be changed.

o row_count is the number of internal records, such as the number of
  rows in a table. row_count values can be changed using Performance
  Schema configuration options.

o For a table, tbl_name.memory is the product of row_size and
  row_count. For the Performance Schema as a whole,
  performance_schema.memory is the sum of all the memory used (the sum
  of all other memory values).

In some cases, there is a direct relationship between a Performance
Schema configuration parameter and a SHOW ENGINE value. For example,
events_waits_history_long.row_count corresponds to
performance_schema_events_waits_history_long_size. In other cases, the
relationship is more complex. For example,
events_waits_history.row_count corresponds to
performance_schema_events_waits_history_size (the number of rows per
thread) multiplied by performance_schema_max_thread_instances ( the
number of threads).

URL: http://dev.mysql.com/doc/refman/5.6/en/show-engine.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-engine.html");
INSERT INTO help_topic VALUES("449","RELEASE_LOCK","14","Syntax:
RELEASE_LOCK(str)

Releases the lock named by the string str that was obtained with
GET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not
established by this thread (in which case the lock is not released),
and NULL if the named lock did not exist. The lock does not exist if it
was never obtained by a call to GET_LOCK() or if it has previously been
released.

The DO statement is convenient to use with RELEASE_LOCK(). See [HELP
DO].

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("450","WEEKDAY","32","Syntax:
WEEKDAY(date)

Returns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =
Sunday).

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT WEEKDAY('2008-02-03 22:23:00');
        -> 6
mysql> SELECT WEEKDAY('2007-11-06');
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("451","TIME_TO_SEC","32","Syntax:
TIME_TO_SEC(time)

Returns the time argument, converted to seconds.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT TIME_TO_SEC('22:23:00');
        -> 80580
mysql> SELECT TIME_TO_SEC('00:39:38');
        -> 2378
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("452","CONVERT_TZ","32","Syntax:
CONVERT_TZ(dt,from_tz,to_tz)

CONVERT_TZ() converts a datetime value dt from the time zone given by
from_tz to the time zone given by to_tz and returns the resulting
value. Time zones are specified as described in
http://dev.mysql.com/doc/refman/5.6/en/time-zone-support.html. This
function returns NULL if the arguments are invalid.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT CONVERT_TZ('2004-01-01 12:00:00','GMT','MET');
        -> '2004-01-01 13:00:00'
mysql> SELECT CONVERT_TZ('2004-01-01 12:00:00','+00:00','+10:00');
        -> '2004-01-01 22:00:00'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("453","EXPORT_SET","38","Syntax:
EXPORT_SET(bits,on,off[,separator[,number_of_bits]])

Returns a string such that for every bit set in the value bits, you get
an on string and for every bit not set in the value, you get an off
string. Bits in bits are examined from right to left (from low-order to
high-order bits). Strings are added to the result from left to right,
separated by the separator string (the default being the comma
character ","). The number of bits examined is given by number_of_bits,
which has a default of 64 if not specified. number_of_bits is silently
clipped to 64 if larger than 64. It is treated as an unsigned integer,
so a value of -1 is effectively the same as 64.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT EXPORT_SET(5,'Y','N',',',4);
        -> 'Y,N,Y,N'
mysql> SELECT EXPORT_SET(6,'1','0',',',10);
        -> '0,1,1,0,0,0,0,0,0,0'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("454","CAST","38","Syntax:
CAST(expr AS type)

The CAST() function takes an expression of any type and produces a
result value of a specified type, similar to CONVERT(). See the
description of CONVERT() for more information.

URL: http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/cast-functions.html");
INSERT INTO help_topic VALUES("455","SOUNDS LIKE","38","Syntax:
expr1 SOUNDS LIKE expr2

This is the same as SOUNDEX(expr1) = SOUNDEX(expr2).

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("456","PERIOD_DIFF","32","Syntax:
PERIOD_DIFF(P1,P2)

Returns the number of months between periods P1 and P2. P1 and P2
should be in the format YYMM or YYYYMM. Note that the period arguments
P1 and P2 are not date values.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT PERIOD_DIFF(200802,200703);
        -> 11
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("457","AVG","16","Syntax:
AVG([DISTINCT] expr)

Returns the average value of expr. The DISTINCT option can be used to
return the average of the distinct values of expr.

AVG() returns NULL if there were no matching rows.

URL: http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html

","mysql> SELECT student_name, AVG(test_score)
    ->        FROM student
    ->        GROUP BY student_name;
","http://dev.mysql.com/doc/refman/5.6/en/group-by-functions.html");
INSERT INTO help_topic VALUES("458","QUOTE","38","Syntax:
QUOTE(str)

Quotes a string to produce a result that can be used as a properly
escaped data value in an SQL statement. The string is returned enclosed
by single quotation marks and with each instance of backslash ("\"),
single quote ("'"), ASCII NUL, and Control+Z preceded by a backslash.
If the argument is NULL, the return value is the word "NULL" without
enclosing single quotation marks.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT QUOTE('Don\'t!');
        -> 'Don\'t!'
mysql> SELECT QUOTE(NULL);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("459","IN","19","Syntax:
expr IN (value,...)

Returns 1 if expr is equal to any of the values in the IN list, else
returns 0. If all values are constants, they are evaluated according to
the type of expr and sorted. The search for the item then is done using
a binary search. This means IN is very quick if the IN value list
consists entirely of constants. Otherwise, type conversion takes place
according to the rules described in
http://dev.mysql.com/doc/refman/5.6/en/type-conversion.html, but
applied to all the arguments.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 2 IN (0,3,5,7);
        -> 0
mysql> SELECT 'wefwf' IN ('wee','wefwf','weg');
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("460","QUARTER","32","Syntax:
QUARTER(date)

Returns the quarter of the year for date, in the range 1 to 4.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT QUARTER('2008-04-01');
        -> 2
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("461","HELP COMMAND","27","Syntax:
mysql> help search_string

If you provide an argument to the help command, mysql uses it as a
search string to access server-side help from the contents of the MySQL
Reference Manual. The proper operation of this command requires that
the help tables in the mysql database be initialized with help topic
information (see
http://dev.mysql.com/doc/refman/5.6/en/server-side-help-support.html).

If there is no match for the search string, the search fails:

mysql> help me

Nothing found
Please try to run 'help contents' for a list of all accessible topics

Use help contents to see a list of the help categories:

mysql> help contents
You asked for help about help category: "Contents"
For more information, type 'help <item>', where <item> is one of the
following categories:
   Account Management
   Administration
   Data Definition
   Data Manipulation
   Data Types
   Functions
   Functions and Modifiers for Use with GROUP BY
   Geographic Features
   Language Structure
   Plugins
   Storage Engines
   Stored Routines
   Table Maintenance
   Transactions
   Triggers

If the search string matches multiple items, mysql shows a list of
matching topics:

mysql> help logs
Many help items for your request exist.
To make a more specific request, please type 'help <item>',
where <item> is one of the following topics:
   SHOW
   SHOW BINARY LOGS
   SHOW ENGINE
   SHOW LOGS

Use a topic as the search string to see the help entry for that topic:

mysql> help show binary logs
Name: 'SHOW BINARY LOGS'
Description:
Syntax:
SHOW BINARY LOGS
SHOW MASTER LOGS

Lists the binary log files on the server. This statement is used as
part of the procedure described in [purge-binary-logs], that shows how
to determine which logs can be purged.

mysql> SHOW BINARY LOGS;
+---------------+-----------+
| Log_name      | File_size |
+---------------+-----------+
| binlog.000015 |    724935 |
| binlog.000016 |    733481 |
+---------------+-----------+

The search string can contain the the wildcard characters "%" and "_".
These have the same meaning as for pattern-matching operations
performed with the LIKE operator. For example, HELP rep% returns a list
of topics that begin with rep:

mysql> HELP rep%
Many help items for your request exist.
To make a more specific request, please type 'help <item>',
where <item> is one of the following
topics:
   REPAIR TABLE
   REPEAT FUNCTION
   REPEAT LOOP
   REPLACE
   REPLACE FUNCTION

URL: http://dev.mysql.com/doc/refman/5.6/en/mysql-server-side-help.html

","","http://dev.mysql.com/doc/refman/5.6/en/mysql-server-side-help.html");
INSERT INTO help_topic VALUES("462","POSITION","38","Syntax:
POSITION(substr IN str)

POSITION(substr IN str) is a synonym for LOCATE(substr,str).

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("463","IS_USED_LOCK","14","Syntax:
IS_USED_LOCK(str)

Checks whether the lock named str is in use (that is, locked). If so,
it returns the connection identifier of the client that holds the lock.
Otherwise, it returns NULL.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("464","POLYFROMTEXT","3","PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])

Constructs a POLYGON value using its WKT representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("465","DES_ENCRYPT","12","Syntax:
DES_ENCRYPT(str[,{key_num|key_str}])

Encrypts the string with the given key using the Triple-DES algorithm.

This function works only if MySQL has been configured with SSL support.
See http://dev.mysql.com/doc/refman/5.6/en/ssl-connections.html.

The encryption key to use is chosen based on the second argument to
DES_ENCRYPT(), if one was given. With no argument, the first key from
the DES key file is used. With a key_num argument, the given key number
(0 to 9) from the DES key file is used. With a key_str argument, the
given key string is used to encrypt str.

The key file can be specified with the --des-key-file server option.

The return string is a binary string where the first character is
CHAR(128 | key_num). If an error occurs, DES_ENCRYPT() returns NULL.

The 128 is added to make it easier to recognize an encrypted key. If
you use a string key, key_num is 127.

The string length for the result is given by this formula:

new_len = orig_len + (8 - (orig_len % 8)) + 1

Each line in the DES key file has the following format:

key_num des_key_str

Each key_num value must be a number in the range from 0 to 9. Lines in
the file may be in any order. des_key_str is the string that is used to
encrypt the message. There should be at least one space between the
number and the key. The first key is the default key that is used if
you do not specify any key argument to DES_ENCRYPT().

You can tell MySQL to read new key values from the key file with the
FLUSH DES_KEY_FILE statement. This requires the RELOAD privilege.

One benefit of having a set of default keys is that it gives
applications a way to check for the existence of encrypted column
values, without giving the end user the right to decrypt those values.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT customer_address FROM customer_table 
     > WHERE crypted_credit_card = DES_ENCRYPT('credit_card_number');
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("466","ALTER USER","10","Syntax:
ALTER USER user_specification
    [, user_specification] ...

user_specification:
    user PASSWORD EXPIRE

The ALTER USER statement alters MySQL accounts. To use it, you must
have the global CREATE USER privilege or the INSERT privilege for the
mysql database. This statement was added in MySQL 5.6.6.

For each account, ALTER USER expires its password. For example:

ALTER USER 'jeffrey'@'localhost' PASSWORD EXPIRE;

The account name uses the format described in
http://dev.mysql.com/doc/refman/5.6/en/account-names.html. If you
specify only the user name part of the account name, a host name part
of '%' is used.

Password expiration for an account affects the corresponding row of the
mysql.user table: The server sets the password_expired column to 'Y'.

*Warning*: In MySQL 5.6.6, ALTER USER also sets the Password column to
the empty string, so do not use this statement until 5.6.7.

After an account's password has been expired, all operations performed
in subsequent connections to the server using the account result in an
error until the user issues a SET PASSWORD statement to establish a new
account password:

mysql> SELECT 1;
ERROR 1820 (HY000): You must SET PASSWORD before executing this statement

mysql> SET PASSWORD = PASSWORD('new_password');
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT 1;
+---+
| 1 |
+---+
| 1 |
+---+
1 row in set (0.00 sec)

As of MySQL 5.6.8, this restricted mode of operation also permits SET
statements, which is useful if the account password uses a hashing
format that requires old_passwords to be set to a value different from
its default.

It is also possible for an administrative user to reset the account
password, but any existing connections for the account remain under
restriction. Clients using the account must disconnect and reconnect
before statements can be executed successfully.

It is possible after password expiration to "reset" a password by using
SET PASSWORD to set it to its current value. As a matter of good
policy, it is preferable to choose a different password.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-user.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-user.html");
INSERT INTO help_topic VALUES("467","CEIL","4","Syntax:
CEIL(X)

CEIL() is a synonym for CEILING().

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("468","WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS","17","Syntax:
WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS(gtid_set[, timeout])

Wait until the slave SQL thread has executed all of the transactions
whose global transaction identifiers are contained in gtid_set (see
http://dev.mysql.com/doc/refman/5.6/en/replication-gtids-concepts.html,
for a definition of "GTID sets"), or until timeout seconds have
elapsed, whichever occurs first. timeout is optional; the default
timeout is 0 seconds, in which case the master simply waits until all
of the transactions in the GTID set have been executed.

Prior to MySQL 5.6.9, WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS() was named
SQL_THREAD_WAIT_AFTER_GTIDS(). (Bug #14775984)

For more information, see
http://dev.mysql.com/doc/refman/5.6/en/replication-gtids.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html

","mysql> SELECT WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS('3E11FA47-71CA-11E1-9E33-C80AA9429562:1-5');
        -> 5
","http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html");
INSERT INTO help_topic VALUES("469","LENGTH","38","Syntax:
LENGTH(str)

Returns the length of the string str, measured in bytes. A multi-byte
character counts as multiple bytes. This means that for a string
containing five 2-byte characters, LENGTH() returns 10, whereas
CHAR_LENGTH() returns 5.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT LENGTH('text');
        -> 4
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("470","WEIGHT_STRING","38","Syntax:
WEIGHT_STRING(str [AS {CHAR|BINARY}(N)] [LEVEL levels] [flags])

levels: N [ASC|DESC|REVERSE] [, N [ASC|DESC|REVERSE]] ...

This function returns the weight string for the input string. The
return value is a binary string that represents the sorting and
comparison value of the string. It has these properties:

o If WEIGHT_STRING(str1) = WEIGHT_STRING(str2), then str1 = str2 (str1
  and str2 are considered equal)

o If WEIGHT_STRING(str1) < WEIGHT_STRING(str2), then str1 < str2 (str1
  sorts before str2)

WEIGHT_STRING() can be used for testing and debugging of collations,
especially if you are adding a new collation. See
http://dev.mysql.com/doc/refman/5.6/en/adding-collation.html.

The input string, str, is a string expression. If the input is a
nonbinary (character) string such as a CHAR, VARCHAR, or TEXT value,
the return value contains the collation weights for the string. If the
input is a binary (byte) string such as a BINARY, VARBINARY, or BLOB
value, the return value is the same as the input (the weight for each
byte in a binary string is the byte value). If the input is NULL,
WEIGHT_STRING() returns NULL.

Examples:

mysql> SET @s = _latin1 'AB' COLLATE latin1_swedish_ci;
mysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));
+------+---------+------------------------+
| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |
+------+---------+------------------------+
| AB   | 4142    | 4142                   |
+------+---------+------------------------+

mysql> SET @s = _latin1 'ab' COLLATE latin1_swedish_ci;
mysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));
+------+---------+------------------------+
| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |
+------+---------+------------------------+
| ab   | 6162    | 4142                   |
+------+---------+------------------------+

mysql> SET @s = CAST('AB' AS BINARY);
mysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));
+------+---------+------------------------+
| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |
+------+---------+------------------------+
| AB   | 4142    | 4142                   |
+------+---------+------------------------+

mysql> SET @s = CAST('ab' AS BINARY);
mysql> SELECT @s, HEX(@s), HEX(WEIGHT_STRING(@s));
+------+---------+------------------------+
| @s   | HEX(@s) | HEX(WEIGHT_STRING(@s)) |
+------+---------+------------------------+
| ab   | 6162    | 6162                   |
+------+---------+------------------------+

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("471","ST_EQUALS","31","ST_Equals(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially equal to g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("472","ALTER EVENT","40","Syntax:
ALTER
    [DEFINER = { user | CURRENT_USER }]
    EVENT event_name
    [ON SCHEDULE schedule]
    [ON COMPLETION [NOT] PRESERVE]
    [RENAME TO new_event_name]
    [ENABLE | DISABLE | DISABLE ON SLAVE]
    [COMMENT 'comment']
    [DO event_body]

The ALTER EVENT statement changes one or more of the characteristics of
an existing event without the need to drop and recreate it. The syntax
for each of the DEFINER, ON SCHEDULE, ON COMPLETION, COMMENT, ENABLE /
DISABLE, and DO clauses is exactly the same as when used with CREATE
EVENT. (See [HELP CREATE EVENT].)

Any user can alter an event defined on a database for which that user
has the EVENT privilege. When a user executes a successful ALTER EVENT
statement, that user becomes the definer for the affected event.

ALTER EVENT works only with an existing event:

mysql> ALTER EVENT no_such_event 
     >     ON SCHEDULE 
     >       EVERY '2:3' DAY_HOUR;
ERROR 1517 (HY000): Unknown event 'no_such_event'

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-event.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-event.html");
INSERT INTO help_topic VALUES("473","DATE_SUB","32","Syntax:
DATE_SUB(date,INTERVAL expr unit)

See the description for DATE_ADD().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("474","|","20","Syntax:
|

Bitwise OR:

URL: http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html

","mysql> SELECT 29 | 15;
        -> 31
","http://dev.mysql.com/doc/refman/5.6/en/bit-functions.html");
INSERT INTO help_topic VALUES("475","UUID_SHORT","14","Syntax:
UUID_SHORT()

Returns a "short" universal identifier as a 64-bit unsigned integer
(rather than a string-form 128-bit identifier as returned by the UUID()
function).

The value of UUID_SHORT() is guaranteed to be unique if the following
conditions hold:

o The server_id of the current host is unique among your set of master
  and slave servers

o server_id is between 0 and 255

o You do not set back your system time for your server between mysqld
  restarts

o You do not invoke UUID_SHORT() on average more than 16 million times
  per second between mysqld restarts

The UUID_SHORT() return value is constructed this way:

  (server_id & 255) << 56
+ (server_startup_time_in_seconds << 24)
+ incremented_variable++;

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT UUID_SHORT();
        -> 92395783831158784
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("476","GEOMFROMTEXT","3","GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])

Constructs a geometry value of any type using its WKT representation
and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("477","DATEDIFF","32","Syntax:
DATEDIFF(expr1,expr2)

DATEDIFF() returns expr1 - expr2 expressed as a value in days from one
date to the other. expr1 and expr2 are date or date-and-time
expressions. Only the date parts of the values are used in the
calculation.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DATEDIFF('2007-12-31 23:59:59','2007-12-30');
        -> 1
mysql> SELECT DATEDIFF('2010-11-30 23:59:59','2010-12-31');
        -> -31
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("478","DROP PROCEDURE","40","Syntax:
DROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name

This statement is used to drop a stored procedure or function. That is,
the specified routine is removed from the server. You must have the
ALTER ROUTINE privilege for the routine. (If the
automatic_sp_privileges system variable is enabled, that privilege and
EXECUTE are granted automatically to the routine creator when the
routine is created and dropped from the creator when the routine is
dropped. See
http://dev.mysql.com/doc/refman/5.6/en/stored-routines-privileges.html.
)

The IF EXISTS clause is a MySQL extension. It prevents an error from
occurring if the procedure or function does not exist. A warning is
produced that can be viewed with SHOW WARNINGS.

URL: http://dev.mysql.com/doc/refman/5.6/en/drop-procedure.html

","","http://dev.mysql.com/doc/refman/5.6/en/drop-procedure.html");
INSERT INTO help_topic VALUES("479","INSTALL PLUGIN","5","Syntax:
INSTALL PLUGIN plugin_name SONAME 'shared_library_name'

This statement installs a server plugin. It requires the INSERT
privilege for the mysql.plugin table.

plugin_name is the name of the plugin as defined in the plugin
descriptor structure contained in the library file (see
http://dev.mysql.com/doc/refman/5.6/en/plugin-data-structures.html).
Plugin names are not case sensitive. For maximal compatibility, plugin
names should be limited to ASCII letters, digits, and underscore
because they are used in C source files, shell command lines, M4 and
Bourne shell scripts, and SQL environments.

shared_library_name is the name of the shared library that contains the
plugin code. The name includes the file name extension (for example,
libmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).

The shared library must be located in the plugin directory (the
directory named by the plugin_dir system variable). The library must be
in the plugin directory itself, not in a subdirectory. By default,
plugin_dir is the plugin directory under the directory named by the
pkglibdir configuration variable, but it can be changed by setting the
value of plugin_dir at server startup. For example, set its value in a
my.cnf file:

[mysqld]
plugin_dir=/path/to/plugin/directory

If the value of plugin_dir is a relative path name, it is taken to be
relative to the MySQL base directory (the value of the basedir system
variable).

INSTALL PLUGIN loads and initializes the plugin code to make the plugin
available for use. A plugin is initialized by executing its
initialization function, which handles any setup that the plugin must
perform before it can be used. When the server shuts down, it executes
the deinitialization function for each plugin that is loaded so that
the plugin has a change to perform any final cleanup.

INSTALL PLUGIN also registers the plugin by adding a line that
indicates the plugin name and library file name to the mysql.plugin
table. At server startup, the server loads and initializes any plugin
that is listed in the mysql.plugin table. This means that a plugin is
installed with INSTALL PLUGIN only once, not every time the server
starts. Plugin loading at startup does not occur if the server is
started with the --skip-grant-tables option.

A plugin library can contain multiple plugins. For each of them to be
installed, use a separate INSTALL PLUGIN statement. Each statement
names a different plugin, but all of them specify the same library
name.

URL: http://dev.mysql.com/doc/refman/5.6/en/install-plugin.html

","","http://dev.mysql.com/doc/refman/5.6/en/install-plugin.html");
INSERT INTO help_topic VALUES("480","LOAD DATA","28","Syntax:
LOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE 'file_name'
    [REPLACE | IGNORE]
    INTO TABLE tbl_name
    [PARTITION (partition_name,...)]
    [CHARACTER SET charset_name]
    [{FIELDS | COLUMNS}
        [TERMINATED BY 'string']
        [[OPTIONALLY] ENCLOSED BY 'char']
        [ESCAPED BY 'char']
    ]
    [LINES
        [STARTING BY 'string']
        [TERMINATED BY 'string']
    ]
    [IGNORE number {LINES | ROWS}]
    [(col_name_or_user_var,...)]
    [SET col_name = expr,...]

The LOAD DATA INFILE statement reads rows from a text file into a table
at a very high speed. The file name must be given as a literal string.

LOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See
http://dev.mysql.com/doc/refman/5.6/en/select-into.html.) To write data
from a table to a file, use SELECT ... INTO OUTFILE. To read the file
back into a table, use LOAD DATA INFILE. The syntax of the FIELDS and
LINES clauses is the same for both statements. Both clauses are
optional, but FIELDS must precede LINES if both are specified.

For more information about the efficiency of INSERT versus LOAD DATA
INFILE and speeding up LOAD DATA INFILE, see
http://dev.mysql.com/doc/refman/5.6/en/insert-speed.html.

The character set indicated by the character_set_database system
variable is used to interpret the information in the file. SET NAMES
and the setting of character_set_client do not affect interpretation of
input. If the contents of the input file use a character set that
differs from the default, it is usually preferable to specify the
character set of the file by using the CHARACTER SET clause. A
character set of binary specifies "no conversion."

LOAD DATA INFILE interprets all fields in the file as having the same
character set, regardless of the data types of the columns into which
field values are loaded. For proper interpretation of file contents,
you must ensure that it was written with the correct character set. For
example, if you write a data file with mysqldump -T or by issuing a
SELECT ... INTO OUTFILE statement in mysql, be sure to use a
--default-character-set option with mysqldump or mysql so that output
is written in the character set to be used when the file is loaded with
LOAD DATA INFILE.

*Note*: It is not possible to load data files that use the ucs2, utf16,
utf16le, or utf32 character set.

The character_set_filesystem system variable controls the
interpretation of the file name.

You can also load data files by using the mysqlimport utility; it
operates by sending a LOAD DATA INFILE statement to the server. The
--local option causes mysqlimport to read data files from the client
host. You can specify the --compress option to get better performance
over slow networks if the client and server support the compressed
protocol. See http://dev.mysql.com/doc/refman/5.6/en/mysqlimport.html.

If you use LOW_PRIORITY, execution of the LOAD DATA statement is
delayed until no other clients are reading from the table. This affects
only storage engines that use only table-level locking (such as MyISAM,
MEMORY, and MERGE).

If you specify CONCURRENT with a MyISAM table that satisfies the
condition for concurrent inserts (that is, it contains no free blocks
in the middle), other threads can retrieve data from the table while
LOAD DATA is executing. Using this option affects the performance of
LOAD DATA a bit, even if no other thread is using the table at the same
time.

Prior to MySQL 5.5.1, CONCURRENT was not replicated when using
statement-based replication (see Bug #34628). However, it is replicated
when using row-based replication, regardless of the version. See
http://dev.mysql.com/doc/refman/5.6/en/replication-features-load-data.h
tml, for more information.

The LOCAL keyword, if specified, is interpreted with respect to the
client end of the connection:

o If LOCAL is specified, the file is read by the client program on the
  client host and sent to the server. The file can be given as a full
  path name to specify its exact location. If given as a relative path
  name, the name is interpreted relative to the directory in which the
  client program was started.

  When using LOCAL with LOAD DATA, a copy of the file is created in the
  server's temporary directory. This is not the directory determined by
  the value of tmpdir or slave_load_tmpdir, but rather the operating
  system's temporary directory, and is not configurable in the MySQL
  Server. (Typically the system temporary directory is /tmp on Linux
  systems and C:\WINDOWS\TEMP on Windows.) Lack of sufficient space for
  the copy in this directory can cause the LOAD DATA LOCAL statement to
  fail.

o If LOCAL is not specified, the file must be located on the server
  host and is read directly by the server. The server uses the
  following rules to locate the file:

  o If the file name is an absolute path name, the server uses it as
    given.

  o If the file name is a relative path name with one or more leading
    components, the server searches for the file relative to the
    server's data directory.

  o If a file name with no leading components is given, the server
    looks for the file in the database directory of the default
    database.

Note that, in the non-LOCAL case, these rules mean that a file named as
./myfile.txt is read from the server's data directory, whereas the file
named as myfile.txt is read from the database directory of the default
database. For example, if db1 is the default database, the following
LOAD DATA statement reads the file data.txt from the database directory
for db1, even though the statement explicitly loads the file into a
table in the db2 database:

LOAD DATA INFILE 'data.txt' INTO TABLE db2.my_table;

Windows path names are specified using forward slashes rather than
backslashes. If you do use backslashes, you must double them.

In MySQL 5.6.2 and later, LOAD DATA supports explicit partition
selection using the PARTITION option with a comma-separated list of
more or more names of partitions, subpartitions, or both. When this
option is used, if any rows from the file cannot be inserted into any
of the partitions or subpartitions named in the list, the statement
fails with the error Found a row not matching the given partition set.
For more information, see
http://dev.mysql.com/doc/refman/5.6/en/partitioning-selection.html.

For security reasons, when reading text files located on the server,
the files must either reside in the database directory or be readable
by all. Also, to use LOAD DATA INFILE on server files, you must have
the FILE privilege. See
http://dev.mysql.com/doc/refman/5.6/en/privileges-provided.html. For
non-LOCAL load operations, if the secure_file_priv system variable is
set to a nonempty directory name, the file to be loaded must be located
in that directory.

URL: http://dev.mysql.com/doc/refman/5.6/en/load-data.html

","","http://dev.mysql.com/doc/refman/5.6/en/load-data.html");
INSERT INTO help_topic VALUES("481","DECLARE CURSOR","24","Syntax:
DECLARE cursor_name CURSOR FOR select_statement

This statement declares a cursor and associates it with a SELECT
statement that retrieves the rows to be traversed by the cursor. To
fetch the rows later, use a FETCH statement. The number of columns
retrieved by the SELECT statement must match the number of output
variables specified in the FETCH statement.

The SELECT statement cannot have an INTO clause.

Cursor declarations must appear before handler declarations and after
variable and condition declarations.

A stored program may contain multiple cursor declarations, but each
cursor declared in a given block must have a unique name. For an
example, see http://dev.mysql.com/doc/refman/5.6/en/cursors.html.

For information available through SHOW statements, it is possible in
many cases to obtain equivalent information by using a cursor with an
INFORMATION_SCHEMA table.

URL: http://dev.mysql.com/doc/refman/5.6/en/declare-cursor.html

","","http://dev.mysql.com/doc/refman/5.6/en/declare-cursor.html");
INSERT INTO help_topic VALUES("482","LOCALTIME","32","Syntax:
LOCALTIME, LOCALTIME([fsp])

LOCALTIME and LOCALTIME() are synonyms for NOW().

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("483","SHA1","12","Syntax:
SHA1(str), SHA(str)

Calculates an SHA-1 160-bit checksum for the string, as described in
RFC 3174 (Secure Hash Algorithm). The value is returned as a string of
40 hex digits, or NULL if the argument was NULL. One of the possible
uses for this function is as a hash key. See the notes at the beginning
of this section about storing hash values efficiently. You can also use
SHA1() as a cryptographic function for storing passwords. SHA() is
synonymous with SHA1().

The return value is a nonbinary string in the connection character set.

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SELECT SHA1('abc');
        -> 'a9993e364706816aba3e25717850c26c9cd0d89d'
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("484","BLOB","23","BLOB[(M)]

A BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each
BLOB value is stored using a 2-byte length prefix that indicates the
number of bytes in the value.

An optional length M can be given for this type. If this is done, MySQL
creates the column as the smallest BLOB type large enough to hold
values M bytes long.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("485","PASSWORD","12","Syntax:
PASSWORD(str)

Calculates and returns a hashed password string from the cleartext
password str and returns a nonbinary string in the connection character
set, or NULL if the argument is NULL. This function is the SQL
interface to the algorithm used by the server to encrypt MySQL
passwords for storage in the mysql.user grant table.

The password hashing method used by PASSWORD() depends on the value of
the old_passwords system variable:

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","mysql> SET old_passwords = 0;
mysql> SELECT PASSWORD('mypass');
+-------------------------------------------+
| PASSWORD('mypass')                        |
+-------------------------------------------+
| *6C8989366EAF75BB670AD8EA7A7FC1176A95CEF4 |
+-------------------------------------------+

mysql> SET old_passwords = 1;
mysql> SELECT PASSWORD('mypass');
+--------------------+
| PASSWORD('mypass') |
+--------------------+
| 6f8c114b58f2ce9e   |
+--------------------+
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("486","UTC_DATE","32","Syntax:
UTC_DATE, UTC_DATE()

Returns the current UTC date as a value in 'YYYY-MM-DD' or YYYYMMDD
format, depending on whether the function is used in a string or
numeric context.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT UTC_DATE(), UTC_DATE() + 0;
        -> '2003-08-14', 20030814
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("487","DIMENSION","37","Dimension(g)

Returns the inherent dimension of the geometry value g. The result can
be -1, 0, 1, or 2. The meaning of these values is given in
http://dev.mysql.com/doc/refman/5.6/en/gis-class-geometry.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT Dimension(GeomFromText('LineString(1 1,2 2)'));
+------------------------------------------------+
| Dimension(GeomFromText('LineString(1 1,2 2)')) |
+------------------------------------------------+
|                                              1 |
+------------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("488","BIT","23","BIT[(M)]

A bit-field type. M indicates the number of bits per value, from 1 to
64. The default is 1 if M is omitted.

URL: http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/numeric-type-overview.html");
INSERT INTO help_topic VALUES("489","EQUALS","31","Equals(g1,g2)

Returns 1 or 0 to indicate whether g1 is spatially equal to g2.

URL: http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html

","","http://dev.mysql.com/doc/refman/5.6/en/functions-for-testing-spatial-relations-between-geometric-objects.html");
INSERT INTO help_topic VALUES("490","XA","8","Syntax:
XA {START|BEGIN} xid [JOIN|RESUME]

XA END xid [SUSPEND [FOR MIGRATE]]

XA PREPARE xid

XA COMMIT xid [ONE PHASE]

XA ROLLBACK xid

XA RECOVER

For XA START, the JOIN and RESUME clauses are not supported.

For XA END the SUSPEND [FOR MIGRATE] clause is not supported.

Each XA statement begins with the XA keyword, and most of them require
an xid value. An xid is an XA transaction identifier. It indicates
which transaction the statement applies to. xid values are supplied by
the client, or generated by the MySQL server. An xid value has from one
to three parts:

xid: gtrid [, bqual [, formatID ]]

gtrid is a global transaction identifier, bqual is a branch qualifier,
and formatID is a number that identifies the format used by the gtrid
and bqual values. As indicated by the syntax, bqual and formatID are
optional. The default bqual value is '' if not given. The default
formatID value is 1 if not given.

gtrid and bqual must be string literals, each up to 64 bytes (not
characters) long. gtrid and bqual can be specified in several ways. You
can use a quoted string ('ab'), hex string (0x6162, X'ab'), or bit
value (b'nnnn').

formatID is an unsigned integer.

The gtrid and bqual values are interpreted in bytes by the MySQL
server's underlying XA support routines. However, while an SQL
statement containing an XA statement is being parsed, the server works
with some specific character set. To be safe, write gtrid and bqual as
hex strings.

xid values typically are generated by the Transaction Manager. Values
generated by one TM must be different from values generated by other
TMs. A given TM must be able to recognize its own xid values in a list
of values returned by the XA RECOVER statement.

XA START xid starts an XA transaction with the given xid value. Each XA
transaction must have a unique xid value, so the value must not
currently be used by another XA transaction. Uniqueness is assessed
using the gtrid and bqual values. All following XA statements for the
XA transaction must be specified using the same xid value as that given
in the XA START statement. If you use any of those statements but
specify an xid value that does not correspond to some existing XA
transaction, an error occurs.

One or more XA transactions can be part of the same global transaction.
All XA transactions within a given global transaction must use the same
gtrid value in the xid value. For this reason, gtrid values must be
globally unique so that there is no ambiguity about which global
transaction a given XA transaction is part of. The bqual part of the
xid value must be different for each XA transaction within a global
transaction. (The requirement that bqual values be different is a
limitation of the current MySQL XA implementation. It is not part of
the XA specification.)

The XA RECOVER statement returns information for those XA transactions
on the MySQL server that are in the PREPARED state. (See
http://dev.mysql.com/doc/refman/5.6/en/xa-states.html.) The output
includes a row for each such XA transaction on the server, regardless
of which client started it.

XA RECOVER output rows look like this (for an example xid value
consisting of the parts 'abc', 'def', and 7):

mysql> XA RECOVER;
+----------+--------------+--------------+--------+
| formatID | gtrid_length | bqual_length | data   |
+----------+--------------+--------------+--------+
|        7 |            3 |            3 | abcdef |
+----------+--------------+--------------+--------+

The output columns have the following meanings:

o formatID is the formatID part of the transaction xid

o gtrid_length is the length in bytes of the gtrid part of the xid

o bqual_length is the length in bytes of the bqual part of the xid

o data is the concatenation of the gtrid and bqual parts of the xid

URL: http://dev.mysql.com/doc/refman/5.6/en/xa-statements.html

","","http://dev.mysql.com/doc/refman/5.6/en/xa-statements.html");
INSERT INTO help_topic VALUES("491","OCTET_LENGTH","38","Syntax:
OCTET_LENGTH(str)

OCTET_LENGTH() is a synonym for LENGTH().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("492","UTC_TIMESTAMP","32","Syntax:
UTC_TIMESTAMP, UTC_TIMESTAMP([fsp])

Returns the current UTC date and time as a value in 'YYYY-MM-DD
HH:MM:SS' or YYYYMMDDHHMMSS format, depending on whether the function
is used in a string or numeric context.

As of MySQL 5.6.4, if the fsp argument is given to specify a fractional
seconds precision from 0 to 6, the return value includes a fractional
seconds part of that many digits. Before 5.6.4, any argument is
ignored.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;
        -> '2003-08-14 18:08:04', 20030814180804.000000
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("493","AES_ENCRYPT","12","Syntax:
AES_ENCRYPT(str,key_str)

AES_ENCRYPT() and AES_DECRYPT() enable encryption and decryption of
data using the official AES (Advanced Encryption Standard) algorithm,
previously known as "Rijndael." Encoding with a 128-bit key length is
used, but you can extend it up to 256 bits by modifying the source. We
chose 128 bits because it is much faster and it is secure enough for
most purposes.

AES_ENCRYPT() encrypts a string and returns a binary string.
AES_DECRYPT() decrypts the encrypted string and returns the original
string. The input arguments may be any length. If either argument is
NULL, the result of this function is also NULL.

Because AES is a block-level algorithm, padding is used to encode
uneven length strings and so the result string length may be calculated
using this formula:

16 * (trunc(string_length / 16) + 1)

If AES_DECRYPT() detects invalid data or incorrect padding, it returns
NULL. However, it is possible for AES_DECRYPT() to return a non-NULL
value (possibly garbage) if the input data or the key is invalid.

You can use the AES functions to store data in an encrypted form by
modifying your queries:

URL: http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html

","INSERT INTO t VALUES (1,AES_ENCRYPT('text','password'));
","http://dev.mysql.com/doc/refman/5.6/en/encryption-functions.html");
INSERT INTO help_topic VALUES("494","+","4","Syntax:
+

Addition:

URL: http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html

","mysql> SELECT 3+5;
        -> 8
","http://dev.mysql.com/doc/refman/5.6/en/arithmetic-functions.html");
INSERT INTO help_topic VALUES("495","GTID_SUBTRACT","17","Syntax:
GTID_SUBTRACT(set,subset)

Given two sets of global transaction IDs subset and set, returns only
those GTIDs from set that are not in subset.

URL: http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html

","","http://dev.mysql.com/doc/refman/5.6/en/gtid-functions.html");
INSERT INTO help_topic VALUES("496","INET_NTOA","14","Syntax:
INET_NTOA(expr)

Given a numeric IPv4 network address in network byte order, returns the
dotted-quad string representation of the address as a nonbinary string
in the connection character set. INET_NTOA() returns NULL if it does
not understand its argument.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT INET_NTOA(167773449);
        -> '10.0.5.9'
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("497","DAYOFWEEK","32","Syntax:
DAYOFWEEK(date)

Returns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =
Saturday). These index values correspond to the ODBC standard.

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DAYOFWEEK('2007-02-03');
        -> 7
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("498","CEILING","4","Syntax:
CEILING(X)

Returns the smallest integer value not less than X.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT CEILING(1.23);
        -> 2
mysql> SELECT CEILING(-1.23);
        -> -1
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("499","LINEFROMWKB","33","LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])

Constructs a LINESTRING value using its WKB representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("500","SHOW PROCESSLIST","27","Syntax:
SHOW [FULL] PROCESSLIST

SHOW PROCESSLIST shows you which threads are running. You can also get
this information from the INFORMATION_SCHEMA PROCESSLIST table or the
mysqladmin processlist command. If you have the PROCESS privilege, you
can see all threads. Otherwise, you can see only your own threads (that
is, threads associated with the MySQL account that you are using). If
you do not use the FULL keyword, only the first 100 characters of each
statement are shown in the Info field.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-processlist.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-processlist.html");
INSERT INTO help_topic VALUES("501","GEOMETRYTYPE","37","GeometryType(g)

Returns as a binary string the name of the geometry type of which the
geometry instance g is a member. The name corresponds to one of the
instantiable Geometry subclasses.

URL: http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html

","mysql> SELECT GeometryType(GeomFromText('POINT(1 1)'));
+------------------------------------------+
| GeometryType(GeomFromText('POINT(1 1)')) |
+------------------------------------------+
| POINT                                    |
+------------------------------------------+
","http://dev.mysql.com/doc/refman/5.6/en/geometry-property-functions.html");
INSERT INTO help_topic VALUES("502","CREATE VIEW","40","Syntax:
CREATE
    [OR REPLACE]
    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
    [DEFINER = { user | CURRENT_USER }]
    [SQL SECURITY { DEFINER | INVOKER }]
    VIEW view_name [(column_list)]
    AS select_statement
    [WITH [CASCADED | LOCAL] CHECK OPTION]

The CREATE VIEW statement creates a new view, or replaces an existing
one if the OR REPLACE clause is given. If the view does not exist,
CREATE OR REPLACE VIEW is the same as CREATE VIEW. If the view does
exist, CREATE OR REPLACE VIEW is the same as ALTER VIEW.

The select_statement is a SELECT statement that provides the definition
of the view. (When you select from the view, you select in effect using
the SELECT statement.) select_statement can select from base tables or
other views.

The view definition is "frozen" at creation time, so changes to the
underlying tables afterward do not affect the view definition. For
example, if a view is defined as SELECT * on a table, new columns added
to the table later do not become part of the view.

The ALGORITHM clause affects how MySQL processes the view. The DEFINER
and SQL SECURITY clauses specify the security context to be used when
checking access privileges at view invocation time. The WITH CHECK
OPTION clause can be given to constrain inserts or updates to rows in
tables referenced by the view. These clauses are described later in
this section.

The CREATE VIEW statement requires the CREATE VIEW privilege for the
view, and some privilege for each column selected by the SELECT
statement. For columns used elsewhere in the SELECT statement you must
have the SELECT privilege. If the OR REPLACE clause is present, you
must also have the DROP privilege for the view. CREATE VIEW might also
require the SUPER privilege, depending on the DEFINER value, as
described later in this section.

When a view is referenced, privilege checking occurs as described later
in this section.

A view belongs to a database. By default, a new view is created in the
default database. To create the view explicitly in a given database,
specify the name as db_name.view_name when you create it:

mysql> CREATE VIEW test.v AS SELECT * FROM t;

Within a database, base tables and views share the same namespace, so a
base table and a view cannot have the same name.

Columns retrieved by the SELECT statement can be simple references to
table columns. They can also be expressions that use functions,
constant values, operators, and so forth.

Views must have unique column names with no duplicates, just like base
tables. By default, the names of the columns retrieved by the SELECT
statement are used for the view column names. To define explicit names
for the view columns, the optional column_list clause can be given as a
list of comma-separated identifiers. The number of names in column_list
must be the same as the number of columns retrieved by the SELECT
statement.

Unqualified table or view names in the SELECT statement are interpreted
with respect to the default database. A view can refer to tables or
views in other databases by qualifying the table or view name with the
proper database name.

A view can be created from many kinds of SELECT statements. It can
refer to base tables or other views. It can use joins, UNION, and
subqueries. The SELECT need not even refer to any tables. The following
example defines a view that selects two columns from another table, as
well as an expression calculated from those columns:

mysql> CREATE TABLE t (qty INT, price INT);
mysql> INSERT INTO t VALUES(3, 50);
mysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;
mysql> SELECT * FROM v;
+------+-------+-------+
| qty  | price | value |
+------+-------+-------+
|    3 |    50 |   150 |
+------+-------+-------+

A view definition is subject to the following restrictions:

o The SELECT statement cannot contain a subquery in the FROM clause.

o The SELECT statement cannot refer to system or user variables.

o Within a stored program, the definition cannot refer to program
  parameters or local variables.

o The SELECT statement cannot refer to prepared statement parameters.

o Any table or view referred to in the definition must exist. However,
  after a view has been created, it is possible to drop a table or view
  that the definition refers to. In this case, use of the view results
  in an error. To check a view definition for problems of this kind,
  use the CHECK TABLE statement.

o The definition cannot refer to a TEMPORARY table, and you cannot
  create a TEMPORARY view.

o Any tables named in the view definition must exist at definition
  time.

o You cannot associate a trigger with a view.

o Aliases for column names in the SELECT statement are checked against
  the maximum column length of 64 characters (not the maximum alias
  length of 256 characters).

ORDER BY is permitted in a view definition, but it is ignored if you
select from a view using a statement that has its own ORDER BY.

For other options or clauses in the definition, they are added to the
options or clauses of the statement that references the view, but the
effect is undefined. For example, if a view definition includes a LIMIT
clause, and you select from the view using a statement that has its own
LIMIT clause, it is undefined which limit applies. This same principle
applies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that
follow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,
LOCK IN SHARE MODE, and PROCEDURE.

If you create a view and then change the query processing environment
by changing system variables, that may affect the results that you get
from the view:

mysql> CREATE VIEW v (mycol) AS SELECT 'abc';
Query OK, 0 rows affected (0.01 sec)

mysql> SET sql_mode = '';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT "mycol" FROM v;
+-------+
| mycol |
+-------+
| mycol |
+-------+
1 row in set (0.01 sec)

mysql> SET sql_mode = 'ANSI_QUOTES';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT "mycol" FROM v;
+-------+
| mycol |
+-------+
| abc   |
+-------+
1 row in set (0.00 sec)

The DEFINER and SQL SECURITY clauses determine which MySQL account to
use when checking access privileges for the view when a statement is
executed that references the view. The valid SQL SECURITY
characteristic values are DEFINER and INVOKER. These indicate that the
required privileges must be held by the user who defined or invoked the
view, respectively. The default SQL SECURITY value is DEFINER.

If a user value is given for the DEFINER clause, it should be a MySQL
account specified as 'user_name'@'host_name' (the same format used in
the GRANT statement), CURRENT_USER, or CURRENT_USER(). The default
DEFINER value is the user who executes the CREATE VIEW statement. This
is the same as specifying DEFINER = CURRENT_USER explicitly.

If you specify the DEFINER clause, these rules determine the valid
DEFINER user values:

o If you do not have the SUPER privilege, the only valid user value is
  your own account, either specified literally or by using
  CURRENT_USER. You cannot set the definer to some other account.

o If you have the SUPER privilege, you can specify any syntactically
  valid account name. If the account does not actually exist, a warning
  is generated.

o Although it is possible to create a view with a nonexistent DEFINER
  account, an error occurs when the view is referenced if the SQL
  SECURITY value is DEFINER but the definer account does not exist.

For more information about view security, see
http://dev.mysql.com/doc/refman/5.6/en/stored-programs-security.html.

Within a view definition, CURRENT_USER returns the view's DEFINER value
by default. For views defined with the SQL SECURITY INVOKER
characteristic, CURRENT_USER returns the account for the view's
invoker. For information about user auditing within views, see
http://dev.mysql.com/doc/refman/5.6/en/account-activity-auditing.html.

Within a stored routine that is defined with the SQL SECURITY DEFINER
characteristic, CURRENT_USER returns the routine's DEFINER value. This
also affects a view defined within such a routine, if the view
definition contains a DEFINER value of CURRENT_USER.

View privileges are checked like this:

o At view definition time, the view creator must have the privileges
  needed to use the top-level objects accessed by the view. For
  example, if the view definition refers to table columns, the creator
  must have some privilege for each column in the select list of the
  definition, and the SELECT privilege for each column used elsewhere
  in the definition. If the definition refers to a stored function,
  only the privileges needed to invoke the function can be checked. The
  privileges required at function invocation time can be checked only
  as it executes: For different invocations, different execution paths
  within the function might be taken.

o The user who references a view must have appropriate privileges to
  access it (SELECT to select from it, INSERT to insert into it, and so
  forth.)

o When a view has been referenced, privileges for objects accessed by
  the view are checked against the privileges held by the view DEFINER
  account or invoker, depending on whether the SQL SECURITY
  characteristic is DEFINER or INVOKER, respectively.

o If reference to a view causes execution of a stored function,
  privilege checking for statements executed within the function depend
  on whether the function SQL SECURITY characteristic is DEFINER or
  INVOKER. If the security characteristic is DEFINER, the function runs
  with the privileges of the DEFINER account. If the characteristic is
  INVOKER, the function runs with the privileges determined by the
  view's SQL SECURITY characteristic.

Example: A view might depend on a stored function, and that function
might invoke other stored routines. For example, the following view
invokes a stored function f():

CREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);

Suppose that f() contains a statement such as this:

IF name IS NULL then
  CALL p1();
ELSE
  CALL p2();
END IF;

The privileges required for executing statements within f() need to be
checked when f() executes. This might mean that privileges are needed
for p1() or p2(), depending on the execution path within f(). Those
privileges must be checked at runtime, and the user who must possess
the privileges is determined by the SQL SECURITY values of the view v
and the function f().

The DEFINER and SQL SECURITY clauses for views are extensions to
standard SQL. In standard SQL, views are handled using the rules for
SQL SECURITY DEFINER. The standard says that the definer of the view,
which is the same as the owner of the view's schema, gets applicable
privileges on the view (for example, SELECT) and may grant them. MySQL
has no concept of a schema "owner", so MySQL adds a clause to identify
the definer. The DEFINER clause is an extension where the intent is to
have what the standard has; that is, a permanent record of who defined
the view. This is why the default DEFINER value is the account of the
view creator.

The optional ALGORITHM clause is a MySQL extension to standard SQL. It
affects how MySQL processes the view. ALGORITHM takes three values:
MERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if
no ALGORITHM clause is present. For more information, see
http://dev.mysql.com/doc/refman/5.6/en/view-algorithms.html.

Some views are updatable. That is, you can use them in statements such
as UPDATE, DELETE, or INSERT to update the contents of the underlying
table. For a view to be updatable, there must be a one-to-one
relationship between the rows in the view and the rows in the
underlying table. There are also certain other constructs that make a
view nonupdatable.

The WITH CHECK OPTION clause can be given for an updatable view to
prevent inserts or updates to rows except those for which the WHERE
clause in the select_statement is true.

In a WITH CHECK OPTION clause for an updatable view, the LOCAL and
CASCADED keywords determine the scope of check testing when the view is
defined in terms of another view. The LOCAL keyword restricts the CHECK
OPTION only to the view being defined. CASCADED causes the checks for
underlying views to be evaluated as well. When neither keyword is
given, the default is CASCADED.

For more information about updatable views and the WITH CHECK OPTION
clause, see
http://dev.mysql.com/doc/refman/5.6/en/view-updatability.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/create-view.html

","","http://dev.mysql.com/doc/refman/5.6/en/create-view.html");
INSERT INTO help_topic VALUES("503","TRIM","38","Syntax:
TRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr
FROM] str)

Returns the string str with all remstr prefixes or suffixes removed. If
none of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is
assumed. remstr is optional and, if not specified, spaces are removed.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT TRIM('  bar   ');
        -> 'bar'
mysql> SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');
        -> 'barxxx'
mysql> SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx');
        -> 'bar'
mysql> SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz');
        -> 'barx'
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("504","INET6_NTOA","14","Syntax:
INET6_NTOA(expr)

Given an IPv6 or IPv4 network address represented in numeric form as a
binary string, returns the string representation of the address as a
nonbinary string in the connection character set. If the argument is
not a valid address, INET6_NTOA() returns NULL.

INET6_NTOA() has these properties:

o It does not use operating system functions to perform conversions,
  thus the output string is platform independent.

o The return string has a maximum length of 39 (4 x 8 + 7). Given this
  statement:

CREATE TABLE t AS SELECT INET6_NTOA(expr) AS c1;

  The resulting table would have this definition:

CREATE TABLE t (c1 VARCHAR(39) CHARACTER SET utf8 DEFAULT NULL);

o The return string uses lowercase letters for IPv6 addresses.

URL: http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html

","mysql> SELECT INET6_NTOA(INET6_ATON('fdfe::5a55:caff:fefa:9089'));
        -> 'fdfe::5a55:caff:fefa:9089'
mysql> SELECT INET6_NTOA(INET6_ATON('10.0.5.9'));
        -> '10.0.5.9'

mysql> SELECT INET6_NTOA(UNHEX('FDFE0000000000005A55CAFFFEFA9089'));
        -> 'fdfe::5a55:caff:fefa:9089'
mysql> SELECT INET6_NTOA(UNHEX('0A000509'));
        -> '10.0.5.9'
","http://dev.mysql.com/doc/refman/5.6/en/miscellaneous-functions.html");
INSERT INTO help_topic VALUES("505","SIGNAL","24","Syntax:
SIGNAL condition_value
    [SET signal_information_item
    [, signal_information_item] ...]

condition_value:
    SQLSTATE [VALUE] sqlstate_value
  | condition_name

signal_information_item:
    condition_information_item_name = simple_value_specification

condition_information_item_name:
    CLASS_ORIGIN
  | SUBCLASS_ORIGIN
  | MESSAGE_TEXT
  | MYSQL_ERRNO
  | CONSTRAINT_CATALOG
  | CONSTRAINT_SCHEMA
  | CONSTRAINT_NAME
  | CATALOG_NAME
  | SCHEMA_NAME
  | TABLE_NAME
  | COLUMN_NAME
  | CURSOR_NAME

condition_name, simple_value_specification:
    (see following discussion)

SIGNAL is the way to "return" an error. SIGNAL provides error
information to a handler, to an outer portion of the application, or to
the client. Also, it provides control over the error's characteristics
(error number, SQLSTATE value, message). Without SIGNAL, it is
necessary to resort to workarounds such as deliberately referring to a
nonexistent table to cause a routine to return an error.

No special privileges are required to execute the SIGNAL statement.

To retrieve information from diagnostics area, use the GET DIAGNOSTICS
statement (see [HELP GET DIAGNOSTICS]). For information about the
diagnostics area, see
http://dev.mysql.com/doc/refman/5.6/en/diagnostics-area.html.

The condition_value in a SIGNAL statement indicates the error value to
be returned. It can be an SQLSTATE value (a 5-character string literal)
or a condition_name that refers to a named condition previously defined
with DECLARE ... CONDITION (see [HELP DECLARE CONDITION]).

An SQLSTATE value can indicate errors, warnings, or "not found." The
first two characters of the value indicate its error class, as
discussed in
http://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-condition-inf
ormation-items. Some signal values cause statement termination; see
http://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-effects.

The SQLSTATE value for a SIGNAL statement should not start with '00'
because such values indicate success and are not valid for signaling an
error. This is true whether the SQLSTATE value is specified directly in
the SIGNAL statement or in a named condition referred to in the
statement. If the value is invalid, a Bad SQLSTATE error occurs.

To signal a generic SQLSTATE value, use '45000', which means "unhandled
user-defined exception."

The SIGNAL statement optionally includes a SET clause that contains
multiple signal items, in a comma-separated list of
condition_information_item_name = simple_value_specification
assignments.

Each condition_information_item_name may be specified only once in the
SET clause. Otherwise, a Duplicate condition information item error
occurs.

Valid simple_value_specification designators can be specified using
stored procedure or function parameters, stored program local variables
declared with DECLARE, user-defined variables, system variables, or
literals. A character literal may include a _charset introducer.

For information about permissible condition_information_item_name
values, see
http://dev.mysql.com/doc/refman/5.6/en/signal.html#signal-condition-inf
ormation-items.

URL: http://dev.mysql.com/doc/refman/5.6/en/signal.html

","CREATE PROCEDURE p (pval INT)
BEGIN
  DECLARE specialty CONDITION FOR SQLSTATE '45000';
  IF pval = 0 THEN
    SIGNAL SQLSTATE '01000';
  ELSEIF pval = 1 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'An error occurred';
  ELSEIF pval = 2 THEN
    SIGNAL specialty
      SET MESSAGE_TEXT = 'An error occurred';
  ELSE
    SIGNAL SQLSTATE '01000'
      SET MESSAGE_TEXT = 'A warning occurred', MYSQL_ERRNO = 1000;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'An error occurred', MYSQL_ERRNO = 1001;
  END IF;
END;
","http://dev.mysql.com/doc/refman/5.6/en/signal.html");
INSERT INTO help_topic VALUES("506","SAVEPOINT","8","Syntax:
SAVEPOINT identifier
ROLLBACK [WORK] TO [SAVEPOINT] identifier
RELEASE SAVEPOINT identifier

InnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,
RELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.

URL: http://dev.mysql.com/doc/refman/5.6/en/savepoint.html

","","http://dev.mysql.com/doc/refman/5.6/en/savepoint.html");
INSERT INTO help_topic VALUES("507","MPOINTFROMWKB","33","MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])

Constructs a MULTIPOINT value using its WKB representation and SRID.

URL: http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html

","","http://dev.mysql.com/doc/refman/5.6/en/creating-spatial-values.html");
INSERT INTO help_topic VALUES("508","ALTER TABLE","40","Syntax:
ALTER [IGNORE] TABLE tbl_name
    [alter_specification [, alter_specification] ...]
    [partition_options]

alter_specification:
    table_options
  | ADD [COLUMN] col_name column_definition
        [FIRST | AFTER col_name ]
  | ADD [COLUMN] (col_name column_definition,...)
  | ADD {INDEX|KEY} [index_name]
        [index_type] (index_col_name,...) [index_option] ...
  | ADD [CONSTRAINT [symbol]] PRIMARY KEY
        [index_type] (index_col_name,...) [index_option] ...
  | ADD [CONSTRAINT [symbol]]
        UNIQUE [INDEX|KEY] [index_name]
        [index_type] (index_col_name,...) [index_option] ...
  | ADD FULLTEXT [INDEX|KEY] [index_name]
        (index_col_name,...) [index_option] ...
  | ADD SPATIAL [INDEX|KEY] [index_name]
        (index_col_name,...) [index_option] ...
  | ADD [CONSTRAINT [symbol]]
        FOREIGN KEY [index_name] (index_col_name,...)
        reference_definition
  | ALGORITHM [=] {DEFAULT|INPLACE|COPY}
  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}
  | CHANGE [COLUMN] old_col_name new_col_name column_definition
        [FIRST|AFTER col_name]
  | LOCK [=] {DEFAULT|NONE|SHARED|EXCLUSIVE}
  | MODIFY [COLUMN] col_name column_definition
        [FIRST | AFTER col_name]
  | DROP [COLUMN] col_name
  | DROP PRIMARY KEY
  | DROP {INDEX|KEY} index_name
  | DROP FOREIGN KEY fk_symbol
  | DISABLE KEYS
  | ENABLE KEYS
  | RENAME [TO|AS] new_tbl_name
  | ORDER BY col_name [, col_name] ...
  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]
  | [DEFAULT] CHARACTER SET [=] charset_name [COLLATE [=] collation_name]
  | DISCARD TABLESPACE
  | IMPORT TABLESPACE
  | FORCE
  | ADD PARTITION (partition_definition)
  | DROP PARTITION partition_names
  | TRUNCATE PARTITION {partition_names | ALL}
  | COALESCE PARTITION number
  | REORGANIZE PARTITION partition_names INTO (partition_definitions)
  | EXCHANGE PARTITION partition_name WITH TABLE tbl_name
  | ANALYZE PARTITION {partition_names | ALL}
  | CHECK PARTITION {partition_names | ALL}
  | OPTIMIZE PARTITION {partition_names | ALL}
  | REBUILD PARTITION {partition_names | ALL}
  | REPAIR PARTITION {partition_names | ALL}
  | REMOVE PARTITIONING

index_col_name:
    col_name [(length)] [ASC | DESC]

index_type:
    USING {BTREE | HASH}

index_option:
    KEY_BLOCK_SIZE [=] value
  | index_type
  | WITH PARSER parser_name
  | COMMENT 'string'

table_options:
    table_option [[,] table_option] ...  (see CREATE TABLE options)

partition_options:
    (see CREATE TABLE options)

ALTER TABLE changes the structure of a table. For example, you can add
or delete columns, create or destroy indexes, change the type of
existing columns, or rename columns or the table itself. You can also
change characteristics such as the storage engine used for the table or
the table comment.

Partitioning-related clauses for ALTER TABLE can be used with
partitioned tables for repartitioning, for adding, dropping, merging,
and splitting partitions, and for performing partitioning maintenance.
It is possible for an ALTER TABLE statement to contain a PARTITION BY
or REMOVE PARTITION clause in an addition to other alter
specifications, but the PARTITION BY or REMOVE PARTITION clause must be
specified last after any other specifications. The ADD PARTITION, DROP
PARTITION, COALESCE PARTITION, REORGANIZE PARTITION, ANALYZE PARTITION,
CHECK PARTITION, and REPAIR PARTITION options cannot be combined with
other alter specifications in a single ALTER TABLE, since the options
just listed act on individual partitions. For more information, see
http://dev.mysql.com/doc/refman/5.6/en/alter-table-partition-operations
.html.

Following the table name, specify the alterations to be made. If none
are given, ALTER TABLE does nothing.

URL: http://dev.mysql.com/doc/refman/5.6/en/alter-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/alter-table.html");
INSERT INTO help_topic VALUES("509","LABELS","24","Syntax:
[begin_label:] BEGIN
    [statement_list]
END [end_label]

[begin_label:] LOOP
    statement_list
END LOOP [end_label]

[begin_label:] REPEAT
    statement_list
UNTIL search_condition
END REPEAT [end_label]

[begin_label:] WHILE search_condition DO
    statement_list
END WHILE [end_label]

Labels are permitted for BEGIN ... END blocks and for the LOOP, REPEAT,
and WHILE statements. Label use for those statements follows these
rules:

o begin_label must be followed by a colon.

o begin_label can be given without end_label. If end_label is present,
  it must be the same as begin_label.

o end_label cannot be given without begin_label.

o Labels at the same nesting level must be distinct.

o Labels can be up to 16 characters long.

To refer to a label within the labeled construct, use an ITERATE or
LEAVE statement. The following example uses those statements to
continue iterating or terminate the loop:

CREATE PROCEDURE doiterate(p1 INT)
BEGIN
  label1: LOOP
    SET p1 = p1 + 1;
    IF p1 < 10 THEN ITERATE label1; END IF;
    LEAVE label1;
  END LOOP label1;
END;

The scope of a block label does not include the code for handlers
declared within the block. For details, see [HELP DECLARE HANDLER].

URL: http://dev.mysql.com/doc/refman/5.6/en/statement-labels.html

","","http://dev.mysql.com/doc/refman/5.6/en/statement-labels.html");
INSERT INTO help_topic VALUES("510","CHAR BYTE","23","The CHAR BYTE data type is an alias for the BINARY data type. This is a
compatibility feature.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("511",">","19","Syntax:
>

Greater than:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT 2 > 2;
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("512","ANALYZE TABLE","21","Syntax:
ANALYZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE
    tbl_name [, tbl_name] ...

ANALYZE TABLE analyzes and stores the key distribution for a table.
During the analysis, the table is locked with a read lock for InnoDB
and MyISAM. This statement works with InnoDB, NDB, and MyISAM tables.
For MyISAM tables, this statement is equivalent to using myisamchk
--analyze.

For more information on how the analysis works within InnoDB, see
http://dev.mysql.com/doc/refman/5.6/en/innodb-performance.html#innodb-p
ersistent-stats and
http://dev.mysql.com/doc/refman/5.6/en/innodb-restrictions.html. In
particular, when you enable the innodb_stats_persistent option, you
must run ANALYZE TABLE after loading substantial data into an InnoDB
table, or creating a new index for one.

MySQL uses the stored key distribution to decide the order in which
tables should be joined when you perform a join on something other than
a constant. In addition, key distributions can be used when deciding
which indexes to use for a specific table within a query.

This statement requires SELECT and INSERT privileges for the table.

ANALYZE TABLE is supported for partitioned tables, and you can use
ALTER TABLE ... ANALYZE PARTITION to analyze one or more partitions;
for more information, see [HELP ALTER TABLE], and
http://dev.mysql.com/doc/refman/5.6/en/partitioning-maintenance.html.

Beginning with MySQL 5.6.11, gtid_next must be set to AUTOMATIC before
issuing this statement (BUG#16062608).

URL: http://dev.mysql.com/doc/refman/5.6/en/analyze-table.html

","","http://dev.mysql.com/doc/refman/5.6/en/analyze-table.html");
INSERT INTO help_topic VALUES("513","FIELD","38","Syntax:
FIELD(str,str1,str2,str3,...)

Returns the index (position) of str in the str1, str2, str3, ... list.
Returns 0 if str is not found.

If all arguments to FIELD() are strings, all arguments are compared as
strings. If all arguments are numbers, they are compared as numbers.
Otherwise, the arguments are compared as double.

If str is NULL, the return value is 0 because NULL fails equality
comparison with any value. FIELD() is the complement of ELT().

URL: http://dev.mysql.com/doc/refman/5.6/en/string-functions.html

","mysql> SELECT FIELD('ej', 'Hej', 'ej', 'Heja', 'hej', 'foo');
        -> 2
mysql> SELECT FIELD('fo', 'Hej', 'ej', 'Heja', 'hej', 'foo');
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/string-functions.html");
INSERT INTO help_topic VALUES("514","CONSTRAINT","40","MySQL supports foreign keys, which let you cross-reference related data
across tables, and foreign key constraints, which help keep this
spread-out data consistent. The essential syntax for a foreign key
constraint definition in a CREATE TABLE or ALTER TABLE statement looks
like this:

[CONSTRAINT [symbol]] FOREIGN KEY
    [index_name] (index_col_name, ...)
    REFERENCES tbl_name (index_col_name,...)
    [ON DELETE reference_option]
    [ON UPDATE reference_option]

reference_option:
    RESTRICT | CASCADE | SET NULL | NO ACTION

URL: http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html

","CREATE TABLE product (
    category INT NOT NULL, id INT NOT NULL,
    price DECIMAL,
    PRIMARY KEY(category, id)
)   ENGINE=INNODB;

CREATE TABLE customer (
    id INT NOT NULL,
    PRIMARY KEY (id)
)   ENGINE=INNODB;

CREATE TABLE product_order (
    no INT NOT NULL AUTO_INCREMENT,
    product_category INT NOT NULL,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,

    PRIMARY KEY(no),
    INDEX (product_category, product_id),
    INDEX (customer_id),

    FOREIGN KEY (product_category, product_id)
      REFERENCES product(category, id)
      ON UPDATE CASCADE ON DELETE RESTRICT,

    FOREIGN KEY (customer_id)
      REFERENCES customer(id)
)   ENGINE=INNODB;
","http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html");
INSERT INTO help_topic VALUES("515","ENUM","23","ENUM('value1','value2',...) [CHARACTER SET charset_name] [COLLATE
collation_name]

An enumeration. A string object that can have only one value, chosen
from the list of values 'value1', 'value2', ..., NULL or the special ''
error value. ENUM values are represented internally as integers.

An ENUM column can have a maximum of 65,535 distinct elements. (The
practical limit is less than 3000.) A table can have no more than 255
unique element list definitions among its ENUM and SET columns
considered as a group. For more information on these limits, see
http://dev.mysql.com/doc/refman/5.6/en/limits-frm-file.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("516","STRCMP","38","Syntax:
STRCMP(expr1,expr2)

STRCMP() returns 0 if the strings are the same, -1 if the first
argument is smaller than the second according to the current sort
order, and 1 otherwise.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html

","mysql> SELECT STRCMP('text', 'text2');
        -> -1
mysql> SELECT STRCMP('text2', 'text');
        -> 1
mysql> SELECT STRCMP('text', 'text');
        -> 0
","http://dev.mysql.com/doc/refman/5.6/en/string-comparison-functions.html");
INSERT INTO help_topic VALUES("517","INSERT DELAYED","28","Syntax:
INSERT DELAYED ...

The DELAYED option for the INSERT statement is a MySQL extension to
standard SQL that can be used for certain kinds of tables (such as
MyISAM). When a client uses INSERT DELAYED, it gets an okay from the
server at once, and the row is queued to be inserted when the table is
not in use by any other thread.

*Note*: INSERT DELAYED is slower than a normal INSERT if the table is
not otherwise in use. There is also the additional overhead for the
server to handle a separate thread for each table for which there are
delayed rows. This means that you should use INSERT DELAYED only when
you are really sure that you need it. As of MySQL 5.6.6, INSERT DELAYED
is deprecated, and will be removed in a future release. Use INSERT
(without DELAYED) instead.

The queued rows are held only in memory until they are inserted into
the table. This means that if you terminate mysqld forcibly (for
example, with kill -9) or if mysqld dies unexpectedly, any queued rows
that have not been written to disk are lost.

There are some constraints on the use of DELAYED:

o INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and BLACKHOLE
  tables. For engines that do not support DELAYED, an error occurs.

o An error occurs for INSERT DELAYED if used with a table that has been
  locked with LOCK TABLES because the insert must be handled by a
  separate thread, not by the session that holds the lock.

o For MyISAM tables, if there are no free blocks in the middle of the
  data file, concurrent SELECT and INSERT statements are supported.
  Under these circumstances, you very seldom need to use INSERT DELAYED
  with MyISAM.

o INSERT DELAYED should be used only for INSERT statements that specify
  value lists. The server ignores DELAYED for INSERT ... SELECT or
  INSERT ... ON DUPLICATE KEY UPDATE statements.

o Because the INSERT DELAYED statement returns immediately, before the
  rows are inserted, you cannot use LAST_INSERT_ID() to get the
  AUTO_INCREMENT value that the statement might generate.

o DELAYED rows are not visible to SELECT statements until they actually
  have been inserted.

o Prior to MySQL 5.6, INSERT DELAYED was treated as a normal INSERT if
  the statement inserted multiple rows, binary logging was enabled, and
  the global logging format was statement-based (that is, whenever
  binlog_format was set to STATEMENT). Beginning with MySQL 5.6, INSERT
  DELAYED is always handled as a simple INSERT (that is, without the
  DELAYED option) whenever the value of binlog_format is STATEMENT or
  MIXED. (In the latter case, the statement no longer triggers a switch
  to row-based logging, and so is logged using the statement-based
  format.)

  This does not apply when using row-based binary logging mode
  (binlog_format set to ROW), in which INSERT DELAYED statements are
  always executed using the DELAYED option as specified, and logged as
  row-update events.

o DELAYED is ignored on slave replication servers, so that INSERT
  DELAYED is treated as a normal INSERT on slaves. This is because
  DELAYED could cause the slave to have different data than the master.

o Pending INSERT DELAYED statements are lost if a table is write locked
  and ALTER TABLE is used to modify the table structure.

o INSERT DELAYED is not supported for views.

o INSERT DELAYED is not supported for partitioned tables.

URL: http://dev.mysql.com/doc/refman/5.6/en/insert-delayed.html

","","http://dev.mysql.com/doc/refman/5.6/en/insert-delayed.html");
INSERT INTO help_topic VALUES("518","SHOW PROCEDURE CODE","27","Syntax:
SHOW PROCEDURE CODE proc_name

This statement is a MySQL extension that is available only for servers
that have been built with debugging support. It displays a
representation of the internal implementation of the named stored
procedure. A similar statement, SHOW FUNCTION CODE, displays
information about stored functions (see [HELP SHOW FUNCTION CODE]).

Both statements require that you be the owner of the routine or have
SELECT access to the mysql.proc table.

If the named routine is available, each statement produces a result
set. Each row in the result set corresponds to one "instruction" in the
routine. The first column is Pos, which is an ordinal number beginning
with 0. The second column is Instruction, which contains an SQL
statement (usually changed from the original source), or a directive
which has meaning only to the stored-routine handler.

URL: http://dev.mysql.com/doc/refman/5.6/en/show-procedure-code.html

","mysql> DELIMITER //
mysql> CREATE PROCEDURE p1 ()
    -> BEGIN
    ->   DECLARE fanta INT DEFAULT 55;
    ->   DROP TABLE t2;
    ->   LOOP
    ->     INSERT INTO t3 VALUES (fanta);
    ->     END LOOP;
    ->   END//
Query OK, 0 rows affected (0.00 sec)

mysql> SHOW PROCEDURE CODE p1//
+-----+----------------------------------------+
| Pos | Instruction                            |
+-----+----------------------------------------+
|   0 | set fanta@0 55                         |
|   1 | stmt 9 "DROP TABLE t2"                 |
|   2 | stmt 5 "INSERT INTO t3 VALUES (fanta)" |
|   3 | jump 2                                 |
+-----+----------------------------------------+
4 rows in set (0.00 sec)
","http://dev.mysql.com/doc/refman/5.6/en/show-procedure-code.html");
INSERT INTO help_topic VALUES("519","MEDIUMTEXT","23","MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]

A TEXT column with a maximum length of 16,777,215 (224 - 1) characters.
The effective maximum length is less if the value contains multi-byte
characters. Each MEDIUMTEXT value is stored using a 3-byte length
prefix that indicates the number of bytes in the value.

URL: http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html

","","http://dev.mysql.com/doc/refman/5.6/en/string-type-overview.html");
INSERT INTO help_topic VALUES("520","LOG","4","Syntax:
LOG(X), LOG(B,X)

If called with one parameter, this function returns the natural
logarithm of X. If X is less than or equal to 0, then NULL is returned.

The inverse of this function (when called with a single argument) is
the EXP() function.

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT LOG(2);
        -> 0.69314718055995
mysql> SELECT LOG(-2);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("521","SHOW COLLATION","27","Syntax:
SHOW COLLATION
    [LIKE 'pattern' | WHERE expr]

This statement lists collations supported by the server. By default,
the output from SHOW COLLATION includes all available collations. The
LIKE clause, if present, indicates which collation names to match. The
WHERE clause can be given to select rows using more general conditions,
as discussed in
http://dev.mysql.com/doc/refman/5.6/en/extended-show.html. For example:

mysql> SHOW COLLATION LIKE 'latin1%';
+-------------------+---------+----+---------+----------+---------+
| Collation         | Charset | Id | Default | Compiled | Sortlen |
+-------------------+---------+----+---------+----------+---------+
| latin1_german1_ci | latin1  |  5 |         |          |       0 |
| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |
| latin1_danish_ci  | latin1  | 15 |         |          |       0 |
| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |
| latin1_bin        | latin1  | 47 |         | Yes      |       0 |
| latin1_general_ci | latin1  | 48 |         |          |       0 |
| latin1_general_cs | latin1  | 49 |         |          |       0 |
| latin1_spanish_ci | latin1  | 94 |         |          |       0 |
+-------------------+---------+----+---------+----------+---------+

URL: http://dev.mysql.com/doc/refman/5.6/en/show-collation.html

","","http://dev.mysql.com/doc/refman/5.6/en/show-collation.html");
INSERT INTO help_topic VALUES("522","!=","19","Syntax:
<>, !=

Not equal:

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT '.01' <> '0.01';
        -> 1
mysql> SELECT .01 <> '0.01';
        -> 0
mysql> SELECT 'zapp' <> 'zappp';
        -> 1
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("523","WHILE","24","Syntax:
[begin_label:] WHILE search_condition DO
    statement_list
END WHILE [end_label]

The statement list within a WHILE statement is repeated as long as the
search_condition expression is true. statement_list consists of one or
more SQL statements, each terminated by a semicolon (;) statement
delimiter.

A WHILE statement can be labeled. For the rules regarding label use,
see [HELP labels].

URL: http://dev.mysql.com/doc/refman/5.6/en/while.html

","CREATE PROCEDURE dowhile()
BEGIN
  DECLARE v1 INT DEFAULT 5;

  WHILE v1 > 0 DO
    ...
    SET v1 = v1 - 1;
  END WHILE;
END;
","http://dev.mysql.com/doc/refman/5.6/en/while.html");
INSERT INTO help_topic VALUES("524","DAYNAME","32","Syntax:
DAYNAME(date)

Returns the name of the weekday for date. The language used for the
name is controlled by the value of the lc_time_names system variable
(http://dev.mysql.com/doc/refman/5.6/en/locale-support.html).

URL: http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html

","mysql> SELECT DAYNAME('2007-02-03');
        -> 'Saturday'
","http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html");
INSERT INTO help_topic VALUES("525","COLLATION","17","Syntax:
COLLATION(str)

Returns the collation of the string argument.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT COLLATION('abc');
        -> 'latin1_swedish_ci'
mysql> SELECT COLLATION(_utf8'abc');
        -> 'utf8_general_ci'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");
INSERT INTO help_topic VALUES("526","RADIANS","4","Syntax:
RADIANS(X)

Returns the argument X, converted from degrees to radians. (Note that
π radians equals 180 degrees.)

URL: http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html

","mysql> SELECT RADIANS(90);
        -> 1.5707963267949
","http://dev.mysql.com/doc/refman/5.6/en/mathematical-functions.html");
INSERT INTO help_topic VALUES("527","COALESCE","19","Syntax:
COALESCE(value,...)

Returns the first non-NULL value in the list, or NULL if there are no
non-NULL values.

URL: http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html

","mysql> SELECT COALESCE(NULL,1);
        -> 1
mysql> SELECT COALESCE(NULL,NULL,NULL);
        -> NULL
","http://dev.mysql.com/doc/refman/5.6/en/comparison-operators.html");
INSERT INTO help_topic VALUES("528","VERSION","17","Syntax:
VERSION()

Returns a string that indicates the MySQL server version. The string
uses the utf8 character set. The value might have a suffix in addition
to the version number. See the description of the version system
variable in
http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html.

URL: http://dev.mysql.com/doc/refman/5.6/en/information-functions.html

","mysql> SELECT VERSION();
        -> '5.6.12-standard'
","http://dev.mysql.com/doc/refman/5.6/en/information-functions.html");



CREATE TABLE `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';




CREATE TABLE `index_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Indexes';




CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

INSERT INTO innodb_index_stats VALUES("arul","alumini_edudetails","PRIMARY","2018-06-13 16:35:09","n_diff_pfx01","2","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("arul","alumini_edudetails","PRIMARY","2018-06-13 16:35:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_edudetails","PRIMARY","2018-06-13 16:35:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","PRIMARY","2018-06-13 16:35:09","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","PRIMARY","2018-06-13 16:35:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","PRIMARY","2018-06-13 16:35:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","alumini_userid","2018-06-13 16:35:09","n_diff_pfx01","0","1","alumini_userid");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","alumini_userid","2018-06-13 16:35:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_info","alumini_userid","2018-06-13 16:35:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_workexp","PRIMARY","2018-06-13 16:35:10","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("arul","alumini_workexp","PRIMARY","2018-06-13 16:35:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","alumini_workexp","PRIMARY","2018-06-13 16:35:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","api_keys","PRIMARY","2018-06-13 16:35:10","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("arul","api_keys","PRIMARY","2018-06-13 16:35:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","api_keys","PRIMARY","2018-06-13 16:35:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","blood_group","PRIMARY","2018-06-13 16:35:44","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("arul","blood_group","PRIMARY","2018-06-13 16:35:44","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","blood_group","PRIMARY","2018-06-13 16:35:44","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","cities","GEN_CLUST_INDEX","2018-06-13 16:35:11","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("arul","cities","GEN_CLUST_INDEX","2018-06-13 16:35:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","cities","GEN_CLUST_INDEX","2018-06-13 16:35:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","degree_list","PRIMARY","2018-06-13 16:35:13","n_diff_pfx01","12","1","id");
INSERT INTO innodb_index_stats VALUES("arul","degree_list","PRIMARY","2018-06-13 16:35:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","degree_list","PRIMARY","2018-06-13 16:35:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","languages_list","PRIMARY","2018-06-13 16:35:24","n_diff_pfx01","9","1","id");
INSERT INTO innodb_index_stats VALUES("arul","languages_list","PRIMARY","2018-06-13 16:35:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","languages_list","PRIMARY","2018-06-13 16:35:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","sis_students_year","PRIMARY","2018-06-13 16:35:34","n_diff_pfx01","15","1","year_id");
INSERT INTO innodb_index_stats VALUES("arul","sis_students_year","PRIMARY","2018-06-13 16:35:34","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("arul","sis_students_year","PRIMARY","2018-06-13 16:35:34","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_edudetails","PRIMARY","2018-06-12 16:26:05","n_diff_pfx01","2","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_edudetails","PRIMARY","2018-06-12 16:26:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_edudetails","PRIMARY","2018-06-12 16:26:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","PRIMARY","2018-06-12 16:26:05","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","PRIMARY","2018-06-12 16:26:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","PRIMARY","2018-06-12 16:26:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","alumini_userid","2018-06-12 16:26:05","n_diff_pfx01","0","1","alumini_userid");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","alumini_userid","2018-06-12 16:26:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_info","alumini_userid","2018-06-12 16:26:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_workexp","PRIMARY","2018-06-12 16:26:05","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_workexp","PRIMARY","2018-06-12 16:26:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","alumini_workexp","PRIMARY","2018-06-12 16:26:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","api_keys","PRIMARY","2018-06-12 16:33:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme","api_keys","PRIMARY","2018-06-12 16:33:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","api_keys","PRIMARY","2018-06-12 16:33:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","blood_group","PRIMARY","2018-06-12 16:34:14","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme","blood_group","PRIMARY","2018-06-12 16:34:14","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","blood_group","PRIMARY","2018-06-12 16:34:14","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","cities","GEN_CLUST_INDEX","2018-06-12 16:33:39","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme","cities","GEN_CLUST_INDEX","2018-06-12 16:33:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","cities","GEN_CLUST_INDEX","2018-06-12 16:33:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","degree_list","PRIMARY","2018-06-12 16:33:43","n_diff_pfx01","12","1","id");
INSERT INTO innodb_index_stats VALUES("mapme","degree_list","PRIMARY","2018-06-12 16:33:43","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","degree_list","PRIMARY","2018-06-12 16:33:43","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","languages_list","PRIMARY","2018-06-12 16:33:54","n_diff_pfx01","9","1","id");
INSERT INTO innodb_index_stats VALUES("mapme","languages_list","PRIMARY","2018-06-12 16:33:54","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","languages_list","PRIMARY","2018-06-12 16:33:54","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","sis_students_year","PRIMARY","2018-06-12 16:34:04","n_diff_pfx01","15","1","year_id");
INSERT INTO innodb_index_stats VALUES("mapme","sis_students_year","PRIMARY","2018-06-12 16:34:04","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme","sis_students_year","PRIMARY","2018-06-12 16:34:04","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_periods","PRIMARY","2018-06-12 16:39:04","n_diff_pfx01","15","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_periods","PRIMARY","2018-06-12 16:39:04","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_periods","PRIMARY","2018-06-12 16:39:04","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_rooms","PRIMARY","2018-06-12 16:38:52","n_diff_pfx01","2","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_rooms","PRIMARY","2018-06-12 16:38:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_rooms","PRIMARY","2018-06-12 16:38:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year","PRIMARY","2018-06-12 16:38:57","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year","PRIMARY","2018-06-12 16:38:57","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year","PRIMARY","2018-06-12 16:38:57","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year_terms","GEN_CLUST_INDEX","2018-06-12 16:37:11","n_diff_pfx01","158","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year_terms","GEN_CLUST_INDEX","2018-06-12 16:37:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","academic_year_terms","GEN_CLUST_INDEX","2018-06-12 16:37:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_allotment","PRIMARY","2018-06-12 16:38:53","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_allotment","PRIMARY","2018-06-12 16:38:53","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_allotment","PRIMARY","2018-06-12 16:38:53","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_discussions","PRIMARY","2018-06-12 16:38:53","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_discussions","PRIMARY","2018-06-12 16:38:53","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_discussions","PRIMARY","2018-06-12 16:38:53","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_occurence","PRIMARY","2018-06-12 16:38:57","n_diff_pfx01","27","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_occurence","PRIMARY","2018-06-12 16:38:57","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","activity_occurence","PRIMARY","2018-06-12 16:38:57","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","admission_form","PRIMARY","2018-06-12 16:38:55","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","admission_form","PRIMARY","2018-06-12 16:38:55","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","admission_form","PRIMARY","2018-06-12 16:38:55","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationinstitute","GEN_CLUST_INDEX","2018-06-12 16:36:59","n_diff_pfx01","2","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationinstitute","GEN_CLUST_INDEX","2018-06-12 16:36:59","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationinstitute","GEN_CLUST_INDEX","2018-06-12 16:36:59","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationpaid","GEN_CLUST_INDEX","2018-06-12 16:36:59","n_diff_pfx01","3","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationpaid","GEN_CLUST_INDEX","2018-06-12 16:36:59","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_donationpaid","GEN_CLUST_INDEX","2018-06-12 16:36:59","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_edudetails","GEN_CLUST_INDEX","2018-06-12 16:37:01","n_diff_pfx01","13","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_edudetails","GEN_CLUST_INDEX","2018-06-12 16:37:01","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_edudetails","GEN_CLUST_INDEX","2018-06-12 16:37:01","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_events","GEN_CLUST_INDEX","2018-06-12 16:37:02","n_diff_pfx01","2","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_events","GEN_CLUST_INDEX","2018-06-12 16:37:02","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_events","GEN_CLUST_INDEX","2018-06-12 16:37:02","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_info","GEN_CLUST_INDEX","2018-06-12 16:37:03","n_diff_pfx01","322","3","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_info","GEN_CLUST_INDEX","2018-06-12 16:37:03","n_leaf_pages","3","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_info","GEN_CLUST_INDEX","2018-06-12 16:37:03","size","4","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_login","PRIMARY","2018-06-12 16:38:55","n_diff_pfx01","0","1","al_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_login","PRIMARY","2018-06-12 16:38:55","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_login","PRIMARY","2018-06-12 16:38:55","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_stpaid","GEN_CLUST_INDEX","2018-06-12 16:37:00","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_stpaid","GEN_CLUST_INDEX","2018-06-12 16:37:00","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_stpaid","GEN_CLUST_INDEX","2018-06-12 16:37:00","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_workexp","GEN_CLUST_INDEX","2018-06-12 16:37:04","n_diff_pfx01","3","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_workexp","GEN_CLUST_INDEX","2018-06-12 16:37:04","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","alumini_workexp","GEN_CLUST_INDEX","2018-06-12 16:37:04","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","application_form","PRIMARY","2018-06-12 16:38:56","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","application_form","PRIMARY","2018-06-12 16:38:56","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","application_form","PRIMARY","2018-06-12 16:38:56","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","certificates","PRIMARY","2018-06-12 16:38:58","n_diff_pfx01","72","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","certificates","PRIMARY","2018-06-12 16:38:58","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","certificates","PRIMARY","2018-06-12 16:38:58","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_mail","PRIMARY","2018-06-12 16:38:59","n_diff_pfx01","15","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_mail","PRIMARY","2018-06-12 16:38:59","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_mail","PRIMARY","2018-06-12 16:38:59","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_sms","PRIMARY","2018-06-12 16:39:00","n_diff_pfx01","11","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_sms","PRIMARY","2018-06-12 16:39:00","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","cm_sms","PRIMARY","2018-06-12 16:39:00","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_main","PRIMARY","2018-06-12 16:39:02","n_diff_pfx01","4","1","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_main","PRIMARY","2018-06-12 16:39:02","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_main","PRIMARY","2018-06-12 16:39:02","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_meeting","GEN_CLUST_INDEX","2018-06-12 16:37:09","n_diff_pfx01","3","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_meeting","GEN_CLUST_INDEX","2018-06-12 16:37:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_meeting","GEN_CLUST_INDEX","2018-06-12 16:37:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_members","PRIMARY","2018-06-12 16:39:02","n_diff_pfx01","9","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_members","PRIMARY","2018-06-12 16:39:02","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","committee_members","PRIMARY","2018-06-12 16:39:02","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_syllabus_temp","PRIMARY","2018-06-12 16:38:59","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_syllabus_temp","PRIMARY","2018-06-12 16:38:59","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_syllabus_temp","PRIMARY","2018-06-12 16:38:59","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_teaching_learning","GEN_CLUST_INDEX","2018-06-12 16:37:10","n_diff_pfx01","8","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_teaching_learning","GEN_CLUST_INDEX","2018-06-12 16:37:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","course_teaching_learning","GEN_CLUST_INDEX","2018-06-12 16:37:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","curricular_activities","PRIMARY","2018-06-12 16:39:03","n_diff_pfx01","6","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","curricular_activities","PRIMARY","2018-06-12 16:39:03","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","curricular_activities","PRIMARY","2018-06-12 16:39:03","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course","PRIMARY","2018-06-12 16:39:04","n_diff_pfx01","399","14","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course","PRIMARY","2018-06-12 16:39:04","n_leaf_pages","14","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course","PRIMARY","2018-06-12 16:39:04","size","15","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books","GEN_CLUST_INDEX","2018-06-12 16:37:11","n_diff_pfx01","16","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books","GEN_CLUST_INDEX","2018-06-12 16:37:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books","GEN_CLUST_INDEX","2018-06-12 16:37:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books_temp","GEN_CLUST_INDEX","2018-06-12 16:37:09","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books_temp","GEN_CLUST_INDEX","2018-06-12 16:37:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_books_temp","GEN_CLUST_INDEX","2018-06-12 16:37:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_revisions","PRIMARY","2018-06-12 16:39:05","n_diff_pfx01","6","1","rid");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_revisions","PRIMARY","2018-06-12 16:39:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_revisions","PRIMARY","2018-06-12 16:39:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_syllabus","PRIMARY","2018-06-12 16:39:02","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_syllabus","PRIMARY","2018-06-12 16:39:02","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_course_syllabus","PRIMARY","2018-06-12 16:39:02","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_pgm_sanctioned_seats","PRIMARY","2018-06-12 16:39:05","n_diff_pfx01","11","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_pgm_sanctioned_seats","PRIMARY","2018-06-12 16:39:05","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_pgm_sanctioned_seats","PRIMARY","2018-06-12 16:39:05","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program","PRIMARY","2018-06-12 16:39:07","n_diff_pfx01","11","1","pid");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program","PRIMARY","2018-06-12 16:39:07","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program","PRIMARY","2018-06-12 16:39:07","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program_1","GEN_CLUST_INDEX","2018-06-12 16:37:10","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program_1","GEN_CLUST_INDEX","2018-06-12 16:37:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","dep_program_1","GEN_CLUST_INDEX","2018-06-12 16:37:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","fees_details","PRIMARY","2018-06-12 16:39:08","n_diff_pfx01","4","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","fees_details","PRIMARY","2018-06-12 16:39:08","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","fees_details","PRIMARY","2018-06-12 16:39:08","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","holiday_week_month_days","GEN_CLUST_INDEX","2018-06-12 16:37:21","n_diff_pfx01","3","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","holiday_week_month_days","GEN_CLUST_INDEX","2018-06-12 16:37:21","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","holiday_week_month_days","GEN_CLUST_INDEX","2018-06-12 16:37:21","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_consultancy","PRIMARY","2018-06-12 16:39:08","n_diff_pfx01","50","1","consultancy_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_consultancy","PRIMARY","2018-06-12 16:39:08","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_consultancy","PRIMARY","2018-06-12 16:39:08","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","PRIMARY","2018-06-12 16:39:10","n_diff_pfx01","4","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","PRIMARY","2018-06-12 16:39:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","PRIMARY","2018-06-12 16:39:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","user_id","2018-06-12 16:39:10","n_diff_pfx01","4","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","user_id","2018-06-12 16:39:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_documents","user_id","2018-06-12 16:39:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_educational_details","PRIMARY","2018-06-12 16:39:11","n_diff_pfx01","41","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_educational_details","PRIMARY","2018-06-12 16:39:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_educational_details","PRIMARY","2018-06-12 16:39:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","PRIMARY","2018-06-12 16:39:06","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","PRIMARY","2018-06-12 16:39:06","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","PRIMARY","2018-06-12 16:39:06","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","emp_id","2018-06-12 16:39:06","n_diff_pfx01","0","1","emp_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","emp_id","2018-06-12 16:39:06","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employee_login","emp_id","2018-06-12 16:39:06","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employment","PRIMARY","2018-06-12 16:39:11","n_diff_pfx01","30","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employment","PRIMARY","2018-06-12 16:39:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_employment","PRIMARY","2018-06-12 16:39:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_grant","PRIMARY","2018-06-12 16:39:12","n_diff_pfx01","13","1","grant_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_grant","PRIMARY","2018-06-12 16:39:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_grant","PRIMARY","2018-06-12 16:39:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_language_known","PRIMARY","2018-06-12 16:39:13","n_diff_pfx01","13","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_language_known","PRIMARY","2018-06-12 16:39:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_language_known","PRIMARY","2018-06-12 16:39:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave","PRIMARY","2018-06-12 16:39:09","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave","PRIMARY","2018-06-12 16:39:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave","PRIMARY","2018-06-12 16:39:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave_types","PRIMARY","2018-06-12 16:39:09","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave_types","PRIMARY","2018-06-12 16:39:09","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_leave_types","PRIMARY","2018-06-12 16:39:09","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_patent","PRIMARY","2018-06-12 16:39:14","n_diff_pfx01","14","1","patent_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_patent","PRIMARY","2018-06-12 16:39:14","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_patent","PRIMARY","2018-06-12 16:39:14","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_prof_affiliations","PRIMARY","2018-06-12 16:39:15","n_diff_pfx01","12","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_prof_affiliations","PRIMARY","2018-06-12 16:39:15","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_prof_affiliations","PRIMARY","2018-06-12 16:39:15","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications","PRIMARY","2018-06-12 16:39:16","n_diff_pfx01","12","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications","PRIMARY","2018-06-12 16:39:16","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications","PRIMARY","2018-06-12 16:39:16","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications_notified","PRIMARY","2018-06-12 16:39:17","n_diff_pfx01","15","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications_notified","PRIMARY","2018-06-12 16:39:17","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_publications_notified","PRIMARY","2018-06-12 16:39:17","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_references","PRIMARY","2018-06-12 16:39:12","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_references","PRIMARY","2018-06-12 16:39:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_references","PRIMARY","2018-06-12 16:39:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_seminar","PRIMARY","2018-06-12 16:39:18","n_diff_pfx01","39","1","seminar_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_seminar","PRIMARY","2018-06-12 16:39:18","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_seminar","PRIMARY","2018-06-12 16:39:18","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_skills","PRIMARY","2018-06-12 16:39:18","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_skills","PRIMARY","2018-06-12 16:39:18","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","hrms_skills","PRIMARY","2018-06-12 16:39:18","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_compliances","PRIMARY","2018-06-12 16:39:15","n_diff_pfx01","0","1","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_compliances","PRIMARY","2018-06-12 16:39:15","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_compliances","PRIMARY","2018-06-12 16:39:15","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","PRIMARY","2018-06-12 16:39:19","n_diff_pfx01","8","1","did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","PRIMARY","2018-06-12 16:39:19","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","PRIMARY","2018-06-12 16:39:19","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","depart_name","2018-06-12 16:39:19","n_diff_pfx01","8","1","depart_name");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","depart_name","2018-06-12 16:39:19","n_diff_pfx02","8","1","depart_name,did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","depart_name","2018-06-12 16:39:19","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","depart_name","2018-06-12 16:39:19","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","dept_hod","2018-06-12 16:39:19","n_diff_pfx01","6","1","dept_hod");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","dept_hod","2018-06-12 16:39:19","n_diff_pfx02","8","1","dept_hod,did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","dept_hod","2018-06-12 16:39:19","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_department","dept_hod","2018-06-12 16:39:19","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","PRIMARY","2018-06-12 16:39:20","n_diff_pfx01","9","1","did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","PRIMARY","2018-06-12 16:39:20","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","PRIMARY","2018-06-12 16:39:20","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","depart_name","2018-06-12 16:39:20","n_diff_pfx01","9","1","depart_name");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","depart_name","2018-06-12 16:39:20","n_diff_pfx02","9","1","depart_name,did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","depart_name","2018-06-12 16:39:20","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","depart_name","2018-06-12 16:39:20","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","dept_hod","2018-06-12 16:39:20","n_diff_pfx01","5","1","dept_hod");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","dept_hod","2018-06-12 16:39:20","n_diff_pfx02","9","1","dept_hod,did");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","dept_hod","2018-06-12 16:39:20","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","ins_departments","dept_hod","2018-06-12 16:39:20","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","manage_leaves","PRIMARY","2018-06-12 16:39:20","n_diff_pfx01","2","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","manage_leaves","PRIMARY","2018-06-12 16:39:20","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","manage_leaves","PRIMARY","2018-06-12 16:39:20","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","nba_report","PRIMARY","2018-06-12 16:39:21","n_diff_pfx01","4","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","nba_report","PRIMARY","2018-06-12 16:39:21","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","nba_report","PRIMARY","2018-06-12 16:39:21","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","pay_fees","PRIMARY","2018-06-12 16:39:21","n_diff_pfx01","4","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","pay_fees","PRIMARY","2018-06-12 16:39:21","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","pay_fees","PRIMARY","2018-06-12 16:39:21","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","qualitative","PRIMARY","2018-06-12 16:39:23","n_diff_pfx01","115","4","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","qualitative","PRIMARY","2018-06-12 16:39:23","n_leaf_pages","4","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","qualitative","PRIMARY","2018-06-12 16:39:23","size","5","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","recurring_holidays","GEN_CLUST_INDEX","2018-06-12 16:37:27","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","recurring_holidays","GEN_CLUST_INDEX","2018-06-12 16:37:27","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","recurring_holidays","GEN_CLUST_INDEX","2018-06-12 16:37:27","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","PRIMARY","2018-06-12 16:39:24","n_diff_pfx01","2","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","PRIMARY","2018-06-12 16:39:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","PRIMARY","2018-06-12 16:39:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","user_id","2018-06-12 16:39:24","n_diff_pfx01","2","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","user_id","2018-06-12 16:39:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_documents","user_id","2018-06-12 16:39:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","PRIMARY","2018-06-12 16:39:24","n_diff_pfx01","9","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","PRIMARY","2018-06-12 16:39:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","PRIMARY","2018-06-12 16:39:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","user_id","2018-06-12 16:39:24","n_diff_pfx01","9","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","user_id","2018-06-12 16:39:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_family_details","user_id","2018-06-12 16:39:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_group_courses","PRIMARY","2018-06-12 16:39:26","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_group_courses","PRIMARY","2018-06-12 16:39:26","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_group_courses","PRIMARY","2018-06-12 16:39:26","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_groups","PRIMARY","2018-06-12 16:39:25","n_diff_pfx01","10","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_groups","PRIMARY","2018-06-12 16:39:25","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_groups","PRIMARY","2018-06-12 16:39:25","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave","PRIMARY","2018-06-12 16:39:22","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave","PRIMARY","2018-06-12 16:39:22","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave","PRIMARY","2018-06-12 16:39:22","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave_type","PRIMARY","2018-06-12 16:39:27","n_diff_pfx01","2","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave_type","PRIMARY","2018-06-12 16:39:27","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_leave_type","PRIMARY","2018-06-12 16:39:27","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_medical_symp_info","PRIMARY","2018-06-12 16:39:28","n_diff_pfx01","16","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_medical_symp_info","PRIMARY","2018-06-12 16:39:28","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_medical_symp_info","PRIMARY","2018-06-12 16:39:28","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_student_login","PRIMARY","2018-06-12 16:39:33","n_diff_pfx01","3","1","sid");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_student_login","PRIMARY","2018-06-12 16:39:33","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_student_login","PRIMARY","2018-06-12 16:39:33","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","PRIMARY","2018-06-12 16:39:29","n_diff_pfx01","2910","20","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","PRIMARY","2018-06-12 16:39:29","n_leaf_pages","25","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","PRIMARY","2018-06-12 16:39:29","size","26","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","user_id","2018-06-12 16:39:29","n_diff_pfx01","2854","7","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","user_id","2018-06-12 16:39:29","n_leaf_pages","7","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info","user_id","2018-06-12 16:39:29","size","8","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","PRIMARY","2018-06-12 16:39:31","n_diff_pfx01","2875","20","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","PRIMARY","2018-06-12 16:39:31","n_leaf_pages","25","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","PRIMARY","2018-06-12 16:39:31","size","26","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","user_id","2018-06-12 16:39:31","n_diff_pfx01","2854","7","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","user_id","2018-06-12 16:39:31","n_leaf_pages","7","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_1","user_id","2018-06-12 16:39:31","size","8","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","PRIMARY","2018-06-12 16:39:32","n_diff_pfx01","2899","20","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","PRIMARY","2018-06-12 16:39:32","n_leaf_pages","22","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","PRIMARY","2018-06-12 16:39:32","size","23","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","user_id","2018-06-12 16:39:32","n_diff_pfx01","2854","7","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","user_id","2018-06-12 16:39:32","n_leaf_pages","7","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sis_students_info_2","user_id","2018-06-12 16:39:32","size","8","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sra","PRIMARY","2018-06-12 16:39:33","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","sra","PRIMARY","2018-06-12 16:39:33","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","sra","PRIMARY","2018-06-12 16:39:33","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","student_constraints","PRIMARY","2018-06-12 16:39:34","n_diff_pfx01","8","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","student_constraints","PRIMARY","2018-06-12 16:39:34","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","student_constraints","PRIMARY","2018-06-12 16:39:34","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_categories","PRIMARY","2018-06-12 16:39:29","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_categories","PRIMARY","2018-06-12 16:39:29","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_categories","PRIMARY","2018-06-12 16:39:29","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_questions","PRIMARY","2018-06-12 16:39:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_questions","PRIMARY","2018-06-12 16:39:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","survey_questions","PRIMARY","2018-06-12 16:39:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_notice_board","PRIMARY","2018-06-12 16:39:35","n_diff_pfx01","5","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_notice_board","PRIMARY","2018-06-12 16:39:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_notice_board","PRIMARY","2018-06-12 16:39:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_push_notifications","PRIMARY","2018-06-12 16:39:36","n_diff_pfx01","5","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_push_notifications","PRIMARY","2018-06-12 16:39:36","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_push_notifications","PRIMARY","2018-06-12 16:39:36","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_user_types","PRIMARY","2018-06-12 16:39:37","n_diff_pfx01","6","1","Id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_user_types","PRIMARY","2018-06-12 16:39:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tbl_user_types","PRIMARY","2018-06-12 16:39:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_answers","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_diff_pfx01","146","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_answers","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_answers","GEN_CLUST_INDEX","2018-06-12 16:38:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_students_marks","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_students_marks","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_students_marks","GEN_CLUST_INDEX","2018-06-12 16:38:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers","GEN_CLUST_INDEX","2018-06-12 16:38:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers_tmp","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_diff_pfx01","28","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers_tmp","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_papers_tmp","GEN_CLUST_INDEX","2018-06-12 16:38:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_students","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_students","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_custom_test_students","GEN_CLUST_INDEX","2018-06-12 16:38:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_modules","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_modules","GEN_CLUST_INDEX","2018-06-12 16:38:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_modules","GEN_CLUST_INDEX","2018-06-12 16:38:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_diff_pfx01","25","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions","GEN_CLUST_INDEX","2018-06-12 16:38:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions_syllabus","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_diff_pfx01","78","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions_syllabus","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_questions_syllabus","GEN_CLUST_INDEX","2018-06-12 16:38:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sessions","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_diff_pfx01","2","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sessions","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sessions","GEN_CLUST_INDEX","2018-06-12 16:38:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:11","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_sslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:11","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_diff_pfx01","8","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subject_set","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_diff_pfx01","388","2","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subject_set","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_leaf_pages","2","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subject_set","GEN_CLUST_INDEX","2018-06-12 16:38:14","size","3","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_diff_pfx01","666","3","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_leaf_pages","3","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_test_subjects","GEN_CLUST_INDEX","2018-06-12 16:38:14","size","4","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testgroups","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_diff_pfx01","4","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testgroups","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testgroups","GEN_CLUST_INDEX","2018-06-12 16:38:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_diff_pfx01","144","2","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests","GEN_CLUST_INDEX","2018-06-12 16:38:14","n_leaf_pages","2","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests","GEN_CLUST_INDEX","2018-06-12 16:38:14","size","3","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs","GEN_CLUST_INDEX","2018-06-12 16:38:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs_answers","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs_answers","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_logs_answers","GEN_CLUST_INDEX","2018-06-12 16:38:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_users","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_users","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_tests_users","GEN_CLUST_INDEX","2018-06-12 16:38:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testsslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testsslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:12","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testsslcerts","GEN_CLUST_INDEX","2018-06-12 16:38:12","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testuser_stat","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testuser_stat","GEN_CLUST_INDEX","2018-06-12 16:38:13","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_testuser_stat","GEN_CLUST_INDEX","2018-06-12 16:38:13","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_user_groups","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_diff_pfx01","4","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_user_groups","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_user_groups","GEN_CLUST_INDEX","2018-06-12 16:38:15","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_users","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_diff_pfx01","6","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_users","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_users","GEN_CLUST_INDEX","2018-06-12 16:38:15","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_usrgroups","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_diff_pfx01","6","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_usrgroups","GEN_CLUST_INDEX","2018-06-12 16:38:15","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tce_usrgroups","GEN_CLUST_INDEX","2018-06-12 16:38:15","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_course","PRIMARY","2018-06-12 16:39:37","n_diff_pfx01","5","1","course_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_course","PRIMARY","2018-06-12 16:39:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_course","PRIMARY","2018-06-12 16:39:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_trainingsubscribe","PRIMARY","2018-06-12 16:39:38","n_diff_pfx01","8","1","subscribe_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_trainingsubscribe","PRIMARY","2018-06-12 16:39:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","td_trainingsubscribe","PRIMARY","2018-06-12 16:39:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_activity_tracking","PRIMARY","2018-06-12 16:39:34","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_activity_tracking","PRIMARY","2018-06-12 16:39:34","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_activity_tracking","PRIMARY","2018-06-12 16:39:34","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_constraints","PRIMARY","2018-06-12 16:39:39","n_diff_pfx01","45","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_constraints","PRIMARY","2018-06-12 16:39:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_constraints","PRIMARY","2018-06-12 16:39:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_freeperiods","PRIMARY","2018-06-12 16:39:35","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_freeperiods","PRIMARY","2018-06-12 16:39:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","teacher_freeperiods","PRIMARY","2018-06-12 16:39:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_route","PRIMARY","2018-06-12 16:39:40","n_diff_pfx01","5","1","route_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_route","PRIMARY","2018-06-12 16:39:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_route","PRIMARY","2018-06-12 16:39:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_stop","PRIMARY","2018-06-12 16:39:50","n_diff_pfx01","9","1","stop_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_stop","PRIMARY","2018-06-12 16:39:50","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_bus_stop","PRIMARY","2018-06-12 16:39:50","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_employee","PRIMARY","2018-06-12 16:40:00","n_diff_pfx01","4","1","emp_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_employee","PRIMARY","2018-06-12 16:40:00","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_employee","PRIMARY","2018-06-12 16:40:00","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_passengers","PRIMARY","2018-06-12 16:40:10","n_diff_pfx01","10","1","passenger_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_passengers","PRIMARY","2018-06-12 16:40:10","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_passengers","PRIMARY","2018-06-12 16:40:10","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_vehicle_details","PRIMARY","2018-06-12 16:40:20","n_diff_pfx01","11","1","tm_vehicle_details_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_vehicle_details","PRIMARY","2018-06-12 16:40:20","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","tm_vehicle_details","PRIMARY","2018-06-12 16:40:20","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","PRIMARY","2018-06-12 16:40:30","n_diff_pfx01","3502","20","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","PRIMARY","2018-06-12 16:40:30","n_leaf_pages","25","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","PRIMARY","2018-06-12 16:40:30","size","26","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","first_name","2018-06-12 16:40:30","n_diff_pfx01","2159","7","first_name");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","first_name","2018-06-12 16:40:30","n_diff_pfx02","3429","7","first_name,id");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","first_name","2018-06-12 16:40:30","n_leaf_pages","7","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","first_name","2018-06-12 16:40:30","size","8","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","id","2018-06-12 16:40:30","n_diff_pfx01","3429","3","id");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","id","2018-06-12 16:40:30","n_leaf_pages","3","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","id","2018-06-12 16:40:30","size","4","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","last_name","2018-06-12 16:40:30","n_diff_pfx01","543","4","last_name");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","last_name","2018-06-12 16:40:30","n_diff_pfx02","3429","4","last_name,id");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","last_name","2018-06-12 16:40:30","n_leaf_pages","4","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","last_name","2018-06-12 16:40:30","size","5","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","user_id","2018-06-12 16:40:30","n_diff_pfx01","3429","9","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","user_id","2018-06-12 16:40:30","n_leaf_pages","9","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test","users_login","user_id","2018-06-12 16:40:30","size","10","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_periods","PRIMARY","2018-06-12 16:24:21","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_periods","PRIMARY","2018-06-12 16:24:21","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_periods","PRIMARY","2018-06-12 16:24:21","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_rooms","PRIMARY","2018-06-12 16:24:21","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_rooms","PRIMARY","2018-06-12 16:24:21","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_rooms","PRIMARY","2018-06-12 16:24:21","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year_terms","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year_terms","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","academic_year_terms","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_allotment","PRIMARY","2018-06-12 16:24:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_allotment","PRIMARY","2018-06-12 16:24:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_allotment","PRIMARY","2018-06-12 16:24:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_assessment","PRIMARY","2018-06-12 16:24:34","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_assessment","PRIMARY","2018-06-12 16:24:34","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_assessment","PRIMARY","2018-06-12 16:24:34","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_discussions","PRIMARY","2018-06-12 16:24:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_discussions","PRIMARY","2018-06-12 16:24:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_discussions","PRIMARY","2018-06-12 16:24:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_feedback","PRIMARY","2018-06-12 16:24:31","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_feedback","PRIMARY","2018-06-12 16:24:31","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_feedback","PRIMARY","2018-06-12 16:24:31","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_occurence","PRIMARY","2018-06-12 16:24:22","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_occurence","PRIMARY","2018-06-12 16:24:22","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_occurence","PRIMARY","2018-06-12 16:24:22","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_assessment","PRIMARY","2018-06-12 16:24:34","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_assessment","PRIMARY","2018-06-12 16:24:34","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_assessment","PRIMARY","2018-06-12 16:24:34","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_comments","PRIMARY","2018-06-12 16:24:31","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_comments","PRIMARY","2018-06-12 16:24:31","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","activity_sis_comments","PRIMARY","2018-06-12 16:24:31","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","admission_form","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","admission_form","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","admission_form","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_edudetails","PRIMARY","2018-06-12 16:24:44","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_edudetails","PRIMARY","2018-06-12 16:24:44","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_edudetails","PRIMARY","2018-06-12 16:24:44","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","PRIMARY","2018-06-12 16:24:44","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","PRIMARY","2018-06-12 16:24:44","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","PRIMARY","2018-06-12 16:24:44","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","alumini_userid","2018-06-12 16:24:44","n_diff_pfx01","0","1","alumini_userid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","alumini_userid","2018-06-12 16:24:44","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_info","alumini_userid","2018-06-12 16:24:44","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_workexp","PRIMARY","2018-06-12 16:24:45","n_diff_pfx01","0","1","alumini_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_workexp","PRIMARY","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","alumini_workexp","PRIMARY","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","application_form","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","application_form","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","application_form","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","certificates","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","certificates","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","certificates","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","PRIMARY","2018-06-12 16:24:38","n_diff_pfx01","0","1","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","PRIMARY","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","PRIMARY","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","commitee_name","2018-06-12 16:24:38","n_diff_pfx01","0","1","commitee_name");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","commitee_name","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_main","commitee_name","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_meeting","PRIMARY","2018-06-12 16:24:38","n_diff_pfx01","0","1","meeting_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_meeting","PRIMARY","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_meeting","PRIMARY","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_members","PRIMARY","2018-06-12 16:24:38","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_members","PRIMARY","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","committee_members","PRIMARY","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_assessment","PRIMARY","2018-06-12 16:24:35","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_assessment","PRIMARY","2018-06-12 16:24:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_assessment","PRIMARY","2018-06-12 16:24:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_syllabus_temp","PRIMARY","2018-06-12 16:24:51","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_syllabus_temp","PRIMARY","2018-06-12 16:24:51","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_syllabus_temp","PRIMARY","2018-06-12 16:24:51","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_teaching_learning","PRIMARY","2018-06-12 16:24:46","n_diff_pfx01","0","1","lid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_teaching_learning","PRIMARY","2018-06-12 16:24:46","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","course_teaching_learning","PRIMARY","2018-06-12 16:24:46","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","curricular_activities","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","curricular_activities","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","curricular_activities","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course","PRIMARY","2018-06-12 16:24:46","n_diff_pfx01","0","1","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course","PRIMARY","2018-06-12 16:24:46","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course","PRIMARY","2018-06-12 16:24:46","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books","PRIMARY","2018-06-12 16:24:46","n_diff_pfx01","0","1","rid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books","PRIMARY","2018-06-12 16:24:46","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books","PRIMARY","2018-06-12 16:24:46","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books_temp","PRIMARY","2018-06-12 16:24:47","n_diff_pfx01","0","1","rid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books_temp","PRIMARY","2018-06-12 16:24:47","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_books_temp","PRIMARY","2018-06-12 16:24:47","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome","PRIMARY","2018-06-12 16:24:50","n_diff_pfx01","0","1","oid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome","PRIMARY","2018-06-12 16:24:50","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome","PRIMARY","2018-06-12 16:24:50","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome_temp","PRIMARY","2018-06-12 16:24:50","n_diff_pfx01","0","1","oid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome_temp","PRIMARY","2018-06-12 16:24:50","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_outcome_temp","PRIMARY","2018-06-12 16:24:50","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_revisions","PRIMARY","2018-06-12 16:24:48","n_diff_pfx01","0","1","rid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_revisions","PRIMARY","2018-06-12 16:24:48","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_revisions","PRIMARY","2018-06-12 16:24:48","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","PRIMARY","2018-06-12 16:24:52","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","PRIMARY","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","PRIMARY","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","course_id","2018-06-12 16:24:52","n_diff_pfx01","0","1","course_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","course_id","2018-06-12 16:24:52","n_diff_pfx02","0","1","course_id,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","course_id","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","course_id","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","id","2018-06-12 16:24:52","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","id","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","id","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id","2018-06-12 16:24:52","n_diff_pfx01","0","1","parent_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id","2018-06-12 16:24:52","n_diff_pfx02","0","1","parent_id,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id_2","2018-06-12 16:24:52","n_diff_pfx01","0","1","parent_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id_2","2018-06-12 16:24:52","n_diff_pfx02","0","1","parent_id,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id_2","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_course_syllabus","parent_id_2","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program","PRIMARY","2018-06-12 16:24:48","n_diff_pfx01","0","1","pid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program","PRIMARY","2018-06-12 16:24:48","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program","PRIMARY","2018-06-12 16:24:48","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome","PRIMARY","2018-06-12 16:24:51","n_diff_pfx01","0","1","oid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome","PRIMARY","2018-06-12 16:24:51","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome","PRIMARY","2018-06-12 16:24:51","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome_temp","PRIMARY","2018-06-12 16:24:51","n_diff_pfx01","0","1","oid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome_temp","PRIMARY","2018-06-12 16:24:51","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","dep_program_outcome_temp","PRIMARY","2018-06-12 16:24:51","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","fees_details","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","fees_details","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","fees_details","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_blocks","PRIMARY","2018-06-12 16:24:35","n_diff_pfx01","0","1","block_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_blocks","PRIMARY","2018-06-12 16:24:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_blocks","PRIMARY","2018-06-12 16:24:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_mess_card","PRIMARY","2018-06-12 16:24:35","n_diff_pfx01","0","1","mc_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_mess_card","PRIMARY","2018-06-12 16:24:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_mess_card","PRIMARY","2018-06-12 16:24:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_rooms","PRIMARY","2018-06-12 16:24:35","n_diff_pfx01","0","1","room_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_rooms","PRIMARY","2018-06-12 16:24:35","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_rooms","PRIMARY","2018-06-12 16:24:35","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_stud_rooms","PRIMARY","2018-06-12 16:24:36","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_stud_rooms","PRIMARY","2018-06-12 16:24:36","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_stud_rooms","PRIMARY","2018-06-12 16:24:36","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_visitors","PRIMARY","2018-06-12 16:24:36","n_diff_pfx01","0","1","vstr_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_visitors","PRIMARY","2018-06-12 16:24:36","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hm_visitors","PRIMARY","2018-06-12 16:24:36","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_saturdays","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","wid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_saturdays","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_saturdays","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_week_month_days","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","wid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_week_month_days","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","holiday_week_month_days","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_consultancy","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","consultancy_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_consultancy","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_consultancy","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","user_id","2018-06-12 16:24:39","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","user_id","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_documents","user_id","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_educational_details","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_educational_details","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_educational_details","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_employment","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_employment","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_employment","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_grant","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","grant_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_grant","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_grant","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_language_known","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_language_known","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_language_known","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave","PRIMARY","2018-06-12 16:24:39","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave","PRIMARY","2018-06-12 16:24:39","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave","PRIMARY","2018-06-12 16:24:39","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave_types","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave_types","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_leave_types","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_patent","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","patent_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_patent","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_patent","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_prof_affiliations","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_prof_affiliations","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_prof_affiliations","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications_notified","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications_notified","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_publications_notified","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_seminar","PRIMARY","2018-06-12 16:24:40","n_diff_pfx01","0","1","seminar_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_seminar","PRIMARY","2018-06-12 16:24:40","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_seminar","PRIMARY","2018-06-12 16:24:40","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_skills","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_skills","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","hrms_skills","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_compliances","PRIMARY","2018-06-12 16:24:38","n_diff_pfx01","0","1","cid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_compliances","PRIMARY","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_compliances","PRIMARY","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","PRIMARY","2018-06-12 16:24:48","n_diff_pfx01","0","1","did");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","PRIMARY","2018-06-12 16:24:48","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","PRIMARY","2018-06-12 16:24:48","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","depart_name","2018-06-12 16:24:48","n_diff_pfx01","0","1","depart_name");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","depart_name","2018-06-12 16:24:48","n_diff_pfx02","0","1","depart_name,did");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","depart_name","2018-06-12 16:24:48","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","depart_name","2018-06-12 16:24:48","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","dept_hod","2018-06-12 16:24:48","n_diff_pfx01","0","1","dept_hod");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","dept_hod","2018-06-12 16:24:48","n_diff_pfx02","0","1","dept_hod,did");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","dept_hod","2018-06-12 16:24:48","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","ins_departments","dept_hod","2018-06-12 16:24:48","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","manage_leaves","GEN_CLUST_INDEX","2018-06-12 16:24:41","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","manage_leaves","GEN_CLUST_INDEX","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","manage_leaves","GEN_CLUST_INDEX","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","pay_fees","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","pay_fees","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","pay_fees","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","qualitative","PRIMARY","2018-06-12 16:24:45","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","qualitative","PRIMARY","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","qualitative","PRIMARY","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","user_id","2018-06-12 16:24:41","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","user_id","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_documents","user_id","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_enotes","PRIMARY","2018-06-12 16:24:53","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_enotes","PRIMARY","2018-06-12 16:24:53","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_enotes","PRIMARY","2018-06-12 16:24:53","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","user_id","2018-06-12 16:24:41","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","user_id","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_family_details","user_id","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_group_courses","PRIMARY","2018-06-12 16:24:22","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_group_courses","PRIMARY","2018-06-12 16:24:22","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_group_courses","PRIMARY","2018-06-12 16:24:22","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_groups","PRIMARY","2018-06-12 16:24:25","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_groups","PRIMARY","2018-06-12 16:24:25","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_groups","PRIMARY","2018-06-12 16:24:25","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave_type","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave_type","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_leave_type","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","med_info_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","user_id","2018-06-12 16:24:41","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","user_id","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_info","user_id","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_symp_info","PRIMARY","2018-06-12 16:24:41","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_symp_info","PRIMARY","2018-06-12 16:24:41","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_medical_symp_info","PRIMARY","2018-06-12 16:24:41","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","PRIMARY","2018-06-12 16:24:42","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","PRIMARY","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","PRIMARY","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","user_id","2018-06-12 16:24:42","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","user_id","2018-06-12 16:24:42","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sis_students_info","user_id","2018-06-12 16:24:42","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sra","PRIMARY","2018-06-12 16:24:38","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sra","PRIMARY","2018-06-12 16:24:38","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","sra","PRIMARY","2018-06-12 16:24:38","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","student_constraints","PRIMARY","2018-06-12 16:24:23","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","student_constraints","PRIMARY","2018-06-12 16:24:23","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","student_constraints","PRIMARY","2018-06-12 16:24:23","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_categories","PRIMARY","2018-06-12 16:24:31","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_categories","PRIMARY","2018-06-12 16:24:31","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_categories","PRIMARY","2018-06-12 16:24:31","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_questions","PRIMARY","2018-06-12 16:24:32","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_questions","PRIMARY","2018-06-12 16:24:32","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","survey_questions","PRIMARY","2018-06-12 16:24:32","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_notice_board","PRIMARY","2018-06-12 16:24:45","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_notice_board","PRIMARY","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_notice_board","PRIMARY","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_push_notifications","PRIMARY","2018-06-12 16:24:45","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_push_notifications","PRIMARY","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tbl_push_notifications","PRIMARY","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","PRIMARY","2018-06-12 16:24:52","n_diff_pfx01","0","1","answer_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","PRIMARY","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","PRIMARY","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","p_answer_question_id","2018-06-12 16:24:52","n_diff_pfx01","0","1","answer_question_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","p_answer_question_id","2018-06-12 16:24:52","n_diff_pfx02","0","1","answer_question_id,answer_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","p_answer_question_id","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_answers","p_answer_question_id","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_custom_test_papers","PRIMARY","2018-06-12 16:24:52","n_diff_pfx01","0","1","paper_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_custom_test_papers","PRIMARY","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_custom_test_papers","PRIMARY","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","PRIMARY","2018-06-12 16:24:52","n_diff_pfx01","0","1","question_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","PRIMARY","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","PRIMARY","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","p_question_subject_id","2018-06-12 16:24:52","n_diff_pfx01","0","1","question_subject_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","p_question_subject_id","2018-06-12 16:24:52","n_diff_pfx02","0","1","question_subject_id,question_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","p_question_subject_id","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions","p_question_subject_id","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions_syllabus","PRIMARY","2018-06-12 16:24:52","n_diff_pfx01","0","1","sid");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions_syllabus","PRIMARY","2018-06-12 16:24:52","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_questions_syllabus","PRIMARY","2018-06-12 16:24:52","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_test_subject_set","PRIMARY","2018-06-12 16:24:53","n_diff_pfx01","0","1","tsubset_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_test_subject_set","PRIMARY","2018-06-12 16:24:53","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_test_subject_set","PRIMARY","2018-06-12 16:24:53","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_tests","PRIMARY","2018-06-12 16:24:53","n_diff_pfx01","0","1","test_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_tests","PRIMARY","2018-06-12 16:24:53","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tce_tests","PRIMARY","2018-06-12 16:24:53","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_activity_tracking","PRIMARY","2018-06-12 16:24:32","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_activity_tracking","PRIMARY","2018-06-12 16:24:32","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_activity_tracking","PRIMARY","2018-06-12 16:24:32","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_constraints","PRIMARY","2018-06-12 16:24:23","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_constraints","PRIMARY","2018-06-12 16:24:23","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_constraints","PRIMARY","2018-06-12 16:24:23","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_freeperiods","PRIMARY","2018-06-12 16:24:33","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_freeperiods","PRIMARY","2018-06-12 16:24:33","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_freeperiods","PRIMARY","2018-06-12 16:24:33","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_leisure_activities","PRIMARY","2018-06-12 16:24:33","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_leisure_activities","PRIMARY","2018-06-12 16:24:33","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","teacher_leisure_activities","PRIMARY","2018-06-12 16:24:33","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","timetables","PRIMARY","2018-06-12 16:24:24","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","timetables","PRIMARY","2018-06-12 16:24:24","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","timetables","PRIMARY","2018-06-12 16:24:24","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_route","PRIMARY","2018-06-12 16:24:36","n_diff_pfx01","0","1","route_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_route","PRIMARY","2018-06-12 16:24:36","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_route","PRIMARY","2018-06-12 16:24:36","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_stop","PRIMARY","2018-06-12 16:24:36","n_diff_pfx01","0","1","stop_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_stop","PRIMARY","2018-06-12 16:24:36","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_bus_stop","PRIMARY","2018-06-12 16:24:36","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_passengers","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","passenger_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_passengers","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_passengers","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_vehicle_details","PRIMARY","2018-06-12 16:24:37","n_diff_pfx01","0","1","tm_vehicle_details_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_vehicle_details","PRIMARY","2018-06-12 16:24:37","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","tm_vehicle_details","PRIMARY","2018-06-12 16:24:37","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","PRIMARY","2018-06-12 16:24:45","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","PRIMARY","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","PRIMARY","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name","2018-06-12 16:24:45","n_diff_pfx01","0","1","first_name");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name","2018-06-12 16:24:45","n_diff_pfx02","0","1","first_name,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name_2","2018-06-12 16:24:45","n_diff_pfx01","0","1","first_name");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name_2","2018-06-12 16:24:45","n_diff_pfx02","0","1","first_name,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name_2","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","first_name_2","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","last_name","2018-06-12 16:24:45","n_diff_pfx01","0","1","last_name");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","last_name","2018-06-12 16:24:45","n_diff_pfx02","0","1","last_name,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","last_name","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","last_name","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id","2018-06-12 16:24:45","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id_2","2018-06-12 16:24:45","n_diff_pfx01","0","1","user_id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id_2","2018-06-12 16:24:45","n_diff_pfx02","0","1","user_id,id");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id_2","2018-06-12 16:24:45","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mapme_test_1","users_login","user_id_2","2018-06-12 16:24:45","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("mysql","gtid_slave_pos","PRIMARY","2015-11-06 20:43:16","n_diff_pfx01","0","1","domain_id");
INSERT INTO innodb_index_stats VALUES("mysql","gtid_slave_pos","PRIMARY","2015-11-06 20:43:16","n_diff_pfx02","0","1","domain_id,sub_id");
INSERT INTO innodb_index_stats VALUES("mysql","gtid_slave_pos","PRIMARY","2015-11-06 20:43:16","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("mysql","gtid_slave_pos","PRIMARY","2015-11-06 20:43:16","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__bookmark","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__bookmark","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__bookmark","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__central_columns","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__central_columns","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,col_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__central_columns","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__central_columns","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","db_name","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","db_name","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","db_name","2015-11-10 20:55:30","n_diff_pfx03","0","1","db_name,table_name,column_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","db_name","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__column_info","db_name","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__designer_settings","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__designer_settings","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__designer_settings","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","u_user_type_template","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","u_user_type_template","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,export_type");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","u_user_type_template","2015-11-10 20:55:30","n_diff_pfx03","0","1","username,export_type,template_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","u_user_type_template","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__export_templates","u_user_type_template","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__favorite","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__favorite","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__favorite","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,db");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_diff_pfx03","0","1","username,db,table");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_diff_pfx04","0","1","username,db,table,timevalue");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_diff_pfx05","0","1","username,db,table,timevalue,id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__history","username","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,item_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","username,item_name,item_type");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_diff_pfx04","0","1","username,item_name,item_type,db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_diff_pfx05","0","1","username,item_name,item_type,db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__navigationhiding","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","page_nr");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","db_name","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","db_name","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,page_nr");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","db_name","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__pdf_pages","db_name","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__recent","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__recent","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__recent","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","master_db");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","master_db,master_table");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","master_db,master_table,master_field");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_diff_pfx01","0","1","foreign_db");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_diff_pfx02","0","1","foreign_db,foreign_table");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_diff_pfx03","0","1","foreign_db,foreign_table,master_db");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_diff_pfx04","0","1","foreign_db,foreign_table,master_db,master_table");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_diff_pfx05","0","1","foreign_db,foreign_table,master_db,master_table,master_field");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__relation","foreign_field","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","id");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","u_savedsearches_username_dbname","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","u_savedsearches_username_dbname","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","u_savedsearches_username_dbname","2015-11-10 20:55:30","n_diff_pfx03","0","1","username,db_name,search_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","u_savedsearches_username_dbname","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__savedsearches","u_savedsearches_username_dbname","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_coords","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_coords","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_coords","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","db_name,table_name,pdf_page_number");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_coords","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_coords","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_info","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_info","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_info","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_info","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_uiprefs","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_uiprefs","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_uiprefs","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","username,db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_uiprefs","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__table_uiprefs","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__tracking","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","db_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__tracking","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","db_name,table_name");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__tracking","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","db_name,table_name,version");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__tracking","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__tracking","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__userconfig","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__userconfig","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__userconfig","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__usergroups","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","usergroup");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__usergroups","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","usergroup,tab");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__usergroups","PRIMARY","2015-11-10 20:55:30","n_diff_pfx03","0","1","usergroup,tab,allowed");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__usergroups","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__usergroups","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__users","PRIMARY","2015-11-10 20:55:30","n_diff_pfx01","0","1","username");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__users","PRIMARY","2015-11-10 20:55:30","n_diff_pfx02","0","1","username,usergroup");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__users","PRIMARY","2015-11-10 20:55:30","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("phpmyadmin","pma__users","PRIMARY","2015-11-10 20:55:30","size","1","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("test","database","PRIMARY","2018-06-13 12:59:04","n_diff_pfx01","69","2","id");
INSERT INTO innodb_index_stats VALUES("test","database","PRIMARY","2018-06-13 12:59:04","n_leaf_pages","2","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("test","database","PRIMARY","2018-06-13 12:59:04","size","3","","Number of pages in the index");
INSERT INTO innodb_index_stats VALUES("test","demo_test","GEN_CLUST_INDEX","2018-06-13 16:41:00","n_diff_pfx01","0","1","DB_ROW_ID");
INSERT INTO innodb_index_stats VALUES("test","demo_test","GEN_CLUST_INDEX","2018-06-13 16:41:00","n_leaf_pages","1","","Number of leaf pages in the index");
INSERT INTO innodb_index_stats VALUES("test","demo_test","GEN_CLUST_INDEX","2018-06-13 16:41:00","size","1","","Number of pages in the index");



CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

INSERT INTO innodb_table_stats VALUES("arul","alumini_edudetails","2018-06-13 16:35:09","2","1","0");
INSERT INTO innodb_table_stats VALUES("arul","alumini_info","2018-06-13 16:35:09","0","1","1");
INSERT INTO innodb_table_stats VALUES("arul","alumini_workexp","2018-06-13 16:35:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("arul","api_keys","2018-06-13 16:35:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("arul","blood_group","2018-06-13 16:35:44","8","1","0");
INSERT INTO innodb_table_stats VALUES("arul","cities","2018-06-13 16:35:11","0","1","0");
INSERT INTO innodb_table_stats VALUES("arul","degree_list","2018-06-13 16:35:13","12","1","0");
INSERT INTO innodb_table_stats VALUES("arul","languages_list","2018-06-13 16:35:24","9","1","0");
INSERT INTO innodb_table_stats VALUES("arul","sis_students_year","2018-06-13 16:35:34","15","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","alumini_edudetails","2018-06-12 16:26:05","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","alumini_info","2018-06-12 16:26:05","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme","alumini_workexp","2018-06-12 16:26:05","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","api_keys","2018-06-12 16:33:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","blood_group","2018-06-12 16:34:14","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","cities","2018-06-12 16:33:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","degree_list","2018-06-12 16:33:43","12","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","languages_list","2018-06-12 16:33:54","9","1","0");
INSERT INTO innodb_table_stats VALUES("mapme","sis_students_year","2018-06-12 16:34:04","15","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","academic_periods","2018-06-12 16:39:04","15","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","academic_rooms","2018-06-12 16:38:52","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","academic_year","2018-06-12 16:38:57","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","academic_year_terms","2018-06-12 16:37:11","158","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","activity_allotment","2018-06-12 16:38:53","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","activity_discussions","2018-06-12 16:38:53","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","activity_occurence","2018-06-12 16:38:57","27","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","admission_form","2018-06-12 16:38:55","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_donationinstitute","2018-06-12 16:36:59","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_donationpaid","2018-06-12 16:36:59","3","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_edudetails","2018-06-12 16:37:01","13","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_events","2018-06-12 16:37:02","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_info","2018-06-12 16:37:03","322","4","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_login","2018-06-12 16:38:55","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_stpaid","2018-06-12 16:37:00","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","alumini_workexp","2018-06-12 16:37:04","3","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","application_form","2018-06-12 16:38:56","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","certificates","2018-06-12 16:38:58","72","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","cm_mail","2018-06-12 16:38:59","15","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","cm_sms","2018-06-12 16:39:00","11","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","committee_main","2018-06-12 16:39:02","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","committee_meeting","2018-06-12 16:37:09","3","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","committee_members","2018-06-12 16:39:02","9","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","course_syllabus_temp","2018-06-12 16:38:59","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","course_teaching_learning","2018-06-12 16:37:10","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","curricular_activities","2018-06-12 16:39:03","6","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_course","2018-06-12 16:39:04","399","15","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_course_books","2018-06-12 16:37:11","16","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_course_books_temp","2018-06-12 16:37:09","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_course_revisions","2018-06-12 16:39:05","6","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_course_syllabus","2018-06-12 16:39:02","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_pgm_sanctioned_seats","2018-06-12 16:39:05","11","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_program","2018-06-12 16:39:07","11","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","dep_program_1","2018-06-12 16:37:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","fees_details","2018-06-12 16:39:08","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","holiday_week_month_days","2018-06-12 16:37:21","3","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_consultancy","2018-06-12 16:39:08","50","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_documents","2018-06-12 16:39:10","4","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_educational_details","2018-06-12 16:39:11","41","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_employee_login","2018-06-12 16:39:06","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_employment","2018-06-12 16:39:11","30","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_grant","2018-06-12 16:39:12","13","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_language_known","2018-06-12 16:39:13","13","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_leave","2018-06-12 16:39:09","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_leave_types","2018-06-12 16:39:09","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_patent","2018-06-12 16:39:14","14","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_prof_affiliations","2018-06-12 16:39:15","12","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_publications","2018-06-12 16:39:16","12","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_publications_notified","2018-06-12 16:39:17","15","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_references","2018-06-12 16:39:12","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_seminar","2018-06-12 16:39:18","39","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","hrms_skills","2018-06-12 16:39:18","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","ins_compliances","2018-06-12 16:39:15","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","ins_department","2018-06-12 16:39:19","8","1","2");
INSERT INTO innodb_table_stats VALUES("mapme_test","ins_departments","2018-06-12 16:39:20","9","1","2");
INSERT INTO innodb_table_stats VALUES("mapme_test","manage_leaves","2018-06-12 16:39:20","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","nba_report","2018-06-12 16:39:21","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","pay_fees","2018-06-12 16:39:21","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","qualitative","2018-06-12 16:39:23","115","5","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","recurring_holidays","2018-06-12 16:37:27","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_documents","2018-06-12 16:39:24","2","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_family_details","2018-06-12 16:39:24","9","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_group_courses","2018-06-12 16:39:26","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_groups","2018-06-12 16:39:25","10","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_leave","2018-06-12 16:39:22","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_leave_type","2018-06-12 16:39:27","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_medical_symp_info","2018-06-12 16:39:28","16","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_student_login","2018-06-12 16:39:33","3","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_students_info","2018-06-12 16:39:29","2910","26","8");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_students_info_1","2018-06-12 16:39:31","2875","26","8");
INSERT INTO innodb_table_stats VALUES("mapme_test","sis_students_info_2","2018-06-12 16:39:32","2899","23","8");
INSERT INTO innodb_table_stats VALUES("mapme_test","sra","2018-06-12 16:39:33","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","student_constraints","2018-06-12 16:39:34","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","survey_categories","2018-06-12 16:39:29","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","survey_questions","2018-06-12 16:39:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tbl_notice_board","2018-06-12 16:39:35","5","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tbl_push_notifications","2018-06-12 16:39:36","5","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tbl_user_types","2018-06-12 16:39:37","6","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_answers","2018-06-12 16:38:11","146","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_custom_students_marks","2018-06-12 16:38:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_custom_test_papers","2018-06-12 16:38:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_custom_test_papers_tmp","2018-06-12 16:38:11","28","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_custom_test_students","2018-06-12 16:38:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_modules","2018-06-12 16:38:10","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_questions","2018-06-12 16:38:11","25","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_questions_syllabus","2018-06-12 16:38:11","78","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_sessions","2018-06-12 16:38:12","2","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_sslcerts","2018-06-12 16:38:11","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_subjects","2018-06-12 16:38:13","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_test_subject_set","2018-06-12 16:38:14","388","3","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_test_subjects","2018-06-12 16:38:14","666","4","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_testgroups","2018-06-12 16:38:13","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_tests","2018-06-12 16:38:14","144","3","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_tests_logs","2018-06-12 16:38:12","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_tests_logs_answers","2018-06-12 16:38:12","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_tests_users","2018-06-12 16:38:13","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_testsslcerts","2018-06-12 16:38:12","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_testuser_stat","2018-06-12 16:38:13","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_user_groups","2018-06-12 16:38:15","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_users","2018-06-12 16:38:15","6","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tce_usrgroups","2018-06-12 16:38:15","6","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","td_course","2018-06-12 16:39:37","5","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","td_trainingsubscribe","2018-06-12 16:39:38","8","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","teacher_activity_tracking","2018-06-12 16:39:34","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","teacher_constraints","2018-06-12 16:39:39","45","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","teacher_freeperiods","2018-06-12 16:39:35","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tm_bus_route","2018-06-12 16:39:40","5","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tm_bus_stop","2018-06-12 16:39:50","9","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tm_employee","2018-06-12 16:40:00","4","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tm_passengers","2018-06-12 16:40:10","10","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","tm_vehicle_details","2018-06-12 16:40:20","11","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test","users_login","2018-06-12 16:40:30","3502","26","27");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","academic_periods","2018-06-12 16:24:21","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","academic_rooms","2018-06-12 16:24:21","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","academic_year","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","academic_year_terms","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_allotment","2018-06-12 16:24:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_assessment","2018-06-12 16:24:34","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_discussions","2018-06-12 16:24:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_feedback","2018-06-12 16:24:31","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_occurence","2018-06-12 16:24:22","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_sis_assessment","2018-06-12 16:24:34","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","activity_sis_comments","2018-06-12 16:24:31","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","admission_form","2018-06-12 16:24:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","alumini_edudetails","2018-06-12 16:24:44","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","alumini_info","2018-06-12 16:24:44","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","alumini_workexp","2018-06-12 16:24:45","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","application_form","2018-06-12 16:24:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","certificates","2018-06-12 16:24:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","committee_main","2018-06-12 16:24:38","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","committee_meeting","2018-06-12 16:24:38","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","committee_members","2018-06-12 16:24:38","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","course_assessment","2018-06-12 16:24:35","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","course_syllabus_temp","2018-06-12 16:24:51","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","course_teaching_learning","2018-06-12 16:24:46","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","curricular_activities","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course","2018-06-12 16:24:46","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_books","2018-06-12 16:24:46","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_books_temp","2018-06-12 16:24:47","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_outcome","2018-06-12 16:24:50","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_outcome_temp","2018-06-12 16:24:50","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_revisions","2018-06-12 16:24:48","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_course_syllabus","2018-06-12 16:24:52","0","1","4");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_program","2018-06-12 16:24:48","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_program_outcome","2018-06-12 16:24:51","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","dep_program_outcome_temp","2018-06-12 16:24:51","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","fees_details","2018-06-12 16:24:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hm_blocks","2018-06-12 16:24:35","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hm_mess_card","2018-06-12 16:24:35","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hm_rooms","2018-06-12 16:24:35","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hm_stud_rooms","2018-06-12 16:24:36","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hm_visitors","2018-06-12 16:24:36","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","holiday_saturdays","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","holiday_week_month_days","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_consultancy","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_documents","2018-06-12 16:24:39","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_educational_details","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_employment","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_grant","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_language_known","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_leave","2018-06-12 16:24:39","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_leave_types","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_patent","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_prof_affiliations","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_publications","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_publications_notified","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_seminar","2018-06-12 16:24:40","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","hrms_skills","2018-06-12 16:24:41","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","ins_compliances","2018-06-12 16:24:38","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","ins_departments","2018-06-12 16:24:48","0","1","2");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","manage_leaves","2018-06-12 16:24:41","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","pay_fees","2018-06-12 16:24:42","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","qualitative","2018-06-12 16:24:45","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_documents","2018-06-12 16:24:41","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_enotes","2018-06-12 16:24:53","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_family_details","2018-06-12 16:24:41","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_group_courses","2018-06-12 16:24:22","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_groups","2018-06-12 16:24:25","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_leave","2018-06-12 16:24:41","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_leave_type","2018-06-12 16:24:41","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_medical_info","2018-06-12 16:24:41","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_medical_symp_info","2018-06-12 16:24:41","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sis_students_info","2018-06-12 16:24:42","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","sra","2018-06-12 16:24:38","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","student_constraints","2018-06-12 16:24:23","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","survey_categories","2018-06-12 16:24:31","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","survey_questions","2018-06-12 16:24:32","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tbl_notice_board","2018-06-12 16:24:45","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tbl_push_notifications","2018-06-12 16:24:45","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_answers","2018-06-12 16:24:52","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_custom_test_papers","2018-06-12 16:24:52","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_questions","2018-06-12 16:24:52","0","1","1");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_questions_syllabus","2018-06-12 16:24:52","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_test_subject_set","2018-06-12 16:24:53","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tce_tests","2018-06-12 16:24:53","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","teacher_activity_tracking","2018-06-12 16:24:32","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","teacher_constraints","2018-06-12 16:24:23","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","teacher_freeperiods","2018-06-12 16:24:33","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","teacher_leisure_activities","2018-06-12 16:24:33","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","timetables","2018-06-12 16:24:24","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tm_bus_route","2018-06-12 16:24:36","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tm_bus_stop","2018-06-12 16:24:36","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tm_passengers","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","tm_vehicle_details","2018-06-12 16:24:37","0","1","0");
INSERT INTO innodb_table_stats VALUES("mapme_test_1","users_login","2018-06-12 16:24:45","0","1","5");
INSERT INTO innodb_table_stats VALUES("mysql","gtid_slave_pos","2015-11-06 20:43:16","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__bookmark","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__central_columns","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__column_info","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__designer_settings","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__export_templates","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__favorite","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__history","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__navigationhiding","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__pdf_pages","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__recent","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__relation","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__savedsearches","2015-11-10 20:55:30","0","1","1");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__table_coords","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__table_info","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__table_uiprefs","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__tracking","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__userconfig","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__usergroups","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("phpmyadmin","pma__users","2015-11-10 20:55:30","0","1","0");
INSERT INTO innodb_table_stats VALUES("test","database","2018-06-13 12:59:04","69","3","0");
INSERT INTO innodb_table_stats VALUES("test","demo_test","2018-06-13 16:41:00","0","1","0");



CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` int(10) unsigned NOT NULL,
  `updates` int(10) unsigned NOT NULL,
  `deletes` int(10) unsigned NOT NULL,
  `schemaops` int(10) unsigned NOT NULL,
  `orig_server_id` int(10) unsigned NOT NULL,
  `orig_epoch` bigint(20) unsigned NOT NULL,
  `gci` int(10) unsigned NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL plugins';




CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';




CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';




CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';

INSERT INTO proxies_priv VALUES("localhost","root","","","1","","2013-04-05 19:05:08");



CREATE TABLE `roles_mapping` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Role` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  UNIQUE KEY `Host` (`Host`,`User`,`Role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Granted roles';




CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(80) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';




CREATE TABLE `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  PRIMARY KEY (`Host`,`Port`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Master Information';




CREATE TABLE `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Relay Log Information';




CREATE TABLE `slave_worker_info` (
  `Id` int(10) unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_seqno` int(10) unsigned NOT NULL,
  `Checkpoint_group_size` int(10) unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Worker Information';




CREATE TABLE `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';




CREATE TABLE `table_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Statistics on Tables';




CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';




CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones';




CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';




CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';




CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';




CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';




CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) NOT NULL DEFAULT '0',
  `plugin` char(64) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `authentication_string` text COLLATE utf8_bin NOT NULL,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `is_role` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `default_role` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_statement_time` decimal(12,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

INSERT INTO user VALUES("localhost","root","","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","","","","","0","0","0","0","","","N","N","","0.000000");
INSERT INTO user VALUES("127.0.0.1","root","","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","","","","","0","0","0","0","","","N","N","","0.000000");
INSERT INTO user VALUES("::1","root","","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","Y","","","","","0","0","0","0","","","N","N","","0.000000");
INSERT INTO user VALUES("localhost","","","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","","","","","0","0","0","0","","","N","N","","0.000000");
INSERT INTO user VALUES("localhost","pma","","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","N","","","","","0","0","0","0","","","N","N","","0.000000");

