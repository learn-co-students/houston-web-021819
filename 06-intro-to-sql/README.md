# Intro to SQL

## Vocabulary

- Persistance
  - Data is there once we restart the app
- Database
  - Relational Databases
    - Good at relationships between objects
    - Include
      - Sqlite3
      - Postgres
  - Nonrelational (NoSQL) Databases
    - Good at big data and unstructured data
    - Include
      - MongoDB
- SQL
  - Structured Query Language (a language for manipulating **persistant data**)
- Schema
  - List of properties that your objects have
- Table
  - Often reflects a class
- Row
  - Reflects an instance of that class
- Column
  - Reflects a instance property of that class
- Primary Key
  - Unique reference to a specific object
- Foriegn Key
  - A reference to another tables Primary Key
- CRUD
  - Create (INSERT INTO)
  - Read (SELECT)
  - Update (UPDATE TABLE)
  - Delete (DELETE)

## Deliverables

1. Write the SQL to return all of the rows in the heroes table:

```SQL
SELECT  * FROM heroes;
```

2. Write the SQL to select the hero with the first name "Tony"

```SQL
SELECT  * FROM heroes WHERE first_name = 'Tony';
```

3. Write the SQL to update Tonys last name to 'Stark'

```SQL
UPDATE  heroes SET last_name = "Stark" WHERE id = 1
```

4. Write the SQL to create a table named 'abilities' with an autoincrementing ID that's a primary key, a name field of type text, and a coolness field of type text

```sql
CREATE TABLE abilites (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	coolness TEXT
);
```

5. Write the SQL to add an ability

```sql
INSERT INTO abilities (name, coolness) VALUES ('Super Strength', '5')

```

6. Associate a ability (strength id: 2 ) with a hero (Drax id: 10)

```sql
INSERT INTO hero_abilities (ability_id, hero_id) VALUES (2, 10)
```

7. Write the SQL to return the abilities for a hero
```sql
SELECT 
	* FROM abilities 
JOIN hero_abilities	
	ON hero_abilities.ability_id = abilities.id
JOIN heroes
	ON hero_abilities.hero_id = heroes.id
WHERE 
	heroes.first_name = "Drax"
```

8. Delete the first 9 heroes 

   ```sql
   DELETE FROM heroes WHERE id <= 9
   ```


## BONUS 

9. Write the SQL to display a list of heroes names next to the number of abilities they have
```sql

```

10. Write the SQL to return the names of all of the heroes with a given ability

```sql

```

11. I want to return the names of the heroes with the number of abilities they have
    * who have a last name
    * and have move than 1 ability
    * in order of the number of abilities they have from greatest to least

```sql

```