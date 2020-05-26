from stacks import Stack


def divideBy2(decNumber):
    remStack = Stack()

    while decNumber > 0:
        rem = decNumber % 2
        remStack.push(rem)
        decNumber = decNumber // 2

    binString = ""

    while not remStack.isEmpty():
        binString = binString + str(remStack.pop())

    return binString


print(divideBy2(42))
