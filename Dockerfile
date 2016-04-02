FROM base/archlinux
MAINTAINER Paolo Galeone <nessuno@nerdz.eu>

RUN sed -i -e 's#https://mirrors\.kernel\.org#http://mirror.clibre.uqam.ca#g' /etc/pacman.d/mirrorlist && \
        pacman -Sy haveged archlinux-keyring --noconfirm && haveged -w 1024 -v 1 && \
        pacman-key --init && pacman-key --populate archlinux && pacman -Syy && \
        pacman -S wget ca-certificates openssl git nodejs npm gcc-libs --noconfirm

EXPOSE 8081

RUN useradd -m -s /bin/bash camo

VOLUME /home/camo

COPY startup.sh /opt/

USER camo
ENTRYPOINT bash /opt/startup.sh
