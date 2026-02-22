

<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegFlechsig <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggsegverse/ggsegFlechsig/workflows/R-CMD-check/badge.svg)](https://github.com/ggsegverse/ggsegFlechsig/actions)
[![DOI](https://zenodo.org/badge/425033264.svg)](https://zenodo.org/badge/latestdoi/425033264)
<!-- badges: end -->

This package contains dataset for plotting the Flechsig (1920)
historical atlas of functional segregation with ggseg and ggseg3d, based
on the supplementary materials of Pijnenburg et al., NeuroImage, 239,
2021 [DOI](https://doi.org/10.1016/j.neuroimage.2021.118274); Version 1;
15-01-2021.

P.E. Flechsig, Anatomie Des Menschlichen Gehirns und Ruckenmarks auf
Myelogenetischer Grundlage, G. Thieme (1920)

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggsegverse.github.io/ggseg/) and
[ggseg3d](https://ggsegverse.github.io/ggseg3d)

## Installation

We recommend installing the ggseg-atlases through the ggsegverse
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
    ggsegverse = 'https://ggseg.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

install.packages('ggsegFlechsig')
```

You can install the development version of ggsegFlechsig from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegFlechsig")
```

``` r
library(ggsegFlechsig)
library(ggseg)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = flechsig(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = flechsig()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-2d-plot-1.png" style="width:100.0%" />

``` r
library(ggseg3d)

ggseg3d(atlas = flechsig()) |>
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" style="width:100.0%" />

Please note that the ‘ggsegFlechsig’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
