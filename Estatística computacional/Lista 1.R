################################Lista 1#####################################

#Parte 1

  #Quest?o 1

    #A) X ~ Unif(a,b)
    
    # Fun??o densidade: 1/(b-a)
    # Valor esperado: E(X) = (a+B)/2
    # Vari?ncia: Var(X) = ((b-a)^2)/12
    # Suporte: (a,b)
    # Espa?o Param?trico: -Inf<a<b<+Inf
    
    
    #B) X ~ Exp(B)
    
    # Fun??o densidade: B*(exp^-Bx)
    # Valor esperado: E(X) = 1/B
    # Vari?ncia: Var(X) = 1/B^2
    # Suporte: (0,+Inf)
    # Espa?o Param?trico: (0,+Inf)
    
    
    #C) X ~ Gama(a, B)
    
    # Fun??o densidade: ((B^a)/gamma(a)) * (x^a-1) * exp^-Bx
    # Valor esperado: E(X) = a/B
    # Vari?ncia: Var(X) = a/B^2
    # Suporte: (0,+Inf)
    # Espa?o Param?trico: ?? =(0,+Inf), ?? = (0,+Inf)
    
    
    #D) X ~ Qui ??? quadrado(v)
    
    # Fun??o densidade: 1 / (2^(v/2) * ??(v/2)) * x^(v/2-1) * e^(-x/2)
    # Valor esperado: E(X) = v
    # Vari?ncia: Var(X) = 2v
    # Suporte: (0,+Inf)
    # Espa?o Param?trico: (0,+Inf)
    # El? ? uma Gama(v/2,0.5), com v = graus de liberdade.
    
    
    #E) x ~ t???Student(g)
    
    # Fun??o densidade: gamma((n+1)/2) / (sqrt(n*pi) * gamma(n/2)) * (1 + x^2/n)^-((n+1)/2)
    # Valor esperado: E(X): u = 0, k>1
    # Vari?ncia: Var(X) = g/(g-2), g>2
    # Suporte: (-Inf,+Inf)
    # Espa?o Param?trico: (0,+Inf)
    # Quando g tende ao infinito, ela vai se tornando uma N~(0,1)
    
    
    #F) x ~ F ??? Snedecor(n1, n2)
    
    # Fun??o densidade: gamma((n1 + n2)/2) / (gamma(n1/2) * gamma(n2/2)) * (n1/n2)^(n1/2) * x^(n1/2 - 1) * (1 + (n1/n2) x)^-(n1 + n2)/2
    # Valor esperado: E(X) = n2/(n2-2), n2>2
    # Vari?ncia: Var(X) = (2(n2)^2 * (n2+n1 - 2))/n1 * (n2 - 2)^2 * (n2-4), n2 > 4
    # Suporte: (0,+Inf)
    # Espa?o Param?trico: n1 = (0,+Inf); n2 = (0,+Inf)
    
    
    #G) X ~ Beta(a, B)
    
    # Fun??o densidade: gamma(a+B)/(gamma(a)gamma(B)) * x^(a-1) * (1-x)^(B-1)
    # Valor esperado: E(X) = a/(a + B)
    # Vari?ncia: Var(X) = (a * B)/(a + B + 1) * (a + B)^2
    # Suporte: (0,1)
    # Espa?o Param?trico: a =(0,+Inf), B = (0,+Inf)
    
    
    #H) X ??? Geom?trica(p)
    
    # Fun??o densidade: p * (1-p)^x
    # Valor esperado: E(X) = 1/p
    # Vari?ncia: Var(X) = (1-p)/p^2
    # Suporte: N*
    # Espa?o Param?trico: [0,1]
    
    
    #I) X ??? Binomial(n,p)
    
    # Fun??o densidade: choose(n, x) * p^x * (1-p)^(n-x)
    # Valor esperado: E(X) = np
    # Vari?ncia: Var(X) = np(1-p)
    # Suporte: [1,2,3,...,n]
    # Espa?o Param?trico: p = [0,1], n = N
    
    
    #J) X ??? Poisson(B)
    
    # Fun??o densidade: B^x exp(-B)/x!
    # Valor esperado: E(X) = B
    # Vari?ncia: Var(X) = B
    # Suporte: [1,2,3,...,n]
    # Espa?o Param?trico: (0,+Inf)


  #Quest?o 2

    #A)
    dunif(3,2,8) # fun??o densidade (f(x))
    punif(3,2,8) # fun??o de distribui??o (F(x))
    1 - punif(3,2,8) # fun??o de sobreviv?ncia (S(X))
    
    #B)
    dexp(3,0.3) # fun??o densidade (f(x))
    pexp(3,0.3) # fun??o de distribui??o (F(x))
    1 - pexp(3,0.3) # fun??o de sobreviv?ncia (S(X))
    
    #C)
    dgamma(4,8,2) # fun??o densidade (f(x))
    pgamma(4,8,scale = 2) # fun??o de distribui??o (F(x))
    1 - pgamma(4,8,scale = 2) # fun??o de sobreviv?ncia (S(X))
    
    #D) 
    dchisq(6,6) # fun??o densidade (f(x)) 
    pchisq(6,6) # fun??o de distribui??o (F(x))
    1 - pchisq(6,6) # fun??o de sobreviv?ncia (S(X))
    
    #E)
    dt(0,10) # fun??o densidade (f(x))
    pt(0,10) # fun??o de distribui??o (F(x))
    1 - pt(0,10) # fun??o de sobreviv?ncia (S(X))
    
    #F)
    df(1,4,6) # fun??o densidade (f(x))
    pf(1,4,6) # fun??o de distribui??o (F(x))
    1 - pf(1,4,6) # fun??o de sobreviv?ncia (S(X))
    
    #G)
    dbeta(0.4,4,6) # fun??o densidade (f(x))
    pbeta(0.4,4,6) # fun??o de distribui??o (F(x))
    1 - pbeta(0.4,4,6) # fun??o de sobreviv?ncia (S(X))
    
    #H)
    dgeom(4,0.25) # fun??o densidade (f(x))
    pgeom(4,0.25) # fun??o de distribui??o (F(x))
    1 - pgeom(4,0.25) # fun??o de sobreviv?ncia (S(X))
    
    
    #I)
    dbinom(6,10,0.6) # fun??o densidade (f(x))
    pbinom(6,10,0.6) # fun??o de distribui??o (F(x))
    1 - pbinom(6,10,0.6) # fun??o de sobreviv?ncia (S(X))
    
    #J)
    dpois(3,3) # fun??o densidade (f(x))
    ppois(3,3) # fun??o de distribui??o (F(x))
    1 - ppois(3,3) # fun??o de sobreviv?ncia (S(X))


  #Quest?o 3
    xa = c(3,3,4,6,0,1,0.4,4,6,3)
    pa = c(dunif(3,2,8),dexp(3,0.3),dgamma(4,8,2),dchisq(6,6),dt(0,10),df(1,4,6),
           dbeta(0.4,4,6), dgeom(4,0.25),dbinom(6,10,0.6),dpois(3,3))
    plot(xa,pa)


  #Quest?o 4

    #A)
    qunif(0.3,2,8)
    
    #B)
    qexp(0.6,0.3)
    
    #C)
    qgamma(0.5,8,2)
    
    #D)
    qchisq(0.3,6)
    
    #E)
    qt(0.05,10)
    
    #F)
    qf(0.78,4,6)
    
    #G)
    qbeta(0.25,4,6)
    
    #H)
    qgeom(0.8,0.25)
    
    #I)
    qbinom(0.3,10,0.6)
    
    #J)
    qpois(0.75,3)
