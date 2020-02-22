# This program demonstrates how the append
# method can be used to add items to a list

def main():
    # First, create an empty
    name_list = []

    # Create a variable to control the loop
    again = 'y'

    # Add some names to the list
    while again == 'y':
        # Get a name from the user.
        name = input('Enter a name: ')

        # Append the name to the list
        name_list.append(name)

        # Add another one?
        print('Do you want to add another name?')
        again = input('Y = yes, anything else = no')
        print()


    # Display the names that were entered
    print('Here are the names you entered')

    for num in name_list:
        print(num)

# Call the main funciton
main()