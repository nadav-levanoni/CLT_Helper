#' gets the means per sample size designated
#'
#' @param a vector
#' @param integer number of repetitions
#' @param vector that contains sample sizes
#'
#'
#' @return data frame of respective means
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_means_ns <- function(vec, reps, ns){
  len <-  ((reps * length(ns)) + 4)
  while(reps > 0){
    means <- c(means, map(ns, ~many_sample_means(vec, .x, 1)))
    reps = reps - 1
  }
  means <- unlist(cbind(means[5:len]))
  means <- data.frame(means, ns)
  colnames(means) = c("sample_mean", "n")
  return(means)

}
