values=c(90,20,45,30,50)
count=c("A","B","C","D","E")
pie(values,labels=count)
pie(values,labels=count,col=rainbow(length(values)))

#percentage values
per=round(100*values/sum(values),1)
pie(values,labels=per,col=rainbow(length(values)),main="Counting")
legend("bottom",count,cex=0.5,fill=rainbow(length(values)))

rec1=read.csv("C:\\Users\\Prathyu Lachireddy\\Desktop\\r language\\Sales.csv")
library(ggplot2)
data=aggregate(rec1$Price_in_thousands,by=list(rec1$Manufacturer),FUN=mean(),na.rm=TRUE)
print(data)

#x and Group .1
pie(data$x,data$Group.1,col=rainbow(length(data$x)))

#ggplot
ggplot(data,aes(x="",y=data$x,fill=data$Group.1))+ggtitle("PIE CHART-Sales")+
  geom_bar(stat="Identity",width=2,color="yellow")+
  coord_polar("y",start=0)+
  theme_Void()+
  geom_text(aes(y=data$x,label+scales::percent(data$x/100)))

#3D pie

library(plotrix)
pie3D(data$x,labels=data$Group.1,explode=0.3,main="PIE3D",labelcex=0.8,shade=0.5,radius=2.5)

values=c(90,20,45,30,50)
count=c("A","B","C","D","E")
pie3D(values,labels=count,explode=0.7,main="PIE3D",labelcex=0.8,shade=0.5,radius=2.5)

