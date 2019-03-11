# Sinatra-forms



## SWBATs

* Explain the Model View Controller \(MVC\) pattern and give an example
* Explain how web frameworks \(like Sinatra\) use the MVC pattern and why
* Implement one model that inherit from ActiveRecord
* Implement one controller to route and process requests
  * Demonstrate how the params hash changes and where the data comes from
* Implement ERB template and get it to render data from controller and model
* Practice file structure in Sinatra
* Identify the connection between REST and CRUD



## Outline

* From Mod 1 to Mod 2 

  * Mod 2 will focus on structure
  * What is Sinatra?
  * What is its function both in practice and the curriculum?

* What structures will we implement with Sinatra?

  * MVC

    * Programming Paradaigms (like political parties)
    * Define:
      * Model
      * View
      * Controller
    * Build: 
      * View
      * Controller & Methods
        * `index`
        * `show`
    * We want our applications to manage data, not be static

  * RESTful Routing

    * Related to Crud

    * Related to URLs and requests

      * Review URL
      * Review parts of an http request

    * Define: 

      * > REST/CRUD/Controller method table

    * Build (test with Postman):

      * Models
      * Controller Methods:
      * `create`
      * `update`
      * `destroy`

* Afternoon labs

  * May not use ActiveRecord. Thats okay, just pay attention

## Code

Model

```
class Model < ActiveRecord::Base
end
```



Controller

```
class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    @name = 'Michael'

    erb :home
  end
  
  get '/books' do
    @books = Book.all

    erb :'books/index'
  end

  get '/books/:id' do
    @book = Book.find(params[:id])

    erb :'books/show'
  end
end

```



View

```
<h1>Welcome!!</h1>

<p>Amazing app!!!</p>

<h3><%= @name %></h3>

<% puts "blahb albh albha blahbla" %>
```





