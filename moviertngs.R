
#reading the dataset 
movies<-read.csv("Movie-Ratings.csv")
str(movies)


#preprocessing data 


#changing column names 
colnames(movies)<-c("Film","Genre","CrticsRating","AudienceRating","BudgetMillions","Year")
str(movies)
summary(movies)

#converting year to factor /categorical column
movies$Year<-factor(movies$Year)

#plotting with ggplot()
library(ggplot2)






#<<<<<<<<<<<<<<<<<<<<<<<<<---------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#plot no 1
#plotting using facets plot no 1 Audience rating vs Critics Rating 
aa<-ggplot(data = movies, aes(x=movies$CrticsRating,y=movies$AudienceRating,colour =Genre))
aa+geom_point(aes(size=movies$BudgetMillions))+
  facet_grid(Genre~Year)+geom_smooth()+ylab("Audience rating")+xlab("Critics rating ")+
  coord_cartesian(ylim = c(0,125))+
  ggtitle("AUDIENCE VS CRITITCS RATING DISTRIBUTED BY YEAR AND GENRE")+
  theme(axis.title.x = element_text(colour = "Black", size = 15),
        axis.title.y = element_text(colour = "Black", size = 15),
        
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        
        legend.title = element_text(size=8),
        legend.text= element_text(size=8),
        plot.title = element_text(colour = "Dark blue")
       )




#<<<<<<<<<<<<<<<<<<<<<<<<<<-------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#plot no2 
#budget vs rating compariosn 
#audiance raring 
p<-ggplot(data = movies,aes(y= AudienceRating ,colour = Genre))
p+geom_point(aes(x=BudgetMillions),size=1)+
  xlab("BudgetMillions$$$")+ylab("Audience rating ")+
  ggtitle("Audience rating Bugdet comparison")+
  theme(axis.title.x = element_text(colour = "Blue",size=15),
        axis.title.y = element_text(colour = "Blue",size=15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        legend.title = element_text(size = 8),
        legend.text = element_text(size=8),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(size=20))




#Critics rating 
p+geom_point(aes(x=movies$BudgetMillions, y=movies$CrticsRating,colour = Genre),size = 1)+
  xlab("BudgetMilloins$$$")+ylab("Critics Rating")+
  ggtitle("Critics rating Budget comparison")+
  theme(axis.title.x=element_text(colour="Black",size=15),
        axis.title.y=element_text(colour = "black",size=15),
        
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size = 10),
        
        legend.title = element_text(size = 10),
        legend.text = element_text(size = 8),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        
        plot.title = element_text(size = 20))





#<<<<<<<<<<<<<<<<<<<<<<<<<<--------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#plot no 3
s<-ggplot(data = movies,aes(x= movies$BudgetMillions))
s+geom_histogram(binwidth = 10, aes(fill= Genre),colour = "black")+coord_cartesian(ylim = c(0,55))+
  ylab("no of movies")+xlab("BudgetMillions$$$")+
  ggtitle("Budget Bistribution")+
  theme(axis.title.x = element_text(size = 15),
        axis.title.y = element_text(size = 15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(size=20))





#<<<<<<<<<<<<<<<<<<<<<<<<<<<-------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#plot no 4
t<-ggplot(data = movies)
t+geom_histogram(binwidth = 10, aes(x=AudienceRating),fill="orange",colour="Blue")+
  ylab("Count")+xlab("Audience Rating")+
  ggtitle("Audience Rating ditribution")+
  theme(axis.title.x = element_text(size=15),
        axis.title.y = element_text(size = 15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        plot.title = element_text(size=20))





#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#plot no 5
t+geom_histogram(binwidth = 10, aes(x=CrticsRating),fill="pink",colour="Blue")+
  ggtitle("Critics Rating Distribution")+
  ylab("Count")+xlab("Critics Rating")+
  theme(axis.title.x = element_text(size=15),
        axis.title.y = element_text(size = 15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        plot.title = element_text(size = 20))



#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#box plot 
#chart no 6
u<-ggplot(data = movies, aes(x=Genre, y=AudienceRating,colour = Genre))
u+geom_jitter()+geom_boxplot( alpha = 0.5)+
  ggtitle("Audience rating VS Genre Box plot")+
  theme(axis.title.x = element_text(size = 15),
        axis.title.y = element_text(size = 15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        plot.title = element_text(size = 20))



#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<---------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#chart no 7 
u+geom_jitter()+geom_boxplot(aes(y=CrticsRating),alpha = 0.5)+ylab("Critics Rating")+
  ggtitle("Critics rating VS Genre Box plot")+
  theme(axis.title.x = element_text(size = 15),
        axis.title.y = element_text(size = 15),
        
        axis.text.x = element_text(size = 10),
        axis.text.y = element_text(size = 10),
        
        plot.title = element_text(size = 20))


                            
