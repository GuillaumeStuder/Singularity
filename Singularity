BootStrap: debootstrap
OSVersion: xenial
MirrorURL: http://archive.ubuntu.com/ubuntu/

%labels
  Maintainer Guillaume Studer
  base.image="r-base:4.0.2"
  version="1"
  software="EnhencedVolcano+DESeq2+FactoMineR+factoextra"

%post

  sed -i 's/main/main restricted universe/g' /etc/apt/sources.list
  apt-get update
  
  apt-get install -y libopenblas-dev r-base-core libcurl4-openssl-dev libopenmpi-dev openmpi-bin openmpi-common openmpi-doc openssh-client openssh-server libssh-dev wget vim git nano git cmake  gfortran g++ curl wget python autoconf bzip2 libtool libtool-bin python-pip python-dev
  apt-get clean
  locale-gen en_US.UTF-8
  
  R --slave -e 'install.packages("BiocManager")'
  R --slave -e 'BiocManager::install("DESeq2")'
  R --slave -e 'install.packages("FactoMineR")'
  R --slave -e 'install.packages("factoextra")'
  R --slave -e 'BiocManager::install("EnhancedVolcano")'
