def check_even(N):
    is_even = 'NO'
    if N <= 2:
        return "NO"

    if N % 2 == 0:
        is_even = "YES"
    
    return is_even

if __name__=="__main__":
    input_value = int(input())
    print(check_even(input_value))