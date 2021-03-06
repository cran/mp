% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lamp.R
\name{lamp}
\alias{lamp}
\title{Local Affine Multidimensional Projection}
\usage{
lamp(X, sample.indices = NULL, Ys = NULL, cp = 1)
}
\arguments{
\item{X}{A data frame or matrix.}

\item{sample.indices}{The indices of data points in X used as subsamples. If
not given, some points from X will be randomly selected and Ys will be generated
by calling forceScheme on them.}

\item{Ys}{Initial 2D configuration of the data subsamples (will be ignored if
sample.indices is NULL). Scaling the columns to [-0.5, 0.5] is recommended
to avoid scaling problems.}

\item{cp}{Proportion of nearest control points to be used.}
}
\value{
The 2D representation of the data.
}
\description{
Creates a 2D representation of the data. Requires a subsample
(sample.indices) and its 2D representation (Ys).
}
\examples{
# Iris example
emb <- lamp(iris[, 1:4])
plot(emb, col=iris$Species)

}
\references{
Joia, P.; Paulovich, F.V.; Coimbra, D.; Cuminato, J.A.; Nonato,
  L.G., "Local Affine Multidimensional Projection," Visualization and
  Computer Graphics, IEEE Transactions on , vol.17, no.12, pp.2563,2571,
  Dec. 2011
}

