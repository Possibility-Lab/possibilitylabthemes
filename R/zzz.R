
.onAttach <- function(libname, pkgname) {

  ## Warn user if ggplot attached after possibilitylabthemes
  if (!"ggplot2" %in% (.packages())) {
    packageStartupMessage(
      "Warning: ggplot2 needs to be loaded before possibilitylabthemes."
    )
  }
}
