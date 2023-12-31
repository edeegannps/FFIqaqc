% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datacleaningfunctions.R
\name{seedlings_qc}
\alias{seedlings_qc}
\title{Seedlings}
\usage{
seedlings_qc(seeds)
}
\arguments{
\item{seeds}{}
}
\value{
A list of flags or data issues in the seedlings csv
}
\description{
The seedlings_qc function performs quality control checks on seedling tree data within the given 'seeds' dataset. It covers various aspects, ensuring the accuracy and integrity of the information. The function begins by validating height class entries, flagging any values outside the acceptable range of 0.15 to 10. It then identifies and flags heights above 4 or null values, providing detailed information about the problematic rows.
The function also checks for accurate species coding when the count value is 0, ensuring that the species code is "TREE1." It uses the Rosner test to detect and flag outliers in seedling tree counts.
The section related to subplot fractions verifies specific species symbols, such as "JUNI1" and "QUAR1," ensuring that their product with microplot size equals 0.005. For other species, the subplot fraction should be 1. Inconsistencies are flagged, providing details about problematic sample events.
Microplot size checks are performed based on monitoring types, ensuring adherence to specified values (0.025, 0.005) and flagging any discrepancies. The function also validates the 'Status' column, ensuring all entries are marked as "L" for living.
Additionally, the function addresses issues with missing microplot size values, identifies cases where a microplot size of 0 implies non-collection (recorded in comments), and ensures that all blank seedling statuses represent either no seedlings found or non-collection.
Finally, the function checks that species entered in the seedling tree tab are labeled either "Tree" or "Shrub" in the preferred lifeform column, flagging any discrepancies.
}
\examples{
seedlings_qc(seeds)
}
