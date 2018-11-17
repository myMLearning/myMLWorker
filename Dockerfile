FROM continuumio/miniconda3

ENV DEBIAN_FRONTEND=noninteractive

RUN conda clean -tipsy && \
    apt-get update --quiet --yes && apt-get upgrade --quiet --yes

RUN conda install --yes --quiet openblas \
    pandas scikit-learn && \
    conda clean -tipsy && \
    pip install -U --no-cache-dir alpha_vantage

#Additional libraries
#sklearn-deap, teapot, daskml, dash
