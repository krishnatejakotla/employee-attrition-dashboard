USE employeeattrition;
SELECT COUNT(*) AS Employees_Left
FROM hr_data
WHERE Attrition = 'Yes';
SELECT 
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate_Percent
FROM hr_data;
SELECT 
  Department,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;
SELECT 
  Department,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;
SELECT 
  Department,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;
SELECT 
  Department,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY Department
ORDER BY Attrition_Rate DESC;
SELECT 
  JobRole,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;
SELECT 
  OverTime,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY OverTime;
SELECT 
  CASE 
    WHEN MonthlyIncome < 3000 THEN 'Low Income'
    WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN 'Mid Income'
    ELSE 'High Income'
  END AS Income_Bracket,
  COUNT(*) AS Total_Employees,
  COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS Employees_Left,
  ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS Attrition_Rate
FROM hr_data
GROUP BY Income_Bracket
ORDER BY Attrition_Rate DESC;
