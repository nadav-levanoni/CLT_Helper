#' gets mean of sample
#'
#' @param a vector
#' @param integer sample size
#'
#'
#' @return mean of the vector
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_mean <- function(vec, n){
  sample = sample(vec, n, replace = TRUE)
  mean = mean(sample)
  return(mean)
}
