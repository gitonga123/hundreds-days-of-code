# Nested Lists
# Hacker Rank task
"""
    Given the names and grades for each student in a Physics class of 
    students, store them in a nested list and print the name(s) of any student(s) having the second lowest grade.
"""
if __name__ == '__main__':
    students_score = []
    score_list = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students_score.append([name, score])
        score_list.append(score)

    second_lowest_value = sorted(list(set(score_list)))[1]
    
    for name, score in sorted(students_score):
        if score == second_lowest_value:
            print(name)
