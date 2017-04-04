
#' Test function to work with Bioconductor rhdf5
#'
#' Just a message to test the rhdf5 import.
#' @param ... ignored
#'
#' @return message about Bioconductor
#' @export
#'
#' @examples
#' runa()
#' @importFrom rhdf5 h5version
runa <- function(...) {
  rhdf5::h5version()
}
