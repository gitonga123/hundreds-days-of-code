def solution(N):
    bin_value = "{0:b}".format(N)
    max_gap = 0
    accum = 0

    for i in bin_value:
        if i == '0':
            accum += 1
        elif i == '1':
            if accum > max_gap:
                max_gap = accum
            accum = 0
    
    return max_gap

def solution_2(N):
    binary_value = "{0:b}".format(N)
    print(binary_value)
    binary_gap = 0
    max_binary_gap = 0
    first_index = 0
    for i in range(len(binary_value)):
        if binary_value[i] == "1":
            first_index = i + 1
            break
    
    for i in range(first_index, len(binary_value)):
        if binary_value[i] == "0":
            binary_gap += 1
        else:
            if binary_gap > max_binary_gap:
                max_binary_gap = binary_gap
    
    return max_binary_gap

        



print("Solution {}".format(solution_2(22)))
