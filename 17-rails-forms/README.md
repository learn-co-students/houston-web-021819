# Rails Forms

### Learning Goals

- Explain the anatomy of an html form
- Explain the difference between:
  - `form_tag`
  - `form_for`
  - `form_with`
- Use `form_for` to create a "new" and "edit" form
- Use `form_with` to create a form with an arbitrary action





### Restful Routes:

| Name      | CRUD Action | HTTP Method / Path      | Body                       | Description                                                  |
| --------- | ----------- | ----------------------- | -------------------------- | ------------------------------------------------------------ |
| `new`     | (None)      | GET /resources/new      | (nothing)                  | Sends you a form to create a new thing (sends to a POST)     |
| `edit`    | (None)      | GET /resources/:id/edit | (nothing)                  | Sends you a form to update an existing thing (sends to a PATCH) |
| `index`   | Read        | GET /resources          | (nothing)                  | Display all resources                                        |
| `show`    | Read        | GET /resources/:id      | (nothing)                  | Display the details of a particular resource                 |
| `create`  | Create      | POST /resources         | Attributes of the resource | Creates the resource                                         |
| `update`  | Update      | PATCH /resources/:id    | Attributes of the resource | Update the resource                                          |
| `destroy` | Delete      | DELETE /resource/:id    | (nothing)                  | Deleting a resource                                          |

|      |      |      |      |      |
| ---- | ---- | ---- | ---- | ---- |
|      |      |      |      |      |
|      |      |      |      |      |
|      |      |      |      |      |
|      |      |      |      |      |
|      |      |      |      |      |
|      |      |      |      |      |
|      |      |      |      |      |
