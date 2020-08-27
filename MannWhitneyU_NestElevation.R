###comparing retiring behavior between exhibits B and C

###ANOVA

####After 3 pm 

#Comparing Species and Exhibit After 3pm
exhibitape3 <- read.csv('C:/Users/samea/OneDrive/Documents/LPZoo/ZooMonitor Data/All_Elevated_Exhibit_After3.csv')
exhibitape3
aov(Elevated ~ Exhibit*Species + Error(Subject), data = exhibitape3)
var.test(Elevated ~ Species, data = exhibitape3)

sppxexhibit3 <- aov(Elevated ~ Species*Exhibit + Error(Subject), data = exhibitape3)
summary(sppxexhibit3)


#####10-3

#Comparing Species and Exhibit from 10-3
exhibitape10 <- read.csv('C:/Users/samea/OneDrive/Documents/LPZoo/ZooMonitor Data/All_Elevated_Exhibit_10-3.csv')
exhibitape10
aov(Elevated ~ Exhibit*Species + Error(Subject), data = exhibitape10)
var.test(Elevated ~ Species, data = exhibitape10)

sppxexhibit10 <- aov(Elevated ~ Species*Exhibit + Error(Subject), data = exhibitape10)
summary(sppxexhibit10)


####All times

#Comparing Species and Exhibit All Times
exhibitapeall <- read.csv('C:/Users/samea/OneDrive/Documents/LPZoo/ZooMonitor Data/All_Elevated_Exhibit_AllTimes.csv')
exhibitapeall
aov(Elevated ~ Exhibit*Species + Error(Subject), data = exhibitapeall)
var.test(Elevated ~ Species, data = exhibitapeall)

all <- aov(Elevated ~ Species * Exhibit * Time + Error(Subject), data = exhibitapeall)
summary(all)





