# FROM python: "3.10-alpine"

FROM continuumio/miniconda3
LABEL maintainer="Hector M. Sanchez C. <sanchez.hmsc@berkeley.edu>"
###############################################################################
# Setup Structure
###############################################################################
RUN apt-get update \
    && apt-get install nano tini \
    && apt-get install gcc -y \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir MGSurvE_Webinar2023
WORKDIR /MGSurvE_Webinar2023
RUN mkdir tests \
    && mkdir demos \
    && mkdir data \
    && mkdir media
###############################################################################
# Copy Files
###############################################################################
COPY ./demos/ ./demos/ 
COPY ./tests/ ./tests/
COPY ./data/ ./data/
COPY ./media/ ./media/
COPY LICENSE .
COPY README.md .
###############################################################################
# Install Packages
###############################################################################
RUN conda update -n base -c defaults conda \
    && conda config --set offline false \
    && conda config --add channels conda-forge \
    && conda config --add channels bioconda \
    && conda install gdal fiona pyproj cartopy libpysal -y \
    && conda install -c conda-forge deap nodejs -y \ 
    && conda install -c conda-forge jupyter jupyterlab basemap-data-hires \
    && pip install termcolor MGSurvE 
###############################################################################
# Entrypoint
###############################################################################
EXPOSE 8888
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''","--NotebookApp.password=''"]