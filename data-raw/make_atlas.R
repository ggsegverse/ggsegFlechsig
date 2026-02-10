# Create Flechsig Atlas
#
# Recreates the flechsig cortical atlas from the flechsig
# annotation on fsaverage5 using ggsegExtra.
#
# Requirements:
#   - FreeSurfer installed with fsaverage5 subject
#   - ggsegExtra package
#   - ggseg.formats package
#
# Run with: Rscript data-raw/make_atlas.R

library(dplyr)
library(ggsegExtra)
library(ggseg.formats)

options(freesurfer.verbose = FALSE, rgl.useNULL = TRUE)
progressr::handlers("cli")
progressr::handlers(global = TRUE)

annot_files <- file.path(
  "data-raw", "fsaverage5",
  c("lh.flechsig.annot", "rh.flechsig.annot")
)

for (f in annot_files) {
  if (!file.exists(f)) {
    cli::cli_abort("Annotation not found: {.path {f}}")
  }
}

cli::cli_h1("Creating flechsig cortical atlas")

atlas_raw <- create_cortical_atlas(
  input_annot = annot_files,
  atlas_name = "flechsig",
  output_dir = "data-raw",
  tolerance = 1,
  smoothness = 2,
  skip_existing = FALSE,
  cleanup = FALSE
)

atlas_raw <- atlas_raw |>
  atlas_region_contextual("unknown", "label")

atlas_raw <- atlas_raw |>
  atlas_view_gather()

flechsig <- atlas_raw

cli::cli_alert_success("Atlas created with {nrow(flechsig$core)} regions")
print(flechsig)

brain_pals <- stats::setNames(
  list(flechsig$palette),
  flechsig$atlas
)
save(brain_pals, file = here::here("R/sysdata.rda"), compress = "xz")

usethis::use_data(flechsig, overwrite = TRUE, compress = "xz")
cli::cli_alert_success("Saved to data/flechsig.rda")
