context("builds")

test_that("get pipelines returns pipelines", {
  pipes = get_pipelines(api_key = api_key)
  expect_equal(httr::status_code(pipes$response), 200)
  expect_equal(length(pipes$content$items[[1]]), 9)
})
