# caddy-all

A custom built Caddy image that includes all plugins from caddy-dns. This image is automatically built and pushed to both GitHub Container Registry and Docker Hub weekly to ensure it stays up to date with the latest Caddy version and DNS provider plugins.

## Included DNS Plugins

- Alibaba Cloud DNS (`alidns`)
- Azure DNS
- Cloudflare
- DigitalOcean
- DNSPod
- DuckDNS
- Gandi
- Hetzner
- Linode
- Namecheap
- Amazon Route53
- Vultr

## Usage

You can pull the image from either GHCR or Docker Hub:

```bash
# From GitHub Container Registry
docker pull ghcr.io/geodic/caddy-all:latest

# From Docker Hub
docker pull th3geodic/caddy-all:latest
```

### Running the container

```bash
docker run -d \
  --name caddy \
  -p 80:80 \
  -p 443:443 \
  -v $PWD/Caddyfile:/etc/caddy/Caddyfile \
  -v caddy_data:/data \
  -v caddy_config:/config \
  ghcr.io/geodic/caddy-all:latest
```

## Building Locally

To build the image locally:

```bash
docker build -t caddy-all .
```

## Updates

This image is automatically rebuilt and pushed every week to ensure it contains the latest versions of Caddy and all DNS plugins. You can also find versioned tags for specific releases.

## License

This project is licensed under the terms of the LICENSE file included in the repository.
