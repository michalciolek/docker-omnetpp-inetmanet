# docker-omnetpp-inetmanet

A Docker container for Omnet++ with custom inetmanet-3.x used for 'Mobile Ad Hoc Networks' labs in Military University of Technology.

## Usage

1. Enable X-forwarding
```xhost +```

2a. with GUI - macOS (for more information check out [fredrikaverpil.github.io](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/))
```docker run --rm -it -v `pwd`:/work -e DISPLAY=${IP}:0 -v /tmp/.X11-unix:/tmp/.X11-unix michalciolek/docker-omnetpp-inetmanet```

2b. with GUI - Linux
```docker run --rm -ti -v `pwd`:/work -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix/:/tmp/.X11-unix michalciolek/docker-omnetpp-inetmanet```

2c. with your inetmanet src
```docker run --rm -ti -v `pwd`:/work -v `pwd`/inetmanet-3.x:/usr/omnetpp/omnetpp-5.2/samples/inetmanet-3.x -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix/:/tmp/.X11-unix michalciolek/docker-omnetpp-inetmanet```

3. start Omnet++
```# omnetpp```
