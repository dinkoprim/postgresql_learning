CREATE TYPE adress AS (
    street VARCHAR(100),
    city VARCHAR(100),
    postal_code CHAR(4)
);

CREATE TABLE minions_adresses (
    id SERIAL PRIMARY KEY,
    minion_name VARCHAR(150),
    minion_adress adress
);

INSERT INTO 
    minions_adresses (minion_name, minion_adress) 
VALUES 
    ('Mincho', ('Glavnata', 'Sofia', '1000'));

SELECT
    (minion_adress).street
FROM
    minions_adresses;