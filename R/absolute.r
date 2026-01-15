#' Absolute value of a number
#' @description Return the same magnitude, but always positive
#' @param base base to be exponentiated
#' @param power power of the exponentiation
#' @examples
#' absolute(-13.26)
#' absolute(-999999)
#' @export
absolute <- function(x1) {
    if (x1 < 0) {
        x1 <- -x1
    }
    x1
}
