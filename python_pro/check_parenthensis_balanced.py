from stacks import Stack


def parChecker(symbolString):
    """This function checks if a each parenthensis has
        a corresponding closing parenthensis

    Arguments:
        symbolString {string} -- string with opening and closing parenthensis
    """
    s = Stack()
    balanced = True
    index = 0

    while index < len(symbolString) and balanced:
        symbol = symbolString[index]
        if symbol == "(":
            s.push(symbol)
        else:
            if s.isEmpty():
                balanced = False
            else:
                s.pop()
        index = index + 1

    if balanced and s.isEmpty():
        return True
    else:
        return False


print(parChecker('((()))'))
print(parChecker('(()'))
