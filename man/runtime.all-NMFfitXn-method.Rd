% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSet-class.R
\docType{methods}
\name{runtime.all,NMFfitXn-method}
\alias{runtime.all,NMFfitXn-method}
\title{Returns the CPU time used to perform all the NMF fits stored in \code{object}.}
\usage{
\S4method{runtime.all}{NMFfitXn}(object, null = FALSE, warning = TRUE)
}
\arguments{
\item{null}{a logical that indicates if the sequential time should be returned
if no time data is available in slot \sQuote{runtime.all}.}

\item{warning}{a logical that indicates if a warning should be thrown if the 
sequential time is returned instead of the real CPU time.}
}
\description{
If no time data is available from in slot \sQuote{runtime.all} and argument 
\code{null=TRUE}, then the sequential time as computed by 
\code{\link{seqtime}} is returned, and a warning is thrown unless \code{warning=FALSE}.
}
