#' Removes Legend from GGPlot
#'
#' @return a ggplot theme with no legend
#' @export
#'
#' @examples plt + no_legend()
no_legend <- function() {

  require(ggplot2)

  theme(legend.position = "none")

}

#' Removes Axis Ticks and Tick Text from GGPlot
#'
#' @return a ggplot theme with no tick markings
#' @export
#'
#' @examples plt + no_ticks()
no_ticks <- function() {

  require(ggplot2)

  theme(axis.ticks = element_blank(),
        axis.text = element_blank())

}

#' Removes Axis Labels from GGPlot
#'
#' @return a ggplot theme with no axis labels
#' @export
#'
#' @examples plt + no_axis_labels()
no_axis_labels <- function() {

  require(ggplot2)

  theme(axis.title = element_blank())

}

#' Removes Grid from GGPlot
#'
#' @return a ggplot theme with no grid markings
#' @export
#'
#' @examples plt + no_grid()
no_grid <- function() {

  require(ggplot2)

  theme(panel.grid = element_blank())

}
