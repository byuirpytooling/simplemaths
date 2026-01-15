#' An example factorial function
#' @param ratio A non-negative integer
#' @return Calculates sin squared plus cos squared of the given integer. It should always return 1.
#' @examples sin_squared_plus_cos_squared(pi / 4)
#' @export 

sin_squared_plus_cos_squared <- function(int) {
    (sin(int))^2 + (cos(int))^2
}