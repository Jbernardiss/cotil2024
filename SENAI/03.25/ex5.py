
txt = input("Frase: ")

a_f_i = txt.find("a")
a_l_i = txt.rfind("a")

print(f"Número de As: {txt.count("a")}")
print(f"Primeira aparição: {a_f_i if a_f_i != -1 else "Não contém a"}")
print(f"Última aparição: {a_l_i if a_l_i != -1 else "Não contém a"}")

