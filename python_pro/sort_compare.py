# check if two strings are anagrams


def anagramSolution2(s1, s2):
    aList1 = list(s1)
    aList2 = list(s2)

    aList1.sort()  # o(n2) or O(n log n)
    aList2.sort()

    pos = 0
    matches = True

    while pos < len(s1) and matches:
        if aList1[pos] == aList2[pos]:
            pos = pos + 1
        else:
            matches = False
    return matches


print(anagramSolution2('abcd', 'dcba'))
print(anagramSolution2('dad', 'add'))
print(anagramSolution2('mother', 'another'))
