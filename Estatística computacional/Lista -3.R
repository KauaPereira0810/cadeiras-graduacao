#-----------------------------------------lista -3----------------------------------------------------

#Parte 1

  # Quest?o 1
  rm(list = ls())
  

  #----------------------------------------------------------------------------
  # Quest?o 2
  V1 = 1:36
  
  s = "solteiro"
  k = "casado"
  
  V2 = c(s,k,k,s,s,k,s,s,k,s,k,s,s,k,k,s,k,k,s,s,k,s,s,k,k,k,s,k,k,k,s,k,k,s,k,k)
  
  f = "ensino fundamental"
  m = "ensino m?dio"
  sup = "superior"
  
  V3 = c(f,f,f,m,f,f,f,f,m,m,m,f,m,f,m,m,m,f,sup,m,m,m,f,sup,m,m,f,m,m,m,sup,m,sup,sup,m,sup)
  
  V4 = c(NA,1,2,NA,NA,0,NA,NA,1,NA,2,NA,NA,3,0,NA,1,2,NA,NA,1,NA,NA,0,2,2,NA,0,5,2,NA,1,3,NA,2,3)
  
  V5 = c(400,456,525,573,626,666,686,739,759,744,812,846,874,895,913,935,977,980,1053,
         1076,1106,1159,1200,1279,1323,1360,1385,1469,1471,1599,1622,1661,1726,1875,1940,2330)/100
  
  V6 = c(26,32,36,20,40,28,41,43,34,23,33,27,37,44,30,38,31,39,25,37,30,34,41,26,32,35,46,29,40,35,
         31,36,43,33,48,42)
  
  V7 = c(3,10,5,10,7,0,0,4,10,6,6,11,5,2,5,8,7,7,8,4,9,2,0,1,5,0,7,8,6,10,5,4,7,7,11,2)
  
  i = "interior"
  c = "capital"
  o = "outra"
  
  V8 = c(i,c,c,o,o,i,i,c,c,o,i,c,o,o,i,o,c,o,i,i,o,c,o,o,i,o,o,i,i,c,o,i,c,c,c,i)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 3
  TEB = data.frame(V1,V2,V3,V4,V5,V6,V7,V8)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 4
  print(TEB) #Ou apenas: TEB
  
  
  #----------------------------------------------------------------------------
  #Quest?o 5
  nrow(TEB)
  ncol(TEB)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 6
  TEB = data.frame('Identifica??o' = V1, 'Estado Civil' = V2, 'Grau de Instru??o' = V3, 
                   'No. de Filhos' = V4, 'Sal?rio' = V5, 'IdadeA'  = V6, 'IdadeM' = V7,
                   'Regi?o de Proced?ncia' = V8)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 7
  ni = table(TEB$No..de.Filhos)
  ni
  
  #----------------------------------------------------------------------------
  #Quest?o 8
  mean(TEB$Sal?rio, na.rm = T)
  median(TEB$Sal?rio, na.rm = T)
  sd(TEB$Sal?rio, na.rm = T)
  var(TEB$Sal?rio, na.rm = T)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 9
  salario1 = V5 * 1.2
  print(salario1)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 10
  salario2 = V5 + 1.5
  print(salario2)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 11
  salario3 = V5 - 0.8
  print(salario3)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 12
  salario4 = V5 * 2
  print(salario4)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 13
  salario5 = V5 / 3
  print(salario5)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 14
      #salario1
      mean(salario1)
      median(salario1)
      sd(salario1)
      var(salario1)
      
      #salario2
      mean(salario2)
      median(salario2)
      sd(salario2)
      var(salario2)
      
      #salario3
      mean(salario3)
      median(salario3)
      sd(salario3)
      var(salario3)
      
      #salario4
      mean(salario4)
      median(salario4)
      sd(salario4)
      var(salario4)
      
  
  #----------------------------------------------------------------------------
  #Quest?o 15
  mean(salario1) # = 13.34667
  sum(salario1)/36 # = 13.34667
  
  median(salario1) # = 12.198
  mean(sort(salario1, decreasing=TRUE)[18:19]) # = 12.198
  
  sum((salario1-(sum(salario1)/36))^2)/35 # = 30.30446
  var(salario1)  # = 30.30446
  
  (var(salario1)) ^ 0.5  # = 5.504949
  (sum((salario1-(sum(salario1)/36))^2)/35)^0.5 # = 5.504949
  
  #N?o faremos as outras pois elas seguem a mesma ordem do "salario1". Podemos perceber que sim, 
  #est?o de acordo com as propriedades das estat?sticas.
  
  
  #----------------------------------------------------------------------------
  #Quest?o 16
  write.csv(TEB, file = "DadosTEB.csv", row.names = F)
  

  #----------------------------------------------------------------------------
  
  
