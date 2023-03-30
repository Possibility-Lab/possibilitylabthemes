#' load to namespace

.onLoad <- function(libname, pkgname) {
  sysfonts::font_add_google("Source Sans Pro", "sourcesanspro")
  showtext::showtext_auto()
}
