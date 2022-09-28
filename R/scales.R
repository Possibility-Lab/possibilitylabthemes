use_possibililtylab_pal <- function(palette = "categorical") {
  pal_list <- palette_possibilitylab
  types <- pal_list[[palette]]

  function(n) {
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
