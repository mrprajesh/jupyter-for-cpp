sudo docker run -ti -p 8888:8888 ubuntu /bin/bash

apt update && apt install -y wget

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh 

source ~/miniconda3/bin/activate
conda init bash #not useful

conda update -n base -c defaults conda #not required
conda create -n cling

conda install jupyter notebook -y # auto yes -y

conda install xeus-cling -c conda-forge #fails twice. but success eventully
 
// conda install -c conda-forge xeus-cling -y #may try this

//conda deactivate
conda activate cling

jupyter notebook --allow-root

http://localhost:8888 


#################
SHELL ["/bin/bash", "-c"]
## Install miniconda https://fabiorosado.dev/blog/install-conda-in-docker
#ENV CONDA_DIR /opt/conda
#RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
#     /bin/bash ~/miniconda.sh -b -p /opt/conda
#
## Put conda in path so we can use conda activate
#ENV PATH=$CONDA_DIR/bin:$PATH
