#' Change the Plot Area Color for GGPlot
#'
#' @param fill_color the fill -- internal area -- color
#' @param outline_color the outline -- border area  -- color
#'
#' @return a ggplot theme with desire color scheme by user
#' @export
#'
#' @examples plt + plot_background_color("black", "black")
plot_background_color <- function(fill_color, outline_color) {

  require(ggplot2)

  theme(panel.background = element_rect(fill = fill_color,
                                        color = outline_color))

}

#' Change the Panel Area Color for GGPlot
#'
#' @param fill_color the fill -- internal area -- color
#' @param outline_color the outline -- border area -- color
#'
#' @return a ggplot theme with color scheme desired by user
#' @export
#'
#' @examples plt + panel_background_color("black", "black")
panel_background_color <- function(fill_color, outline_color) {

  require(ggplot2)

  theme(plot.background =element_rect(fill = fill_color,
                                      color = outline_color))
}
