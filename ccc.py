from platform import python_branch


def addNum(num1, num2):
    print(num1 + num2)
#addNum(2, 4)

def ccc (amount, coins):
    if (amount == 0):
        ret = 1
    elif (amount <0) or (len(coins) == 0):
        ret = 0
    else:
        ret = ccc(amount, coins[1:len(coins)]) + ccc(amount - coins[0], coins)
    return ret

print(ccc(50,[10, 5, 1, 0.5, 0.2]))