def getFibonacci(i):
    """Fibonacci series using inner functions

    Arguments:
        i {int} -- value to calculate the fibonacci for

    Returns:
        int -- fibonacci value for i
    """
    def checkn(n):
        return n == 0 or n == 1

    def iterfib(n):
        if checkn(n):
            return n
        a, b = 0, 1

        for item in range(0, n - 1):
            b = a + b
            a = b - a
            print(item)

        return b

    def recfib(n):
        if checkn(n):
            return n
        return recfib(n - 1) + recfib(n - 2)

    if i == 0:
        return iterfib

    return recfib

    fib = getFibonacci(1)

    print(fib(8))
