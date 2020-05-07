import random


def generateOne(strlen):
    alphabet = "abcdefghijklmnopqrstuvwxyz "
    res = ''
    for i in range(strlen):
        res += alphabet[random.randrange(27)]

    return res

def bestScore(goal, test_string):
    numSum = 0
    for i in range(len(goal)):
        if goal[i] == test_string[i]:
            numSum = numSum + 1
    
    return numSum / len(goal)

def main():
    goalstring = "methinks it is like a weasel"
    newString = generateOne(28)
    best = 0
    newScore = bestScore(goalstring, newString)
    while newScore < 1:
        if newScore >= best:
            best = newScore
        newString = generateOne(28)
        newScore = bestScore(goalstring, newString)
    print(newString)

main()
