# This program displays a simple bar chart
import matplotlib.pyplot as plt

def main():
    # Create a list with the X coordinates of each bar's left edge.
    left_edges = list(range(0, 50, 10))

    # create a list with the heights of each bar
    heights = list(range(100, 600, 100))

    # Create a variable for each the bar width
    bar_width = 5


    # Build the bar chart
    plt.bar(left_edges, heights, bar_width, color=('r', 'g', 'b', 'r', 'w', 'k'))

    # Customize the tick marks.
    plt.xticks([5, 15, 25, 35, 45], ['2016', '2017', '2018', '2019', '2020'])
    plt.yticks([0, 100, 200, 300, 400, 500], ['$0m', '$1m', '$2m', '$3m', '$4m', '$5m'])
    # display the bar chart
    plt.show()

# Call the main function
main()
