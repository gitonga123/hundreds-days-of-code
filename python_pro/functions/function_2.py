def addition(a, b):
    return a + b

add = addition

def summation(x, y):
    return add(x, y)

def do_sum(a, b, func):
    return func(a, b)

print(add(2, 4))
print(summation(2, 4))
print(do_sum(2, 4, add))