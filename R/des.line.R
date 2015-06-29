#' @title Plots a desirability function on an existing graph
#'
#' @description Plots any of the desirability functions on top of a graph,
#' usually a histogram or density plot.
#'
#' @details This function can be used to visualise how the desirabilities are
#' mapped from the raw data to a 0-1 scale, which can help select suitable cut
#' points. The scale of the y-axis has a minimum of 0 and a maximum of 1.
#'
#' @param x Vector of numeric or integer values.
#' @param des.func Name of the desirability function to plot (in quotes).
#' @param ... Arguments for the chosen desirability function.
#'
#' @return Plotted values of the desirability function.
#' @seealso \code{\link{d.low}}, \code{\link{d.high}}, \code{\link{d.central}},
#' \code{\link{d.ends}}, \code{\link{d.4pl}}
#' 
#' @examples
#' set.seed(1)
#' x1 <- rnorm(100, 10, 2)
#' hist(x1, breaks=10, col="grey", border="white")
#' des.line(x1, "d.high", cut1=10, cut2=11)
#' des.line(x1, "d.high", cut1=10, cut2=11, des.min=0.1, scale=0.5)



des.line <- function(x, des.func, ...){

  # check function selected correctly (one must be specified)
  if (!des.func %in% c("d.low","d.high","d.central", "d.ends", "d.4pl")) {
    stop("\ndes.func must be one of 'd.high', 'd.low',
         'd.central', 'd.ends', or 'd.4pl'\n")
  }

  # make values for plotting
  vals <- seq(min(x, na.rm=TRUE), max(x, na.rm=TRUE), length.out=300)

  # add lines to existing graph
  par(new=TRUE)
  
  if (des.func=="d.high") {
    plot(d.high(x=vals, ...) ~ vals, ylim=c(0,1),
         type="l",  yaxt="n", bty="n", xaxt="n", ylab="", xlab="")
  }

  
  if (des.func=="d.low") {
    plot(d.low(vals, ...) ~ vals, ylim=c(0,1),
         type="l",  yaxt="n", bty="n", xaxt="n", ylab="", xlab="")
  }

  
  if (des.func=="d.central") {
    plot(d.central(vals, ...) ~ vals, ylim=c(0,1),
         type="l",  yaxt="n", bty="n", xaxt="n", ylab="", xlab="")
  }

  
  if (des.func=="d.ends") {
    plot(d.ends(vals, ...) ~ vals, ylim=c(0,1),
         type="l",  yaxt="n", bty="n", xaxt="n", ylab="", xlab="")
  }

    
  if (des.func=="d.4pl") {
    plot(d.4pl(vals, ...) ~ vals, ylim=c(0,1),
         type="l",  yaxt="n", bty="n", xaxt="n", ylab="", xlab="")
  }

}
