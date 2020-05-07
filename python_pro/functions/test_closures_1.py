from closures_1 import getmultiply

def test_get_multiply():
    f1 = getmultiply(10)
    f2 = getmultiply(5)
    assert f1(2) == 20
    assert f2(2) == 10