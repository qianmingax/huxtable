% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/creation.R
\name{as_huxtable}
\alias{as_huxtable}
\alias{as_hux}
\alias{as_huxtable.default}
\alias{is_huxtable}
\alias{is_hux}
\title{Convert objects to huxtables}
\usage{
as_huxtable(x, ...)

as_hux(x, ...)

\method{as_huxtable}{default}(
  x,
  add_colnames = getOption("huxtable.add_colnames", TRUE),
  add_rownames = FALSE,
  autoformat = getOption("huxtable.autoformat", TRUE),
  ...
)

is_huxtable(x)

is_hux(x)
}
\arguments{
\item{x}{Object to convert.}

\item{...}{Arguments passed on to \code{\link[=huxtable]{huxtable()}}.}

\item{add_colnames}{If \code{TRUE}, add a first row of column names to the huxtable.}

\item{add_rownames}{If \code{TRUE} or a character string, add a first column of row names
to the huxtable. The string gives the name for the new column (or \code{"rownames"} for \code{TRUE}).}

\item{autoformat}{If \code{TRUE}, automatically format columns by type. See below.}
}
\value{
An object of class "huxtable".
}
\description{
\code{as_huxtable} or \code{as_hux} converts an object to a huxtable.
Conversion methods exist for data frames, tables, ftables, matrices and (most) vectors.
\code{is_hux[table]} tests if an object is a huxtable.
}
\details{
For \code{table} objects, \code{add_colnames} and \code{add_rownames} are \code{TRUE} by default. For
\code{matrix} objects, they are \code{FALSE}. Other classes use
\code{options("huxtable.add_colnames")}, which is \code{TRUE} by default; \code{add_rownames}
is \code{FALSE}.
}
\examples{
dfr <- data.frame(
        a = 1:5,
        b = letters[1:5],
        stringsAsFactors = FALSE
      )
as_huxtable(dfr)
mx <- matrix(letters[1:12], 4, 3)
as_huxtable(mx, add_colnames = FALSE)
library(stats)
tbl <- table(
        Wool    = warpbreaks$wool,
        Tension = warpbreaks$tension
      )
as_huxtable(tbl) # adds row and column names by default

# adding rownames:
as_hux(mtcars[1:3,], add_colnames = TRUE,
      add_rownames = "Car")

}
