# How to run xeus-cling using docker
# sudo docker build -t test:latest .  
# sudo docker run -p 8888:8888 test:latest
# open browser on the host machine: http://127.0.0.1:8888

# We can use ubuntu:22.04. let's use this for now.
FROM ubuntu:latest

MAINTAINER Rajesh Pandian M <http://mrprajesh.co.in>

SHELL ["/bin/bash","-c"]

# wget
RUN apt-get update && apt-get install -y wget 

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash Miniconda3-latest-Linux-x86_64.sh -b -u -p /opt/conda

ENV PATH=$CONDA_DIR/bin:$PATH

#unsure if two help
RUN conda init bash
RUN . /opt/conda/etc/profile.d/conda.sh

RUN conda update -n base -c defaults conda

#let's install in base
##RUN conda create -n cling

#can not activate for some reasons CommandNotFoundError: Your shell has not been properly configured to use 'conda activate'.
##RUN conda activate cling

#COPY activate.sh /root/
#RUN activate.sh

RUN conda install jupyter notebook -y 
RUN conda install -c conda-forge xeus-cling -y


COPY HelloWorld.ipynb /root/
EXPOSE 8888

#change dir
WORKDIR /root
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root", "/root"]

