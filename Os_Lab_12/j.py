for var1 in range(1, 4):
    for var2 in (0,5):
        if (var1 == 2 and var2 == 0):
            continue
        elif (var1 == 4 and var2 == 1):
            print(var1)
        else:
            print(var1, var2)
