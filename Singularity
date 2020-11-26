BootStrap: docker
From: r-base:4.0.2

%labels
  Maintainer Guillaume Studer
  base.image="r-base:4.0.2"
  version="1"
  software="EnhencedVolcano+DESeq2+FactoMineR+factoextra"
%help
  Please faites que ca fonctionne
%post
  apt-get update
  apt-get install -y procps libssl-dev libcurl4-gnutls-dev curl git libopenmpi-dev openmpi-bin openmpi-doc libxml2-dev
  
  R --slave -e 'install.packages("ggplot2")'
  R --slave -e 'install.packages("ggrepel")'
  R --slave -e 'install.packages("FactoMineR")'
  R --slave -e 'install.packages("factoextra")'
  R --slave -e 'install.packages("matrixStats")'
  R --slave -e 'install.packages("ggalt")'
  R --slave -e 'install.packages("ggrastr")'
  R --slave -e 'install.packages("knitr")'
  R --slave -e 'install.packages("gridExtra")'
  R --slave -e 'install.packages("RUnit")'
  
  
  R --slave -e 'install.packages("BiocManager")'
  R --slave -e 'BiocManager::install("airway")'
  R --slave -e 'BiocManager::install("org.Hs.eg.db")'
  R --slave -e 'BiocManager::install("pasilla")'
  R --slave -e 'BiocManager::install("magrittr")'
  R --slave -e 'BiocManager::install("BiocGenerics")'
  R --slave -e 'BiocManager::install("GenomeInfoDb")'
  R --slave -e 'BiocManager::install("MatrixGenerics")'
  R --slave -e 'BiocManager::install("Biobase")'
  R --slave -e 'BiocManager::install("IRanges")'
  R --slave -e 'BiocManager::install("S4Vectors")'
  R --slave -e 'BiocManager::install("GenomicRanges")'
  R --slave -e 'BiocManager::install("SummarizedExperiment")'
  R --slave -e 'BiocManager::install("DESeq2")'
  R --slave -e 'BiocManager::install("EnhancedVolcano")'
