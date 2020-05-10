def anagramSolution1(s1, s2):
    stillOk = True
    if len(s1) != len(s2):
        stillOk = False

    alist = list(s2)
    pos1 = 0
    while pos1 < len(s1) and stillOk:
        pos2 = 0
        found = False
        while pos2 < len(alist) and not found:
            if s1[pos1] == alist[pos2]:
                found = True
            else:
                pos2 = pos2 + 1

        if found:
            alist[pos2] = None
        else:
            stillOk = False

        pos1 = pos1 + 1

    return stillOk

print(anagramSolution1('abcd', 'dcba'))
print(anagramSolution1('dad', 'add'))
print(anagramSolution1('mother', 'another'))
