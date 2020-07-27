# A single note of a singly linked list

class Node:
    # Constructor
    def __init__(self, data, next=None):
        self.data = data
        self.next = next
    
    def __repr__(self):
        return self.data

# A Linked List class with a single head node
class LinkedList:
    def __init__(self):
        self.head = None
    
    def __repr__(self):
        node = self.head
        nodes = []
        while node is not None:
            nodes.append(node.data)
            node = node.next
        nodes.append("None")
        return " -> ".join(nodes)

    # insertion method for the linked list
    def insert(self, data):
        newNode = Node(data)
        if self.head:
            current = self.head
            while current.next:
                current = current.next
            current.next = newNode
        else:
            self.head = newNode
    
    # print method for the linked list
    def printLL(self):
        current = self.head
        while current:
            print(current.data)
            current = current.next



# Singly Linked List with insertion and print methods
LL = LinkedList()
LL.insert(3)
LL.insert(4)
LL.insert(5)
LL.printLL()

