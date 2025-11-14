# Ejercicio 3: Maximizar ingreso
ingreso <- function(x){
  -2*x^2 + 120*x
}

x_vals <- seq(0, 50, 0.1)

ingresos <- ingreso(x_vals)
max_x <- x_vals[which.max(ingresos)]
max_ingreso <- max(ingresos)

cat("Ingreso máximo con precio =", max_x, "pesos\n")
cat("Ingreso máximo =", max_ingreso, "\n")

# Gráfica
plot(x_vals, ingresos, type="l",
     xlab="Precio del boleto",
     ylab="Ingreso total",
     main="Ingreso en función del precio")
abline(v=max_x, col="red", lty=2)
