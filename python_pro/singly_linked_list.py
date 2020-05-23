# Create Nodes
# Crete Linked List
# Add nodes to linked list
# Print Linked Lit

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
    


class LinkedList:
    def __init__(self):
        self.head = None
    
    def insert(self, newNode):
        if self.head is None:
            self.head = newNode
        else:
            lastNode = self.head
            while True:
                if lastNode.next is None:
                    break
                lastNode = lastNode.next
            
            lastNode.next = newNode
    
    def printList(self):
        if self.head is None:
            print("List is empty")
        
        currentNode = self.head

        while True:
            if currentNode is None:
                break
            print(currentNode.data)
            currentNode = currentNode.next

firstNode = Node("John")
linkedList = LinkedList()
linkedList.insert(firstNode)
secondNode = Node("Ben")
linkedList.insert(secondNode)
thirdNode = Node('Matthew')
linkedList.insert(thirdNode)
linkedList.printList()