% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_utils.R
\name{isLastCandleFinished}
\alias{isLastCandleFinished}
\title{Check if the last candle is finished}
\usage{
isLastCandleFinished(dat, tp)
}
\arguments{
\item{dat}{Time series data}

\item{tp}{Timeframe string (e.g., "m5", "h1", "d1", "w1")}
}
\value{
Logical indicating if last candle is complete
}
\description{
Check if the last candle is finished
}
