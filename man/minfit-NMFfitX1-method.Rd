% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSet-class.R
\docType{methods}
\name{minfit,NMFfitX1-method}
\alias{minfit,NMFfitX1-method}
\title{Returns the fit object associated with the best fit, amongst all the 
runs performed when fitting \code{object}.}
\usage{
\S4method{minfit}{NMFfitX1}(object)
}
\description{
Since \code{NMFfitX1} objects only hold the best fit, this method simply 
returns \code{object} coerced into an \code{NMFfit} object.
}
