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
  sequential_blue = c(),
  sequential_yellow = c(),
  diverging = c("#584F29","#D8B365","#ADB9C1","#468484","#1F526F"),
  politics = c(),
  secondary = c()
)

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
