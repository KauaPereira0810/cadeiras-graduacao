# Exercício: cadastro de uma senha de 4 caracteres
#
# Seu código deve verificar se a senha foi repetida coretamente,
# e se ela atende às seguintes condições:
#
#     C1: possui tamanho igual a 4;
#     C2: inclui pelo menos um dígito (0-9);
#     C3: inclui pelo menos uma letra maiúscula (A-Z);
#     C4: inclui pelo menos um dos seguintes caracteres 
#         especiais: '1', '@', '#', '$', '#' '%', '^', 
#         '&', '*', '(', e ')'.
# 
# Se a senha atender às condições C1-C4, imprima uma mensagem de
# sucesso. Caso contrário, imprima uma mensagem de erro.
# 
# Exercício extra: modifique seu programa para que, quando
# a senha for inválida, o programa imprima uma mensagem para
# cada condição (c1 até C4) que for violada pela senha.
#
# O código fornecido abaixo já verifica se a senha foi repetida
# corretamente. Então, você só precisa preocupar-se com as
# condições C1 a C4.
# ----------------------------------------------------------------

caracteres = ['!', '@', '#', '$', '#' '%', '^', '&', '*', '(', ')']
x = 0
senha = input('Digite a nova senha: ')
repeticao = input('Repita a senha, por favor: ')

if senha == repeticao:
    
    print('Aqui vamos testar as condições C1 até C4...')
    if len(senha) == 4:
        print('C1 foi um sucesso')
        if senha[0].isdigit() or senha[1].isdigit() or senha[2].isdigit() or senha[3].isdigit():
            print('C2 foi um sucesso')
            if senha[0].isupper() or senha[1].isupper() or senha[2].isupper() or senha[3].isupper():
                print('C3 foi um sucesso')
                if senha[0] in caracteres or senha[1] in caracteres or senha[2] in caracteres or senha[3] in caracteres:
                    print('C4 foi um sucesso') 
                else:
                    print('C4 foi violada')
            else:
                print('C3 foi violada')
        else:
            print('C2 foi violada')
    else:
        print('C1 foi violada')
                             
else:
    print('Calma, jovem, a senha repetida não confere.')

if (len(senha) == 4) and (senha[0].isdigit() or senha[1].isdigit() or senha[2].isdigit() or senha[3].isdigit()) and (senha[0].isupper() or senha[1].isupper() or senha[2].isupper() or senha[3].isupper()) and (senha[0] in caracteres or senha[1] in caracteres or senha[2] in caracteres or senha[3] in caracteres):
    print('Sucesso. Sua senha foi cadastrada corretamente')
else:
    print('Erro. Preste atenção nas condições')
    
    
# ----------------------------------------------------------------    
# Dicas:
#
# Dada uma variável do tipo string chamada x, podemos obter o
# tamanho de x usando len(x).
#
# Podemos obter o primeiro caractere de x usando x[0]. De forma
# similar, podemos obter o segundo, terceiro e quarto caracteres
# de x usando x[1], x[2] e x[3], nesta ordem.
#
# Para testar se o segundo caractere de x é um dígito, verificamos 
# o valor-verdade da expressão x[1].isdigit() .
#
# Para testar se o primeiro caractere de x é uma letra maiúscula,
# verificamos o valor-verdade da expressão x[0].isupper() .
#
# Para testar se o quarto caractere de x é igual a '@',
# verificamos a condição x[3] == '@'.
#
# ----------------------------------------------------------------
