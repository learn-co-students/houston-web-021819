# Intro to SQL



## Vocabulary

- Persistance
- Database
- Relational Database
- SQL
- Schema
- Table
- Row
- Column 
- Primary Key
- Foriegn Key
- CRUD



## Outline

- Intro (5 min)

  - Where does the data we create in our hero app go when I close the app?
  - What is persistance

  - Introduction to Deliverables 
    - Today we won't work with our current app
    - We want to test the database side of things, and then we'll talk about integrating the database and SQL with our Ruby code tomorrow
- Introduction to SQLite3 (5 min)

  - What is a database?
  - They come in two types:
    - Relational Databases
    - Nonrelational Databases
  - We will start by using a specific type of relational database called sqlite3
  - We will also use a tool called sqlite browser which will allow us to interact with our database visually
- Introduction to Relational Databases (10 min)

  - Relational Databases use another programming language known as 'Structured Query Language'
  - They group data into rigid structures called 'schemas'
    - What is a table?
    - What is a row?
    - What is a column?
    - What is a table?
- Creating Data
- Reading Data
- Updating Data

- Deleting Data
- Many to Many Relationships
  - What is a foreign key?
- SQL and Ruby
  - What is Sqlit3::Database?
  - `results_as_hash`













## Deliverables

1. Write the SQL to return all of the rows in the heroes table:

```SQL
SELECT * FROM heroes
```

1. Write the SQL to select the hero with the first name "Tony"

```SQL
SELECT * FROM heroes WHERE first_name = "Tony"
```

1. Write the SQL to update Tonys last name to 'Stark'

```SQL
UPDATE heroes SET last_name = "Stark"  WHERE id = 1 
```

1. Write the SQL to create a table named 'abilities' with an autoincrementing ID that's a primary key, a name field of type text, and a coolness field of type text

```sql
CREATE TABLE abilities (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `name`	TEXT,
    `coolness` TEXT
)
```

1. Write the SQL to add an ability

```sql
INSERT INTO abilities (name, coolness) VALUES ('Super Strength', 5)
```

1. Associate that ability with a hero

```sql
CREATE TABLE hero_abilities (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `hero_id`	INTEGER,
    `ability_id` INTEGER
)
```

```sql
INSERT INTO hero_abilities (hero_id, ability_id) VALUES (1, 2)
```

1. Write the SQL to return the abilities for a hero

```sql
SELECT * FROM heroes 
JOIN hero_abilities ON heroes.id = hero_abilities.hero_id
JOIN abilities ON abilities.id = hero_abilities.ability_id
```

1. Write the SQL to delete all heroes where lucky is equal false

```sql
DELETE FROM heroes WHERE lucky = 0
```

## BONUS 

1. Write the SQL to display a list of heroes names next to the number of abilities they have

```sql
SELECT COUNT(abilities.*) FROM heroes JOIN hero_abilities ON hero_abilities.hero_id = heroes.id JOIN abilities ON abilities.id = hero_abilities.ability_id GROUP BY hero.id
```

1. Write the SQL to return the names of all of the heroes with a given ability

```sql

```

1. I want to return the names of the heroes with the number of abilities they have
   - who have a last name
   - and have move than 1 ability
   - in order of the number of abilities they have from greatest to least