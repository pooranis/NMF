% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSet-class.R
\docType{methods}
\name{consensus,NMFfitX1-method}
\alias{consensus,NMFfitX1-method}
\title{Returns the consensus matrix computed while performing all NMF runs, 
amongst which \code{object} was selected as the best fit.}
\usage{
\S4method{consensus}{NMFfitX1}(object, no.attrib = FALSE)
}
\description{
The result is the matrix stored in slot \sQuote{consensus}.
This method returns \code{NULL} if the consensus matrix is empty.
}
