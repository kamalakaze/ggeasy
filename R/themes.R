#' Create an actual dark theme for a plot
#'
#' @return a true dark theme
#' @export
#'
#' @examples plt + theme_true_dark()
theme_true_dark <- function() {

  ggplot2::theme(panel.background = ggplot2::element_rect(color = "grey", fill = scales::alpha("grey", 0.1)),
        plot.background = ggplot2::element_rect(color = "black", fill = scales::alpha("black", 0.85)),
        axis.text = ggplot2::element_text(color = "white"),
        line = ggplot2::element_line(color = "white"),
        text = ggplot2::element_text(color = "white"),
        legend.background = ggplot2::element_rect(color = "grey", fill = scales::alpha("grey", 0.1)),
        legend.key = ggplot2::element_rect(color = "grey", fill = scales::alpha("grey", 0.1)))

}
