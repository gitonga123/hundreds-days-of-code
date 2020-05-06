# Decorator is a design pattern
# function that takes another function as a parameter
# and extends its behavior without modifying it.
# this is another good example of closure


def add_stars(some_function):
    def wrapper():
        print("*******")
        some_function()
        print("*******")

    return wrapper()


@add_stars
def my_function():
    print("Hello!!!")


my_function