#Parte 2

  #Quest?o 16 + 1
  rm(list = ls())
  
  
  #----------------------------------------------------------------------------
  #Quest?o 18
  getwd()
  setwd('C:/Windows/Temp/Downloads')
  tabela = read.csv(file="Tabela1.csv",header = TRUE, sep = ";")
  
  
  #----------------------------------------------------------------------------
  #Quest?o 19
  colnames(tabela) = c('Identifica??o', 'Estado Civil','Grau de Instru??o','No. de Filhos','Sal?rio',
                       'IdadeA', 'IdadeM', 'Regi?o de Proced?ncia')
  
  
  #----------------------------------------------------------------------------
  #Quest?o 20
  Idade = c()
  for (i in 1:36)
    Idade[i] = ((tabela$IdadeA[i]) * 12) + tabela$IdadeM[i]
  print(Idade)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 21
  tabela$Idade = Idade
  colnames(tabela) = c('Identifica??o', 'Estado Civil','Grau de Instru??o','No. de Filhos','Sal?rio',
                       'IdadeA', 'IdadeM', 'Regi?o de Proced?ncia', 'Idade (em meses)')
  
  
  #----------------------------------------------------------------------------
  #Quest?o 22
  tabela = subset(tabela, select = -c(IdadeA, IdadeM))

  
  #----------------------------------------------------------------------------
  #Quest?o 23
  print(tabela, row.names = F) #Ou apenas: tabela

  
  #----------------------------------------------------------------------------
  #Quest?o 24
  nrow(tabela)
  ncol(tabela)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 25
  ls()
  
  
  #----------------------------------------------------------------------------
  #Quest?o 26

  write.csv(tabela, file = "Tabela1Nova.csv", row.names = F)
  
  
  #----------------------------------------------------------------------------
  #Quest?o 27
  rm(list = ls())
  
  
  #----------------------------------------------------------------------------
  
  
