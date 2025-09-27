-- MySQL setup script for Fish Store
-- Run this after MySQL installation

-- Create the database
CREATE DATABASE IF NOT EXISTS fishstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create a user for the application (optional - you can use root)
CREATE USER IF NOT EXISTS 'fishstore_user'@'localhost' IDENTIFIED BY 'fishstore_password';

-- Grant all privileges on the fishstore database to the user
GRANT ALL PRIVILEGES ON fishstore.* TO 'fishstore_user'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;

-- Show databases to verify
SHOW DATABASES;

-- Use the fishstore database
USE fishstore;

-- Show tables (should be empty initially)
SHOW TABLES;
