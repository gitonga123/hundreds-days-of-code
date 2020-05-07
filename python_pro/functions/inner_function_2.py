def outer():
    def inner():
        print("Inner")
    return inner

x = outer() # inner()

x()
