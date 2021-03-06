% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFfit-class.R
\docType{methods}
\name{fitted,NMFfit-method}
\alias{fitted,NMFfit-method}
\title{Computes and return the estimated target matrix from an NMF model fitted with 
function \code{\link{nmf}}.}
\usage{
\S4method{fitted}{NMFfit}(object, ...)
}
\description{
It is a shortcut for \code{fitted(fit(object), ...)}, dispatching the call to 
the \code{fitted} method of the actual NMF model.
}
