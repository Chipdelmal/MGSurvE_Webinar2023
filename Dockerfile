# FROM python: "3.10-alpine"

FROM continuumio/miniconda3
LABEL maintainer="Hector M. Sanchez C. <sanchez.hmsc@berkeley.edu>"
###############################################################################
# Setup Structure
###############################################################################
RUN apt-get update \
    && apt-get install nano \
    && apt-get install gcc -y \
    && apt-get install tini \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir MGSurvE_Webinar2023
WORKDIR /MGSurvE_Webinar2023
RUN mkdir tests \
    && mkdir demos
###############################################################################
# Copy Files
###############################################################################
COPY ./demos/* ./demos/ 
COPY ./tests/* ./tests/
COPY LICENSE .
###############################################################################
# Copy Paper and Demo Experiments Files
###############################################################################
# COPY ./MGSurvE/ .
###############################################################################
# Install Packages
###############################################################################
RUN conda update -n base -c defaults conda \
    && conda config --set offline false \
    && conda config --add channels conda-forge \
    && conda config --add channels bioconda \
    && conda install gdal -y \
    && conda install fiona -y \
    && conda install pyproj -y \
    && conda install cartopy -y \
    && conda install libpysal -y \
    && conda install -c conda-forge deap -y \ 
    && conda install jupyter \
    && conda install jupyterlab \ 
    && pip install termcolor \
    && conda install -c conda-forge nodejs \
    && pip install MGSurvE
###############################################################################
# Entrypoint
###############################################################################
EXPOSE 8888
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''","--NotebookApp.password=''"]