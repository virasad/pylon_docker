# basler_test base Dockerfile
FROM python:3
LABEL description="Basler base image"

ARG DEBIAN_FRONTEND=noninteractive



RUN apt-get install -y git


COPY app/pylon_*.deb /tmp/pylon_*.deb
RUN dpkg -i /tmp/pylon_*.deb

# https://www.baslerweb.com/fp-1636375002/media/downloads/software/pylon_software/pylon_6.3.0.23157-deb0_amd64.deb
# Adding basler camera's essentials by referring it's repo's README and Removing unwanted files
RUN pip install numpy


RUN pip install pypylon
WORKDIR /code

# If you want to container keep open uncommend the following line
# ENTRYPOINT ["tail", "-f", "/dev/null"]

