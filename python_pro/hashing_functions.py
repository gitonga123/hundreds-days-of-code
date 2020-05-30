def hash(astring, tablesize):
    sum = 0
    i = 1
    for pos in range(len(astring)):
        sum = sum + (ord(astring[pos]) * i)
        i += 1

    return sum % tablesize
