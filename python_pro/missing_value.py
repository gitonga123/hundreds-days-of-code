def solution(A):

    if len(A) == 0:
        return 1

    s = set()
    l = len(A)
    missing = 0

    for i in A:
        if i < 0:
            s.add(0)
        s.add(i)

    if len(s) > 1:
        for i in range(l + 1):
            if i not in s:
                missing = i
    
    if len(s) > 1 and missing == 0:
        missing = A[l-1] + 1
    else:
        if missing == 0:
            missing =+ 1
            
    return missing


print(solution([1, 3, 6, 4, 1, 2]));
print(solution([1, 2, 3]));
