#' Easy way to adjust plot margins
#'
#' @param margin_values the values to adjust the margin by, the default seems
#'     to work nicely for me...
#' @param units the units of the margin adjustment
#'
#' @return a theme with the desired margin adjustments
#'
#' @examples plt + fix_margins()
fix_margins <- function(margin_values = c(2, 2, 1, 1), units = "cm") {

  ggplot2::theme(plot.margin = grid::unit(x = margin_values, units = units))

}

#' So many grid options... So little time
#'
#' @param color the color of the grid
#' @param linetype the type of line for the grid
#' @param axis "x" for x-axis only, "y" for y-axis only, "both" for both
#' @param major.only should only the major tick marks correspond with grid lines
#'
#' @return the desired grid
#' @export
#'
#' @examples plt + easy_grid("white", "dashed")
easy_grid <- function(color, linetype, axis = "both", major.only = FALSE) {

  if (missing(color)) {

    stop("missing color")

  }

  if (missing(linetype)) {

    stop("missing linetype")

  }

  if (major.only != T & major.only != F) {

    stop(paste0("bad balue for major.only: ", major.only))

  }

  if (tolower(axis) == "x") {

    if (major.only) {

      return(ggplot2::theme(panel.grid.minor = ggplot2::element_blank(),
                   panel.grid.major.y = ggplot2::element_blank(),
                   panel.grid.major.x = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    } else {

      return(ggplot2::theme(panel.grid.minor.y = ggplot2::element_blank(),
                   panel.grid.major.y = ggplot2::element_blank(),
                   panel.grid.minor.x = ggplot2::element_line(color = color,
                                                     linetype = linetype),
                   panel.grid.major.x = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    }

  } else if (tolower(axis) == "y") {

    if (major.only) {

      return(ggplot2::theme(panel.grid.minor = eggplot2::lement_blank(),
                   panel.grid.major.x = ggplot2::element_blank(),
                   panel.grid.major.y = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    } else {

      return(ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank(),
                   panel.grid.major.x = ggplot2::element_blank(),
                   panel.grid.minor.y = ggplot2::element_line(color = color,
                                                     linetype = linetype),
                   panel.grid.major.y = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    }

  } else if (tolower(axis) == "both") {


    if (major.only) {

      return(ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank(),
                   panel.grid.minor.y = ggplot2::element_blank(),
                   panel.grid.major.x = ggplot2::element_line(color = color,
                                                     linetype = linetype),
                   panel.grid.major.y = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    } else {

      return(ggplot2::theme(panel.grid.minor.x = ggplot2::element_line(color = color,
                                                    linetype = linetype),
                   panel.grid.major.x = ggplot2::element_line(color = color,
                                                    linetype = linetype),
                   panel.grid.minor.y = ggplot2::element_line(color = color,
                                                     linetype = linetype),
                   panel.grid.major.y = ggplot2::element_line(color = color,
                                                     linetype = linetype)))

    }

  } else {

    stop(paste0("unknown value given to axis: ", axis))

  }


}
