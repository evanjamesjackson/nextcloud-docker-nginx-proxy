Nextcloud Docker containers (with compose) automatically configured to work with https://github.com/nginx-proxy/nginx-proxy and https://github.com/nginx-proxy/acme-companion.

## Prerequsites
In order to use these containers you must have a running [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) container attached to an existing Docker network. Optionally, you may also have a [acme-companion](https://github.com/nginx-proxy/acme-companion) instance running, which will automatically configured HTTPS for Nextcloud.

## Setup
1. Clone the repository.
2. Run `cp .env.stub .env` and update with your preferred settings. Be sure to set `NGINX_PROXY_NETWORK` to the name of the Docker network that your `nginx-proxy` instance is running under.
3. Run `docker-compose up -d` to build and run the containers.
