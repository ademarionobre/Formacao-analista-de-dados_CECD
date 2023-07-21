# Medidas de dispersão
'********************'
  
# Tópicos:
  # - Medidas de Dispersão;
  # - Comparação de homogeneidade(Grau de dispersão) de duas amostras;

'---------------'
# carregando dataset nativo no R - Classificação tipos de flor iris
iris
View(iris)

# Amostra 0 - tamanho da sepala com 150 posições
a0 = iris$Sepal.Length
length(a0)

# Amplitude amostral
h0 = diff(range(a0))

# Variancia amostral
var(a0)
var0 = var(a0)
# para amostra populacional seria
# var(a0)*(length(a0)-1)/length(a0)

# Desvio padrão (dois modos)
sd0 = sd(a0)
sqrt(var0)

# Coeficiente de variação amostral (comparar amostras homo ou heterogeneo)
cv0 = sd(a0)/mean(a0)*100
# <25% amostra com elementos homogeneos, não variam muito em relação a média
mean(a0)

# Amostra 1 - tamanho das petalas
a1 = iris$Petal.Length

# Amplitude amostral e range
range(a1)
h1 = diff(range(a1))

# Variancia amostral
var1 = var(a1)

# Desvio padrão amostral
sd1 = sd(a1)

# Coeficiente de variação amostral
cv1 = sd(a1)/mean(a1)*100
# Valors são heterogeneos, >25%, variam bastante em relação a média

# Comparação 
# criando vetor das amostras
c(h0,h1)
c(var0, var1)
c(sd0,sd1)
c(cv0, cv1)
c(mean(a0), mean(a1))
# Amostra 0 possui elementos mais homogeneos em comparação com a amostra 1

# Comparação visual. Plotando gráfico
plot(a0) # gráfico de dispersão
abline(h=mean(a0)) # Reta na média

plot(a1)
abline(h=mean(a1))

# Visualmente é possível ver a homogeneidade e heterogeneidade das amostras.
par(mfrow = c(1,2))

plot(a0)
abline(h=mean(a0))

plot(a1)
abline(h=mean(a1))