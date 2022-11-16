################################Lista 2#################################

#Questão 1

  #A)

  n = 10000; x = 1:4; p = c(0.45, 0.2, 0.25, 0.10)
  pa = cumsum(p) # probabilidades acumuladas
  a = c() # vetor para a amostra gerada de X
  for(i in 1:n){
    u = runif(1)
    ifelse(u < pa[1], a[i] <- x[1],
           ifelse(u < pa[2], a[i] <- x[2],
                  ifelse(u < pa[3], a[i] <- x[3], a[i] <- x[4])))}

  
  #B)
  Pj = c(0.45, 0.2, 0.25, 0.10);qj = 1/4;N = 10000; c = max(Pj/qj)
  i = 1
  x=c()
  while(i<N){
    u1= runif(1)
    y = trunc(10*u1)+1
    u2= runif(1)
    if(u2<Pj[y]/0.24){
      x[i]=y
      i=i+1
    }
  }
  

