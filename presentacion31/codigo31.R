# - PROPIEDADES DE LOS ESTIMADORES
# uniforme
library(ggplot2)
x= c(0,20) 
fx=c(1/20, 1/20) 
dat=data.frame(x,fx)
ggplot(data=dat,aes(x=x, y=fx))+ 
  scale_y_continuous(limits=c(0,.05))+
  geom_line(size = 1,colour = 'red') 

#-----------------------------------------------------------------
library(ggplot2)
n=10
m=1000*n
Y=matrix(runif(m, min=0, max=20), ncol=n) # matriz de datos m x n
Mx=apply(Y,1,mean)
Max=apply(Y,1,max)
T1=2*Mx
T2=Max
T3=((n+1)/n)*T2
T123=data.frame(T1,T2,T3)

boxplot(T123, las=1, main="Comparación estimadores con n=10")
abline(h=20,  col="red")

apply(T123,2,mean)


# ------------------------------------------------------------------------------
# - TEOREMA DEL LIMITE CENTRAL
par(cex=0.5, cex.axis=.5, cex.lab=.5, cex.main=.5, cex.sub=.5,  mfrow=c(3,2), mai = c(.5, .5, .5, .5))
# Teorema Central del Límite-----------------------------
# Paso 1
n=1000   #  numero de columnas (tamaño máximo de muestra)
m=1000*n
# Caso --------------------------------------------------
# distribución exponencial-------------------------------
X=matrix(rexp(m,1),ncol=n)
# Paso 2
# generación de muestras-------------
X1=X[ ,1]            # n=1
X2=X[ ,1:2]          # n=2
X20=X[ ,1:20]        # n=20
X30=X[ ,1:30]        # n=30
X50=X[ ,1:50]        # n=50
X100=X[ ,1:100]      # n=100
X1000=X[ ,1:1000]    # n=1000
# Paso 3
# generacion de medias---------------
Mx2=apply(X2,1,mean)        # medias de muestras de tamaño n=2
Mx20=apply(X20,1,mean)      # medias de muestras de tamaño n=20
Mx30=apply(X30,1,mean)      # medias de muestras de tamaño n=30
Mx50=apply(X50,1,mean)      # medias de muestras de tamaño n=50
Mx100=apply(X100,1,mean)    # medias de muestras de tamaño n=100
Mx1000=apply(X1000,1,mean)  # medias de muestras de tamaño n=1000
# Paso 4 
# generación de densidad empírica --
d=density(X1)
d2=density(Mx2)
#d20=density(Mx20)
d30=density(Mx30)
d50=density(Mx50)
d100=density(Mx100)
d1000=density(Mx1000)
# Gráficos de densidad -------------------------------
# configuración de las gráficas
par(cex=0.5, cex.axis=.5, cex.lab=.5, cex.main=.5, cex.sub=.5,  mfrow=c(2,2), mai = c(.5, .5, .5, .5))
# histogramas  de comparacion-------------------------
plot(d, main=" ", xlab = "n=1")
plot(d2,main=" ", xlab = "n=2")
#plot(d20, main="", xlab = "n=20")
plot(d30, main=" ", xlab = "n=30")
plot(d50, main=" ", xlab = "n=50")



#--------------------------------------------------------
# MEDIA MUESTRAL
library(gtools)
poblacion_n2=permutations(5,2,1:5, repeats=TRUE)
mx=apply(poblacion_n2, 1,mean)
poblacion_mu =data.frame(poblacion_n2,mx)
poblacion_mu
mean(poblacion_mu$mx)
N= length(mx)
var(poblacion_mu$mx)*(N-1)/N


poblacion_n2=combinations(5,2,1:5, repeats=FALSE)
mx=apply(poblacion_n2, 1,mean)
poblacion_mu=data.frame(poblacion_n2,mx)
mean(poblacion_mu$mx)
N= length(mx)
var(poblacion_mu$mx)*(N-1)/N

2/2* (5-2)/(5-1)
# --------------------------------------------------------
# PROPORCIÓN MUESTRAL
# Datos iniciales
x <- c("1-si", "2-no", "3-si", "4-no", "5-no")
poblacion_p <- permutations(n = 5, r = 2, v = x, repeats.allowed = TRUE)

# Calcular la proporción de "si" por filas
poblacion_p <- apply(poblacion_p, 1, function(row) {
  cont_si <- sum(grepl("si", row))
  return(cont_si / length(row))
})

poblacion_p
mean(poblacion_p)
N= length(poblacion_p)
var(poblacion_p)*(N-1)/N

#--------------------------------------------------------------

# Datos iniciales
x <- c("1-si", "2-no", "3-si", "4-no", "5-no")
poblacion_p=combinations(5,2,x, repeats=FALSE)

# Calcular la proporción de "si" por filas
poblacion_p <- apply(poblacion_p, 1, function(row) {
  cont_si <- sum(grepl("si", row))
  return(cont_si / length(row))
})

poblacion_p
mean(poblacion_p)
N= length(poblacion_p)
var(poblacion_p)*(N-1)/N

0.4*0.6/2*(5-2)/(5-1)


