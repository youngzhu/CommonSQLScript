-- Function
-- Date
-- 年（Year）
---- yy
select to_char(sysdate, 'yy') from dual;
---- yyy
select to_char(sysdate, 'yyy') from dual;
---- yyyy
select to_char(sysdate, 'yyyy') from dual;
---- y
select to_char(sysdate, 'y') from dual;

-- 月（Month）
---- mm
select to_char(sysdate, 'mm') from dual;
---- mon - 2月，如果是英文环境，显示英文简称
select to_char(sysdate, 'mon') from dual;
---- mon - 2月，如果是英文环境，显示英文全称
select to_char(sysdate, 'month') from dual;

-- 天（Day）
---- dd - 当月第N天，几号
select to_char(sysdate, 'dd') from dual;
---- ddd - 当年第N天
select to_char(sysdate, 'ddd') from dual;
---- dy - 当周第N天 - 星期一，如果是英文环境，显示英文简称
select to_char(sysdate, 'dy') from dual;
---- day - 当周第N天 - 星期一，如果是英文环境，显示英文全称
select to_char(sysdate, 'day') from dual;


-- 时（Hour）
---- hh - 12时制 1:00:00 - 12:59:59
select to_char(sysdate, 'hh') from dual;
---- hh - 24时制 0:00:00 - 23:59:59
select to_char(sysdate, 'hh24') from dual;

-- 分钟（Minute）
---- mi
select to_char(sysdate, 'mi') from dual;


-- 秒（Second）
-- ss
select to_char(sysdate, 'ss') from dual;


-- 其他
---- q 季度
select to_char(sysdate, 'q') from dual;
---- ww 当年第几周
select to_char(sysdate, 'ww') from dual;
---- w 当月第几周（？？？？？）
select to_char(sysdate, 'w') from dual;

--
select to_char(to_date(1999, 'J'), 'Jsp') from dual;

--两个日期间的天数     
select floor(sysdate - to_date('20130202','yyyymmdd')) from dual;

--
select last_day(sysdate) from dual;

-- 当前开始（不包括今天），下一个星期 N （1。。7 => 星期日。。星期六）
select next_day(sysdate,3) from dual;

-- round 舍入到最接近的日期
select round(sysdate) from dual;

select round(sysdate, 'year') from dual;
select round(sysdate, 'month') from dual;
--舍入到最接近的星期日
select round(sysdate, 'day') from dual;

-- trunc 截断到最接近的日期,单位为天 ,返回的是日期类型
-- 
select trunc(sysdate) from dual;
select trunc(sysdate, 'year') from dual;
select trunc(sysdate, 'month') from dual;
select trunc(sysdate, 'day') from dual;
