#' Apply Possibility Lab theme to ggplot visualizations
#'
#' @return a theme layer added to a ggplot visualization
#' @export
#'

theme_possibilitylab <- function() {

  font <- "montserrat"
  color_primary_b <- "#1f526f"
  color_primary_g <- "#468484"

  ggplot2::theme_light() %+replace%

    ggplot2::theme(

      # grid elements
      # panel.grid.major = ggplot2::element_blank(),
      # panel.grid.minor = ggplot2::element_blank(),

      # text elements
      text = ggplot2::element_text(
        family = font,
        face = "plain"),

      plot.title = ggplot2::element_text(
        family = font,
        size = 16,
        color = color_primary_b,
        hjust = 0,
        vjust = 2
        ),

      plot.subtitle = ggplot2::element_text(
        family = font,
        size = 12,
        color = color_primary_g,
        hjust = 0,
        vjust = 2
      )
    )


}
