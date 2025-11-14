# Ejercicio 4: Minimizar el tiempo
T <- function(x){
  x^2 - 4*x + 12
}

x_vals <- seq(0, 10, 0.1)

tiempos <- T(x_vals)
min_x <- x_vals[which.min(tiempos)]
min_t <- min(tiempos)

cat("Tiempo mínimo en x =", min_x, "\n")
cat("Tiempo mínimo =", min_t, "\n")

# Gráfica
plot(x_vals, tiempos, type="l",
     xlab="Ajuste de calibración",
     ylab="Tiempo de operación",
     main="Tiempo de operación vs Calibración")
abline(v=min_x, col="purple", lty=2)
