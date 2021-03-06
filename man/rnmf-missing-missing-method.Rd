% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rnmf.R
\docType{methods}
\name{rnmf,missing,missing-method}
\alias{rnmf,missing,missing-method}
\title{Generates a random NMF model with known basis and coefficient matrices.}
\usage{
\S4method{rnmf}{missing,missing}(x, target, ..., W, H)
}
\description{
This method is a shortcut for calling \code{rnmf,numeric,missing} with a 
suitable value for \code{x} (the rank), when both factors are known:
code{rnmf(min(ncol(W), nrow(H)), ..., W=W, H=H)}.
}
\details{
Arguments \code{W} and \code{H} are required.
Note that calling this method only makes sense for NMF models that contains 
data to fit other than the basis and coefficient matrices, 
e.g. \code{\linkS4class{NMFOffset}}.
}
\examples{

# random model other than standard NMF
x <- rnmf(W=matrix(1:18, 6), H=matrix(21:38, 3), model='NMFOffset')
basis(x) # fixed
coef(x) # fixed
offset(x) # random

}
