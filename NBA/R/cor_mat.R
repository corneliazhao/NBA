#' Correlation Matrix
#'
#' This function shows a correlation matrix of the year you choose.
#' @param Year of your choice
#' @keywords numeric
#' @export
#' @examples
#' cor_mat()

cor_mat <- function(x){
  data <- filter(nba, Year == x)
  data2 <- sapply(data, is.numeric)
  data_num <- data[ , data2, drop = FALSE]
  output3 <- cor(as.matrix(data_num))
  return(output3)
}