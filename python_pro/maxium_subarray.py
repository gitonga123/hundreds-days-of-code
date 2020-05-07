class Solution:
    def maxSubArray(self, nums) -> int:
        maxSum = []
        for i in range(len(nums)):
            if i == 0 :
                maxSum.append(nums[i])
            else:
                result = max(nums[i], nums[i] + maxSum[i-1])
                maxSum.append(result)

        return max(maxSum)


object = Solution()
print(object.maxSubArray([-2, 3, 2, -1]))
