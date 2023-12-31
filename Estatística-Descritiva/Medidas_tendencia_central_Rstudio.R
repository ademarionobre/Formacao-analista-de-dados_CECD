# Medidas de tend�ncia Central

'''T�picos:
  
- Como Calcular e interpretar M�dia, Mediana e Moda;
- Como calcular e interpretar Quartis, Assimetria e Curtose;
- Interpretar graficamente;'''

# Intalando pacote e1071
# install.packages("e1071")

# carregando biblioteca e1071
require(e1071)

# Amostra 0
c0 = c(2,3,6,9)

# Calcular m�dia
mean(c0)

# Calcular mediana
median(c0)

# Obtendo distribui��o dos valores em quartis 
summary(c0)

# Visualizando os valores
par(mfrow=c(2,2)) # Dividir a tela do plot 2x2

# Grafico de barras
barplot(c0)
# Histograma (frequencia simples)
hist(c0)
# Histrograma com densidade dos dados (frequencia relativa)
hist(c0, probability = T)
lines(density(c0))

# Assimetria
skewness(c0)
# Curtose
kurtosis(c0)

---------------
# Amostra 1
c1 = c(7,1,5,2,3,1,6)

# M�dia
mean(c1)
# Mediana
median(c1)

# MODA
# N�o possui fun��o nativa no R. Pode ser obtida das seguintes formas:
# - Se a s�rie for pequena, facilitando a identifica��o visual da moda, usa-se a sintaxe table (series name) que
# reportar� os elementos da s�rie e, abaixo deles, mostrar� com que FREQU�NCIA cada um deles ocorre.
# - Ou pode-se usar uma fun��o que reportar� o valor da moda, isto �, reportar� o VALOR MODAL e n�o a frequ�ncia
# para cada um dos elementos da s�rie.
# - Usando biblioteca Desctools, muito facil e direto.

# - Modo tabela
as.numeric(names(table(c1))[table(c1) == max(table(c1))])

# - Modo Fun��o
subset(table(c1), table(c1) == max(table(c1)))

# - Modo usando a biblioteca library e o pacote desctools
# carregando o desctools
library(DescTools)
moda_c1 = Mode(c1)

# Distribui��o gr�fica
barplot(c1)
hist(c1)
---
hist(c1,probability = T)
lines(density(c1))

# Assimetria
skewness(c1)
#Curtose
kurtosis(c1)
# Resumo estatistico dos valores
summary(c1)

# AMOSTRA 2
c2 = c(1,2,3,8,7,8,9)

# M�dia
mean(c2)
# Mediana
median(c2)
# Moda
Mode(c2)

# Visualizar distribui��o
barplot(c2)
# ----
hist(c2)
# ---
hist(c2, probability = T)
lines(density(c2))

skewness(c2)
kurtosis(c2)
summary(c2)
'''****************************'''

# �TICA TIDYVERSE
'''
c0=c(2,3,6,9)

c1=c(7,1,5,2,3,1,6)

c2=c(1,2,3,8,7,8,9)

c0.df=data.frame(c0)

c12.df=data.frame(c1,c2)

#amodal

c0.df=c0.df%>% summarise( media_c0=mean(c0),
                          
                          mediana_c0= median(c0),
                          
                          assimetria_c0 =skewness(c0),
                          
                          curtose_c1=kurtosis(c0)
                          
)

moda_c1=c12.df %>%  select(c1)  %>% 
  
  table()     %>%
  
  which.max () %>% 
  
  names ()     %>%  
  
  as.numeric()

c1.df=c12.df%>% summarise(media_c1=mean(c1),
                          
                          mediana_c1= median(c1),
                          
                          moda=moda_c1,
                          
                          assimetria_c1 =skewness(c1),
                          
                          curtose_c1=kurtosis(c1)
                          
)

moda_c2=c12.df %>% select(c2)  %>% 
  
  table()     %>%
  
  which.max () %>% 
  
  names ()     %>%  
  
  as.numeric()

c2.df=c12.df %>% summarise( moda=moda_c2,
                            
                            mediana_c2= median(c2),
                            
                            media_c2=mean(c2), 
                            
                            assimetria_c2 =skewness(c2),
                            
                            curtose_c2=kurtosis(c2)'''
#*******************



