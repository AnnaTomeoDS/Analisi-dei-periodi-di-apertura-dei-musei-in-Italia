#applico il metodo non gerarchico k-means
d<-dist (df, method ="euclidean",diag=TRUE , upper = TRUE) 
d2<-d^2 
hc<-hclust (d2 , method = "centroid") 
taglio<-cutree (hc , k =3, h =NULL ) 
tagliolist<-list( taglio ) 
centroidiIniziali<-aggregate (df, tagliolist , mean)[,-1] 
km3<-kmeans (df, centers = centroidiIniziali , iter.max = 10) 
km3