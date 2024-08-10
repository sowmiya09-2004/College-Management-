CREATE DATABASE college_SSCET;
USE college_SSCET;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT
);

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    department_id INT  
);

CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,  
    amount DECIMAL(10, 2),
    due_date DATE,
    status VARCHAR(20),
    payment_date DATE
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_of_publication YEAR
);

CREATE TABLE Library (
    library_id INT PRIMARY KEY,
    student_id INT,
    book_id INT,  
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20)
);

CREATE TABLE Gatepass (
    gatepass_id INT PRIMARY KEY,
    student_id INT,  
    reason TEXT,
    issue_date DATE,
    return_date DATE,
    status VARCHAR(20)
);

INSERT INTO Departments (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'ECE'),
(3, 'MECH');


INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, department_id)
VALUES
(1, 'Rahul', 'Sharma', '2002-05-10', 'Male', 'rahul.sharma@example.com', '9876543211', 1),
(2, 'Sneha', 'Patel', '2003-08-15', 'Female', 'sneha.patel@example.com', '9876543212',  2),
(3, 'Vikas', 'Singh', '2004-01-20', 'Male', 'vikas.singh@example.com', '9876543213',  3),
(4, 'Priya', 'Mishra', '2004-07-10', 'Female', 'priya.mishra@example.com', '9876543214', 1),
(5, 'Kiran', 'Kumar', '2003-12-05', 'Male', 'kiran.kumar@example.com', '9876543215',  2),
(6, 'Ritika', 'Roy', '2004-04-22', 'Female', 'ritika.roy@example.com', '9876543216', 3),
(7, 'Amit', 'Joshi', '2002-11-12', 'Male', 'amit.joshi@example.com', '9876543217',  4),
(8, 'Neha', 'Rana', '2003-07-25', 'Female', 'neha.rana@example.com', '9876543218',  4),
(9, 'Ravi', 'Verma', '2004-09-10', 'Male', 'ravi.verma@example.com', '9876543219',  5),
(10, 'Suman', 'Thakur', '2003-10-18', 'Female', 'suman.thakur@example.com', '9876543220', 5),
(11, 'Vivek', 'Sinha', '2004-03-25', 'Male', 'vivek.sinha@example.com', '9876543221',  6),
(12, 'Anjali', 'Shah', '2002-02-05', 'Female', 'anjali.shah@example.com', '9876543222', 6),
(13, 'Pooja', 'Kaur', '2003-06-14', 'Female', 'pooja.kaur@example.com', '9876543223',  7),
(14, 'Manish', 'Gupta', '2004-12-22', 'Male', 'manish.gupta@example.com', '9876543224',  7),
(15, 'Rohan', 'Agarwal', '2003-04-13', 'Male', 'rohan.agarwal@example.com', '9876543225', 8),
(16, 'Divya', 'Mehta', '2004-08-09', 'Female', 'divya.mehta@example.com', '9876543226',  8),
(17, 'Nikhil', 'Pandey', '2003-01-21', 'Male', 'nikhil.pandey@example.com', '9876543227',  9),
(18, 'Jyoti', 'Ghosh', '2004-11-30', 'Female', 'jyoti.ghosh@example.com', '9876543228',  9),
(19, 'Ayesha', 'Khan', '2003-02-19', 'Female', 'ayesha.khan@example.com', '9876543229', 10),
(20, 'Ishaan', 'Reddy', '2004-10-01', 'Male', 'ishaan.reddy@example.com', '9876543230',10);

INSERT INTO Faculty (faculty_id, first_name, last_name, email, phone_number, department_id)
VALUES
(1, 'Anil', 'Mehta', 'anil.mehta@example.com', '9876543301', 1),
(2, 'Sunita', 'Rao', 'sunita.rao@example.com', '9876543302', 1),
(3, 'Rajesh', 'Verma', 'rajesh.verma@example.com', '9876543303', 2),
(4, 'Nisha', 'Jain', 'nisha.jain@example.com', '9876543304', 2),
(5, 'Amit', 'Patel', 'amit.patel@example.com', '9876543305', 3),
(6, 'Pooja', 'Sharma', 'pooja.sharma@example.com', '9876543306', 3),
(7, 'Rahul', 'Nair', 'rahul.nair@example.com', '9876543307', 4),
(8, 'Sneha', 'Menon', 'sneha.menon@example.com', '9876543308', 4),
(9, 'Vikas', 'Das', 'vikas.das@example.com', '9876543309', 5),
(10, 'Priya', 'Iyer', 'priya.iyer@example.com', '9876543310', 5),
(11, 'Kiran', 'Saxena', 'kiran.saxena@example.com', '9876543311', 6),
(12, 'Ritika', 'Bose', 'ritika.bose@example.com', '9876543312', 6);

