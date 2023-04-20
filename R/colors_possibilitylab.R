#' Possibility Lab named color list
#'
#' Vectors of hex codes for colors to be used in visualizations
#'
#' @export

colors_possibilitylab <- c(
  `dark blue` = "#1f526f",
  `blue green` = "#468484",
  `green` = "#78ae94",
  `yellow` = "#ccce84",
  `stone pine` = "#584f29",
  `pacific` = "#53626f",
  `sather gate` = "#b9d3b6"
)


possibility_palettes <- list(
  likert = c("#1F526F", "#3279A2", "#ADB9C1", "#B9D3B6", "#468484"),
  discrete = c("#1F526F", "#468484", "#78AE94", "#CCCE84", "#584F29", "#53626F", "#B9D3B6", "#2A5050"),
  sequential_blue = c("#1F526F", "#3C647E", "#55768D", "#6D889D", "#859CAD", "#9DAFBD", "#B6C3CD"),
  yellowblue = c("#CCCE84","#B3BC81","#9BAB7E","#82997B","#698778","#507575","#386472","#1F526F"),
  diverging = c("#584F29","#D8B365","#ADB9C1","#468484","#1F526F"),
  politics = c("#D13F3F", "#53626F", "#239CE1"),
  secondary = c("#584F29", "#53626F", "#B9D3B6")
)

#' Get a color palette from Possibility Lab's palettes
#'
#' @param name the name of the palette
#' @param n number of colors required, up to a max
#' @param type discrete or continuous
#'
#' @return an object of class "palette"
#' @export
#'
possibility_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- possibility_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
