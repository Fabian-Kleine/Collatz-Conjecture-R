source("CollatzConjecture.R")

main <- function() {
  # get user input
  x <- readline("ENTER A NUMBER (x ∈ N):")
  x <- as.integer(x)

  nums <- collatz_conjecture(x)


  print(paste("Your Input:", x))
  print(paste("Heighest Number:", max(nums)))
  print(paste("Steps until 1:", length(nums)))
}

main()