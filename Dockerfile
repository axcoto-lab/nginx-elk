FROM ubuntu:16.04

RUN apt-get update && apt-get install wget

ADD https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.19.6-1_amd64.deb /app
RUN dpkg -i chefdk_0.19.6-1_amd64.deb
