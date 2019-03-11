# Sinatra & Forms



## Outline

* ~~Finish building out Restful Routes~~
* Add an interface for our remaining Restful Routes



## Testing Tools

* For Models: console
* For Controllers: postman
* For Views: browser



## Domain

* Users -< Friendship >- Users



## Vocabulary

* REST

  | CRUD          | HTTP Method | Path                | Body                    |
  | ------------- | ----------- | ------------------- | ----------------------- |
  | Create        | POST        | /users              | Attributes for the user |
  | Read          | GET         | /users & /users/:id | (None)                  |
  | Update        | PATCH       | /users/:id          | Attributes for the user |
  | Delete        | DELETE      | /users/:id          | (None)                  |
  | *Create Form* | GET         | /users/new          | (None)                  |
  | *Update Form* | GET         | /users/:id/edit     | (None)                  |

* Form tag

  * action: a path to send the form data to
  * method: one of the http verbs

* Input tag

  * name: creates a key in the params hash

* Update Forms

  * Use hidden input name: "_method" to make it send a "PATCH" request



