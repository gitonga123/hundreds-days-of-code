"""
Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.

Note that elements beyond the length of the original array are not written.

Do the above modifications to the input array in place, do not return anything from your function.
"""
arr = [0, 1, 7, 6, 0, 2, 0, 7]
brr = [0, 0, 1, 7, 6, 0, 0, 2]


def duplicateZeros(arr):
    """
    Do not return anything, modify arr in-place instead.
    """
    # indexes_with_zero = []
    # initial_size = len(arr)
    i = 0

    while i < len(arr) - 1:
        if arr[i] == 0:
            arr.insert(i+1, 0)
            arr.pop()
            i = i + 2
        else:
            i = i + 1

    # print(indexes_with_zero)

    # for index in range(initial_size):
    #     if len(arr) > initial_size:
    #         arr.pop()
    #     else:
    #         if index in indexes_with_zero:
    #             print(index)
            # arr.insert(index + 1, 0)


duplicateZeros(arr)

print(arr)
