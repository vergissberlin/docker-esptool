FROM python:3.6.12-slim-buster
LABEL maintainer="vergissberlin@gmail.com"

ARG VERSION=3.0
RUN echo "esptool version:" $VERSION && \
    pip3 install esptool==${VERSION}
WORKDIR /workdir
ENTRYPOINT ["/usr/local/bin/esptool.py"]
CMD ["--help"]
