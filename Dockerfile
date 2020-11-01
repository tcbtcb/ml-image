FROM ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip ca-certificates build-essential libopenblas-dev gfortran

RUN pip3 install numpy pandas scipy sklearn torch torchvision

