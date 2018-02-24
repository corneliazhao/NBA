#' Who's the oldest?
#'
#' This function show you who's the oldest player of the year
#' @param Year of your choice
#' @keywords age
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(x){
  age <- filter(arrange(select(nba, Year, Player, Age), desc(Age)), Year == x)
  output2 <- age[1,2]
  return(output2)
}