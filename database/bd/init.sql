-- database/init.sql
CREATE DATABASE IF NOT EXISTS seriesdb;
USE seriesdb;

CREATE TABLE IF NOT EXISTS series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    status VARCHAR(50),
    last_episode_watched INT,
    total_episodes INT,
    ranking INT
);
