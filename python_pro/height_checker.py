"""
Students are asked to stand in non-decreasing order of heights for an annual photo.

Return the minimum number of students that must move in order for all students to be standing in non-decreasing order of height.

Notice that when a group of students is selected they can reorder in any possible way between themselves and the non selected students remain on their seats.
"""
heights = [1, 2, 3, 4, 5]

def heightChecker(heights):
    new_list = sorted(heights)
    moves = 0
    for i in range(len(new_list)):
        if new_list[i] != heights[i]:
            moves += 1
    return moves

print(heightChecker(heights))
