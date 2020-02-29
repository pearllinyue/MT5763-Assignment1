#If no "readxl" package, install it
#install.packages("readxl")
library(readxl)
#read in the data in the three sheets
potplants1<-read_xlsx("/Users/apple/Desktop/MT5763/Assignment 1/PotPlants_18.xlsx", sheet = 1)
head(potplants1)
potplants2<-read_xlsx("/Users/apple/Desktop/MT5763/Assignment 1/PotPlants_18.xlsx", sheet = 2)
head(potplants2)
potplants3<-read_xlsx("/Users/apple/Desktop/MT5763/Assignment 1/PotPlants_18.xlsx", sheet = 3, col_types = c("text", "text", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
head(potplants3)
#format arrangement
potplants2$Group[potplants2$Group == "potting mix" ] = "pm"
potplants2<-potplants2[-57:-59,]
potplants3<-potplants3[-49,]
#combine the data
library(dplyr)
potplants<-bind_rows(potplants1,potplants2,potplants3)
potplants<-potplants[,-1]
potplants<-potplants[,-40]
#drop NA in the data 
potplants<-na.omit(potplants)
dim(potplants)
#summary of data 
potplants_sum<-summary(potplants)
write.csv(potplants_sum, file = "Desktop/MT5763/Assignment 1/potplants_sum.csv")

write.csv(potplants, file = "Desktop/potplants.csv")

#explore the data 
potplants_mean<-summarise_all(group_by(potplants,Group),mean)
potplants_sd<-summarise_all(group_by(potplants,Group),sd)
cv<-summarise_all(group_by(potplants,Group),funs(mean(.)/sd(.)))
write.csv(cv, file = "Desktop/MT5763/Assignment 1/cv.csv")

#plot the data 
library(ggplot2)
K_Sc<-ggplot(data = potplants) + geom_point(mapping = aes(x = K, y = Sc, color = Group))
ggsave("potplants_K_Sc", K_Sc, "pdf")
K_Sc
K_Fe<-ggplot(data = potplants) + geom_point(mapping = aes(x = K, y = Fe, color = Group))
ggsave("potplants_K_Fe", K_Fe, "pdf")
K_Fe
K_Mg<-ggplot(data = potplants) + geom_point(mapping = aes(x = K, y = Mg, color = Group))
ggsave("potplants_K_Mg", K_Mg, "pdf")
K_Mg
Sc_Fe<-ggplot(data = potplants) + geom_point(mapping = aes(x = Sc, y = Fe, color = Group))
ggsave("potplants_Sc_Fe", Sc_Fe, "pdf")
Sc_Fe
Sc_Mg<-ggplot(data = potplants) + geom_point(mapping = aes(x = Sc, y = Mg, color = Group))
ggsave("potplants_Sc_Mg", Sc_Mg, "pdf")
Sc_Mg
Fe_Mg<-ggplot(data = potplants) + geom_point(mapping = aes(x = Fe, y = Mg, color = Group))
ggsave("potplants_Fe_Mg", Fe_Mg, "pdf")
Fe_Mg




















