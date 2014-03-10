分页（Paging）
=============

	## PAGE_NUM - 当前页
	## PAGE_SIZE - 每页显示条数
	SELECT * FROM [TAB_NAME] 
	LIMIT ([PAGE_NUM] - 1) * [PAGE_SIZE], [PAGE_SIZE]

得到表中的第 [N + 1]条 到 [N + M]条 记录，共 M 条
--------------------------------------

	SELECT * FROM [TAB_NAME] 
	LIMIT N, M

前 N 条记录
----------

	SELECT * FROM [TAB_NAME] 
	LIMIT N