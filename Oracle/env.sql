-- Oracle Env

--设置日期语言     
   ALTER SESSION SET NLS_DATE_LANGUAGE='AMERICAN';     
   --也可以这样     
   TO_DATE ('2002-08-26', 'YYYY-mm-dd', 'NLS_DATE_LANGUAGE = American') 