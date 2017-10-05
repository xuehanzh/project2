df3n <- read.csv("RTL150323_night.csv")
str(df3n)
df3n$dt <- as.POSIXct(df3n$timestamp, tz="America/Los_Angeles")
map.google <- get_map(smo, zoom = 10)  # get map around SMO
ggmap(map.google) +
  geom_point(data = SMO, aes(x = lon, y = lat), color="red", size=10, alpha=.5) +
  geom_point(data = df3n, 
             size=1, alpha=.5,
             aes(x = lon, y = lat, color = id, text = paste("Airline:", flight, "<br>code:", code, "<br>timestamp:", timestamp, "<br>alt:", alt))) +
  theme(legend.position = "none") +
  ggtitle("Over-Ocean Operations 03/23/2015")
ggplotly()