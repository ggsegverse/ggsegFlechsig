# ggsegFlechsig

Flechsig Myelogenetic Atlas for the ggsegverse Ecosystem.

## Installation

``` r
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

Flechsig 1920 myelogenetic cortical parcellation with 46 regions per
hemisphere (Pijnenburg et al., 2021).

![flechsig](reference/figures/flechsig_snapshot.png)

flechsig
