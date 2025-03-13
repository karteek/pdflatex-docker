FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
        apt-get install -y --no-install-recommends texlive-latex-recommended texlive-fonts-recommended \
        texlive-latex-extra texlive-fonts-extra texlive-xetex fonts-roboto && \
        apt-get clean -y

WORKDIR /workspace
VOLUME ["/workspace"]
