INSERT INTO devices (device_type, operating_system, is_flagged)
VALUES ('Mobile', 'Android', FALSE),
       ('Laptop', 'Windows', TRUE);

INSERT INTO customers (customer_name, location)
VALUES ('Ravi Kumar', 'Hyderabad'),
       ('Anita Sharma', 'Bangalore');

INSERT INTO transactions
(customer_id, device_id, transaction_amount, transaction_location, transaction_time)
VALUES
(1, 1, 120000, 'Delhi', NOW()),
(2, 2, 5000, 'Bangalore', NOW());
