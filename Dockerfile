# default will build image with base-devel installed
# to build without base-devel pass --build-arg type=archlinux
ARG  type=devel
FROM base/$type

LABEL  maintainer="Eric Caleb <ericcaleb1@gmail.com>" version="0.1" description="Arch linux base/base devel docker image" organization="Shadowscript"

# popupate mirrorlist to enable full upgrade
RUN curl -o /etc/pacman.d/mirrorlist "https://www.archlinux.org/mirrorlist/?country=all&protocol=https&ip_version=6&use_mirror_status=on" &&   sed -i 's/^#//' /etc/pacman.d/mirrorlist

# update to latest available build
RUN pacman -Syu --noprogressbar --noconfirm
