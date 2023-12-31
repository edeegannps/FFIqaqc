% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datacleaningfunctions.R
\name{tree_duplicates_qc}
\alias{tree_duplicates_qc}
\title{Duplicate tags}
\usage{
tree_duplicates_qc(tree)
}
\arguments{
\item{tree}{}
}
\value{
A list of flags or data issues with duplicates in the tree csv
}
\description{
The tree_duplicates_qc function addresses the identification of duplicate tree tags in the dataset. It groups the data by macro plot and sample event date, then checks for duplicated tag numbers within each group. If duplicates are found, it reports the error events, highlighting the affected macroplot names and monitoring statuses. Additionally, the function compares differences in data for the duplicated tag numbers, pointing out any discrepancies. The final results are presented in the flags variable, which includes information about duplicate tree tags and the detected issues.
}
\examples{
tree_duplicates_qc(tree)
}
