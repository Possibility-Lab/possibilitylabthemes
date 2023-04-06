#' Set up Source Sans Pro font if needed during package load
#'
#' On package load, get Source Sans Pro from Google fonts if not already
#' installed. Also calls showtext::showtext_auto()
#'
#' @returns loaded font family
#' @importFrom showtext showtext_auto

.onLoad <- function(libname, pkgname) {

  if (
    sum(grepl("sourcesanspro", sysfonts::font_families())) >= 1
  ) {
    "Source Sans Pro is already registered and available."
  } else {

    sysfonts::font_add_google("Source Sans Pro", "sourcesanspro")
    showtext::showtext_auto()

  }

}

.onAttach <- function(libname, pkgname) {

  ## Warn user if ggplot attached after possibilitylabthemes
  if (!"ggplot2" %in% (.packages())) {
    packageStartupMessage(
      "Warning: ggplot2 needs to be loaded before possibilitylabthemes."
    )
  }

}
