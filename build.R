#!/usr/bin/env RScript

install.packages(
    c("ape",
      "data.table",
      "fmsb",
      "gplots",
      "grImport",
      "RCurl",
      "reutils",
      "seqinr",
      "codetools"
      ), repos = "http://cran.us.r-project.org"
)

source("https://bioconductor.org/biocLite.R")
biocLite()

biocLite("Biostrings")
biocLite("FindMyFriends")
biocLite("genbankr")
biocLite("GenomicRanges")
biocLite("msa")
biocLite("rentrez")

install.packages("/home/Prodigal_2.0.tar.gz", repos = NULL, type = "source")
install.packages("/home/RNAmmer_1.0.tar.gz", repos = NULL, type = "source")