-----------------------------------------------------------------------------
  
#Parte 2
  
  #Quest?o 1
  
    #A)
    n = 10000 
    x = rnorm(n)
    
    
    #B)
    y = x^2
    
    
    #C)
    hist(y, freq = F)
    curve(dchisq(x,1), add = T)


  #Quest?o 2

    #A)
    B = 1000
    n = 5
    x = rnorm(n)
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n)
    }
    
    
    #B)
    Y = rowSums(X^2)
    
    
    #C)
    hist(Y, freq = F)
    curve(dchisq(x,n), add = T)
    
    
    #D)
    n = 1000
    x = rnorm(n)
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n)
    }
    Y = rowSums(X^2)
    hist(Y, freq = F)
    curve(dchisq(x,n), add = T)
    
    #D)
    
    
    #E)
    # Ao aumentarmos o tamanho de n, a distribui?ao aproxima-se de uma N(0,1)


  #Quest?o 3

    #A)
    B = 1000
    n = 5
    x = rnorm(n,mean = 50, sd = 3)
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n,mean = 50, sd = 3)
    }
    
    
    #B)
    Y = c()
    for(i in 1:B){
      Y[i] = ((n-1)*var(X[i,]))/(9)
    }
    
    
    #C)
    hist(Y, freq = F)
    curve(dchisq(x,n-1), add = T)
    
    
    #D) e E)
    #Quando n tende ao infinito, ela se aproxima de uma N(0,1)


