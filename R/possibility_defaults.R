#' Set Possibility Lab theme as defaults
#'
#' @param type one of "default", "map", "likert"
#' @param base_size
#' @param base_family
#'
#' @return
#' @export
#'
#' @import ggrepel
#'
#' @examples
#'
possibility_defaults <- function(type = "default",
                                 base_size = 12,
                                 base_family = "sourcesanspro") {

  if(type == "default") {

    ggplot2::theme_set(theme_possibilitylab())

  } else if (type == "map") {

    ggplot2::theme_set(theme_possibilitylab_map())

  } else if (type == "likert") {

    ggplot2::theme_set(theme_possibilitylab_likert())

  } else {

    stop('Only "default", "map", or "likert" are accepted types at this time.')

  }


  ggplot2::update_geom_defaults("text", list(family = base_family, size = 1 / 0.352777778))
  ggplot2::update_geom_defaults("label", list(family = base_family, size = 1 / 0.352777778))
  # ggplot2::update_geom_defaults("text_repel", list(family = base_family))
  # ggplot2::update_geom_defaults("label_repel", list(family = base_family))

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )


  ggplot2::update_geom_defaults("bar", list(fill = "#1f526f"))
  ggplot2::update_geom_defaults("col", list(fill = "#1f526f"))
  ggplot2::update_geom_defaults("point", list(colour = "#1f526f", size = 3))
  ggplot2::update_geom_defaults("line", list(colour = "#1f526f", linewidth = 1))
  ggplot2::update_geom_defaults("step", list(colour = "#1f526f", linewidth = 1))
  ggplot2::update_geom_defaults("path", list(colour = "#1f526f", linewidth = 1))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#1f526f"))
  ggplot2::update_geom_defaults("density", list(fill = "#1f526f"))
  ggplot2::update_geom_defaults("violin", list(fill = "#1f526f"))


  ggplot2::update_stat_defaults("count", list(fill = "#1f526f"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#1f526f"))
  ggplot2::update_stat_defaults("density", list(fill = "#1f526f"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#1f526f"))

}
