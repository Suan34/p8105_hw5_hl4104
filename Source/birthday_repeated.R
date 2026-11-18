#' birthday_repeated
#'
#' @param sample_size 
#'
#' @returns repeated_result
#' @export
#'
#' @examples
birthday_repeated = function(sample_size) {
  
  birthdays = sample(1:365, size = sample_size, replace = TRUE)

  repeated_result = length(unique(birthdays)) < sample_size
  
  return(repeated_result)
  
}
