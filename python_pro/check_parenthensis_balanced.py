from stacks import Stack


def parChecker(symbolString):
    """This function checks if a each ({[ has
        a corresponding closing ]})

    Arguments:
        symbolString {string} -- string with opening and closing symbols
    """
    s = Stack()
    balanced = True
    index = 0

    while index < len(symbolString) and balanced:
        symbol = symbolString[index]
        if symbol in "([{":
            s.push(symbol)
        else:
            if s.isEmpty():
                balanced = False
            else:
                top = s.pop()

                if not matches(top, symbol):
                    balanced = False

        index = index + 1

    if balanced and s.isEmpty():
        return True
    else:
        return False


def matches(open_s, close_s):
    """create a string of closing and opening symbols

    Arguments:
        open_s {string} -- opening symbols
        close_s {string} -- closing symbols
    """
    opens = "([{"
    closers = ")]}"

    return opens.index(open_s) == closers.index(close_s)


print(parChecker('{({([][])}())}'))
print(parChecker('{[(())]}'))
