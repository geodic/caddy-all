FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/alidns \
    --with github.com/caddy-dns/azure \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/digitalocean \
    --with github.com/caddy-dns/dnspod \
    --with github.com/caddy-dns/duckdns \
    --with github.com/caddy-dns/gandi \
    --with github.com/caddy-dns/hetzner \
    --with github.com/caddy-dns/linode \
    --with github.com/caddy-dns/namecheap \
    --with github.com/caddy-dns/route53 \
    --with github.com/caddy-dns/vultr

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy