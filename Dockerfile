FROM cmbant/cosmobox:latest

MAINTAINER Antony Lewis

RUN git clone --depth 10 --recursive https://github.com/cmbant/CAMB.git \
 && pip install -e ./CAMB \
 && python CAMB/setup.py clean


RUN conda install --yes jupyter astropy statsmodels \
  && pip install healpy starcluster \
  && conda clean --yes -i -t -l -s -p && rm -Rf /root/.cache/pip 


 
