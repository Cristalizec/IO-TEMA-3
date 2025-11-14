# Ejercicio 4
f4 <- function(x) ifelse(x >= 0, x^(3/2), NA)
f4_2d <- function(x) (3/(4*sqrt(x)))

# Resolver ecuación 3/(4√x) = 1
pi4 <- uniroot(function(x) f4_2d(x) - 1, c(0.01, 10))$root
pi4

# Gráfica
curve(f4, 0, 5, lwd=2, main="Ejercicio 4: f(x)=x^(3/2)")
abline(v = pi4, col="darkgreen", lwd=2)
points(pi4, f4(pi4), col="darkgreen", pch=19)
