SELECT
    A.STUDENT_ID,
    A.STUDENT_NAME,
    B.SUBJECT_NAME,
    COUNT(C.SUBJECT_NAME) AS ATTENDED_EXAMS
FROM
    STUDENTS A
    JOIN SUBJECTS B
    LEFT JOIN EXAMINATIONS C ON A.STUDENT_ID = C.STUDENT_ID
    AND B.SUBJECT_NAME = C.SUBJECT_NAME
GROUP BY
    1,3
ORDER BY
    1,3