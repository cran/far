#  *****************************************************************************
#   File : invgen.R
#         ************************************************************
#   Description : 
#       General inverse for a matrix
#   Version : 1.0
#   Date : 2001-03-16
#         ************************************************************
#   Author : Julien Damon <julien.damon@free.fr>
#   License : LGPL
#   URL: http://julien.damon.free.fr
#  *****************************************************************************

#  *****************************************************************************
#   Title : invgen
#         ************************************************************
#   Description :
#       General inverse for a matrix
#   Version : 1.0
#   Date : 2001-03-16
#  *****************************************************************************
invgen <- function (a, tol = sqrt(.Machine$double.eps)) 
{
    if (length(dim(a)) > 2 || !(is.numeric(a) || is.complex(a))) 
        stop("X must be a numeric or complex matrix")
    if (!is.matrix(a)) 
        a <- as.matrix(a)
    asvd <- La.svd(a)
    if (is.complex(a)) 
        {
            asvd$u <- Conj(asvd$u)
            asvd$v <-t(Conj(asvd$vt))
        } else {
            asvd$v <-t(asvd$vt)
        }
    Positive <- asvd$d > max(tol * asvd$d[1], 0)
    if (!any(Positive)) 
        array(0, dim(X)[2:1])
    else asvd$v[,Positive] %*% ((1/asvd$d[Positive]) * t(asvd$u[,Positive]))
}
