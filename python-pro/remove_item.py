# This program demonstrates how to use the remove
# method to remove an item from a list

def main():
    # create a list with some items
    food = ['Pizza', 'Chapati', 'Chips', 'Burgers']

    # Display the list.
    print('Here are the items in the food list:')
    print(food)

    # Get the item to change

    item = input('Which item should I remove?')

    try:
        # Remove the item
        food.remove(item)
        print('Here is the revised list: ')
        print(food)

    except ValueError:
        print('That item was not found in the list')
        
# Call the main function
def demo_sort():
    my_list = list(range(99, 1000, 100)) + list(range(5, 109, 9))
    reverse_list =list( my_list)
    print('List before sort')
    print(my_list)
    print('List after sorting')
    my_list.sort()
    print(my_list)
    print('Before reversing')
    print(reverse_list)
    reverse_list.reverse()
    print('After reversing')
    print(reverse_list)



main()        
demo_sort()
