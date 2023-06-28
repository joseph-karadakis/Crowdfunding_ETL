-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TFDzum
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- drop tables if they exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;

-- create contacts table and set our primary key
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    PRIMARY KEY (contact_id)
);

-- create category table and set our primary key
CREATE TABLE category (
    category_id VARCHAR(150) NOT NULL,
    category VARCHAR(150) NOT NULL,
    PRIMARY KEY (category_id)
);

-- create subcategory table and set our primary key
CREATE TABLE subcategory (
    subcategory_id VARCHAR(150) NOT NULL,
    subcategory VARCHAR(150) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- create campaign table and set our primary key and foreign keys
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(300) NOT NULL,
    description VARCHAR(300) NOT NULL,
    goal NUMERIC(10, 2) NOT NULL,
    pledged NUMERIC(10, 2) NOT NULL,
    outcome VARCHAR(300) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(300) NOT NULL,
    currency VARCHAR(300) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(300) NOT NULL,
    subcategory_id VARCHAR(300) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Now you can select data from the tables
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;



