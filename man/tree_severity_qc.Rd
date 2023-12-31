% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datacleaningfunctions.R
\name{tree_severity_qc}
\alias{tree_severity_qc}
\title{Tree non-post severity}
\usage{
tree_severity_qc(tree)
}
\arguments{
\item{tree}{}
}
\value{
A list of flags or data issues with severity in the tree csv
}
\description{
The `tree_severity_qc` function focuses on pre-burn trees by extracting relevant data based on monitoring status. It checks if all characteristic heights, scorch heights, and scorch percentage heights are blank (NA) for these pre-burn trees, flagging any discrepancies and providing event details in the `flags` variable returned by the function. If the unique values for these attributes are exclusively NA, the function returns "TRUE" for each check, indicating conformity. Otherwise, it reports the issues, listing problematic events with associated macroplot names and monitoring statuses in the `flags`.
}
\examples{
tree_severity_qc(tree)
}
