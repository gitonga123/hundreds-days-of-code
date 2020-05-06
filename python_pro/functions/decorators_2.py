def add_header(some_function):
    def wrapper():
        print("====================")
        some_function()
        print("====================")

    return wrapper()


def add_stars(some_function):
    def wrapper():
        print("*******************")
        some_function()
        print("*******************")

    return wrapper()


@add_header
@add_stars
def my_function():
    print("Hello!!!!")


my_function()
