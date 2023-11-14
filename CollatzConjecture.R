source("graph.R")
source("table.R")

#main function
collatz_conjecture <- function(x) {
  #check if input is a natural number or is empty
  if (!x) {
    print("x can only be a natural number")
    return(NULL)
  } else  if (x < 0 || check_if_decimal(x)) {
    print("x is not defined")
    return(NULL)
  } else {
    nums <- c(x)
    while (x != 1 && x != 0) {
      if (x == 1 || x == 0) {
        break()
      }
      if (check_if_odd(x)) {
        x <- 3 * x + 1
      } else if (!check_if_odd(x)) {
        x <- x / 2
      } else {
        print("failed testing if odd or even")
      }
      nums <- c(nums, x)
    }
  }

  render_graph(nums)
  render_table(nums)
  return(nums)
}

#check if number is odd
check_if_odd <- function(num) {
  return(num %% 2 == 1)
}

#check if number is decimal
check_if_decimal <- function(num) {
  return(num %% 1 != 0)
}
