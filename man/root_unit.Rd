\name{root_unit}
\alias{root_unit}
\docType{data}
\title{
  A list of tree matrices of coordinates for root units
%%   ~~ data name/kind ... ~~
}
\description{
  A list of tree matrices of coordinates for root units  
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(root_unit)}
\format{
  The format is a list of 4 matrices of coordinates
}
\examples{
par(mfrow=c(1,3), mar=rep(2,4))
plot(root_unit[[1]], type='l', axes=FALSE)
plot(root_unit[[2]], type='l', axes=FALSE)
plot(root_unit[[3]], type='l', axes=FALSE)
par(mfrow=c(1,1))
}
\keyword{datasets}
