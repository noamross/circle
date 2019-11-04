context("builds")

test_that("get workflows returns workflows", {
  wfl = get_workflows()
  expect_equal(httr::status_code(wfl[[1]]$response), 200)
  expect_equal(length(wfl[[1]]$content), 8)
})
