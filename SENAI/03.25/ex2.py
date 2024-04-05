
n = input("Digite um número(0 a 9999): ")

try:
    if int(n) > 9999:
        print("Número grande demais!")
    elif int(n) < 0:
        print("Número pequeno demais!")
    elif len(n) == 1:
        print(f"Unidade: {n[0]}")
    elif len(n) == 2:
        print(f"Dezena: {n[0]}")
        print(f"Unidade: {n[1]}")
    elif len(n) == 3:
        print(f"Centena: {n[0]}")
        print(f"Dezena: {n[1]}")
        print(f"Unidade: {n[2]}")
    elif len(n) == 4:
        print(f"Milhar: {n[0]}")
        print(f"Centena: {n[1]}")
        print(f"Dezena: {n[2]}")
        print(f"Unidade: {n[3]}")
except:
    print("Input inválido!")
