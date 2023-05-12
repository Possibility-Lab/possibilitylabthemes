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

theme_possibilitylab_map <- function(base_size = 8.5, base_family = "Source Sans Pro",
                                 base_line_size = 0.5,
                                 base_rect_size = 0.5) {

  map_theme <- theme_possibilitylab(base_size = base_size,
                                    base_family = base_family,
                                    base_line_size = base_line_size,
                                    base_rect_size = base_rect_size)

  map_theme <- map_theme + ggplot2::theme(

    axis.text = ggplot2::element_blank(),
    axis.text.y = ggplot2::element_blank(),

    axis.ticks = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    axis.title.y = ggplot2::element_blank(),

    axis.line = ggplot2::element_blank(),

    panel.grid = ggplot2::element_blank(),

    legend.margin = ggplot2::margin(t = 4L, r = 0L, b = 4L, l = 0L, "pt"),

    legend.text = ggplot2::element_text(size = ggplot2::unit(base_size * 1.0, "pt"),
                                        vjust = 1,
                                        margin = ggplot2::margin(
                                          t=ggplot2::unit(1L, "pt"),
                                          b=ggplot2::unit(0L, "pt"))
                                        ),

    legend.spacing = ggplot2::unit(20L, "pt"),
    legend.spacing.x = ggplot2::unit(0, "pt"),
    legend.spacing.y = ggplot2::unit(0, "pt"),

    legend.key.size = unit(2, "pt"),
    legend.key.height = ggplot2::unit(24 * 0.33, "pt"),
    legend.key.width = ggplot2::unit(24, "pt")
  )

  map_theme

}
