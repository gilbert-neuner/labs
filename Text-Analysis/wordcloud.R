wordcloud <- function(formula, data, max.words = 100, color = "black") {
  color <- eval(substitute(color), data, environment(formula))
  if(length(color) == 1) {
    wordcloud::wordcloud(words = data[, all.vars(formula)[2]], freq = data[, all.vars(formula)[1]], max.words = max.words, colors = color)
  }
  else {
    wordcloud::wordcloud(words = data[, all.vars(formula)[2]], freq = data[, all.vars(formula)[1]], max.words = max.words, colors = color, ordered.colors = TRUE)
  }
}
