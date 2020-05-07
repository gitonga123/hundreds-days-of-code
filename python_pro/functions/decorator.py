def decorator_function(main_function):
    def wrapper_function(*args, **kwargs):
        return main_function
    return wrapper_function


def display_info(name, age):
    print('display_info with arguments ({}, {})', format(name, age))


def display():
    print("Hello, what's up friends?")


msg = decorator_function(display)

msg()


@decorator_function
def display_2(msg):
    print(msg)


display_2("Hello, local Vato")


def greater():
    print("Hello")


def repeat(fn, times):
    for i in range(times):
        fn()


repeat(greater, 5)

