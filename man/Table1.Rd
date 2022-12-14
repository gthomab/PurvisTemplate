% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Table1.R
\name{Table1}
\alias{Table1}
\alias{Table1.data.frame}
\title{Create a table one}
\usage{
Table1(data, ...)

\method{Table1}{data.frame}(
  data,
  rowvars,
  colvar,
  sigfig = 4,
  rowvar_names = NULL,
  incl_missing = TRUE,
  incl_pvalues = FALSE,
  emphasis = c("b", "s", "n"),
  MedIQR = NULL,
  asTable = TRUE,
  lineBreaks = T,
  tight = TRUE,
  verbose = FALSE,
  ...
)
}
\arguments{
\item{data}{the data frame or design object of the data you which to
characterize}

\item{...}{Arguments passed through methods to table 1.}

\item{rowvars}{A vector of row positions or names.}

\item{colvar}{The position or name of the variable to stratify by, set
to \code{NULL} for no stratification.(p values cannot be returned if
\code{NULL})}

\item{sigfig}{The number of significant digits to use for mean, sd, median,
and IQR.}

\item{rowvar_names}{An optional vector of row names to be used for
variables. Must be the same length and in the same order as rowvars.}

\item{incl_missing}{Set to \code{TRUE} to include missing values (default)}

\item{incl_pvalues}{Set to \code{TRUE} to include p values (p values are only
calculated on non missing observations) (default = \code{FALSE})}

\item{emphasis}{Set to \code{'s'} for to indent categories for categorical values,
\code{'b'} to bold just variable names, and \code{'n'} for no emphasis.}

\item{MedIQR}{optional vector of continuous variables to return median and
IQR instead of mean and SD.}

\item{asTable}{should a table (\code{TRUE}) or a matrix be returned}

\item{lineBreaks}{should the N be printed on a seperate line from the
categories. default is \code{TRUE} (see details)}

\item{tight}{if \code{TRUE} (default) no spaces between numbers and
parenthesis}

\item{verbose}{should both levels of binary variables be printed.}
}
\value{
a table/matrix with N and percentages for categorical variables, mean
and sd for continuous ones, and median and 25th and 75th percentile for integers.
If variables are passed via the MedIQR argument,
median and 25th and 75th percentile is calculated instead for those variable.
}
\description{
This is a function created to provide characteristics of a study group with
an option to stratify by some variable (usually an exposure) The output of
this function is designed to be used with pander in rmarkdown, but all row
name formatting can be removed with the option: emphasis = 'n'.
}
\details{
Only
the 1st factor of binary categorical variables is displayed. All
determinations of categorical,
binary, or continuous are performed automatically.
Character variables are converted to factors. Variables are displayed in
the following order: binary, non-binary categorical, continuous, and integers
+ continuous variables with median and IQR.
If no stratification variable is provided, summary statistics on the
entire sample are provided. No p-values can be provided in this case.
If a design object is passed in lieu of a data frame, weighted numbers
using the survey package are provided.
(The survey package must be installed in this case.)

To use the lineBreaks use \code{panderOptions('keep.line.breaks', TRUE)}
}
\section{Methods (by class)}{
\itemize{
\item \code{Table1(data.frame)}: unweighted table 1

}}
\keyword{characteristic}
\keyword{table1}
\keyword{tableone}