INSERT INTO Fees (fee_id, student_id, amount, due_date, status, payment_date)
VALUES
(1, 1, 1800.00, '2024-03-15', 'Pending', NULL),
(2, 2, 1900.00, '2024-04-01', 'Paid', '2024-03-30'),
(3, 3, 2000.00, '2024-05-20', 'Pending', NULL),
(4, 4, 1700.00, '2024-06-10', 'Paid', '2024-06-05'),
(5, 5, 1500.00, '2024-07-01', 'Pending', NULL),
(6, 6, 1600.00, '2024-08-01', 'Paid', '2024-07-28'),
(7, 7, 2100.00, '2024-09-15', 'Pending', NULL),
(8, 8, 2200.00, '2024-10-01', 'Paid', '2024-09-28'),
(9, 9, 2300.00, '2024-11-20', 'Pending', NULL),
(10, 10, 2400.00, '2024-12-10', 'Paid', '2024-12-05'),
(11, 11, 2500.00, '2024-01-01', 'Pending', NULL),
(12, 12, 2600.00, '2024-02-01', 'Paid', '2024-01-30');

INSERT INTO Books (book_id, title, author, publisher, year_of_publication)
VALUES
(1, 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008),
(2, 'Design Patterns', 'Erich Gamma', 'Addison-Wesley', 1994),
(3, 'Refactoring', 'Martin Fowler', 'Addison-Wesley', 1999),
(4, 'The Pragmatic Programmer', 'Andrew Hunt', 'Addison-Wesley', 1999),
(5, 'Code Complete', 'Steve McConnell', 'Microsoft Press', 2004),
(6, 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 2009),
(7, 'The Mythical Man-Month', 'Frederick P. Brooks Jr.', 'Addison-Wesley', 1975),
(8, 'Structure and Interpretation of Computer Programs', 'Harold Abelson', 'MIT Press', 1996),
(9, 'The Art of Computer Programming', 'Donald E. Knuth', 'Addison-Wesley', 1997),
(10, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Pearson', 2015);


INSERT INTO Library (library_id, student_id, book_id, issue_date, return_date, status)
VALUES
(1, 1, 1, '2024-01-15', '2024-02-15', 'Issued'),
(2, 2, 2, '2024-02-10', '2024-03-10', 'Returned'),
(3, 3, 3, '2024-03-05', '2024-04-05', 'Issued'),
(4, 4, 4, '2024-04-20', '2024-05-20', 'Issued'),
(5, 5, 5, '2024-05-15', '2024-06-15', 'Issued'),
(6, 6, 6, '2024-06-25', '2024-07-25', 'Returned');

INSERT INTO Gatepass (gatepass_id, student_id, reason, issue_date, return_date, status)
VALUES
(1, 1, 'Personal Work', '2024-01-20', '2024-01-20', 'Approved'),
(2, 2, 'Family Emergency', '2024-02-15', '2024-02-16', 'Approved'),
(3, 3, 'Medical Appointment', '2024-03-10', '2024-03-10', 'Approved'),
(4, 4, 'Seminar Attendance', '2024-04-05', '2024-04-06', 'Approved'),
(5, 5, 'Festival Leave', '2024-05-01', '2024-05-02', 'Approved'),
(6, 6, 'Urgent Work', '2024-06-15', '2024-06-15', 'Approved');


SELECT 
    l.library_id,
    s.student_id,
    s.first_name,
    s.last_name,
    b.title,
    l.issue_date,
    l.return_date
FROM 
    Library l
JOIN 
    Students s ON l.student_id = s.student_id
JOIN 
    Books b ON l.book_id = b.book_id
WHERE 
    l.status = 'Issued';
    
SELECT 
    s.student_id, 
    s.first_name, 
    s.last_name, 
    s.department_id, 
    f.fee_id, 
    f.amount, 
    f.payment_date
FROM 
    Fees f
JOIN 
    Students s ON f.student_id = s.student_id
WHERE 
    f.status = 'Paid';

SELECT 
    l.library_id,
    s.student_id,
    s.first_name,
    s.last_name,
    b.title,
    l.issue_date,
    l.return_date
FROM 
    Library l
JOIN 
    Students s ON l.student_id = s.student_id
JOIN 
    Books b ON l.book_id = b.book_id
WHERE 
    l.status = 'Issued';
