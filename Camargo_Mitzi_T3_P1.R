############################
## Camargo Arellano Mitzi Naomi_T3_P1
## �ltimo cambio: 06 de Octubre de 2021
############################

##Criterios de evaluaci�n 
# Examenes parciales                50%
# Tareas y quincenales              30%
# Exposici�n de proyecto final      10%
# Exposici�n de art�culo             5%
# Participaci�n y trabajos en clase  5% 

#Defino mis vectores. Que son los criterios de evaluaci�n. 
#En el caso de examenes parciales y quincenales que son m�s de dos calificaciones, saco el promedio.
#Todos los criterios los voy a sumar en un vector "promedio_general"
#Posteriormente construyo mis condicionales.

examenes_parciales1 <- mean(c(7,7,8))*0.5
examenes_parciales1

tareas_quincenales1 <- mean(c(7,7,8,8,9,9,7,7,8,8))*0.3
tareas_quincenales1

proyecto_final1 <- (10)*0.1
proyecto_final1

exposicion_articulo <- (10)*0.05
exposicion_articulo

participacion <- (10)*0.05
participacion

promedio_general <- sum(examenes_parciales1,tareas_quincenales1,proyecto_final1,exposicion_articulo,participacion)
promedio_general
               

if (promedio_general >= 7.0){
 print("Te puedes ir")
}else{
  print("Te quedas, I'm sorry for you")
  }


