#' Performs a random operation on the number by a random number between 1 and 1000
#' @param a an input number
#' @export
randomOperation <- function(a) {
  num <- stats::runif(1, 1, 1000)
  choice <- sample(1:4, 1)

  ops <- list(
    function(x) x + num,
    function(x) x - num,
    function(x) x * num,
    function(x) x / num
  )

  ops[[choice]](a)
}