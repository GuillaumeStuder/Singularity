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
  
  R --slave -e 'install.packages("BiocManager")'
  R --slave -e 'BiocManager::install("DESeq2")'
  R --slave -e 'install.packages("FactoMineR")'
  R --slave -e 'install.packages("factoextra")'
  R --slave -e 'BiocManager::install("EnhancedVolcano")'
