CREATE TABLE student (
    STU_NUM char(6) PRIMARY KEY,
    STU_SNAME varchar(15),
    STU_FNAME varchar(15),
    STU_INITIAL char(1),
    STU_STARTDATE date,
    COURSE_CODE char(3),
    PROJ_NUM int
);

INSERT INTO student
    VALUES ('000001', 'Snow', 'Jon', 'E', '2014-04-05', '201', 6),
           ('000002', 'Stark', 'Arya', 'C', '2017-07-12', '305', 11),
           ('000003', 'Lannister', 'Jamie', 'C', '2012-09-05', '101', 2),
           ('000004', 'Lannister', 'Cercei', 'J', '2012-09-05', '101', 2),
           ('000005', 'Greyjoy', 'Theon', 'I', '2015-12-09', '402', 14),
           ('000006', 'Tyrell', 'Margaery', 'Y', '2017-07-12', '305', 10),
           ('000007', 'Baratheon', 'Tommen', 'R', '2019-06-13', '201', 5);

SELECT *
FROM student
WHERE COURSE_CODE = '305';

UPDATE student
SET COURSE_CODE = 305
WHERE STU_NUM = '000007'

DELETE FROM student
WHERE STU_SNAME = 'Lannister'
AND STU_STARTDATE = '2012-09-05'
AND COURSE_CODE = 101
AND PROJ_NUM = 2;

UPDATE student
SET PROJ_NUM = 14
WHERE STU_STARTDATE > '2016-01-01'
AND COURSE_CODE >= 201;

DROP TABLE students
