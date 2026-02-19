library(testthat)
# library(withr)

# Testing setup

setup({
  cat("Running setup for test\n")
})

teardown({
  cat("Cleaning up tests\n")
})

# test blocks
test_that("add3 workds correctly", {
  expect_equal(add3(5, 6, 7), 18)
  expect_identical(add3(5, 6, 7), 18)
})

test_that("order invariant", {
  expect_equal(add3(1, 2, 3), 6)
  expect_equal(add3(2, 1, 3), 6)
  expect_equal(add3(3, 1, 2), 6)
  expect_equal(add3(1, 3, 2), 6)
  expect_equal(add3(2, 3, 1), 6)
  expect_equal(add3(3, 2, 1), 6)
})

test_that("negatives work", {
  expect_equal(add3(-1, -2, -3), -6)
  expect_equal(add3(-3, 1, 2), 0)
})

test_that("zero works", {
  expect_equal(add3(0, 0, 1), 1)
  expect_equal(add3(1, 0, 0), 1)
  expect_equal(add3(1, 0, 0), 1)
})

test_that("floats work", {
  expect_equal(add3(1.1, 2.2, 3.3), 6.6, tolerance = 1e-8)
})

test_that("warning example", {
  warn_func <- function() {
    warning("This is a warning")
  }

  expect_warning(warn_func(), "warning")
})

test_that("message example", {
  msg_func <- function() {
      message("Sample Message")
  }

  expect_message(msg_func(), "Message")
})

test_that("NA/NULL", {
  expect_null(NULL)
  expect_true(is.na(NA))
})

test_that("Length check", {
  expect_length(1:10, 10)
})

test_that("Set comparisons", {
  expect_setequal(c(1, 2, 3), c(3, 2, 1))
})

test_that("Skipping tests", {
  skip("Test skip demo")
  expect_true(FALSE)
})

# Custom expects
expect_is_one <- function(object) {
  expect_true(object == 1,
              info = paste(object, "is not even"))
}

test_that("Custom expect", {
  expect_is_one(1)
})