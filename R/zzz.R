#  *****************************************************************************
#   File : zzz.R
#         ************************************************************
#   Description : 
#       Initialization of the library
#   Version : 3.0
#   Date : 2005-01-10
#         ************************************************************
#   Author : Julien Damon <julien.damon@free.fr>
#   License : LGPL
#   URL: http://julien.damon.free.fr
#  *****************************************************************************

#  *****************************************************************************
#   Title : .First.lib
#         ************************************************************
#   Description : 
#       Initialization of the library
#   Version : 3.0
#   Date : 2005-01-10
#  *****************************************************************************
".onAttach" <- function(lib, pkg)
{
    cat("far library : Modelization for Functional AutoRegressive processes\n")
    cat("version 0.6-0 (2005-01-10)\n")
}
