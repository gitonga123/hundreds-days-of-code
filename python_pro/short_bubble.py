def shortBubbleSort(alist):
    exchanges = True
    num = len(alist) - 1
    while num > 0 and exchanges:
        exchanges = False
        for i in range(num):
            if alist[i] > alist[i+1]:
                exchanges = True
                temp = alist[i]
                alist[i] = alist[i+1]
                alist[i+1] = temp
        num = num - 1


alist = [20, 30, 40, 90, 50, 60, 70, 80, 100, 110]
shortBubbleSort(alist)
print(alist)

