#' refpmsi
#'
#' @import magrittr
#' @importFrom dplyr filter
#' @importFrom tibble as_tibble
#' @importFrom jsonlite read_json
#' @param referentiel = intitule du referentiel pmsi
#' @param periodepmsi = liste des annees pmsi
#' @param chemin = chemin du package refpmsi::
#'
#' @return refpmsi_tbl = tibble du referentiel
#' @export

refpmsi <- function(referentiel, periodepmsi = '', chemin = path.package("refpmsi")) {
  if (FALSE || periodepmsi == ""){
    refpmsi_tbl <- chemin %>%
      paste0("/referentiels/", referentiel, ".json.gz") %>%
      jsonlite::read_json(simplifyVector = TRUE) %>%
      tibble::as_tibble()
  } else {
    refpmsi_tbl <- chemin %>%
      paste0("/referentiels/", referentiel, ".json.gz") %>%
      jsonlite::read_json(simplifyVector = TRUE) %>%
      dplyr::filter(anpmsi %in% as.character(periodepmsi)) %>%
      tibble::as_tibble()
  }
  return(refpmsi_tbl)
}

#' liste_refpmsi
#'
#' @import magrittr
#' @importFrom dplyr arrange
#' @importFrom tibble as_tibble
#' @importFrom jsonlite read_json
#' @param chemin = chemin du package refpmsi::
#'
#' @return liste_refpmsi_tbl = tibble des referentiels PMSI
#' @export

liste_refpmsi <- function(chemin = path.package("refpmsi")) {
  liste_refpmsi_tbl <- chemin %>%
    paste0("/referentiels/liste_refpmsi.json.gz") %>%
    jsonlite::read_json(simplifyVector = TRUE) %>%
    dplyr::arrange(refpmsi) %>%
    tibble::as_tibble()
  return(liste_refpmsi_tbl)
}

