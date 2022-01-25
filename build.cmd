cls
docker rm -f TrojanX
docker rmi -f andikamc/trojan:devel
docker build --pull --rm -f ".\Dockerfile" -t andikamc/trojan:devel "."
docker run -d -it --name TrojanX -p 80:80 -p 443:443 -p 8080:8080 -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v "%CD%"/sources/config/xray:/opt/xray/conf --privileged andikamc/trojan:devel
pause