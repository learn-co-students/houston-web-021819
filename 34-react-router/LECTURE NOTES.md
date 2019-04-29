# React Router

### Resources

* Kahoot: https://create.kahoot.it/share/react-router/fd3c1c7a-beea-4ba3-96d6-53a448e968b6
* Lecture Excersises: https://github.com/Joshua-Miles/react-router-lecture-exercises.git



### Learning Goals

* Define client side routing 
* Use `BrowserRouter` and `Route` to create distinct application pages
* Create dynamic routes using request params
* Use `Link` to provide navigation between application pages 
* Explain the advantages of dynamic routes over over passing `props ` with Link



### Activation

* We've learned alot in pursuit of building effective single page applications
* What if we want to direct users to a specific page in our application
  * Bookmarks
  * Reset password pages



### Learning Goal 1: Define client side routing 

##### Demonstrate

* Draw the request response cycle
* Talk about how the path is part of the request
* ...but now we have single page app...
* So what if we took the path and did something with it in the client?
  * Like conditionally render?

##### Questions 

##### Check for Understanding

* Kahoot [1-3]

##### Cue

* Now that we know what client side rendering is, lets try to implement it in our Dragons application 



### Learning Goal 2: Use `BrowserRouter` and `Route` to create distinct application pages

##### Demonstrate

* Installing React Router + React Router DOM
  * Why do we need both?
* Importing BrowserRouter into App
* Using Route to conditionally render an EditDragon component based on the path
  * Show how the first one that matches is rendered
  * Use exact to restrict this behavior

##### Questions

##### Check for Understanding

* 

##### Cue

* Now that we have a route to our EditDragon, but the page doesnt know which dragon I'm editing...



### Learning Goal 3: Create dynamic routes using request params

##### Demonstrate

* That we can use params to accept ids in the path as we could in rails
* How to access params in the rendered component

##### Questions 

##### Check for Understanding

* Kahoot [4-5]

##### Cue

* Now we have the page working, it's time to link it to the rest of our application



### Learning Goal 4: Use `Link` to provide navigation between application pages

##### Demonstrate

##### Questions 

##### Check for Understanding

* Self Assessment: React Router Links

Using the part-2 branch of https://github.com/Joshua-Miles/react-router-lecture-exercises.git

1) Render a Link in Home for MobyDick

2) Render a Link in Home for OldManAndTheSea

##### Cue

* You may notice this props thing you can pass with Link, and you might be tempted to think that it's better or simpler than using path params. **It is not**. Now that we've seen how to use the Link component, we're going to explore why it's might be a bad idea to pass props using it.



### Learning Goal 5: Explain the advantages of dynamic routes over over passing `props ` with Link

##### Demonstrate

* If I pass props directly with link instead of using the ID, the data is only carried in memory, and never saved in the path. 
* Because the data isn't in the path, if I revisit a bookmark or refresh the page, it breaks
* Path params are "saved" as part of the request 
* That I can bookmark  or refresh my edit dragon page and come back to it.

##### Questions

##### Check for Understanding

* Kahoot [6-7]



### Conclusion 

* We've learned what Client Side Routing is, and how it can be useful to building our applications
* We've learned how to implement Router and Route
* To create dynamic routes with params
* and implement basic navigation with the Link component
* We now have all but one of the building blocks we need to create robust rails projects this next week
* We need to learn authentication

