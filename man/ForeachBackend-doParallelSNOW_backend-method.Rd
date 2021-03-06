% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parallel.R
\docType{methods}
\name{ForeachBackend,doParallelSNOW_backend-method}
\alias{ForeachBackend,doParallelSNOW_backend-method}
\title{doParallel-specific backend factory for SNOW clusters.}
\usage{
\S4method{ForeachBackend}{doParallelSNOW_backend}(object, ...)
}
\description{
This method is needed since version 1.0.7 of \pkg{doParallel}, which removed 
internal function \code{info} and defined separate backend names for mc and snow clusters.
}
