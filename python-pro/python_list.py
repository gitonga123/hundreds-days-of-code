if __name__ == '__main__':
    N = int(input())
    initial_list = []
    for _ in range(N):
        input_value = input().split(' ')
        if input_value[0] == 'insert':
            initial_list.insert(int(input_value[1]), int(input_value[2]))
        if input_value[0] == 'print':
            print(initial_list)
        if input_value[0] == 'remove':
            initial_list.remove(int(input_value[1]))
        if input_value[0] == 'append':
            initial_list.append(int(input_value[1]))
        if input_value[0] == 'sort':
            initial_list.sort()
        if input_value[0] == 'pop':
            initial_list.pop()
        if input_value[0] == 'reverse':
            initial_list.reverse()
    
    print(initial_list)
