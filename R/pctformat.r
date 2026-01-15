#' a function to format numbers as percentages
#' @description This function takes a number and formats it as a percentage.
#' @param x A numeric value
#' @param digits An integer specifying the number of decimal places
#' @example pctformat(0.1234) # returns "12.34%"
#' @export
pctformat <- function(x, digits = 2) {
  paste0(round(x * 100, digits), "%")
}