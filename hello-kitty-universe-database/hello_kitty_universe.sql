-- hello_kitty_universe.sql
-- Minimal schema for the Hello Kitty Universe

CREATE DATABASE IF NOT EXISTS hello_kitty_universe;
USE hello_kitty_universe;

CREATE TABLE IF NOT EXISTS families (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS characters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  species VARCHAR(50),
  birthday DATE,
  family_id INT,
  bio TEXT,
  CONSTRAINT fk_family FOREIGN KEY (family_id) REFERENCES families(id) ON DELETE SET NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  owner_id INT,
  description TEXT,
  CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES characters(id) ON DELETE CASCADE
) ENGINE=InnoDB;
