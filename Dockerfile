FROM debian:11-slim

WORKDIR /usr/local/bin

RUN apt-get update &&\
    apt-get install -y --no-install-recommends tini wget unzip ca-certificates &&\
    curl -L https://raw.githubusercontent.com/naiba/nezha/master/script/install.sh -o nezha.sh && chmod +x nezha.sh && sudo ./nezha.sh install_agent nz.dsuk.top 5555 zeabur
