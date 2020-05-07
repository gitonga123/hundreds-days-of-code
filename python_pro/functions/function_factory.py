# Function Factory
# specialized function that performs an operation
#  with its own arguments as well as 
# arguments passed to the function factory
def outer(x):
    def inner(y):
        return(y + " " + x)
    
    return inner

local_func = outer("Manoj")
print(local_func("Hello"))
print(local_func.__closure__)
