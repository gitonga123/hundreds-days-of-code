class Solution:
    def findMaxConsecutiveOnes(self, nums):
        consecutive_list = []
        count = 0
        for i in nums:
            if i == 1:
                count += 1
            elif i == 0:
                count = 0
            consecutive_list.append(count)
        
        return max(consecutive_list)

soln = Solution()

print(soln.findMaxConsecutiveOnes([1,1,0,1,1,1]))
