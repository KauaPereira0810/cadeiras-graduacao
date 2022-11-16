#-----------------------------------------lista -2----------------------------------------------------

# Questão 1
rm(list = ls())
N = 1000
  

  #A)
  set.seed(100)
  valor = sample((seq(from = 500,to = 4000, by = 100)), size = N, replace = T,prob = NULL)
  
  set.seed(101)
  produto = sample(c('tv', 'notebook', 'impressora', 'smartphone'), size = N, prob = c(0.3,0.2,0.1,0.4),
                   replace = T)
  
  set.seed(102)
  quantidade = sample(c(10:4000), size = N,replace = T)
  
  set.seed(11)
  mes = sample(1:12, size = N, replace = TRUE)
  
  set.seed(500)
  margem = runif(N, min = 1.00, max = 35.00)
  
  set.seed(235)
  ano = sample(c(2017, 2018, 2019), size = N, prob = c(0.50, 0.30, 0.20), replace = TRUE)

  
  #B)
  vendas = data.frame(ano, mes, produto, quantidade, valor, margem)
  rm(list = setdiff(ls(), 'vendas'))
  
  
  #C)
  attach(vendas)
  lucro = quantidade * valor * margem
  lucro
  
  
  #D)
  vendas = cbind(vendas, lucro)
  rm(lucro)
  
  
  #E)
  attach(vendas)
  tapply(lucro,ano,min)
  tapply(lucro,ano,mean)
  tapply(lucro,ano,sd)
  tapply(lucro,ano,median)
  tapply(lucro,ano,max)
  
  
  #F)
  m1=matrix(tapply(vendas$lucro,ano,mean),nrow=3)
  m2=matrix(tapply(vendas$lucro,ano,median),nrow=3)
  m3=matrix(tapply(vendas$lucro,ano,sd),nrow=3)
  m4=matrix(tapply(vendas$lucro,ano,min),nrow=3)
  m5=matrix(tapply(vendas$lucro,ano,max),nrow=3)
  
  mT=cbind(m1,m2,m3,m4,m5)
  colnames(mT)= c('média','mediana','sd','min','max')
  rownames(mT)=c('2017','2018','2019')
  rm(m1,m2,m3,m4,m5)
  mT
  
  
  #G)
  lucro17 = subset(vendas$lucro, vendas$ano == "2017") 
  lucro18 = subset(vendas$lucro, vendas$ano == "2018") 
  lucro19 = subset(vendas$lucro, vendas$ano == "2019") 
  
  par(mfrow = c(2,3),bg="white", fg="black")
  boxplot(lucro17, horizontal = T)
  boxplot(lucro18, horizontal = T)
  boxplot(lucro19, horizontal = T)
  hist(lucro17)
  hist(lucro18)
  hist(lucro19)
  
  rm(lucro17,lucro18,lucro19)
  
  #H)
  table(vendas$produto)
  prop.table(table(vendas$produto))
  cbind(table(vendas$produto), prop.table(table(vendas$produto)))
  
  
  #I)
  xtabs(~ano + produto,data = vendas)
  
  
  #J)
  tapply(vendas$lucro,list(vendas$mes,vendas$ano),mean)
  
  
  #K)
  attach(vendas)
  ano2017 = summary(vendas[c(vendas$ano == "2017"),]$lucro)
  ano2018 = summary(vendas[c(vendas$ano == "2018"),]$lucro)
  ano2019 = summary(vendas[c(vendas$ano == "2019"),]$lucro)
  d = cbind(ano2017,ano2018,ano2019)
  rm(ano2017,ano2018,ano2019)
  
  #L)
  a = tapply(vendas$lucro,list(vendas$mes,vendas$ano),mean)
  mes=1:12
  op = par(mfrow = c(2,2))
  plot(mes,a[,1],type="l",col="red",main = ("Média mensal do lucro em 2017"),ylab="lucro")
  plot(mes,a[,2],type = "l",col="blue",main = ("Média mensal do lucro em 2018"),ylab="lucro")
  plot(mes,a[,3],type="l",col="orange",main = ("Média mensal do lucro em 2019"),ylab="lucro")
  
  
  #M)
  valor_total = vendas$quantidade*vendas$valor
  vendas = cbind(vendas,valor_total)
  
  tapply(vendas$valor_total,list(vendas$produto,vendas$ano), sum)

  
  #N)
  vendas33=subset(vendas,subset = margem > 33,00,select = c(1:8))
  vendas33
  
  
  #O)
  MaioresMargens=subset(vendas,subset = margem > 34,00,select = c("ano","mes","produto","margem"))
  MaioresMargens
  
  
  #P)
  MenoresMargens=subset(vendas,subset = margem < 2,select = c("ano","mes","produto","margem"))
  MenoresMargens
  
  
  #Q)
  MargensExtremas=rbind(MaioresMargens,MenoresMargens)
  MargensExtremas

  
  #R)
  Id=1:N
  vendas=cbind(Id,vendas)
  vendas
  
  
  #S)
  subset(vendas,subset = margem > 32.00,select = c("Id","produto"))
  
  
  #T)
  subset(vendas,subset = margem > 32.00,select = c("Id"))
  
  
  #U)
  dim(subset(vendas,subset = margem > 20,00 && produto == "impressora"))
  
  
  #V)
  write.table(vendas, file = "VendasAtualizado.csv", sep = ";", dec = ".", row.names = TRUE)
  
  
  #W)
  vendas20 = vendas[sample(1:1000,20, replace = F),c(2,3,4,8)]
  vendas20
  
  #X)
  r1 = (c("1001","2020","1","tv","50","2000","15"))
  r2 = (c("1002","2020","notebook","350","2700","20"))
  vendas = rbind(vendas,r1,r2)
  rm(r1,r2)
  tail(vendas)
  
  
  #Y)
  install.packages("dplyr")
  library(dplyr)
  recode(vendas$produto, tv= "TV")
  
  
  #Z)
  write.table(vendas, file = "VendasAtualizado2.csv", sep = ";", dec = ".", row.names = TRUE)
  
  read.csv("VendasAtualizado2.csv")
  