#' gets mean of sample
#'
#' @param a vector
#' @param integer sample size
#' @param integer number of repetitions
#'
#'
#' @return mean of the vector samples
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
many_sample_means <- function(vec, n, reps){
  means <- replicate(reps, sample_mean(vec, n))
  return(means)
}
