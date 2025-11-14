# Ejercicio 3
f3 <- function(x) x^4 - 4*x^2
f3_2d <- function(x) 12*x^2 - 8

# Puntos de inflexión (dos)
pi3_1 <- uniroot(function(x) f3_2d(x), c(-5, 0))$root
pi3_2 <- uniroot(function(x) f3_2d(x), c(0, 5))$root
pi3_1; pi3_2

# Gráfica
curve(f3, -5, 5, lwd=2, main="Ejercicio 3: f(x)=x^4 - 4x^2")
abline(v = c(pi3_1, pi3_2), col="purple", lwd=2)
points(c(pi3_1, pi3_2), f3(c(pi3_1, pi3_2)), col="purple", pch=19)
