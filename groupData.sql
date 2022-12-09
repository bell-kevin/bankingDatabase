SELECT
    SUM(balance) AS total,
    COUNT(account_id) AS NUMBER,
    CONCAT(c.last_name, ', ', c.first_name) AS NAME
FROM
    accounts AS a
INNER JOIN customers AS c USING(customer_id)
GROUP BY
    (a.customer_id)
ORDER BY NAME;
