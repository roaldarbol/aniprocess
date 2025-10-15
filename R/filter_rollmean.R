#' Apply Rolling Mean Filter
#'
#' Applies a rolling mean filter to a numeric vector using the roll package.
#'
#' @param x Numeric vector to filter
#' @param window_width Integer specifying window size for rolling calculation
#' @param min_obs Minimum number of non-NA values required (default: 1)
#' @param ... Additional parameters to be passed to `roll::roll_mean()`
#'
#' @return Filtered numeric vector
#'
#' @export
filter_rollmean <- function(x, window_width = 5, min_obs = 1, ...) {
  # Check that roll is installed
  rlang::check_installed(
    "roll",
    reason = "to use filter_rollmean()",
    action = function(...) {
      utils::install.packages(
        'roll',
        repos = c(
          'https://roaldarbol.r-universe.dev',
          'https://cloud.r-project.org'
        )
      )
    }
  )
  roll::roll_mean(x, width = window_width, min_obs = min_obs, ...)
}
