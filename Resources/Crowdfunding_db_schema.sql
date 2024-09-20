-- Categories Table
CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);
-- Subcategories Table
CREATE TABLE subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);
-- Contacts Table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);
-- Campaigns Table
CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);


select* from campaigns;

select* from categories;

select* from contacts;

select* from subcategories;

