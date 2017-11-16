FROM ubuntu:16.04
LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"
RUN apt-get update \
	&& apt-get install software-properties-common -y --no-install-recommends \
	&& add-apt-repository ppa:ubuntugis/ubuntugis-unstable -y \
	&& apt-get update \
	&& apt-get install gdal-bin -y --no-install-recommends \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*
CMD gdalinfo --version

