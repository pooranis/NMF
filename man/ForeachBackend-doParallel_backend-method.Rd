% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallel.R
\docType{methods}
\name{ForeachBackend,doParallel_backend-method}
\alias{ForeachBackend,doParallel_backend-method}
\title{doParallel-specific backend factory}
\usage{
\S4method{ForeachBackend}{doParallel_backend}(object, cl, type = NULL)
}
\arguments{
\item{cl}{cluster specification: a cluster object or a numeric that indicates the 
number of nodes to use.}

\item{type}{type of cluster, See \code{\link[parallel]{makeCluster}}.}
}
\description{
doParallel-specific backend factory
}
