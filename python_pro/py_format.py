# Basic formatting
print('%s %s' % ('one', 'two'))
print('{} {}'.format('one', 'two'))
print("%d %d" % (1, 2))
print('{} {}'.format(1, 2))
print('{1} {0}'.format(1, 2))

# Value conversion

class Data(object):
    def __str__(self):
        return 'str'
    
    def __repr__(self):
        return 'repr'
    
print("%s %r" %(Data(), Data()))
print('{0!s} {0!r}'.format(Data()))

# Padding and aligning strings

# align right
print("%10s" % ('test'))
print('{:>10}'.format('test'))

# align left
print("%-10s" % ('test'))
print('{:10}'.format('test'))

print('{:_<10}'.format('test'))
print('{:^10}'.format('test'))

# Truncating long strings
print("%.5s" % ('elephant'))
print("{:.5}".format('elephant'))

# Combining truncating and padding
print("%-10.5s" % ('elephant'))
print("{:^10.5}".format('elephant'))


# Numbers
# integers
print("%d" % (42, ))
print("{:d}".format(42))
# floats
print("%f" % (3.141592653589792))
print("{:f}".format(3.141592653589792))