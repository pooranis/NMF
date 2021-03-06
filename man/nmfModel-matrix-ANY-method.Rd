% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nmfModel.R
\docType{methods}
\name{nmfModel,matrix,ANY-method}
\alias{nmfModel,matrix,ANY-method}
\title{Creates an NMF model with arguments \code{rank} and \code{target} swapped.}
\usage{
\S4method{nmfModel}{matrix,ANY}(rank, target = 0L, ...)
}
\description{
This call is equivalent to \code{nmfModel(rank=target, target=rank, ...)}.
This allows to call the \code{nmfModel} function with arguments \code{rank} 
and \code{target} swapped. 
It exists for convenience: 
\itemize{
 \item allows typing \code{nmfModel(V)} instead of \code{nmfModel(target=V)} to create 
a model compatible with a given matrix \code{V} (i.e. of dimension \code{nrow(V), 0, ncol(V)})
\item one can pass the arguments in any order (the one that comes to the user's mind first) 
	and it still works as expected.
}
}
\examples{
## swapped arguments `rank` and `target`
V <- rmatrix(20, 10)
nmfModel(V) # equivalent to nmfModel(target=V)
nmfModel(V, 3) # equivalent to nmfModel(3, V) 

}
