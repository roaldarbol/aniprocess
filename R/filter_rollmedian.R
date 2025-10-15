#' Apply Rolling Median Filter
#'
#' Applies a rolling median filter to a numeric vector using the roll package.
#'
#' @inheritParams filter_rollmean
#' @param ... Additional parameters to be passed to `roll::roll_median`
#'
#' @return Filtered numeric vector
#'
#' @export
filter_rollmedian <- function(x, window_width = 5, min_obs = 1, ...) {
  # Check that roll is installed
  rlang::check_installed(
    "roll",
    reason = "to use filter_rollmedian()",
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
  roll::roll_median(x, width = window_width, min_obs = min_obs, ...)
}
