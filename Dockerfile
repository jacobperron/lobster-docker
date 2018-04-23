FROM ubuntu:bionic

RUN apt-get update -qq && \
    apt-get install -y build-essential cmake git libgl1-mesa-dev mesa-common-dev vim && \
    git clone https://github.com/aardappel/lobster.git && \
    cd lobster/dev && \
    cmake -DCMAKE_BUILD_TYPE=Release . && \
    make -j && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
