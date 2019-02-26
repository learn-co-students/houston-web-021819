# Intro To ORMS

## Vocabulary

- ORM
  - Object Relational Mapping
- OO Method Notation
  - `::method`  or `.method` vs. `#method`
  - For the Hero class
    - `::new` -> Hero.new
    - `#save`-> steve.save
- `::create`
- `#all`
- `#save`
- `#update`
- `#destroy`
- Query Optimization 



## Goal

* Add data persistance

* With as little code impact as possible (still use Ruby object methods)


## CRUD Overview

| CRUD   | Ruby Operation | SQL Operation | ORM Operation |
| ------ | -------------- | ------------- | ------------- |
| Create | `::new`        | INSERT INTO   | `::create`    |
| Read   | `::all`        | SELECT        | `::all`       |
| Update | `setters`      | UPDATE        | `#update`     |
| Delete | `::delete`     | DELETE        | `#destroy`    |

## Outline

* ~~Create~~
* ~~All~~
* ~~Update~~
* ~~Destroy~~
* ~~Updating our relationship methods (`hero#abilities`)~~





