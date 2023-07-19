# Tipos de frequência no R

install.packages("Hmisc")
require(Hmisc)

# Primeira forma de criar o vetor
idade = c(10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,90)

# Segunda forma de criar vetor. Função rep replica o elemento na quantidade pós virgula .
idade2=c(rep(10,4), rep(30,8), rep(50,4),rep(70,3),90)

# Encontrando as frequências simples. # table traz as frequencias de forma tabular.
frequencia_simples = table(idade)

# Visualizar como matriz, estilo excel.
dados_simples=data.frame(frequencia_simples)

#Gerando frequência acumulada. Funcao ´cumsum´ retorna um vetor cujos elementos são somas cumulativas dos elementos do argumento.
frequencia_acumulada = cumsum(frequencia_simples)

# Adicionando coluna acumulado ao dataframe.
dados_simples$frequencia_acumulada = frequencia_acumulada

# Gerando frequência relativa simples. Frequência simples/soma total.
frequencia_relativa_simples=frequencia_simples/sum(frequencia_simples)

# Adicionando frequencia relativa simples ao dataframe
dados_simples$frequencia_relativa_simples=frequencia_relativa_simples

# Gerando frequencia relativa acumulada
frequencia_relativa_acumulada=frequencia_acumulada/sum(frequencia_simples)

# Adicionando ao dataframe
dados_simples$frequencia_relativa_acumulada=frequencia_relativa_acumulada

# Funcao nativa par verificar frequencia simples e relativa simples
describe(idade)

# # Uso de head para verifiar primeiras(6) linha do dataframe
head(dados_simples)

# Usando biblioteca tidyverse para obter frequencias de outra forma.
require(dplyr)

# frequencia_simples
Freq = table(idade)

# Usando funcao mutate criando colunas para cada frequencia. Usando o %>% para aplicar função.
dados_simples_tidy = dados_simples %>% 
  mutate(frequencia_acumulada = cumsum(Freq),
         frequencia_relativa_simples = Freq/sum(Freq),
         frequencia_relativa_acumulada = cumsum(frequencia_relativa_simples))
           