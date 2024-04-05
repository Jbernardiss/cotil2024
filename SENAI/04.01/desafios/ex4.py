
dist = float(input("Distância: "))

if(dist > 200):
    print(f"Preço: {dist * 0.45}")
else:
    print(f"Preço: {dist * 0.5}")

