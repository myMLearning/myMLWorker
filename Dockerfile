FROM continuumio/miniconda3

#ENV DEBIAN_FRONTEND=noninteractive

#ENV CONDA_DIR=/opt/conda \
#    PATH=$CONDA_DIR/bin:$PATH

#RUN conda clean -tipsy && \
#    apt-get update --quiet --yes && apt-get upgrade --quiet --yes

RUN conda install --yes --quiet openblas \
    pandas scikit-learn
#    pandas scikit-learn && \
#    conda clean -tipsy && \
#    pip install --upgrade pip & \
#    pip install -U --no-cache-dir alpha_vantage

#Additional libraries
#sklearn-deap, teapot, daskml, dash

#Entrypoint adds ssh key files to bitbucket and
#run any argument
#ADD entrypoint.sh /
#RUN chmod +x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]
