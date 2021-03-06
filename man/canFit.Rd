% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/registry-algorithms.R
\name{canFit}
\alias{canFit}
\title{Testing Compatibility of Algorithm and Models}
\usage{
canFit(x, y, ...)
}
\arguments{
\item{x}{an object that describes an algorithm}

\item{y}{an object that describes a model}

\item{...}{extra arguments to allow extension}
}
\description{
\code{canFit} is an S4 generic that tests if an algorithm can 
fit a particular model.
}
\seealso{
Other regalgo: \code{\link{nmfAlgorithm}}
}
