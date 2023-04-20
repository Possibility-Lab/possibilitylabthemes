#' Save a plot with Possibility Lab theme and export settings
#'
#' @param file Destination filepath
#' @param x plot object to save. Defaults to \code{last_plot()}
#' @param preset_size One of "small", "medium", or "large".
#' @param orientation One of "horizontal" (the default) or "vertical"
#'
#' @return a saved plot
#' @export
#'
#' @import ragg
#'
possibility_save <- function(file,
                             x = ggplot2::last_plot(),
                             preset_size = c("small", "medium", "large"),
                             orientation = c("horizontal", "vertical"),
                             dpi = 300) {

  preset_size = match.arg(preset_size)
  orientation = match.arg(orientation)

  presets = list(
    small = c(width = 2.75, height = 2, scaling = 0.5),
    medium = c(width = 5.5, height = 4, scaling = 1),
    large = c(width = 11, height = 8, scaling = 2)
  )

  preset <- switch(orientation,
                   horizontal = presets[[preset_size]],
                   vertical = replace(presets[[preset_size]],
                                      c("width", "height"),
                                      presets[[preset_size]][c("height", "width")]
                                      )
                   )



  ragg::agg_png(
    file,
    width = preset[["width"]],
    height = preset[["height"]],
    units = "in",
    res = dpi,
    scaling = preset[["scaling"]]
  )

  plot(x)

  invisible(dev.off())


}
