#' gets sd of sample
#'
#' @param a vector
#' @param integer sample size
#' @param integer number of repetitions
#'
#'
#' @return sd of the vector samples
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
many_sample_sds <- function(vec, n, reps){
  sds <- replicate(reps, sample_sd(vec, n))
  return(sds)
}
