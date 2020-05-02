# The Automobile class holds general data
# about an automobile in inventory


class Automobile:

    def __init__(self, make, model, mileage, price):
        self.__make = make
        self.__model = model
        self.__mileage = mileage
        self.__price = price

    def set_make(self, make):
        self.__make = make

    def set_model(self, model):
        self.__model = model

    def set_mileage(self, mileage):
        self.__mileage = mileage

    def set_price(self, price):
        self.__price = price

    def get_make(self):
        return self.__make

    def get_model(self):
        return self.__model

    def get_mileage(self):
        return self.__mileage

    def get_price(self):
        return self.__price

# The Car class represents a car. It is a subclass
# of the Automobile class


class Car(Automobile):
    # The __init__ method accepts arguments for the
    # car's make, model, mileage, price and doors

    def __init__(self, make, model, mileage, price, doors):
        # Call the superclass's __init__ method and pass
        # the required arguments.Note that we also have
        # to pass self as an argument
        Automobile.__init__(self, make, model, mileage, price)

        # Initialize the __doors attribute
        self.__doors = doors

    def set_doors(self, doors):
        self.__doors = doors

    def get_doors(self):
        return self.__doors


class Truck(Automobile):
    # The __init__ method accepts arguments for the
    # Truck's make, model, mileage, price and drive type

    def __init__(self, make, model, mileage, price, drive_type):
        Automobile.__init__(self, make, model, mileage, price)

        self.__drive_type = drive_type

    def set_drive_type(self, drive_type):
        self.__drive_type = drive_type

    def get_drive_type(self):
        return self.__drive_type


class SUV(Automobile):
    # pass_cap - passanger Capacity

    def __init__(self, make, model, mileage, price, pass_cap):
        Automobile.__init__(self, make, model, mileage, price)

        self.__pass_cap = pass_cap

    def set_pass_cap(self, pass_cap):
        self.__pass_cap = pass_cap

    def get_pass_cap(self):
        return self.__pass_cap
