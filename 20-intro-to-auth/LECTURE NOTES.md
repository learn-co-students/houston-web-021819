# Authentication & Authorization

### Learning Goals

- Define authentication and authorization, Hashing, Encryption, and BCrypt
- Augment a user form and model in rails using `bcrypt` and `password_digest`
- Implement a sign in form
- Implement authorization for every page in our application

### Learning Goal 1: Define authentication, authorization, Hashing, Encryption, and Bcrypt

#### Demonstrate:

- The difference between authentication and authorization
- The difference between hashing and encryption
- That bcrypt is a gem

#### Reinforce:

* Ask students to define authentication and authorization in there own words
* Ask students to define encryption and hashing in their own words

#### Check for understanding:

- Any questions?

- On a scale of 1 to 5, how well do you feel you could define Authentication, Authorization, Hashing, and Encryption?


### Learning Goal 2: Augment a user form and model in rails using `bcrypt` and `password_digest`

#### Demonstrate:

- Adding a `password_digest` to the users table using a second migration
- Adding `has_secure_password` to the users model
- How we can now set the password of a user and it will create the `password_digest` hash

#### Reinforce:

- What two steps did we take to add a password to our users model?
- If I set two users passwords equal to the same string, will there digests be the same?

#### Check for understanding:

- Any questions?
- On a scale of 1 to 5, how well do you feel you could implement bcrypt in your application this week?



### Learning Goal 3: Implement a sign in form

#### Demonstrate:

- There isn't anything new here
- Creating a sessions controller with a create method to authenticate the user
- Using `form_with` to create a basic sign in form

#### Reinforce:

- When I submit this form what is going to happen?
  - How do you know?
- What code in my app will handle that request?
  - How do you know?

#### Check for understanding:

- Any questions?

- On a scale of 1 to 5, how prepared do you feel to implement your sign in form?


### Learning Goal 4: Implement authorization for every page in our application

#### Demonstrate:

- Creating a `current_user` method which defines the current user using the session
- Creating an `authenticate` method which checks to see if we have a current user
- Using `before_action` to run that method before every request
- Refactoring our authentication logic into the ApplicationController so that it effects all of our routes

#### Reinforce:

* By asking a student to drive while rewriting the authenticate methods inside the application controller

#### Demonstrate

* Using `skip_before_action` where appropriate  

#### Check for understanding:

- Any questions?

- On a scale of 1 to 5, how prepared do you feel to implement authorization in your application?




```ruby
def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
        # Authenticated!
        session[:current_user_id] = user.id
        redirect_to '/random-question'
    else
        flash[:error_message] = 'Wrong Username or Password'
        redirect_to new_session_url
        # Ooops!
    end
end



def current_user
        User.find(session[:current_user_id])
    end
```

