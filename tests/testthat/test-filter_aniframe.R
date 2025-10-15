# Test arguments

df <- aniframe::example_aniframe()

# Check that smoothing functions work
test_that("Test output header names", {
  expect_no_error(filter_aniframe(df))
})
