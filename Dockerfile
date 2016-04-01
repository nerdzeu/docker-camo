FROM base/archlinux
MAINTAINER Paolo Galeone <nessuno@nerdz.eu>

RUN sed -i -e 's#https://mirrors\.kernel\.org#http://mirror.clibre.uqam.ca#g' /etc/pacman.d/mirrorlist && \
        pacman -Sy wget ca-certificates git --noconfirm &&  \
        useradd -m -s /bin/bash camo

RUN wget https://nodejs.org/dist/v4.1.2/node-v4.1.2-linux-x64.tar.gz && \
    gunzip node-v4.1.2-linux-x64.tar.gz && tar -xvf node-v4.1.2-linux-x64.tar

EXPOSE 8081

VOLUME /home/camo

COPY startup.sh /opt/

ENTRYPOINT bash /opt/startup.sh
