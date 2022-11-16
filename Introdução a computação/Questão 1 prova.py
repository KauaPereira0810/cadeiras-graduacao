pri = 0
num = input('Digite um número inteiro e positivo: ')
num = int(num)
if num > 0:
    for x in range(1, num+1):
        if (num % x == 0):
            pri = pri + 1
else:
    while num <= 0:
        print('Erro.')
        num = int(input('Digite um número inteiro e positivo: '))
        if num > 0:
            for x in range(1, num+1):
                if (num % x == 0):
                    pri = pri + 1
print('O número {} foi divisivel {} vezes,'.format(num, pri))
if pri == 2:
    print('portanto ele é primo!')
else:
    print('portanto ele não é primo!')
    
