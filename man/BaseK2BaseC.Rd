\name{BaseK2BaseC}
\alias{BaseK2BaseC}
\title{ Changing Basis }
\description{
   Given the coordinates in the Karhunen-Lo�ve expansion
   base of the Wiener, compute the coordinates in the
   canonical basis.
}
\usage{
BaseK2BaseC(x, nb)
}
\arguments{
  \item{x}{ A matrix containing the coordinates in the Karhunen-Lo�ve basis.
            One observation per column. }
  \item{nb}{ The dimension of the canonical basis consider. By default, 
             the dimension is the same as the Karhunen-Lo�ve one
             (i.e. number of row of \code{x}). }
}
\details{
  The Karhunen-Lo�ve expansion is a sum of an infinity of terms, but here 
  the expansion is truncated to a finite number of terms. Empirically, we 
  remark that using twice the dimension of the canonical basis desired 
  for the number of terms in the expansion is a good compromise.
}
\value{
  A object of class \code{\link{fdata}} with \code{nb} discretization points
  and the same number of observations as \code{x}.
}
\references{ Pumo, B. (1992). \emph{Estimation et Pr�vision de Processus 
    Autoregressifs Fonctionnels. Applications aux Processus � Temps Continu}.
    PhD Thesis, University Paris 6, Pierre et Marie Curie. }
\author{ J. Damon }

\seealso{ \code{\link{simul.wiener}}, \code{\link{simul.far.wiener}} }

\examples{
    data1 <- BaseK2BaseC(x=matrix(rnorm(50),ncol=5,nrow=10), nb=5)
    multplot(data1,whole=TRUE)
}
\keyword{ algebra }