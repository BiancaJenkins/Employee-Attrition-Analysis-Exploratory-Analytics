CREATE TABLE employees AS
SELECT DISTINCT
    employeenumber as employee_id,
    jobrole as job_role,
    joblevel as job_level,
    department,
    yearsatcompany
FROM employeedata_cleaned;

CREATE TABLE employee_experience AS
SELECT
    employeenumber as employee_id,
	performancerating as performance_rating,
    jobsatisfaction as engagement_score,
    relationshipsatisfaction as manager_support_score,
    environmentsatisfaction as growth_opportunity_score
FROM employeedata_cleaned;

CREATE TABLE training_activity AS
SELECT
    employeenumber as employee_id,
    (trainingtimeslastyear * 2) AS training_hours,
    trainingtimeslastyear AS training_count
FROM employeedata_cleaned;

ALTER TABLE employees
RENAME yearsatcompany TO tenure_months

UPDATE employees
SET yearsatcompany = (yearsatcompany * 12)

CREATE TABLE employee_attrition_model AS
SELECT
    e.employee_id,
    e.job_role,
    e.job_level,
    e.department,
    e.tenure_months,

    ex.performance_rating,
    ex.engagement_score,
    ex.manager_support_score,
    ex.growth_opportunity_score,

    t.training_hours,
    t.training_count,

    r.attrition
FROM employees e
LEFT JOIN employee_experience ex
    ON e.employee_id = ex.employee_id
LEFT JOIN training_activity t
    ON e.employee_id = t.employee_id
LEFT JOIN employeedata_cleaned r
    ON e.employee_id = r.employeenumber;

-- One row per employee
SELECT employee_id, COUNT(*)
FROM employee_attrition_model
GROUP BY employee_id
HAVING COUNT(*) > 1;

-- Check class balance
SELECT attrition, COUNT(*)
FROM employee_attrition_model
GROUP BY attrition;
