# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 11494
#260818 20:16:14 server id 1  end_log_pos 0 CRC32 0xf2fe2c97 	Start: binlog v 4, server v 8.0.46-1 created 260818 20:16:14
BINLOG '
7hGFag8BAAAAegAAAAAAAAAAAAQAOC4wLjQ2LTEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAZcs/vI=
'/*!*/;
# at 11494
#260819  0:59:08 server id 1  end_log_pos 11538 CRC32 0x7f60f4d4 	Rotate to binlog.000215  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
# at 4
#260819  0:59:08 server id 1  end_log_pos 126 CRC32 0xcea7946b 	Start: binlog v 4, server v 8.0.46-1 created 260819  0:59:08
BINLOG '
PFSFag8BAAAAegAAAH4AAAAAAAQAOC4wLjQ2LTEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAWuUp84=
'/*!*/;
# at 126
#260819  0:59:08 server id 1  end_log_pos 157 CRC32 0x30d2a4ff 	Previous-GTIDs
# [empty]
# at 157
#260819  1:01:39 server id 1  end_log_pos 236 CRC32 0x26b8d994 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1787122899276258	immediate_commit_timestamp=1787122899276258	transaction_length=1620
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1787122899276258 (2026-08-19 01:01:39.276258 CST)
# immediate_commit_timestamp=1787122899276258 (2026-08-19 01:01:39.276258 CST)
/*!80001 SET @@session.original_commit_timestamp=1787122899276258*//*!*/;
/*!80014 SET @@session.original_server_version=80046*//*!*/;
/*!80014 SET @@session.immediate_server_version=80046*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#260819  1:01:39 server id 1  end_log_pos 323 CRC32 0x1db9e3d1 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1787122899/*!*/;
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
# at 323
#260819  1:01:39 server id 1  end_log_pos 397 CRC32 0x6c1f6499 	Table_map: `hotel_db`.`LOG_HABITACION` mapped to number 100
# has_generated_invisible_primary_key=0
# at 397
#260819  1:01:39 server id 1  end_log_pos 1746 CRC32 0xa4c4a252 	Write_rows: table id 100 flags: STMT_END_F

BINLOG '
01SFahMBAAAASgAAAI0BAAAAAGQAAAAAAAEACGhvdGVsX2RiAA5MT0dfSEFCSVRBQ0lPTgADEg8D
AwDIAAABAQACA/z/AJlkH2w=
01SFah4BAAAARQUAANIGAAAAAGQAAAAAAAEAAgAD/wCZuMKAQApEaXNwb25pYmxlGwAAAACZuMKA
gApEaXNwb25pYmxlGQAAAACZuMKAwA1NYW50ZW5pbWllbnRvFQAAAACZuMKBAApEaXNwb25pYmxl
CQAAAACZuMKBQA1NYW50ZW5pbWllbnRvAwAAAACZuMKBgApEaXNwb25pYmxlCAAAAACZuMKBwApE
aXNwb25pYmxlCwAAAACZuMKCAApEaXNwb25pYmxlHQAAAACZuMKCQApEaXNwb25pYmxlBQAAAACZ
uMKCgApEaXNwb25pYmxlCAAAAACZuMKCwA1NYW50ZW5pbWllbnRvFwAAAACZuMKDAApEaXNwb25p
YmxlFwAAAACZuMKDQApEaXNwb25pYmxlAwAAAACZuMKDgA1NYW50ZW5pbWllbnRvDgAAAACZuMKD
wApEaXNwb25pYmxlEgAAAACZuMKEAA1NYW50ZW5pbWllbnRvDgAAAACZuMKEQApEaXNwb25pYmxl
BwAAAACZuMKEgA1NYW50ZW5pbWllbnRvDQAAAACZuMKEwApEaXNwb25pYmxlHAAAAACZuMKFAA1N
YW50ZW5pbWllbnRvEAAAAACZuMKFQApEaXNwb25pYmxlDAAAAACZuMKFgApEaXNwb25pYmxlGQAA
AACZuMKFwA1NYW50ZW5pbWllbnRvHAAAAACZuMKGAA1NYW50ZW5pbWllbnRvEgAAAACZuMKGQApE
aXNwb25pYmxlEAAAAACZuMKGgApEaXNwb25pYmxlCQAAAACZuMKGwA1NYW50ZW5pbWllbnRvEAAA
AACZuMKHAApEaXNwb25pYmxlDQAAAACZuMKHQApEaXNwb25pYmxlFgAAAACZuMKHgA1NYW50ZW5p
bWllbnRvGAAAAACZuMKHwApEaXNwb25pYmxlGwAAAACZuMKIAA1NYW50ZW5pbWllbnRvHgAAAACZ
uMKIQApEaXNwb25pYmxlFAAAAACZuMKIgApEaXNwb25pYmxlHgAAAACZuMKIwA1NYW50ZW5pbWll
bnRvEwAAAACZuMKJAApEaXNwb25pYmxlAwAAAACZuMKJQA1NYW50ZW5pbWllbnRvBQAAAACZuMKJ
gA1NYW50ZW5pbWllbnRvBgAAAACZuMKJwApEaXNwb25pYmxlCQAAAACZuMKKAA1NYW50ZW5pbWll
bnRvCwAAAACZuMKKQApEaXNwb25pYmxlDwAAAACZuMKKgApEaXNwb25pYmxlCwAAAACZuMKKwA1N
YW50ZW5pbWllbnRvCQAAAACZuMKLAA1NYW50ZW5pbWllbnRvCQAAAACZuMKLQApEaXNwb25pYmxl
EAAAAACZuMKLgApEaXNwb25pYmxlGAAAAACZuMKLwApEaXNwb25pYmxlDAAAAACZuMKMAApEaXNw
b25pYmxlFQAAAACZuMKMQApEaXNwb25pYmxlGQAAAACZuMKMgApEaXNwb25pYmxlGQAAAACZuMKM
wApEaXNwb25pYmxlCAAAAACZuMKNAApEaXNwb25pYmxlGwAAAACZuMKNQApEaXNwb25pYmxlFAAA
AACZuMKNgApEaXNwb25pYmxlCAAAAACZuMKNwApEaXNwb25pYmxlEAAAAACZuMKOAApEaXNwb25p
YmxlEwAAAACZuMKOQApEaXNwb25pYmxlDwAAAACZuMKOgApEaXNwb25pYmxlGQAAAACZuMKOwApE
aXNwb25pYmxlBgAAAACZuMKQAApEaXNwb25pYmxlGQAAAFKixKQ=
'/*!*/;
# at 1746
#260819  1:01:39 server id 1  end_log_pos 1777 CRC32 0xcaca6561 	Xid = 391
COMMIT/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