----------------------------------------------------
  
#Parte 3
  
  #Quest?o 1
  
    #A)
    B = 10000
    n = 500
    X1 = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X1[i,] = runif(n,300,700)
    }
    media1 = rowMeans(X1)
    hist(media1, freq = F)
    
    
    #B)
    B = 10000
    n = 500
    X2 = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X2[i,] = rbinom(n,1,0.3)
    }
    if (X2[i] == 1){
      propsucs = rowSums(X2, na.rm= T)/n
    }
    hist(propsucs)
    
    
    #C)
    B = 10000
    n = 500
    xa = c(1, 2, 3, 4, 5)
    pa = c(0.3, 0.25, 0.2, 0.15,0.1)
    X3 = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X3[i,] = sample(x = xa,prob = pa,replace = T)
    }
    media2 = rowMeans(X3)
    hist(media2, freq = F)
    
    
    #D)
    B = 10000
    n = 500
    X4 = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X4[i,] = rexp(n, 0.5)
    }
    media3 = rowMeans(X4)
    hist(media3, freq = F)
    
    
    #E)
    
    # - Item A):
    # m?dia = (300+700)/2 = 500
    # vari?ncia = (700-300)^2/12 ~ 13333,33
    # Xbarra ~ N(500,400^2/12n)
    
    # - Item B):
    # m?dia = 0.3
    # vari?ncia = 0.30.7 = 0.21
    # Xbarra ~ N(0.3, 0.21/n) 
    
    # - Item C):
    # m?dia = E(X) = sum(xp)
    # vari?ncia = E(X^2) - E^2(X) = sum(x^2p) - sum(xp)^2 
    # Xbarra ~ N(2.5, 1.75/n) 
    
    # - Item D):
    # m?dia = 1/0.5 = 2 ~ mean(media)
    # vari?ncia = 1/0.5^2 = 4 ~ var(media)
    # Xbarra ~ N(2,4/n) 
    
    
    
    
    
    #F)
    n = 500
    par(mfrow = c(2,2))
    hist(media1, freq = F, main = 'Item A)',col = 'seagreen1')
    curve(dnorm(x,500,sqrt(400^2/(12*n))), col="black" , add = T)
    hist(propsucs, freq = F, main = 'Item B)',col = 'seagreen1')
    curve(dnorm(x,0.3,sqrt(0.21/n)), col="black" , add = T)
    hist(media2, freq = F, main = 'Item C)',col = 'seagreen1')
    curve(dnorm(x,2.5,sqrt(1.75/n)), col="black" , add = T)
    hist(media3, freq = F, main = 'Item D)',col = 'seagreen1')
    curve(dnorm(x,2,sqrt(4/n)), col="black", add = T)

    
  #Quest?o 2

    #A)
    # Y = sum(Xi) = n*xbarra
    # m?dia = n/??  
    # vari?ncia = 1/(??^2) 
    # Xbarra ~ N(n/??,1/(??^2))
    
    
    #B)
    B = 10000
    n = 500
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X4[i,] = rexp(n, 0.5)
    }
    Y = n*rowMeans(X)
    hist(Y, freq = F)
    curve(dnorm(x,n/0.5,1/(0.5^2)), add = T)

    
  #Quest?o 3

    #A)
    # Y = xbarra
    # m?dia = 1/B  
    # vari?ncia = 1/n * (B^2) 
    # Xbarra ~ N(1/B,1/n*(B^2))
    
    
    #B)
    B = 10000
    n = 500
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rexp(n, 0.2)
    }
    Y = rowMeans(X)
    hist(Y, freq = F)
    curve(dnorm(x,1/0.2,1/(n*(0.2^2))), add = T)

    
  #Quest?o 4

    #A)
    B = 1000
    n = 10
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n,50,3)
    }
    
    
    #B)
    Y = c()
    for(i in 1:B){
      Y[i] = ((n-1)*var(X[i,]))/(9)
    }
    s2 = (rowSums(X^2) - n * (rowMeans(X))^2)/n-1
    
    
    #C)
    hist(s2)
    curve(dgamma(x,4.5,0.5), add = T)


