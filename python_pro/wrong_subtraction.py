def wrong_subtration(N, k):
    for i in range(k):
        if N % 10 == 0:
            N = N // 10
        else:
            N = N - 1 
    return N

if __name__ == "__main__":
    inputs = input().split(' ')
    N, K = int(inputs[0]), int(inputs[1])
    print(wrong_subtration(N, K))