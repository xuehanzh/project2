a = length(unique(df3d$id))
b = length(unique(df3n$id))
c = length(unique(df11d$id))
d = length(unique(df11n$id))

fc = data.frame(time = c('Mar.23 daytime','Mar.23 nighttime','Nov.30 daytime','Nov.30 nighttime'), count =  c(a,b,c,d))
ggplot(fc,aes(time,count)) + geom_bar(stat = 'identity') + ggtitle('Number of Unique Flights')