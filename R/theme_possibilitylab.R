#' Apply a general Possibility Lab theme to ggplot visualizations
#'
#' @param base_size,base_family base font size and family
#' @param base_line_size base line width
#' @param base_rect_size base rect width
#'
#'
#' @import ggrepel
#'
#' @return a theme layer
#' @export
#'

theme_possibilitylab <- function(base_size = 8.5, base_family = "Source Sans Pro",
                                 base_line_size = 0.5,
                                 base_rect_size = 0.5) {

  half_line <- base_line_size / 2L

  # ggplot2::theme_grey() %+replace%

    ggplot2::theme(

      # main attributes

      text = ggplot2::element_text(
        family = base_family,
        size = base_size,
        colour = "#000000",
        hjust = 0.5,
        vjust = 0.5,
        face = "plain",
        angle = 0,
        lineheight = 0.9,
        margin = ggplot2::margin(t = 0, r = 0, b = 0, l = 0),
        debug = FALSE),

      line = ggplot2::element_line(
        colour = "#000000",
        linewidth = base_line_size,
        linetype = 1L,
        lineend = "round"
        ),

      rect = ggplot2::element_rect(
        fill = "#ffffff",
        colour = "#000000",
        linewidth = base_rect_size,
        linetype = 1L
      ),

      # Plot attributes

      plot.tag = ggplot2::element_blank(),

      plot.title = ggplot2::element_text(
        face = "bold",
        size = base_size * 12 / 8.5,
        hjust = 0,
        vjust = 0,
        margin = ggplot2::margin(t = 2L, b = 6L)
        ),

      plot.title.position = "plot",

      plot.subtitle = ggplot2::element_text(
        size = base_size * 9.5 / 8.5,
        colour = "#474747",
        hjust = 0,
        vjust = 0,
        margin = ggplot2::margin(b = 10L)
      ),

      plot.caption = element_text(
        size = base_size * 7 / 8.5,
        colour = "#474747",
        hjust = 0,
        vjust = 0,
        margin = ggplot2::margin(t = 2L, b = 2L)
      ),

      plot.caption.position = "plot",

      plot.background = ggplot2::element_rect(fill = "#ffffff",
                                              colour = "#ffffff",
                                              size = 1
                                              ),

      plot.margin = ggplot2::margin(
        t = base_line_size,
        r = base_line_size * base_size,
        b = base_line_size,
        l = base_line_size
      ),

      # axis attributes

      axis.text = ggplot2::element_text(size = base_size),
      axis.text.x = ggplot2::element_text(vjust = 1),
      axis.text.y = ggplot2::element_text(hjust = 1,
                                          margin = ggplot2::margin(l = 4L)),
      axis.text.x.top = NULL,
      axis.text.y.right = NULL,
      axis.title = ggplot2::element_text(face = "plain",
                                         size = base_size),
      axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 8L)),
      axis.title.y = ggplot2::element_text(angle = 90L,
                                           margin = ggplot2::margin(r = 8L)),
      axis.title.x.top = NULL,
      axis.title.y.right = NULL,

      axis.ticks = ggplot2::element_blank(),
      axis.ticks.length = ggplot2::unit(4L, "pt"),
      axis.ticks.x = ggplot2::element_line(colour = NULL,
                                           size = NULL,
                                           linetype = NULL,
                                           lineend = NULL),
      axis.ticks.y = ggplot2::element_line(colour = NULL,
                                           size = NULL,
                                           linetype = NULL,
                                           lineend = NULL),
      axis.line = ggplot2::element_line(),
      axis.line.x = ggplot2::element_line(colour = "#53626f"),
      axis.line.y = ggplot2::element_blank(),

      ## legend attributes
      legend.background = ggplot2::element_blank(), # blank
      legend.spacing = ggplot2::unit(20L, "pt"),
      legend.spacing.x = ggplot2::unit(4L, "pt"),
      legend.spacing.y = NULL,

      legend.key = ggplot2::element_blank(), # blank
      legend.key.size = ggplot2::unit(10L, "pt"),
      legend.key.height = NULL,
      legend.key.width = NULL,

      legend.text = ggplot2::element_text(size = base_size * 9.5 / 8.5,
                                          vjust = 0.5),
      legend.text.align = NULL,
      legend.title = ggplot2::element_blank(),
      legend.title.align = NULL, # 0
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.justification = NULL,
      legend.margin = ggplot2::margin(t = 2L, r = 0L, b = 2L, l = 0L, "pt"),
      legend.box = "horizontal",
      legend.box.margin = NULL,
      legend.box.background = element_blank(), # NULL
      legend.box.spacing = NULL,

      ## panel attributes

      panel.background = ggplot2::element_rect(fill = "#ffffff",
                                               colour = "#ffffff",
                                               linetype = 0),
      panel.border = ggplot2::element_blank(),
      panel.ontop = FALSE,
      panel.spacing = ggplot2::unit(6L, "pt"),
      panel.spacing.x = NULL,
      panel.spacing.y = NULL,
      panel.grid = NULL,
      panel.grid.major = ggplot2::element_line(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(colour = "#dedddd",
                                                 linewidth = half_line),
      panel.grid.minor = ggplot2::element_line(colour = "#dedddd",
                                               linewidth = half_line * 0.9),
      panel.grid.minor.x = ggplot2::element_blank(),
      panel.grid.minor.y = ggplot2::element_blank(),

      # faceting attributes

      strip.background = ggplot2::element_rect(fill = "#ffffff",
                                               colour = NA,
                                               size = 10L),
      strip.text = ggplot2::element_text(face = "bold",
                                         size = base_size * 9.5 / 8.5,
                                         margin = ggplot2::margin(t = 0L, r = 0L, b = 0L, l = 0L)),
      strip.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 4.5, b = 4.5)),
      strip.text.y = ggplot2::element_text(angle = -90L,
                                           margin = ggplot2::margin(l = 4.5, r = 4.5)),
      strip.placement = "inside",
      strip.placement.x =  NULL,
      strip.placement.y =  NULL,
      strip.switch.pad.grid = ggplot2::unit(0.1, "cm"),
      strip.switch.pad.wrap = ggplot2::unit(0.1, "cm"),

      # create a complete format
      complete = TRUE

    ) ## closes theme


}
