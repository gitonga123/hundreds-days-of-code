from calculator import Calculator, CalculatorError
import pytest


x = 8
y = 10

calculator = Calculator(x, y)

def test_add():
    assert calculator.add() == 18

def test_division():
    assert calculator.division() == 0.8
    
def test_multiplication():
    assert calculator.multiply() == 80

def test_modulo():
    assert (calculator.modulo()) == (x % y)

def test_power():
    assert (calculator.power()) == (8 ** 10)

def test_subtract():
    assert calculator.subtract() == -2

def test_add_weired_stuff():
    new_cal = Calculator("two", "three")

    with pytest.raises(CalculatorError):
        result = new_cal.add()

def test_zero_division_error():
    new_call = Calculator(5, 0)

    with pytest.raises(CalculatorError):
        result = new_call.division()