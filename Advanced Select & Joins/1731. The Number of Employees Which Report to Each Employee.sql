# Write your MySQL query statement below
SELECT
    B.EMPLOYEE_ID,
    B.NAME,
    COUNT(A.EMPLOYEE_ID) AS REPORT_COUNT,
    ROUND(AVG(A.AGE)) AS AVERAGE_AGE
FROM
    EMPLOYEES A
    JOIN EMPLOYEES B ON A.REPORTS_TO = B.EMPLOYEE_ID
GROUP BY
    EMPLOYEE_ID
ORDER BY
    EMPLOYEE_ID