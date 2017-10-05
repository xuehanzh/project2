df11d <- read.csv("RTL151130_day.csv")
str(df11d)
df11d$dt <- as.POSIXct(df11d$timestamp, tz="America/Los_Angeles")
map.google <- get_map(smo, zoom = 10)  # get map around SMO
ggmap(map.google) +
  geom_point(data = SMO, aes(x = lon, y = lat), color="red", size=10, alpha=.5) +
  geom_point(data = df11d, 
             size=1, alpha=.5,
             aes(x = lon, y = lat, color = id, text = paste("Airline:", flight, "<br>code:", code, "<br>timestamp:", timestamp, "<br>alt:", alt))) +
  theme(legend.position = "none") +
  ggtitle("Westerly Operations 11/30/2015")
ggplotly()