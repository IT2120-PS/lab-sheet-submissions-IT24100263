setwd("C:\\Users\\it24100263\\Desktop\\IT24100263")
#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
fix(Delivery_Times)
print(Delivery_Times)
#Q2
histrogam<-hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = seq(20,70, length=10),
     right = FALSE, 
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time(minutes)",
     ylab = "Frequency",
     
     )
freq<-histrogam$counts
freq
cum_freq<-cumsum(freq)
cum_freq
breaks<-histrogam$breaks
breaks
mids<-histrogam$mids
lines(mids,freq)


plot(mids,freq, type = "l", main = " Frequency Polygon(Ogive) of Delivery Times", 
     xlab = "Delivery Time(minutes)",
     ylab = "Cumulative Frequency",
     col = "red",
     pch = 16)

#Q4
new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum_freq[i-1]
  }
}
new
plot(breaks,new, type = "l", main = "Cumulative Frequency Polygon(Ogive) of Delivery Times", 
     xlab = "Delivery Time(minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)))
     
     
