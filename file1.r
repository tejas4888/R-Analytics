library('ggplot2')
library("gridExtra")
movies = data.frame(
    director = c("spielberg", "spielberg", "spielberg", "jackson", "jackson"),
    movie = c("jaws", "avatar", "schindler's list", "lotr", "king kong"),
    minutes = c(124, 163, 195, 600, 187)
)

# Plot the number of movies each director has.
qplot(director, data = movies, geom = "bar", ylab = "movies")
# By default, the height of each bar is simply a count.
# Movies

# But we can also supply a different weight.
# Here the height of each bar is the total running time of the director's movies.
qplot(director, weight = minutes, data = movies, geom = "bar", 
      ylab = "total length (min.)")