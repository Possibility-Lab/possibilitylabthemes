scatter_grid <- function(...) {
  ggplot2::theme(
    panel.grid.major.x = ggplot2::element_line(colour = "#dedddd"),
    ...
    )
}
