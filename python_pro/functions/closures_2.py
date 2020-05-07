# Closures - is a record storing a function and
# its environment where it is created

def outer():
    x = 'closure1'
    y = 'closure2'

    def inner():
        print(x, y)

    return inner()


local_func = outer()

local_func
