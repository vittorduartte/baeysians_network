library("bnlearn")
data(asia)

data_asia <- data.frame(asia)

# Definindo o cabeçalho com os nomes das variáveis normais, originalmente abreviados 
headers <- c('Visitou_Asia','Fumante','Tuberculose','Cancer_Pulmao','Bronquite','Tuberculose_ou_Cancer','RaioX','Dispneia')

colnames(data_asia) <- headers 

#Primeira rede, com a biblioteca bnlearn
baeysian_network <- hc(data_asia)