####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Carla Carolina Pérez Hernández (UAEH)

# Laboratorio - MAPA DE CALOR -TÉRMICO- with pheatmap
# DATOS GENETICOS TOMADOS DE Sahir Bhatnagar.
# PRACTICA DE CODERS

# Objetivo: Realizar un heatmap con datos geneticos 
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipotética de datos y dataframes adicionales
# 2. Realizar varios heatmaps

#Un mapa de calor es una representación gráfica de datos que utiliza un sistema de 
#codificación de colores para representar diferentes valores


#Heatmaps with pheatmap 
#Simulated data created by Sahir Bhatnagar.

#possible data pre-processing - normalization - quantile, median, etc., log transform
#not necessary here - we have log fold change data that has already been normalized

#Calculating your distance matrix (see dist objects):
#compute how similar or different you values are
#parametric - distance measures based on Pearson correlation 
#non parametric - spearman rank - replace by ranks and calculate correlation, Kendall's - relative ordering
#euclidean - shortest distance between values (has to be normalized), takes magnitude into account
#city block/Manhattan - sum of distances along each dimension
#distance 1-correlation - of all pairs of items to be clustered

#Cluster your samples (see hclust objects):
#hierarchical, organizes into a tree structure based on similarity - short branches if similar and longer branches as similarity decreases
#repeated cycles where the 2 closest remaining items (smallest distance) get joined by a branch with the length of the branch reflecting the distance between them, the distance between this item and all other remaining items are computed until only one object remains
#single linkage clustering - distance between 2 items is the minimum of all pairwise distances between items contained in x and y - fast b/c no other calculations need to be performed once you have your distance matrix
#complete linkage is the maximum of all paiwise distances between x and y 
#average linkage - mean of all pairwise distances between items contained in x and y
#k-means organize into clusters (self-chosen number) - items are randomly assigned to a cluster - the mean vector fo rall items in each hcluster is computed, items are reassigned to the cluster whose center is closest to them - random starting points so will not always get the same answer, number of trial done to deal with the randomness
#self organizing maps



#install.packages("pheatmap")
library(pheatmap)

# importar datos



#Plotting with pheatmap!


#change font



#default is clustering rows and columns



#cluster by gene - groups of similar genes----LOS GENES ESTAN EN LOS RENGLONES
#POR DEFAULT CLUSTEA LOS RENGLONES


#cluster by patient - groups of similar patients 
#DEBES HACER QUE LAS COLUMNAS SE TRANFOMEN A RENGLONES


#usually order by both


#seeing some patterns emerge - but what do they mean? Great time to add annotation to our plot



#add to row first, see that genes are clustering according to the pathways they belong to


#now have information about the drug and condition 

#GRAFICO COMPLETO G1


#GRAFICO QUITANDO CLUSTERS (ARBOLES DE AGRUPACIÓN-DENDOGRAMAS)


#take a smaller subset 


#con subset 1 (COPIAR G1)

# con subset 2 -- DESPLEGAR VALORES


# con color
# viridis, magma, plasma, cividis, inferno




# elementos adicionales 





#####################################################################################################################

## slightly artificial with color bar, without and with ordering:
cc <- rainbow(nrow(Ca))
heatmap(Ca, Rowv = FALSE, symm = TRUE, RowSideColors = cc, ColSideColors = cc,
        margins = c(6,6))
heatmap(Ca,		symm = TRUE, RowSideColors = cc, ColSideColors = cc,
        margins = c(6,6))
