# Ejercicio 5: Maximizar área con perímetro 40
area <- function(x){
  y <- 20 - x
  x * y
}

x_vals <- seq(0, 20, 0.1)
areas <- area(x_vals)

max_x <- x_vals[which.max(areas)]
max_area <- max(areas)
max_y <- 20 - max_x

cat("Dimensiones máximas:\n")
cat("x =", max_x, "\n")
cat("y =", max_y, "\n")
cat("Área máxima =", max_area, "\n")

# Gráfica
plot(x_vals, areas, type="l",
     xlab="Largo (x)",
     ylab="Área",
     main="Área de un rectángulo con perímetro fijo")
abline(v=max_x, col="darkgreen", lty=2)
