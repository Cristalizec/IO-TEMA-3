# Ejercicio 2: Minimizar costo
costo <- function(x){
  0.2*x^2 + 10*x + 500
}

x_vals <- seq(0, 300, 1)

costos <- costo(x_vals)
min_x <- x_vals[which.min(costos)]
min_costo <- min(costos)

cat("Costo mínimo en x =", min_x, "botellas\n")
cat("Costo mínimo =", min_costo, "\n")

# Gráfica
plot(x_vals, costos, type="l",
     xlab="Botellas producidas",
     ylab="Costo total",
     main="Costo total vs Producción")
abline(v=min_x, col="blue", lty=2)
