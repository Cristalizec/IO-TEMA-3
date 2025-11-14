f5 <- function(x) x^3 - exp(x)
f5_2d <- function(x) 6*x - exp(x)

# Encontrar intervalo
xs <- seq(-10, 10, 0.001)
vals <- f5_2d(xs)
idx <- which(vals[-1] * vals[-length(vals)] < 0)
intervalo <- c(xs[idx[1]], xs[idx[1] + 1])

# Punto de inflexión
pi5 <- uniroot(function(x) f5_2d(x), intervalo)$root

# Gráfica igual a Excel
curve(f5, -5, 5, lwd=2, main="Ejercicio 5",
      xlab="x", ylab="f(x)")

# Marcar punto de inflexión
abline(v = pi5, col="red", lwd=2)
points(pi5, f5(pi5), pch=19, col="red")
