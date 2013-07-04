-- file-name: DBA.sql
-- 查询锁住的对象
SELECT l.session_id sid, s.serial#, l.locked_mode,l.oracle_username,
l.os_user_name,s.machine, s.terminal, o.object_name, s.logon_time
FROM v$locked_object l, all_objects o, v$session s
WHERE l.object_id = o.object_id
AND l.session_id = s.sid
ORDER BY sid, s.serial# ;

SELECT l.session_id sid, s.serial#, l.locked_mode, l.oracle_username, s.user#,
l.os_user_name,s.machine, s.terminal,a.sql_text, a.action
FROM v$sqlarea a,v$session s, v$locked_object l
WHERE l.session_id = s.sid
AND s.prev_sql_addr = a.address
ORDER BY sid, s.serial#;

SELECT s.sid, s.serial#, s.username, s.schemaname, s.osuser, s.process, s.machine,
s.terminal, s.logon_time, l.type
FROM v$session s, v$lock l
WHERE s.sid = l.sid
AND s.username IS NOT NULL
ORDER BY sid;

-- kill锁住的进程
-- alter system kill session'sid,serial#';
alter system kill session'34,74';

