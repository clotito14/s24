n=1
m=1

while (n + m) <= 7:
    if 2*m-n >= n:
        x = m*n + 3
        n += 2
    else:
        x = m**n
        m += 1
    print(x, end=' ')
