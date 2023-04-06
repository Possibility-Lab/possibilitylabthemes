#' Apply a Possibility Lab theme to ggplot maps
#'
#' @param base_size,base_family base font size and family
#' @param base_line_size base line width
#' @param base_rect_size base rect width
#'
#'
#' @import ggrepel
#'
#' @return a theme layer for maps
#' @export
#'

theme_possibilitylab_map <- function(base_size = 12, base_family = "sourcesanspro",
                                 base_line_size = 1,
                                 base_rect_size = 1) {

  map_theme <- theme_possibilitylab(base_size = base_size,
                                    base_family = base_family,
                                    base_line_size = base_line_size,
                                    base_rect_size = base_rect_size)

  map_theme <- map_theme + ggplot2::theme(

    axis.text = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    legend.margin = ggplot2::margin(t = 6L, r = 0L, b = 6L, l = 0L, "pt")
  )

  map_theme

}
