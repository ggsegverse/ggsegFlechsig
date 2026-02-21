#' Flechsig Myelogenetic Atlas (1920)
#'
#' Brain atlas for the Flechsig myelogenetic cortical parcellation
#' with 46 regions per hemisphere. Contains both 2D polygon geometry
#' for [ggseg::geom_brain()] and 3D vertex indices for [ggseg3d::ggseg3d()].
#'
#' @family ggseg_atlases
#'
#' @references Flechsig P (1920). Anatomie des menschlichen Gehirns und
#'   Ruckenmarks auf myelogenetischer Grundlage. Leipzig: Georg Thieme.
#'
#'   Pijnenburg R et al. (2021). Myelo-architectonic mapping of the
#'   Flechsig atlas. *NeuroImage*, 239, 118274.
#'   \doi{10.1016/j.neuroimage.2021.118274}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @export
#' @examples
#' flechsig()
flechsig <- function() .flechsig
