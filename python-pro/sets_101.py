# Creating a Set
myset = set()
myset_2 = set([1, 3, 5, 6])
myset_3 = set("abc")
print(myset_2)

# Getting the Number of Elements in a Set
print(len(myset_2))

# Adding and Removing Elements
myset.add(1)
myset.add(3)
print(myset)

myset.update(myset_3)

myset.remove(3)
myset.remove("b")
myset.discard("d")
print(myset)

# Using the for Loop to Iterate over a Set
for key in myset:
    print(key)

# Using the in and not in Operators to Test
for a Value in a Set