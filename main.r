library('bnlearn')

data('asia')

asia_data <- asia

#Visualiza previamente os meus dados carregados
View(asia_data)

#Para melhor compreender nosso dataset vamos renomear as nossas colunas
names(asia_data)[names(asia_data) == 'A'] <- 'Asia'
names(asia_data)[names(asia_data) == 'T'] <- 'Tuberculose'
names(asia_data)[names(asia_data) == 'S'] <- 'Fumante'
names(asia_data)[names(asia_data) == 'L'] <- 'Cancer_Pulmao'
names(asia_data)[names(asia_data) == 'E'] <- 'BronquiteOUCancer'
names(asia_data)[names(asia_data) == 'X'] <- 'Raio_X'
names(asia_data)[names(asia_data) == 'D'] <- 'Dispneia'
names(asia_data)[names(asia_data) == 'B'] <- 'Bronquite'

net <- hc(asia_data)

plot(net)

bn_fit <- bn.fit(net, data = asia_data)

cpquery(bn_fit, event = (Cancer_Pulmao == "yes"), evidence = (Fumante == "yes"))

cpquery(bn_fit, event = (Raio_X == "yes"), evidence = (Tuberculose == "no" & BronquiteOUCancer == "no"))

