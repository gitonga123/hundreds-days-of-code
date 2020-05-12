# Write a function revstring(my_string) that uses a stack to reverse the characters in a string.
class Stack:
    def __init__(self):
        self.items = []

    def isEmpty(self):
        return self.items == []

    def push(self, item):
        self.items.append(item)

    def pop(self):
        return self.items.pop()

    def peek(self):
        return self.items[(len(self.items) - 1)]

    def size(self):
        return len(self.items)


def revstring(my_string):
    my_stack = Stack()
    revstr = ''

    for ch in my_string:
        my_stack.push(ch)

    while not my_stack.isEmpty():
        revstr = revstr + my_stack.pop()

    return revstr


def test_string_is_reversed(input_value, output_value):
    return input_value == output_value


print(test_string_is_reversed(revstring("dad"), "dad"))
print(test_string_is_reversed(revstring("d"), "d"))
print(test_string_is_reversed(revstring("apple"), "elppa"))
print(test_string_is_reversed(revstring("father"), "rehtaf"))
