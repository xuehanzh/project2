alt3d=data.frame(
  DateTime=df3d$timestamp,
  hour=format(as.POSIXct(df3d$timestamp, format="%Y-%m-%d %H:%M"), format="%H"),
  altitude = df3d$alt
)
ggplot(alt3d, aes(hour, altitude)) + geom_point() + ggtitle('Flight Altitude of Mar.23 Daytime')

alt3n=data.frame(
  DateTime=df3n$timestamp,
  hour=format(as.POSIXct(df3n$timestamp, format="%Y-%m-%d %H:%M"), format="%H"),
  altitude = df3n$alt
)
ggplot(alt3n, aes(hour, altitude)) + geom_point() + ggtitle('Flight Altitude of Mar.23 Nighttime')

alt11d=data.frame(
  DateTime=df11d$timestamp,
  hour=format(as.POSIXct(df11d$timestamp, format="%Y-%m-%d %H:%M"), format="%H"),
  altitude = df11d$alt
)
ggplot(alt11d, aes(hour, altitude)) + geom_point() + ggtitle('Flight Altitude of Nov.11 Daytime')

alt11n=data.frame(
  DateTime=df11n$timestamp,
  hour=format(as.POSIXct(df11n$timestamp, format="%Y-%m-%d %H:%M"), format="%H"),
  altitude = df11n$alt
)
ggplot(alt11n, aes(hour, altitude)) + geom_point() + ggtitle('Flight Altitude of Nov.11 Nighttime')


