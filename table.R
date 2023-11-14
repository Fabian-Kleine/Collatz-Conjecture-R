render_table <- function(nums) {
  applied_formula <- ifelse(nums %% 2 == 1, "3*x+1", "x/2")
  table <- data.frame(nums, applied_formula)
  print(table)
}