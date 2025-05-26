/*Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
FOUNDER -> LEAD_MANAGER -> SENIOR_MANAGER ->MANAGER -> EMPLOYEE
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:
The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

The following tables contain company data:

Company: The company_code is the code of the company and founder is the founder of the company.
Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company.
Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 
Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company. 
Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.*/


select 
C.company_code,
C.founder,
COUNT(DISTINCT LM.lead_manager_code) as total_lead_managers,
COUNT(DISTINCT SM.senior_manager_code) as total_senior_managers,
COUNT(DISTINCT M.manager_code) as  total_managers,
COUNT(DISTINCT E.employee_code) as  total_employees

FROM Company C

LEFT JOIN
Lead_Manager LM ON C.company_code=LM.company_code

LEFT JOIN
Senior_Manager SM ON C.Company_code=SM.company_code

LEFT JOIN
Manager M ON C.company_code=M.company_code

LEFT JOIN
Employee E ON C.Company_code=E.company_code

GROUP BY company_code,founder

ORDER BY company_code;
