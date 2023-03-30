#' Apply Possibility Lab theme to ggplot visualizations
#'
#' @return a theme layer added to a ggplot visualization
#' @export
#'

theme_possibilitylab <- function(base_size = 8, base_family = "sourcesanspro",
                                 base_line_size = 0.5,
                                 base_rect_size = 0.5,
                                 base_color = "#000000") {



  ggplot2::theme_light() %+replace%

    ggplot2::theme(

      # grid elements
      # panel.grid.major = ggplot2::element_blank(),
      # panel.grid.minor = ggplot2::element_blank(),

      # text elements
      text = ggplot2::element_text(
        family = base_family,
        size = base_size,
        hjust = 0.5,
        vjust = 0.5,
        face = "plain"),

      plot.title = ggplot2::element_text(
        family = base_family,
        size = base_size * 1.25,
        color = base_color,
        hjust = 0,
        vjust = 0
        ),

      plot.subtitle = ggplot2::element_text(
        family = base_family,
        size = base_size * 1.15,
        color = base_color,
        hjust = 0,
        vjust = 0
      )
    )


}
