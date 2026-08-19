# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 7095
#260819  0:59:08 server id 1  end_log_pos 0 CRC32 0x0320f55f 	Start: binlog v 4, server v 8.0.46-1 created 260819  0:59:08
BINLOG '
PFSFag8BAAAAegAAAAAAAAAAAAQAOC4wLjQ2LTEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAV/1IAM=
'/*!*/;
# at 7095
#260819  1:19:46 server id 1  end_log_pos 7174 CRC32 0x8d7986ec 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=yes	original_committed_timestamp=1787123986655151	immediate_commit_timestamp=1787123986655151	transaction_length=1524
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1787123986655151 (2026-08-19 01:19:46.655151 CST)
# immediate_commit_timestamp=1787123986655151 (2026-08-19 01:19:46.655151 CST)
/*!80001 SET @@session.original_commit_timestamp=1787123986655151*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 7174
#260819  1:19:46 server id 1  end_log_pos 7261 CRC32 0x59164fe4 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1787123986/*!*/;
SET @@session.pseudo_thread_id=9/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.time_zone='SYSTEM'/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 7261
#260819  1:19:46 server id 1  end_log_pos 7335 CRC32 0x91244e90 	Table_map: `hotel_db`.`LOG_HABITACION` mapped to number 100
# has_generated_invisible_primary_key=0
# at 7335
#260819  1:19:46 server id 1  end_log_pos 8588 CRC32 0x3a3133aa 	Write_rows: table id 100 flags: STMT_END_F

BINLOG '
ElmFahMBAAAASgAAAKccAAAAAGQAAAAAAAEACGhvdGVsX2RiAA5MT0dfSEFCSVRBQ0lPTgADEg8D
AwDIAAABAQACA/z/AJBOJJE=
ElmFah4BAAAA5QQAAIwhAAAAAGQAAAAAAAEAAgAD/wCZugKAQApEaXNwb25pYmxlHQAAAACZugKA
gApEaXNwb25pYmxlCgAAAACZugKAwA1NYW50ZW5pbWllbnRvAgAAAACZugKBAAdPY3VwYWRhGAAA
AACZugKBQAdPY3VwYWRhAwAAAACZugKBgAdPY3VwYWRhCwAAAACZugKBwA1NYW50ZW5pbWllbnRv
BgAAAACZugKCAAdPY3VwYWRhBQAAAACZugKCQAdPY3VwYWRhEQAAAACZugKCgAdPY3VwYWRhGwAA
AACZugKCwAdPY3VwYWRhCQAAAACZugKDAA1NYW50ZW5pbWllbnRvGgAAAACZugKDQAdPY3VwYWRh
GAAAAACZugKDgAdPY3VwYWRhGgAAAACZugKDwApEaXNwb25pYmxlDwAAAACZugKEAApEaXNwb25p
YmxlBQAAAACZugKEQAdPY3VwYWRhHAAAAACZugKEgA1NYW50ZW5pbWllbnRvHAAAAACZugKEwAdP
Y3VwYWRhAwAAAACZugKFAA1NYW50ZW5pbWllbnRvAQAAAACZugKFQAdPY3VwYWRhEgAAAACZugKF
gApEaXNwb25pYmxlDwAAAACZugKFwAdPY3VwYWRhFgAAAACZugKGAAdPY3VwYWRhEwAAAACZugKG
QA1NYW50ZW5pbWllbnRvGwAAAACZugKGgAdPY3VwYWRhBAAAAACZugKGwAdPY3VwYWRhEAAAAACZ
ugKHAApEaXNwb25pYmxlFAAAAACZugKHQAdPY3VwYWRhHgAAAACZugKHgAdPY3VwYWRhFQAAAACZ
ugKHwApEaXNwb25pYmxlFQAAAACZugKIAA1NYW50ZW5pbWllbnRvHgAAAACZugKIQAdPY3VwYWRh
FQAAAACZugKIgA1NYW50ZW5pbWllbnRvBAAAAACZugKIwAdPY3VwYWRhAgAAAACZugKJAApEaXNw
b25pYmxlCgAAAACZugKJQA1NYW50ZW5pbWllbnRvBAAAAACZugKJgApEaXNwb25pYmxlCAAAAACZ
ugKJwAdPY3VwYWRhDQAAAACZugKKAA1NYW50ZW5pbWllbnRvDAAAAACZugKKQA1NYW50ZW5pbWll
bnRvEwAAAACZugKKgAdPY3VwYWRhHQAAAACZugKKwA1NYW50ZW5pbWllbnRvFQAAAACZugKLAApE
aXNwb25pYmxlGwAAAACZugKLQA1NYW50ZW5pbWllbnRvFAAAAACZugKLgA1NYW50ZW5pbWllbnRv
CQAAAACZugKLwApEaXNwb25pYmxlFwAAAACZugKMAAdPY3VwYWRhBwAAAACZugKMQA1NYW50ZW5p
bWllbnRvDwAAAACZugKMgAdPY3VwYWRhHAAAAACZugKMwAdPY3VwYWRhBAAAAACZugKNAAdPY3Vw
YWRhEgAAAACZugKNQAdPY3VwYWRhAgAAAACZugKNgA1NYW50ZW5pbWllbnRvCQAAAACZugKNwAdP
Y3VwYWRhBAAAAACZugKOAA1NYW50ZW5pbWllbnRvAwAAAACZugKOQAdPY3VwYWRhFQAAAACZugKO
gApEaXNwb25pYmxlAgAAAACZugKOwAdPY3VwYWRhCAAAAACZugKQAAdPY3VwYWRhGgAAAKozMTo=
'/*!*/;
# at 8588
#260819  1:19:46 server id 1  end_log_pos 8619 CRC32 0x7b4ecd34 	Xid = 628
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
