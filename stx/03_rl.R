# 03_rl.R

# Gráfico de dispersión
plot(meca$vel, meca$pre, ylab = "Precisión (%)", xlab = "Velocidad (PPM)", axes = F)
axis(1)
axis(2, las =2)
abline(lm(meca$pre~ meca$vel), col = "red")

# Test de correlación
cor.test(meca$vel, meca$pre)

# Modelo de regresión lineal
lm(meca$pre~ meca$vel)
