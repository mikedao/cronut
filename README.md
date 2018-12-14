# Cronuts, Go Nuts!

[Link](https://www.youtube.com/watch?v=V_5fwEUJzK0)


## Instructions:

Fork and clone.

The purpose of this exercise is to continue getting used to working with JSON
objects and creating Ruby Objects from them.

Here, you are expected to read the provided JSON file and created an array of
nested objects. You will have an `Item` object that has attributes for id, type,
name, and ppu. It will have an attribute called `batters` which will be in turn
an array of `Batter` objects which have the attributes of id and type.

`Item` will also have an attribute of toppings which will be an array consisting
of `Topping` objects that have the attributes of id and type.

Bonus: How can you use inheritance here?

-I created a class, ItemThings, that both Batter and Topping inherited from. It included the def initialize to parse the incoming hash data from the JSON, assign the id and type to instance variables, and attr_readers to be able to access the data. Unless we add unique functionality to Batter or Topping, with my inherited class, neither class needs any extra code within them.

Submit your PR here at 11:30:

[Submission Link](https://goo.gl/forms/s5JSonFHMcWqhCGq2)
