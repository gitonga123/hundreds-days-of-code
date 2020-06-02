def selectionSort(arr):
    for fillslot in range(len(arr)-1, 0 , -1):
        positionOfMax = 0
        for location in range(1, fillslot+1):
            if arr[location] > arr[positionOfMax]:
                positionOfMax = location
        
        temp = arr[fillslot]
        arr[fillslot] = arr[positionOfMax]
        arr[positionOfMax] = temp

alist = [54,26,93,17,77,31,44,55,20]
selectionSort(alist)
print(alist)
