###PRACTICA 5

###Ejercicio 1----
library(ggplot2)
library(lubridate)

archivo<-"/home/clinux01/Escritorio/Labo_Cate/Practica_5/SAM.txt"

datos<-read.table(archivo)

vector_datos<-c()  #acomodo los datos en un vector para poder graficar la serie temporal, dato x dato
for (i in 1:nrow(datos)){
  for (j in 1:ncol(datos)){
    vector_datos<-c(vector_datos,datos[i,j])
  }
}

serie<-ggplot(data=datos,mapping=aes(x=nrow(datos),y=vector_datos))
serie<-serie+geom_line()

