import math

class Calculator:

    def __init__(self, number_1, number_2):
        self.__number_1 = number_1
        self.__number_2 = number_2
    
    def add(self):
        return self.__number_1 + self.__number_2
    
    def subtract(self):
        return self.__number_1 - self.__number_2
    
    def modulo(self):
        return self.__number_1 % self.__number_2
        
    def power(self):
        return self.__number_1 ** self.__number_2
    
    def division(self):
        return self.__number_1/self.__number_2
    
    def multiply(self):
        return self.__number_1 * self.__number_2