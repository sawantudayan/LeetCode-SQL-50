SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    EMPLOYEE
WHERE
    PRIMARY_FLAG = 'Y'
GROUP BY
    EMPLOYEE_ID

UNION

SELECT
    EMPLOYEE_ID,
    DEPARTMENT_ID
FROM
    EMPLOYEE
GROUP BY
    EMPLOYEE_ID
HAVING
    COUNT(*) = 1