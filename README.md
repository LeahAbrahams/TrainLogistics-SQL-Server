# SQL-Railway-Management-System

A comprehensive SQL relational database for managing railway logistics, staff salaries, and schedules, featuring stored procedures, triggers, and complex views.

## Project Overview
This project presents the design and implementation of a Relational Database for a railway management system. The system enables the management of staff, roles, and salaries, as well as travel routes, schedules, and tracking train arrivals at stations.

The system was developed as a SQL project that meets advanced technical requirements, including procedures, triggers, views, and complex queries.

## Database Structure (ERD)
The database consists of 9 interconnected tables:



### Core Tables:
* **Staff & Roles**: Management of employees (`staff`) and positions (`roles`), including hourly wage calculations.
* **Trains & Routes**: Management of trains (`trains`), routes (`trainRoute`), and stations (`stations`).
* **Many-to-Many Relationships**: Linking employees to trains (`staff_trains`) and routes to stations (`route_stations`).
* **Scheduling**: Management of schedules (`times`) and arrival tracking (`arrival`).

## Technical Implementation

### 1. Stored Procedures
* **updateSalary**: A procedure that updates an employee's monthly salary based on seniority and hourly wage.
* **TimeOfTrainArrival**: A procedure that retrieves arrival time and station data for a specific train.

### 2. Views
* **showStaffsDetails**: A complex view that joins 4 tables to display a report of employees, their roles, and their assigned trains.
* **showStation**: A view that displays specific data (station names) from the stations table.

### 3. Triggers
* **EyeTest**: A trigger activated after a new employee is added (AFTER INSERT) to verify the eye test status for employees in driver roles.

### 4. Advanced Queries
* Use of **Sub-queries** to retrieve employees with salaries above the average.
* Use of **Group By** and **Having** to analyze the number of routes.
* **Check** and **Default** constraints to maintain data integrity.

## Execution Instructions
1. Run the table creation scripts (Schema).
2. Add the initial data using the Insert file.
3. Load the Views, Procedures, and Triggers.
4. Use the Exec files to test the system logic.

---
**Submitted as a final project as part of SQL studies - Year 2025.**
