\name{soilprofile-package}
\alias{soilprofile-package}
\alias{soilprofile}
\docType{package}
\title{
A package for consistently drawing soil profiles and their properties}
\description{
  This package provides functions to graphically represent soil
  properties. Morphological data gathered in the field such as
  horizon boundaries, root abundance and dimensions, skeletal
  shape, abundance and dimension as well as meaningful soil munsell color
  may be represented via the plot function. A lattice-based
  plot.element function has been designed to represent depth
  function of a given variable.
}
\details{
\tabular{ll}{
Package: \tab soilprofile\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-02-25\cr
License: \tab GPL-2\cr
}

}
\author{
Gianluca Filippa
Maintainer: Gianluca Filippa <gian.filippa@gmail.com>
}
\references{
Literature or other references for background information ~~
}
% ~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
% ~~ the R documentation directory ~~
\keyword{ package }
\examples{
plot(example, existing_data=example.data, random=FALSE)
eplot(example, 'Corg', type='b', col='black')
}
