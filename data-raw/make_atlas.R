# Create Flechsig Myelogenetic Atlas
#
# Recreates the flechsig cortical atlas from the flechsig
# annotation on fsaverage5 using ggseg.extra vertex projection pipeline.
#
# Based on Pijnenburg et al. (2021) supplementary materials.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggseg.extra (>= 2.0.0.9000)
#   - ggseg.formats
#
# Run with: Rscript data-raw/make_atlas.R

library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.flechsig.annot", "rh.flechsig.annot")
)

flechsig <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "flechsig",
  output_dir = "data-raw",
  tolerance = 0,
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown", "label")

print(flechsig)
plot(flechsig)

.flechsig <- flechsig
usethis::use_data(.flechsig, overwrite = TRUE, compress = "xz", internal = TRUE)
