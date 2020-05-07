store = []


def func(a, b):
    def local_func(x, y):
        store.append(local_func)
        print(local_func)
        print(x * y)
    return local_func(a, b)


func(2, 3) # 6
func(2, 6) # 12
print(store) # local_func * 2
