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

# Mixing Data Types in a Dictionary
test_scores = {
    "James": [10, 15, 25, 30],
    "Movering": [11, 18, 29, 30],
    "Vivian": {
        "Maths": 98,
        "Physics": 89,
        "English": 78,
        "Kiswahili": 56
    }
}

# Print Vivian test scores in English
print(test_scores["Vivian"]["English"])

# Using the for Loop to Iterate over a Dictionary
for key in test_scores:
    print(key, test_scores[key])

# The clear Method
dict_clear = {"first_name": "James", "last_name": "Silverstone"}
dict_clear.clear()

# The get Method
print(phonebook.get("Silverstone", "Am not found"))
print(phonebook.get("Cate", "Am not found"))

# The items Method
for key, value in phonebook.items():
    print(key,value)

# The keys Method
print(phonebook.keys())

# The pop Method
pope_value = phonebook.pop('Cate', "Am not found")

print(pope_value)

# The popitem Method
key, value = phonebook.popitem()
print(key)
print(value)

# The values Method
dict_values = phonebook.values()
print(dict_values)

# Check if variable is a dictionary
is_dictionary = isinstance(phonebook, dict)
print(is_dictionary)
