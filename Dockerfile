FROM debian:testing

RUN apt-get update && apt-get install -y entr python3 python3-pip ca-certificates

RUN pip3 install numpy pandas matplotlib scipy sklearn statsmodels
