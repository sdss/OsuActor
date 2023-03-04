FROM python:3.10-slim-bullseye

MAINTAINER Jose Sanchez-Gallego, gallegoj@uw.ed
LABEL org.opencontainers.image.source https://github.com/sdss/lvmscp

WORKDIR /opt

COPY . lvmieb

RUN pip3 install -U pip setuptools wheel
RUN cd lvmscp && pip3 install .
RUN rm -Rf lvmieb

ENTRYPOINT lvmieb actor start --debug
