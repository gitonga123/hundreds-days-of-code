# This program demonstrates the insert method.

def main():
    # Create a list with some names
    names = ['Daniel', 'James', 'Cate', 'Steph']

    # DIsplay the list.
    print('The list before the insert.')
    print(names)

    # insert a new name at element 0.
    names.insert(0, 'Ann')

    # Display the list again
    print('The list after the insert: ')
    print(names)

# Call the main function

main()