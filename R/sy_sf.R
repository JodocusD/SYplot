#'Plot SY ocha boundaries
#'
#'you can plot different levels of SY boudaries using sf package
#'
#'dat is based on
#'
#' @importFrom  ggplot2 ggplot
#' @importFrom  ggplot2 geom_sf
#' @importFrom  ggplot2 coord_sf
#'
#' @export

sy_sf <- function(){
  ggplot() +
    geom_sf(data = syr_adm2sf, mapping = aes(), fill = "#00ff00", alpha = 0.3, color = "#cccccc") +
    coord_sf(datum = NA)
}

