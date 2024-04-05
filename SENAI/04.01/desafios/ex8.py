
r1 = float(input("Reta 1: "))
r2 = float(input("Reta 2: "))
r3 = float(input("Reta 3: "))

if ((r1 + r2) > r3) and ((r1 + r3) > r2) and ((r2 + r3) > r1):
    print("Forma triângulo")
else:
    print("Não forma triângulo")
