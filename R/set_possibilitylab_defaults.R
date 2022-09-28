set_possibilitylab_defaults <- function(color_mode = "categorical",
                                        base_size = 12,
                                        base_family = "montserrat") {

  ggplot2::theme_set(theme_possibilitylab())

  ggplot2::update_geom_defaults("text", list(family = base_family))
  ggplot2::update_geom_defaults("label", list(family = base_family))

  if (color_mode == 'categorical') {
    first_element = "#1f526f"
  } else {
    print("'color_mode' is only 'categorical' right now")
  }

  ggplot2::update_geom_defaults("bar", list(fill = first_element))
  ggplot2::update_geom_defaults("col", list(fill = first_element))
  ggplot2::update_geom_defaults("point", list(colour = first_element))
  ggplot2::update_geom_defaults("line", list(colour = first_element))
  ggplot2::update_geom_defaults("step", list(colour = first_element))
  ggplot2::update_geom_defaults("path", list(colour = first_element))
  ggplot2::update_geom_defaults("boxplot", list(fill = first_element))
  ggplot2::update_geom_defaults("density", list(fill = first_element))
  ggplot2::update_geom_defaults("violin", list(fill = first_element))


  ggplot2::update_stat_defaults("count", list(fill = first_element))
  ggplot2::update_stat_defaults("boxplot", list(fill = first_element))
  ggplot2::update_stat_defaults("density", list(fill = first_element))
  ggplot2::update_stat_defaults("ydensity", list(fill = first_element))

}
