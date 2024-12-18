
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    unzip

ARG PLINK2_VERSION=20241206

RUN wget https://s3.amazonaws.com/plink2-assets/alpha6/plink2_linux_avx2_${PLINK2_VERSION}.zip 
RUN unzip plink2_linux_avx2_20241206.zip
RUN mv plink2 /usr/local/bin/plink2

ENV SHELL=/bin/bash

CMD ["/bin/bash"]
