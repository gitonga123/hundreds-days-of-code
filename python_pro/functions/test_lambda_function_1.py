from lambda_function_1 import do_something

f2 = lambda : print("Simple function")

def test_do_something_function():
    assert do_something(f2) == (print("Simple Function"))