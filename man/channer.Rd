\name{channer}
\alias{channer}
\docType{data}
\title{
  Dataset of coordinates for a channer-shaped skeleton unit
%%   ~~ data name/kind ... ~~
}
\description{
  Dataset of coordinates for a channer-shaped skeleton unit
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(channer)}
\format{
  A matrix of coordinates
}
\details{
  This dataset is internally loaded in the function
  'plot.profile.data.frame' to draw basic 'channer' shaped stone units.  
%%  ~~ If necessary, more details than the __description__ above ~~
}
\examples{
plot(channer, type='n', axes=FALSE)
polygon(channer)
}
\keyword{datasets}
