# Ubuntu XRAY
[![Build Status](https://travis-ci.org/andikamc/docker-ubuntu-xray.svg?branch=master)](https://travis-ci.org/andikamc/docker-ubuntu-xray)

Run XRAY inside Ubuntu Container

### xray images
- ubuntu-bionic-oci-amd64-root

### Installed Features
- XRAY


### Usage
1. Run the container as a daemon
    ```sh
    docker run -d -it --name docker-ubuntu-xray && \
    --restart always && \
    --tmpfs /tmp --tmpfs /run --tmpfs /run/lock && \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro && \
    -p 80:80 -p 443:443 -p 31300:31300 -p 31296:31296 -p 31302:31302 -p 31304:31304 && \
    -p 80:80/udp -p 443:443/udp -p 31300:31300/udp -p 31296:31296/udp -p 31302:31302/udp -p 31304:31304/udp && \
    andikamc/ubuntu-xray:tagname
    ``` 
    or if it doesn't work
    
    ```sh
    docker run -d -it --name docker-ubuntu-xray && \
    -- restart always && \
    --privileged && \
    -p 80:80 -p 443:443 -p 31300:31300 -p 31296:31296 -p 31302:31302 -p 31304:31304 && \
    -p 80:80/udp -p 443:443/udp -p 31300:31300/udp -p 31296:31296/udp -p 31302:31302/udp -p 31304:31304/udp && \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro && \
    andikamc/ubuntu-xray:latest
    ```
    
2. Enter to the container
    ```sh
    docker exec -it docker-ubuntu-xray bash
    ```
    
2. Remove to the container
    ```sh
    docker rm -f docker-ubuntu-xray
    ```

### License

MIT

**Free Software, Hell Yeah!**
