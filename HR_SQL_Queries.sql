CREATE DATABASE hr_analytics;
SHOW TABLES;
SELECT * FROM hr_analytics;

#employe count
SELECT COUNT(*) AS Total_Employees
FROM hr_analytics;

#Attrition Analysis
SELECT Attrition,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY Attrition;

#Department Analysis#
SELECT Department,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY Department;

#Average Salary by Department
SELECT Department,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_analytics
GROUP BY Department
ORDER BY Avg_Salary DESC;

#Insight
#Departments with higher average salaries may reflect senior roles or specialized skill requirements.

#Attrition by Department#
SELECT Department,
       COUNT(*) AS Attrition_Count
FROM hr_analytics
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC;

#Some departments experience significantly higher attrition levels, indicating possible workload or employee satisfaction concerns.

#Gender Distribution#
SELECT Gender,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY Gender;

#The workforce distribution across genders helps understand organizational diversity trends.

#Overtime vs Attrition#
SELECT OverTime,
       Attrition,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY OverTime, Attrition;

#Employees working overtime tend to experience higher attrition compared to employees with no overtime.

#Average Age by Department#
SELECT Department,
       ROUND(AVG(Age),2) AS Avg_Age
FROM hr_analytics;

#Highest Paid Job Roles#
SELECT JobRole,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM hr_analytics
GROUP BY JobRole
ORDER BY Avg_Salary DESC;

#Management and specialized technical roles generally receive higher compensation.

#Employees by Education Field#
SELECT EducationField,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY EducationField
ORDER BY Employee_Count DESC;

#Job Satisfaction Distribution#
SELECT JobSatisfaction,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

#Lower job satisfaction levels may contribute to increased employee turnover.

#Average Years at Company#
SELECT ROUND(AVG(YearsAtCompany),2) AS Avg_Years
FROM hr_analytics;

#Business Travel Impact#
SELECT BusinessTravel,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY BusinessTravel;

#Employees who travel frequently for work may experience higher stress and turnover risk.

#Monthly Income by Attrition#
SELECT Attrition,
       ROUND(AVG(MonthlyIncome),2) AS Avg_Income
FROM hr_analytics
GROUP BY Attrition;

#Employees who left the organization tend to have lower average income compared to retained employees.

#Work-Life Balance Analysis#
SELECT WorkLifeBalance,
       COUNT(*) AS Employee_Count
FROM hr_analytics
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;


