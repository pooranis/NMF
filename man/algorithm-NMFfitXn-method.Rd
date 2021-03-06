% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSet-class.R
\docType{methods}
\name{algorithm,NMFfitXn-method}
\alias{algorithm,NMFfitXn-method}
\title{Returns the name of the common NMF algorithm used to compute all fits 
stored in \code{object}}
\usage{
\S4method{algorithm}{NMFfitXn}(object)
}
\description{
Since all fits are computed with the same algorithm, this method returns the 
name of algorithm that computed the first fit.
It returns \code{NULL} if the object is empty.
}
