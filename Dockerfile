FROM dorowu/ubuntu-desktop-lxde-vnc

RUN curl -Ok https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b -p
RUN rm Anaconda3-5.0.1-Linux-x86_64.sh

ENV PATH "$PATH:/home/ubuntu/anaconda3/bin"

RUN conda update conda
#RUN conda install -c conda-forge geopandas
RUN conda install -c conda-forge opencv
RUN conda install -c plotly plotly
RUN conda install -c anaconda csvkit
RUN conda install -c anaconda boto
RUN conda install -c conda-forge osmnx
RUN conda install -c conda-forge awscli

RUN apt-get update
RUN apt-get -y install qgis python-qgis
RUN apt-get -y install jq
RUN apt-get -y install python-dev libjpeg-dev libfreetype6 libfreetype6-dev zlib1g-dev
RUN apt-get -y install r-base

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
