# El promedio de las notas de los alumnos en el curso de Estadisticas es de un 5 y su desviacion estandard es de 11,
# Que porcentaje de alumnos...

# z->N(5,11)

# 1) tiene notas menores a 4? P(z<25)

pnorm(4,5,11)

# b) tiene notas entre un 3 y un 6? P(3<z<6)

pnorm(6,5,11)-pnorm(3,5,11)

# c) mas de un 6 P(z>6)=1-P(z<=6)

1-pnorm(6,5,11)

# Graficar

x<-c(1:50,0.5)
y<-dnorm(x,5,11)
plot(x,y)
