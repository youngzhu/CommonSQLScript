表结构相关的SQL (About the Structure of Table)
==

> 注：以下的[YOUR_TAB_NAME]需要大写  
> Notice：The table name [YOUR_TAB_NAME] should be Upper Case

表信息(Table Info)
---
	select * from user_tables t, user_tab_comments c
	where c.table_name = t.table_name
	and t.table_name = '[YOUR_TAB_NAME]'

列信息(Column Info)
----
	select * from user_tab_columns t, user_col_comments c
	where t.table_name = c.table_name
	and t.column_name = c.column_name
	and t.table_name = '[YOUR_TAB_NAME]'
	order by t.column_id

	select col.COLUMN_NAME, -- 列名
			col.DATA_TYPE, -- 数据类型
			(CASE
				WHEN col.DATA_TYPE='NUMBER' THEN
				  col.DATA_PRECISION || ',' || col.DATA_SCALE
				ELSE
				  col.DATA_LENGTH || ''
			END) V_DATA_LEN, -- 数据长度
			com.COMMENTS, -- 列备注
			col.NULLABLE -- 是否可为空
	from user_col_comments com, user_tab_columns col
	where com.TABLE_NAME = col.TABLE_NAME
		and com.COLUMN_NAME = col.COLUMN_NAME
		and col.TABLE_NAME = '[YOUR_TAB_NAME]'
	order by col.COLUMN_ID;

主键(Primary Key)
---
	select * from user_cons_columns ucc, user_constraints uc
	where uc.constraint_type='P'
	and ucc.table_name = '[YOUR_TAB_NAME]'
	and ucc.constraint_name = uc.constraint_name

> 其他约束，可参考同目录下 [ConstraintType.png]  
For more information about Constraint Type, please refer to the image ConstraintType.png, which in the same path

索引(Index)
-----
	select * from user_ind_columns c, user_indexes i
	where c.table_name = '[YOUR_TAB_NAME]'
	and c.index_name = i.index_name
	and c.table_name = i.table_name
