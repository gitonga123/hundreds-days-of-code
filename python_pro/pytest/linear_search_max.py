def find_max(data):
    """Return the maximum number in a list

    Arguments:
        data {list} -- list of numbers
    """
    biggest = data[0]

    for val in data:
        if val > biggest:
            biggest = val

    return biggest