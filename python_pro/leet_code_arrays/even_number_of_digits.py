# Find Numbers with Even Number of Digits
import math

def findNumbers(n):
    counter = 0
    for i in n:
        digits = int(math.log10(i))+1
        if digits % 2 == 0:
            counter += 1
            
    
    return counter
        

print(findNumbers([555,901,482,1771]))
print(findNumbers([12,345,2,6,7896]))

# Solution 2

def findNumbers_2(n):
    num_strings = map(str, n)
    counter = 0
    for i in num_strings:
        if len(i) % 2 == 0:
            counter += 1
    
    return counter

print(findNumbers_2([555,901,482,1771]))
print(findNumbers_2([12,345,2,6,7896]))