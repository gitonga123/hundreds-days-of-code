# Creating a dictonary
phonebook = {'Chris':'555−1111', 'Katie':'555−2222', 'Joanne':'555−3333'}

# Retrieving a Value from a Dictionary
print(phonebook['Chris'])

# Using the in and not in Operators to Test
# for a Value in a Dictionary
if 'Katie' in phonebook:
    print(phonebook['Katie'])

# Adding Elements to an Existing Dictionary
phonebook['James'] = "888-911"
phonebook['Cate'] = "112-911"

# Deleting Elements
if "James" in phonebook:
    del phonebook['James']

if "Cate" in phonebook:
    del phonebook['Cate']

# Getting the Number of Elements in a Dictionary
phonebook['Cate'] = "112-911"
print(len(phonebook))