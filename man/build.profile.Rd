\name{build.profile}
\alias{build.profile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Converts a data.frame into a profile.data.frame
%%  ~~function to do ... ~~
}
\description{
  This function simply converts a data.frame into an object of class
  profile.data.frame. A table can be provided with suitable names (as in
  the arguments of the function) or single vectors. 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
build.profile(table, Profile = NULL, name = NULL, depth = NULL, col = NULL,
skel_dim = NULL, skel_ab = NULL, type = NULL, root_ab = NULL,
root_dim = NULL, orientation = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{table}{
    A data.frame containing the variables needed to draw a soil
    profile. If a variable with the required name is missing, the
    function looks for it in subsequent arguments (with a warning).   
%%     ~~Describe \code{table} here~~
}
\item{Profile}{
  A vector containing coding of profiles. Multiple profiles are allowed
  in the same dataframe. Profiles may be in any format. 
%%     ~~Describe \code{Profile} here~~
}
\item{name}{
  A vector containing the code for each single horizon. Horizons are
  allowed in usual form (e.g. A1, Bw, etc.) or as transition horizons
  (O/A) or as 'cumulative' horizons as it usually occurs for O horizons
  (Oi-Oe-Oa).
%%     ~~Describe \code{name} here~~
}
\item{depth}{
  A vector of depths. Depth must be in the form of upper_boundary -
  lower_boundary. Irregular boundaries are allowed and may be indicated
  in the form lower1/lower2. See examples for details.  
%%     ~~Describe \code{depth} here~~
}
\item{col}{
  A vector of colors in the form hue value/chroma.
  Vectors are passed to 'as.character' for conversion. Hue and chroma
  must be strictly separated by a space, whereas chroma and value by a
  '/'. Non integer numbers for hue and chroma are rounded.
  
%%     ~~Describe \code{col} here~~
}
\item{skel_dim}{
  A numeric vector of skeletal dimensions in cm.  
%%     ~~Describe \code{skel_dim} here~~
}
\item{skel_ab}{
  A numeric vector of skeletal aboundance in the range 0-1.
%%     ~~Describe \code{skel_ab} here~~
}
\item{type}{
    A character vector indicating the type of skeletal unit. Three types
  of skeletal shape are allowed. 'subangular', 'subcircle' and
  'channer'. The basic shape is loaded from a matrix of coordinates. 
%%     ~~Describe \code{type} here~~
}
\item{root_ab}{
     A character vector giving the root abundance expressed qualitatively. Available abundances are
    'absent', 'few', 'common', 'many'. Those qualitative indices are
    choosen according to the international classification systems. 
%%     ~~Describe \code{root_ab} here~~
}
\item{root_dim}{
      A numeric vector providing the dimension of roots given in cm.  
%%     ~~Describe \code{root_dim} here~~
}
\item{orientation}{
      A character vector to be chosen between 'v' and 'h' to indicate main
    orientation of the root system, vertical and horizontal, respectively.
%%     ~~Describe \code{orientation} here~~
}
}
\details{
  This function converts a data.frame in an object of class
  'profile.data.frame'. This class has dedicated methods such as
  summary, head, tail, plot, etc. See examples for more details. In the
  easiest case, a data.frame can be passed to this function, which
  already has proper column names (as in the arguments of the function)
  of a 'profile.data.frame'. If not, each vector must be provided in the
  proper argument of the function. Warnings are set in order to
  facilitate this process of conversion. Additional data (e.g. chemical
  or physical data associated to the profiles' horizons) are arranged with
  unchanged names after the 10 required columns.   
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  An object of class 'profile.data.frame'. This object is actually a
  list, and only few basic methods have been defined to explore it
  (eg. 'summary', 'head', 'tail', 'plot', eplot'). All other
  functions will treat this class as a list and therefore lead to
  meaningless results. 
}
\author{
  Gianluca Filippa
%%  ~~who you are~~
}

\seealso{
  'plot.profile.data.frame', 'plot.element'
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##rename
tmp <- example
## back to class data.frame 
class(tmp) <- 'data.frame'
## back again to the 'profile.data.frame' class  
profile.data <- build.profile(tmp)
## if the table is not complete, we remove the Profile column 
tmp2 <- tmp[,-1]
##running the following will return a warning
profile.data <- build.profile(tmp2)
##and Profile column is NA
head(profile.data)
##
Profile <- tmp[,1]
##check information in output when we add the Profile vector  
profile.data <- build.profile(tmp2, Profile=Profile)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Format data}
