分页(Paging)
===

1. 第 N + 1 条记录 到 第 M 条记录，共 M - N 条记录(最常用的)

		select t2.* from 
		(select rownum rn, t1.* from [TBL_NAME] t1 where rownum <= M) t2
		where t2.rn > N

	> 注：rownum，只能用 < 或者 <=

2. minus  

		select * from [TBL_NAME] where rownum <= M
		minus
		select * from [TBL_NAME] where rownum <= N

3. Top N

		select * from [TBL_NAME]
		where rownum <= N


4. Top N， 排序（查询最新的 N 条记录）

		select * from 
		(select [ADD_DATE] from [TBL_NAME]
		order by [ADD_DATE] desc)
		where rownum < N

	> 下面的语句是不行的
	> 
	> 因为Oracle先根据[WHERE]查询记录，然后再排序
	> 
	> select [ADD_DATE] from [TBL_NAME]  
	> where rownum < N  
	> order by [ADD_DATE] desc

