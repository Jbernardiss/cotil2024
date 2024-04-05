
vel = float(input("Velocidade: "))

if(vel > 80):
    print("Você foi multado!")
    print(f"Valor: {(vel - 80) * 7}")
else:
    print("Everything's fine!")