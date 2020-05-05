def swap_case(s):
    # new_string = [S for x in s: if s[x].islower(): upper(s[x]) elif s[x].isUpper(): lower(s[x])]
    return ''.join([i.lower() if i.isupper() else i.upper() for i in s])


print(swap_case('HackerRank.com presents "Pythonist 2".'))
