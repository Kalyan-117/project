-- Databricks notebook source
select*from emp_attrition

-- COMMAND ----------

select sum(employeecount)from emp_attrition

-- COMMAND ----------

select sum(employeecount), attrition from emp_attrition
group by 2

-- COMMAND ----------

SELECT sum(employeecount),
CASE WHEN age between 20 and 25 then '20-25'WHEN age between 26 and 32 then '26-32'WHEN age between 33 and 40 then '33-40'else '40+' end age_group
FROM emp_attrition
WHERE attrition='Yes'
GROUP BY Age


-- COMMAND ----------

select sum(employeecount),department from emp_attrition
where attrition= 'Yes'
group by department

-- COMMAND ----------

select sum(employeecount),
case when Education=1 then "bellow college" when Education=2 then "college"when Education=3 then "bachelor"when Education=4 then "masters" else "doctor" end edu_geoup
from emp_attrition
where attrition= 'Yes'
group by 2

-- COMMAND ----------

select sum(employeecount),
EnvironmentSatisfaction
from emp_attrition
where attrition= 'Yes'
group by 2

-- COMMAND ----------

select sum(employeecount),
BusinessTravel
from emp_attrition
where attrition= 'Yes'
group by 2

-- COMMAND ----------


