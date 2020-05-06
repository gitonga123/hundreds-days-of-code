# Decorator is a design patter
# function that takes another function as a parameter
# and extends its behavior without modifying it.
# This is another good example of closure


def add_stars(some_function):
    def wrapper():
        print("*******")
        some_function()
        print("*******")


def my_function():
    print("Hello!!!")


my_function = add_stars(my_function)

my_function()
