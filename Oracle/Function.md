1. to_char

		select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss') from dual;

	> - Format 大小写无关。
	> 
	> - hh24-24小时制
	
2. substr(str, startIndex, length)

	> 第一位从 <font color='red'>**1**</font> 开始，而不是 0
	