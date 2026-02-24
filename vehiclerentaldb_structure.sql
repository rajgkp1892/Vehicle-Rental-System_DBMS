CREATE DATABASE vehiclerentaldb;
USE vehiclerentaldb;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    street VARCHAR(100),
    house_no VARCHAR(20),
    state VARCHAR(50),
    pin INT
);

CREATE TABLE driver (
    driver_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    experience INT,
    dob DATE,
    phone_number VARCHAR(15),
    license_no VARCHAR(30),
    street VARCHAR(100),
    house_no VARCHAR(20),
    state VARCHAR(50),
    pin INT
);

CREATE TABLE vehicle (
    vehicle_id INT PRIMARY KEY,
    model VARCHAR(50),
    type VARCHAR(30),
    vehicle_status VARCHAR(20),
    rent_per_day DECIMAL(8,2)
);

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    customer_id INT,
    vehicle_id INT,
    rental_date DATE,
    return_date DATE,
    rental_status VARCHAR(20),
    rental_duration INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(vehicle_id)
);

CREATE TABLE payment (
    payment_id INT PRIMARY KEY,
    rental_id INT UNIQUE,
    payment_status VARCHAR(20),
    payment_date DATE,
    payment_mode VARCHAR(20),
    amount DECIMAL(10,2),
    FOREIGN KEY (rental_id) REFERENCES rentals(rental_id)
);

CREATE TABLE drives (
    driver_id INT,
    vehicle_id INT,
    CONSTRAINT fk_driver
    FOREIGN KEY (driver_id)
    REFERENCES driver(driver_id),
    CONSTRAINT fk_vehicle
    FOREIGN KEY (vehicle_id)
    REFERENCES vehicle(vehicle_id)
);