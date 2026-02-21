# Flechsig Myelogenetic Atlas (1920)

Brain atlas for the Flechsig myelogenetic cortical parcellation with 46
regions per hemisphere. Contains both 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://lcbc-uio.github.io/ggseg3d//reference/ggseg3d.html).

## Usage

``` r
flechsig()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Flechsig P (1920). Anatomie des menschlichen Gehirns und Ruckenmarks auf
myelogenetischer Grundlage. Leipzig: Georg Thieme.

Pijnenburg R et al. (2021). Myelo-architectonic mapping of the Flechsig
atlas. *NeuroImage*, 239, 118274.
[doi:10.1016/j.neuroimage.2021.118274](https://doi.org/10.1016/j.neuroimage.2021.118274)

## Examples

``` r
flechsig()
#> 
#> ── flechsig ggseg atlas ────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 46
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#> # A tibble: 92 × 3
#>    hemi  region label  
#>    <chr> <chr>  <chr>  
#>  1 left  F2     lh_F2  
#>  2 left  F3     lh_F3  
#>  3 left  F4     lh_F4  
#>  4 left  F5     lh_F5  
#>  5 left  F6     lh_F6  
#>  6 left  F7     lh_F7  
#>  7 left  F8     lh_F8  
#>  8 left  F9     lh_F9  
#>  9 left  F10    lh_F10 
#> 10 left  F10x   lh_F10x
#> 11 left  F11    lh_F11 
#> 12 left  F12    lh_F12 
#> 13 left  F13    lh_F13 
#> 14 left  F14    lh_F14 
#> 15 left  F15    lh_F15 
#> 16 left  F16    lh_F16 
#> 17 left  F17    lh_F17 
#> 18 left  F18    lh_F18 
#> 19 left  F19    lh_F19 
#> 20 left  F20    lh_F20 
#> 21 left  F21    lh_F21 
#> 22 left  F22    lh_F22 
#> 23 left  F23    lh_F23 
#> 24 left  F24    lh_F24 
#> 25 left  F25    lh_F25 
#> 26 left  F26    lh_F26 
#> 27 left  F27    lh_F27 
#> 28 left  F28    lh_F28 
#> 29 left  F29    lh_F29 
#> 30 left  F30    lh_F30 
#> 31 left  F31    lh_F31 
#> 32 left  F32    lh_F32 
#> 33 left  F33    lh_F33 
#> 34 left  F34    lh_F34 
#> 35 left  F35    lh_F35 
#> 36 left  F36    lh_F36 
#> 37 left  F37    lh_F37 
#> 38 left  F38    lh_F38 
#> 39 left  F39    lh_F39 
#> 40 left  F40    lh_F40 
#> 41 left  F41    lh_F41 
#> 42 left  F42    lh_F42 
#> 43 left  F43    lh_F43 
#> 44 left  F44    lh_F44 
#> 45 left  F45    lh_F45 
#> 46 left  F2b    lh_F2b 
#> 47 right F2     rh_F2  
#> 48 right F3     rh_F3  
#> 49 right F4     rh_F4  
#> 50 right F5     rh_F5  
#> 51 right F6     rh_F6  
#> 52 right F7     rh_F7  
#> 53 right F8     rh_F8  
#> 54 right F9     rh_F9  
#> 55 right F10    rh_F10 
#> 56 right F10x   rh_F10x
#> 57 right F11    rh_F11 
#> 58 right F12    rh_F12 
#> 59 right F13    rh_F13 
#> 60 right F14    rh_F14 
#> 61 right F15    rh_F15 
#> 62 right F16    rh_F16 
#> 63 right F17    rh_F17 
#> 64 right F18    rh_F18 
#> 65 right F19    rh_F19 
#> 66 right F20    rh_F20 
#> 67 right F21    rh_F21 
#> 68 right F22    rh_F22 
#> 69 right F23    rh_F23 
#> 70 right F24    rh_F24 
#> 71 right F25    rh_F25 
#> 72 right F26    rh_F26 
#> 73 right F27    rh_F27 
#> 74 right F28    rh_F28 
#> 75 right F29    rh_F29 
#> 76 right F30    rh_F30 
#> 77 right F31    rh_F31 
#> 78 right F32    rh_F32 
#> 79 right F33    rh_F33 
#> 80 right F34    rh_F34 
#> 81 right F35    rh_F35 
#> 82 right F36    rh_F36 
#> 83 right F37    rh_F37 
#> 84 right F38    rh_F38 
#> 85 right F39    rh_F39 
#> 86 right F40    rh_F40 
#> 87 right F41    rh_F41 
#> 88 right F42    rh_F42 
#> 89 right F43    rh_F43 
#> 90 right F44    rh_F44 
#> 91 right F45    rh_F45 
#> 92 right F2b    rh_F2b 
```
