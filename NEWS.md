# desiR 1.2.2
* Made compliant with updated knitr requirements.

# desiR 1.2.1

* Fixed bug in d.overall() function. Now handles missing values instead of giving an error message.

# desiR 1.2

* Added citation information.

* Added d.rank() function which ranks raw values then maps to a 0-1 scale.

# desiR 1.1

* updated des.line() function so that arguments passed to the desirability function must be given in the des.args=c() argument. The ellipses (...) is now used to pass arguments to the plot function (e.g. xlim, lwd, lty, col). Note that scripts from previous versions will fail and will need to be updated from:

des.line(x1, "d.high", cut1=10 cut2=11)

to

des.line(x1, "d.high", des.args=c(cut1=10, cut2=11))


* Provided GitHub url and location for bug reports.


# desiR 1.0

* First version
