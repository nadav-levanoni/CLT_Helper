#' gets median of sample
#'
#' @param a vector
#' @param integer sample size
#' @param integer number of repetitions
#'
#'
#' @return medians of the vector samples
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
many_sample_medians <- function(vec, n, reps){
  medians <- replicate(reps, sample_median(vec, n))
  return(medians)
}
