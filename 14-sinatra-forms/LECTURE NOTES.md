# Sinatra & MVC

In Mod 1: 

* We studied relationships between entities

In Mod 2:

* How to structure your code in a maintainable way

## Outline

* ~~MVC Programming Paradigm~~

* ~~RESTful Routes Web Application Paradigm~~


## Testing Tools

* For Models: console
* For Controllers: postman
* For Views: browser

## Domain

* Users -< Friendship >- Users



## Vocabulary

* Programming Paradigm 
  * Model / Thought Process
  * Political Parties
* URL (uniform resource locator)
  * Protocol (http)
  * Domain (Directs you to a particular server (IP address))
  * Path

* MVC

  * Model
    * A class (template for objects) which represents a table
    * Where business logic goes
  * View 
    * What an end user sees
  * Controller
    * Where the path is driven
    * Analogies:
      * Model would be the kitchen, view would be the customers, and the controller would be the server
      * Model would be the factory, view would be the end user, and the controller would be the distributor
  * A popular paradigm for web applications

* REST

  * Representation State Transfer

  * Idea that the paths for our urls should correlate to the objects that a particular route is concerned with

    | CRUD   | Path                | HTTP Method | Body                    |
    | ------ | ------------------- | ----------- | ----------------------- |
    | Create | /users              | POST        | Attributes for the user |
    | Read   | /users & /users/:id | GET         | (None)                  |
    | Update | /users/:id          | PATCH       | Attributes for the user |
    | Delete | /users/:id          | DELETE      | (None)                  |
