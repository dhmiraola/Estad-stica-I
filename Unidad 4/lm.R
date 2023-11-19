data <- Boston

model <- lm(medv~crim+zn+indus, data=data)

head(data)

model$coefficients

#bo =  27.39464678 <- el intercepto es el valor de la variable independiente cuando los valores son iguales a 0
#b1 = -0.24862831 <- Significa que un aumento en la crim disminuye el precio de medv
#b2 =  0.05850082 <- significa que un aumento en la zn aumenta el medv
#b3 = -0.41557782 <- significa que un aumento en indus disminuye el medv

summary(model)

#el p-value: < 2.2e-16 por lo tanto es menor al alfa establecido de 0.05, lo que dice que las variables indep si son rep.

qqnorm(model$residuals)
qqline(model$residuals)

# HIPOTESIS
# H0 NO TIENEN RELACION LINEAL
# H1 SI TIENEN RELACION LINEAL

# alfa = 0.05
# p-value = 2.52e-08, 0.000889, 1.77e-10
# los p valores son menores a 0.05 lo que indica que las variables si son representativas


install.packages("car")
library(carData)
vif_values <- car::vif(model)
vif_values

#VIF=1; indica ausencia de colinealidad
#1<VIF<5; la regresion puede verse afectada por la colinealidad
#5<VIF<10; causa de preocupacion

#Realizamos una prediccion y para ello usamos el valor de sus coeficientes
27.39464678 + -0.24862831*0.6 + 0.05850082*0 +  -0.41557782*18


# libreria necesaria para hacer la prueba de breush-pagan
install.packages("lmtest")
library(lmtest)

bp_test <- bptest(model)
bp_test

#H0: Existe homocedasticidad
#H1: No existe homoedasticidad
# la prueba de la heterocedasticidad en la prueba de breush-pagan,
# nos indica que no hay evidencia suficiente para rechazar la hipotesis nula de la heterocedasticidad,
# esto debido a que el p valor es mayor al alfa establecido de 0.05, por lo tanto en el modelo
# hay homocedasticidad lo que indica que las variables si son significativas

# analisis de la normalidad de los datos
residuals <- residuals(model)
shapiro_test <- shapiro.test(residuals)
shapiro_test

#H0: Tiene una distribucion normal
#H1: No tiene una distribucion normal
# En la prueba de la normalidad, se puede determinar que el modelo no sigue una distribucion normal,
# esto debido a que el p-valor es menor al alfa establecido.