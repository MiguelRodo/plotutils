% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_env_var_r_gscmd.R
\name{set_env_var_r_gscmd}
\alias{set_env_var_r_gscmd}
\title{Set R Ghostscrip env variable}
\usage{
set_env_var_r_gscmd(gs_version = "9.54.0")
}
\arguments{
\item{gs_version}{character. Version to use.}
}
\value{
\code{invisible(TRUE)}.
}
\description{
Set \code{R_GSCMD} environment variable
that must be set for Ghostscript to be used.
}
\details{
Note that this can be permanently set by
following the instructions in the accepted answer to this
Stackoverflow question: https://stackoverflow.com/questions/49738564/r-set-environment-variable-permanently.
}
