def squareSortedNumbers(n):
    squared_results = list(map(lambda x: x**2 , n))
    squared_results.sort()
    return squared_results


print(squareSortedNumbers([-4,-1,0,3,10]))