CREATE DATABASE fraud_db;
USE fraud_db;

CREATE TABLE devices (
    device_id INT PRIMARY KEY AUTO_INCREMENT,
    device_type VARCHAR(50),
    operating_system VARCHAR(50),
    is_flagged BOOLEAN DEFAULT FALSE
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    location VARCHAR(50)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    device_id INT,
    transaction_amount DECIMAL(10,2),
    transaction_location VARCHAR(50),
    transaction_time DATETIME,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (device_id) REFERENCES devices(device_id)
);

CREATE TABLE fraud_alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_id INT,
    risk_reason VARCHAR(255),
    alert_time DATETIME,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);
