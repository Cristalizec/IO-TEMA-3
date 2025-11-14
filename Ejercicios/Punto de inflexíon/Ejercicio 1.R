# Ejercicio 1
f1 <- function(x) x^3 - 6*x
f1_2d <- function(x) 6*x   # segunda derivada

# Punto de inflexión
pi1 <- uniroot(function(x) f1_2d(x), c(-10, 10))$root
pi1

# Gráfica
curve(f1, -5, 5, lwd=2, main="Ejercicio 1: f(x)=x^3 - 6x")
abline(v = pi1, col="red", lwd=2)
points(pi1, f1(pi1), col="red", pch=19)
