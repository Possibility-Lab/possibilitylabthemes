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

theme_possibilitylab_likert <- function(base_size = 8.5, base_family = "Source Sans Pro",
                                 base_line_size = 0.5,
                                 base_rect_size = 0.5) {

  half_line <- base_line_size / 2L

  likert_theme <- theme_possibilitylab(base_size = base_size,
                                    base_family = base_family,
                                    base_line_size = base_line_size,
                                    base_rect_size = base_rect_size)

  likert_theme <- likert_theme + ggplot2::theme(

    # axis.ticks.x = ggplot2::element_line(),
    axis.title = ggplot2::element_blank(),
    axis.title.y = ggplot2::element_blank(),
    axis.title.x = ggplot2::element_blank(),

    # axis.text.x = ggplot2::element_text(
    #   # hjust = 0.5,
    #   margin = ggplot2::margin(t = 2L,
    #                            l = 0L)), ## set x to blank

    panel.grid = ggplot2::element_blank(),

    legend.text = ggtext::element_textbox(
      size = base_size * 0.8,
      width = unit(base_size * 3, "pt"),
      height = unit(base_size * 2, "pt"),
      halign = 0.5,
      valign = 0.5,
      margin = ggplot2::margin(t = 0, r = 2L, b = 0, l = 2L)
    ),

    legend.justification = c(1,0),


    # legend.key.height = ggplot2::unit(5, "pt"), # base size, pt
    # legend.key.width = ggplot2::unit(5, "pt"), # base size, pt

    # legend.margin = ggplot2::margin(t = 6L, r = 30L, b = 6L, l = 0L, "pt"),

    plot.margin = ggplot2::margin(
      t = 0,
      r = 10L,
      b = 0,
      l = 2L
    )
  )

  likert_theme

}
