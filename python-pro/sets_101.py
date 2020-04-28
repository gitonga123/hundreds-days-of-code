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
if "c" in myset:
    print("Am in the set")

if "d" not in myset:
    print("Am not in the set")

# Union of two sets
new_set = myset | myset_2 | myset_3
print(new_set)

set1 = set([1, 2, 3, 4])
set2 = set([3, 4, 5, 6])

set3 = set1.union(set2)

# Finding the Intersection of Sets
new_set_in = new_set.intersection(set3)
print("Intersction")
print(new_set_in)

# Finding the Difference of Sets
