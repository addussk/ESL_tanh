



input[1,3,2,1]



def tanh(x, y, dokladnosc=15):
    sinus = 0.0
    cosinus = 0.0
    silnia = 1
    xx = x
    # wyznaczenie wartosci sinusa hiper
    for n in range(dokladnosc):
        sinus = sinus + xx / silnia
        if n < (dokladnosc - 1):
         !   silnia *= (2 * n + 2) * (2 * n + 3)
            xx *= x * x
    # wyznaczanie wartosci cosinusa hiper
    xx = 1
    silnia = 1





    for n in range(dokladnosc):
        cosinus =  cosinus + xx / silnia
        if n < (dokladnosc - 1):
            silnia *= ((2 * n + 1) * (2 * n + 2))
            xx *= x * x
    y = sinus / cosinus



