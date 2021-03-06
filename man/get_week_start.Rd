% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_week_start.R
\name{get_week_start}
\alias{get_week_start}
\title{Retrieve the closest given Weekday}
\usage{
get_week_start(wday = 2, rounding = c("down", "up"))
}
\arguments{
\item{wday}{Integer in the range 1-7 specifying the desired weekday start
(1 = Sun, 2 = Mon, 3 = Tue, 4 = Wed, 5 = Thu, 6 = Fri, 7 = Sat).}

\item{rounding}{Down or up.}
}
\value{
Object of class `Date`, specifying the offset.
}
\description{
By default weeks start at Sundays when thickening to the interval "week".
For a different week start the offset should be specified at `start_val`.
This function will retrieve the offset for you, by searching the latest
requested weekdy before the first observation in the datetime variabe in `x`.
Function to be used within `thicken`.
}
\examples{
library(dplyr)
coffee \%>\% get_week_start()
thicken(coffee$ti)
}

