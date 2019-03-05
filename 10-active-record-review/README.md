## ActiveRecord Workshop

* Schema:

  * Owner
    * name
  * Dog
    * name
    * color
    * age
    * owner / owner_id
  * Appointment
    * dog
    * groomer
  * Groomer
    * name
    * address

  ## Outline:

  * Owner & Dog (one to many relationship)

    ~~Create the migrations (tables in the database)~~

    * Write the migration files
    * Run rake db:migrate 

    * ~~Create models (to represent the tables when our application runs)~~
      * Setup associations

  * Appointment & Groomer (many to many relationship)

    - ~~Create the migrations (tables in the database)~~
      - Write the migration files
      - Run rake db:migrate 
    - ~~Create models (to represent the tables when our application runs)~~
      - Setup associations