% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatchCorrection.R
\name{reportHtml}
\alias{reportHtml}
\title{Report ELISA data in HTML format.}
\usage{
reportHtml(batches, file.name = "report", file.dir = ".", desc = "")
}
\arguments{
\item{batches}{list of elisa batch data objects. The data can be raw or after 
analyzed and batch-corrected.}

\item{file.name}{character string denoting the report file. The file will be
written in HTML format.}

\item{file.dir}{character string denoting the directory to save the report.}

\item{desc}{character string describing the project and experiment. Will be 
written into the report.}
}
\value{
the function returns NULL. But it will save the html report to the disk.
Therefore, it is IMPORTANT to specify a directory you have write permission to
run this function.
}
\description{
Writting the ELISA analysis results by batch in HTML format.
}
\examples{
#R code to run 5-parameter logistic regression on ELISA data
#load the library
library(ELISAtools)

##
#get file folder
dir_file<-system.file("extdata", package="ELISAtools")

batches<-loadData(file.path(dir_file,"design.txt"))


#----IMPORTANT-----
#please make sure you have the write permission to save the html report
reportHtml(batches,file.dir=tempdir());

}
\seealso{
\code{\link{elisa_batch}} \code{\link{elisa_run}}
		\code{\link{elisa_plate}}
}
