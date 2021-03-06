% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d.rank.R
\name{d.rank}
\alias{d.rank}
\title{Converts values to ranks, then ranks to desirabilities}
\usage{
d.rank(x, low.to.high, ties = "min")
}
\arguments{
\item{x}{Vector of numeric or integer values.}

\item{low.to.high}{If TRUE, low ranks have high desirabilities; if
FALSE, high ranks have high desirabilities.}

\item{ties}{Specifies how to deal with ties in the data. The value
is passed to the 'ties.method' argument of the rank()
function. Default is 'min'. See help(rank) for more information.}
}
\value{
Numeric vector of desirability values.
}
\description{
Values are ranked from low to high or high to low, and
then the ranks are mapped to a 0-1 scale.
}
\details{
If low values of a variable are desirable (e.g. p-values)
set the argument low.to.high=TRUE, otherwise low.to.high=FALSE.

If extreme values in either direction are of interest
(e.g. fold-changes), take the absolute value of the variable and
use low.to.high=FALSE. See the example below.

This function is less flexible than the others but it can be used
to compare the desirability approach with rank aggregation methods.
}
\examples{
set.seed(1)
x1 <- rnorm(1000, mean=100, sd =5) # generate data
d <- d.rank(x1, low.to.high=TRUE)

# plot data
hist(x1, breaks=30)
# add line
des.line(x1, "d.rank", des.args=c(low.to.high=TRUE))

x2 <- rnorm(1000, mean=0, sd =5) # positive and negative values
# could be fold-changes, mean differences, or t-statistics
hist(abs(x2), breaks=30)
# add line
des.line(abs(x2), "d.rank", des.args=c(low.to.high=FALSE))
}