#------------------------------------------------------------------------------

#Parte 4

  #Quest?o 1

    B = 15
    n = 10
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rgamma(n,12,2)
    }
    estia = ((rowMeans(X))^2)/((rowSums(X^2) - n * (rowMeans(X))^2)/n)
    estiB = rowMeans(X) / ((rowSums(X^2) - n * (rowMeans(X))^2)/n)
    u = rowMeans(X)
    sigma2 = ((rowSums(X^2) - n * (rowMeans(X))^2)/n)
    dados = cbind(estia,estiB,u,sigma2)
    colnames(dados) = c('a', 'B', 'u', 'sigma2')


#------------------------------------------------------------------------------

#Parte 5

  #Quest?o 1: X~N(500,50)

    #A)
    B = 100
    n = 10
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n,500,50)
    }
    xbarra = rowMeans(X)
    
    
    #B)
    mean(xbarra) #Est? de acordo, pois est? no intervalo de confian?a
    
    
    #C)
    hist(xbarra)
    curve(dnorm(x,mean = mean(xbarra), sd = sd(xbarra)), add = T)
    
    
    #D)
    li = xbarra - (abs(qnorm(0.025))* sd(xbarra)/sqrt(n))
    ls = xbarra + (abs(qnorm(0.025))* sd(xbarra)/sqrt(n))
    
    
    #E)
    # J? que h? 100 valores para u, existem 100 intervalos.
    
    
    #F)
    library(tidyverse)
    d <- tibble(
      x = 1:B, 
      y = xbarra, 
      ymin = li, 
      ymax = ls
    )
    
    d %>% 
      ggplot(aes(x = x, y = y)) +
      geom_point() +
      geom_errorbar(aes(ymin = ymin, ymax  = ymax))


  #Quest?o 2: X ~ N(500.50)

    #A)
    B = 100
    n = 10
    X = matrix(nrow = B, ncol = n)
    for (i in 1:B){
      X[i,] = rnorm(n,500,50)
    }
    xbarra = rowMeans(X)
    s2 = (rowSums(X^2) - (n * (xbarra)^2))/(n-1)
    
    
    #B)
    li = xbarra - (abs(qt(0.025, df = n-1))* sqrt(s2)/sqrt(n))
    ls = xbarra + (abs(qt(0.025, df = n-1))* sqrt(s2)/sqrt(n))
    
    
    #C)
    # J? que h? 100 valores para u, existem 100 intervalos.
    
    
    #D)
    library(tidyverse)
    d <- tibble(
      x = 1:B, 
      y = xbarra, 
      ymin = li, 
      ymax = ls
    )
    
    d %>% 
      ggplot(aes(x = x, y = y)) +
      geom_point() +
      geom_errorbar(aes(ymin = ymin, ymax  = ymax))


