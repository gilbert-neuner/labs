wordcloud <- function(formula, data, max.words = 100, color = "black"){
  wordcloud::wordcloud(words = data[, all.vars(formula)[2]], freq = data[, all.vars(formula)[1]], max.words = max.words, color = color)
}
