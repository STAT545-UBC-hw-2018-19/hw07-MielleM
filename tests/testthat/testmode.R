context("returning mode correctly")

test_that("single mode returned correctly.", {
  lettersingle <- group_by(as_data_frame(as_factor(c("a", "b", "b"))), value)
  lettertestsingle <- as_data_frame(as_factor("b"))
  expect_identical(as_tibble(modefunction(lettersingle)), lettertestsingle)
})

test_that("multiple modes returned correctly.", {
  lettermulti <- group_by(as_data_frame(as_factor(c("a", "b", "b", "c", "c"))), value)
  lettertestmulti <- as_data_frame(as_factor(c("b", "c")))
  expect_identical(as_tibble(modefunction(lettermulti)), lettertestmulti)
})


test_that("modes returned correctly when each entry has the same frequency", {
  lettersame <- group_by(as_data_frame(as_factor(c("a", "a", "b", "b", "c", "c"))), value)
  lettertestsame <- as_data_frame(as_factor(c("a", "b", "c")))
  expect_identical(as_tibble(modefunction(lettersame)), lettertestsame)
})


