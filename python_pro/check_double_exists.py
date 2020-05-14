"""
Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).

More formally check if there exists two indices i and j such that :

i != j
0 <= i, j < arr.length
arr[i] == 2 * arr[j]

"""
arr = [10,2,5,3]

def checkIfExist(arr):
    s = set()
    for num in arr:
        if num not in s:
            if num % 2 == 0:
                s.add(num // 2)
            s.add(num * 2)
        else:
            return True
    
    return False

print(checkIfExist(arr))

