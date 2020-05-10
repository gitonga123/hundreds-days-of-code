def squareSortedNumbers(n):
    squared_results = list(map(lambda x: x**2 , n))
    squared_results.sort()
    return squared_results


# print(squareSortedNumbers([-4,-1,0,3,10]))

# Duplicate Zeros
arr = [1,0,2,3,0,4,5,0]
print(arr)
for i in range(len(arr)):
    if arr[i] == 0:
        arr.insert(i, 0)

print(arr)
# arr.insert(1, 0)
# arr.insert(5, 0)
# arr.insert(9, 0)
# print(arr)
    