#' load to namespace

.onLoad <- function(libname, pkgname) {

  if (
    sum(grepl("sourcesanspro", sysfonts::font_families())) > 1
  ) {
    "Source Sans Pro is already registered and available."
  } else {

    sysfonts::font_add_google("Source Sans Pro", "sourcesanspro")
    showtext::showtext_auto()

  }

}
