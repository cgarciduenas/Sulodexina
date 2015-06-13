sulodexina = read.csv("sulodexina.csv", header=T)
names(sulodexina)

#ANOVA de datos originales del artículo
#homoscedasticidad 
with(sulodexina, bartlett.test(visitas, Grupo))

with(sulodexina, fligner.test(visitas, Grupo))

#ANOVA
fit = aov(sulodexina$visitas ~ sulodexina$Grupo)
summary(fit)

#análisis postHoc
TukeyHSD(fit, "sulodexina$Grupo")

#ANOVA de grupos balanceados
sulodummy = read.csv("sulodexina_dummy.csv", header=T)
names(sulodummy)
fit2 = aov(sulodummy$dummy ~ sulodummy$Grupo)
summary(fit2)

TukeyHSD(fit2, "sulodummy$Grupo")
