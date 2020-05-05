# This program demonstrates the range sum function

def main():
    numbers = [1, 7, 3, 4, 5, 9, 9, 8, 9]

    my_sum = range_sum(numbers, 2, 5)

    print('The sum of items 2 through 5 is', my_sum)

def range_sum(numbers, start, end):
    if start > end:
        return 0
    else:
        return numbers[start] + range_sum(numbers, start + 1, end)

main()