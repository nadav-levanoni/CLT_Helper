#' gets the medians per sample size designated
#'
#' @param a vector
#' @param integer number of repetitions
#' @param vector that contains sample sizes
#'
#'
#' @return data frame of respective medians
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_medians_ns <- function(vec, reps, ns){
  len <-  ((reps * length(ns)) + 4)
  while(reps > 0){
    medians <- c(medians, map(ns, ~many_sample_medians(vec, .x, 1)))
    reps = reps - 1
  }
  medians <- unlist(cbind(medians[5:len]))
  medians <- data.frame(medians, ns)
  colnames(medians) = c("sample_median", "n")
  return(medians)

}
