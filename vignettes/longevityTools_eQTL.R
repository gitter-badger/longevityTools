## ----style, echo = FALSE, results = 'asis'-------------------------------
BiocStyle::markdown()
options(width=100, max.print=1000)
knitr::opts_chunk$set(
    eval=as.logical(Sys.getenv("KNITR_EVAL", "TRUE")),
    cache=as.logical(Sys.getenv("KNITR_CACHE", "TRUE")))

## ----setup, echo=FALSE, messages=FALSE, warnings=FALSE-------------------
suppressPackageStartupMessages({
    library(longevityTools) 
    library(ggplot2) }) 

## ----install, eval=FALSE-------------------------------------------------
## source("http://bioconductor.org/biocLite.R") # Sources the biocLite.R installation script
## biocLite("tgirke/longevityTools", build_vignettes=FALSE) # Installs package from GitHub

## ----documentation, eval=FALSE-------------------------------------------
## library("longevityTools") # Loads the package
## library(help="longevityTools") # Lists package info
## vignette("longevityTools") # Opens vignette

## ----source_fct, eval=TRUE-----------------------------------------------
fctpath <- system.file("extdata", "longevityTools_eQTL_Fct.R", package="longevityTools")
source(fctpath)

## ----work_envir, eval=FALSE----------------------------------------------
## dir.create("data"); dir.create("results")

## ----eQTL_download, eval=FALSE-------------------------------------------
## download.file("http://www.gtexportal.org/static/datasets/gtex_analysis_v6/single_tissue_eqtl_data/GTEx_Analysis_V6_eQTLs.tar.gz", "./GTEx_Analysis_V6_eQTLs.tar.gz")
## untar("GTEx_Analysis_V6_eQTLs.tar.gz")

## ----geneGrep, eval=TRUE-------------------------------------------------
library(longevityTools)
samplepath <- system.file("extdata", "Thyroid_Analysis.snpgenes.TXNRD2", package="longevityTools") 
dat <- read.delim(samplepath)
myGenes <- c("TXNRD2")
result <- geneGrep(dat, myGenes)
result

## ----sessionInfo---------------------------------------------------------
sessionInfo()

