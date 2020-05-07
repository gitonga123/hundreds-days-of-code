# The NUM_DAYS constant holds the number of
# days that we will gather sales data for
NUM_DAYS = 3

def main():
    """Create a list to hold the sales
    for each day

    Returns float values for all sales
    """
    sales = [0] * NUM_DAYS

    # create a variable to hold an index
    index = 0

    print("Enter the sales for each day")

    # Get the sales for each day
    while index < NUM_DAYS:
        print("Day # ", index + 1, ": ", sep='', end='')
        sales[index] = float(input())
        index +=1

    # Display the values entered
    print('Here are the values you entered')
    for value in sales:
        print(value)
    
    return sales

def sales_sum(sales):
    """Get the sum for the sales
    
    Arguments:
        sales {list} -- list of all sales float values
    
    Returns:
        float -- float a sum of all sales
    """
    return sum(sales)
# Call the main function
sales = main()
print("Total Sales: ", sales_sum(sales))