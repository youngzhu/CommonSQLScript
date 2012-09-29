-- 分页
-- Paging

-- 第 N + 1 条记录 到 第 M 条记录，共 M - N 条记录
-- 最常用的
-- 注：rownum，只能用 < 或者 <=
select t2.* from 
(select rownum rn, t1.* from [TBL_NAME] t1 where rownum <= M) t2
where t2.rn > N

-- 
select * from [TBL_NAME] where rownum <= M
minus
select * from [TBL_NAME] where rownum <= N

-- Top N
select * from [TBL_NAME]
where rownum <= N


-- Top N， 排序（查询最新的 N 条记录）
-- 1、
select * from 
(select lrsj from [TBL_NAME]
order by [ADD_DATE] desc)
where rownum < N

-- 2、
-- 这个脚本，有时起作用，有时不起。 可能和数据库（表）的某个设置有关（目前还不知道是哪个设置）
-- 网上有解释说，Oracle先根据where查出前 N 条记录，再排序
select lrsj from [TBL_NAME]
where rownum < N 
order by [ADD_DATE] desc