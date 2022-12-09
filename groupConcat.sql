SELECT
    GROUP_CONCAT(balance),
    CONCAT(c.last_name, ', ', c.first_name) AS NAME
FROM
    accounts AS a
INNER JOIN customers AS c USING(customer_id)
GROUP BY
    (a.customer_id)
ORDER BY NAME;
