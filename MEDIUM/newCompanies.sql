Link : https://www.hackerrank.com/challenges/the-company/problem?h_r=profile

--- Question states that we're given 5 tables : company, lead_manger,senior_manger
--- Manager, employee TABLES. We need to find the company code, founder_name,
---  total(lead_manager), total(senior_manager), total(Managers), total(employees)
--- And order the output according to company_Code (VARCHAR)  


SELECT c1.company_code, c1.founder,
       COUNT(DISTINCT lm.lead_manager_code),
       COUNT(DISTINCT sm.senior_manager_code),
       COUNT(DISTINCT mn.manager_code),
       COUNT(DISTINCT emp.employee_code)
FROM company c1 

--- Perform INNER JOIN wherever, we find the same : company_Code
--- Because that means, that person belongs to this specific company
INNER JOIN Lead_Manager lm ON c1.company_code = lm.company_code
INNER JOIN Senior_Manager sm ON lm.company_code = sm.company_code
INNER JOIN Manager mn ON sm.company_code = mn.company_code
INNER JOIN Employee emp ON mn.company_code = emp.company_code
GROUP BY c1.company_code, c1.founder
ORDER BY c1.company_code;
