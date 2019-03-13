# Sinatra & Associations



## Learning Goals

* ~~How to plan an interface for managing related entities~~
* ~~How to create forms that implement our planned interface~~
* Apply those concepts to a many to many relationship



## Domain

* Uses -< Pets

>  Users -< Friendship >- Users



## Vocabulary

* REST

  | CRUD          | HTTP Method | Path                | Body                    |                                                              |
  | ------------- | ----------- | ------------------- | ----------------------- | ------------------------------------------------------------ |
  | *Create Form* | GET         | /users/new          | (None)                  | Serves a form for a user to create a resource (makes the POST request) |
  | Create        | POST        | /users              | Attributes for the user | Creates a resource                                           |
  | Read          | GET         | /users & /users/:id | (None)                  | Shows a list of resources / Shows a single resource          |
  | *Update Form* | GET         | /users/:id/edit     | (None)                  | Serves a form for a user update a resource (makes the PATCH request) |
  | Update        | PATCH       | /users/:id          | Attributes for the user | Updates a resource                                           |
  | Delete        | DELETE      | /users/:id          | (None)                  | Deletes a resource                                           |



* Rule of Thumb with relationships:
  * `belongs_to`relationships go in the migration and the model
  * `has_many`go in the model only
* If user is selecting one thing from a list (like an ID from a list of ids)
  * `<select>`
* If user is selecting multiple from a list of things
  * `<checkbox>`

