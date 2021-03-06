% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSet-class.R
\docType{methods}
\name{fit,NMFfitX1-method}
\alias{fit,NMFfitX1-method}
\title{Returns the model object associated with the best fit, amongst all the 
runs performed when fitting \code{object}.}
\usage{
\S4method{fit}{NMFfitX1}(object)
}
\description{
Since \code{NMFfitX1} objects only hold the best fit, this method simply 
returns the NMF model fitted by \code{object} -- that is stored in slot 
\sQuote{fit}.
}
