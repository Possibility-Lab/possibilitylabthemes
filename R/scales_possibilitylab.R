#' Use Possibility Lab color palettes
#'
#' @param palette one of "categorical" or "sequential"
#'
#' @return Possibility Lab color palette
use_possibililtylab_pal <- function(palette = "categorical") {
  pal_list <- palette_possibilitylab
  types <- pal_list[[palette]]

  function(n) {

    if (n > 7) {

      stop(paste("Error: possibilitylabthemes allows for 7 colors."))

    }

    types[[n]]
  }
}

#' Discrete fill scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_fill_discrete
#'
#' @export
scale_fill_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
    )
}

#' Discrete color scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_color_discrete
#'
#' @export
scale_color_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
  )
}

#' Discrete colour scale with Possibility Lab colour palette
#'
#' @param ... other arguments passed to scale_colour_discrete
#'
#' @export
scale_colour_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
  )
}

#' Ordinal fill scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_fill_ordinal
#'
#' @export
scale_fill_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

#' Ordinal color scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_color_ordinal
#'
#' @export
scale_color_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

#' Ordinal colour scale with Possibility Lab colour palette
#'
#' @param ... other arguments passed to scale_colour_ordinal
#'
#' @export
scale_colour_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

#' Gradient color scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_color_gradientn
#' @param colors colors to use
#' @param values NuLL
#' @param space must be "Lab"
#' @param na.value sets NA values to grey by default
#' @param guide uses the "colourbar" guide for gradient legends
#'
#' @export
scale_color_gradientn <- function(...,
                                 colors = c("#4097c9", "#3181af", "#286a8f",
                                            "#1f526f", "#163b50", "#0d2330",
                                            "#040c10"),
                                 values = NULL,
                                 space = "Lab",
                                 na.value = "grey50",
                                 guide = "colourbar") {

  ggplot2::continuous_scale(
    aesthetics = "color",
    scale_name = "gradientn",
    palette = scales::gradient_n_pal(colors, values, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' Gradient colour scale with Possibility Lab colour palette
#'
#' @param ... other arguments passed to scale_colour_gradientn
#' @param colours colours to use
#' @param values NuLL
#' @param space must be "Lab"
#' @param na.value sets NA values to grey by default
#' @param guide uses the "colourbar" guide for gradient legends
#'
#' @export
scale_colour_gradientn <- function(...,
                                  colours = c("#4097c9", "#3181af", "#286a8f",
                                             "#1f526f", "#163b50", "#0d2330",
                                             "#040c10"),
                                  values = NULL,
                                  space = "Lab",
                                  na.value = "grey50",
                                  guide = "colourbar") {

  ggplot2::continuous_scale(
    aesthetics = "colour",
    scale_name = "gradientn",
    palette = scales::gradient_n_pal(colours, values, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}

#' Gradient fill scale with Possibility Lab color palette
#'
#' @param ... other arguments passed to scale_fill_gradientn
#' @param colors colors to use
#' @param values NuLL
#' @param space must be "Lab"
#' @param na.value sets NA values to grey by default
#' @param guide uses the "colourbar" guide for gradient legends
#'
#' @export
scale_fill_gradientn <- function(...,
                                   colors = c("#4097c9", "#3181af", "#286a8f",
                                               "#1f526f", "#163b50", "#0d2330",
                                               "#040c10"),
                                   values = NULL,
                                   space = "Lab",
                                   na.value = "grey50",
                                   guide = "colourbar") {

  ggplot2::continuous_scale(
    aesthetics = "fill",
    scale_name = "gradientn",
    palette = scales::gradient_n_pal(colors, values, space),
    na.value = na.value,
    guide = guide,
    ...
  )
}
