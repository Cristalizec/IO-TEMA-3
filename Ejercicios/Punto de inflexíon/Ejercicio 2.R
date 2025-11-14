# Ejercicio 2
f2 <- function(x) x^3 + 3*x^2 - 1
f2_2d <- function(x) 6*x + 6

# Punto de inflexión
pi2 <- uniroot(function(x) f2_2d(x), c(-10, 10))$root
pi2

# Gráfica
curve(f2, -5, 5, lwd=2, main="Ejercicio 2: f(x)=x^3 + 3x^2 - 1")
abline(v = pi2, col="blue", lwd=2)
points(pi2, f2(pi2), col="blue", pch=19)
