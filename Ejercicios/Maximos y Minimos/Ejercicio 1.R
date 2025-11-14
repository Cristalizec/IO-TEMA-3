# Ejercicio 1: Maximizar utilidad
utilidad <- function(x){
  5 * x
}

# Secuencia de valores permitidos (0 a 200)
x_vals <- seq(0, 200, 1)

# Encontrar el máximo
utilidades <- utilidad(x_vals)
max_x <- x_vals[which.max(utilidades)]
max_utilidad <- max(utilidades)

cat("Máxima utilidad en x =", max_x, "galletas\n")
cat("Utilidad máxima =", max_utilidad, "\n")

# Gráfica
plot(x_vals, utilidades, type="l",
     xlab="Galletas producidas",
     ylab="Utilidad",
     main="Utilidad total vs Producción de galletas")
abline(v=max_x, col="red", lty=2)

