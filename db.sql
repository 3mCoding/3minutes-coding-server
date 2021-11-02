create database tmc_db;

use tmc_db

create table user(
    email VARCHAR(50) PRIMARY KEY,
    student_num INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(200) NOT NULL,
	date DATETIME
);

create table question_step(
    student_num INT PRIMARY KEY,
    stemp INT NOT NULL
);