# Vehicle-Rental-# 🚗 Vehicle Rental System Database Project

## 📌 Project Title:
Vehicle Rental System using MySQL

---

## 📖 Description:
The Vehicle Rental System is a database management project developed to manage rental services for vehicles efficiently.  
It allows storing and managing information related to customers, drivers, vehicles, rentals, and payments.

This project is designed using an Entity Relationship (ER) model and implemented using MySQL database to maintain proper relationships between different entities.

---

## 🎯 Objectives:
- To manage customer information
- To store driver details
- To track available vehicles
- To manage vehicle rental records
- To record payment details
- To maintain relationship between drivers and vehicles

---

## 🛠️ Technologies Used:
- MySQL Workbench
- SQL
- ER Diagram (EER Model)
- Visual Studio Code

---

## 🗂️ Database Name:
vehiclerentaldb

---

## 🧩 Entities Used:

### 1. Customer
- customer_id (Primary Key)
- first_name
- last_name
- age
- email
- phone_number
- street
- house_no
- state
- pin

---

### 2. Driver
- driver_id (Primary Key)
- first_name
- last_name
- experience
- dob
- phone_number
- license_no
- street
- house_no
- state
- pin

---

### 3. Vehicle
- vehicle_id (Primary Key)
- model
- type
- vehicle_status
- rent_per_day

---

### 4. Rentals
- rental_id (Primary Key)
- customer_id (Foreign Key)
- vehicle_id (Foreign Key)
- rental_date
- return_date
- rental_status
- rental_duration

---

### 5. Payment
- payment_id (Primary Key)
- rental_id (Foreign Key)
- payment_status
- payment_date
- payment_mode
- amount

---

### 6. Drives (Relationship Table)
- driver_id (Foreign Key)
- vehicle_id (Foreign Key)

This table resolves the many-to-many relationship between Driver and Vehicle entities.

---

## 🔗 Relationships:

- One Customer can make many Rentals (1:N)
- One Vehicle can be rented many times (1:N)
- Each Rental has one Payment (1:1)
- Driver and Vehicle have a Many-to-Many (M:N) relationship resolved using Drives table

---

## 📊 ER Diagram:
The ER diagram represents the relationship between Customer, Driver, Vehicle, Rentals, and Payment entities.

---

## ✅ Features:
- Efficient vehicle rental tracking
- Customer and driver data management
- Payment record maintenance
- Relationship between driver and vehicle
- Rental status monitoring

---

## 👨‍🎓 Developed By:
Raj Gupta  
B.Tech 1st Year  
IILM University, Greater Noida

---

## 📅 Academic Year:
2025 – 2026

---
