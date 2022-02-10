# Ubuntu Trojan-GO
[![Build Status](https://travis-ci.org/andikamc/docker-ubuntu-trojan-go.svg?branch=master)](https://travis-ci.org/andikamc/docker-ubuntu-trojan-go)

Run Trojan-GO inside Ubuntu Container

### baseline images
- ubuntu-bionic-oci-amd64-root

### Installed Features
- Trojan-GO


### Usage
1. Run the container as a daemon
    ```sh
    docker run -d -it --name docker-ubuntu-trojan-go && \
    --restart always && \
    --tmpfs /tmp --tmpfs /run --tmpfs /run/lock && \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro && \
    -p 80:80 -p -p 81:81 -p 443:443 && \
    -p 80:80/udp -p 81:81/udp -p 443:443/udp && \
    andikamc/ubuntu-trojan-go:tagname
    ``` 
    or if it doesn't work
    
    ```sh
    docker run -d -it --name docker-ubuntu-trojan-go && \
    -- restart always && \
    --privileged && \
    -p 80:80 -p 81:81 -p 443:443 && \
    -p 80:80/udp -p 81:81/udp -p 443:443/udp && \
    -v /sys/fs/cgroup:/sys/fs/cgroup:ro && \
    andikamc/ubuntu-trojan-go:latest
    ```
    
2. Enter to the container
    ```sh
    docker exec -it docker-ubuntu-trojan-go bash
    ```
    
2. Remove to the container
    ```sh
    docker rm -f docker-ubuntu-trojan-go
    ```

### License

MIT

**Free Software, Hell Yeah!**
