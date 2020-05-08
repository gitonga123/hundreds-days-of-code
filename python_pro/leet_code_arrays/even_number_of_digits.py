# Find Numbers with Even Number of Digits
import math

def findNumbers(n):
    counter = 0
    numbers_count = [0]
    for i in n:
        digits = int(math.log10(i))+1
        if digits % 2 == 0:
            counter += 1
            if (counter > numbers_count[0]):
                numbers_count[0] = counter
    
    return numbers_count[0]
        

print(findNumbers([555,901,482,1771]))
print(findNumbers([12,345,2,6,7896]))
