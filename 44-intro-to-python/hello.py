from flask import Flask, jsonify
app = Flask(__name__)
# Decorator:
# def double(func):
#     def new_function():
#         func()
#         func()
#     return new_function

# @double
# def hi():
#     print("Hi")

# hi()

# Objects
# Hashes -> Dictionary Objects
# Arrays -> Lists

class Fruit(dict):

    all = []

    def __init__(self, id, color):
        dict.__init__(self)
        self["id"] = id
        self["color"] = color
        self.all.append(self)

bananna = Fruit(1, 'Yellow')
orange = Fruit(2, 'Orange')
dragon_fruit = Fruit(3, 'Red')

@app.route('/')
def index():
    return jsonify(Fruit.all)

@app.route('/<id>')
def show(id):
    print("ID:")
    print(id)
    for fruit in Fruit.all:
        if(fruit["id"] == int(id)):
            return jsonify(fruit)
    return "404"