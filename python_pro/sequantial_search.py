def sequentialSearch(arr, value):
    found = False
    index = 0

    while index < len(arr) and found != True:
        if arr[index] == value:
            found = True
        else:
            index += 1

    return found


def orderedSequentialSearch(arr, item):
    index = 0
    found = False
    stop = False

    while index < len(arr) and not found and not stop:
        if arr[index] == item:
            found = True
        else:
            if arr[index] > item:
                stop = True
            else:
                index += 1

    return found


def binarySearch(arr, item):
    found = False
    first = 0
    last = len(arr) - 1

    while first <= last and not found:
        middle = (first + last) // 2
        if arr[middle] == item:
            found = True
        else:
            if item < arr[middle]:
                last = middle - 1
            else:
                first = middle + 1

    return found


testlist = [1, 2, 32, 8, 17, 19, 42, 13, 0]
print(sequentialSearch(testlist, 1))
print(sequentialSearch(testlist, 19))

testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42, ]
print(orderedSequentialSearch(testlist, 3))
print(orderedSequentialSearch(testlist, 13))

print(binarySearch(testlist, 3))
print(binarySearch(testlist, 13))
