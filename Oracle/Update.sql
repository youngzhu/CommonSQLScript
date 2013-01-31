-- ¶à×Ö¶ÎµÄUpdateÓï¾ä
update tbl_a
set (c_a_1, c_a_2 ... c_a_n)=(select c_b_1, c_b_2 ... c_b_n from tbl_b where ...)
where ...