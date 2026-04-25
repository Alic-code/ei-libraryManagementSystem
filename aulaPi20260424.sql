CREATE DATABASE library_db;
USE library_db;

-- TABELA: tbl_publisher
CREATE TABLE tbl_publisher (
    publisher_PublisherName VARCHAR(255) PRIMARY KEY,
    publisher_PublisherAddress VARCHAR(255),
    publisher_PublisherPhone VARCHAR(20)
);
-- TABELA: tbl_book
CREATE TABLE tbl_book (
    book_BookID INT AUTO_INCREMENT PRIMARY KEY,
    book_Title VARCHAR(255),
    book_PublisherName VARCHAR(255),
    
    CONSTRAINT fk_book_publisher
    FOREIGN KEY (book_PublisherName)
    REFERENCES tbl_publisher(publisher_PublisherName)
);

-- TABELA: tbl_library_branch
CREATE TABLE tbl_library_branch (
    library_branch_BranchID INT AUTO_INCREMENT PRIMARY KEY,
    library_branch_BranchName VARCHAR(255),
    library_branch_BranchAddress VARCHAR(255)
);

-- TABELA: tbl_borrower
CREATE TABLE tbl_borrower (
    borrower_CardNo INT AUTO_INCREMENT PRIMARY KEY,
    borrower_BorrowerName VARCHAR(255),
    borrower_BorrowerAddress VARCHAR(255),
    borrower_BorrowerPhone VARCHAR(20)
);
-- TABELA: tbl_book_loans
CREATE TABLE tbl_book_loans (
    book_loans_LoansID INT AUTO_INCREMENT PRIMARY KEY,
    book_loans_BookID INT,
    book_loans_BranchID INT,
    book_loans_CardNo INT,
    book_loans_DateOut DATE,
    book_loans_DueDate DATE,

    CONSTRAINT fk_loans_book
    FOREIGN KEY (book_loans_BookID)
    REFERENCES tbl_book(book_BookID),

    CONSTRAINT fk_loans_branch
    FOREIGN KEY (book_loans_BranchID)
    REFERENCES tbl_library_branch(library_branch_BranchID),

    CONSTRAINT fk_loans_borrower
    FOREIGN KEY (book_loans_CardNo)
    REFERENCES tbl_borrower(borrower_CardNo)
);

-- TABELA: tbl_book_copies
CREATE TABLE tbl_book_copies (
    book_copies_CopiesID INT AUTO_INCREMENT PRIMARY KEY,
    book_copies_BookID INT,
    book_copies_BranchID INT,
    book_copies_No_Of_Copies INT,

    CONSTRAINT fk_copies_book
    FOREIGN KEY (book_copies_BookID)
    REFERENCES tbl_book(book_BookID),

    CONSTRAINT fk_copies_branch
    FOREIGN KEY (book_copies_BranchID)
    REFERENCES tbl_library_branch(library_branch_BranchID)
);

-- TABELA: tbl_book_authors
CREATE TABLE tbl_book_authors (
    book_authors_AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    book_authors_BookID INT,
    book_authors_AuthorName VARCHAR(255),

    CONSTRAINT fk_authors_book
    FOREIGN KEY (book_authors_BookID)
    REFERENCES tbl_book(book_BookID)
);