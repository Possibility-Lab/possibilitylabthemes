
<!-- README.md is generated from README.Rmd. Please edit that file -->

# possibilitylabthemes

<!-- badges: start -->
<!-- badges: end -->

possibilitylabthemes provides a custom ggplot2 theme with Possibility
Lab color palettes and styles.

## Installation

You can install the development version of possibilitylabthemes from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Possibility-Lab/possibilitylabthemes")
```

## Using the theme

You can set the Possibility Lab theme as the default for an R session.

You can specify certain visualization types for more a more tailored
theme.

Set the Possibility Lab theme as the default, then plot with ggplot as
normal. To use color palettes other than the default, you can use
`scale_color_manual(values = possibility_palette("discrete"))`, for
example. Palettes available can be returned by `possibility_palettes`.

<img src="man/figures/README-pressure-1.png" width="100%" />

## Font

Possibility Lab uses the Source Sans Pro font. Help with installing and
testing fonts will be added soon.

## Citations

Thanks to the [urbnthemes](https://github.com/UrbanInstitute/urbnthemes)
package for inspiration and examples.
