print("----Cálculo prestação----")
valor = float(input("Valor: "))
taxa = float(input("Taxa: "))
tempo = float(input("Tempo: "))

prestacao = valor + (valor * (taxa/100) * tempo)
print(f"Prestação: {prestacao}")