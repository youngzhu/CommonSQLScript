重复数据
=======

>判定重复的条件：EMP_NO 和 EMP_NAME 都相同，则判定为重复
>
>where 条件即为判断重复的因子列

查看重复记录
-----------

	SELECT * FROM TBL_EMP A
	WHERE (SELECT COUNT(1) FROM TBL_EMP B WHERE A.EMP_NO=B.EMP_NO AND A.EMP_NAME=B.EMP_NAME) > 1
	ORDER BY A.EMP_NO

删除重复记录
-----------

###删除所有重复的记录

	DELETE FROM TBL_EMP A
	WHERE (SELECT COUNT(1) FROM TBL_EMP B WHERE A.EMP_NO=B.EMP_NO AND A.EMP_NAME=B.EMP_NAME) > 1

###删除重复的记录，保留一条

####使用ROWID（仅适用于Oracle）

	DELETE FROM TBL_EMP A
	WHERE A.ROWID > (SELECT MIN(B.ROWID) FROM TBL_EMP B WHERE A.EMP_NO=B.EMP_NO AND A.EMP_NAME=B.EMP_NAME)

####使用临时表
	#1、创建临时表
	#2、复制唯一的数据到临时表
		INSERT INTO TBL_EMP_TEMP
		(SELECT DISTINCT * FROM TBL_EMP)
	#3、清空原先的表，插入临时表里的数据，删除临时表