from square_sorted_array import squareSortedNumbers
import pytest

def test_square_sorted_numbers():
    assert squareSortedNumbers([-4,-1,0,3,10]) == [0, 1, 9, 16, 100]
