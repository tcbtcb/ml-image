FROM debian:buster

RUN apt-get update && apt-get install -y openssl libssl-dev build-essential
RUN apt-get install -y libffi-dev zlib1g-dev libbz2-dev
RUN apt-get install -y entr wget  
# install python version compatible w/ tf
RUN wget https://www.python.org/ftp/python/3.8.7/Python-3.8.7.tgz
RUN tar xzvf Python-3.8.7.tgz
WORKDIR /Python-3.8.7
RUN ./configure
RUN make
RUN make install

RUN pip3 install numpy pandas matplotlib scipy scikit-learn statsmodels tensorflow keras
