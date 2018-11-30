#' @title Return the mode
#' @param x Factor
#' @return The mode or modes of inputed data
#' @rdname common_doc
#' @importFrom dplyr filter
#' @importFrom dplyr select
#' @importFrom dplyr %>%
#' @importFrom dplyr count
#' @importFrom dplyr group_by
#' @importFrom dplyr as_data_frame
#' @importFrom dplyr group_by
#' @importFrom haven as_factor
#' @importFrom tibble as_tibble

#' @export modefunction

modefunction <- function(dataset){
  require("tidyverse")
  count(dataset) %>%
    as.data.frame() %>%
    filter(n == max(n)) %>%
    select(-n) %>%
    droplevels() %>%
    print.data.frame() -> mode
  return(mode)
}
