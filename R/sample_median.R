#' gets median of sample
#'
#' @param a vector
#' @param integer sample size
#'
#'
#' @return median of the vector
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_median <- function(vec, n){
  sample = sample(vec, n, replace = TRUE)
  median = median(sample)
  return(median)
}
