"""Given an array, rotate the array to the right by k steps, where k is non-negative.

Follow up:

Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
Could you do it in-place with O(1) extra space?
    """
def rotate(arr, k):
    while k > 0:
        val = arr.pop()
        k = k - 1
        arr.insert(0, val)


m_list = [1,2,3,4,5,6,7]
rotate(m_list, 3)
print(m_list)


nums = [-1, -100, 3, 99]
k = 2
rotate(nums, k)
print(nums)
