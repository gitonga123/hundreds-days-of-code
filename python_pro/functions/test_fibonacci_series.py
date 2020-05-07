from fibonacci_series import  getFibonacci

input_value = 8
output_value = 21
def test_get_fibonacci():
    fib = getFibonacci(1)
    assert fib(input_value) == output_value
