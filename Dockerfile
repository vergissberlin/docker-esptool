FROM python:3.9.16-slim-buster
LABEL maintainer="vergissberlin@gmail.com"

ARG VERSION=4.5.1

RUN echo "esptool version:" $VERSION && \
    pip3 install esptool==${VERSION}
WORKDIR /workdir
ENTRYPOINT ["/usr/local/bin/esptool.py"]
CMD ["--help"]
