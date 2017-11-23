setwd("F:/Dropbox/Professional Portfolio/Projects/tmdb-movies")

tmdb_movies <- read.csv("tmdb-movies.csv")
#tmdb_movies <- read.csv("tmdb_5000_movies.csv")

head(tmdb_movies)
summary(tmdb_movies)

tmdb_movies$id <- factor(tmdb_movies$id)

# Create correlation matrix for all numeric variables
cor(tmdb_movies[sapply(tmdb_movies, is.numeric)])

sapply(tmdb_movies[sapply(tmdb_movies, is.numeric)], hist)

hist(tmdb_movies[,'popularity'])

tmdb_movies[sapply(tmdb_movies, is.numeric)]

library(reshape2)
library(ggplot2)

d <- melt(tmdb_movies[sapply(tmdb_movies, is.numeric)])
ggplot(d, aes(x = value)) +
  facet_wrap(~variable, scales = "free_x") +
  geom_histogram()

plot(tmdb_movies$popularity, tmdb_movies$revenue)
