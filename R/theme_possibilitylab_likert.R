#' Apply a Possibility Lab theme to ggplot likert visualizations
#'
#' @param base_size,base_family base font size and family
#' @param base_line_size base line width
#' @param base_rect_size base rect width
#'
#' @importFrom ggtext, element_textbox
#'
#' @return a theme layer for Likert style visualizations
#' @export
#'

theme_possibilitylab_likert <- function(base_size = 12, base_family = "sourcesanspro",
                                 base_line_size = 1,
                                 base_rect_size = 1) {

  half_line <- base_line_size / 2L

  likert_theme <- theme_possibilitylab(base_size = base_size,
                                    base_family = base_family,
                                    base_line_size = base_line_size,
                                    base_rect_size = base_rect_size)

  likert_theme <- likert_theme + ggplot2::theme(

    # axis.ticks.x = ggplot2::element_line(),
    axis.title = ggplot2::element_blank(),
    axis.text.x = ggplot2::element_text(hjust = 0.5,
                                        margin = ggplot2::margin(t = 2L,
                                                                 l = 4L)),

    panel.grid = ggplot2::element_blank(),

    legend.text = element_textbox(
      width = unit(60, "pt"),
      height = unit(18, "pt"),
      halign = 0.5,
      valign = 0.5,
      margin = ggplot2::margin(r = 2L)
    ),

    legend.margin = ggplot2::margin(t = 6L, r = 2L, b = 6L, l = 0L, "pt"),

    plot.margin = ggplot2::margin(
      t = half_line,
      r = base_line_size * 24,
      b = half_line,
      l = base_line_size * 24
    ),
  )

  likert_theme

}
