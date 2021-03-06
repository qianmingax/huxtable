% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/properties-row-col.R
\name{header_cols}
\alias{header_cols}
\alias{header_cols<-}
\alias{set_header_cols}
\alias{header_rows}
\alias{header_rows<-}
\alias{set_header_rows}
\title{Mark rows or columns as headers}
\usage{
header_cols(ht)
header_cols(ht) <- value
set_header_cols(ht, col, value)

header_rows(ht)
header_rows(ht) <- value
set_header_rows(ht, row, value)
}
\arguments{
\item{ht}{A huxtable.}

\item{col}{A col specifier. See \link{rowspecs} for details.}

\item{value}{Logical vector. Set to \code{NA} to reset to the default,
which is \code{FALSE}.}

\item{row}{A row specifier. See \link{rowspecs} for details.}
}
\value{
\code{header_cols()} returns the \code{header_cols} property.
\code{set_header_cols()} returns the modified huxtable.
}
\description{
Arbitrary rows and columns can be headers: they do not have to be at the top
or left of the table.
}
\details{
By default header rows and columns are not shown differently from other rows, but
you can change this with \code{\link[=style_headers]{style_headers()}}.
Various themes may set properties on headers. Lastly, headers are treated
differently when \link[=restack-across-down]{restacking}.
}
\examples{

jams <- set_header_rows(jams, 1, TRUE)
jams <- set_header_cols(jams, 1, TRUE)
style_headers(jams,
       bold       = TRUE,
       text_color = "purple"
     )

}
