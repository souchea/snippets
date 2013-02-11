##
# @author Aurelien Souchet
# @file loop.py
#

while <test1>:
    <statements1>
    if <test2>: break
    if <test3>: continue
else:
    <statements2>


for <target> in <objects>:
    <statements1>
    if <test2>: break
    if <test3>: continue
else:
    <statements2>

items = ["aaa", 111, (4, 5), 2.01]
tests = [(4, 5), 3.14]

for keys in tests:
    for item in items:
        if item == key:
            print(key, "was found")
            break
    else:
        print(key, "not found!")
