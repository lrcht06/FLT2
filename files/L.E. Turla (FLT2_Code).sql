CREATE DATABASE schoolworkDB;
USE schoolworkDB;

-- Table 1: Student Table --
CREATE TABLE student(
    username VARCHAR(50) PRIMARY KEY);

DESCRIBE student;

-- Table 2: Assignment Table --
CREATE TABLE assignment(
    shortname VARCHAR(50) PRIMARY KEY,
    due_date DATE NOT NULL,
    url VARCHAR(255));
    
DESCRIBE assignment;
    
-- Table 3: Submission Table --
CREATE TABLE submission(
    username VARCHAR(50),
	FOREIGN KEY (username) REFERENCES student(username) ON DELETE CASCADE,
    shortname VARCHAR(50),
	FOREIGN KEY (shortname) REFERENCES assignment(shortname) ON DELETE CASCADE,
    version INT,
    submit_date DATE NOT NULL,
    data TEXT,
    PRIMARY KEY (username, shortname, version));
    
    DESCRIBE submission;
    
    