% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMF-class.R
\docType{methods}
\name{rss,ANY-method}
\alias{rss,ANY-method}
\title{Residual sum of square between a given target matrix and a model that has a
suitable \code{\link{fitted}} method.
It is equivalent to \code{rss(fitted(object), ...)}}
\usage{
\S4method{rss}{ANY}(object, ...)
}
\description{
In the context of NMF, \cite{Hutchins2008} used the variation of the RSS
in combination with the algorithm from \cite{Lee1999} to estimate the
correct number of basis vectors.
The optimal rank is chosen where the graph of the RSS first shows an inflexion
point, i.e. using a screeplot-type criterium.
See section \emph{Rank estimation} in \code{\link{nmf}}.
}
\details{
Note that this way of estimation may not be suitable for all models.
Indeed, if the NMF optimisation problem is not based on the Frobenius norm,
the RSS is not directly linked to the quality of approximation of the NMF model.
However, it is often the case that it still decreases with the rank.
}
\examples{
# RSS between an NMF model and a target matrix
x <- rmatrix(20, 10)
y <- rnmf(3, x) # random compatible model
rss(y, x)

# fit a model with nmf(): one should do better
y2 <- nmf(x, 3) # default minimizes the KL-divergence
rss(y2, x)
y2 <- nmf(x, 3, 'lee') # 'lee' minimizes the RSS
rss(y2, x)

}
