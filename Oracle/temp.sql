-- Function
-- Date


-- To Char
--Format大小写无关。
--hh24-24小时制
select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss') from dual;



-- 多字段的Update语句
update tbl_a
set (c_a_1, c_a_2 ... c_a)=(select c_b_1, c_b_2 ... c_b_n from tbl_b where ...)
where ...
