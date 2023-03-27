-- @block
CREATE DATABASE TEST;
SHOW DATABASES;
-- @block
USE TEST;
-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(3)
);
-- @block
INSERT INTO Users(email, bio)
VALUES("elsayed", "this is my bio");
-- @block
SELECT DISTINCT *
FROM Users
WHERE country = "egy"
    AND id > 1
    AND bio LIKE "h%"
    OR email = "elsayed"
ORDER BY id ASC
LIMIT 2;
-- @block
UPDATE Users
SET bio = "COMMENT"
WHERE id = 1;
-- @block
DELETE FROM Users
WHERE id IS 1;
-- @block
CREATE INDEX email_index ON Users(email);
-- @block
CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);
-- @block
SELECT *
FROM Users
    INNER JOIN Rooms ON Rooms.owner_id = Users.id;
-- @block
SELECT Users.id AS user_id,
    Rooms.id AS room_id,
    email,
    street
FROM Users
    INNER JOIN Rooms ON Rooms.owner_id = Users.id;
-- @block
DROP TABLE Users;
-- @block
DROP DATABASE TEST;