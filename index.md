# ggsegFlechsig

Flechsig Myelogenetic Atlas for the ggsegverse Ecosystem.

## Installation

``` r
# From r-universe
install.packages("ggsegFlechsig", repos = "https://ggsegverse.r-universe.dev")

# From GitHub
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegFlechsig")
```

## Atlases

### flechsig

Flechsig 1920 myelogenetic cortical parcellation with 46 regions per
hemisphere.

``` r
library(ggsegFlechsig)
plot(flechsig())
```

![](reference/figures/README-flechsig-1.png) \## Data source

Annotation files from Pijnenburg et al. (2021) supplementary materials.

- **Reference**: Flechsig (1920); Pijnenburg et al. (2021)
  [doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)

- **Date obtained**: 2021-11-05
