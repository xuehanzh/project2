df11n$dt <- as.POSIXct(df11n$timestamp, tz="America/Los_Angeles")
map.google <- get_map(smo, zoom = 10)  # get map around SMO
ggmap(map.google) +
  geom_point(data = SMO, aes(x=lon, y=lat), color="green", size=5, alpha=.5) +
  geom_path(data=df11n, aes(x = lon, y = lat, color=alt,text = paste("Airline:", flight, "<br>code:", code, "<br>timestamp:", timestamp, "<br>alt:", alt)), alpha=.5) +
  scale_colour_gradient(limits=c(3000, 11000), low="red", high="blue") +
  ggtitle("Over-Ocean Operations 11/30/2015")
ggplotly()
