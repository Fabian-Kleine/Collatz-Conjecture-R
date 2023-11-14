render_graph <- function(nums) {
  x_axis <- seq(from = 1, to = length(nums), by = 1)
  y_axis <- nums
  plot(x_axis, y_axis, xlab = "Steps until 1", ylab = "Numbers")
  lines(x_axis, y_axis, col = "blue")
}
