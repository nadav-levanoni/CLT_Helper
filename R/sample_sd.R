#' gets sd of sample
#'
#' @param a vector
#' @param integer sample size
#'
#'
#' @return sd of the vector
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_sd <- function(vec, n){
  sample = sample(vec, n, replace = TRUE)
  sd = sd(sample)
  return(sd)
}
