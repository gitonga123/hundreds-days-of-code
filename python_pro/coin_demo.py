import random

# The coin class simulates a coint that can be flipped

class Coin():
    def __init__(self):
        self.__sideup = 'Heads'
    
    def toss_coin(self):
        if random.randint(0, 1) == 0:
            self.__sideup = 'Heads'
        else:
            self.__sideup = 'Tails'
        
    
    def get_sideup(self):
        return self.__sideup

def main():
    my_coin = Coin()
    my_coin.__sideup = 'Tails'
    print('This side is up:', my_coin.get_sideup())
    for x in range(10):
        my_coin.toss_coin()
        print(x, ': This side is up:', my_coin.get_sideup())

main()