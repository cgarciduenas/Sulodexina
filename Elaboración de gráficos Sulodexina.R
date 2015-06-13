
library(ggplot2)


#Grafico 1
puntaje = read.csv("puntos.csv", header=T)
qplot(binwidth=1.6, puntaje, data=puntaje, fill=puntajes, main= "Distribución de puntajes entre visitas", xlab="Puntaje", ylab="Frecuencia")+ scale_fill_grey()

#Gráfico 2
sulodexina = read.csv("sulodexina.csv", header=T)
names(sulodexina)
qplot(Grupo, visitas, data = sulodexina, geom = 'boxplot', fill = Grupo, main= "Distribución de puntaje por visita", ylab="Frecuencia", xlab="Visita") + scale_fill_grey() + theme(legend.position = "none")


#grafico 3
sulodummy = read.csv("sulodexina_dummy.csv", header=T)
names(sulodummy)
qplot(Grupo, dummy, data = sulodummy, geom = 'boxplot', fill = Grupo, main= "Distribución de puntaje por visita, Modelo balanceado", ylab="Frecuencia", xlab="Visita") + scale_fill_grey() + theme(legend.position = "none")
