% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nmf.R
\docType{methods}
\name{seed,ANY,ANY,numeric-method}
\alias{seed,ANY,ANY,numeric-method}
\title{Use \code{method} to set the RNG with \code{\link{setRNG}} and use method 
\dQuote{random} to seed the NMF model.}
\usage{
\S4method{seed}{ANY,ANY,numeric}(x, model, method, ...)
}
\description{
Note that in this case the RNG settings are not restored.
This is due to some internal technical reasons, and might change in future 
releases.
}
