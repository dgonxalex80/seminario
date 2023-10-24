# Crear una función para simular BAC para una persona
simulacion_bac <- function(cantidad_alcohol, peso_corporal, volumen_distribucion, factor_eliminacion, tiempo_desde_ultima_bebida) {
  bac <- (cantidad_alcohol / (peso_corporal * volumen_distribucion)) - (factor_eliminacion * tiempo_desde_ultima_bebida)
  if (bac < 0) {
    bac <- 0
  }
  return(bac)
}

# Crear vectores para almacenar los resultados de la simulación
n <- 200
cantidad_alcohol <- numeric(n)
peso_corporal <- numeric(n)
tiempo_desde_ultima_bebida <- numeric(n)
bac_simulada <- numeric(n)

# Generar datos simulados para 200 personas
set.seed(123)  # Fijar una semilla para reproducibilidad
for (i in 1:n) {
  cantidad_alcohol[i] <- runif(1, min = 10, max = 50)  # Cantidad de alcohol en gramos
  peso_corporal[i] <- runif(1, min = 50, max = 100)  # Peso corporal en kg
  tiempo_desde_ultima_bebida[i] <- runif(1, min = 0, max = 12)  # Tiempo desde la última bebida en horas
  bac_simulada[i] <- simulacion_bac(cantidad_alcohol[i], peso_corporal[i], 0.68, 0.015, tiempo_desde_ultima_bebida[i])
}

# Visualizar los resultados
head(data.frame(Cantidad_Alcohol = cantidad_alcohol, Peso_Corporal = peso_corporal, BAC_Simulada = bac_simulada))

