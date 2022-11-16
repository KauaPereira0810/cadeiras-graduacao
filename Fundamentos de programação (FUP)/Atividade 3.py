def x(string):
    string = string.lower().replace(" ", "")
    tamanho = len(string)
    primeiro = 0
    ultimo = tamanho - 1 
    y = 1
    while(primeiro < ultimo):
           if(string[primeiro] == string[ultimo]):
               primeiro = primeiro + 1
               ultimo = ultimo - 1
           else:
               y = 0
               break
    return int(y)  
string = input("Digite uma string: ")

y = x(string)

if(y):
    print("Sua string É um palíndromo")
else:
    print("Sua string NÃO É um palíndromo")