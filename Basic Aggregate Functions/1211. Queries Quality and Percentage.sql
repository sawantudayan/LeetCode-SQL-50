SELECT
    QUERY_NAME,
    ROUND(AVG(RATING / POSITION), 2) AS QUALITY,
    ROUND(AVG(RATING < 3) * 100, 2) AS POOR_QUERY_PERCENTAGE
FROM
    QUERIES
WHERE
    QUERY_NAME != "NULL"
GROUP BY
    QUERY_NAME