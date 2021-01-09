# (C) 2021 Daisuke Sato
# SPDX-License-Identifier: MIT
FROM python:3.6.12-slim-buster
LABEL maintainer="tiryoh@gmail.com"
ARG VERSION=3.0
RUN echo "esptool version:" $VERSION && \
    pip3 install esptool==${VERSION}
WORKDIR /work
ENTRYPOINT ["/usr/local/bin/esptool.py"]
CMD ["--help"]
