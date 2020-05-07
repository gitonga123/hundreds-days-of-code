class Solution:
    def isHappy(self, n: int) -> bool:
        slow = n
        fast = n
        while True:
            
            slow = self.numSquareSum(slow)
            fast = self.numSquareSum(self.numSquareSum(fast))

            if (slow != fast):
                continue
            else:
                break

        return slow == 1

    def numSquareSum(self, n):
        squareSum = 0
        while(n):
            squareSum += (n % 10) * (n % 10)
            n = int(n / 10)
        
        print(squareSum)
        return squareSum

object = Solution()

print(object.isHappy(20))
