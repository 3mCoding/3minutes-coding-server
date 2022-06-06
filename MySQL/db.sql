create database tmc;

use tmc

create table user(
    email VARCHAR(50) PRIMARY KEY,
    student_num INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    password VARCHAR(200) NOT NULL,
    step INT NOT NULL, 
	date DATETIME
);

create table question_step(
    student_num INT PRIMARY KEY,
    step INT NOT NULL, 
    date DATETIME
);
-- java 0
-- c 1
-- cpp 2
create table question(
    id INT PRIMARY KEY,
    no INT Not NULL,
    answer_num INT NOT NULL,
    type VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    question VARCHAR(200) NOT NULL,
    print VARCHAR(200) NOT NULL,
    code VARCHAR(500) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

create table question_answer(
    id INT PRIMARY KEY,
    num_answers INT NOT NULL,
    answers VARCHAR(100) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

create table question_desc(
    id INT PRIMARY KEY,
    desc_path VARCHAR(255) NOT NULL
);

create table question_rec(
    id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(500) NOT NULL,
    student_num INT NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;