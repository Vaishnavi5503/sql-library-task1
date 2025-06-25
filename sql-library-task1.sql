-- Create Database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Table: Student
CREATE TABLE Student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    enrollment_no VARCHAR(50),
    course VARCHAR(100)
);

-- Table: Author
CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

-- Table: Category
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Table: Book
CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    author_id INT,
    category_id INT,
    publication_year YEAR,
    FOREIGN KEY (author_id) REFERENCES Author(author_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Table: Borrow_Record
CREATE TABLE Borrow_Record (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);