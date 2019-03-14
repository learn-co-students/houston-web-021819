# Intro to Rails (Part I)

## Learning Goals

* ~~Identify 7 Restful Routes~~
* ~~Create Rails app~~
  * Explore file structure
* ~~Create & Run Migrations with Rails~~
* ~~Create Controllers and route requests to those controllers using rails~~

## Vocabulary

![](https://s3-us-west-2.amazonaws.com/student-resources/uploads/lecture/Screen+Shot+2017-06-09+at+10.04.20+AM.png)

* Rails
  * Gem
  * Framework

#### Restful Routes (Final Form):

| Name      | CRUD Action | HTTP Method / Path      | Body                       | Description                                                  |
| --------- | ----------- | ----------------------- | -------------------------- | ------------------------------------------------------------ |
| `new`     | (None)      | GET /resources/new      | (nothing)                  | Sends you a form to create a new thing (sends to a POST)     |
| `edit`    | (None)      | GET /resources/:id/edit | (nothing)                  | Sends you a form to update an existing thing (sends to a PATCH) |
| `index`   | Read        | GET /resources          | (nothing)                  | Display all resources                                        |
| `show`    | Read        | GET /resources/:id      | (nothing)                  | Display the details of a particular resource                 |
| `create`  | Create      | POST /resources         | Attributes of the resource | Creates the resource                                         |
| `update`  | Update      | PATCH /resources/:id    | Attributes of the resource | Update the resource                                          |
| `destroy` | Delete      | DELETE /resource/:id    | (nothing)                  | Deleting a resource                                          |



# Intro to Rails (Part II)



## Learning Goals

* ~~Use **stong params**~~
* ~~To implement all 7 RESTful Methods in Rails~~

