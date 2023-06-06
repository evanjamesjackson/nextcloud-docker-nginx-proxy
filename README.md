Nextcloud Docker containers (with compose) automatically configured to work with https://github.com/nginx-proxy/nginx-proxy and https://github.com/nginx-proxy/acme-companion.

## Prerequsites
In order to use these containers you must have a running [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) container attached to an existing Docker network. Optionally, you may also have an [acme-companion](https://github.com/nginx-proxy/acme-companion) instance running, which will automatically configure HTTPS for Nextcloud. A working example of each can be found [here](https://github.com/evanjamesjackson/nginx-proxy-with-acme-companion).

## Setup
1. Clone the repository.
2. Run `cp .env.stub .env` and update with your preferred settings. Be sure to set `NGINX_PROXY_NETWORK` to the name of the Docker network that your `nginx-proxy` instance is running under. Set the `UID` and `GUID` properties appropriately to the user/group you would like to run the container under.` properties appropriately to the user/group you would like to run the container under.
3. Create three directories, `app`, `db` and `data`, which will store your Nextcloud files.Ensure these directories are owned by the same user/group as you specified above (`chown -R $UID:$GUID app/ db/ data/`).
4. Run `docker compose up -d` to build and run the containers.
5. If you find Nextcloud is failing to upload large files, you may need to increase nginx's upload limit. An example of how to update this within an `nginx-proxy` instance can be found [here](https://github.com/evanjamesjackson/nginx-proxy-with-acme-companion). 
