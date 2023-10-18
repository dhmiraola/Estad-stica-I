# Un negocio local recibe en promedio 4 pacientes al dia. Sabiendo el numero de pacientes que llegan en un dia 
# siguiendo una distribucion de poisson, calcular la probabilidad que lleguen 3 pacientes en un dia.

# prom = 4
# x = 3

dpois(3, 4)

# Tambien podemos calcular la probabilidad acumulada: Supongamos que queremos calcular la provabilidad 
# de que lleguen hasta 3 pacientes en un dia.

ppois(3,4)
