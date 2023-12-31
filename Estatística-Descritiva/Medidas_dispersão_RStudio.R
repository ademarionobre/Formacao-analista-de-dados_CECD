# Medidas de dispers�o
'********************'
  
# T�picos:
  # - Medidas de Dispers�o;
  # - Compara��o de homogeneidade(Grau de dispers�o) de duas amostras;

'---------------'
# carregando dataset nativo no R - Classifica��o tipos de flor iris
iris
View(iris)

# Amostra 0 - tamanho da sepala com 150 posi��es
a0 = iris$Sepal.Length
length(a0)

# Amplitude amostral
h0 = diff(range(a0))

# Variancia amostral
var(a0)
var0 = var(a0)
# para amostra populacional seria
# var(a0)*(length(a0)-1)/length(a0)

# Desvio padr�o (dois modos)
sd0 = sd(a0)
sqrt(var0)

# Coeficiente de varia��o amostral (comparar amostras homo ou heterogeneo)
cv0 = sd(a0)/mean(a0)*100
# <25% amostra com elementos homogeneos, n�o variam muito em rela��o a m�dia
mean(a0)

# Amostra 1 - tamanho das petalas
a1 = iris$Petal.Length

# Amplitude amostral e range
range(a1)
h1 = diff(range(a1))

# Variancia amostral
var1 = var(a1)

# Desvio padr�o amostral
sd1 = sd(a1)

# Coeficiente de varia��o amostral
cv1 = sd(a1)/mean(a1)*100
# Valors s�o heterogeneos, >25%, variam bastante em rela��o a m�dia

# Compara��o 
# criando vetor das amostras
c(h0,h1)
c(var0, var1)
c(sd0,sd1)
c(cv0, cv1)
c(mean(a0), mean(a1))
# Amostra 0 possui elementos mais homogeneos em compara��o com a amostra 1

# Compara��o visual. Plotando gr�fico
plot(a0) # gr�fico de dispers�o
abline(h=mean(a0)) # Reta na m�dia

plot(a1)
abline(h=mean(a1))

# Visualmente � poss�vel ver a homogeneidade e heterogeneidade das amostras.
par(mfrow = c(1,2))

plot(a0)
abline(h=mean(a0))

plot(a1)
abline(h=mean(a1))