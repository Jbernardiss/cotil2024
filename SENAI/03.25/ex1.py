
nome1 = input("Nome 1: ")
nome2 = input("Nome 2: ")

print(nome1.upper())
print(nome2.upper())

print(f"Total de caracteres: {len(nome1.replace(" ", "")) + len(nome2.replace(" ", ""))}")
print(f"Letras primeiro nome: {len(nome1.replace(" ", ""))}")
