# default will build image without base-devel installed
# to build with base-devel pass --build-arg type=devel
# modified for docker-hub
# ARG  type=archlinux
FROM base/archlinux

LABEL  maintainer="Eric Caleb <ericcaleb1@gmail.com>" version="0.1" description="Arch linux base/base devel docker image" organization="Shadowscript"

# popupate mirrorlist to enable full upgrade
RUN curl -o /etc/pacman.d/mirrorlist "https://www.archlinux.org/mirrorlist/?country=all&protocol=https&ip_version=6&use_mirror_status=on" &&   sed -i 's/^#//' /etc/pacman.d/mirrorlist

# update to latest available build
ONBUILD RUN pacman -Syu --noprogressbar --noconfirm
