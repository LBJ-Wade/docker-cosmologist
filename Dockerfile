FROM cmbant/cosmobox:latest

MAINTAINER Antony Lewis

RUN conda install --yes jupyter astropy statsmodels && mkdir /opt/notebooks \
  && conda clean --yes -i -t -l -s -p

RUN pip install healpy starcluster camb
