def moveZeroes(list):
    if len(list) <= 1:
        return list
    
    left = 0
    right = 0
    temp =0

    while right < len(list):
        if list[right] == 0:
            right += 1
        else:
            temp = list[left]
            list[left] = list[right]
            list[right] = temp
            left += 1
            right += 1

    return list


print(moveZeroes([1, 2]))
