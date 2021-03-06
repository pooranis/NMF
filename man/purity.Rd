% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMF-class.R
\name{purity}
\alias{purity}
\alias{entropy}
\title{Purity and Entropy of a Clustering}
\usage{
purity(x, y, ...)

entropy(x, y, ...)
}
\arguments{
\item{x}{an object that can be interpreted as a factor or can generate such an object, e.g. via
a suitable method \code{\link{predict}}, which gives the cluster membership for each sample.}

\item{y}{a factor or an object coerced into a factor that gives the true class labels for each sample.
It may be missing if \code{x} is a contingency table.}

\item{...}{extra arguments to allow extension, and usually passed to the next method.}
}
\value{
a single numeric value

the entropy (i.e. a single numeric value)
}
\description{
The functions \code{purity} and \code{entropy} respectively compute the purity and the entropy
of a clustering given \emph{a priori} known classes.

Entropy of a Clustering
}
\details{
The purity and entropy measure the ability of a clustering method, to recover
known classes (e.g. one knows the true class labels of each sample), that are
applicable even when the number of cluster is different from the number of known classes.
\cite{KimH2007} used these measures to evaluate the performance of their alternate least-squares
NMF algorithm.


Suppose we are given \eqn{l} categories, while the clustering method generates
\eqn{k} clusters.

The purity of the clustering with respect to the known categories is given by:
\deqn{Purity = \frac{1}{n} \sum_{q=1}^k \max_{1 \leq j \leq l} n_q^j} ,

where:
\itemize{
\item \eqn{n} is the total number of samples;
\item \eqn{n_q^j} is the number of samples in cluster \eqn{q} that belongs to
original class \eqn{j} (\eqn{1 \leq j \leq l}).
}

The purity is therefore a real number in \eqn{[0,1]}.
The larger the purity, the better the clustering performance.

The entropy of the clustering with respect to the known categories is given by:
\deqn{Entropy = - \frac{1}{n \log_2 l} \sum_{q=1}^k \sum_{j=1}^l n_q^j
\log_2 \frac{n_q^j}{n_q}}{
- 1/(n log2(l) ) sum_q sum_j n(q,j) log2( n(q,j) / n_q )},

where:
\itemize{
\item \eqn{n} is the total number of samples;
\item \eqn{n}{n_q} is the total number of samples in cluster \eqn{q} (\eqn{1 \leq q \leq k});
\item \eqn{n_q^j}{n(q,j)} is the number of samples in cluster \eqn{q} that belongs to
original class \eqn{j} (\eqn{1 \leq j \leq l}).
}

The smaller the entropy, the better the clustering performance.
}
\examples{
# generate a synthetic dataset with known classes: 50 features, 18 samples (5+5+8)
n <- 50; counts <- c(5, 5, 8);
V <- syntheticNMF(n, counts)
cl <- unlist(mapply(rep, 1:3, counts))

# perform default NMF with rank=2
x2 <- nmf(V, 2)
purity(x2, cl)
entropy(x2, cl)
# perform default NMF with rank=2
x3 <- nmf(V, 3)
purity(x3, cl)
entropy(x3, cl)

}
\seealso{
Other assess: \code{\link{sparseness}}

Other assess: \code{\link{sparseness}}
}
