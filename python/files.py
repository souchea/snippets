##
# @author Aurelien Souchet
# @file files.py
#
# 

myfile = open('myfile.txt', 'w')
myfile.write('example test file\n')
myfile.close()

myfile = open('myfile.txt')
myfile.readline()
myfile.close()

open('myfile.txt').read()

for line in open('myfile.txt'):
    print(line, end='')
