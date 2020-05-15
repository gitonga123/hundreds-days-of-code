"""
Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.


Example 1:

Input: [-4, -1, 0, 3, 10]
Output: [0, 1, 9, 16, 100]
"""


def sortedSquares(arr):
    for i in range(len(arr)):
        arr[i] = arr[i] ** 2

    arr.sort()

    return arr


print(sortedSquares([-4, -1, 0, 3, 10]))



