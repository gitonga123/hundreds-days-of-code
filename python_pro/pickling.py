# Serializing a object is the process of converting the object to a stream
# of bytes that can be saved to a file for later retrieval. In Python, object
# serialization is called pickling.

import pickle

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

output_file = open('phonebook.dat', 'wb')
pickle.dump(test_scores, output_file)
output_file.close() 

new_output_file = open('phonebook.dat', 'rb')
result = pickle.load(new_output_file)
new_output_file.close()
print(result)
