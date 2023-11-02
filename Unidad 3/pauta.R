# 1) Una fabrica de productos electronicos tiene un 10% fabricados defectuosos. Sete toma una muestra aleatoria
# de 20 productos. 

# n = 20
# p = 0.1

# a) calcule la probabilidad de que 6 de los 20 productos sean defectuosos

# p(x=6)

dbinom (6,20,0.10)


# b) la probabilidad que 3 o menos productos sean defectuosos

pbinom(3,20,0.10)

# 2) un centro de llamadas recibe en promedio 20 llamadas por minuto.

# a) Calcule la probabilidad de que reciba 15 llamadas por minuto 

dpois(15,12)

# b) la probabilidad de que reciba menos de 15 o menos llamadas
ppois(15,12)


#  las notas del examen en una estadistica siguen una distribución normal con una media 70 
# y una desviación estándarde 10

# a) calcular la probabilidad de que un estudiante obtenga una calificación sea un 5

dnorm(5, 70, 10)

# b) La probabilidad que sea mayor o igual a 6

1-pnorm(6,70,10)
