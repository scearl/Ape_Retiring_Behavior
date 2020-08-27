install.packages("ggplot2")
library(ggplot2)

retiring <- read.csv("C:/Users/samea/OneDrive/Documents/LPZoo/ZooMonitor Data/All_Elevated_Exhibit_After3.csv")
head(retiring)

ggplot(retiring, aes(x=Exhibit, y=Elevated, fill=Species)) +
        geom_boxplot() +
        scale_fill_manual(values=c("white", "gray"))+
        ylab("Proportion of Time Apes Spent Retiring on Elevated Surfaces") +
        theme(legend.position = c(0.13,0.9))