#Parte 3
  
  #Quest?o 28
  rm(list = ls())
  
  
  #----------------------------------------------------------------------------
  #Quest?o 29
  getwd()
  setwd('C:/Windows/Temp/Downloads')
  tabela2 = read.csv2(file="Tabela2.csv",header = TRUE, sep = ' ')
  
  
  #----------------------------------------------------------------------------
  #Quest?o 30
    
    #A)
    ?subset
    registrosa = subset(tabela2, select = c(nr))
    registrosa[12:32, 1]
    
      #Jeito alternativo mais r?pido:
      tabela2$nr[12:32]
    
    #B)
    registrosb = subset(tabela2, select = c(nr, nf, sa))
    registrosb[10:15,1:3]
    
    #C)
    tabela2[tabela2$sa > 16, 1:7]
    
    #D)
    mean(tabela2$sa)
    median(tabela2$sa)
    min(tabela2$sa)
    max(tabela2$sa)
    var(tabela2$sa)
    sd(tabela2$sa)/mean(tabela2$sa) #Coeficente de varia??o = CV
    boxplot(tabela2$sa, col = "white", main = "Box plot do Sal?rio", ylab = "Sal?rios")
    hist(tabela2$sa)
    
    #E)
    ni = table(tabela2$nf)
    ni
    
    #F)
    tabela2[order(tabela2$ec, tabela2$gi, tabela2$rp), ]
    
    #G)
    tabela2[order(tabela2$ec, tabela2$gi, tabela2$rp, decreasing = c(F,T,F), method = 'radix'),]
    
    
    #----------------------------------------------------------------------------
    #Quest?o 31
    res1 = tabela2[c(tabela2$gi == "Ensino M?dio"),] #Apenas ensino m?dio
    res1
    
    
    #----------------------------------------------------------------------------
    #Quest?o 32
    b = tabela2[c(tabela2$gi == "Superior"),]  #Ensino superior
    res2  = b[c(b$ec == "Casado"),]   #Ensino superior e casado
    res2
    
    #----------------------------------------------------------------------------
    #Quest?o 33
    a = tabela2[tabela2$sa > 16, 1:7]  #C?digo da quest?o 30 item c)
    res3 = subset(a, select = c(gi, sa, rp))
    res3
    
    #----------------------------------------------------------------------------
    #Quest?o 34
    res1 = tabela2[c(tabela2$gi == "Ensino M?dio"),]
    z = res1[c(res1$ec == "Casado"),] #Ensino m?dio e casado
    mean(res1[z(res1$ec == "Casado"),]$sa)
    
    
    #----------------------------------------------------------------------------
    #Quest?o 35
    attach(tabela2)
    tapply(sa, list(ec,gi,rp), mean)
    
    
    #----------------------------------------------------------------------------
    #Quest?o 36
    tabela2[c(tabela2$ec == "Solteiro"),]$nr

    
    #----------------------------------------------------------------------------
    #Quest?o 37
    subset(tabela2, sa<5)
    
    
    #----------------------------------------------------------------------------
    #Quest?o 38
    subset(tabela2[tabela2$sa>8 & tabela2$sa<10, 1:7], select = c(1:7))
    
    
    #----------------------------------------------------------------------------
    #Quest?o 39
    names(tabela2)[7]  = 'idm'
    names(tabela2)
  
    
    #----------------------------------------------------------------------------
    #Quest?o 40
    ida = c()
    for (i in 1:50)
      ida[i] = ((tabela2$idm[i])/12)
    tabela2$ida = ida
    
    
    #----------------------------------------------------------------------------
    #Quest?o 41
    ?xtabs
    table(tabela2$rp, tabela2$gi)
    xtabs(~tabela2$rp + tabela2$gi,data = tabela2)
    
    #----------------------------------------------------------------------------
    #Quest?o 42
    ni = table(tabela2$ec)
    ni
    
    
    #----------------------------------------------------------------------------
    #Quest?o 43
    mean(tabela2$nf, na.rm = T)
    sd(tabela2$nf, na.rm = T)
    sd(tabela2$nf, na.rm = T)/mean(tabela2$nf, na.rm = T) #Coeficente de varia??o = CV
    
    
    #----------------------------------------------------------------------------
    #Quest?o 44
    tabela2[order(-tabela2$sa), ]
    
    #----------------------------------------------------------------------------
    #Quest?o 45
    par(family = "", mfrow = c(1, 2))
    
    hist1 = hist(tabela2$sa,
              main = "N?mero de empregados segundo as classes salariais",
              col = "light blue", border = "blue", ylim = c(0,0.10),
              xlab = "sal?rio", ylab = "", xaxp = c(4,24,10), yaxt = "n", 
              breaks = c(4,6,8,12,16,24), freq = FALSE)
    text(hist1$mids, hist1$density+0.006, hist1$counts)
    
    hist2 = hist(tabela2$sa,
              main = "N?mero de empregados segundo as classes salariais",
              col = "light blue", border = "blue", ylim = c(0,0.10),
              xlab = "sal?rio", ylab = "", yaxt = "n", xaxp = c(4,24,10),
              breaks = c(4,6,8,12,16,24), freq = FALSE, right = F)
    text(hist2$mids, hist2$density+0.006, hist2$counts)