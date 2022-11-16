print('Escolha 1: tesoura')
print('Escolha 2: pedra')
print('Escolha 3: papel')
escolha = input('Diga qual sua escolha: ')

if escolha == 'tesoura':
    print('Computador: Eu escolho papel!')
    print('tesoura(usuário) x papel(computador), logo o usuário venceu!')
elif escolha == 'pedra':
    print('Computador: Eu escolho tesoura!')
    print('pedra(usuário) x tesoura(computador), logo o usuário venceu!')
elif escolha == 'papel':
    print('Computador: Eu escolho pedra!')
    print('papel(usuário) x pedra(computador), logo o usuário venceu!')
else:
    print('')
