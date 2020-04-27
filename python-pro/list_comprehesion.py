x = int(input())
y = int(input())
z = int(input())
n = int(input())

new_list = []
list_x = [x for x in range(x+1)]
list_y = [y for y in range(y+1)]
list_z = [z for z in range(z+1)]

x, y, z, n = [input() for i in range(4)]
print[[a, b, c] for a in range(x+1) for b in range(y+1) for c in range(z+1) if a+b+c != n]
