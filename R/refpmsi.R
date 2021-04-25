#' refpmsi
#'
#' @import magrittr
#' @importFrom dplyr filter
#' @importFrom tibble as_tibble
#' @importFrom jsonlite read_json
#' @importFrom rlang as_name
#' @importFrom rlang enquo
#'
#' @param referentiel = intitule du referentiel pmsi
#' @param periodepmsi = liste des annees pmsi
#' @param chemin = chemin du package refpmsi::
#'
#' @return refpmsi_tbl = referentiel en tibble
#' @export

refpmsi <- function(referentiel = "", periodepmsi = "", chemin = path.package("refpmsi")) {

  referentiel <- rlang::as_name(rlang::enquo(referentiel))

  chemin <- chemin %>%
    paste0("/referentiels/", referentiel, ".json.gz")

  if(!file.exists(chemin)) {
    refpmsi_tbl <- "Referentiel inexistant"
  }
  else {
    refpmsi_tbl <- chemin %>%
      jsonlite::read_json(simplifyVector = TRUE) %>%
      {if (dplyr::first(periodepmsi == "")) .
        else {
          if (!("annee_pmsi" %in% colnames(.))) . else dplyr::filter(., .$annee_pmsi %in% as.character(periodepmsi)) }
      } %>%
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
#' @return liste_refpmsi_tbl = liste des referentiels PMSI en tibble
#' @export

liste_refpmsi <- function(chemin = path.package("refpmsi")) {

  chemin <- chemin %>%
    paste0("/referentiels/liste_refpmsi.json.gz")

  liste_refpmsi_tbl <- chemin %>%
    jsonlite::read_json(simplifyVector = TRUE) %>%
    dplyr::arrange(refpmsi) %>%
    tibble::as_tibble()

  return(liste_refpmsi_tbl)
}

