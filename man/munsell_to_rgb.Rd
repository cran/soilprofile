\name{munsell_to_rgb}
\alias{munsell_to_rgb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Converts munsell colors to RGB colors
  %%  ~~function to do ... ~~
}
\description{
    This funcion converts a vector of munsell colors in the form hue
  value/chroma into an RGB R color. Vectors are passed to 'as.character'
  for conversion. Hue and chroma must be strictly separated by a
  space, whereas chroma and value by a '/'. It is internally called in
  the 'plot.profile.data.frame' function.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
munsell_to_rgb(color, name)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{color}{
        A string or vector containing Munsell color(s) in the form Hue
    value/chroma.  
%%     ~~Describe \code{color} here~~
}
\item{name}{
  This argument is taken in the workflow of the 'plot.data.frame'
  function, with the purpose to give the horizon name in case of
  warning. 
%%     ~~Describe \code{name} here~~
}
}
\details{
    The function separates Hue, value and chroma by calling 'substr' and
    then calls the function munsell2rgb {aqp} for the conversion into R
    colors.  If the color is not existing (be either because of wrong
    separation between Hue value and chroma, or unexisting munsell
    color), it defaults to '#39302CFF' and returns a warning. 

%%  ~~ If necessary, more details than the description above ~~
}
\value{
  A vector of R colors
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
\examples{
##a 5Y 5/3 (dark brown) boxplot
boxplot(1:10, col=munsell_to_rgb(example[[6]][1]), main='A 5Y 5/3 (dark brown) boxplot')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Internal functions}
