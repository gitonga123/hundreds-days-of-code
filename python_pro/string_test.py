# This program demonstrates several string
# testing methods.

def main():
    # Get a string from the user
    user_string = input('Enter a string: ')
    print('This is what I found about that string')

    # Test the string
    if user_string.isalnum():
        print('This string is alphanumeric')
    if user_string.isdigit():
        print('This string contains only digit')
    if user_string.isalpha():
        print('This string contains only alphabetic characters')
    if user_string.isspace():
        print('The string contains only whitespace characters')
    if user_string.islower():
        print('The letters in the string are all lowercases')
    if user_string.isupper():
        print('The letters in the string are all uppercase.')


# call the main function
main()