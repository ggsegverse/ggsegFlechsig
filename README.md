# ggsegFlechsig

<!-- badges: start -->
[![R-CMD-check](https://github.com/ggsegverse/ggsegFlechsig/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegFlechsig/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggsegverse.r-universe.dev/badges/ggsegFlechsig)](https://ggsegverse.r-universe.dev/ggsegFlechsig)
<!-- badges: end -->

Flechsig Myelogenetic Atlas for the ggsegverse Ecosystem.

## Installation

``` r
# From r-universe
install.packages("ggsegFlechsig", repos = "https://ggsegverse.r-universe.dev")

# From GitHub
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegFlechsig")
```

## Usage

``` r
library(ggsegFlechsig)
library(ggseg)

plot(flechsig()) +
  theme_brain()
```

## Atlas

### flechsig

Flechsig 1920 myelogenetic cortical parcellation with 46 regions per hemisphere (Pijnenburg et al., 2021).

![flechsig](man/figures/flechsig_snapshot.png)

## Data source

Annotation files from the supplementary materials of Pijnenburg et al. (2021), projected onto fsaverage5.

- **Reference**: Flechsig (1920); Pijnenburg et al. (2021) [doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)
- **Date obtained**: 2021-11-05
