import time


def sumOfN(n):
    theSum = 0
    start = time.time()
    for i in range(1, n+1):
        theSum = theSum + 1

    end = time.time()

    return theSum, end-start


for i in range(10000000005):
    print("Sum is %d required %10.7f seconds" % sumOfN(10000))
