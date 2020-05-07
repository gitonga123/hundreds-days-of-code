import math
import numbers

class CalculatorError(Exception):
    """An Exception class for Calculator
    """


class Calculator:

    def __init__(self, number_1, number_2):
        self.__number_1 = number_1
        self.__number_2 = number_2
    
    def add(self):
        self._check_operand(self.__number_1)
        self._check_operand(self.__number_2)
        return self.__number_1 + self.__number_2
    
    def subtract(self):
        return self.__number_1 - self.__number_2
    
    def modulo(self):
        return self.__number_1 % self.__number_2
        
    def power(self):
        return self.__number_1 ** self.__number_2
    
    def division(self):
        self._check_operand(self.__number_1)
        self._check_operand(self.__number_2)
        try:
            return self.__number_1/self.__number_2
        except ZeroDivisionError:
            raise CalculatorError("Zero Division Error")
    
    def multiply(self):
        return self.__number_1 * self.__number_2

    def _check_operand(self, operand):
        if not isinstance(operand, numbers.Number):
            raise CalculatorError(f'"{operand}" is not a number')