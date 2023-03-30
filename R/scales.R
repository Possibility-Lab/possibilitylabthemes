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

scale_fill_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
    )
}

scale_color_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
  )
}

scale_colour_discrete <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("categorical"),
    ...
  )
}

scale_fill_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

scale_color_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "color",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

scale_colour_ordinal <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "possibilitylab",
    palette = use_possibililtylab_pal("sequential"),
    ...
  )
}

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
