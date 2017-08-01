# default will build image with base-devel installed 
# to build without base-devel pass --build-arg type=archlinux
# ARG  type=archlinux
FROM base/devel

LABEL  maintainer="Eric Caleb <ericcaleb1@gmail.com>" version="0.1" description="Arch linux base/base devel docker image" organization="Shadowscript"

