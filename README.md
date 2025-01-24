# HelloKitty
Project Title:
Hello Kitty Universe Database

Purpose:
This database organizes and tracks data about the Hello Kitty universe, including characters, merchandise, events, and fan interactions. It is designed for use by enthusiasts, businesses, or researchers interested in managing Hello Kitty-related data.

Entities and Tables:
Characters:
Information about characters in the Hello Kitty universe.

character_id (Primary Key)
name
description
debut_year
Merchandise:
A catalog of Hello Kitty products.

product_id (Primary Key)
name
category (e.g., apparel, stationery, toys)
price
release_date
Events:
Hello Kitty-themed events.

event_id (Primary Key)
event_name
location
date
description
Fans:
Information about fans and their activities.

fan_id (Primary Key)
name
email
favorite_character (Foreign Key to Characters.character_id)
Fan Purchases:
Tracks purchases made by fans.

purchase_id (Primary Key)
fan_id (Foreign Key to Fans.fan_id)
product_id (Foreign Key to Merchandise.product_id)
purchase_date
quantity
Deliverables:
SQL Script:

Create tables.
Populate with sample data.
Include useful queries (e.g., most popular characters, highest-selling merchandise).
README.md:

Overview of the database.
How to set up and use it.
ERD (Entity-Relationship Diagram):

Visual representation of the database structure.
Sample Queries:

Example SQL queries for retrieving insights.
