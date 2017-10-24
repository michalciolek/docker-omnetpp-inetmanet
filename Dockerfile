FROM ryankurte/docker-omnetpp
MAINTAINER Michał Ciołek <michal.ciolek@wat.edu.pl>
LABEL Description="Docker image for OMNeT++ Network Simulator with custom inetmanet-3.x"

# Download inetmanet-3.x

RUN cd /usr/omnetpp/omnetpp-5.2/samples && \
    git clone --depth=1 --recursive https://github.com/michalciolek/inetmanet-3.x.git && \
    rm -rf !$/.git
