# default will build image without base-devel installed 
# to build with base-devel pass --build-arg type=devel
# modified for docker-hub
# ARG  type=archlinux
FROM base/archlinux

LABEL  maintainer="Eric Caleb <ericcaleb1@gmail.com>" version="0.1" description="Arch linux base/base devel docker image" organization="Shadowscript"

