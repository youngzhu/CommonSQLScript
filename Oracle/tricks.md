0. 从表 TBL_FOO 中随机取出 N 条记录

        select * from 
        (
         select * from TBL_FOO order by DBMS_RANDOM.VALUE 
        ) where rownum <= N 
