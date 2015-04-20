FROM base/archlinux
MAINTAINER Paolo Galeone <nessuno@nerdz.eu>

RUN sed -i -e 's#https://mirrors\.kernel\.org#http://mirror.clibre.uqam.ca#g' /etc/pacman.d/mirrorlist && \
        pacman -Sy git nodejs --noconfirm &&  \
        useradd -m -s /bin/bash camo

EXPOSE 8081

VOLUME /home/camo

COPY startup.sh /opt/

ENTRYPOINT bash /opt/startup.sh
