"""
Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).
"""
nums = [3, 3, 4, 3, 4, 3, 0, 3, 3]


def thirdMax(nums):
    v = [float('-inf'), float('-inf'), float('-inf')]
    for num in nums:
        if num not in v:
            if num > v[0]:
                v = [num, v[0], v[1]]
            elif num > v[1]: v = [v[0], num, v[1]]
            elif num > v[2]:
                v = [v[0], v[1], num]
    return max(nums) if float('-inf') in v else v[2]


print(thirdMax(nums))
