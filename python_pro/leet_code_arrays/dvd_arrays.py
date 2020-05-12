class DVD:
    def __init__(self, name, releaseYear, director):
        self.name = name
        self.releaseYear = releaseYear
        self.director = director

    def __str__(self):
        return ("{self.name} directed by {self.director} released in {self.releaseYear}".format(self=self))

dvdCollection = []
my_dvd1 = DVD('The Mule', 2018, 'Clint Eastwood')
my_dvd2 = DVD('Gran Torino', 2008, 'Clint Eastwood')
my_dvd3 = DVD('Mystic River', 2003, 'Clint Eastwood')

my_dvd = DVD("Lone Survivor", 2013, 'Peter Berg')

dvdCollection.append(my_dvd)
dvdCollection.append(my_dvd1)
dvdCollection.append(my_dvd2)
dvdCollection.append(my_dvd3)

for i in range(len(dvdCollection)):
    print(dvdCollection[i])
    
binary_list = [1,1,0,1,1,1]
for i in binary_list:
    print(i)