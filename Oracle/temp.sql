-- 多字段的Update语句
update tbl_a
set (c_a_1, c_a_2 ... c_a_n)=(select c_b_1, c_b_2 ... c_b_n from tbl_b where ...)
where ...


-- Oracle Env
设置日期语言     
   ALTER SESSION SET NLS_DATE_LANGUAGE='AMERICAN';     
   也可以这样     
   TO_DATE ('2002-08-26', 'YYYY-mm-dd', 'NLS_DATE_LANGUAGE = American') 
