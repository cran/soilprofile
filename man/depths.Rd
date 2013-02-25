\name{depths}
\alias{depths}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Converts depths into suitable mean points for each horizon in a soil profile
  %%  ~~function to do ... ~~
}
\description{
  This function is internally called in 'build.profile', but can be run
  by itself when you want to plot a depth function of given soil properties.
  %%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
depths(depths, horizon.names)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{depths}{
    A vector of depths in the form upper_boundary -
    lower_boundary or in the form upper_boundary -
    lower_boundary1/lower_boundary2 in case of irregular boundaries.
    Conversion is simply an average between upper and lower boundary. See
    examples for details.
    %%     ~~Describe \code{depths} here~~
  }
  \item{horizon.names}{
    A vector of names, same as 'names' option in build.profile().
    %%     ~~Describe \code{horizon.names} here~~
  }
}
\value{
  A dataframe with a vector containing the given mean point for each
  horizon and a vector with horizon names.
  %%  ~Describe the value returned
  %%  If it is a LIST, use
  %%  \item{comp1 }{Description of 'comp1'}
  %%  \item{comp2 }{Description of 'comp2'}
  %% ...
}
\author{
  Gianluca Filippa
  %%  ~~who you are~~
}

\seealso{
  'plot.profile.data.frame', 'eplot'
  %% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##extract mean point
tmp <- depths(example$depth, example$name)
##compare mid points and original depths
data.frame(example$depth, tmp[,1])
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Format data}
% \keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
