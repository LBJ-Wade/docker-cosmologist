### Overview

Docker with healpy, CAMB, astropy, latest gcc/gfortran, plus latex, miniconda python, cfitsio
as needed for doing cosmology and running Jupyter notebooks. Builds on CosmoBox.


 GitHub: http://registry.hub.docker.com/u/cmbant/docker-cosmologist/
 DockerHub: http://registry.hub.docker.com/u/cmbant/cosmologist/


### Usage

To make an interactive shell ready for compiling you local code at /local/code/source
do

    docker run -v /local/code/source:/virtual/path -i -t cmbant/cosmologist /bin/bash

Navigating into /virtual/path in the bash shell, you can then run make etc as normal, acting
on your local files.

Host a virtual Jupyter Notebook server that you can then use from your local machine using

    docker run -v /local/notebook/path:/notebooks -i -t -p 8888:8888 cmbant/cosmologist /bin/bash -c "/opt/conda/bin/jupyter notebook --notebook-dir=/notebooks --allow-root --ip='*' --port=8888 --no-browser"
    
and then view the by opening the URL it gives you, which will be under http://localhost:8888 in your browser, or http://<DOCKER-MACHINE-IP>:8888 if you are using a Docker Machine VM.

