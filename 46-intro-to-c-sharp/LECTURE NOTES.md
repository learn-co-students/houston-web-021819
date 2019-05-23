# What is C#?


### Resources
* _




### Learning Goals

* Identify the components of the `.NET` stack
* Explain what it means for C# to Object Oriented
* Identify Common Data Structures in C#
* Explain the ways in which C# is a lower-level lanaguage




### Activation
* What does it mean for a language to be **powerful?**



### Learning Goal 1: Identify the components of the `.NET` stack
##### Timestamp: _

##### Demonstrate
* Define
  * .NET
  * C#
  * EntityFramework
  * RazorPages
* Creating an App from `template -> App -> API`

##### Vocabulary
* .NET
* C#
* EntityFramework
* RazorPages
* Debug.WriteLine

##### Questions 

##### Check for Understanding
* *Kahoot Quiz:* [1-3] 

##### Cue
* 



### Learning Goal 2: Explain what it means for C# to Object Oriented

##### Timestamp: _

##### Demonstrate

- What does it mean to be object oriented?
  - C# is the *most* object oriented language we've worked with
- Constructor is the same name as the class
- Access levels (public/protected/private)
- Define
  - Attributes
- In every language you should know the console.log equivalent
  - Debug.WriteLine

##### Vocabulary

- Attributes 
  - Similar to decorators; method of adding information to describe a method

##### Questions 

##### Check for Understanding

- *Kahoot Quiz:* [4-6] 

##### Cue

- 



### Learning Goal 3: Identify Common Data Structures in C#

##### Timestamp: _

##### Demonstrate

- Strings vs Character literals
  - Interpolating
- Lists vs Arrays
- Dictionaries

##### Vocabulary

- List
- Dictionary
- Character Literal

##### Questions 

##### Check for Understanding

- *Kahoot Quiz:* [7-9] 

##### Cue

- 



### Learning Goal 4:  Explain the ways in which C# is a lower-level lanaguage

##### Timestamp: _

##### Demonstrate

- Reference and value

##### Vocabulary

- Struct

##### Questions 

##### Check for Understanding

- *Kahoot Quiz:* [10-12] 



### Conclusion 

* C# is powerful in that it gives you more control over the flow of your program





### Reference

```c#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Diagnostics;



namespace Fruit.Controllers
{



    public class Fruit
    {
        public static Dictionary<string, Fruit> index = new Dictionary<string, Fruit>();
        public static List<Fruit> all = new List<Fruit>();


        public Fruit( string name, string color)
        {
            this.name = name;
            this.color = color;
            Fruit.index.Add(name,  this);
            Fruit.all.Add(this);
        }


        public string name;
        public string color;

        public string description
        {
            get {
                return $"{this.name}  {this.color}";
            }
        } 
    }


    [Route("api/[controller]")]
    [ApiController]
    public class FruitsController : ControllerBase
    {
        // GET api/values
        [HttpGet]
        public ActionResult<List<Fruit>> Get()
        {
            return Fruit.all;
        }

        [HttpGet("indexed")]
        public ActionResult<Dictionary<string, Fruit>> Indexed()
        {
            Debug.WriteLine(Fruit.index);
            return Fruit.index;
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<string> Get(int id)
        {
            return "value!!";
        }

        // POST api/values
        [HttpPost]
        public ActionResult<Fruit> Post(Fruit fruit)
        {

            //Fruit fruit = new Fruit(null, "Yellow");
            return fruit;
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

```

