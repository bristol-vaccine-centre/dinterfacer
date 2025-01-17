% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/params_check_types.R
\name{check_date}
\alias{check_date}
\title{Checks a set of variables can be coerced to a date and coerces them}
\usage{
check_date(
  ...,
  .message = "`{param}` is not a date: ({err}).",
  .env = rlang::caller_env()
)
}
\arguments{
\item{...}{a list of symbols}

\item{.message}{a glue specification containing \code{{param}} as the name of the
parameter and \code{{err}} the cause of the error}

\item{.env}{the environment to check (defaults to calling environment)}
}
\value{
nothing. called for side effects. throws error if not all variables can be coerced.
}
\description{
Checks a set of variables can be coerced to a date and coerces them
}
\examples{
a = c(Sys.Date()+1:10)
b = format(a)
f = "1970-01-01"
g = NA
check_date(a,b,f,g)

c = c("dfsfs")
try(check_date(c,d, mean))
}
\concept{parameter_checks}
