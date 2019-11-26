while True:
    n = int(input("numero de vezes"))
    vi = int(input("valor inicial"))
    r = int(input("registrador da cor"))
    k = 1
    while k < n:
        if (k == 1):
            print('sw ${0},{1} ($11)'.format(r, vi))
        vi = vi + 4
        print('sw ${0},{1} ($11)'.format(r, vi))
        k += 1
