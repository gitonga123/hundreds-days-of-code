"""
Given an array A of integers, return true if and only if it is a valid mountain array.

Recall that A is a mountain array if and only if:

A.length >= 3
There exists some i with 0 < i < A.length - 1 such that:
A[0] < A[1] < ... A[i-1] < A[i]
A[i] > A[i+1] > ... > A[A.length - 1]
"""

A = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


def validMountainArray(A):
    """Check if list is a valid mountain

    Arguments:
        A {List} -- List of integers

    Returns:
        bool -- returns False if not a valid mountain and vice versa
    """
    N = len(A)
    i = 0

    # walk up
    while i+1 < N and A[i] < A[i+1]:
        i += 1

    # peak can't be first or last
    if i == 0 or i == N-1:
        return False

    # walk down
    while i+1 < N and A[i] > A[i+1]:
        i += 1

    return i == N-1


print(validMountainArray(A))
