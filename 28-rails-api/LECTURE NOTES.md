# Rails APIs

### Learning Goals

- Render JSON data from a Rails controller
- Using `json:` to render ActiveRecord instances
- Explain CORS and how to implement it in a Rails App
- Render JSON data that includes associated entities 



### Activation

##### Would json-server work for our game? What were the 3 layers of the Rails apps we bulit in Mod 2? We could still benefit from using MVC.

We need to include the steps each character will take in our json data



### Learning Goal 1: Render JSON data from a Rails controller

#### Demonstrate:

- Setting up a rails project with `--api`
- How this disables some unnecessary middleware, such as the form auth checks
- Using `render json:` to respond from a controller
- How this is taking a **ruby** data and turning it into a **json** string

#### Check for Understanding: 

* Everyone create a json endpoint



### Learning Goal 2: Using `json:` to render ActiveRecord instances

#### Demonstrate:

* Creating & Seeding models 
* Under the hood, this is using a built in rails method `to_json`, which has valuable documentation
* Using `except` and `only`
* Translating keys to camel case

#### Check for Understanding: 

* Kahoot [1-3]

#### Materials

- `https://apidock.com/rails/ActiveRecord/Serialization/to_json`

- ```
  Step.destroy_all
  Npc.destroy_all
  Player.destroy_all
  
  Player.create( name: 'Link', x: 100, y: 100)
  
  Npc.create( name: 'Rochell', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Adam', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Josie', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Mark', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Trey', x: rand(0..500), y: rand(0..500) )
  
  Npc.create( name: 'Jessica', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Olivia', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Jing', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Zoe', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'TK', x: rand(0..500), y: rand(0..500) )
  
  Npc.create( name: 'Jack', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Eli', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Bobby', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Cory', x: rand(0..500), y: rand(0..500) )
  Npc.create( name: 'Hema', x: rand(0..500), y: rand(0..500) )
  
  directions = [ 'left', 'right', 'up', 'down' ]
  
  Npc.all.each do | npc |
  
      x = 0
      y = 0
  
      8.times do 
          direction = directions.sample
          duration = rand(300..1000)
  
          if direction == 'left'
              x -= duration
          end
  
          if direction == 'right'
              x += duration
          end
  
          if direction == 'up'
              y += duration
          end
  
          if direction == 'down'
              y -= duration
          end
  
          Step.create({ direction: direction, duration: duration, npc: npc })
      end
  
      if x > 0
          Step.create({ direction: 'left', duration: x, npc: npc })
      end
  
      if y > 0
          Step.create({ direction: 'down', duration: y, npc: npc })
      end
  
      if x < 0
          Step.create({ direction: 'right', duration: -1*x, npc: npc })
      end
  
      if y < 0
          Step.create({ direction: 'up', duration: -1*y, npc: npc })
      end
  
  
  end
  ```

  ```
  class Hash
    def camelize_keys!
      update_keys!(:camelize, :lower)
    end
  
    def underscore_keys!
      update_keys!(:underscore)
    end
  
    def update_keys!(method, *args)
      self.keys.each do |key|
        updated_key = key.to_s.send(method, *args).to_sym
        self[updated_key] = self.delete(key)
        self[updated_key].update_keys!(method, *args) if self[updated_key].kind_of? Hash
      end
      self
    end
  end
  
  
  
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  
    def as_json(options)
      result = super(options)
      result.camelize_keys!
      result
    end
  
  end
  
  ```


> Break

### Learning Goal 3: Explain CORS and how to implement it in a Rails App

#### Demonstrate:

* An example CORs Error
* Why these errors are thrown by the browser
* How to install the cors gem
* How to configure cors

#### Check for Understanding: 

* Kahoot [4-6]



### Learning Goal 4: Render JSON data that includes associated entities

#### Demonstrate:

* Tie this back to our activation
* Using `methods` to include arbitrary data in our json object
* Using `methods` to include associations
  * This works but we can't configure the json of *the included* object
* Using `include` to include associations **and** configure the json of the included object

#### Check for Understanding: 

* Kahoot [7-9]



> A word on project structure classes in ruby vs classes in JavaScript





| Student   | CFU 1 |
| --------- | ----- |
| Josephine |       |
| TK        |       |
| Adam      |       |
| Hema      |       |
| Zoe       |       |
| Jing      |       |
| Jack      |       |
| Mark      |       |
| Trey      |       |
| Jessica   |       |
| Eli       |       |
| Rochell   |       |
| Olivia    |       |
| Cory      |       |
| Bobby     |       |

#### 