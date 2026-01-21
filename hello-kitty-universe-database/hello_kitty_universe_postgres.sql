-- hello_kitty_universe_postgres.sql
-- Minimal schema for the Hello Kitty Universe (PostgreSQL)

-- NOTE:
-- In PostgreSQL, create the database separately if needed:
--   createdb hello_kitty_universe
-- Then connect:
--   psql -d hello_kitty_universe

CREATE TABLE IF NOT EXISTS families (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT
);

CREATE TABLE IF NOT EXISTS characters (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  species VARCHAR(50),
  birthday DATE,
  family_id INT,
  bio TEXT,
  CONSTRAINT fk_family
    FOREIGN KEY (family_id)
    REFERENCES families(id)
    ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS items (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  owner_id INT,
  description TEXT,
  CONSTRAINT fk_owner
    FOREIGN KEY (owner_id)
    REFERENCES characters(id)
    ON DELETE CASCADE
);
