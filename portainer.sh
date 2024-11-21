docker run \
    -d \
    -p 8000:8000 \
    -p 9443:9443 \
    --name portainer \
    --restart=always \
    -v /run/podman/podman.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    portainer/portainer-ce:sts