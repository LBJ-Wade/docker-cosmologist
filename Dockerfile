FROM cmbant/cosmobox:latest

MAINTAINER Antony Lewis

RUN git clone --depth 10 git@github.com:cmbant/CAMB.git \
 && cd camb \
 && make \
 && cd pycamb \
 && python setup.py install \
 && cd .. && make clean \
 && cd ..


RUN conda install --yes jupyter astropy statsmodels && mkdir /opt/notebooks \
  && conda clean --yes -i -t -l -s -p

RUN pip install healpy starcluster

 
