df3d <- read.csv("RTL150323_day.csv")
str(df3d)
df3d$dt <- as.POSIXct(df3d$timestamp, tz="America/Los_Angeles")
map.google <- get_map(smo, zoom = 10)  # get map around SMO
ggmap(map.google) +
  geom_point(data = SMO, aes(x = lon, y = lat), color="red", size=10, alpha=.5) +
  geom_point(data = df3d, 
             size=1, alpha=.5,
             aes(x = lon, y = lat, color = id, text = paste("Airline:", flight, "<br>code:", code, "<br>timestamp:", timestamp, "<br>alt:", alt))) +
  theme(legend.position = "none") +
  ggtitle("Westerly Operations 03/23/2015")
ggplotly()