if __name__ == "__main__":
    first_input = int(input())
    integer_list = list(map(int, input().split(' ')))
    second_input = int(input())
    integer_list_2 = list(map(int, input().split(' ')))
    first_set = set(integer_list)
    second_set = set(integer_list_2)
    diff_set = set()
    diff_set.update(second_set.difference(first_set))
    diff_set.update(first_set.difference(second_set))
    result = list(diff_set)
    result.sort()

    for i in range(len(result)):
        print(result[i])

    
