
<!-- README.md is generated from README.Rmd. Please edit that file -->

# plotutils

<!-- badges: start -->
<!-- badges: end -->

The goal of plotutils is to provide utility functions for plotting in R,
primarily focused on plots.

## Installation

You can install `plotutils` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("MiguelRodo/plotutils")
```

## Examples

``` r
library(plotutils)
```

Fix axis limits to be equal between x- and y-axes, and/or expand axis
coordinates.

``` r
data('cars', package = 'datasets')
library(ggplot2)
p0 <- ggplot(cars, aes(speed, dist)) +
  cowplot::theme_cowplot(font_size = 12) + 
  cowplot::background_grid(major = 'xy') +
  geom_point() +
  theme(plot.title = element_text(hjust = 0.5)) +
  labs(title = "Axes unadjusted") +
  labs(x = "Speed", y = "Distance")
p1 <- axis_limits(
  p = p0, 
  limits_equal = TRUE
) +
  labs(title = "Axes limits equal")
p2 <- axis_limits(
  p = p0, 
  limits_expand = list(
    x = c(0, 50), 
    y = c(-10, 200)
  ) 
) +
  labs(title = "Axes limits expanded")
cowplot::plot_grid(p0, p1, p2)
```

<img src="man/figures/README-axis_limits-1.png" width="100%" />
