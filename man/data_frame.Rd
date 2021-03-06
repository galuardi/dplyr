% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/dataframe.R
\name{data_frame}
\alias{data_frame}
\alias{data_frame_}
\title{Build a data frame.}
\usage{
data_frame(...)

data_frame_(columns)
}
\arguments{
\item{...}{A set of named arguments}

\item{columns}{A \code{\link[lazyeval]{lazy_dots}}.}
}
\description{
A trimmed down version of \code{\link{data.frame}} that:
\enumerate{
\item Never coerces inputs (i.e. strings stay as strings!).
\item Never adds \code{row.names}.
\item Never munges column names.
\item Only recycles length 1 inputs.
\item Evaluates its arguments lazily and in order.
\item Adds \code{tbl_df} class to output.
}
}
\examples{
a <- 1:5
data_frame(a, b = a * 2)
data_frame(a, b = a * 2, c = 1)
data_frame(x = runif(10), y = x * 2)

# data_frame never coerces its inputs
str(data_frame(letters))
str(data_frame(x = list(diag(1), diag(2))))

# or munges column names
data_frame(`a + b` = 1:5)
}
\seealso{
\code{\link{as_data_frame}} to turn an existing list into
  a data frame.
}

