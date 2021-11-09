#######################################
###  Examen parcial 2
###
### Mitzi Naomi Camargo Arellano
###
### Parte 1
######################################

##Los nùmeros de acceso y los organismos de donde provienen las secuencias de aa
#NP_000198.1 (human) seq1
#NP_001008996.1 (chimpanzee) 
#NP_062003.1 (rat)
#NP_001123565.1 (dog)
#NP_001172013.1 (mouse)
#NP_001075804.1 (rabbit)
#NP_001103242.1 (pig)
#NP_990553.1 (chicken)
#NP_001172055.1 (cow)
#P01318.2 (sheep)
#XP_003422420.1 (elephant)
#P67974.1 (sperm whale)
#NP_001166362.1 (Guinea pig)
#P01330.1 (coypu)

##Llamo mi libreria Biostring que estaba previamente instalado

library(Biostrings) #Llamo mi libreria 
 
#Cargo mi archivo concatenado

fastas1 <- readAAStringSet("fastas1.faa")
fastas1  #Imprimo el vector fastas1 que cree

#2. Las frecuencias de cada aa de todas las secuencias 

alphabetFrequency(fastas1) #Calculo la frecuencia de cada aa
width(fastas1) #Para obtener el tamaño de cada secuencia

#Para realizar el alineamiento voy a usar msa 

#Lo voy a intalar con:
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("msa")
                
library(msa) #Cargo mi libreria

#Realizo mis alineamientos con MUSCLE y conn Clustalw

alineamientoMUSCLE<- msaMuscle(fastas1[-c(11,13)]) #alineamiento con MUSCLE
alineamientoMUSCLE
alineamientoClustalw<- msaClustalW(fastas1[-c(11,13)]) #alineamiento con Clustalw
alineamientoClustalw

#Para crear mi matriz de distancia 

matriz_distancia1 <- stringDist(fastas1[-c(11,13)])
View(matriz_distancia1)

#Para h