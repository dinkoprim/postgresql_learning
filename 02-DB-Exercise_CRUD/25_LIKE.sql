SELECT 
    name,
    start_date
FROM
    projects AS p
WHERE
    name ILIKE 'MOUNT%' -- ILIKE is case insensitive and LIKE is case sesitive
ORDER BY
    p.id ASC
;