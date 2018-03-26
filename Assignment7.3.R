#1. Create a box and whisker plot by class using mtcars dataset.


library(ggplot2)

ggplot(mpg, aes(x=class, y=hwy,fill=class, font.main=3)) +  
         ggtitle(toupper("Different Classes")) +
  geom_boxplot(alpha=0.3) +theme(legend.position="none")

#another way 

boxplot(mpg~cyl, data=mtcars, 
        main= toupper("Fuel Consumption"), font.main=3, 
        col= topo.colors(3), xlab="Number of Cylinders", 
        ylab="Miles per Gallon")
