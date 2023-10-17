# EJERCICIO 1: La prob. de que a un estudiante nuevo del CFT tenga una percepcion positiva es de 0,8, 
# si llegan 3 alumnos nuevos, cual es la probabilidad de que solo a 2 de ellos tengan una percepcion positiva?

# n = 3
# p = 0.8
# x = 2

dbinom(2, 3, 0.8)

# ahora supongamos que llegan 5 alumnos nuevos

# n = 5
# p = 0.8
# x = 2

dbinom(2, 5, 0.8)


# Tambien podemos calcular la probabilidad acumulativa, por ejemplo: 
# siguiendo el enunciado anterior: cual es la probababilidad de que un maximo de 2 estudiantes
# de 3 estudiantes nuevos tengan una percepcion positiva del CFT?

# n = 3
# p = 0.8
# x_max = 2

pbinom(2, 3, 0.8)
