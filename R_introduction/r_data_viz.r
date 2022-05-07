# Load and preview the mtcars (motor trends) data
library(datasets) #Load the builtin r datasets 
data(mtcars) #Choose the data in datasets
head(mtcars,5) #Show the first 5 rows
?mtcars #get info of the data 
mtcars
#Visualization, ggplot usage
library(ggplot2)
#Creat a scatter plot of displacement (disp) and miles per gallon (mpg)
ggplot(data = mtcars,
       mapping = aes(x=disp,y=mpg)) + #aes() stands for aesthetic, tell r what values mapped to what axis on the blank plot
  geom_point() + #tell r to include scatter point to the blank plot 
  ggtitle("add the title of the plot") +
  labs(x = "Displacement", y = "Miles per Gallon") #Change the labels of the axis

#Creat boxplot of the distribution of "mpg"
# for individual "Engine types"
mtcars$vs <- as.factor(mtcars$vs) #as.factor: Converts a column from numeric to factor
ggplot(aes(x=vs,y=mpg,group=vs), #"group" will help creat multiple boxplots/scatter_point grouped by a factor variale
       data = mtcars) +
  geom_boxplot() #creat boxplot
