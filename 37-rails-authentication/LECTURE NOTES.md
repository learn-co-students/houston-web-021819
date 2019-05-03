# Rails Authentication



### Resources

* Lecture Repo: https://github.com/Joshua-Miles/rail-auth-lecture-excersises.git
* Kahoot Quiz: https://create.kahoot.it/share/rails-jwt-authentication/a045c51d-1560-4a29-8a42-d36032bd86dc



### Learning Goals

* Describe the process of authentication with JWT
* Provide users JWT tokens through a controller method
* Implement a method to automatically check the authentication of a user upon every request



### Activation

* ```
  As part of that fix Facebook accounted both for the 50 million that Facebook knows were affected, and an additional 40 million that potentially could have been. Later Friday, Facebook also confirmed that third-party sites that those users logged into with their Facebook accounts could also be affected.
  ```

* You should not be singly responsible for implementing authentication in your app
* You should be familiar with the techniques we use for authentication



### Learning Goal 1: Describe the process of authentication with JWT

##### Demonstrate

* Who all has flown before? Let's say for the sake of example that there's no planning involved, you show up at the airport, what steps do you have to take to get on an airplane?
  * You use your card credentials once
  * You get a boarding pass to identify yourself the rest of the time you're on at the airport
    * This is more efficent for the airport **and safer for you**

* The challenges of proper authentication  
  * Making sure the user is who they say they are
    * Password
    * Bycrypt
  * Remembering that they are who they say they are
    * We used the session
    * We don't have the session
    * The point of bcrypt was to protect the users password
      * We can't send the password on every request
    * The password digest is encrypted...
    * ... But if we let those leave the server, we leave ourselves more vulnerable to people reverse engineering our bcrypt stuff which would be really bad
    * We will use another token that keeps the users ID secured but isn't directly tied to their persistant credentials
      * JSON Web tokens (encode a json payload)
      * If we need to revoke a jwt we could
* JWT in `rails c` 
* JWT.io
  * The encoded payload is in the signature
  * The data in the payload is **not** secure
    * Demonstrate base64 decode
  * The signature will ensure that it hasn't been tampered with

##### Questions

##### Check for Understanding

* *Kahoot Quiz* [1-3]

##### Cue

* Now we know what JWT is, let's learn how to implement it in rails



### Learning Goal 2: Create a Rails route which provides a JWT token with a user's username and password

##### Demonstrate

* Add another method to create the jwt token

  ```ruby
  def auth_token
  	JWT.encode(self.id, 'my_secret')
  end 
  
   def as_json(*)
       super.except('password_digest')
   end
  ```

* In `rails c`

  * Create a user with a password

* In the users

  * Custom authenticate method
  * authenticate the user, respond with the user record and `methods: [:auth_token]` 

* It would be helpful if we included the auth_token when we created a user

##### Questions

##### Guide 

##### Check for Understanding

##### Cue



### Learning Goal 3: Implement a method to automatically check the authentication of a user upon every request

##### Demonstrate

* `before_action`, assume guilty

```ruby
 def authenticate
        begin 
            auth_header = request.headers['Authorization']
            method, credentials = auth_header.split(' ')
            payload, header = JWT.decode(credentials, 'my_secret')
            @current_user payload
        rescue
            render json: {
                message: 'Nah'
            }
        end
    end
```

* Wait, our login method is broken! `skip_before_action`
* Wait, our create user method is broken! `skip_before_action`

##### Questions

##### Guide 

##### Check for Understanding

##### Cue



###  





























