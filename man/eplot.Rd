\name{eplot}
\alias{eplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  A lattice-based plot of elements on multiple panels
%%  ~~function to do ... ~~
}
\description{
  This function is used for plotting depth functions of given elements
  in one or more soil profile(s)
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
eplot(data, element, panel = NULL, groups = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
    An object of class 'profile.data.frame'
%%     ~~Describe \code{data} here~~
}
\item{element}{
  A string giving the element as in colum name of data
%%     ~~Describe \code{element} here~~
}
\item{panel}{
  A vector of grouping factor for the conditioning variables (which define the subsets
          plotted in different panels) to be used in the plot. If NULL
	  it defaults to the column named Profile, and plots elements as
	  defined in 'element' subsetted for different profiles. 
%%     ~~Describe \code{panel} here~~
}
\item{groups}{
  An additional subgroup which controls colors of the elements plotted
  in each panel. 
%%     ~~Describe \code{groups} here~~
}
\item{\dots}{
  Other arguments as in 'xyplot' function in package 'lattice'.  
%%     ~~Describe \code{\dots} here~~
}
}
\details{
  This function plots element in 'element' according to the subsetting
  provided in 'panel', and 'groups'. It is provided to rapidly obtain a
  depth function of a given variable, subsetted by profile in case of
  multiple-profile datasets.  
%%  ~~ If necessary, more details than the description above ~~
}
\value{
       The high-level functions documented here, as well as other
     high-level Lattice functions, return an object of class
     'trellis'. See ?xyplot for more details.  
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
  plot.profile.data.frame
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
## plot of organic C depth functions in 5 profiles
eplot(example, 'Corg', col='black', type='b', main='Example',
             xlab='Organic C (percent)', ylab='Depth')

## different colors according to different soil profiles
eplot(example, 'Corg', type='b', main='Example',
             xlab='Organic C (\%)', ylab='Depth', groups=example$Profile,
             panel=1, col=palette()[1:4])
## an example to add a legend with trellis (lattice) commands
    trellis.focus("toplevel") ## has coordinate system [0,1] x [0,1]
  panel.text(0.65, 0.63, "Site", cex = 0.8, font = 2, pos=4)
  panel.text(0.65, 0.59, "P1", cex = 0.8, pos=4)
  panel.text(0.65, 0.56, "SG2", cex = 0.8, pos=4, col=palette()[2])
  panel.text(0.65, 0.53, "SG5", cex = 0.8, pos=4, col=palette()[3])
  panel.text(0.65, 0.50, "SG7", cex = 0.8, pos=4, col=palette()[4])
  trellis.unfocus()   
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Plotting functions}
