####################### Multiplicação de Matrizes 2x2 #######################


A = [[],[]]
# i = linha
# j = coluna

for i in range(0,2):
  for j in range(0,2):
    A[i].append(float(input(f'Digite um valor para [{i} {j}]: ')))

print('\nMatriz A:')
for i in range(0,2):
  for j in range(0,2):
    print(f'[{A[i][j]:^6}]',end='')
  print()
AxA = []

print('\nMatriz AxA:')

for i in range(len(A)):
  AxA.append([])
  for j in range(len(A[0])):
    AxA[i].append(0)
    for k in range(len(A[0])):
      AxA[i][j] += (A[i][k]*A[k][j])
    print(f'[{AxA[i][j]:^6}]',end='')
  print()
