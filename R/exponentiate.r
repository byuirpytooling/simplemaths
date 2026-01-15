#' Exponentiate an integer
#' @description Provide an integer and then raise it to a real integer. Negative integers work, but not fractions.
#' @param base base to be exponentiated
#' @param power power of the exponentiation
#' @examples
#' exponentiate(3, 2)
#' exponentiate(3, -2)
#' @export
exponentiate <- function(base, power) {
    result <- 1
    for (i in 1:abs(power)) {
        result <- result * base
    }

    if (power < 0) {
        result <- 1 / result
    }

    return(result)
}
