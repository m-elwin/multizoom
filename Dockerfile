# Use a docker image provided by 
FROM ubuntu:focal

RUN apt-get update -yq && \
    apt-get install -yq --no-install-recommends \
    ibus \
    libxcb-keysyms1 \
    lib2.0-0 \
    libxcb-shape0 \
    libxcb-shm0 \
    libxcb-xfixes0 \
    libxcb-randr0 \
    libxcb-image0 \
    libfontconfig1 \
    libgl1-mesa-glx \
    libegl1-mesa \
    libxi6 \
    libsm6 \
    libxrender1 \
    libpulse0 \
    libxcomposite1 \
    libxslt1.1 \
    libsqlite3-0 \
    libxcb-xtest0 \
    libdbus-1-3 \
    libxtst6 \
    && rm -rf /var/lib/apt/lists/*
COPY zoom_amd64.deb /
RUN apt install ./zoom_amd64.deb