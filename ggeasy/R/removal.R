#' Removes Legend from GGPlot
#'
#' @return a ggplot theme with no legend
#' @export
#'
#' @examples plt + no_legend()
no_legend <- function() {

  ggplot2::theme(legend.position = "none")

}

#' Removes Axis Ticks and Tick Text from GGPlot
#'
#' @return a ggplot theme with no tick markings
#' @export
#'
#' @examples plt + no_ticks()
no_ticks <- function() {

  ggplot2::theme(axis.ticks = ggplot2::element_blank(),
        axis.text = ggplot2::element_blank())

}

#' Removes Axis Labels from GGPlot
#'
#' @return a ggplot theme with no axis labels
#' @export
#'
#' @examples plt + no_axis_labels()
no_axis_labels <- function() {

  ggplot2::theme(axis.title = ggplot2::element_blank())

}

#' Removes Grid from GGPlot
#'
#' @return a ggplot theme with no grid markings
#' @export
#'
#' @examples plt + no_grid()
no_grid <- function() {

  ggplot2::theme(panel.grid = ggplot2::element_blank())

}
