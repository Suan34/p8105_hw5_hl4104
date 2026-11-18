#' simulate_t_test
#'
#' @param mu 
#' @param n 
#' @param sigma 
#'
#' @returns tidy ttest
#' @export
#'
#' @examples
simulate_t_test = function(mu, n = 30, sigma = 5) {
  
  sample_data = rnorm(n = n, mean = mu, sd = sigma)

  t.test(sample_data, mu = 0) |>
    broom::tidy() |>
    dplyr::select(estimate, p.value)
  
}
