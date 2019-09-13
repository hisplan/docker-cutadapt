FROM ubuntu:18.04

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

ENV CUTADAPT_VERSION 2.5

RUN apt-get update \
    && apt-get install --yes build-essential python3 python3-pip

RUN pip3 install cutadapt==${CUTADAPT_VERSION}

ENTRYPOINT ["/usr/local/bin/cutadapt"]
CMD ["--help"]
