# R + DESeq + 
# https://cran.r-project.org/
# v4.0.2 / v1.39.0 / nsp / nsp

# base image: r-base:4.0.2
FROM r-base:4.0.2

# File Author / Maintainer
MAINTAINER Guillaume Studer <guillaume.studer@agroparistech.fr>

RUN apt-get update && apt-get install -y procps libssl-dev libcurl4-gnutls-dev curl git libopenmpi-dev openmpi-bin openmpi-doc libxml2-dev \
    && R -e 'if (!requireNamespace("BiocManager", quietly = TRUE)){install.packages("BiocManager")}' \
    && R -e 'BiocManager::install("DESeq")' \
    && R -e 'install.packages("FactoMineR")' \
    && R -e 'install.packages("factoextra")' \
    && R -e 'install.packages("EnhencedVolcano") \
    && mkdir /pasteur

ENTRYPOINT ["/usr/bin/R"]
