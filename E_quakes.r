#download the dataset
eqs <- datasets::quakes

head(eqs, 10)
tail(eqs,10)

eqs[,c(1,2)]

df1<-eqs[,-6]

summary(eqs[,1])

eqs$lat

summary(eqs$depth)

###########Summary of the data#########

summary(eqs)

#####################
plot(eqs$depth)
plot(eqs$mag,eqs$stations,type="p")
plot(eqs)
# points and lines 
plot(eqs$stations, type= "l") # p: points, l: lines,b: both

plot(eqs$mag, xlab = 'Depth', 
     ylab = 'magnitude', main = 'Depth & Magnitude',
     col = 'yellow')

# Horizontal bar plot
barplot(eqs$stations, main = 'No. of stations',
        ylab = 'ozone levels', col= 'red',horiz = F,axes=T)

#Histogram
hist(eqs$depth)

hist(eqs$depth, 
     main = 'Depth in earth',
     xlab = 'Solar rad.', col='green')

#Single box plot
boxplot(eqs$stations,main="Boxplot")

boxplot.stats(eqs$mag)$out



# Multiple box plots
boxplot(eqs[,1:4],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

sd(eqs$depth,na.rm = T)
