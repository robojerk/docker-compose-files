This repository is a collection of docker-compose files for my home server.


## Current Setup
I setup on my router use static host mapping for all my services on docker containers. (e.g. 172.16.20.2:8920 -> jellyfin.raines.xyz)
I use nginx-proxy to manage the reverse proxy for all my docker containers.
I use letsencrypt to manage the ssl certificates for all my docker containers.
I use cloudflare to manage the my domain and the and A records.
www.mydomain.com points to a static website hosted by cloudflare.
All the other subdomains point to my home server.
Nginx Proxy Manager uses DNS Challenge to verify the ownership of the domain.
I use watchtower to manage the updates of all my docker containers.
I use portainer to manage the docker containers.
