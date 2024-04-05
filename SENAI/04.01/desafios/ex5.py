
ano = int(input("Ano: "))

if ano % 4 == 0 and not(ano % 100 == 0 and not ano % 400 == 0):
    print("Bissexto")
else:
    print("Comum")
