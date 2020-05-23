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

def baseConverter(decNumber, base):
    digits = "0123456789ABCDEF"
    remStack = Stack()

    while decNumber > 0:
        rem = decNumber % base
        remStack.push(rem)
        decNumber = decNumber // base
    
    new_string = ""

    while not remStack.isEmpty():
        new_string = new_string + digits[remStack.pop()]
    
    return new_string

print(divideBy2(42))
print(baseConverter(256, 16))
print(baseConverter(25, 8))
print(baseConverter(26, 26))
