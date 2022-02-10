cls
docker rm -f Trojan-GO
docker rmi -f andikamc/trojan-go:devel
docker build --pull --rm -f ".\Dockerfile" -t andikamc/trojan-go:devel "."
docker run -d -it --name Trojan-GO -p 80:80 -p 81:81 -p 443:443 -p 80:80/udp -p 81:81/udp -p 443:443/udp -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged andikamc/trojan-go:devel
pause