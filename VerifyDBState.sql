-- 1. Check which users have access to the database
SELECT USER_ID, USERNAME, CREATED, PASSWORD_CHANGE_DATE
FROM user_users;

-- 2. Check what tables are present in the database
SELECT *
FROM user_tables;

-- 3A. Describe the ORDERS table
DESCRIBE orders;

-- 3B. Describe the PRODUCTLIST table
DESCRIBE productlist;

-- 3C. Describe the REVIEWS table
DESCRIBE reviews;

-- 3D. Describe the STOREFRONT table
DESCRIBE storefront;

-- 3E. Describe the USERBASE table
DESCRIBE userbase;

-- 3F. Describe the USERLIBRARY table
DESCRIBE userlibrary;

-- 4A. Display everything in the ORDERS table
SELECT *
FROM orders;

-- 4B. Display everything in the PRODUCTLIST table
SELECT *
FROM productlist;

-- 4C. Display everything in the REVIEWS table
SELECT *
FROM reviews;

-- 4D. Display everything in the STOREFRONT table
SELECT *
FROM storefront;

-- 4E. Display everything in the USERBASE table
SELECT *
FROM userbase;

-- 4F. Display everything in the USERLIBRARY table
SELECT *
FROM userlibrary;

-- 5. Check what constraints are present in the database
SELECT table_name, constraint_name, constraint_type, status
FROM user_constraints;

-- 6. Check what views are present in the database
SELECT view_name, text
FROM user_views;

-- 7. Display every USERNAME in alphabetical order
SELECT username
FROM userbase
ORDER BY username ASC;

-- 8. Display the FIRSTNAME, LASTNAME, USERNAME, PASSWORD, and EMAIL of any user who has a yahoo email address
SELECT firstname, lastname, username, password, email
FROM userbase
WHERE email LIKE '%yahoo%';

-- 9. Display the USERNAME, BIRTHDAY, and WALLETFUNDS of any user who has less than $25 in funds
SELECT username, birthday, walletfunds
FROM userbase
WHERE walletfunds < 25;

-- 10. Display the USERID and PRODUCTCODE of any user who has more than 100 HOURSPLAYED
SELECT userid, productcode
FROM userlibrary
WHERE hoursplayed > 100;

-- 11. Display the PRODUCTCODE of any game that has less than 10 HOURSPLAYED
SELECT productcode
FROM userlibrary
WHERE hoursplayed < 10;

-- 12. Display every unique PUBLISHER
SELECT DISTINCT publisher
FROM productlist;

-- 13. Display the PRODUCTNAME, RELEASEDATE, PUBLISHER, and GENRE of all products, sorted by GENRE
SELECT productname, releasedate, publisher, genre
FROM productlist
ORDER BY genre;

-- 14. Display the PRODUCTCODE and PUBLISHER of any product in the 'Strategy' GENRE
SELECT productcode, publisher
FROM productlist
WHERE genre = 'Strategy';

-- 15. Display the PRODUCTCODE and PRICE for any product that costs more than $25
SELECT productcode, description, price
FROM storefront
WHERE price > 25
ORDER BY price DESC;

-- 16. Display the INVENTORYID and PRICE of all products in the STOREFRONT table, sorted by ascending PRICE
SELECT inventoryid, price
FROM storefront
ORDER BY price ASC;

-- 17. Display the PRODUCTCODE and REVIEW of any product with a RATING of 1
SELECT productcode, review
FROM reviews
WHERE rating = 1;

-- 18. Display the PRODUCTCODE and REVIEW of any product with a RATING of 4 or higher
SELECT productcode, review
FROM reviews
WHERE rating >= 4;

-- 19. Display every unique USERID from users who have placed an order
SELECT DISTINCT userid
FROM orders;

-- 20. Display all order data, sorted by the earliest PURCHASEDATE
SELECT *
FROM orders
ORDER BY purchasedate ASC;
