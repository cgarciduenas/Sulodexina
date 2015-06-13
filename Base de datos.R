#CREACIÓN DE DATOS
#vISITA INICIAL
p01 = runif(101, 10,17)
p02 = runif(202, 18,25)
p03 = runif(253, 26,33)
p04 = runif(253, 34,41)
p05 = runif(152, 42,50)
visita1 = c(p01, p02, p03, p04, p05)

#VISITA 2
p21 = runif(215, 10,17)
p22 = runif(230, 18,25)
p23 = runif(138, 26,33)
p24 = runif(38, 34,41)
p25 = runif(15, 42,50)
p2NA = rep(NA, 325)
visita2 = c(p21, p22, p23, p24, p25, p2NA) 

#VISITA 3
P31 = runif(199, 10,17)
P32 = runif(114, 18,25)
P33 = runif(45, 26,33)
P34 = runif(12, 34,41)
P35 = runif(12, 42,50)
p3NA = rep(NA, 579)
visita3 = c(P31, P32, P33, P34, P35, p3NA)

#vISITA 4
p41 = runif(86, 10,17)
p42 = runif(15, 18,25)
p43 = runif(15, 26,33)
p44 = runif(0, 34,41)
p45 = runif(12, 42,50)
p4NA = rep(NA, 845)
visita4 = c(p41, p42, p43, p44, p45, p4NA)

v1 = sample(visita1, 961, replace=T )
v2 = sample(visita2, 961, replace=T )
v3 = sample(visita3, 961, replace=T )
v4 = sample(visita4, 961, replace=T )

visitas= c(v1, v2, v3, v4)  # visitar
Grupo = gl(4,961, labels=c("Visita 1", "Visita 2", "Visita 3", "Visita 4"))

sulodexina = cbind.data.frame  (Grupo, visitas)
write.csv(sulodexina, "sulodexina.csv")

#Grupos por puntaje
#puntaje 1
punto_1 = c(p01, p21, P31, p41) #n= 601
punto_2 = c(p02, p22, P32, p42) #n= 561
punto_3 = c(p03, p23, P33, p43) #n= 451
punto_4 = c(p04, p24, P34, p44) #n= 303
punto_5 = c(p05, p25, P35, p45) #n = 191

puntaje = c(punto_1, punto_2, punto_3, punto_4, punto_5)
puntajes = c(rep("1 punto", 601), rep("2 puntos", 561), rep("3 puntos", 451), rep("4 puntos", 303), rep("5 puntos", 191))
puntos = cbind.data.frame  (puntajes, puntaje)
write.csv(puntos, "puntos.csv")

# Grupos Dummies sustituyendo los NA en los grupos 4 y 5 de puntuación
#tiempo 0 nuevo
ta01 = runif(101, 10,17)
ta11 = runif(202, 18,25)
ta21 = runif(253, 26,33)
ta31 = runif(253, 34,41)
ta41 = runif(152, 42,50)
tiempo0a = c(ta01,ta11,ta21,ta31,ta41)

#tiempo 1
ta02 = runif(215, 10,17)
ta12 = runif(230, 18,25)
ta22 = runif(138, 26,33)
ta32 = runif(201, 34,41)
ta42 = runif(177, 42,50)
tiempo1a = c(ta02,ta12,ta22,ta32,ta42)

#tiempo 2
ta03 = runif(199, 10,17)
ta13 = runif(114, 18,25)
ta23 = runif(45, 26,33)
ta33 = runif(302, 34,41)
ta43 = runif(301, 42,50)
tiempo2a = c(ta03,ta13,ta23,ta33,ta43)

#tiempo 3
ta04 = runif(86, 10,17)
ta14 = runif(15, 18,25)
ta24 = runif(15, 26,33)
ta34 = runif(422, 34,41)
ta44 = runif(435, 42,50)
tiempo3a = c(ta04,ta14,ta24,ta34, ta44)
boxplot(tiempo3a)

v_inia = sample(tiempo0a, 961, replace=T )
v_2nda = sample(tiempo1a, 961, replace=T )
v_3rda = sample(tiempo2a, 961, replace=T )
v_4tha = sample(tiempo3a, 961, replace=T )
dummy = c(v_inia, v_2nda, v_3rda, v_4tha)

sulodexina_dummy = cbind.data.frame  (Grupo, dummy)
write.csv(sulodexina_dummy, "sulodexina_dummy.csv")





