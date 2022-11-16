#--------------------------------------------Lista -1------------------------------------------

#Questão 1
  rm(list=ls())

  x = c(2,3,5)
  y = c(4,9,16)
  
  a1 = sum(x)
  
  a2 = sum(x^2)
  
  a3 = sum(x)^2
  
  b1 = prod(x)
  
  b2 = prod(y/x)
  
  b3 = prod(sqrt(y))
  
  
#Questão 2
  x = c(1,5,4,3,6)
  d1 = function(x) {
    if(length(x)>1){
      
      s = sqrt(sum(x^2) - (sum(x)^2/length(x))/(length(x)-1))
      q = sqrt((sum((x-mean(x))^2))/(length(x)-1))
      l = sqrt((sum(x^2) - length(x)*((mean(x))^2))/(length(x)-1))
      return(paste(s,q,l))
    }
  } 
  d1(x)
  
  
#Questão 3
  d2 = function(x) {
    if(length(x)>1){
      j = mean(x)
      k = sd(x)
      m = 100*k/j
      return(c(j,k,m))
    }
  }
  d2(x)

  
#Questão 4
  d3 = function(x){
    if((length(x) <= 20) && x<10 && x>=-10 && length(x) > 1){
      return(sqrt((sum(x^2) - length(x)*((mean(x))^2))/(length(x)-1)))
    }else{
      return("Vetor y não adequado")
    }
  }
  d3(x)
  

#Questão 5
  d4 = function(x){
    n = length(x)
    if(length(x) > 4 & length(x) < 21 & min(x) >= -10 & max(x) < 10){
      f40 = (sum(abs(x)^3)-(prod(x)^2)/sqrt(n))/log10(n)+gamma(n)
      f41 = (log(n)+exp(sqrt(n)))
      return(c(f40, f41))
    } else{
      print("Vetor x não adequado")
    }
  }
  d4(x)
  
  
#Questão 6
  d5 = function(x,y){
    n1 = length(x)
    n2 = length(y)
    f5 = (sum(x*y)-n1*mean(x)*mean(y))/sqrt((sum(x^2-n1*mean(x^2)))*sum(y^2-n2*mean(y^2)))
    dd = plot(x,y)
    cclp = cor(x,y)
    return(c(f5, dd, cclp))
  }
  #a
  xa = c(60,65,71,69,76,71,79,90,94,92); ya = c(61,62,64,68,70,67,75,76,81,82)
  d5(xa, ya)
  #b
  xb = c(60,65,71,64,76,71,79,86,94,92); yb = c(79,77,76,78,75,76,75,76,78,79)
  d5(xb, yb)
  #c
  xc = c(75,79,69,64,76,71,81,86,91,85); yc = c(79,77,76,78,75,76,75,76,78,79)
  d5(xc, yc)

  
#Questão 7
  #Alta Correlação Negativa:
    x1 = c(1,2,4,-1)
    y1 = c(1,-1,-5,5)
    cor(x1, y1)
    plot(x1, y1, main = 'Alta Correlação Negativa')
    lines(x1, y1)
    #############################################
  
  #Baixa Corralação Negativa:
    x2 = c(3,9,81,2)
    y2 = c(4,16,140,900)
    cor(x2, y2)
    plot(x2, y2)
    
  
  #Alta correlação positiva
    x3 = c(3,2,-1,4)
    y3 = c(7,5,-1,9)
    cor(x3, y3)
    plot(x3, y3,main = " Alta Correlação Positiva")
    lines(x3, y3)
