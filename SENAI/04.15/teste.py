
valor = float(input("Valor: "))
salarioLiquido = float(input("Salario Líquido: "))
meses = int(input("Quantidade de Meses: "))

while True:
    nome = input("Nome: ")
    if nome.istitle():
        break
    else:
        print("Deve ter a primeira letra de cada palavra em maiúsculo.")

while True:
    cpf = input("CPF: ")
    if len(cpf) >= 11 and not any(c.isalpha() for c in cpf) and not any(c == " " for c in cpf):
        break
    else:
        print("Deve conter 11 dígitos sem separação.")

while True:
    tel = input("Tel: ")
    if(not any(c.isalpha() for c in tel) and not any(c == " " for c in tel)):
        break
    else:
        print("Deve estar sem espaçamento ou qualquer caractere adicional.")

endereco = input("Endereco: ")

while True:
    cep = input("CEP: ")
    if len(cep) == 8 and not any(c == " " for c in cep):
        break
    else:
        print("Deve conter 8 dígitos sem separação.")

while True:
    email = input("Email: ")
    if email.islower() and "@gmail.com" in email:
        break
    else:
        print("Deve estar todo em minúsculo e ser obrigatoriamente um endereço do Gmail.")




prestacaoMensal = valor / meses
if prestacaoMensal > (0.3 * salarioLiquido):
     print("Empréstimo Negado!")
else:
    print("Empréstimo Aprovado!")