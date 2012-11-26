\name{make_template}
\alias{make_template}
\title{Make a template that feeds into JASPAR databases}
\usage{
  make_template(x, PARAM = NA, TAG = NA, sep = "\t",
    outFpre = NULL)
}
\arguments{
  \item{x}{matrix, the pfm}

  \item{PARAM}{a list, the PARAM(s)}

  \item{TAG}{a list, the TAG(s)}

  \item{sep}{a string, the delimiter}

  \item{outFpre}{a string, a file path to save}
}
\value{
  A string of the template, and save it in output format of
  `.template' and `.matrix' if `outFpre' specified.
}
\description{
  Make a template that feeds into JASPAR databases
}
\details{
  NA
}
\examples{
x <-
  rbind(
        c(3, 0, 0, 0, 0, 0),
        c(8, 0, 23, 0, 0, 0),
        c(2, 23, 0, 23, 0, 24),
        c(11, 1, 1, 1, 24, 0)
        )

PARAM <-
  list(
       INT_ID=NULL,
       BASE_ID="MA0006",
       COLLECTION="CORE",
       VERSION=1,
       NAME="Arnt-Ahr",
       SPECIES="10090")
TAG <-
  list(
       class="bHLH",
       medline="7592839",
       tax_group="vertebrate",
       sysgroup="vertebrate",
       acc="P30561",
       acc="P53762",
       comment="dimer",
       type="SELEX",
       newest=1
       )
cat(make_template(x=x,PARAM=PARAM,TAG=TAG))
}
\author{
  Xiaobei Zhao
}

