#' load to namespace

.onLoad <- function(libname, pkgname) {
  sysfonts::font_add_google("Montserrat", "montserrat")
  showtext::showtext_auto()
}
