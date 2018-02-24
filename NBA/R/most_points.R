#' Who scored most?
#'
#' This function shows you who scored most in the year you choose.
#' @param Year of your choice
#' @keywords points
#' @export
#' @examples
#' most_points()

most_points <- function(x){
  year <- filter(arrange(select(nba, Year, Player, PTS), desc(PTS)), Year == x)
  output <- year[1,2]
  return(output)
}