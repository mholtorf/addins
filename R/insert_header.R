#' Insert header break
#'
#' Call this function as an addin to insert #==# until column 80.
#'
#' @export

insert_header <- function(){

  # Get active document context
  context <- rstudioapi::getActiveDocumentContext()

  # Get column of cursor position
  current_col <- context$selection[[1]]$range[[1]][[2]]

  # Calculate how many dashes from current cursor position until column 79
  num_dashes <- 79 - current_col

  # Insert hash, equal, and hash to column 80
  # Adding has to the end of the line removes it from the outline
  rstudioapi::insertText(paste0("#",strrep("=", num_dashes), "#\n"))

}

