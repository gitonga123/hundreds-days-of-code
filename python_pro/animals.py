""" Polymorphism allows subclasses to have methods with the same names
as methods i their superclasses. It gives the ability for a program to call the
correct method depending on the type of object that is sued to call it."""

class Mammal:

    def __init__(self, species):
        self.__species = species
    
    def show_species(self):
        print('I am a', self.__species)

    def make_sound(self):
        print('Grrrrr')

    
class Dog(Mammal):
    def __init__(self):
        Mammal.__init__(self, 'Dog')
    
    def make_sound(self):
        print('woof! Woof!')
    

class Cat(Mammal):
    def __init__(self):  
        Mammal.__init__(self, 'Cat')
    
    def make_sound(self):
        print('Meow! Meow!')