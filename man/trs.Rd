% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trs.R
\name{trs}
\alias{trs}
\title{Resample time series}
\usage{
trs(
  df,
  bkip,
  colid = 1,
  st = NULL,
  et = NULL,
  na.rm = TRUE,
  wind = FALSE,
  coliws = 2,
  coliwd = 3
)
}
\arguments{
\item{df}{dataframe of time series.}

\item{bkip}{new resolution breaking input of time series, such as '1 hour'.}

\item{colid}{column index for date-time. The default value is 1.}

\item{st}{start time of resampling. The default value is the fisrt value of datetime column.}

\item{et}{end time of resampling. The default value is the last value of datetime column.}

\item{na.rm}{logical value. Remove NA value or not?}

\item{wind}{logical value. if TRUE, please set coliwd, coliws.}

\item{coliws}{numeric value, column index of wind speed in dataframe.}

\item{coliwd}{numeric value, column index of wind direction (degree) in dataframe.}
}
\value{
a dataframe which contains a time series with a new time resolution.
}
\description{
Resamples time series, and returns complete time series with new time resolution.
  (wind data is acceptable)
}
\details{
If you have wind data (wind speed, and wind direction in dgree), please set 'wind' as 'TRUE', and set values for 'coliwd' and 'coliws'.
}
\examples{
trs(met, bkip = "1 hour", st = "2017-05-01 00:00:00", wind = TRUE, coliws = 4, coliwd = 5)
}
