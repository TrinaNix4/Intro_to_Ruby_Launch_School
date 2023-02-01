# getting input from user
name = input(
    "What is the name of the person you would like to send the invitation to?")
date = input("What is the date of the party?")
time = input("What time is the party?")
location = input("Where will the party be located?")
# print blank line line
print()

# output
print('To:', name)
print('Please attend my birthday party!')
print('The party will be at ' + location + ' on ' +
      date + ' at ' + time + '. I hope to see you there!')
# blank line
print()
# ascii art
print("""X X X X X X X X X X X X X X X X X X X X X X X X X X
X                                                 X
X                     0   0                       X
X                     |   |                       X
X                 ____|___|____                   X
X              0  |~ ~ ~ ~ ~ ~|   0               X
X              |  |           |   |               X
X           ___|__|___________|___|__             X
X           |/\/\/\/\/\/\/\/\/\/\/\/|             X
X       0   |       H a p p y       |   0         X
X       |   |/\/\/\/\/\/\/\/\/\/\/\/|   |         X
X     __|___|_______________________|___|__       X
X     |/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|       X
X     |                                   |       X
X     |         B i r t h d a y! ! !      |       X
X     | ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ |       X
X     |___________________________________|       X
X                                                 X
X X X X X X X X X X X X X X X X X X X X X X X X X X""")
