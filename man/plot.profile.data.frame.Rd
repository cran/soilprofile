\name{plot.profile.data.frame}
\alias{plot.profile.data.frame}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  The main plotting function for a soil profile
}
\description{
  A function that draws a soil profile based on simple
  field data.
  %%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
\method{plot}{profile.data.frame}(x, y, \dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    An object of class 'profile.data.frame'
    %%     ~~Describe \code{x} here~~
  }

  \item{y}{
    Unused argument (only for matching the arguments of generic plot function)
    %%     ~~Describe \code{x} here~~
  }

  \item{\dots}{
    All arguments allowed in 'plot_profile' function. See details.
    %%     ~~Describe \code{\dots} here~~
  }
}
\details{
  This function is a generic 'plot' function for objects of class
  'profile.data.frame'. For details of the arguments see 'plot_profile'.
  %%  ~~ If necessary, more details than the description above ~~
}
\value{
  A complex list of all numeric values necessary to plot one (or more) soil
  profile(s). The plot can be assigned and used to plot the same soil
  profile(s) more than once. See arguments 'random' and 'existing data'
  in 'plot_profile' for details.
}

\author{
  Gianluca Filippa
  %%  ~~who you are~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
\dontrun{
plot(example, random=FALSE, existing_data=example.data)
plot(example)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Plotting functions}
