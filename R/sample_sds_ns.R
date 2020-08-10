#' gets the sds per sample size designated
#'
#' @param a vector
#' @param integer number of repetitions
#' @param vector that contains sample sizes
#'
#'
#' @return data frame of respective sds
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sample_sds_ns <- function(vec, reps, ns){
  len <-  ((reps * length(ns)) + 4)
  while(reps > 0){
    sds <- c(sds, map(ns, ~many_sample_sds(vec, .x, 1)))
    reps = reps - 1
  }
  sds <- unlist(cbind(sds[5:len]))
  sds <- data.frame(sds, ns)
  colnames(sds) = c("sample_sd", "n")
  return(sds)

}
