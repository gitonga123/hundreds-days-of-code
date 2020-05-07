from py_math import add, multiply


def test_add():
    assert add(1, 2) == 3
    assert add(1, 3) > 1


def test_multiply():
    assert multiply(1, 5) == 5
    assert multiply(1, 5) != 1
