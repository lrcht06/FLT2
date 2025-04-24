---

# Finals Lab Task 2: Transforming ER Model to Relational Tables
This portfolio demonstrates the transformation of an ER model into relational tables using MySQL. The focus is on defining entities, identifying keys, establishing relationships, and enforcing referential integrity constraints in line with the ER diagram representing student assignment submissions.

---

## STEP BY STEP PROCESS

### STEP 1. Launch MySQL Workbench or phpMyAdmin and start XAMPP to activate MySQL.

### STEP 2. Create a new database to store all the related tables.

### STEP 3. For each of the following tasks, write and execute the appropriate SQL query:

- #### Task 1 – Create the `student` table
  - Add a column named `username` using VARCHAR(50).
  - Set `username` as the primary key to uniquely identify each student.
    
- #### Task 2 – Create the `assignment` table
  - Define a column `shortname` as VARCHAR(50) and set it as the primary key.
  - Add a `due_date` column as DATE, and ensure it is not null.
  - Include a `url` column using VARCHAR(255) for storing resource or submission links.

- #### Task 3 – Create the `submission` table
  - Add `username` as a foreign key referencing the `student` table.
  - Add `shortname` as a foreign key referencing the assignment` table.
  - Include `version` as an INT for tracking multiple submissions.
  - Add `submit_date` as a DATE, which is required (not null).
  - Include a `data` column as TEXT to hold submission content.
  - Use a composite primary key of `username`, `shortname`, and `version`.

- #### Task 4 – Define relationships and apply referential integrity
  - Apply FOREIGN KEY constraints on `username` and `shortname` in the `submission` table.
  - Use ON DELETE CASCADE to ensure submissions are deleted if a student or assignment is removed.
  - Verify referential integrity is properly enforced across all relationships.

---


## Entity Relationship
- ### Student → Submission
  **One-to-Many** (One Student can `submit` many Submissions)
- ### Assignment → Submission 
  **One-to-Many** (One Assignment can `complete` many Submissions)

Each Submission is made by one Student for one Assignment

Multiple submissions for the same assignment from same student can be tracked by `version`

---

## Query Statements (Screenshots)
- ### Task 1
![screenshot](images/FLT2(T1).png)
- ### Task 2
![screenshot](images/FLT2(T2).png)
- ### Task 3
![screenshot](images/FLT2(T3).png)

---

## Table Structures (Screenshots)
- ### Table 1
![screenshot](images/FLT2(tbl1).png)
- ### Table 2
![screenshot](images/FLT2(tbl2).png)
- ### Table 3
![screenshot](images/FLT2(tbl3).png)

---

## EER Diagram (Screenshot)
![screenshot](images/FLT2(EER_Diagram).png)

---

## SQL Copy (File)
> 📂

---


