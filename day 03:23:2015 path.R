df3d$dt <- as.POSIXct(df3d$timestamp, tz="America/Los_Angeles")
map.google <- get_map(smo, zoom = 10)  # get map around SMO
ggmap(map.google) +
  geom_point(data = SMO, aes(x=lon, y=lat), color="green", size=5, alpha=.5) +
  geom_path(data=df3d, aes(x = lon, y = lat, color=alt,text = paste("Airline:", flight, "<br>code:", code, "<br>timestamp:", timestamp, "<br>alt:", alt)), alpha=.5) +
  scale_colour_gradient(limits=c(3000, 11000), low="red", high="blue") +
  ggtitle("Westerly Operations 03/23/2015")
ggplotly()
