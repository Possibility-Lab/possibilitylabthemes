#' Add missing major gridlines from default theme
#'
#' @param add_major adds major gridlines to specified axes. One of "x", "y", "both" or NULL
#' @param add_minor adds minor gridlines to specified axes. One of "x", "y", "both" or NULL
#'
#' @return a theme layer with major and/or minor axes
#' @export
#'
possibility_add_grid <- function(add_major = "x", add_minor = NULL) {

  if (is.null(add_major)) {

    majors <- NULL

  } else if (add_major == "x") {

    majors <- ggplot2::theme(
      panel.grid.major.x = ggplot2::element_line(colour = "#dedddd")
    )

  } else if (add_major == "y") {

    majors <- ggplot2::theme(
      panel.grid.major.y = ggplot2::element_line(colour = "#dedddd")
    )

  } else if (add_major == "both") {

    majors <- ggplot2::theme(
      panel.grid.major.x = ggplot2::element_line(colour = "#dedddd"),
      panel.grid.major.y = ggplot2::element_line(colour = "#dedddd")
    )

  }

  if (is.null(add_minor)) {

    minors <- NULL

  } else if (add_minor == "y") {

    minors <- ggplot2::theme(
      panel.grid.minor.y = ggplot2::element_line(colour = "#dedddd")
    )

  } else if (add_minor == "x") {

    minors <- ggplot2::theme(
      panel.grid.minor.x = ggplot2::element_line(colour = "#dedddd")
    )

  } else if (add_minor == "both") {

    minors <- ggplot2::theme(
      panel.grid.minor.x = ggplot2::element_line(colour = "#dedddd"),
      panel.grid.minor.y = ggplot2::element_line(colour = "#dedddd")
    )

  }

  gridlines <- majors + minors
  return(gridlines)

}
