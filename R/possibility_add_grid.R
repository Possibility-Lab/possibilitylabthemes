#' Add missing major gridlines from default theme
#'
#' @param add_major adds major gridlines to the x axis
#' @param add_minor adds minor gridlines to specified axes. One of "y" or "both"
#'
#' @return updated theme options for major and/or minor axes
#' @export
#'
#' @examples
add_grid <- function(add_major = TRUE, add_minor = "y") {

  if (add_major == TRUE) {

    ggplot2::theme(
      panel.grid.major.x = ggplot2::element_line(colour = "#dedddd"),
      ...
    )

  }

  if (add_minor == "y") {

    ggplot2::theme(
      panel.grid.minor.y = ggplot2::element_line(colour = "#dedddd"),
      ...
    )

  } else if ( add_minor == "both") {

    ggplot2::theme(
      panel.grid.minor.x = ggplot2::element_line(colour = "#dedddd"),
      panel.grid.minor.y = ggplot2::element_line(colour = "#dedddd"),
      ...
    )

  }

}
