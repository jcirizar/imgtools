FROM jcirizar/myubuntu

RUN sudo apt-get install -y autoconf \
      libmagickwand-dev \
      pngnq \
      pngcrush \
      pngquant \
      && git clone https://github.com/rflynn/imgmin.git \
      && cd imgmin \
      && autoreconf -fi \
      && ./configure \
      && make \
      && make install
