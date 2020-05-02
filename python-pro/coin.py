import random

# The coin class simulates a coint that can be flipped

class Coin:
    # The __init__ method initializes the
    # __sideup data attribute with 'HEADS'

    def __init__(self):
        self.__sideup = 'Heads'

    def toss(self):
        if random.randint(0, 1) == 0:
            self.__sideup = 'Heads'
        else:
            self.__sideup = 'Trails'
    
    def get_sideup(self):
        return self.__sideup

