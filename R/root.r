#' An example root function
#' @param num is the number to take the root of
#' @param n is the root degree (2 for square root, 3 for cubed root, etc.)
#' @examples root(25, 2)
#' @export
root <- function(num, n) {
    num^(1 / n)
}
